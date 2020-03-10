<%@ Page Title="Customer Package Schedule" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustPkgSchedule.aspx.cs" Inherits="TravelAgency.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server"></asp:FormView>
</asp:Content>
