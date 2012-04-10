using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Connexon.Public
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable myDt;
                myDt = new DataTable();
                myDt = CreateDataTable();
                Session["myDatatable"] = myDt;
                this.GridView1.DataSource = ((DataTable)Session["myDatatable"]).DefaultView;
                this.GridView1.DataBind();
            }
        }

        private DataTable CreateDataTable()
        {
            DataTable myDataTable = new DataTable();
            DataColumn myDataColumn;

            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "productID";
            myDataTable.Columns.Add(myDataColumn);

            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "brand";
            myDataTable.Columns.Add(myDataColumn);

            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "series";
            myDataTable.Columns.Add(myDataColumn);

            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "model";
            myDataTable.Columns.Add(myDataColumn);

            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "description";
            myDataTable.Columns.Add(myDataColumn);


            myDataColumn = new DataColumn();
            myDataColumn.DataType = Type.GetType("System.String");
            myDataColumn.ColumnName = "price";
            myDataTable.Columns.Add(myDataColumn);

            foreach (int id in CartList.getCart().cartList)
            {
                DataRow dr = myDataTable.NewRow();
                dr["productID"] = id;

                DataDataContext data = new DataDataContext();
                Connexon.Product lol = data.Products.Single(p => p.ProductID == id);
                dr["brand"] = lol.Brand;
                dr["series"] = lol.Series;
                dr["model"] = lol.Model;
                dr["price"] = lol.Price;
                dr["description"] = lol.Description;

                myDataTable.Rows.Add(dr);
            }
            return myDataTable;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}