using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userMakeVote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string status = "";
            ElectionTable et = new ElectionTable();
            string[] dr = et.GetValues("Id", Session["EId"].ToString(), 7);

            Literal1.Text += "<table style=\"width: 100 %;\">";
            Literal1.Text += "<tr> <td>Election Name </td><td>" + dr[1] + "</td></tr>";
            Literal1.Text += "<tr> <td>Election Details </td><td>" + dr[2] + "</td></tr>";
            Literal1.Text += "<tr> <td>Election Date</td><td>" + dr[3] + "</td></tr>";
            Literal1.Text += "<tr> <td>Start Time</td><td>" + dr[4] + "</td></tr>";
            Literal1.Text += "<tr> <td>End Time</td><td>" + dr[5] + "</td></tr>";
            DateTime dtime = Convert.ToDateTime(dr[3].ToString());
            if (dr[6].ToString().Equals("1") && (dtime > DateTime.Now))
            {
                status = "Up comming";

            }
            else if (dtime.ToShortDateString().Equals(DateTime.Now.ToShortDateString()))
            {
                DateTime dt1 = Convert.ToDateTime(dr[4].ToString());
                DateTime dt2 = Convert.ToDateTime(dr[5].ToString());

                if (DateTime.Now.Hour >= dt1.Hour && DateTime.Now.Hour <= dt2.Hour)
                {
                    status = "Live";
                }
                else if (DateTime.Now.Hour <= dt1.Hour)
                {
                    status = "Starts soon";
                }
                else
                {
                    status = "Closed";
                }
            }

            else
            {
                status = "Closed";
            }
            Literal1.Text += "<tr> <td>Election Status </td><td>" + status + "</td></tr>";

            PartyTable pt = new PartyTable();
            CandidateTable ct = new CandidateTable();

            string[] cdata = ct.GetValues("Id", Request.QueryString["id"], 10);
            string[] pdata = pt.GetValues("Id", cdata[9], 5);
            Session["pid"] = pdata[0];
            Session["cid"] = cdata[0];
            Literal1.Text += "<tr> <td>LOGO </td><td><img src=\"uploads/" + pdata[2] + "\" width=\"50px\"/></td></tr>";
            Literal1.Text += "<tr> <td>Party Name </td><td>" + pdata[1] + "</td></tr>";
            Literal1.Text += "<tr> <td>Candidate Name </td><td>" + cdata[1] + "</td></tr>";
            Literal1.Text += "</table>";
            Literal1.Text += "<hr>";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        VoteTable vt = new VoteTable();
        if (!vt.checkTwoValue("EId", Session["EId"].ToString(), "UId", Session["uid"].ToString()))
        {
            vt.Insert("-1", Session["EId"].ToString(), Session["pid"].ToString(), Session["cid"].ToString(), Session["uid"].ToString());
            Literal2.Text = "You voted successfully";
        }
        else
        {
            Literal2.Text = "You already voted";
        }
    }
}