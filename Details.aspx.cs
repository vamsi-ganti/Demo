using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { txtName.Focus(); }
			//hello akkadunavu//
            Calendar1.Visible = true;

        }

        protected void IBtn_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible) { Calendar1.Visible = false; }
            else
                Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.DayOfYear > DateTime.Now.DayOfYear)
            {
                e.Day.IsSelectable = false;

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtDate.Text = txtFName.Text = txtMName.Text = txtName.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Write("data saved sucessfully");
            }
            else { Response.Write("validations failed"); }
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            if (e.NewDate.Month == DateTime.Now.Month && e.NewDate.Year == DateTime.Now.Year)
            { Calendar1.NextMonthText = ""; }
            else { Calendar1.NextMonthText = "&gt"; }
        }
    }
}