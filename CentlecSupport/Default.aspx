<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="CentlecSupport._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Centlec Support</h2>
        
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <span class="label label-default">Name:</span>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
            <input type="text" runat="server" class="form-control" id="txtname">
        </div>
    </div>
   <hr />
    <div class="row">
        <div class="col-md-12">
            <span class="label label-default">Surname:</span>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
            <input type="text" runat="server" class="form-control" id="txtsname">
        </div>
     </div>
   <hr />
    <div class="row">
        <div class="col-md-12">
            <span class="label label-default">Department:</span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
             <asp:DropDownList ID="department" runat="server" AutoPostBack="True">
                 <asp:ListItem>-- Select Value --</asp:ListItem>
                <asp:ListItem>Compliance and Performance</asp:ListItem>
                <asp:ListItem>Engineering: Retail</asp:ListItem>
                <asp:ListItem>Engineering: Wires</asp:ListItem>
            </asp:DropDownList>           
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <asp:DropDownList ID="CaP" Visible="false" runat="server">
                <asp:ListItem>Fleet Management</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="retail" Visible="false" runat="server">
                <asp:ListItem>Revenue Protection</asp:ListItem>
                <asp:ListItem>Customer Service</asp:ListItem>
                <asp:ListItem>Call Centre</asp:ListItem>
                <asp:ListItem>Control Room</asp:ListItem>
                <asp:ListItem>New Connection(s)</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="Wires" Visible="false" runat="server">
                <asp:ListItem>Plant and Maintenance: Medium Voltage</asp:ListItem>
                <asp:ListItem>Plant and Maintenance: Medium Protection</asp:ListItem>
                <asp:ListItem>Regional: Southern Free State</asp:ListItem>
                <asp:ListItem>Regional: Botshabelo</asp:ListItem>
                <asp:ListItem>Regional: Thaba Nchu</asp:ListItem>
                <asp:ListItem>Optimization & Maintenance: Transmission</asp:ListItem>
                <asp:ListItem>Optimization & Maintenance: Lighting</asp:ListItem>
                <asp:ListItem>Optimization & Maintenance: Connections</asp:ListItem>
                <asp:ListItem>Design and Development</asp:ListItem>
                <asp:ListItem>Bulk Metering</asp:ListItem>
                <asp:ListItem>Metering</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-12">
            <span class="label label-default">Comment:</span>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
            <textarea runat="server" class="form-control" rows="5" id="txtcomment"></textarea>
        </div>
    </div>
    <hr />
     <div class="row">
        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" class="btn btn-success" Text="Submit" />
        </div>
    </div>
    

</asp:Content>
