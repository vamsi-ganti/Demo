using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class DisplayProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Physicalpath = Server.MapPath("~/products.xml");
            DataSet ds = new DataSet();
            ds.ReadXml(Physicalpath);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void Page_Error(Object sender,EventArgs e) {
            Exception ex = Server.GetLastError();
            Server.ClearError();
            MailSystem.SendMail(ex);
            Response.Redirect("ErrorPageWithMail.aspx");
        }
    }
}