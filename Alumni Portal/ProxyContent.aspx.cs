using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_Project
{
    public partial class ProxyContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["label"] == null)
                Label1.Visible = false;
            else
            {
                Label1.Visible = true;
                Label1.Text = "Thank You. Your response has been recorded.";
            }
        }
    }
}