using System;
using System.Collections.Generic;
using System.Web;

public class CartList
{
    public List<int> cartList;

    public CartList()
    {
        cartList = new List<int>();
    }

    public int get(int index)
    {
        return cartList[index];
    }

    public void set(int value)
    {
        cartList.Add(value);
    }

    public static CartList getCart()
    {
        CartList cart = (CartList)HttpContext.Current.Session["Cart"];
        if (cart == null)
            HttpContext.Current.Session["Cart"] = new CartList();
        return (CartList)HttpContext.Current.Session["Cart"];
    }
}