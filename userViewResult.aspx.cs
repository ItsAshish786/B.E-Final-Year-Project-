using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userViewResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ResultTable rt = new ResultTable();
        string[] data = rt.GetValues("EId", DropDownList1.Text, 4);
        Literal1.Text = "Result Date : " + data[2]+"<hr><br>";
        Literal1.Text += data[3];
    }
}