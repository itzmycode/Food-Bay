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
        int iCityId = 0;
        string strCityName = string.Empty;
        FoodBayBLL.FoodBayBLL objFoodBLL = new FoodBayBLL.FoodBayBLL();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                (new Generic()).HighlightMenu(2);
                if (!(string.IsNullOrEmpty(Request.QueryString["cityName"]) && string.IsNullOrEmpty(Request.QueryString["cityName"])))
                {
                    iCityId = Convert.ToInt32(Request.QueryString["cityId"]);
                    strCityName = Request.QueryString["cityName"];
                    txtCity.Text = strCityName;
                    BindLocation();
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void BindLocation()
        {
            ddlLocation.DataSource = objFoodBLL.GetLocationDetails(iCityId);
            ddlLocation.DataTextField = "LocationName";
            ddlLocation.DataValueField = "LocationId";
            ddlLocation.DataBind();
        }

        private void BindVendor()
        {

            ddlVendor.DataSource = objFoodBLL.GetVendorDetails(Convert.ToInt32(ddlLocation.SelectedValue));
            ddlVendor.DataTextField = "VendorName";
            ddlVendor.DataValueField = "VendorId";
            ddlVendor.DataBind();
        }

        protected void ddlLocation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlLocation.SelectedIndex > 0)
                BindVendor();
            else
                ddlVendor.Items.Clear();
        }
    }
}