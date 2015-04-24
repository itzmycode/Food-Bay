using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodBayBLL
{
    public static class SQLCMD
    {
        public static string SELECT_CITY = "SELECT CityId,CityName from MST_CITY ORDER BY CityName";
        public static string SELECT_LOCATION = "SELECT LocationId,LocationName from MST_Location where CityId = {0}";
        public static string SELECT_VENDOR = "SELECT VendorId,VendorName from MST_Vendor where LocationId = {0}";
        public static string SELECT_VENDOR_DETAILS = "SELECT VendorId,VendorName,VendorPhoneNo,VendorPOC,OpenTime,CloseTime,IsWeekendAvailable from MST_Vendor where VendorId = {0}";
        public static string SELECT_FOOD_ITEMS = "SELECT FoodItemId,FoodItemName,FoodItemPrice,TaxPercentage from MST_FoodItems where VendorId = {0}";
    }
}
