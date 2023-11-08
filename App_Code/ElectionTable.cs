using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for ElectionTable
/// </summary>
public class ElectionTable :SQLDBTable 
{
    public ElectionTable():base ("ElectionTable",DBConnection.Connection)
    {
        //
        // TODO: Add constructor logic here
        //
    }
}