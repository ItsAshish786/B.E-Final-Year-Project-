using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class userParticipate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string status = "";
            ElectionTable et = new ElectionTable();
            string[] dr = et.GetValues("Id", Request.QueryString["id"], 7);
            Literal1.Text += "<div  style=\"text - align: left;width: 100 %\">";
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

            Literal1.Text += "</table>";
            Literal1.Text += "</div><br><hr><br>";
            Literal2.Text = "<h1>Candidate List for this Election</h1>";
            ElectDetails ed = new ElectDetails();
            PartyTable pt = new PartyTable();
            CandidateTable ct = new CandidateTable();
            DataTable dt = ed.GetTableNum("EId", Request.QueryString["id"]);
            DataTable ndt = new DataTable();
            Session["EId"] = Request.QueryString["id"];
            foreach (DataRow row in dt.Rows)
            {
                DataRow rr =ndt.NewRow();
                string []pdata = pt.GetValues("Id", row[2].ToString(), 5);
                string[] cdata = ct.GetValues("Id", row[3].ToString(), 10);
                Literal2.Text += "<div style=\"text - align: left;width: 100 %\">";
                Literal2.Text += "<table style=\"width: 100 %;\">";
                Literal2.Text += "<tr> <td>LOGO </td><td><img src=\"uploads/" + pdata[2] + "\" width=\"50px\"/></td></tr>";
                Literal2.Text += "<tr> <td>Party Name </td><td>" + pdata[1] + "</td></tr>";
                Literal2.Text += "<tr> <td>Candidate Name </td><td>" + cdata[1] + "</td></tr>";
                Literal2.Text += "<tr> <td>Make Vote </td><td><a href=\"userMakeVote.aspx?id=" + cdata [0] + "\">Click Here</a></td></tr>";
                Literal2.Text += "</table>";
                Literal2.Text += "<br><hr><br>";
            }

        }
    }
}