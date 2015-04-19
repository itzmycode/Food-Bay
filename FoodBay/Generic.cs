using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace FoodBay
{
    public class Generic
    {
        public void HighlightMenu(int iMenuId)
        {
            var pageHandler = HttpContext.Current.CurrentHandler;
            if (pageHandler is System.Web.UI.Page)
            {
                HtmlGenericControl aHome = ((System.Web.UI.Page)pageHandler).Master.FindControl("aHome") as HtmlGenericControl;
                HtmlGenericControl aOrderFood = ((System.Web.UI.Page)pageHandler).Master.FindControl("aOrderFood") as HtmlGenericControl;
                HtmlGenericControl aPastOrders = ((System.Web.UI.Page)pageHandler).Master.FindControl("aPastOrders") as HtmlGenericControl;
                HtmlGenericControl aProfile = ((System.Web.UI.Page)pageHandler).Master.FindControl("aProfile") as HtmlGenericControl;

                switch (iMenuId)
                {
                    case 1:
                        aHome.Attributes.Add("class", "active");
                        aOrderFood.Attributes.Add("class", "");
                        aPastOrders.Attributes.Add("class", "");
                        aProfile.Attributes.Add("class", "");
                        break;
                    case 2:
                        aHome.Attributes.Add("class", "");
                        aOrderFood.Attributes.Add("class", "active");
                        aPastOrders.Attributes.Add("class", "");
                        aProfile.Attributes.Add("class", "");
                        break;
                    case 3:
                        aHome.Attributes.Add("class", "");
                        aOrderFood.Attributes.Add("class", "");
                        aPastOrders.Attributes.Add("class", "active");
                        aProfile.Attributes.Add("class", "");
                        break;
                    case 4:
                        aHome.Attributes.Add("class", "");
                        aOrderFood.Attributes.Add("class", "");
                        aPastOrders.Attributes.Add("class", "");
                        aProfile.Attributes.Add("class", "active");
                        break;
                }
            }
        }
    }
}