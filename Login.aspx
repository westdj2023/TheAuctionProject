<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AuctionProject.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>ourBay | Buy & Sell | Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins" rel="stylesheet"/>    <link rel="stylesheet" href="Style.css"/></head>
<body>
    <form id="form1" runat="server">
        <header>
        <nav>
            <div class="logo">
                <img src="ourBayLogo.png" width="50" height="50"/>
            </div>
            <ul class="nav-links">
                <li><a href="Default.html">Home</a></li>
                <li><a href="Auctions.aspx">Auctions</a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="Register.aspx">Register</a></li>
            </ul>
        </nav>

        <div class="login_form">
            <div class="login_bg">
                <div class="title">
                    Login
                </div>
                <div class="form_info">
                    <div class="input_info">
                        <asp:Label ID="labelEmail" runat="server" Text="Email Address:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="textboxEmail" runat="server" PlaceHolder="Email Address"></asp:TextBox>
                    </div>
                    <div class="input_info">
                        <asp:Label ID="labelPassword" runat="server" Text="Password:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="textboxPassword" runat="server" PlaceHolder="Password"></asp:TextBox>
                    </div>
                    <div class="input_info">
                        <asp:Button ID="buttonLogin" runat="server" Text="Login" OnClick="buttonLogin_Click"/>
                    </div>
                </div>
                    <asp:Label ID="labelStatus" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
        </header>
            <asp:SqlDataSource ID="sdsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:AuctionConnectionString %>" SelectCommand="SELECT * FROM [Bidder] WHERE (([EmailAddress] = @EmailAddress) AND ([Password] = @Password))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="textboxEmail" Name="EmailAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="textboxPassword" Name="Password" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
