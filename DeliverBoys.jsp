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
 <script type="text/javascript" src="js/scw.js"></script>
    <%

                String userid = connection.Auto_Gen_ID.globalGenId("D-", "d");
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
                <div><a href="#"><img src="image/2.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

                <div class="center-content" style="height: 530px; width: 1100px; overflow: auto;">
                  <form  action="deliverboys" method="post" enctype="multipart/form-data">
                        <table  border="0" cellspacing="10" cellpadding="8"  align="center">
                            <tr>
                                <td>
                                    <a href="DeliverBoysList.jsp"><h1>Deliver Boys Details</h1></a>
                                </td>
                            </tr>

                            <%             String msg = (String) session.getAttribute("MSG");
                                        if (msg != null) {
                            %>
                            <tr>
                                <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="2"><%=msg%></td>
                            </tr>
                            <%
                                            session.removeAttribute("Mess");
                                        } else {
                                            session.setAttribute("Mess", "");
                                        }
                            %>

                            <tr>
                                <td>
                                    <fieldset>
                                        <legend class="tabHeading">Personal Information</legend>
                                        <table cellpadding="5" cellspacing="5">
    <tr>
                                                <td class="text"><span style="color: red;"></span>&nbsp;Deliver Boys&nbsp;Id:</td>
                                                <td> <input type= "text" size="25"  id="txthidden" name="txthidden" value="<%=userid%>"></td>
                                                <td class="text"><span style="color: gray;">*</span> Deliver Boys&nbsp;Name:</td>
                                                <td class="text-1"><input type="text" size="25"  id="uname" name="uname"></td>

                                            </tr>
                                            <tr>
                                                <td class="text">
                                                    Add&nbsp;Profile&nbsp;Image
                                                </td>
                                                <td>
                                                    <input type="file" name="txtImage" id="txtImage"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text"><span style="color: red;">*</span>First&nbsp;Name:</td>
                                                <td><input type="text" size="25"  id="txtname" name="txtname" onblur=" CheckForAlphabets(this)" ></td>
                                                <td class="text"><span style="color: red;">*</span>Last&nbsp;Name&nbsp;:</td>
                                                <td> <input type= text size="25"  id="txtlname" name="txtlname" onblur=" CheckForAlphabets(this)" ></td>
                                            </tr>
                                            <tr>
                                                <td class="text"><span style="color: red;">*</span>
                                                    Gender
                                                </td>
                                                <td class="text">
                                                    <select  id="cmbgender"name="cmbgender" style="width: 180px">
                                                        <option value="Select"> - - - - - - - - - Select- - - - - - - - - </option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                    </select>
                                                </td>
                                                <td class="text"><span style="color: red;">*</span>Date&nbsp;of&nbsp;Birth</td>
                                                <td> <input type= text size="25" name="txtdb"  id="txtdb" readonly onclick="scwShow(this,event)" ></td>
                                            </tr>
                                            <tr>
                                                <td class="text"><span style="color: red;">*</span>Contact&nbsp;Number:</td>
                                                <td> <input type= text size="25"  id="number" name="number" onkeyup="contact(this)" onblur="mob()"></td>
                                                <td class="text"><span style="color: red;">*</span>Email&nbsp;Id:</td>
                                                <td><input type="text" size="25" id="txtemail" name="txtemail"  onblur="valid()"></td>
                                            </tr>
                                            <tr>
                                                <td class="text">Address:</td>
                                                <td><input type= text size="25"  id="txtaddress" name="txtaddress"></td>

                                                <td class="text">City:</td>
                                                <td>
                                                    <select id="cmbcity"   name="cmbcity" style="width: 180px;">
                                                        <option value="Select"> Select </option>
                                                        <option value="Delhi">  Delhi </option>
                                                        <option value="Gurgoan"> Gurgoan </option>
                                                        <option value="Noida"> Noida </option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text">Pin&nbsp;Code:</td>
                                                <td> <input type= text size="25"  id="txtpin" name="txtpin" onkeyup="contact(this)" onblur="pin()"></td>
                                                <td class="text">State:</td>
                                                <td><input type= text size="25"  id="txtstate" name="txtstate"></td>
                                            </tr>
                                            <tr>
                                                <td class="text">Countrt Name:</td>


                                                <td><input type= text size="25"  id="cmbcountry" name="cmbcountry"></td>


                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" colspan="2" >
                                    <input type="submit" value="Submit" onclick="return validate();"/>
                                    <input type= "reset" value="Reset">
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