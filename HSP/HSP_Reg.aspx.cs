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
    public partial class HSP_Reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-F941249;Initial Catalog=Household_Service_Providers;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                password.Attributes["type"] = "password";
            }
            else
            {
              

                if (R1.Checked && R2.Checked)
                {
                    R2.Checked = false;
                    R1.Checked = false;
                }
            }
        }

        
        protected void RadioButton_checked(object sender, EventArgs e)
        {
            if (R1.Checked)
                R2.Checked = false;
            if (R2.Checked)
                R1.Checked = false;
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            var a = Accounttype.SelectedItem.Value;
            String gen = "\0";
            if (R1.Checked)
            {
                gen = String.Copy("Male");
                

            }
            else if(R2.Checked)
            {
                gen = String.Copy("Female");
            }

             SqlCommand cmd = new SqlCommand("execute  Registeration '" + firtname.Text + "', '" + lastname.Text + "'," + Email.Text + ",'" + password.Text + "','" +phone.Text+ "','" + address.Text + "','" + cnic.Text + "','" + dob.Text+ "','" + gen + "','" + a.ToString() + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            string message = "Your Email ID is  " + firtname.Text + "\n@Masters ";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            Response.Redirect("HSP_login.aspx");


        }
    }
}