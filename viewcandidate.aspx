<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewcandidate.aspx.cs" Inherits="viewcandidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - View Candidate</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <!--Nav bar-->
    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo" style="left: -46px; top: 0px">MATDAAN</a>
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
    <br /> <br />

    <div class="container">
        <h4><strong>Candidate Details:</strong></h4>
        <br />
        <div class="row">
                <div class="col s6">
                        <p><b>First Name:     </b>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Last Name:     </b>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Enrolment ID:     </b>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Mobile:     </b>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Email:     </b>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>State:     </b>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>BirthDate:     </b>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </p>
                </div>
                <div class="col s6">
                        <p><b>CGPA:     </b>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Hostel:     </b>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Course:     </b>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </p>
                       <p><b>Year:     </b>
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Section:     </b>
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Gender:     </b>
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p><b>Branch:     </b>
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </p>
                </div>
            </div>
    </div>



    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html>
