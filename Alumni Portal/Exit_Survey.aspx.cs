using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


namespace IT_Project
{
    public partial class Exit_Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            regNoId.Text = Request.QueryString["regNo"];
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["Prefetch"];
                if (cookie == null)
                    cookie = new HttpCookie("Prefetch");
                string constr = WebConfigurationManager.ConnectionStrings["project"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select distinct degree from Exit_Survey", con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                    cookie["Degree"] = reader["degree"].ToString();
                con.Close();
                cookie.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(cookie);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["project"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT into Exit_Survey VALUES (@reg_no,@emp_status,@sal,@degree,@minor,@comments)", con);
            cmd.Parameters.AddWithValue("reg_no", regNoId.Text);
            cmd.Parameters.AddWithValue("emp_status",employment_stat.Text);
            cmd.Parameters.AddWithValue("sal", salary.Text);
            cmd.Parameters.AddWithValue("degree", degree.Text);
            cmd.Parameters.AddWithValue("minor", minor.Text);
            cmd.Parameters.AddWithValue("comments", comments.Text);

            int rows = 0;
            rows = cmd.ExecuteNonQuery();
            con.Close();
            if (rows > 0)
            {
                System.Diagnostics.Debug.WriteLine("Rows inserted.");
                Response.Redirect("ProxyContent.aspx?label=true");
            }
            
        }

        protected void autofill_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Prefetch"];
            degree.Text = cookie["Degree"];
        }
    }
}