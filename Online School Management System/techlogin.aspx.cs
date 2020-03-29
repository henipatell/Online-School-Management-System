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
    public partial class techlogin1 : System.Web.UI.Page
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
            cmd.CommandText = "select * from Teacher";
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Teacher");

            string UN = TextBox1.Text;
            string PWD = TextBox2.Text;

            int count = ds.Tables["Teacher"].Rows.Count;

            int j;
            for (j = 0; j < count; j++)
            {
                string UN1 = ds.Tables["Teacher"].Rows[j].ItemArray[0].ToString();
                string PWD1 = ds.Tables["Teacher"].Rows[j].ItemArray[1].ToString();



                if (UN.Equals(UN1) && PWD.Equals(PWD1))
                {

                    Session.Add("loginid", UN);
                    Response.Redirect("~/techprof.aspx");
                    break;
                }
            }
            if (count == j)
            {
                Response.Write("Try again");

            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;
            args.IsValid = false;

            //checking for input length greater than  and less than 8 characters
            if (str.Length < 8 || str.Length > 8)
            {
                return;
            }

            //checking for a atleast a single capital letter
            bool capital = false;
            foreach (char ch in str)
            {
                if (ch >= 'A' && ch <= 'Z')
                {
                    capital = true;
                    return;
                    //break;
                }
            }
            args.IsValid = false;
            if (!capital)
            {
                return;
            }
            args.IsValid = false;

            //checking for a atleast a single lower letter
            bool lower = false;
            foreach (char ch in str)
            {
                if (ch >= 'a' && ch <= 'z')
                {
                    lower = true;
                    break;
                }
            }
            args.IsValid = false;
            if (!lower)
            {
                return;
            }
            args.IsValid = false;
            bool digit = false;
            foreach (char ch in str)
            {
                if (ch >= '0' && ch <= '9')
                {
                    digit = true;
                    return;
                }
            }
            if (!digit)
            {
                return;
            }
            args.IsValid = true;


        }

    }
}