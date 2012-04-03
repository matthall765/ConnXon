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

        }
        protected void gridProducts_SelectedIndexChanged(Object sender, EventArgs e)
        {
            int index = gridProducts.SelectedIndex;
            Session["SelectedProduct"] = (gridProducts.DataKeys[index].Value.ToString());
            Response.Redirect("Product.aspx");
        }
    }
}