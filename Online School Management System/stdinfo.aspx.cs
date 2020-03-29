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
    public partial class stdfrof : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

            int count = ds.Tables["Student"].Rows.Count;
            int j;
            string id = (string)Session["loginid"];


            for (j = 0; j < count; j++)
            {
                string UN1 = ds.Tables["Student"].Rows[j].ItemArray[0].ToString();

                if (UN1.Equals(id))
                {
                    Label1.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[0].ToString();
                    Label2.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[2].ToString();
                    Label3.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[3].ToString();
                    Label4.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[4].ToString();
                    Label5.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[1].ToString();
                    Label6.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[5].ToString();
                    Label7.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[7].ToString();
                    Label8.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[8].ToString();
                    Label9.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[9].ToString();
                    Label10.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[10].ToString();
                    Label11.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[11].ToString();
                    Label12.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[12].ToString();
                    Label13.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[14].ToString();
                    Label14.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + ds.Tables["Student"].Rows[j].ItemArray[13].ToString();
                   
                }

              /*  string url = "stdinfo.aspx?";
                url += "LoginId =" + id;
                Response.Redirect(url);*/

                
              

            }

            
        }
        

       /* protected void Logout(object sender, EventArgs e)
        {
            Session["loginid"] = null;
            Session.Abandon();
            Response.Redirect("~/home.aspx");
        }*/
    }
}