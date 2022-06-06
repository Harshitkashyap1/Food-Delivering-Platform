
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
        <script type="text/javascript">
            function contact(i)
            {
                if(i.value.length>0)
                {
                    i.value = i.value.replace(/[^\d]+/g, '');

                }
            }
            function CheckForAlphabets(elem)
            {
                var alphaExp = /^[a-z A-Z]+$/;
                if(elem.value.match(alphaExp)){
                    return true;
                }else{
                    alert("give alphabatic name ");
                    return false;
                }
            }
            function mob()
            {
                var rl=document.getElementById("number").value;
                if(rl.toString().length<10)
                {
                    alert("Contact No. should be of ten digits");
                    return false;
                }

            }
            function mob1()
            {
                var rl=document.getElementById("pwd").value;
                if(rl.toString().length<16||rl.toString().length>16)
                {
                    alert("Password No. should be of Sixten digits");
                    return false;
                }

            }
        </script>
        <script type="text/javascript">
            function valid() {
                //alert('calling');
                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                // var address = document.forms[form_id].elements[txtemail_id].value;
                var address = document.getElementById('txtemail').value;
                if(reg.test(address) == false) {
                    alert('Invalid Email Address');
                    return false;
                }
            }
        </script>
        <script type="text/javascript">

            function pin()
            {
                var rl=document.getElementById("txtpwd").value;
                if(rl.toString().length<6)
                {
                    alert("Pin Number should be of Six digits");
                    return false;
                }

            }

        </script>
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
                <div><a href="#"><img src="image/3.jpg" height="300px;" width="960px;" alt="" /></a>

                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">

              <form  action="changePassword" method="post">
                        <table>
                            <%
                                        if (msg != null) {
                            %>
                            <tr>
                                <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="2"><%=msg%></td>
                            </tr>
                            <%
                                            session.removeAttribute("MSG");
                                        } else {
                                            session.setAttribute("MSG", "");
                                        }
                            %>

                            <tr>
                                <td>
                                    <fieldset class="fieldset">
                                        <legend class="legend">Change Password </legend>
                                        <table cellpadding="10" cellspacing="10">

                                            <tr>
                                                <td class="text"><span style="color: gray;">*</span> Old&nbsp;Password:</td>
                                                <td class="text-1"><input type="password" size="25"  id="txtopass" name="txtopass"></td>
                                            </tr>
                                                    <tr>
                                                <td class="text"><span style="color: red;">*</span>New&nbsp;Password&nbsp;&nbsp;:
                                                    :</td>
                                                <td> <input type= "password" size="25"  id="txtnpass" name="txtnpass"/></td>


                                            </tr>
                                            <tr>
                                                <td class="text"><span style="color: gray;">*</span> Confirm&nbsp;Password:</td>
                                                <td class="text-1"><input type="password" size="25"  id="txtcnpass" name="txtcnpass"></td>
                                                </tr>

                                        </table>
                                    </fieldset>
                                </td>
                            </tr>



                            <tr>
                                <td align="center" colspan="2" >
                                    <input type="submit" value="Submit" onclick="return validate12();"/>
                                    <input type= "reset" value="Reset"/>
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