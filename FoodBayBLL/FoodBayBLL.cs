using BusinessEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodBayBLL
{
    public class FoodBayBLL
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<City> GetCityDetails()
        {
            return (new FoodBayDAL.FoodBayDAL()).GetCityDetails();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="iCityId"></param>
        /// <returns></returns>
        public List<Location> GetLocationDetails(int iCityId)
        {
            return (new FoodBayDAL.FoodBayDAL()).GetLocationDetails(iCityId);
        }

        public List<Vendors> GetVendorDetails(int iLocationId)
        {
            return (new FoodBayDAL.FoodBayDAL()).GetVendorDetails(iLocationId);
        }

    }
}
