 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="addElections.aspx.cs" Inherits="addElections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Add Elections</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <!--Nav bar-->
    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">MATDAAN</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
            </ul>

            <ul id="nav-mobile" class="side-nav">
                <li><a href="addElections.aspx">ADD ELECTIONS</a></li>
                <li><a href="editElections.aspx">EDIT ELECTIONS</a></li>
                <li><a href="addCandidates.aspx">ADD CANDIDATES</a></li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
    </nav>
    <!--Nav bar End-->
    <asp:Label ID="Label1" runat="server" CssClass="red-text"></asp:Label>
    <br /> <br />
    <div class="container">
        <br />
        <h4><strong>ADD YOUR ELECTION HERE:</strong></h4>
        <br />
        <form runat="server" id="form1" class="col s12">
            <div class="row">
                <div class="col s6 input-field">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="title" type="text" class="validate" runat="server" />
                    <label for="title">Title</label>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="description" type="text" class="validate" runat="server"/>
                    <label for="description">Description</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="startdate" runat="server" />
                    <label for="startdate">StartDate</label>
                </div>
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="time"  id="starttime" runat="server"/>
                    <label for="starttime"></label>
                </div>
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="enddate" runat="server" />
                    <label for="enddate">EndDate</label>
                </div>
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="time"  id="endtime" runat="server" />
                    <label for="endtime"></label>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <h6><strong>Select Course:</strong></h6>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Btech</asp:ListItem>
                        <asp:ListItem Value="1">Mtech</asp:ListItem>
                        <asp:ListItem Value="1">Phd</asp:ListItem>
                        <asp:ListItem Value="1">MBA</asp:ListItem>
                        <asp:ListItem Value="1">Btech + Mtech</asp:ListItem>
                        <asp:ListItem Value="1">Btech + MBA</asp:ListItem>
                        <asp:ListItem Value="1">Mtech + Phd</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                <h6><strong>Select Year:</strong></h6>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">1 year</asp:ListItem>
                        <asp:ListItem Value="1">2 year</asp:ListItem>
                        <asp:ListItem Value="1">3 year</asp:ListItem>
                        <asp:ListItem Value="1">4 year</asp:ListItem>
                        <asp:ListItem Value="1">5 year</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                <h6><strong>Select Branch:</strong></h6>
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">IT</asp:ListItem>
                        <asp:ListItem Value="1">ECE</asp:ListItem>
                        <asp:ListItem Value="1">BME</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">person_add</i>Add ELection</asp:LinkButton>
            </div>   
        </form>
    </div>
    

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html>
