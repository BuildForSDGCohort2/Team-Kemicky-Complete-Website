using System;

namespace OnlineLMS
{
    public partial class LmsSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Default homepage
                object v = Session["role"];
                if (string.IsNullOrEmpty((string)v))
                {
                    Login.Visible = true;
                    Signup.Visible = true;

                    Logout.Visible = false;
                    Hello.Visible = false;

                    Admin.Visible = true;
                    BookAuthors.Visible = false;
                    BooKPublishers.Visible = false;
                    InventorySystem.Visible = false;
                    IssuingSystem.Visible = false;
                    MemberSystem.Visible = false;

                }

                //user homepage
                else if (v.Equals("user"))
                {
                    Login.Visible = false;
                    Signup.Visible = false;

                    Logout.Visible = true;
                    Hello.Visible = true;
                    Hello.Text = "Hello,User: " + Session["fullname"].ToString();

                    Admin.Visible = false;
                    BookAuthors.Visible = false;
                    BooKPublishers.Visible = false;
                    InventorySystem.Visible = false;
                    IssuingSystem.Visible = false;
                    MemberSystem.Visible = false;
                }

                //admin homepage
                else if (v.Equals("admin"))
                {
                    Login.Visible = false;
                    Signup.Visible = false;

                    Logout.Visible = true;
                    Hello.Visible = true;
                    Hello.Text = "Hi,Admin: " + Session["fullname"].ToString(); // can be improved by using session code if there are multiple admin.

                    Admin.Visible = false;
                    BookAuthors.Visible = true;
                    BooKPublishers.Visible = true;
                    InventorySystem.Visible = true;
                    IssuingSystem.Visible = true;
                    MemberSystem.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");

            }       

        }//pageLoad

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }//login

        protected void Signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }//signup

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }//view

        protected void MemberSystem_Click(object sender, EventArgs e)
        {
            Response.Redirect("membermanagementpage.aspx");
        }//member

        protected void IssuingSystem_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookissuing.aspx");
        }//issusing

        protected void InventorySystem_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookInventory.aspx");
        }//inventory

        protected void BooKPublishers_Click(object sender, EventArgs e)
        {
            Response.Redirect("publishersprofilepage.aspx");
        }//bookpublisher

        protected void BookAuthors_Click(object sender, EventArgs e)
        {
            Response.Redirect("authorspage.aspx");
        }//bookauthors

        protected void Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }//admin

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            Response.Write("<script>alert('Wish to Logout,Click OK and Bye.');window.location='homepage.aspx';</script>");
          
            Login.Visible = true;
            Signup.Visible = true;

            Logout.Visible = false;
            Hello.Visible = false;

            Admin.Visible = true;
            BookAuthors.Visible = false;
            BooKPublishers.Visible = false;
            InventorySystem.Visible = false;
            IssuingSystem.Visible = false;
            MemberSystem.Visible = false;
        }//logout

        protected void Hello_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Fetching your profile detail from the Database,Click Ok to Continue.');window.location='userprofile.aspx';</script>");
        }

    }//class
}//namespace