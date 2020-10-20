using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace OnlineLMS
{
    public partial class BookInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                FillAuthorPublisherValues();
            }

            GridBooKs.DataBind();           
        }//PageLoad

        protected void BookBtnGO_Click(object sender, EventArgs e)
        {
            GetBookByID();
            Response.Write("<script>alert('Retrieving ' + '" + BooksName.Text.Trim() + "' + ' infromation from the Database,Click OK to continue.');</script>");

        }//BookBtnGo

        protected void BooKsAdd_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExists())
            {

                Response.Write("<script>alert('" + BooksName.Text.Trim() + "' + ' aleady exists, try some a new book Id.' ); </script>");
            }
            else
            {
                AddNewBook();
            }
        }//BooKsAdd

        protected void BooKsUpdate_Click(object sender, EventArgs e)
        {
            UpdateBookByID();
          
        }//BooKsUpdate


        protected void BooKsDelete_Click(object sender, EventArgs e)
        {
            DeleteBookByID();
        }//BooKsDelete


        // user defined functions

        void DeleteBookByID()
        {
            if (CheckIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from tbl_book WHERE book_id='" + BooksID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('" + BooksName.Text.Trim() + "' + ' is successfully deleted.' ); </script>");
                    GridBooKs.DataBind();
                    ClearForm();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID');</script>");
            }
        }//DeleteByID

        void UpdateBookByID()
        {

            if (CheckIfBookExists())
            {
                try
                {

                    int actual_stock = Convert.ToInt32(BooKsActualStock.Text.Trim());
                    int current_stock = Convert.ToInt32(BooKsCurrentStock.Text.Trim());

                    if (global_actual_stock == actual_stock)
                    {

                    }
                    else
                    {
                        if (actual_stock < global_issued_books)
                        {
                            Response.Write("<script>alert('Actual Stock value cannot be less than the Issued books');</script>");
                            return;

                        }
                        else
                        {
                            current_stock = actual_stock - global_issued_books;
                            BooKsCurrentStock.Text = "" + current_stock;
                        }
                    }

                    string genres = "";
                    foreach (int i in ListBoxGenre.GetSelectedIndices())
                    {
                        genres = genres + ListBoxGenre.Items[i] + ",";
                    }
                    genres = genres.Remove(genres.Length - 1);

                    string filepath = "~/book_inventory/bookinventory.jpg";
                    string filename = Path.GetFileName(FileUploadBooK.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUploadBooK.SaveAs(Server.MapPath("book_inventory/" + filename));
                        filepath = "~/book_inventory/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE tbl_book SET book_name=@book_name, genre=@genre, author_name=@author_name, publisher_name=@publisher_name, publish_date=@publish_date, language=@language, edition=@edition, book_cost=@book_cost, no_of_pages=@no_of_pages, book_description=@book_description, actual_stock=@actual_stock, current_stock=@current_stock, book_img_link=@book_img_link where book_id='" + BooksID.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@book_name", BooksName.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@author_name", DropDownAuthor.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_name", DropDownPublisher.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", PublishDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", DropDownLanguage.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@edition", BooKsEdition.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_cost", BooKsCost.Text.Trim());
                    cmd.Parameters.AddWithValue("@no_of_pages", BooKsPages.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_description", BooKsDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock", actual_stock.ToString());
                    cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                    cmd.Parameters.AddWithValue("@book_img_link", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridBooKs.DataBind();
                    Response.Write("<script>alert('" + BooksName.Text.Trim() + "' + ' is successfully Updated.' ); </script>");
                    ClearForm();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID');</script>");
            }
        }//UpdateByID


        void GetBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_book WHERE book_id='" + BooksID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    BooksName.Text = dt.Rows[0]["book_name"].ToString();
                    PublishDate.Text = dt.Rows[0]["publish_date"].ToString();
                    BooKsEdition.Text = dt.Rows[0]["edition"].ToString();
                    BooKsCost.Text = dt.Rows[0]["book_cost"].ToString().Trim();
                    BooKsPages.Text = dt.Rows[0]["no_of_pages"].ToString().Trim();
                    BooKsActualStock.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    BooKsCurrentStock.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    BooKsDescription.Text = dt.Rows[0]["book_description"].ToString();
                    BooKsIssued.Text = "" + (Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));
                    DropDownLanguage.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownAuthor.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();
                    DropDownPublisher.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();

                    ListBoxGenre.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBoxGenre.Items.Count; j++)
                        {
                            if (ListBoxGenre.Items[j].ToString() == genre[i])
                            {
                                ListBoxGenre.Items[j].Selected = true;

                            }
                        }
                    }

                    global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    global_issued_books = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["book_img_link"].ToString();
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }//GetBookByID

        void FillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name from tbl_author;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownAuthor.DataSource = dt;
                DropDownAuthor.DataValueField = "author_name";
                DropDownAuthor.DataBind();

                cmd = new SqlCommand("SELECT publisher_name from tbl_publisher;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownPublisher.DataSource = dt;
                DropDownPublisher.DataValueField = "publisher_name";
                DropDownPublisher.DataBind();              
            }
             
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }//FillAuthorByID

        bool CheckIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_book where book_id='" + BooksID.Text.Trim() + "' OR book_name='" + BooksName.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }//CheckBool

        void AddNewBook()
        {
            try
            {
                string genres = "";
                foreach (int i in ListBoxGenre.GetSelectedIndices())
                {
                    genres = genres + ListBoxGenre.Items[i] + ",";
                }
                // genres = Adventure,Self Help,
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/book_inventory/bookinventory.jpg";
                string filename = Path.GetFileName(FileUploadBooK.PostedFile.FileName);
                FileUploadBooK.SaveAs(Server.MapPath("book_inventory/" + filename));
                filepath = "~/book_inventory/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_book(book_id,book_name,genre,author_name,publisher_name,publish_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link) values(@book_id,@book_name,@genre,@author_name,@publisher_name,@publish_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@book_img_link)", con);

                cmd.Parameters.AddWithValue("@book_id", BooksID.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", BooksName.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", DropDownAuthor.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownPublisher.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", PublishDate.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownLanguage.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", BooKsEdition.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", BooKsCost.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", BooKsPages.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", BooKsDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", BooKsActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", BooKsActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book added successfully.');</script>");
                GridBooKs.DataBind();
                ClearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }//AddNewBook

        void ClearForm()
        {
            BooksID.Text = "";
            BooksName.Text = "";
            PublishDate.Text = "";
            BooKsEdition.Text = "";
            BooKsCost.Text = "";
            BooKsPages.Text = "";
            BooKsActualStock.Text = "";
            BooKsCurrentStock.Text = "";
            BooKsDescription.Text = "";
            BooKsIssued.Text = "";
            ListBoxGenre.ClearSelection();
            DropDownLanguage.SelectedValue = "Select";
        }//ClearForm
    }//
}//