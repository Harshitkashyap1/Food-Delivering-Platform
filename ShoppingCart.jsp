
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%@include file="title.html" %>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
        <!-- Homepage Only Scripts -->
        <script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
                    timeout: 5000,
                    fx: 'fade',
                    pager: '#fs_pagination',
                    pause: 1,
                    pauseOnPagerHover: 0
                });
            });
        </script>
        <%
                    String msg = null;
                    msg = (String) session.getAttribute("MSG");
                    String userid = (String) session.getAttribute("USER");
                    String productid = null;
        %>

        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.ResultSet"%>
        <script src="scw.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="wrapper col1">
            <div id="header">
                <%@include file="upperheader.html" %>
                <div id="topnav">
                    <%@include file="user.html" %>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide">
                <div><a href="#"><img src="image/1.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">
                <table width="100%">
                    <tr class="heading">
                        <td align="center">Product</td><td align="center">CODE</td><td align="center">Quantity</td><td align="center">Unite Price</td><td align="center">Remove</td>
                    </tr>
                    <%
                                double total = 0;
                                String category = null;
                                PreparedStatement pst = null;
                                Connection con = null;
                                ResultSet rst = null;
                                String proid = null;

                                String saletot = null;
                                String sizeWeight = null;
                                int price = 0;
                                double tot = 0;
                                int qty = 0;
                                String image = null;
                                String salesId = null;
                                int i = 0;
                                try {
                                    con = connection.Connect.makeCon();
                                    String query = "select SalerId,ProductId,SeizeWeight,Price,Quantity,Image from userPurchase where  UserId='" + userid + "' and Status=0";
                                    //System.out.println("Query::::::::::::::::" + query);
                                    pst = con.prepareStatement(query);
                                    rst = pst.executeQuery();
                                    while (rst.next()) {
                                        salesId = rst.getString(1);
                                        proid = rst.getString(2);
                                        sizeWeight = rst.getString(3);
                                        price = rst.getInt(4);
                                        qty = rst.getInt(5);
                                        image = rst.getString(6);
                                        tot = qty * price;
                                        total = total + tot;


                    %>
                    <tr>
                        <td align="center"><img src="UploadedImage/<%=image%>" alt="" height="100px" width="100px"/></td>
                        <td align="center"><%=proid%></td>
                        <td align="center"><%=qty%></td>

                        <td align="center"><%=price%></td>
                        <td align="center"><a href="ShoppingCart.jsp?PorductID=<%=proid%>">Remove</a></td>
                    </tr>
                    <%
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                    %>
                    <%
                                String pid = request.getParameter("PorductID");
                                if (salesId != null) {
                                    try {
                                        con = connection.Connect.makeCon();
                                        String sql = "delete from userPurchase where (SalerId='" + salesId + "' and  UserId='" + userid + "' and ProductId='" + pid + "' and Status=0)";
                                        pst = con.prepareStatement(sql);
                                        int ii = pst.executeUpdate();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                                //saletot = salesId + ":" + total;
                                //System.out.println("Sale::::::::::::::::::::::ID"+salesId);
                    %>
                    <tr>
                        <td align="right">
                            <a href="UserProductList.jsp?type=Cloths" id="link">Continue Shopping</a>
                            <a href="Payment.jsp?TotalPrice=<%=total%>" style="background-color: skyblue;font-weight: bold;">Card Payment</a>
                            <a href="https://paytm.com/">Paytm</a>
                        </td>
                    </tr>
                </table>


                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>