<%@ Page Title="Destination Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DestinationDetails.aspx.cs" Inherits="TravelAgency.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DESTINATION_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DESTINATION_ID" HeaderText="DESTINATION_ID" ReadOnly="True" SortExpression="DESTINATION_ID" />
            <asp:BoundField DataField="DESTINATION" HeaderText="DESTINATION" SortExpression="DESTINATION" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DESTINATION_DETAILS&quot; WHERE &quot;DESTINATION_ID&quot; = :DESTINATION_ID" InsertCommand="INSERT INTO &quot;DESTINATION_DETAILS&quot; (&quot;DESTINATION_ID&quot;, &quot;DESTINATION&quot;) VALUES (:DESTINATION_ID, :DESTINATION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DESTINATION_ID&quot;, &quot;DESTINATION&quot; FROM &quot;DESTINATION_DETAILS&quot;" UpdateCommand="UPDATE &quot;DESTINATION_DETAILS&quot; SET &quot;DESTINATION&quot; = :DESTINATION WHERE &quot;DESTINATION_ID&quot; = :DESTINATION_ID">
        <DeleteParameters>
            <asp:Parameter Name="DESTINATION_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DESTINATION_ID" Type="String" />
            <asp:Parameter Name="DESTINATION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DESTINATION" Type="String" />
            <asp:Parameter Name="DESTINATION_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DESTINATION_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            DESTINATION_ID:
            <asp:Label ID="DESTINATION_IDLabel1" runat="server" Text='<%# Eval("DESTINATION_ID") %>' />
            <br />
            DESTINATION:
            <asp:TextBox ID="DESTINATIONTextBox" runat="server" Text='<%# Bind("DESTINATION") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            DESTINATION_ID:
            <asp:TextBox ID="DESTINATION_IDTextBox" runat="server" Text='<%# Bind("DESTINATION_ID") %>' />
            <br />
            DESTINATION:
            <asp:TextBox ID="DESTINATIONTextBox" runat="server" Text='<%# Bind("DESTINATION") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
