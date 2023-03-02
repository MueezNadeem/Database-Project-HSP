using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace HSP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-F941249;Initial Catalog=Household_Service_Providers;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
        
            SqlCommand cmd = new SqlCommand("execute user_login  '" + username.Text + "', '" + password.Text  + "'", con);
            con.Open();
            int count = (int)cmd.ExecuteScalar();
            if(count==1)
            {

                Session["user"] = username.Text;
                SqlCommand cmd2 = new SqlCommand("execute Who_logged_in  '" + username.Text + "'", con);
                int acc_type = (int)cmd2.ExecuteScalar();
                if(acc_type==2)
                Response.Redirect("Cus_Menu.aspx");
                else if(acc_type==3)
                Response.Redirect("Worker_Menu.aspx");
            }
            else
            {
                Msg.Text = "Incorrect Email OR Password";
            }
             
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("HSP_Reg.aspx");
        }
    }
}