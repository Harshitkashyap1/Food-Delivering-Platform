
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
                <form  action="sign_Up" method="post" enctype="multipart/form-data">
                    <table  border="0" cellspacing="20" cellpadding="8" style align="center">
                        <tr>
                            <td>
                                <fieldset>
                                    <legend>Login Information</legend>
                                    <table cellpadding="5" cellspacing="5">
                                        <tr>
                                            <td class="text"><span style="color: red;"></span>User Id:</td>
                                            <td> <input type= "text" size="25"  id="txthidden" name="txthidden" value="<%=id%>"></td>
                                            <td class="text"><span style="color: gray;">*</span> User Name:</td>
                                            <td class="text-1"><input type="text" size="25"  id="uname" name="uname" required="required"></td>

                                        </tr>
                                        <tr>
                                            <td class="text">Password :</td>
                                            <td> <input type= "password" size="25"  id="pwd" name="pwd" required="required"></td>
                                            <td class="text">Confirm Password :</td>
                                            <td> <input type= "password" size="25"  id="cpwd" name="cpwd" required="required"></td>

                                        </tr>
                                    </table>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <fieldset>
                                    <legend>Personal Information</legend>
                                    <table cellpadding="5" cellspacing="5">
                                        <tr>
                                            <td class="text">
                                                Add Image
                                            </td>
                                            <td>
                                                <input type="file" name="txtImage" id="txtImage" required="required"/>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="text">First Name:</td>
                                            <td><input type="text" size="25"  id="txtname" name="txtname" required="required" ></td>
                                            <td class="text">Last Name :</td>
                                            <td> <input type= text size="25"  id="txtlname" name="txtlname" required="required" ></td>
                                        </tr>
                                        <tr>
                                            <td class="text">
                                                Gender
                                            </td>
                                            <td class="text">
                                                <select  id="cmbgender" name="cmbgender" style="width: 180px" required="required">
                                                    <option value="Select"> - - - - - - - - - Select- - - - - - - - - </option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select>
                                            </td>
                                            <td class="text">Date of Birth</td>
                                            <td> <input type= text size="25" name="txtdb"  id="txtdb" required="required" readonly onclick="scwShow(this,event)" ></td>
                                        </tr>
                                        <tr>
                                            <td class="text">Contact Number:</td>
                                            <td> <input type= text size="25"  id="number" name="number" required="required" onkeyup="contact(this)" onblur="mob()"></td>
                                            <td class="text">Email Id:</td>
                                            <td><input type="text" size="25" id="txtemail" name="txtemail"  required="required" onblur="valid()"></td>
                                        </tr>
                                        <tr>
                                            <td class="text">Address:</td>
                                            <td><input type= text size="25"  id="txtaddress" name="txtaddress" required="required"></td>

                                            <td class="text">City:</td>
                                            <td>
                                                <input type= text size="25"  id="cmbcity" name="cmbcity" required="required">

                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="text">Pin Code:</td>
                                            <td> <input type= text size="25"  id="txtpin" name="txtpin" onkeyup="contact(this)" onblur="pin()" required="required"></td>
                                            <td class="text">State:</td>
                                            <td>

                                                <select name="txtstate" id="txtstate" required="required">
                                                    <option value="">Select State</option>
                                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>

                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>

                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadeep">Lakshadeep</option>
                                                    <option value="Madya Pradesh">Madya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>

                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Orissa">Orissa</option>
                                                    <option value="Pondicherry">Pondicherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>

                                                    <option value="Uttaranchal">Uttaranchal</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text">Country:</td>
                                            <td>
                                                <select  id="cmbcountry"name="cmbcountry" style="width:180px" required="required">
                                                    <option value="Select">- - - - Select - - - - </option>

                                                    <option value="AFG">Afghanistan</option>
                                                    <option value="ALA">Åland Islands</option>
                                                    <option value="ALB">Albania</option>
                                                    <option value="DZA">Algeria</option>
                                                    <option value="ASM">American Samoa</option>
                                                    <option value="AND">Andorra</option>
                                                    <option value="AGO">Angola</option>
                                                    <option value="AIA">Anguilla</option>
                                                    <option value="ATA">Antarctica</option>
                                                    <option value="ATG">Antigua and Barbuda</option>
                                                    <option value="ARG">Argentina</option>
                                                    <option value="ARM">Armenia</option>
                                                    <option value="ABW">Aruba</option>
                                                    <option value="AUS">Australia</option>
                                                    <option value="AUT">Austria</option>
                                                    <option value="AZE">Azerbaijan</option>
                                                    <option value="BHS">Bahamas</option>
                                                    <option value="BHR">Bahrain</option>
                                                    <option value="BGD">Bangladesh</option>
                                                    <option value="BRB">Barbados</option>
                                                    <option value="BLR">Belarus</option>
                                                    <option value="BEL">Belgium</option>
                                                    <option value="BLZ">Belize</option>
                                                    <option value="BEN">Benin</option>
                                                    <option value="BMU">Bermuda</option>
                                                    <option value="BTN">Bhutan</option>
                                                    <option value="BOL">Bolivia, Plurinational State of</option>
                                                    <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                                                    <option value="BIH">Bosnia and Herzegovina</option>
                                                    <option value="BWA">Botswana</option>
                                                    <option value="BVT">Bouvet Island</option>
                                                    <option value="BRA">Brazil</option>
                                                    <option value="IOT">British Indian Ocean Territory</option>
                                                    <option value="BRN">Brunei Darussalam</option>
                                                    <option value="BGR">Bulgaria</option>
                                                    <option value="BFA">Burkina Faso</option>
                                                    <option value="BDI">Burundi</option>
                                                    <option value="KHM">Cambodia</option>
                                                    <option value="CMR">Cameroon</option>
                                                    <option value="CAN">Canada</option>
                                                    <option value="CPV">Cape Verde</option>
                                                    <option value="CYM">Cayman Islands</option>
                                                    <option value="CAF">Central African Republic</option>
                                                    <option value="TCD">Chad</option>
                                                    <option value="CHL">Chile</option>
                                                    <option value="CHN">China</option>
                                                    <option value="CXR">Christmas Island</option>
                                                    <option value="CCK">Cocos (Keeling) Islands</option>
                                                    <option value="COL">Colombia</option>
                                                    <option value="COM">Comoros</option>
                                                    <option value="COG">Congo</option>
                                                    <option value="COD">Congo, the Democratic Republic of the</option>
                                                    <option value="COK">Cook Islands</option>
                                                    <option value="CRI">Costa Rica</option>
                                                    <option value="CIV">Côte d'Ivoire</option>
                                                    <option value="HRV">Croatia</option>
                                                    <option value="CUB">Cuba</option>
                                                    <option value="CUW">Curaçao</option>
                                                    <option value="CYP">Cyprus</option>
                                                    <option value="CZE">Czech Republic</option>
                                                    <option value="DNK">Denmark</option>
                                                    <option value="DJI">Djibouti</option>
                                                    <option value="DMA">Dominica</option>
                                                    <option value="DOM">Dominican Republic</option>
                                                    <option value="ECU">Ecuador</option>
                                                    <option value="EGY">Egypt</option>
                                                    <option value="SLV">El Salvador</option>
                                                    <option value="GNQ">Equatorial Guinea</option>
                                                    <option value="ERI">Eritrea</option>
                                                    <option value="EST">Estonia</option>
                                                    <option value="ETH">Ethiopia</option>
                                                    <option value="FLK">Falkland Islands (Malvinas)</option>
                                                    <option value="FRO">Faroe Islands</option>
                                                    <option value="FJI">Fiji</option>
                                                    <option value="FIN">Finland</option>
                                                    <option value="FRA">France</option>
                                                    <option value="GUF">French Guiana</option>
                                                    <option value="PYF">French Polynesia</option>
                                                    <option value="ATF">French Southern Territories</option>
                                                    <option value="GAB">Gabon</option>
                                                    <option value="GMB">Gambia</option>
                                                    <option value="GEO">Georgia</option>
                                                    <option value="DEU">Germany</option>
                                                    <option value="GHA">Ghana</option>
                                                    <option value="GIB">Gibraltar</option>
                                                    <option value="GRC">Greece</option>
                                                    <option value="GRL">Greenland</option>
                                                    <option value="GRD">Grenada</option>
                                                    <option value="GLP">Guadeloupe</option>
                                                    <option value="GUM">Guam</option>
                                                    <option value="GTM">Guatemala</option>
                                                    <option value="GGY">Guernsey</option>
                                                    <option value="GIN">Guinea</option>
                                                    <option value="GNB">Guinea-Bissau</option>
                                                    <option value="GUY">Guyana</option>
                                                    <option value="HTI">Haiti</option>
                                                    <option value="HMD">Heard Island and McDonald Islands</option>
                                                    <option value="VAT">Holy See (Vatican City State)</option>
                                                    <option value="HND">Honduras</option>
                                                    <option value="HKG">Hong Kong</option>
                                                    <option value="HUN">Hungary</option>
                                                    <option value="ISL">Iceland</option>
                                                    <option value="IND">India</option>
                                                    <option value="IDN">Indonesia</option>
                                                    <option value="IRN">Iran, Islamic Republic of</option>
                                                    <option value="IRQ">Iraq</option>
                                                    <option value="IRL">Ireland</option>
                                                    <option value="IMN">Isle of Man</option>
                                                    <option value="ISR">Israel</option>
                                                    <option value="ITA">Italy</option>
                                                    <option value="JAM">Jamaica</option>
                                                    <option value="JPN">Japan</option>
                                                    <option value="JEY">Jersey</option>
                                                    <option value="JOR">Jordan</option>
                                                    <option value="KAZ">Kazakhstan</option>
                                                    <option value="KEN">Kenya</option>
                                                    <option value="KIR">Kiribati</option>
                                                    <option value="PRK">Korea, Democratic People's Republic of</option>
                                                    <option value="KOR">Korea, Republic of</option>
                                                    <option value="KWT">Kuwait</option>
                                                    <option value="KGZ">Kyrgyzstan</option>
                                                    <option value="LAO">Lao People's Democratic Republic</option>
                                                    <option value="LVA">Latvia</option>
                                                    <option value="LBN">Lebanon</option>
                                                    <option value="LSO">Lesotho</option>
                                                    <option value="LBR">Liberia</option>
                                                    <option value="LBY">Libya</option>
                                                    <option value="LIE">Liechtenstein</option>
                                                    <option value="LTU">Lithuania</option>
                                                    <option value="LUX">Luxembourg</option>
                                                    <option value="MAC">Macao</option>
                                                    <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
                                                    <option value="MDG">Madagascar</option>
                                                    <option value="MWI">Malawi</option>
                                                    <option value="MYS">Malaysia</option>
                                                    <option value="MDV">Maldives</option>
                                                    <option value="MLI">Mali</option>
                                                    <option value="MLT">Malta</option>
                                                    <option value="MHL">Marshall Islands</option>
                                                    <option value="MTQ">Martinique</option>
                                                    <option value="MRT">Mauritania</option>
                                                    <option value="MUS">Mauritius</option>
                                                    <option value="MYT">Mayotte</option>
                                                    <option value="MEX">Mexico</option>
                                                    <option value="FSM">Micronesia, Federated States of</option>
                                                    <option value="MDA">Moldova, Republic of</option>
                                                    <option value="MCO">Monaco</option>
                                                    <option value="MNG">Mongolia</option>
                                                    <option value="MNE">Montenegro</option>
                                                    <option value="MSR">Montserrat</option>
                                                    <option value="MAR">Morocco</option>
                                                    <option value="MOZ">Mozambique</option>
                                                    <option value="MMR">Myanmar</option>
                                                    <option value="NAM">Namibia</option>
                                                    <option value="NRU">Nauru</option>
                                                    <option value="NPL">Nepal</option>
                                                    <option value="NLD">Netherlands</option>
                                                    <option value="NCL">New Caledonia</option>
                                                    <option value="NZL">New Zealand</option>
                                                    <option value="NIC">Nicaragua</option>
                                                    <option value="NER">Niger</option>
                                                    <option value="NGA">Nigeria</option>
                                                    <option value="NIU">Niue</option>
                                                    <option value="NFK">Norfolk Island</option>
                                                    <option value="MNP">Northern Mariana Islands</option>
                                                    <option value="NOR">Norway</option>
                                                    <option value="OMN">Oman</option>
                                                    <option value="PAK">Pakistan</option>
                                                    <option value="PLW">Palau</option>
                                                    <option value="PSE">Palestinian Territory, Occupied</option>
                                                    <option value="PAN">Panama</option>
                                                    <option value="PNG">Papua New Guinea</option>
                                                    <option value="PRY">Paraguay</option>
                                                    <option value="PER">Peru</option>
                                                    <option value="PHL">Philippines</option>
                                                    <option value="PCN">Pitcairn</option>
                                                    <option value="POL">Poland</option>
                                                    <option value="PRT">Portugal</option>
                                                    <option value="PRI">Puerto Rico</option>
                                                    <option value="QAT">Qatar</option>
                                                    <option value="REU">Réunion</option>
                                                    <option value="ROU">Romania</option>
                                                    <option value="RUS">Russian Federation</option>
                                                    <option value="RWA">Rwanda</option>
                                                    <option value="BLM">Saint Barthélemy</option>
                                                    <option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
                                                    <option value="KNA">Saint Kitts and Nevis</option>
                                                    <option value="LCA">Saint Lucia</option>
                                                    <option value="MAF">Saint Martin (French part)</option>
                                                    <option value="SPM">Saint Pierre and Miquelon</option>
                                                    <option value="VCT">Saint Vincent and the Grenadines</option>
                                                    <option value="WSM">Samoa</option>
                                                    <option value="SMR">San Marino</option>
                                                    <option value="STP">Sao Tome and Principe</option>
                                                    <option value="SAU">Saudi Arabia</option>
                                                    <option value="SEN">Senegal</option>
                                                    <option value="SRB">Serbia</option>
                                                    <option value="SYC">Seychelles</option>
                                                    <option value="SLE">Sierra Leone</option>
                                                    <option value="SGP">Singapore</option>
                                                    <option value="SXM">Sint Maarten (Dutch part)</option>
                                                    <option value="SVK">Slovakia</option>
                                                    <option value="SVN">Slovenia</option>
                                                    <option value="SLB">Solomon Islands</option>
                                                    <option value="SOM">Somalia</option>
                                                    <option value="ZAF">South Africa</option>
                                                    <option value="SGS">South Georgia and the South Sandwich Islands</option>
                                                    <option value="SSD">South Sudan</option>
                                                    <option value="ESP">Spain</option>
                                                    <option value="LKA">Sri Lanka</option>
                                                    <option value="SDN">Sudan</option>
                                                    <option value="SUR">Suriname</option>
                                                    <option value="SJM">Svalbard and Jan Mayen</option>
                                                    <option value="SWZ">Swaziland</option>
                                                    <option value="SWE">Sweden</option>
                                                    <option value="CHE">Switzerland</option>
                                                    <option value="SYR">Syrian Arab Republic</option>
                                                    <option value="TWN">Taiwan, Province of China</option>
                                                    <option value="TJK">Tajikistan</option>
                                                    <option value="TZA">Tanzania, United Republic of</option>
                                                    <option value="THA">Thailand</option>
                                                    <option value="TLS">Timor-Leste</option>
                                                    <option value="TGO">Togo</option>
                                                    <option value="TKL">Tokelau</option>
                                                    <option value="TON">Tonga</option>
                                                    <option value="TTO">Trinidad and Tobago</option>
                                                    <option value="TUN">Tunisia</option>
                                                    <option value="TUR">Turkey</option>
                                                    <option value="TKM">Turkmenistan</option>
                                                    <option value="TCA">Turks and Caicos Islands</option>
                                                    <option value="TUV">Tuvalu</option>
                                                    <option value="UGA">Uganda</option>
                                                    <option value="UKR">Ukraine</option>
                                                    <option value="ARE">United Arab Emirates</option>
                                                    <option value="GBR">United Kingdom</option>
                                                    <option value="USA">United States</option>
                                                    <option value="UMI">United States Minor Outlying Islands</option>
                                                    <option value="URY">Uruguay</option>
                                                    <option value="UZB">Uzbekistan</option>
                                                    <option value="VUT">Vanuatu</option>
                                                    <option value="VEN">Venezuela, Bolivarian Republic of</option>
                                                    <option value="VNM">Viet Nam</option>
                                                    <option value="VGB">Virgin Islands, British</option>
                                                    <option value="VIR">Virgin Islands, U.S.</option>
                                                    <option value="WLF">Wallis and Futuna</option>
                                                    <option value="ESH">Western Sahara</option>
                                                    <option value="YEM">Yemen</option>
                                                    <option value="ZMB">Zambia</option>
                                                    <option value="ZWE">Zimbabwe</option>
                                                </select>

                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </td>
                        </tr>
                        <tr>

                        </tr>
                        <tr>
                            <td align="center" colspan="2" >
                                <input type="submit" value="Submit">
                                <input type= "reset" value="Reset">
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