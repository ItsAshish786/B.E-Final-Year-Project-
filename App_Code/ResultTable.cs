using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for ResultTable
/// </summary>
public class ResultTable:SQLDBTable 
{
    public ResultTable():base ("ResultTable",DBConnection.Connection )
    {
        //
        // TODO: Add constructor logic here
        //
    }
}