using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HSP
{

    public partial class Hiring : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-F941249;Initial Catalog=Household_Service_Providers;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void Book_Clicked(object sender, EventArgs e)
        {
            var a = Charges.Text;
            var b = Hours.Text;
            int c = int.Parse(a) * int.Parse(b);
            if (c == 0) c = int.Parse(a) * 9;
            SqlCommand cmd = new SqlCommand("execute Enter_Booking_Details '"+Session["email"].ToString()+"', '"+c+"','"+WorkerID.Text+"','"+Service.Text+"' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            string message = "Your Booking is Confirmed, Your Total Payment is Rs. " + c.ToString() +  "\n Wait for Worker to Accept Your Booking. ";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        void BindGrid()
        {
            SqlCommand cmd = new SqlCommand("select * from Catalogue", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var a = DropDownList1.SelectedItem.Value;
            if( a == "1")
            {
                SqlCommand cmd = new SqlCommand("select * from Catalogue order by Rating desc", con);
                SqlDataAdapter d = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else if(a=="2")
            {
                SqlCommand cmd = new SqlCommand("select * from Catalogue order by Charges asc", con);
                SqlDataAdapter d = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }


        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("chk");

            if (cb.Checked == true)
            {
                WorkerID.Text = GridView1.Rows[rowind].Cells[1].Text;
                Service.Text = GridView1.Rows[rowind].Cells[4].Text;
                Charges.Text = GridView1.Rows[rowind].Cells[8].Text;
            }
            else
            {
                WorkerID.Text = " ";
                Service.Text = " ";
                Charges.Text = " ";
            }

        }

    }
}