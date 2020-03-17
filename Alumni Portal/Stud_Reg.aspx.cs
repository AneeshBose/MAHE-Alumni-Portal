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
    public partial class Stud_Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["project"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT into Alumni VALUES (@reg_no,@name,@year,@branch,@company)", con);
            cmd.Parameters.AddWithValue("reg_no",regNoId.Text);
            cmd.Parameters.AddWithValue("name",name.Text);
            cmd.Parameters.AddWithValue("year",year.Text);
            cmd.Parameters.AddWithValue("branch",branch.Text);
            cmd.Parameters.AddWithValue("company",comp.Text);
            int rows=0;
            rows=cmd.ExecuteNonQuery();
            con.Close();
            if (rows > 0)
                Response.Redirect("Exit_Survey.aspx?regNo="+regNoId.Text);
        }
    }
}