using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_MsgBox : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ShowDialog(string msg)
    {
        Literal1.Text = AlertMessege.tiTle;
        Literal2.Text = msg;
        mp1.Show();
    }
}