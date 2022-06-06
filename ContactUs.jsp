
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
            <script type="text/javascript">



                function valid(){

                    if(document.getElementById('uname').value == ""){
                        alert('User Name Field Cannot be Blank Left !!');
                        return false;
                    }

                    if(document.getElementById('txtname').value == ""){
                        alert('First Name Field Cannot be Blank Left !!');
                        return false;
                    }
                    if(document.getElementById('cmbgender').value == ""){
                        alert('Gender Field Cannot be Blank Left !!');
                        return false;
                    }
                    if(document.getElementById('txtdb').value == ""){
                        alert('Date of Birth Field Cannot be Blank Left !!');
                        return false;
                    }

                    if(document.getElementById('number').value == ""){
                        alert('Number Field Cannot be Blank Left !!');
                        return false;
                    }
                    if(document.getElementById('txtemail').value == ""){
                        alert('Email Field Cannot be Blank Left !!');
                        return false;
                    }
                }

                function validatepassword(){

                    var a = document.getElementById('pwd').value;
                    var b = document.getElementById('cpwd').value;
                    if(a != b){
                        alert('Confirm Password Does Not Matched !!');
                        return false;
                    }

                }
            </script>
            <script src="scw.js" type="text/javascript"></script>
    </head>
    <body>
           <div class="wrapper col0">
            <div id="topbar">
                 <div id="slidepanel">
                    <div class="topbox last">
                        <h2>User Login Here</h2>
                        <form id="frm" action="login" method="post">
                            <fieldset style="height: auto;width: 300px;padding: 10px;">
                                <legend>Login</legend>
                                <table align="center" cellpadding="5" cellspacing="5">

                                    <tr>
                                        <td>User Name:</td>
                                        <td><input type="text" id="txtemailid" name="txtemailid" style="font-size: 15px; width: 180px; height: 30px;"></td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td><input type="password" id="txtpass" name="txtpass" style="font-size: 15px; font-weight: bold; height: 30px; width: 180px;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <input type="submit" value="Login" name="btnlogin" id="btnlogin" class="button">
                                        </td>
                                    </tr>
                                </table>

                            </fieldset>
                        </form>
                    </div>
          <div class="topbox last">
                        <h2>NGO Login Here</h2>
                        <form id="frm" action="ngoLogin" method="post">
                            <fieldset style="height: auto;width: 300px;padding: 10px;">
                                <legend>Login</legend>
                                <table align="center" cellpadding="5" cellspacing="5">

                                    <tr>
                                        <td>User Name:</td>
                                        <td><input type="text" id="txtemailid" name="txtemailid" style="font-size: 15px; width: 180px; height: 30px;"></td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td><input type="password" id="txtpass" name="txtpass" style="font-size: 15px; font-weight: bold; height: 30px; width: 180px;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <input type="submit" value="Login" name="btnlogin" id="btnlogin" class="button">
                                        </td>
                                    </tr>
                                </table>

                            </fieldset>
                        </form>
                    </div>

                    <div class="topbox last">
                        <h2>Administration Login Here</h2>
                        <form id="frm" action="adminLogin" method="post">
                            <fieldset style="height: auto;width: 300px;padding: 10px;">
                                <legend>Login</legend>
                                <table align="center" cellpadding="5" cellspacing="5">

                                    <tr>
                                        <td>User Name:</td>
                                        <td><input type="text" id="txtemailid" name="txtemailid" style="font-size: 15px; width: 180px; height: 30px;"></td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td><input type="password" id="txtpass" name="txtpass" style="font-size: 15px; font-weight: bold; height: 30px; width: 180px;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <input type="submit" value="Login" name="btnlogin" id="btnlogin" class="button">
                                        </td>
                                    </tr>
                                </table>

                            </fieldset>
                        </form>
                    </div>

                    <br class="clear" />
                </div>
                <div id="loginpanel">
                    <ul>
                        <li class="left">Log In Here &raquo;</li>
                        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Administration</a><a id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
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
              <table>
            <tr>
                <td class="white-font">
                   <p>
.</p><div class="imgholder"><img src="image/c.png" height="400" width="1000" alt="" /></div>
    <p>
              <tr>
                        <td>
                     Address: 007,B-block Mayapuri,New Delhi (India)
Tel No.: 0120-2322675, 2322858, 2322942, , 2322537, 2322710
Fax:- +91-120-2321529
                        </td>
                    </tr>
         
  </p>
                </td>
            </tr>
        </table>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->

        <!-- ####################################################################################################### -->
        <%@include file="footer.html" %>
        </div>
    </body>
</html>