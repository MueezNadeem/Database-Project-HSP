using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HSP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void Hire_Click(object sender, EventArgs e)
        {
            
            Button clickedButton = sender as Button;

            if (clickedButton == null) // just to be on the safe side
                return;

            if (clickedButton.ID == "Hire")
            {
                if (Session["user"] != null)
                {
                    Session["email"] = Session["user"].ToString();
                }
                Response.Redirect("Hiring.aspx");
                
            }
        }
    }
}