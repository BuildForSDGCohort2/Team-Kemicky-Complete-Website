using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLMS
{
    public partial class PublishersProfilePage : System.Web.UI.Page
    {
        //creating the ConnectionString to the database.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Databind code_Refresh.
            GridPublisher.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (CheckIfPublisherExists())
            {

                Response.Write("<script>alert('Publisher ID already exists,try a new Publisher ID'); </script>");
            }
            else
            {
                AddNewPublisher();

            }

        }//AddBtn

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            if (CheckIfPublisherExists())
            {
                UpdatePublisher();
            }
            else
            {
                Response.Write("<script>alert('Sorry,Can not Update,Publisher does not exist.'); </script>");

            }

        }//UpdateBtn

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {

            if (CheckIfPublisherExists())
            {
                DeletePublisher();
            }

            else
            {
                Response.Write("<script>alert('Delete not Successful,Publisher may be deleted already or does not exist on the list.'); </script>");

            }


        }//DeleteBtn

        protected void GoBtn_Click(object sender, EventArgs e)
        {
            GetPublisherByID();
            Response.Write("<script>alert('Retrieving ' + '" + PublisherName.Text.Trim() + "' + ' infromation from the Database,Click OK to continue.');</script>");

        }//GoBtn





        //defined method.
        private void AddNewPublisher()
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
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_publisher(publisher_id,publisher_name) values(@publisher_id,@publisher_name)", con);
                SqlParameter sqlParameterId = cmd.Parameters.AddWithValue("@publisher_id", PublisherID.Text.Trim());
                SqlParameter sqlParameterName = cmd.Parameters.AddWithValue("@publisher_name", PublisherName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('" + PublisherName.Text.Trim() + "' + ' Successfully added.' ); </script>");
                ClearForm();
                GridPublisher.DataBind();
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                ClearForm();

            }//catch
        }//AddNewAuthor

        private void UpdatePublisher()
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
                SqlCommand cmd = new SqlCommand(cmdText: "UPDATE tbl_publisher SET publisher_name=@publisher_name WHERE publisher_id='" + PublisherID.Text.Trim() + "'", con);
                SqlParameter sqlParameterName = cmd.Parameters.AddWithValue("@publisher_name", PublisherName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('" + PublisherName.Text.Trim() + "' + ' is successfully updated.' ); </script>");
                ClearForm();
                GridPublisher.DataBind();
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                ClearForm();
            }//catch

        }//UpdateAuthor

        private void DeletePublisher()
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
                SqlCommand cmd = new SqlCommand(cmdText: "DELETE from tbl_publisher WHERE publisher_id='" + PublisherID.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('" + PublisherName.Text.Trim() + "' + ' is successfully deleted.' ); </script>");
                ClearForm();
                GridPublisher.DataBind();
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                ClearForm();
            }//catch

        }//DeleteAuthor


        //To Search author by ID
        private void GetPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_publisher where publisher_id='" + PublisherID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    PublisherName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Publisher ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }//getPublisherByID



        //Error Checking fi publisher Exists
        bool CheckIfPublisherExists()
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
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_publisher where publisher_id='" + PublisherID.Text.Trim() + "';", con);
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
            PublisherID.Text = "";
            PublisherName.Text = "";

        }//clearform()


    }//class
}