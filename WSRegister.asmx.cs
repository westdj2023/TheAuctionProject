using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AuctionProject
{
    /// <summary>
    /// Summary description for WSRegister
    /// </summary>
    [WebService(Namespace = "https://Auction.silver.mountunion.edu/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WSRegister : System.Web.Services.WebService
    {
        [WebMethod]
        public int insertAccount(string firstName, string lastName, int phoneNumber, string email,
                                 string password, string street, string city, string state, int zipCode, string userType, int bidderID)

        {
            SqlConnection conn;
            SqlCommand cmd;
            int numRowsAffected;
            string insertText;

            conn = new SqlConnection(getConnectionString());
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;

            insertText = "INSERT INTO Bidder VALUES ('" + firstName + "','" + lastName + "'," + phoneNumber + ",'" + email + "','" +
                                                     password + "','" + street + "','" + city + "','" + state + "'," + zipCode + ",'" 
                                                     + userType + "'," + bidderID + ")";
            cmd.CommandText = insertText;
            conn.Open();
            try
            {
                numRowsAffected = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                numRowsAffected = 0;
            }
            conn.Close();
            return numRowsAffected;
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["AuctionConnectionString"].ConnectionString;
        }
    }
}
