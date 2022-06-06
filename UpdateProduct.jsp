
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
            <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
        </script>
        <script type="text/javascript" src="js/register.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/scw.js"></script>
            <script type="text/javascript">
            function fetchLevel_Str()
            {

                var xmlHttpRequest=init();
                function init()
                {
                    if (window.XMLHttpRequest){
                        return new XMLHttpRequest();
                    }
                    else if (window.ActiveXObject){
                        return new ActiveXObject("Microsoft.XMLHTTP");
                    }

                }

                var sess = document.getElementById("cmbPID").value;

                //alert(sess);
                var d=new Date();
                var t=d.getTime();
                xmlHttpRequest.open("post", "showProduct?sess="+escape(sess)+"&timestamp="+t, true);
                xmlHttpRequest.onreadystatechange=processRequest;
                xmlHttpRequest.send(null);
                function processRequest()
                {

                    if(xmlHttpRequest.readyState==4)
                    {

                        if(xmlHttpRequest.status==200)
                        {

                            processResponse();
                        }
                    }
                }

                function processResponse()
                {

                    var xmlMessage=xmlHttpRequest.responseXML;
                    var res=xmlMessage.getElementsByTagName("valid")[0].firstChild.nodeValue;
                    //alert('Result: '+res)
                    var temp = new Array();
                    temp = res.split(":~");
                    document.getElementById('txtPName').value = temp[0];
                    document.getElementById('txtQuality').value = temp[1];
                    document.getElementById('txtQuantity').value = temp[2];
                    document.getElementById('txtPPrice').value = temp[3];
                    document.getElementById('MfgDate').value = temp[4];
                }
            }

        </script>
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
    <div class="wrapper col2">
            <div id="featured_slide">
                <div class="featured_box"><img src="img/b.jpeg" alt="" />
                    <div class="floater">
                        <h2>1. RESTRO KART</h2>
                        <p>
         Our team gathers information from every restaurant on a regular basis to ensure our data is fresh. Our vast community of food lovers share their reviews and photos, so you have all that you need to make an informed choice.  </div>

                </div>
                <div class="featured_box"><img src="img/be.png" alt="" />
                    <div class="floater">
                        <h2>2. RESTRO KART</h2>
                        <p>

A food web (or food cycle) is a natural interconnection of food chains and a graphical representation (usually an image) of what-eats-what in an ecological community. Another name for food web is consumer-resource system.
                    </div>
                 </div>
                    <div class="featured_box"><img src="img/d.jpg" alt="" />
                    <div class="floater">
                        <h2>3. RESTRO KART</h2>
                        <p>
                Business-to-business buying and selling;

                    </div>
                         </div>
                <div class="featured_box"><img src="img/f.jpg" alt="" />
                    <div class="floater">
                        <h2>4. RESTRO KART</h2>
                        <p>
                 Starting with information for over 1 million restaurants (and counting) globally, we're making dining smoother and more enjoyable with services like online ordering and table reservations.  </div>
                </div>
                <div class="featured_box"><img src="img/l.jpg" alt="" />
                    <div class="floater">
                        <h2>5. RESTRO KART</h2>
                        <p>
       With dedicated engagement and management tools, we're enabling restaurants to spend more time focusing on food itself, which translates directly to better dining experiences.
                    </div>
            </div>
        </div>
     </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">
                 <form method="post" action="updateProduct">
                     <tr>
                         <td>
                             <a href="AdminProductList.jsp"><h3>Product Details</h3></a>
                         </td>
                     </tr>
                      <table cellpadding="3" cellspacing="3" align="center" width="80%" class="formTable">

                            <%
                                        String pid = request.getParameter("ProductId");

                                        PreparedStatement pst = null;
                                        Connection con = null;
                                        ResultSet rst = null;

                                        String prodName = null;
                                        String sizeWeight = null;
                                        String price = null;
                                        String mfgDate = null;
                                        String expDate = null;
                                        String qty = null;


                                        try {
                                            con = connection.Connect.makeCon();
                                            String query = "select ProductName,SizeWeight,Price,MFGDate,Productqty from Product where ProductID='" + pid + "'";
                                            pst = con.prepareStatement(query);
                                            rst = pst.executeQuery();
                                            if (rst.next()) {

                                                prodName = rst.getString(1);
                                                sizeWeight = rst.getString(2);
                                                price = rst.getString(3);
                                                mfgDate = rst.getString(4);

                                                qty = rst.getString(5);

                            %>

                            <tr>
                                <td class="candidate">
                                    Product ID :
                                </td>
                                <td>
                                    <input type="text" name="txtPID" id="txtPID" size="33"readonly value="<%=pid%>"/>
                                </td>
                                <td class="candidate">
                                    Product Name :
                                </td>
                                <td>
                                    <input type="text" name="txtPName" id="txtPName" size="33" value="<%=prodName%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="candidate">
                                    Size :
                                </td>
                                <td>
                                    <input type="text" name="txtSizeWeight" id="txtSizeWeight" size="33" value="<%=sizeWeight%>"/>
                                </td>
                                <td class="candidate">
                                    Product Quantity :
                                </td>
                                <td>
                                    <input type="text" name="txtQuantity" id="txtQuantity" size="33" value="<%=qty%>"/>
                                </td>
                            </tr>
                            <tr>

                                <td class="candidate">
                                    Product Price :
                                </td>
                                <td>
                                    <input type="text" name="txtPPrice" id="txtPPrice" size="33" value="<%=price%>"/>
                                </td>
                                <td class="candidate">
                                   Restaurants&nbsp;Name :
                                </td>
                                <td>
                                    <input type="text" name="MfgDate" id="MfgDate" size="33" readonly onclick="scwShow(this,event);" value="<%=mfgDate%>"/>
                                </td>
                            </tr>

                            <%                                                  }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                            %>
                            <tr>
                                <td colspan="4" align="center">
                                    <input type="submit" name="btnSubmit" id="btnSubmit" value="Update Product" id="Button"/>
                                    <input type="reset" name="btnReset" id="btnReset" value="Reset" id="Button"/>

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