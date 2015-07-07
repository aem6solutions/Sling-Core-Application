package com.ttn.sling.ttnbucks.server;

import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.resource.ResourceResolver;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.apache.sling.commons.json.JSONArray;
import org.apache.sling.commons.json.JSONObject;

import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@SlingServlet(paths = "/bin/service/calculate", methods = "GET")
public class CalculateBill extends SlingSafeMethodsServlet {
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        try {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            String coffee = request.getParameter("coffee");
            String sugar = request.getParameter("sugar");
            String milk = request.getParameter("milk");
            int coffee_price, sugar_price, milk_price, bill;
            JSONObject jsonObject = new JSONObject();
            JSONArray jsonArray = new JSONArray();
            if (coffee.equals("Latte")) {
                coffee_price = 150;
            } else if (coffee.equals("Cappuccino")) {
                coffee_price = 100;
            } else {
                coffee_price = 120;
            }
            if (sugar.equals("Sugar Free")) {
                sugar_price = 50;
            } else if (sugar.equals("Brown Sugar")) {
                sugar_price = 40;
            } else {
                sugar_price = 20;
            }
            if (milk.equals("Full Cream")) {
                milk_price = 50;
            } else if (milk.equals("Normal Milk")) {
                milk_price = 40;
            } else {
                milk_price = 30;
            }
            bill = coffee_price + sugar_price + milk_price;
            jsonObject.put("bill", bill);
            response.getWriter().write(jsonObject.toString());
        } catch (Exception e) {
        }
    }
}
