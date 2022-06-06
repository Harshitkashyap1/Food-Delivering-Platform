
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
                String selsId = connection.Auto_Gen_ID.globalGenId("SEL-", "sales");
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
      <form method="post" action="purchaseUser3">
                        <table width="100%">
                            <%
                                        String product = request.getParameter("ProductID");
                                        //product = request.getParameter("ProductID");
                                        PreparedStatement pst = null;
                                        Connection con = null;
                                        ResultSet rst = null;
                                        String category = null;
                                        String sizeWeight = null;
                                        String price = null;
                                        String mfgDate = null;
                                        String image = null;
                                        int i = 0;
                                        try {
                                            con =  connection.Connect.makeCon();
                                            String query = "select ProductID,Category,SizeWeight,Price,MFGDate,ProductImage from Product where ProductName='" + product + "'";
                                            pst = con.prepareStatement(query);
                                            rst = pst.executeQuery();
                                            if (rst.next()) {
                                                i++;
                                                String proid = rst.getString(1);
                                                category = rst.getString(2);
                                                sizeWeight = rst.getString(3);
                                                price = rst.getString(4);
                                                mfgDate = rst.getString(5);
                                                image = rst.getString(6);
                            %>
                            <tr>
                                <td>
                                    <table height="250" width="500px">

                                        <tr>
                                            <td>
                                                <input type="hidden" name="txtSalesID" id="txtSalesID" value="<%=selsId%>"/>
                                                <input type="hidden" name="txtUserID" id="txtUserID" value="<%=userid%>"/>
                                                <input type="hidden" name="txtID" id="txtID" value="<%=proid%>"/>
                                                <input type="hidden" name="txtCategory" id="txtCategory" value="<%=category%>"/>
                                                <input type="hidden" name="txtPrice" id="txtPrice" value="<%=price%>"/>
                                                <input type="hidden" name="txtImage" id="txtImage" value="<%=image%>"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center"  class="price">Rs  :<%=price%></td>
                                                   <td><input type="hidden" name="cmbSize" id="cmbSize" value="4"/></td>


                                            <td>Qty :<input type="text" name="txtQty" id="txtQty" onblur="validateqty()"/></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="300px">
                                                    <tr>
                                                        <td>
                                                            <img width="150px" height="100px" src="UploadedImage/<%=image%>" alt=""/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table width="200px">
                                                    <tr>
                                                        <td colspan="2" align="center">
                                                            <input type="submit" name="btnsubmit" id="btnsubmit" value="Buy Now" onclick="window.location.href='ShoppingCart2.jsp'" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" align="center">
                                                            <strong style="color: red;">Product Information</strong>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Category :</td><td><%=category%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Size :</td><td><%=sizeWeight%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Price :</td><td><%=price%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Restaurants&nbsp;Name  :</td><td><%=mfgDate%></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <%
                                                                                        if (msg != null) {
                                        %>
                                        <tr>
                                            <td style="font-family: verdana;color: red;font-size: 10px" align="center"><%=msg%></td>
                                        </tr>
                                        <%
                                                                                            session.removeAttribute("MSG");
                                                                                        } else {
                                                                                            session.setAttribute("MSG", "");
                                                                                        }
                                        %>
                                    </table>
                                </td>
                            </tr>
                            <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                            %>
                        </table>
                    </form>


                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>