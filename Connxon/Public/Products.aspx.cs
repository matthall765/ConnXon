using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connexon.Public
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Cat"] != null)
            {
                Session["SelectedCategory"] = Request.QueryString["Cat"];
            }
        }
        protected void Page_UnLoad(object sender, EventArgs e)
        {
            Session["SelectedCategory"] = null;
        }


    }
}