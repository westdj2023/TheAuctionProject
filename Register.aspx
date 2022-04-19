<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AuctionProject.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ourBay | Buy & Sell | Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins" rel="stylesheet"/>
    <link rel="stylesheet" href="Style.css"/></head>
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
        <div class="registration_form">
            <div class="registration_bg">
                <div class="title">
                    Registration Form
                </div>
                <div class="form_info">
                    <div class="input_wrap">
                        <div class="input_info">
                            <asp:Label ID="labelFirstName" runat="server" Text="First Name:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxFirstName" runat="server" PlaceHolder="First Name"></asp:TextBox>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="input_info">
                            <asp:Label ID="labelLastName" runat="server" Text="Last Name:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxLastName" runat="server" PlaceHolder="Last Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input_wrap">
                        <div class="input_info">
                            <asp:Label ID="labelEmail" runat="server" Text="Email Address:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxEmail" runat="server" PlaceHolder="Email Address"></asp:TextBox>
                        </div>
                        <div class="input_info">
                            <asp:Label ID="labelPassword" runat="server" Text="Password:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxPassword" runat="server" PlaceHolder="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input_info">
                        <asp:Label ID="labelPhoneNumber" runat="server" Text="Phone Number:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="textboxPhoneNumber" runat="server" PlaceHolder="Phone Number"></asp:TextBox>
                    </div>
                    <div class="input_info">
                        <asp:Label ID="labelStreet" runat="server" Text="Street:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="textboxStreet" runat="server" PlaceHolder="Street"></asp:TextBox>
                    </div>
                    <div class="input_info">
                        <asp:Label ID="labelCity" runat="server" Text="City:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="textboxCity" runat="server" PlaceHolder="City"></asp:TextBox>
                    </div>
                    <div class="input_wrap">
                        <div class="input_info">
                            <asp:Label ID="labelState" runat="server" Text="State:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxState" runat="server" PlaceHolder="State (XX)"></asp:TextBox>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="input_info">
                            <asp:Label ID="labelZipCode" runat="server" Text="Zip Code:" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="textboxZipCode" runat="server" PlaceHolder="Zip Code"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input_info">
                        <asp:Button ID="buttonRegister" runat="server" Text="Register" OnClick="buttonRegister_Click"/>
                    </div>
                </div>
                    <asp:Label ID="labelStatus" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
        </header>
    </form>
</body>
</html>
