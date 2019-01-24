using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Request.QueryString["Status"])==1)
            {
                Response.Write("You have been registered successfully");

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginUser.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterUser.aspx");
        }
    }
}