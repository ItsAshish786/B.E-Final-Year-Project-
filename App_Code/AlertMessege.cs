using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AlertMessege
/// </summary>
public class AlertMessege
{
    public AlertMessege()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string tiTle = "EVM less Voting System";
    public static string GetMessage(string msg)
    {
        return "<div id=\"dialog\" title = \""+tiTle +"\"><p> "+msg+"</p></div> "; ;
    }
}