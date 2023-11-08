using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ElectDetails ed = new ElectDetails();
        ElectionTable et = new ElectionTable();
        PartyTable pt = new PartyTable();
        VoteTable vt = new VoteTable();
        CandidateTable ct = new CandidateTable();
        string[] ElectionData = et.GetValues("Id", DropDownList1.SelectedValue, 7);
        DataTable dt = ed.GetTableNum("EId", DropDownList1.SelectedValue);
        List<ElectionResult> list = new List<ElectionResult>();
        List<int> Count = new List<int>();
        List<int> tCount = new List<int>();
        foreach (DataRow dr in dt.Rows)
        {
            ElectionResult er = new ElectionResult();
            string[] cdata = ct.GetValues("Id", dr[3].ToString (), 10);
            string[] pdata = pt.GetValues("Id", cdata[9], 5);
            er.Id = cdata[0];
            er.CName = cdata[1];
            er.PartyName = pdata[1];
            DataTable ndt =vt.GetTableTwoColumnNumText("EId", DropDownList1.SelectedValue, "CId", cdata[0]);
            er.VoteCount = ndt.Rows.Count;
            list.Add(er);
            Count.Add(er.VoteCount);
            tCount.Add(er.VoteCount);
        }
        int[] arr = tCount.ToArray();
        Array.Sort(arr);
        Array.Reverse(arr);
        Literal1.Text = "Election Name :" + ElectionData[1];
        Literal1.Text += "<br>Election Date :" + ElectionData[3];
        int i = Count.IndexOf(arr[0]);
        ElectionResult ert = list[i];
        Literal1.Text += "<br>Winner Name: " + ert.CName ;
        Literal1.Text += "<br>Party Name: " + ert.PartyName ;
        Literal1.Text += "<br>Total Vote: " + ert.VoteCount ;
        Literal1.Text += "<br><hr>Election Result Details<hr><br>";
        foreach (int ik in arr)
        {
            i = Count.IndexOf(arr[ik]);
            ert = list[i];
            Literal1.Text += "Candidate Name: " + ert.CName;
            Literal1.Text += "<br>Party Name: " + ert.PartyName;
            Literal1.Text += "<br>Total Vote: " + ert.VoteCount;
            Literal1.Text += "<hr><br>";
        }
        ResultTable rt = new ResultTable();
        rt.Insert("-1", ElectionData[0], DateTime.Now.ToShortDateString(), Literal1.Text);
        et.updateInt("Id", ElectionData[0], "Status", 0);
        Button1.Visible = false;
    }
}