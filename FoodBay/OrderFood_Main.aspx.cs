using BusinessEntities;
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
        #region PRIVATE VARIABLES
        int iCityId = 0;
        int iLocationId = 0;
        FoodBayBLL.FoodBayBLL objFoodBLL = new FoodBayBLL.FoodBayBLL();
        List<City> lstCities = null;
        List<Location> lstLocations = null;
        List<Vendors> lstVendors = null;
        Vendors objVendors = null;
        #endregion

        #region CONTROL EVENTS & PAGE LOAD
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
                BindCity();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlLocation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlLocation.SelectedIndex > 0)
            {
                iLocationId = Convert.ToInt32(ddlLocation.SelectedValue);
                BindVendor();
            }
            else
            {
                BindEmptyFieldToDropDown(ddlVendor);
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCity.SelectedIndex > 0)
            {
                iCityId = Convert.ToInt32(ddlCity.SelectedValue);
                BindLocation();

            }
            else
            {
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
                BindEmptyFieldToDropDown(ddlLocation);
                BindEmptyFieldToDropDown(ddlVendor);
            }
        }
        #endregion

        #region PRIVATE METHODS

        /// <summary>
        /// 
        /// </summary>
        private void BindCity()
        {
            lstCities = objFoodBLL.GetCityDetails();
            if (lstCities != null && lstCities.Count > 0)
            {
                ddlCity.DataSource = lstCities;
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityId";
                ddlCity.DataBind();
            }
            else
            {
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
                BindEmptyFieldToDropDown(ddlCity);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void BindLocation()
        {
            lstLocations = objFoodBLL.GetLocationDetails(iCityId);
            if (lstLocations != null && lstLocations.Count > 0)
            {
                ddlLocation.DataSource = lstLocations;
                ddlLocation.DataTextField = "LocationName";
                ddlLocation.DataValueField = "LocationId";
                ddlLocation.DataBind();
            }
            else
            {
                BindEmptyFieldToDropDown(ddlLocation);
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void BindVendor()
        {
            lstVendors = new List<Vendors>();
            lstVendors = objFoodBLL.GetVendorList(iLocationId);
            if (lstVendors != null && lstVendors.Count > 0)
            {
                ddlVendor.DataSource = lstVendors;
                ddlVendor.DataTextField = "VendorName";
                ddlVendor.DataValueField = "VendorId";
                ddlVendor.DataBind();
            }
            else
            {
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
                BindEmptyFieldToDropDown(ddlVendor);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="objDDL"></param>
        private void BindEmptyFieldToDropDown(DropDownList objDDL)
        {
            objDDL.ClearSelection();
            objDDL.Items.Clear();
            objDDL.Items.Add("-- Pick One --");
            objDDL.DataBind();
        }
        #endregion

        protected void ddlVendor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlVendor.SelectedIndex > 0)
            {
                objVendors = objFoodBLL.GetVendorDetails(Convert.ToInt32(ddlVendor.SelectedValue));
                if (objVendors != null)
                {
                    lblVendorName.Text = objVendors.VendorName;
                    lblVendorLocation.Text = ddlLocation.SelectedItem.Text;
                    lblVendorPOC.Text = objVendors.VendorPOC;
                    lblPhoneNo.Text = objVendors.VendorPhoneNo.ToString();
                    lblOpenTime.Text = objVendors.OpenTime;
                    lblCloseTime.Text = objVendors.CloseTime;
                    lblWeekEnd.Text = objVendors.IsWeekEndAvailable.ToString();
                    tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = true;
                }
            }
            else
                tblVendorDetails.Visible = dItemDetails.Visible = dPayment.Visible = false;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ddlCity.ClearSelection();
            BindEmptyFieldToDropDown(ddlLocation);
            BindEmptyFieldToDropDown(ddlVendor);
            tblVendorDetails.Visible = false;
            dItemDetails.Visible = false;
            dPayment.Visible = false;
        }
    }
}