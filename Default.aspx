<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Home</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <!--Login Form starts -->
    <form id="loginform" runat="server">
        <!--Nav bar-->
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
                    <li><asp:LoginStatus ID="LoginStatus2" runat="server" /></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    <!--Nav bar End-->

    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br/><br/>
                <h1 class="header center white-text">MATDAAN</h1>
                <div class="row center">
                    <h5 class="header col s12 light">An Online Voting Portal for IIITA</h5>
                </div>
                <div class="row center">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass=" black-text indicator text-darken-4"></asp:Label>
                   
                </div>
                <br/><br/>

            </div>
        </div>
        <div class="parallax"><img src="images/flag.jpg" alt="Unsplashed background img 1" /></div>
    </div>

    
        
            <div class="row">
                <div class="col s4 offset-s4 input-field">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="username" type="text" class="validate" runat="server" />
                    <label for="username">Username</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="username" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="col s4 offset-s4 offset-s4 input-field">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="password" type="password" class="validate" runat="server" />
                    <label for="password">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="password" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row center">
                <div class="col s4 offset-s4">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click">LOGIN</asp:LinkButton>
                </div>
            </div>
        </form>
    <!--Login Form ends -->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
</body>
</html>
