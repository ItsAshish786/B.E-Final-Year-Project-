using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
/// <summary>
/// Summary description for CandidateTable
/// </summary>
public class CandidateTable :SQLDBTable 
{
    public CandidateTable():base ("CandidateTable",DBConnection.Connection )
    {
        //
        // TODO: Add constructor logic here
        //
    }
}