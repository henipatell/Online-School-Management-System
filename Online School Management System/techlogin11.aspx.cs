using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_School_Management_System
{
    public partial class techlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();

            cn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sai\Documents\Online School Management System\Online School Management System\App_Data\stdDB.mdf;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Student";
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Student");

            string UN = TextBox1.Text;
            string PWD = TextBox2.Text;

            int count = ds.Tables["Student"].Rows.Count;

            int j;
            for (j = 0; j < count; j++)
            {
                string UN1 = ds.Tables["Student"].Rows[j].ItemArray[0].ToString();
                string PWD1 = ds.Tables["Student"].Rows[j].ItemArray[1].ToString();


                if (UN.Equals(UN1) && PWD.Equals(PWD1))
                {
                    /* string url = "~/Student.aspx?LoginID=";
                     url += UN;*/
                    Session.Add("loginid", UN);
                    Response.Redirect("~/techprof.prpx");

                    break;
                }
            }
            if (count == j)
            {
                Response.Write("tri again");

            }
        }

        


        
    }
}