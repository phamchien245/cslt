﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl_CSLT3
{
    public partial class ketquarenluyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trangthai"].ToString() == "islogout")
            {
                Response.Redirect("dangnhap.aspx");
            }
        }
    }
}