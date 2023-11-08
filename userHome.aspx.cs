using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class userHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ElectionTable et = new ElectionTable();
        DataTable dt = et.GetTable("ElectionTable");
        if (dt.Rows.Count > 0)
        {
            string status = "";
            Literal1.Text = "";
            for (int i = dt.Rows.Count  - 1; i >= 0; i--)
            {
                DataRow dr = dt.Rows[i];
                Literal1.Text += "<div style=\"text - align: left;width: 100 %\">";
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
                Literal1.Text += "<tr> <td>Election Status </td><td>" + status  + "</td></tr>";
                if (status.Equals ("Live"))
                {
                   Literal1.Text += "<tr> <td>Participate </td><td><a href=\"userParticipate.aspx?id=" + dr[0] + "\">Click Here</a></td></tr>";
                }
                Literal1.Text += "</table>";
                Literal1.Text += "</div><br><hr><br>";
            }
        }
    }
}