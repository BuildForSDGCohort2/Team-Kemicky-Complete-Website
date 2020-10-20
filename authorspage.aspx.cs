using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineLMS
{
    public partial class AuthorProfile : System.Web.UI.Page
    {
        //creating the ConnectionString to the database.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Databind code_Refresh.
            GridAuthor.DataBind();
         }

        protected void BtnAddAuthor_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExists())
            {

                Response.Write("<script>alert('Author ID already exists,try a new Author ID'); </script>");
            }
            else
            {
                AddNewAuthor();

            }

        }//BtnAdd

        protected void BtnUpdateAuthor_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExists())
            {
                UpdateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Sorry,you can't update,Author does not exist.'); </script>");

            }

        }//BtnUpdate

        protected void BtnDeleteAuthor_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExists())
            {
                DeleteAuthor();
            }

            else
            {
                Response.Write("<script>alert('Delete not Successful,Author may be deleted already or does not exist on the list.'); </script>");

            }

        }//BtnDelete


        protected void BtnGo_Click(object sender, EventArgs e)
        {
          
            GetAuthorByID();
            Response.Write("<script>alert('Retrieving ' + '" + AuthorName.Text.Trim() + "' + ' infromation from the Database,Click OK to continue.');</script>");
        }//BtnGO




        //defined method.
        private void AddNewAuthor()
        {

            // Backend codes for AddNewAuthor Page Button.
            //Error Handling and Validation codes for the database.
            try
            {
                //connecting the AuthorManagement Page to the database.
                SqlConnection con = new SqlConnection(strcon);

                //checking if the AuthorManagement Page is connected to the database.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }//if_con

                //Firing the SQl Query
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_author(author_id,author_name) values(@author_id,@author_name)", con);
                SqlParameter sqlParameterId = cmd.Parameters.AddWithValue("@author_id", AuthorID.Text.Trim());
                SqlParameter sqlParameterName = cmd.Parameters.AddWithValue("@author_name", AuthorName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('" + AuthorName.Text.Trim() + "' + ' Successfully added.' ); </script>");
                GridAuthor.DataBind();
                ClearForm();
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                ClearForm();

            }//catch
        }//AddNewAuthor


        private void UpdateAuthor()
        {
           
                // Backend codes for UpdateAuthor Page Button.
                //Error Handling and Validation codes for the database.
                try
                {
                    //connecting the UpdateAuthor Page to the database.
                    SqlConnection con = new SqlConnection(strcon);

                    //checking if the UpdateAuthor Page is connected to the database.
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }//if_con

                    //Firing the SQl Query
                    SqlCommand cmd = new SqlCommand(cmdText: "UPDATE tbl_author SET author_name=@author_name WHERE author_id='" + AuthorID.Text.Trim() + "'", con);
                    SqlParameter sqlParameterName = cmd.Parameters.AddWithValue("@author_name", AuthorName.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridAuthor.DataBind();
                    Response.Write("<script>alert('" + AuthorName.Text.Trim() + "' + ' is successfully updated.' ); </script>");
                    ClearForm();
                }//try
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "'); </script>");
                    ClearForm();
                }//catch
           
        }//UpdateAuthor

        private void DeleteAuthor()
        {
            // Backend codes for UpdateAuthor Page Button.
            //Error Handling and Validation codes for the database.
            try
            {
                //connecting the UpdateAuthor Page to the database.
                SqlConnection con = new SqlConnection(strcon);

                //checking if the UpdateAuthor Page is connected to the database.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }//if_con

                //Firing the SQl Query
                SqlCommand cmd = new SqlCommand(cmdText: "DELETE from tbl_author WHERE author_id='" + AuthorID.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('" + AuthorName.Text.Trim() + "' + ' is successfully deleted.' ); </script>");              
                GridAuthor.DataBind();
                ClearForm();
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                ClearForm();
            }//catch

        }//DeleteAuthor

        //To Search author by ID
        private void GetAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_author where author_id='" + AuthorID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    AuthorName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }//getAuthorByID





        bool CheckIfAuthorExists()
        {
            // Backend codes for SignUp Page Button.
            //Error Handling and Validation codes for the database.
            try
            {
                //connecting the SignUp Page to the database.
                SqlConnection con = new SqlConnection(strcon);

                //checking if the SignUp Page is connected to the database.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }//if_con

                //Firing the SQl Query
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_author where author_id='" + AuthorID.Text.Trim() + "';", con);
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

            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                return false;

            }//catch          
        }//bool

        //clear the form.
        public void ClearForm()
        {
            AuthorID.Text = "";
            AuthorName.Text = "";

        }//clearform()
    }//class
}//namespace