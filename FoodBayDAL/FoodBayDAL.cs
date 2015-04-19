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
            using(SqlCommand sqlCmd = new SqlCommand(strQuery,sqlConn))
            {
                sqlCmd.CommandType = CommandType.Text;
                using (SqlDataReader sqlReader = sqlCmd.ExecuteReader())
                {
                    while (sqlReader.Read())
                    {
                        City objCity = new City();
                        objCity.CityName = sqlReader[0].ToString();
                        lstCity.Add(objCity);
                    }
                }
            }
            sqlConn.Close();
            return lstCity;
        }
    }
}
