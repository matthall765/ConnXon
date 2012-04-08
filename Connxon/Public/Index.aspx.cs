using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connexon
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void dlsCategory_SelectedIndexChange(object sender, EventArgs e)
        {
            String sel = dlsCategory.DataKeys[dlsCategory.SelectedIndex].ToString();
            Session["SelectedCategory"] = sel;
            Label1.Text = sel;
            Response.Redirect("~/Public/Products.aspx");
        }
    }
}