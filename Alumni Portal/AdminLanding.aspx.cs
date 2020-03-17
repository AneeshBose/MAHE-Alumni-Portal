using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_Project
{
    public partial class AdminLanding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["admin_name"] == null)
                Response.Redirect("Admin_Login.aspx");
            else
                Label1.Text = "Welcome, " + (string)Session["admin_name"];
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            Page.Theme = "Login_Theme";
        }

        protected string nullddl(string s)
        {
            if (s == "")
                return "%";
            return s;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "ViewFilters.aspx";
         
            Session["year"] = nullddl(DropDownList1.SelectedItem.Text.Trim());
            Session["company"] = nullddl(DropDownList2.SelectedItem.Text.Trim());
            Session["branch"] = nullddl(DropDownList3.SelectedItem.Text.Trim());

            Response.Redirect(url);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Admin_Login.aspx");
        }
    }
}