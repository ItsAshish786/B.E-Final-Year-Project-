using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class admin_AddParty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                int a = ImageFiles.GetFileCount(Server.MapPath("~/uploads/"));
                string filename = Path.GetFileName(FileUploadControl.FileName);
                string fname = a.ToString() + filename;
                FileUploadControl.SaveAs(Server.MapPath("~/uploads/") + fname);
                Literal1.Text = "Upload status: File uploaded!";
                Session["fname"] = fname;
                Image1.ImageUrl = "~/uploads/" + fname;
            }
            catch (Exception ex)
            {
                Literal1.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        PartyTable pt = new PartyTable();
        pt.Insert("-1", txtName.Value, Session["fname"].ToString(), txtDetalis.Value, DateTime.Now.ToLongDateString());
        Literal2.Text = "Save Succesfully";
    }
}