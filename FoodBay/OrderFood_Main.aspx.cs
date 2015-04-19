using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodBay
{
    public partial class OrderFood_Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (new Generic()).HighlightMenu(2);
            if (!string.IsNullOrEmpty(Request.QueryString["cityName"]))
            {
                txtCity.Text = Request.QueryString["cityName"];
            }
        }
    }
}