

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
          String cat = request.getParameter("ProductID");

        %>
           <%
                    String userid = (String) session.getAttribute("USER");

        %>
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
                <div><a href="#"><img src="image/4.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

                <div class="center-content" style="height: 530px; width: 900px; overflow: auto;">
                       <form method="post" action="ngoDonate">
                    <table align="center" height="150px" cellpadding="4" cellspacing="4">

                        <%
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    int i = 0;
                                    try {
                                        con = connection.Connect.makeCon();
                                        st = con.createStatement();
                                        String Query = "select * from ngo where UserID='" + cat + "'";
                                        rs = st.executeQuery(Query);
                                        while (rs.next()) {

                                            String a1 = rs.getString(1);
                                            String a2 = rs.getString(3);





                                            i++;
                        %>

                        <tr>
                            <td>
                                Ngo ID :
                            </td>
                            <td>
                                <input type="text" name="txtAccount" id="txtAccount" value="<%=a1%>" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Ngo Name :
                            </td>
                            <td>
                                <input type="text" name="nname" id="nname" value="<%=a2%>" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Name :
                            </td>
                            <td>
                                <input type="text" name="dname" id="dname" value="<%=userid%>" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contact Details :
                            </td>
                            <td>
                                <input type="text" name="contact" id="contact" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Full Address :
                            </td>
                            <td>
                                <textarea rows="5" cols="24" name="address" id="address"></textarea>
                            </td>
                        </tr>

  <tr>
                            <td>
                                Donation Details :
                            </td>
                            <td>
                                <textarea rows="5" cols="24" name="donation" id="donation"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align="left">
                                <input type="submit" name="btnsubmit" id="btnsubmit" value="Submit" onclick="return validate()"/>
                                <input type="reset" name="btnReset" id="btnReset" value="Reset"/>
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
                </div>



                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
    </body>
</html>