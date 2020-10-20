using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineLMS
{
    public partial class signup : System.Web.UI.Page
    {
        //creating the ConnectionString to the database.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Hello New User,Click Ok to Continue.'); </script>");
        }

        //SignUp Button ClickEvent(Backend codes for the SignUp button goes in here).
        protected void SignUp_Click(object sender, EventArgs e)
        {
            if (CheckUserExists())
            {

                Response.Write("<script>alert('Username already exists,try a new username'); </script>");
            }
            else
            {
                SignUpNewUser();

            }


        }//buttonClickEvent

        //Defined Methods
        //Error Handling,If user exist display a message.
        bool CheckUserExists()
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
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_member where member_id='" + txtUsername.Text.Trim() + "';", con);
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
        }//boolUserExist

        void SignUpNewUser()
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
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_member(full_name,dob,contact_no,email,country,state,city,pincode,full_address,member_id,password,account_status) " +
                    "values(@full_name,@dob,@contact_no,@email,@country,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", txtSignupName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtSignupDob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", txtSignupContactNum.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtSignupEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@state", DropDownListState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", txtSignupCity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtSignupZipCode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", txtSignupAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign-Up Successful,You redirected to Login Page.');window.location='loginpage.aspx';</script>");
                
            }//try
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");

            }//catch
        }//SignUpNewUser


    }//class
}//namespace


