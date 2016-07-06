<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Edit Elections</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
</head>
<body>
    <form runat="server">
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
   
        <div class="container">
            <h3>STATS:</h3>
            <br />
            <h4>Results:</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="candidate" HeaderText="Candidates" SortExpression="candidate" />
                    <asp:BoundField DataField="no_of_voters" HeaderText="Total Number of Votes" ReadOnly="True" SortExpression="no_of_voters" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="SELECT candidate, COUNT(voter) AS no_of_voters FROM votes WHERE ([eid] = @eid) GROUP BY candidate ORDER BY no_of_voters DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="container">
            <br />
                <h4>Votes categorised by Branch:</h4>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="candidate" HeaderText="Candidates" SortExpression="candidate" />
                    <asp:BoundField DataField="IT_votes" HeaderText="IT votes" ReadOnly="True" SortExpression="IT_votes" />
                    <asp:BoundField DataField="ECE_votes" HeaderText="ECE votes" ReadOnly="True" SortExpression="ECE_votes" />
                    <asp:BoundField DataField="BME_votes" HeaderText="BME votes" ReadOnly="True" SortExpression="BME_votes" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="
    select DISTINCT vn.candidate, sq1.IT_votes,sq2.ECE_votes,sq3.BME_votes
    from votes as vn
    left outer join
    (select v.candidate,COUNT(v.voter) as IT_votes from votes as v
      join users on v.voter = users.id where users.branch = 'IT' 
      group by v.candidate)
      as sq1 on sq1.candidate = vn.candidate
     left outer join
     (select v.candidate,COUNT(v.voter) as ECE_votes from votes as v
      join users on v.voter = users.id where users.branch = 'ECE' 
      group by v.candidate)
      as sq2 on sq2.candidate = vn.candidate
       left outer join
     (select v.candidate,COUNT(v.voter) as BME_votes from votes as v
      join users on v.voter = users.id where users.branch = 'BME' 
      group by v.candidate)
      as sq3 on sq3.candidate = vn.candidate 
      where vn.eid = @eid">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
        <div class="container">
            <br />
            <h4>Votes categorised by Gender:</h4>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="candidate" HeaderText="Candidates" SortExpression="candidate" />
                    <asp:BoundField DataField="M_votes" HeaderText="Male voters" ReadOnly="True" SortExpression="M_votes" />
                    <asp:BoundField DataField="F_votes" HeaderText="Female voters" ReadOnly="True" SortExpression="F_votes" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="   select DISTINCT vn.candidate, sq1.M_votes,sq2.F_votes
    from votes as vn
    left outer join
    (select v.candidate,COUNT(v.voter) as M_votes from votes as v
      join users on v.voter = users.id where users.gender = 'M' 
      group by v.candidate)
      as sq1 on sq1.candidate = vn.candidate
     left outer join
     (select v.candidate,COUNT(v.voter) as F_votes from votes as v
      join users on v.voter = users.id where users.gender = 'F' 
      group by v.candidate)
      as sq2 on sq2.candidate = vn.candidate
       where vn.eid = @eid;">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="container">
            <br />
            <h4>Votes categorised by Year:</h4>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" EditRowStyle-CssClass="center center-align">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="candidate" HeaderText="Candidates" SortExpression="candidate" />
                    <asp:BoundField DataField="y1_votes" HeaderText="1st Year Votes" ReadOnly="True" SortExpression="y1_votes" />
                    <asp:BoundField DataField="y2_votes" HeaderText="2nd Year Votes" ReadOnly="True" SortExpression="y2_votes" />
                    <asp:BoundField DataField="y3_votes" HeaderText="3rd Year Votes" ReadOnly="True" SortExpression="y3_votes" />
                    <asp:BoundField DataField="y4_votes" HeaderText="4th Year Votes" ReadOnly="True" SortExpression="y4_votes" />
                    <asp:BoundField DataField="y5_votes" HeaderText="5th Year Votes" ReadOnly="True" SortExpression="y5_votes" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=RAJAT\SQLEXPRESS;Initial Catalog=Voting;User ID=sa;Password=bl00dsql" ProviderName="System.Data.SqlClient" SelectCommand="select DISTINCT vn.candidate, sq1.y1_votes,sq2.y2_votes,sq3.y3_votes,sq4.y4_votes,sq5.y5_votes
    from votes as vn
    left outer join
    (select v.candidate,COUNT(v.voter) as y1_votes from votes as v
      join users on v.voter = users.id where users.yearuser = 1 
      group by v.candidate)
      as sq1 on sq1.candidate = vn.candidate
     left outer join
     (select v.candidate,COUNT(v.voter) as y2_votes from votes as v
      join users on v.voter = users.id where users.yearuser = 2 
      group by v.candidate)
      as sq2 on sq2.candidate = vn.candidate
       left outer join
     (select v.candidate,COUNT(v.voter) as y3_votes from votes as v
      join users on v.voter = users.id where users.yearuser = 3 
      group by v.candidate)
      as sq3 on sq3.candidate = vn.candidate 
left outer join
 (select v.candidate,COUNT(v.voter) as y4_votes from votes as v
      join users on v.voter = users.id where users.yearuser = 4 
      group by v.candidate)
      as sq4 on sq4.candidate = vn.candidate
left outer join
 (select v.candidate,COUNT(v.voter) as y5_votes from votes as v
      join users on v.voter = users.id where users.yearuser = 5 
      group by v.candidate)
      as sq5 on sq5.candidate = vn.candidate
     
      where vn.eid = @eid;">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html>
