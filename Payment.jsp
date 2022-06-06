
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
                    msg = (String) session.getAttribute("MSG1");
                    String userid = (String) session.getAttribute("USER");
                    String total = request.getParameter("TotalPrice");
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
                <form method="post" action="paymentPage">
                    <table align="center" height="150px" cellpadding="4" cellspacing="4">
                           <tr>
                            <td>
                                <img src="images/credit-cards.jpg" height="100" width="100"/>
                            </td>
                            <td>
                                <img src="images/lots-of-credit-cards-3.jpg" height="100" width="100"/>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                Mode Of Payment :
                            </td>
                            <td>
                                <select name="cmbBankName" id="cmbBankName">
                                    <option value="-1">--Select--</option>
                                    <option value="Debit Card">Debit Card</option>
                                    <option value="Credit Card">Credit Card</option>
 <option value="Paytm">Paytm</option>

                                </select>
                            </td>
                        </tr>
                        <%


                                    PreparedStatement pst = null;
                                    Connection con = null;
                                    ResultSet rst = null;
                                    String saleid = null;
                                    try {
                                        con = connection.Connect.makeCon();
                                        String sql = "select SalerId from userpurchase where(UserId='" + userid + "' and status=0)";
                                        pst = con.prepareStatement(sql);
                                        rst = pst.executeQuery();
                                        if (rst.next()) {
                                            saleid = rst.getString(1);
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }



                        %>
                        <tr>
                            <td>
                                Bank :
                            </td>
                            <td>
                                <select name="cmbBankName" id="cmbBankName">
                                    <option value="-1">--Select--</option>
                                    <option value="State Bank Of India">State Bank Of India</option>
                                    <option value="Punjab National Bank">Punjab National Bank</option>
                                    <option value="Bank Of Baroda">Bank Of Baroda</option>
                                    <option value="Allahabad Bank">Allahabad Bank</option>
                                    <option value="Federal Bank">Federal Bank</option>
                                    <option value="Uco Bank">Uco Bank</option>
                                    <option value="HDFC Bank">HDFC Bank</option>
                                    <option value="Andhra Bank">Andhra Bank</option>
                                    <option value="Axis Bank">Axis Bank</option>
                                    <option value="ICICI Bank">ICICI Bank</option>
                                    <option value="Karnatka Bank">Karnataka Bank</option>
                                    <option value="Co Operative Bank">Co Operative Bank</option>
                                    <option value="Union Bank">Union Bank</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price :
                            </td>
                            <td><%=total%>
                                <input type="hidden" name="txtSalesID" id="txtSalesID" value="<%=saleid%>" />
                                <input type="hidden" name="txtUserID" id="txtUserID" value="<%=userid%>" />
                                <input type="hidden" name="txtPrice" id="txtPrice"readonly value="<%=total%>" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                               Account Number :
                            </td>
                            <td>
                                <input type="text" name="txtAccount" id="txtAccount" required="required"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pin Number :
                            </td>
                            <td>
                                <input type="password" name="txtPaassword" id="txtPaassword" required="required"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Address :
                            </td>
                            <td>
                                <textarea rows="5" cols="24" name="txtadd" id="txtadd" required="required"></textarea>
                            </td>
                        </tr>
                   
                        <%
                          String  lname = "rajes";
                                    if (msg != null) {
                        %>
                        <tr>
                            <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="2"><%=msg%></td>
                        </tr>
                        <%
                                        session.removeAttribute("MSG1");
                                    } else {
                                        session.setAttribute("MSG1", "");
                                    }
                        %>
                        <%


                                    PreparedStatement pst1 = null;
                                    Connection con1 = null;
                                    ResultSet rst1 = null;
                           
                                    try {
                                        con1 = connection.Connect.makeCon();
                                        String sql1 = "select status from signup where uname='" + userid + "'";
                                        System.out.println("ksfdfjsd" + sql1);
                                        pst1 = con1.prepareStatement(sql1);
                                        rst1 = pst1.executeQuery();
                                        if (rst1.next()) {
                                           lname = rst1.getString(1);
                                           System.out.println(lname);
                                        }
                                    } catch (Exception ex) {
                                      System.out.println( ex.toString());
                                    }



                        %>

                        
                        <tr>
                            <td></td>
                            <td align="left">
                                <input type="submit" name="btnsubmit" id="btnsubmit" value="Submit" onclick="return validate()"/>
                                <input type="reset" name="btnReset" id="btnReset" value="Reset"/>
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