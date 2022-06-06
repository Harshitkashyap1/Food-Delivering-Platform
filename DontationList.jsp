<%
         response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
         response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
         response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
         response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
         String username = null;
         username = (String) session.getAttribute("NGO");
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
                    String userid = (String) session.getAttribute("NGO");

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
                    <%@include file="ngo.html" %>
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

                        <table width="100%">
                            <tr class="white-font">
    <td width="8%">
                                    &nbsp;&nbsp;Donar&nbsp;Name&nbsp;&nbsp;
                                </td>
                                <td width="8%">
                                    &nbsp;&nbsp;NGO&nbsp;ID&nbsp;&nbsp;
                                </td>
                                <td width="10%">
                                    &nbsp;&nbsp;NGO&nbsp;Name&nbsp;&nbsp;
                                </td>
                                <td width="12%">
                                    &nbsp;&nbsp;Donation&nbsp;Amount&nbsp;&nbsp;
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
                                            String query = "select * from payment where a3 ='" + userid + "'";

                                            pst = con.prepareStatement(query);
                                            rst = pst.executeQuery();
                                            while (rst.next()) {

                            %>
                            <tr bgcolor="wheat">
                                <td><%= rst.getString(1)%></td>
                                <td><%= rst.getString(2)%></td>
                                <td><%= rst.getString(3)%></td>
                                <td><%= rst.getString(11)%></td>
                                <td><%= rst.getString(12)%></td>
                            </tr>
                            <%

                                            }
                                        } catch (Exception e) {
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
<%
            } else {


                response.sendRedirect("logout.jsp");
            }
%>