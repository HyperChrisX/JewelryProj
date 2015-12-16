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
    private ArrayList productTable = new ArrayList();


    public bool addItem(string ProdID, string table) 
    {
        foreach (string item in productID) {
            if (item == ProdID) { return false; }
        }
        productID.Add(ProdID);
        productQuantity.Add(1);
        productTable.Add(table);

        return true;
    }

    public string showCart() 
    {
        double total = 0;
        string retValue = "<asp:Table ID='ProductGrid' runat='server' width='100%'>";
        retValue += "<tr><th>Product</th><th>Quantity</th><th>Price Each</th></tr>";
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
                            + "<td>" + prodRecords["Name"] + "</td> "
                            + "<td>" + productQuantity[i] + "</td> "
                            + "<td>" + prodRecords["Price"] + "</td> ";
                        retValue += "</tr>";

                        total += Convert.ToDouble(prodRecords["Price"]) * Convert.ToInt16(productQuantity[i]);
                    }
                }
            }
        }
        retValue += "<tr><td colspan = '2'><strong>Your Shopping Cart Contains " + productQuantity.Count + " product(s).</strong></td>"
            + "<td>Total: " + total.ToString("c") + "</td>"
            + "</tr>";
        retValue += "</asp:Table>";
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
