using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class productdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        errLabel.Visible = false;
        ringImage.Visible = false;
        string gemtype = Request.QueryString.ToString();
        gemtype = gemtype.Replace("Types=", "");
        try
        {
            SqlConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString);
            dbConnection.Open();
            string connectionString
               = ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString;
            productName.Text = gemtype + " Ring";
            string sqlQuery = "SELECT Types, Price, Descriptions, Images " +
                               " FROM Product " +
                               " Where 1=2 ";


            string[] searchTerms = gemtype.Replace(';', ' ').Replace("'", "").Split(' ');

            foreach (string term in searchTerms)
            {
                sqlQuery += "OR Types like '%" + term + "%' ";
            }
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection);
            SqlDataReader prodInfo = sqlCommand.ExecuteReader();
            if (prodInfo.Read())
            {
                ringImage.Visible = true;
                descLabel.Text = prodInfo["Descriptions"].ToString();
                double itemPrice = Convert.ToDouble(prodInfo["Price"].ToString());
                price.Text = itemPrice.ToString("c");
                ringImage.ImageUrl = prodInfo["Images"].ToString();
                prodInfo.Close();
            }
            else
            {
                errLabel.Visible = true;
                errLabel.Text = "Error occurred!";
            }
            dbConnection.Close();
        }
        catch (SqlException exc)
        {
            errLabel.Visible = true;
            errLabel.Text = exc.Message;
        }
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        ShoppingCart curCart;
        string gemtype = Request.QueryString.ToString();
        gemtype = gemtype.Replace("Types=", "");

        if (Session["savedCart"] == null)
        {
            curCart = new ShoppingCart();
        }
        else
        {
            curCart = (ShoppingCart)Session["savedCart"];
        }

        bool addResult = curCart.addItem(gemtype);

        if (addResult == false)
        {
            Button.Text = "Already in Cart";
        }
        else
        {
            Session["savedCart"] = curCart;
            Response.Redirect("shopping.aspx?operation=", false);
        }
    }
}