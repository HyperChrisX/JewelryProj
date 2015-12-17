using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// Generic Shopping Cart Class
/// </summary>
public class ShoppingCart
{
    private SqlConnection dbConnection =
        new SqlConnection(ConfigurationManager.ConnectionStrings["JewleryStore"].ConnectionString);

    private ArrayList productID = new ArrayList();
    private ArrayList productQuantity = new ArrayList();

    public bool addItem(string ProdID) 
    {
        foreach (string item in productID) {
            if (item == ProdID) { return false; }
        }
        productID.Add(ProdID);
        productQuantity.Add(1);

        return true;
    }

    public void remItem(string ProdID)
    {
        for(int i = 0; i< productID.Count; i++)
        {
            if(productID[i].ToString().Equals(ProdID))
            {
                productID.RemoveAt(i);
                productQuantity.RemoveAt(i);
            }
        }
    }

    public void emptyCart(string ProdID)
    {
        productID.Clear();
        productQuantity.Clear();
    }

    public string showCart() 
    {
        double total = 0;
        string retValue = "<Table ID='ProductGrid' runat='server' width='100%'>";
        retValue += "<tr><th>Product </th><th>Quantity </th><th>Price Each </th><th>Remove </th></tr>";
        for (int i = 0; i < productID.Count; i++)
        {
            string sqlString = "Select Types, Price From Product  Where Types = '" + productID[i] + "';";
            using (SqlCommand prodCommand = new SqlCommand(sqlString, dbConnection))
            {
                using (SqlDataReader prodRecords = prodCommand.ExecuteReader())
                {
                    if (prodRecords.Read())
                    {
                        retValue += "<tr>"
                            + "<td>" + prodRecords["Types"] + "</td> "
                            + "<td>" + productQuantity[i] + "</td> "
                            + "<td>" + prodRecords["Price"] + "</td> "
                            + "<td><a href='shopping.aspx?operation=removeItem&productID=" + productID[i] + "'>Remove</a>" +"</td>";
                        retValue += "</tr>";

                        total += Convert.ToDouble(prodRecords["Price"]) * Convert.ToInt16(productQuantity[i]);
                    }
                }
            }
        }
        retValue += "<tr><td colspan = '2'><strong>Your Shopping Cart Contains " + productQuantity.Count + " product(s).</strong></td>"
            + "<td>Total: " + total.ToString("c") + "</td>"
            + "<td><a href='shopping.aspx?operation=emptyCart'>Empty Cart</a></td>"
            + "</tr>";
        retValue += "</Table>";
        return retValue;
    }
    
    public ShoppingCart()
    {
        try
        {
            dbConnection.Open();
        }
        catch (Exception)
        {
            
            throw;
        }
	}

    ~ShoppingCart()
    {
        dbConnection.Close();
    }
}
