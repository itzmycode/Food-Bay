using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodBay
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        private static string strUserName = string.Empty;
        private static string strPassword = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                (new Generic()).HighlightMenu(5);
                string monthName = DateTime.Now.ToString("MMM", CultureInfo.InvariantCulture);
                strPassword = monthName.ToUpper() + "-" + DateTime.Now.Year.ToString();
                txtUsername.Enabled = false;
                strUserName = txtUsername.Text = "foodbayadmin";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtPwd.Text.Equals(strPassword))
            {
               Response.Redirect("AdminUI\\CognizantLocations.aspx");
            }
        }
    }
}