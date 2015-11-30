using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class products : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PopulateDatagrid();
        }
    }
    protected void searchBtn_OnClick(object sender, EventArgs e)
    {
        try
        {
            string connectionString
               = ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString;
            
            statusL.Text = "Searching for " + searchTerm.Text;
            string sqlQuery = "SELECT  ProductID,Name,ProductNumber, Color " +
                               " FROM Production.Product " +
                               " Where 1=2";


            string[] searchTerms = searchTerm.Text.Replace(';', ' ').Replace("'", "").Split(' ');

            foreach (string term in searchTerms)
            {
                sqlQuery += " OR Name like '%" + term + "%' ";
            }
            SqlDataAdapter outlookRecords =
                    new SqlDataAdapter(sqlQuery, connectionString);

            // Create and fill a DataSet.
            DataSet ds = new DataSet();
            outlookRecords.Fill(ds);
            DataView dv = new DataView(ds.Tables[0]);
            ProductsGrid.DataSource = dv;
            ProductsGrid.DataBind();
        }
        catch (Exception exc)
        {
            statusL.Text = exc.Message;
        }


    }
    //public void dgSearchList_SortClick(object sender, DataGridSortCommandEventArgs e)
    //{
    //    // ie the Sortexpression assigned to the Column.Check STEP III for how to assign a   // sortexpression on a column.
    //    PopulateDatagrid(e.SortExpression); //Call the method that populates the Datagrid with
    //    //the values from the Dataview.
    //}
    //public void PopulateDatagrid(string sortField)
    //{
    //    try
    //    {

    //        statusL.Text = "This should be sorted";
    //        string connectionString
    //            = ConfigurationManager.ConnectionStrings["AdventureWorks2012"].ConnectionString;
    //        string sqlQuery = "SELECT ProductID,Name,ProductNumber, Color " +
    //                          " FROM Production.Product; ";
    //        SqlDataAdapter outlookRecords =
    //            new SqlDataAdapter(sqlQuery, connectionString);

    //        // Create and fill a DataSet.
    //        DataSet ds = new DataSet();
    //        outlookRecords.Fill(ds);
    //        DataView dv = new DataView(ds.Tables[0]);
    //        dv.Sort = sortField;
    //        ProductsGrid.DataSource = dv; 
    //        ProductsGrid.DataBind();

    //    }
    //    catch (Exception exc)
    //    {

    //        statusL.Text = exc.Message;
    //    }

    //}
    public void PopulateDatagrid()
    {
        try
        {
            statusL.Text += "This should not be sorted";
            string connectionString
               = ConfigurationManager.ConnectionStrings["AdventureWorks2012"].ConnectionString;
            string sqlQuery = "SELECT ProductID,Name,ProductNumber, Color " +
                              " FROM Production.Product; ";
            SqlDataAdapter outlookRecords =
                new SqlDataAdapter(sqlQuery, connectionString);

            // Create and fill a DataSet.
            DataSet ds = new DataSet();
            outlookRecords.Fill(ds);
            DataView dv = new DataView(ds.Tables[0]);
            ProductsGrid.DataSource = dv;
            ProductsGrid.DataBind();

        }
        catch (Exception exc)
        {

            statusL.Text = exc.Message;
        }

    }

}
