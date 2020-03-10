<%@ Page Title="Package Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PackageDetails.aspx.cs" Inherits="TravelAgency.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" Width="676px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
            <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
            <asp:BoundField DataField="TOTAL_DAYS" HeaderText="TOTAL_DAYS" SortExpression="TOTAL_DAYS" />
            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;TOTAL_DAYS&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :TOTAL_DAYS, :START_DATE, :END_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;TOTAL_DAYS&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot; FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;TOTAL_DAYS&quot; = :TOTAL_DAYS, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID">
        <DeleteParameters>
            <asp:Parameter Name="PACKAGE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PACKAGE_ID" Type="String" />
            <asp:Parameter Name="PACKAGE_NAME" Type="String" />
            <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PACKAGE_NAME" Type="String" />
            <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
            <asp:Parameter Name="PACKAGE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            PACKAGE_ID:
            <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
            <br />
            PACKAGE_NAME:
            <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
            <br />
            TOTAL_DAYS:
            <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
            <br />
            START_DATE:
            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
            <br />
            END_DATE:
            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            PACKAGE_ID:
            <asp:TextBox ID="PACKAGE_IDTextBox" runat="server" Text='<%# Bind("PACKAGE_ID") %>' />
            <br />
            PACKAGE_NAME:
            <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
            <br />
            TOTAL_DAYS:
            <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
            <br />
            START_DATE:
            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
            <br />
            END_DATE:
            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
