<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="images_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style type="text/css">
        
        #RadioButtonList1{
            display:inline;
        }
        label{
            margin-right: 40px;
        }
    </style>
</head>
<body>

    <!--Nav bar-->
    <form id="form1" runat="server">
    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">MATDAAN</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Contact.aspx">CONTACT</a></li>
                <li style="text-transform:uppercase;">
                    <asp:LoginName ID="LoginName1" runat="server" />
                </li>
                <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus1" runat="server"/>
                </li>
            </ul>

            <ul id="nav-mobile" class="side-nav">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Contact.aspx">CONTACT</a></li>
                <li>
                        <a href="#" style="text-transform:uppercase;"><asp:LoginName ID="LoginName2" runat="server" /></a>
                    </li>
                <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/>
                </li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
    </nav>
    <!--Nav bar End-->


    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br/><br/>
                <h1 class="header center white-text">REGISTER HERE</h1>
                <br/><br/>
            </div>
        </div>
        <div class="parallax"><img src="images/flag.jpg" alt="Unsplashed background img 1" /></div>
    </div>


    <div class="container">
        
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="firstname" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="firstname">First Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="firstname" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="lastname" type="text" class="validate" runat="server" maxlength="20"/>
                    <label for="lastname">Last Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="lastname" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">perm_identity</i>
                    <input id="rollnum" type="text" class="validate" runat="server" maxlength="15" />
                    <label for="rollnum">Roll number</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="rollnum" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">location_on</i>
                    <input id="state" type="text" class="validate" runat="server" maxlength="30"/>
                    <label for="state">State</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="state" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">phone</i>
                    <input id="mobile" type="text" class="validate" runat="server" maxlength="10" pattern="^[789]\d{9}$" title="mob"/>
                    <label for="mobile">Mobile</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="mobile" CssClass="red-text"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not valid mobile number!" ValidationExpression="^[789]\d{9}$" ControlToValidate="mobile" CssClass="red-text"></asp:RegularExpressionValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">email</i>
                    <input id="email" type="email" class="validate" runat="server" />
                    <label for="email">Email</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="email" CssClass="red-text"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" CssClass="red-text"></asp:RegularExpressionValidator>
                </div>              
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="birthdate" runat="server"/>
                    <label for="birthdate">Birthdate</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="birthdate" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">grade</i>
                    <input id="pointer" type="text" class="validate" runat="server" maxlength="5"/>
                    <label for="pointer">CGPA</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Not valid CGPA!" ControlToValidate="pointer" ValidationExpression="^\d+\.\d{0,2}$" CssClass="red-text"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="pointer" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="BH-1" Value="bh1"></asp:ListItem>
                        <asp:ListItem Text="BH-2" Value="bh2"></asp:ListItem>
                        <asp:ListItem Text="BH-3" Value="bh3"></asp:ListItem>
                        <asp:ListItem Text="BH-4" Value="bh4"></asp:ListItem>
                        <asp:ListItem Text="GH-1" Value="gh1"></asp:ListItem>
                        <asp:ListItem Text="GH-2" Value="gh2"></asp:ListItem>
                        <asp:ListItem Text="GH-3" Value="gh3"></asp:ListItem>
                        <asp:ListItem Text="RS Apartments" Value="rs"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Hostel</label>
                </div>
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="Btech" Value="btech"></asp:ListItem>
                        <asp:ListItem Text="Mtech" Value="mtech"></asp:ListItem>
                        <asp:ListItem Text="Phd" Value="phd"></asp:ListItem>
                        <asp:ListItem Text="MBA" Value="mba"></asp:ListItem>
                        <asp:ListItem Text="Btech + Mtech" Value="btechmtech"></asp:ListItem>                       
                        <asp:ListItem Text="Btech + MBA" Value="btechmba"></asp:ListItem>
                        <asp:ListItem Text="Mtech + Phd" Value="btechphd"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Course</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Text="1st Year" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2nd Year" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3rd Year" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4th Year" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5th Year" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Year</label>
                </div>
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem Text="A" Value="A"></asp:ListItem>
                        <asp:ListItem Text="B" Value="B"></asp:ListItem>
                        <asp:ListItem Text="C" Value="C"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Section</label>
                </div>  
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                        <asp:ListItem Text="ECE" Value="ECE"></asp:ListItem>
                        <asp:ListItem Text="BME" Value="BME"></asp:ListItem>
                    </asp:DropDownList>
                    <label>Branch</label>
                </div>             
                <div class="row center input-field col s6">
 
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="m" Selected="True"><i class="material-icons left">wc</i>Male</asp:ListItem>
                            <asp:ListItem Value="f"><i class="material-icons left">wc</i>Female</asp:ListItem>
                        </asp:RadioButtonList>  
                </div>
            </div>
            <div class="row center">
                <div class="col s4 offset-s4 input-field">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="pass" type="password" class="validate" runat="server"/>
                    <label for="pass">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password is required." ControlToValidate="pass" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">person_add</i>Submit</asp:LinkButton>
            </div>  
        </div>       
         </form>
   
    <!--Form End-->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
</body>
</html>
