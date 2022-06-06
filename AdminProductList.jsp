<%
         response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
         response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
         response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
         response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
         String username = null;
         username = (String) session.getAttribute("ADMIN");
         if (username != null) {

%>


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


        <%@page import="java.sql.*" %>

    </head>
    <body>
        <div class="wrapper col1">
            <div id="header">
                <%@include file="upperheader.html" %>
                <div id="topnav">
                    <%@include file="admin.html" %>
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

                <div class="center-content" style="height: 530px; width: 1100px; overflow: auto;">
                    <form method="post" action="deleteProduct">
                        <table cellpadding="3" cellspacing="3" align="center" width="90%" class="formTable">
                            <%
                                        String msg = null;
                                        msg = (String) session.getAttribute("MSG");
                                        if (msg != null) {
                            %>
                            <tr>
                                <td style="font-family: verdana;color: #9999ff;font-size: 14px" align="center" colspan="2"><%=msg%></td>
                            </tr>
                            <%
                                            session.removeAttribute("MSG");
                                        } else {
                                            session.setAttribute("MSG", "");
                                        }
                            %>
                            <tr>
                                <td>
                                    <table width="100%">
                                        <tr class="white-font">
                                            <td>Product ID</td>
                                            <td>Categrory</td>
                                            <td>Product&nbsp;Name</td>
                                            <td>Size/Weight</td>
                                            <td>Quantity</td>
                                            <td>Price</td>
                                            <td>Restaurants&nbsp;Name</td>
                                            <td>Delete</td>

                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="height: 350px;width: 100%;overflow: auto;border-style: none" class="grid">
                                        <table width="100%">
                                            <%
                                                        PreparedStatement pst = null;
                                                        Connection con = null;
                                                        ResultSet rst = null;
                                                        String pid = null;
                                                        String category = null;
                                                        String name = null;
                                                        String size = null;
                                                        String quentity = null;
                                                        String price = null;
                                                        String date = null;
                                                        int i = 0;
                                                        try {
                                                            con = connection.Connect.makeCon();
                                                            String query = "select * from Product";
                                                            pst = con.prepareStatement(query);
                                                            rst = pst.executeQuery();
                                                            while (rst.next()) {
                                                                pid = rst.getString(1);
                                                                category = rst.getString(2);
                                                                name = rst.getString(3);
                                                                size = rst.getString(4);
                                                                quentity = rst.getString(5);
                                                                price = rst.getString(6);
                                                                date = rst.getString(7);
                                                                i++;
                                            %>
                                            <tr bgcolor="wheat">

                                                <td><a href="UpdateProduct.jsp?ProductId=<%=pid%>"><%=pid%></a></td>
                                                <td><%=category%></td>
                                                <td><%=name%></td>
                                                <td><%=size%></td>
                                                <td><%=quentity%></td>
                                                <td><%=price%></td>
                                                <td><%=date%></td>
                                                <td>
                                                    <input type="checkbox" name="chkEMPID" id="chkEMPID" value="<%=pid%>"/>
                                                    <input type="hidden" name="hidecount" id="hidecount" value="<%=i%>"/>
                                                </td>

                                            </tr>
                                            <%
                                                            }
                                                        } catch (Exception e) {
                                                            e.printStackTrace();
                                                        }
                                            %>
                                            <tr>
                                                <td align="right" colspan="8">
                                                    <input type="submit" name="btnsubmit" id="btnsubmit" value="Delete" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>

                        </table>
                    </form>
                </div>



                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>

<%
            } else {


                response.sendRedirect("logout.jsp");
            }
%>