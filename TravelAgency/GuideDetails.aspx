<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuideDetails.aspx.cs" Inherits="TravelAgency.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
            <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
            <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;ROLE_ID&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :ROLE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;ROLE_ID&quot; FROM &quot;STAFF&quot; WHERE (&quot;ROLE_ID&quot; = :ROLE_ID)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
        <DeleteParameters>
            <asp:Parameter Name="STAFF_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STAFF_ID" Type="String" />
            <asp:Parameter Name="STAFF_NAME" Type="String" />
            <asp:Parameter Name="ROLE_ID" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="ROLE_ID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="STAFF_NAME" Type="String" />
            <asp:Parameter Name="ROLE_ID" Type="String" />
            <asp:Parameter Name="STAFF_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            STAFF_ID:
            <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
            <br />
            STAFF_NAME:
            <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
            <br />
            ROLE_ID:
            <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            STAFF_ID:
            <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
            <br />
            STAFF_NAME:
            <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
            <br />
            ROLE_ID:
            <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
