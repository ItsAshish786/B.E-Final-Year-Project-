using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for PartyTable
/// </summary>
public class PartyTable:SQLDBTable
{
    public PartyTable():base ("PartyTable",DBConnection.Connection)
    {
        //
        // TODO: Add constructor logic here
        //
    }
}