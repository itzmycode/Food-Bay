using BusinessEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FoodBay
{
    public partial class OrderFood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<City> lstCity = new List<City>();
            (new Generic()).HighlightMenu(2);
            lstCity = (new FoodBayBLL.FoodBayBLL()).GetCityDetails(); 
            repeaterOrderFood.DataSource = lstCity;
            repeaterOrderFood.DataBind();
        }
    }
}