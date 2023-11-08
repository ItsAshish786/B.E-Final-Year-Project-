using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Users user = new Users();
            if (txtPass1.Value.Equals(txtPass2.Value))
            {
                int a = user.Insert("-1", txtFirstName.Value, txtLastName.Value, txtEnrollment.Value, txtEmailId.Value, txtMobile.Value, txtPass1.Value, "2");
                if (a != 0)
                {
                    //Literal1.Text = AlertMessege.GetMessage("Registered Successfully");
                    MsgBox.ShowDialog("Registered Successfully");
                }
            }
            else
            {
                //Literal1.Text = AlertMessege.GetMessage("Password Mismatch");
                MsgBox.ShowDialog("Password Mismatch");
            }
        }
        catch (Exception ex)
        {
            //Literal1.Text = AlertMessege.GetMessage(ex.Message );
            MsgBox.ShowDialog(ex.Message);
        }
    }
}