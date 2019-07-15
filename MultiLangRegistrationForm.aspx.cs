using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
namespace WebApplication1
{
    public partial class MultiLangRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String PreferredLang = Request.ServerVariables["Http_Accept_Language"].Split(',')[0];
                ddlLang.SelectedValue = PreferredLang;
            }

        }
        protected override void InitializeCulture()
        {
            string CultureName = Request.Form["ddlLang"];
            if (CultureName!=null) {
                CultureInfo ci = new CultureInfo(CultureName);
                Thread.CurrentThread.CurrentCulture = ci;
                Thread.CurrentThread.CurrentUICulture = ci;
            }
        }
    }
}