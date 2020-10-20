using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace OnlineLMS
{
    public partial class userprofile : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            object v = Session["username"];
            try
            {
                if (string.IsNullOrEmpty((string)v))
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("loginpage.aspx");
                }
                else
                {
                    GetUserBookData();

                    if (!Page.IsPostBack)
                    {
                        GetUserPersonalDetails();
                        
                    }                
                }
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("loginpage.aspx");
            }
        }//pageload


        // update button click
        protected void BtnUserUpdate_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("loginpage.aspx");
            }
            else
            {
                UpdateUserPersonalDetails();

            }
        }//update


        // Defined Method
        void UpdateUserPersonalDetails()
        {
            string Password;
            if (NewPword.Text.Trim() == "")
            {
                Password = Pword.Text.Trim();
            }
            else
            {
                Password = NewPword.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE tbl_member SET full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode, full_address=@full_address, password=@password, account_status=@account_status WHERE member_id='" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@full_name", UserName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", UserDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", UserNum.Text.Trim());
                cmd.Parameters.AddWithValue("@email", UserEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownCountry.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@state", DropDownState.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", UserCity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", UserZipcode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", UserAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@password", Password);
                cmd.Parameters.AddWithValue("@account_status", "pending");

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    GetUserPersonalDetails();
                    GetUserBookData();
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }//UpdateUserPersonalDetails


        void GetUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_member where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                UserName.Text = dt.Rows[0]["full_name"].ToString();
                UserDOB.Text = dt.Rows[0]["dob"].ToString();
                UserNum.Text = dt.Rows[0]["contact_no"].ToString();
                UserEmail.Text = dt.Rows[0]["email"].ToString();
                DropDownCountry.SelectedValue = dt.Rows[0]["country"].ToString().Trim();
                DropDownState.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                UserCity.Text = dt.Rows[0]["city"].ToString();
                UserZipcode.Text = dt.Rows[0]["pincode"].ToString();
                UserAddress.Text = dt.Rows[0]["full_address"].ToString();
                Uname.Text = dt.Rows[0]["member_id"].ToString();
                Pword.Text = dt.Rows[0]["password"].ToString();

                Status.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "Active")
                {
                    Status.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "Pending")
                {
                    Status.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "Deactived")
                {
                    Status.Attributes.Add("class", "badge badge-pill badge-danger");
                }
                else
                {
                    Status.Attributes.Add("class", "badge badge-pill badge-info");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }//GetUserPersonalDetails

        void GetUserBookData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_book_issue where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridUserProfile.DataSource = dt;
                GridUserProfile.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }//GetUserBookData

        protected void GridUserProfile_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }//GridUserProfile


    }//class
}//namespace