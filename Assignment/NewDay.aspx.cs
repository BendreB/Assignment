using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class NewDay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { Calendar1.Visible = false; }
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = Calendar1.SelectedDate.ToShortDateString();

        }
        protected void btn_DOB_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (!Calendar1.Visible)
                {
                    Calendar1.Visible = true;
                }
                else
                    Calendar1.Visible = false;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}