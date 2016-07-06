<%@ Page Language="C#" AutoEventWireup="true" CodeFile="voting.aspx.cs" Inherits="voting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Voting</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,200,500,600,700' rel='stylesheet' type='text/css' />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style>
        img {
            vertical-align: middle;
        }
        .img-responsive,
        .thumbnail > img,
        .thumbnail a > img,
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
        display: block;
        max-width: 100%;
        height: auto;
        }
        .img-rounded {
            border-radius: 6px;
        }
        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            height: auto;
            padding: 4px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }
        .img-circle {
            border-radius: 50%;
        }
    </style>

</head>
<body>
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
        <asp:Label ID="Label1" runat="server" CssClass=" red-text"></asp:Label>
        <br /> <br />
        <div class="container">
            <div class="row">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="cid" HeaderText="Candidate ID" SortExpression="cid" />
                        <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="vote" OnClick="vote_Click">VOTE</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="SELECT distinct [cid] FROM [selected_candidates] WHERE ([eid] = @eid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="eid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
    <script>
    $(function() {
        $('.material-card > .mc-btn-action').click(function () {
            var card = $(this).parent('.material-card');
            var icon = $(this).children('i');
            icon.addClass('fa-spin-fast');
            if (card.hasClass('mc-active')) {
                card.removeClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-arrow-left')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-bars');
                }, 800);
            } else {
                card.addClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-bars')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-arrow-left');
                }, 800);
            }
        });
    });
</script>
</body>
</html>
