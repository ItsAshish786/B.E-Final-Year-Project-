using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Users user = new Users();
        string[] data = user.GetValues("Id", Request.QueryString["id"], 7);
        Literal1.Text = "Hello " + data[1] + " " + data[2];
        Session["uid"] = data[0];
    }
}
