using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ExceptionHandling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { txtNum1.Focus(); }
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {

            int num1 = int.Parse(txtNum1.Text);
            int num2 = int.Parse(txtNum2.Text);
            int result = num1 / num2;
            txtResult.Text = result.ToString();


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtNum1.Text = txtNum2.Text = txtResult.Text = "";
            txtNum1.Focus();
        }
        //protected void Page_Error(Object sender, EventArgs e)
        //{
        //    Exception ex = Server.GetLastError();
        //    Server.ClearError();
        //    Response.Redirect("ErrorPage.aspx?ErrorMessage=" + ex.Message);

        //}
    }
}