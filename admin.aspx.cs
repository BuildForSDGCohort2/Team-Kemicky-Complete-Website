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
    public partial class admin : System.Web.UI.Page
    {
      
        private const string S = "<script>alert('Invalid username,Click Ok and Enter the correct username');</script>";
        //creating the ConnectionString to the database.
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //No code here
           Response.Write("<script>alert('Preparing And Loading Page, Click Ok to continue.');</script>");
        }

        protected void BtnAdminLogin_Click(object sender, EventArgs e)
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

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_admin where username='" + txtAdminUsername.Text.Trim() + "' AND password='" + txtAdminPassword.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())                 
                    //session method called here
                    NewMethod(dr);

                }
                else
                {
                    Response.Write(S);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                //return false;
            }
        }//BtnAdminLogin

        //session method created here
        private void NewMethod(SqlDataReader dr)
        {
            Session["username"] = dr.GetValue(0).ToString();
            Session["fullname"] = dr.GetValue(2).ToString();
            Session["role"] = "admin";
            Response.Write("<script>alert('Hi ' + '" + txtAdminUsername.Text.Trim() + "' + ' Login Successful and you are redirected to homepage,Click OK to continue.');window.location='homepage.aspx';</script>");
        }//NewMethod

    }//class
}//namespace
