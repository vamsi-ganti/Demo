﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUserName.Focus();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Label1.Text = "your deatils saved";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = txtPwd.Text = "";
            txtUserName.Focus();
        }
    }
}