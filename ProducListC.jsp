<%
         response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
         response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
         response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
         response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
         String username = null;
         username = (String) session.getAttribute("USER");
         if (username != null) {

%>
<%@page import="com.intel.bluetooth.btgoep.Connection"%>
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
                    String userid = (String) session.getAttribute("USER");

                    String msg = (String) session.getAttribute("MSG");
        %>


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

                <form  action="sign_Up" method="post" enctype="multipart/form-data">
                <table>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td class="heading">
                                Purchasing Portal
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                            <tr>
                            <table style="width: 100%">
                    <tr style="background-color: white;">

                        <td valign="top">
                            <a href="UserProductList.jsp?type=BreakFast" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/brk.jpg" height="300px;" width="300px;" alt="" /><h1>Breakfast</h1></a>
                        </td>

                        <td valign="top">
                            <a href="UserProductList.jsp?type=Lunch" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/l.jpg" height="300px;" width="300px;" alt="" /><h1>Lunch</h1></a>
                        </td>
                        <td valign="top">
                            <a href="UserProductList.jsp?type=Dinner" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/d.jpg" height="300px;" width="300px;" alt="" /><h1>Dinner</h1></a>
                        </td>
                    </tr>

                              <tr style="background-color: white;">

                        <td valign="top">
                            <a href="UserProductList.jsp?type=Beverages" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/be.png" height="300px;" width="300px;" alt="" /><h1>Beverages</h1></a>
                        </td>

                        <td valign="top">
                            <a href="UserProductList.jsp?type=FastFood" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/f.jpg" height="300px;" width="300px;" alt="" /><h1>Fast Food</h1></a>
                        </td>

                    </tr>


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
<%
            } else {


                response.sendRedirect("logout.jsp");
            }
%>