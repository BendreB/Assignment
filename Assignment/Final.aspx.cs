using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class Final : System.Web.UI.Page
    {

        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\536822\source\repos\Assignment\Assignment\App_Data\RegistrationDB.mdf;Integrated Security=True";


        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void txt_DOB_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void btn_Clear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Final.aspx", false);
        }

        protected void brn_Register_Click(object sender, EventArgs e)
        {
                     

        }
        protected void btnCalculateAge_Click(object sender, EventArgs e)
        {
            int age = DateTime.Now.Year - Calendar1.SelectedDate.Year;
            if (DateTime.Now.Month < Calendar1.SelectedDate.Month)
                age = age - 1;
            else if (DateTime.Now.Month == Calendar1.SelectedDate.Month && DateTime.Now.Day < Calendar1.SelectedDate.Day)
                age = age - 1;
            txtAge.Text = age.ToString();
        }

        protected void RD_List_SelectedIndexChanged(object sender, EventArgs e)
        {
            gender = RD_List.SelectedValue.ToString();
        }
    }
}