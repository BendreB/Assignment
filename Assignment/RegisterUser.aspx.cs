using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class Register_User : System.Web.UI.Page
    {
        
        string gender;
        // string conStr = "Data Source=\SQLExpress;AttachDbFileName=|DataDictionary|\RegistarionDB.mdf; Integrated Security = True; User Instanvce = True";

        string constr=@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\536822\source\repos\Assignment\Assignment\App_Data\RegistrationDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { Calendar1.Visible = false; }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            try
            {
                //  SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\536822\source\repos\Assignment\Assignment\App_Data\RegistrationDB.mdf;Integrated Security=True");
                SqlConnection con = new SqlConnection(constr);

                con.Open();


                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into Emp_Details values(@EmailID,@FullName,@DOB,@Bio,@Age,@Gender,@Password)";
                cmd.Parameters.AddWithValue("@EmailID", txtEmail.Text);
                cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@Bio", txtBio.Text);
                cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Password", txtPwd2.Text);


                cmd.ExecuteNonQuery();
                con.Close();
                
                Response.Redirect("Welcome.aspx?Status=1",false);
            }
            catch (SqlException ex)
            {

                if (ex.Number == 2627)
                {
                    Response.Write("please do not enter a duplicate email id");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error");
            }
          }

    
    protected void Male_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void Female_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
        txtDOB.Text=  Calendar1.SelectedDate.ToShortDateString();

        }

        protected void btnDOB_Click(object sender, EventArgs e)
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
            if(e.Day.Date>DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        gender = RDList.SelectedValue.ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("RegisterUser.aspx", false);

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
    }
}