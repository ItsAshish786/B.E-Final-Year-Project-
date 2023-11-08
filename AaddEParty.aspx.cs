using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AaddEParty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      ElectDetails ed = new ElectDetails();
      ed.Insert("-1", DropDownList1.SelectedValue, DropDownList2.Text, DropDownList3.Text);
      Literal1.Text = "Saved";
    }
}