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

        /// <summary>
        /// 
        /// </summary>
        /// <param name="iLocationId"></param>
        /// <returns></returns>
        public List<Vendors> GetVendorList(int iLocationId)
        {
            return (new FoodBayDAL.FoodBayDAL()).GetVendorList(iLocationId);
        }

        public Vendors GetVendorDetails(int iVendorId)
        {
            return (new FoodBayDAL.FoodBayDAL()).GetVendorDetails(iVendorId);
        }
    }
}
