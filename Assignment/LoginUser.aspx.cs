using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Assignment
{
    public partial class LoginUser : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\536822\source\repos\Assignment\Assignment\App_Data\RegistrationDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
               SqlConnection con = new SqlConnection(constr);
               con.Open();
               SqlCommand cmd = con.CreateCommand();
               cmd.CommandType = System.Data.CommandType.Text;
               cmd.CommandText = "select Password from Emp_Details where EmailID=@EmailID";
                cmd.Parameters.AddWithValue("@EmailID", txtEmailID.Text);

               

                string val = cmd.ExecuteScalar().ToString();

                if (val.ToString() == txtPassword.Text)
                {

                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = System.Data.CommandType.Text;
                    cmd1.CommandText = "select FullName from Emp_Details where EmailID=@EmailID and Password=@Password";
                    cmd1.Parameters.AddWithValue("@EmailID", txtEmailID.Text);
                    cmd1.Parameters.AddWithValue("@Password", txtPassword.Text);
                    string fname = cmd1.ExecuteScalar().ToString();
                    
                    Response.Redirect("Home.aspx?Name="+fname);
                }

                else
                {
                    Response.Write("Password is not matching...Please try again");
                }
             }
            catch(NullReferenceException)
            {
                Response.Write("User does not exists...Please Enter a valid Email Id ");
            }




        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}