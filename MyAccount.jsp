<%
         response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
         response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
         response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
         response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
         String username = null;
         username = (String) session.getAttribute("USER");
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
                    String userid = (String) session.getAttribute("USER");

                    String msg = (String) session.getAttribute("MSG");
        %>

        <script type="text/JavaScript" src="js/scw.js"></script>
  <%@page import="java.sql.*" %>
    
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
               <div><a href="#"><img src="image/2.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

                <form  action="sign_Up" method="post" enctype="multipart/form-data">
                    <table  border="0" cellspacing="10" cellpadding="10" >
                        <tr>
                            <td class="text" colspan="1">
                                You are Welcome &nbsp;&nbsp;&nbsp;&nbsp;


                                <%=userid%>
                            </td>
      
                        </tr>

                     

                        <%
                                    Connection con = null;
                                    PreparedStatement pst = null;
                                    ResultSet rst = null;
                                    try {
                                        con = connection.Connect.makeCon();
                                        String query = "select * from signup where uname ='" + userid + "'";
                                        pst = con.prepareStatement(query);
                                        rst = pst.executeQuery();
                                        while (rst.next()) {

                                            String user_id = rst.getString(1);
                                            String fname = rst.getString(5);
                                            String lname = rst.getString(6);
                                            String gender = rst.getString(7);
                                            String dob = rst.getString(8);
                                            String cno = rst.getString(9);
                                            String email = rst.getString(10);
                                            String add = rst.getString(11);
                                            String city = rst.getString(12);
                                            String pin = rst.getString(13);
                                            String state = rst.getString(14);
                                            String country = rst.getString(15);
                                            String Image = rst.getString(2);


                        %>
                        <tr>
                            <td>

                                <table cellpadding="10" cellspacing="10">
                                    <tr>
                                        <td class="text">User Id:</td>
                                        <td> <input type= "text" size="25"  id="txthidden" name="txthidden" value="<%=user_id%>"/></td>
                               <td>
                                                        <img src="UploadedImage/<%=Image%>" height="150x" width="200px;"/>
                                                    </td>

                                    </tr>

                                </table>

                            </td>
                        </tr>

                        <table cellpadding="10" cellspacing="10">
                            <tr>
                                <td class="text">First Name:</td>
                                <td>
                                    <input type="text" size="25"  id="txtname" name="txtname" value="<%=fname%>">

                                </td>
                            </tr>
                            <tr>
                                <td class="text">Last Name :</td>
                                <td><input type= text size="25"  id="txtlname" name="txtlname"  value="<%=lname%>" ></td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Gender
                                </td>
                                       <td><input type= text size="25"  id="txtlname" name="txtlname" value="<%=gender%>" ></td>

                             
                            </tr>
                            <tr>
                                <td class="text">Date of Birth</td>
                                <td><input type= text size="25" name="txtdb"  id="txtdb" readonly onclick="scwShow(this,event)" value="<%=dob%>"></td>
                            </tr>
                            <tr>
                                <td class="text">Contact Number:</td>
                                <td><input type= text size="25"  id="number" name="number" onkeyup="CheckForIntegers(this)" onblur="mob(this)" value="<%=cno%>"></td>
                            </tr>
                            <tr>
                                <td class="text">Email Id:</td>
                                <td><input type="text" size="25" id="txtemail" name="txtemail"  onblur=" mail()" value="<%=email%>"></td>
                            </tr>
                            <tr>
                                <td class="text">Address:</td>
                                <td><input type= text size="25"  id="txtaddress" name="txtaddress" value="<%=add%>" ></td>
                            </tr>
                            <tr>
                                <td class="text">City:</td>

                                  <td><input type= text size="25"  id="txtlname" name="txtlname" onblur=" CheckForAlphabets(this)" value="<%=city%>" ></td>

                            </tr>
                            <tr>
                                <td class="text">Pin Code:</td>
                                <td> <input type= text size="25"  id="txtpin" name="txtpin" value="<%=pin%>"></td>
                            </tr>
                            <tr>
                                <td class="text">State:</td>
                                <td><input type= text size="25"  id="txtstate" name="txtstate" value="<%=state%>"></td>
                            </tr>
                            <tr>
                                <td class="text">Country:</td>
                           
                                  <td><input type= text size="25"  id="txtlname" name="txtlname" onblur=" CheckForAlphabets(this)" value="<%=country%>" ></td>

                            </tr>
                            <%

                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }


                            %>

                        </table>

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