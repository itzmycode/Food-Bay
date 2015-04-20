using BusinessEntities;
using FoodBayBLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodBayDAL
{
    public class FoodBayDAL
    {
        string strConnection = ConfigurationManager.AppSettings["SqlCon"];
        SqlConnection sqlConn = null;

        /// <summary>
        /// 
        /// </summary>
        public FoodBayDAL()
        {
            sqlConn = new SqlConnection(strConnection);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<City> GetCityDetails()
        {
            string strQuery = SQLCMD.SELECT_CITY;
            List<City> lstCity = new List<City>();
            sqlConn.Open();
            using (SqlCommand sqlCmd = new SqlCommand(strQuery, sqlConn))
            {
                sqlCmd.CommandType = CommandType.Text;
                using (SqlDataReader sqlReader = sqlCmd.ExecuteReader())
                {
                    while (sqlReader.Read())
                    {
                        City objCity = new City();
                        objCity.CityId = Convert.ToInt32(sqlReader["CityId"]);
                        objCity.CityName = sqlReader["CityName"].ToString();
                        lstCity.Add(objCity);
                    }
                }
            }
            sqlConn.Close();
            return lstCity;
        }

        public List<Location> GetLocationDetails(int iCityId)
        {
            string strQuery = string.Format(SQLCMD.SELECT_LOCATION, iCityId);
            List<Location> lstLocation = new List<Location>();
            sqlConn.Open();
            using (SqlCommand sqlCmd = new SqlCommand(strQuery, sqlConn))
            {
                sqlCmd.CommandType = CommandType.Text;
                using (SqlDataReader sqlReader = sqlCmd.ExecuteReader())
                {
                    while (sqlReader.Read())
                    {
                        Location objLocation = new Location();
                        objLocation.LocationId = Convert.ToInt32(sqlReader["LocationId"]);
                        objLocation.LocationName = sqlReader["LocationName"].ToString();
                        lstLocation.Add(objLocation);
                    }
                }
            }
            sqlConn.Close();
            return lstLocation;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="iLocationId"></param>
        /// <returns></returns>
        public List<Vendors> GetVendorDetails(int iLocationId)
        {
            string strQuery = string.Format(SQLCMD.SELECT_VENDOR, iLocationId);
            List<Vendors> lstVendors = new List<Vendors>();
            sqlConn.Open();
            using (SqlCommand sqlCmd = new SqlCommand(strQuery, sqlConn))
            {
                sqlCmd.CommandType = CommandType.Text;
                using (SqlDataReader sqlReader = sqlCmd.ExecuteReader())
                {
                    while (sqlReader.Read())
                    {
                        Vendors objVendors = new Vendors();
                        objVendors.VendorId = Convert.ToInt32(sqlReader["VendorId"]);
                        objVendors.VendorName = sqlReader["VendorName"].ToString();
                        lstVendors.Add(objVendors);
                    }
                }
            }
            sqlConn.Close();
            return lstVendors;
        }
    }
}
