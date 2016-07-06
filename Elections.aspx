<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Elections.aspx.cs" Inherits="Elections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Elections</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,200,500,600,700' rel='stylesheet' type='text/css' />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
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
    <!--Nav bar-->
    <form runat="server">
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
        <asp:Label ID="Label1" runat="server" CssClass=" red-text"></asp:Label>
        <br /> <br />
        
    <div class="container">
        <div class="row">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                    <asp:BoundField DataField="starttime" HeaderText="Start" SortExpression="starttime" />
                    <asp:BoundField DataField="endtime" HeaderText="End" SortExpression="endtime" />
                    <asp:BoundField DataField="descriptionelection" HeaderText="Description" SortExpression="descriptionelection" />
                    <asp:TemplateField HeaderText="Apply">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="apply" OnClick="apply_Click">Apply</asp:LinkButton>    
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vote">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="vote" OnClick="vote_Click">Vote</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Stats">
                        <ItemTemplate>                                                     
                            <asp:LinkButton runat="server" ID="showresults" OnClick="result_Click">Stats</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [elections]"></asp:SqlDataSource>
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
