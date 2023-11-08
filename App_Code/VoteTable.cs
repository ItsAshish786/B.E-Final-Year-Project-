using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for VoteTable
/// </summary>
public class VoteTable:SQLDBTable 
{
    public VoteTable():base ("VoteTable",DBConnection.Connection )
    {
        //
        // TODO: Add constructor logic here
        //
    }
}