
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
        <script type="text/javascript" src="js/register.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/scw.js"></script>
        <script type="text/javascript">
            function confirmpwd(){
                var pwd = document.getElementById('txtPassword').value;
                var cpwd = document.getElementById('txtcPassword').value;
                if(pwd != cpwd){
                    alert('Confirm Password Does not matched !!')
                    return false;
                }
            }
        </script>

        <script type="text/JavaScript" src="js/scw.js"></script>
        <%
                    String msg = null;
                    msg = (String) session.getAttribute("MSG");
                    String id = connection.Auto_Gen_ID.globalGenId("User-", "user");
        %>
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
            function mob()
            {
                var rl=document.getElementById("number").value;
                if(rl.toString().length<10||rl.toString().length>10)
                {
                    alert("Contact No. should be of ten digits");
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
                if(rl.toString().length<6||rl.toString().length>6)
                {
                    alert("Pin Number should be of Six digits");
                    return false;
                }

            }

        </script>
        <script type="text/javascript">
            function validate12(){
                if(document.getElementById('uname').value == "")
                {
                    alert(' Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('pwd').value == "")
                {
                    alert('Password Field Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtImage').value == "")
                {
                    alert('Image Field Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtname').value == "")
                {
                    alert('First Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtlname').value == "")
                {
                    alert('Student  Last Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('cmbgender').value == "")
                {
                    alert('Select Gender... !!');
                    return false;
                }
                if(document.getElementById('txtdb').value == "")
                {
                    alert('Select Date of Birth.... !!');
                    return false;
                }
                if(document.getElementById('number').value == "")
                {
                    alert('Contact Number Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtemail').value == "")
                {
                    alert('Email Field Name Field Cannot be Blank Left !!');
                    return false;
                }
                if(document.getElementById('txtaddress').value == "")
                {
                    alert('Address Name Field Cannot be Blank Left !!');
                    return false;
                }

                if(document.getElementById('txtpin').value == "")
                {
                    alert('Pin Field Name Field Cannot be Blank Left !!');
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
                    <%@include file="header.html" %>
                </div>
                <br class="clear" />
            </div>
        </div>
      <div class="wrapper col2">
            <div id="featured_slide">
                <div class="featured_box"><img src="img/brk.jpg" alt="" />
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


                <table style="width: 100%">
                    <tr style="background-color: white;">

                        <td valign="top">
                            <a href="UserProductList1.jsp?type=BreakFast" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/brk.jpg" height="300px;" width="300px;" alt="" /><h1>Breakfast</h1></a>
                        </td>

                        <td valign="top">
                            <a href="UserProductList1.jsp?type=Lunch" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/l.jpg" height="300px;" width="300px;" alt="" /><h1>Lunch</h1></a>
                        </td>
                        <td valign="top">
                            <a href="UserProductList1.jsp?type=Dinner" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/d.jpg" height="300px;" width="300px;" alt="" /><h1>Dinner</h1></a>
                        </td>
                    </tr>

                              <tr style="background-color: white;">

                        <td valign="top">
                            <a href="UserProductList1.jsp?type=Beverages" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/be.png" height="300px;" width="300px;" alt="" /><h1>Beverages</h1></a>
                        </td>

                        <td valign="top">
                            <a href="UserProductList1.jsp?type=FastFood" style="color: blue; background-color: transparent; text-decoration: none;"><img src="img/f.jpg" height="300px;" width="300px;" alt="" /><h1>Fast Food</h1></a>
                        </td>

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