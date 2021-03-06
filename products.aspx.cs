﻿using System;
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
            statusL.Visible = false;
        }
    }
    protected void searchBtn_OnClick(object sender, EventArgs e)
    {
        try
        {
            string connectionString
               = ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString;
            statusL.Visible = true;
            statusL.Text = "Searching for " + searchTerm.Text;
            string sqlQuery = "SELECT Types, Price " +
                               " FROM Product "+
                               " Where 1=2 ";


            string[] searchTerms = searchTerm.Text.Replace(';', ' ').Replace("'", "").Split(' ');

            foreach (string term in searchTerms)
            {
                sqlQuery += "OR Types like '%" + term + "%' ";
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
    public void dgSearchList_SortClick(object sender, DataGridSortCommandEventArgs e)
    {
        // ie the Sortexpression assigned to the Column.Check STEP III for how to assign a   // sortexpression on a column.
        PopulateDatagrid(e.SortExpression); //Call the method that populates the Datagrid with
        //the values from the Dataview.
    }
    public void PopulateDatagrid(string sortField)
    {
        try
        {
            string connectionString
                = ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString;
            string sqlQuery = "SELECT Types, Price " +
                               " FROM Product;";
            SqlDataAdapter outlookRecords =
                new SqlDataAdapter(sqlQuery, connectionString);

            // Create and fill a DataSet.
            DataSet ds = new DataSet();
            outlookRecords.Fill(ds);
            DataView dv = new DataView(ds.Tables[0]);
            dv.Sort = sortField;
            ProductsGrid.DataSource = dv;
            ProductsGrid.DataBind();

        }
        catch (Exception exc)
        {

            statusL.Text = exc.Message;
        }

    }
    public void PopulateDatagrid()
    {
        try
        {
            string connectionString
               = ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString;
            string sqlQuery = "SELECT Types, Price " +
                               " FROM Product; ";
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
