using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtEmailId.Value.Equals("admin@admin.com") && txtPass.Value.Equals("12345"))
        {
            Response.Redirect("AHome.aspx");
        }
        else
        {
            Users user = new Users();
            if (user.checkValue("EmailId", txtEmailId.Value))
            {
                string[] data = user.GetValues("EmailId", txtEmailId.Value, 7);
                if (data[6].Equals(txtPass.Value))
                {
                    Response.Redirect("userHome.aspx?id=" + data[0]);
                }
                else
                {
                    Literal1.Text = "Invalid Email Id and Password";
                }
            }
            else
            {
                Literal1.Text = "Invalid Email Id and Password";
            }
        }
    }
}