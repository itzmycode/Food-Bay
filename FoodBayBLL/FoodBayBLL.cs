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
        // Add Business Logics and Call to DAL layer 
        public List<City> GetCityDetails()
        {
            return (new FoodBayDAL.FoodBayDAL()).GetCityDetails();
        }
    }
}
