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
    public partial class loginpage : System.Web.UI.Page
    {
        //creating the ConnectionString to the database.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //No code here,Leave Blank. 
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //connecting the SignUp Page to the database.
                SqlConnection con = new SqlConnection(strcon);

                //checking if the SignUp Page is connected to the database.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }//if_con

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_member where member_id='" + txtUsername.Text.Trim() + "' AND password='" + txtPassword.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //session method called here
                        NewMethod(dr);

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid username,Click Ok and Enter the correct username'); </script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                //return false;

            }

        }//btnLogin

        //session method created here
        private void NewMethod(SqlDataReader dr)
        {
            Session["username"] = dr.GetValue(9).ToString();
            Session["fullname"] = dr.GetValue(0).ToString();
            Session["role"] = "user";
            Session["status"] = dr.GetValue(11).ToString();
            Response.Write("<script>alert('Hi, ' + '" + txtUsername.Text.Trim() + "' + ' Login Successful and you are redirected to homepage. ' + 'To View your profile,Click on your name shown at the top right corner of the screen, ' + 'Click OK to Continue.');window.location='homepage.aspx';</script>");
        }//NewMethod

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
             Response.Redirect("signup.aspx");
        }
    }//class

}//namespace
