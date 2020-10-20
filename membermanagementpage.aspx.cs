using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineLMS
{
    public partial class membermanagementpage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridMemberManagement.DataBind();
        }


        protected void BtnMemberGO_Click(object sender, EventArgs e)
        {
            GetMemberByID();
        }


        protected void BtnActive_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusByID("Active");

        }

        protected void BtnPending_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusByID("Pending");
        }

        protected void BtnInActive_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusByID("Deactived");
        }


        protected void BtnDeleteMemberPermanent_Click(object sender, EventArgs e)
        {
            DeleteMemberByID();
        }


        // user defined function

        bool CheckIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_member where member_id='" + MembersID.Text.Trim() + "';", con);
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
        }//bool_CheckIfMemebrExists

        void DeleteMemberByID()
        {
            if (CheckIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from tbl_member WHERE member_id='" + MembersID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('" + MembersName.Text.Trim() + "' + ' is successfully deleted.' ); </script>");
                    GridMemberManagement.DataBind();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void GetMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from tbl_member where member_id='" + MembersID.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        MembersName.Text = dr.GetValue(0).ToString();
                        MemberStatus.Text = dr.GetValue(11).ToString();
                        MemberDateBirth.Text = dr.GetValue(1).ToString();
                        MemberPhoneNumber.Text = dr.GetValue(2).ToString();
                        MemberEmail.Text = dr.GetValue(3).ToString();
                        MemberState.Text = dr.GetValue(5).ToString();
                        MemberCity.Text = dr.GetValue(6).ToString();
                        MemberZipCode.Text = dr.GetValue(7).ToString();
                        MemberPostAddress.Text = dr.GetValue(7).ToString();

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid Details.');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void UpdateMemberStatusByID(string status)
        {
            if (CheckIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }

                    SqlCommand cmd = new SqlCommand("UPDATE tbl_member SET account_status='" + status + "' WHERE member_id='" + MembersID.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridMemberManagement.DataBind();
                    Response.Write("<script>alert('" + MembersName.Text.Trim() + "' + ' status successfully updated.' ); </script>");
                  

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }

        }

 
    }//class
}//namespace