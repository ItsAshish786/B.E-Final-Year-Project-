using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for ElectDetails
/// </summary>
public class ElectDetails:SQLDBTable 
{
    public ElectDetails():base ("ElectDetails",DBConnection.Connection )
    {
        //
        // TODO: Add constructor logic here
        //
    }
}