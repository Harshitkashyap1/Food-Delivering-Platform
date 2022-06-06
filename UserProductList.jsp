
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
                            <tr>
                                <%
                                            String category = request.getParameter("type");
                                            //category = request.getParameter("Category");
                                            PreparedStatement pst = null;
                                            Connection con = null;
                                            ResultSet rst = null;
                                            String prodName = null;
                                            String sizeWeight = null;
                                            String price = null;
                                            String mfgDate = null;
                                            String image = null;
                                             String color = null;
                                            String model = null;
                                            String didcrip = null;
                                            String waight = null;
                                            String video=null;
                                            int i = 0;
                                            try {
                                                con =  connection.Connect.makeCon();
                                                String query = "select ProductName,SizeWeight,Price,MFGDate,ProductImage,color,model,didcrip,waight,video from Product where Category='" + category + "'";
                                                pst = con.prepareStatement(query);
                                                rst = pst.executeQuery();
                                                while (rst.next()) {
                                                    i++;
                                                    prodName = rst.getString(1);
                                                    sizeWeight = rst.getString(2);
                                                    price = rst.getString(3);
                                                    mfgDate = rst.getString(4);
                                                    image = rst.getString(5);
                                                     color = rst.getString(6);
                                                    model = rst.getString(7);
                                                    didcrip = rst.getString(8);
                                                    waight = rst.getString(9);
                                                        video = rst.getString(10);
                                %>
                                <td style="background-color: #f0f0f0;">



                                    <table height="200" width="180">




                                        <tr>

                                            <td style="color:#003300;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=prodName%>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="color:#000099" colspan="2">
                                                <a href="productDetails.jsp?ProductID=<%=prodName%>"><img width="150px" height="100px" src="UploadedImage/<%=image%>" alt=""/></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="color:#000099" colspan="2" class="">
                                                RS:
                                            </td>
                                            <td align="left" style="color:#e34343;"><%=price%>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" style="color:#000099" colspan="2" class=""> Restaurants&nbsp;Name:</td>
                                                                 <td align="left" style="color:#e34343;" ><%=mfgDate%>

                                            </td>
                                        </tr>




                                         <tr>
                                            <td align="left" colspan="2" style="color:#000099;">Description:</td>
                                             <td align="left" style="color:#e34343;"><%=didcrip%>
                                              </tr>
                                                   <tr>
                                          <!--   <td style="color:#000099;" align="center"><a href="UploadedImage/<%=video%>">Video</a></td>  -->
                                              </tr>
                                    </table>

                                </td>
                                <%
                                                                                if (i % 3 == 0) {
                                %>
                            </tr>
                            <tr>
                                <%                                                              }
                                %>

                                <%                                                  }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                %>
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