using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Connexon.Public
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_IndexChange(object sender, GridViewSelectEventArgs e)
        {
            string _prodID = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
            int prodID = int.Parse(_prodID);
            CartList.getCart().set(prodID);
            Response.Redirect("Cart.aspx");
        }
    }
}