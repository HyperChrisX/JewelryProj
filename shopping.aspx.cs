using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShoppingCart curCart;
        try
        {
            if (Session["savedCart"] != null)
            {
                curCart = (ShoppingCart)Session["savedCart"];
                curCart.showCart();
                CartBody.Text += curCart.showCart();
                //if (Request.QueryString["operation"].Equals("removeItem"))
                //{
                //    curCart.remItem(Request.QueryString["productID"]);
                //    Response.Redirect("shopping.aspx", false);
                //}
                //else if (Request.QueryString["operation"].Equals("emptyCart"))
                //{
                //    curCart.emptyCart(Request.QueryString["productID"]);
                //    Response.Redirect("shopping.aspx");
                //}
                //else
                //{
                //    curCart.showCart();
                //    CartBody.Text += curCart.showCart();
                //}
            }
            else
            {
                CartBody.Text = "<p>Your Shopping Cart is EMPTY!</p>";
                curCart = new ShoppingCart();
                CartBody.Text += curCart.showCart();
            }

        }
        catch (Exception)
        {

            CartBody.Text = "<p>Could not instantiate a Shopping Cart.</p>";
        }
    }
}