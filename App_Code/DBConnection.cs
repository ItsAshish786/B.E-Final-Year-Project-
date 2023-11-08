using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    public DBConnection()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string Connection
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["EVMDBConnectionString"].ToString();
        }
    }
}