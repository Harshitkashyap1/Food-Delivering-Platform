
<%
         response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
         response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
         response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
         response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
         String username = null;
         username = (String) session.getAttribute("NGO");
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
    <%
                    String userid = (String) session.getAttribute("NGO");

                    String msg = (String) session.getAttribute("MSG");
        %>

        <%@page import="java.sql.*" %>

    </head>
    <body>
        <div class="wrapper col1">
            <div id="header">
                <%@include file="upperheader.html" %>
                <div id="topnav">
                    <%@include file="ngo.html" %>
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
                    <table>
                              <tr class="white-font">

                                <td width="8%">
                                    &nbsp;&nbsp;NGO&nbsp;ID&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;NGO&nbsp;Name&nbsp;&nbsp;
                                </td>
                                  <td width="10%">
                                    &nbsp;&nbsp;Resturant&nbsp;Name&nbsp;&nbsp;
                                </td>
                                    <td width="10%">
                                    &nbsp;&nbsp;Contact&nbsp;Number&nbsp;&nbsp;
                                </td>
                                <td width="12%">
                                    &nbsp;&nbsp;Address&nbsp;&nbsp;&nbsp;
                                </td>
                                  <td width="12%">
                                    &nbsp;&nbsp;Donation&nbsp;Details&nbsp;&nbsp;
                                </td>
                                  <td width="12%">
                                    &nbsp;&nbsp;Date&nbsp;&nbsp;&nbsp;
                                </td>


                            </tr>
                            <%
                                        Connection con = null;
                                        PreparedStatement pst = null;
                                        ResultSet rst = null;
                                        try {
                                            con = connection.Connect.makeCon();
                                            String query = "select * from ngodonate where ngoname ='" + userid + "'";

                                            pst = con.prepareStatement(query);
                                            rst = pst.executeQuery();
                                            while (rst.next()) {

                            %>
                            <tr bgcolor="wheat">
                                <td><%= rst.getString(1)%></td>
                                <td><%= rst.getString(2)%></td>
                                <td><%= rst.getString(3)%></td>
                                <td><%= rst.getString(4)%></td>
                                <td><%= rst.getString(5)%></td>
                                 <td><%= rst.getString(6)%></td>
                                 <td><%= rst.getString(7)%></td>
                            </tr>
                            <%

                                            }
                                        } catch (Exception e) {
                                        }


                            %> 
                    </table>


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