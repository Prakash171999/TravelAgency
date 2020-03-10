<%@ Page Title="Staff Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="staffDetails.aspx.cs" Inherits="TravelAgency.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <br/>
    <div class="container" >
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8 bg-secondary">
						<h2>Manage <b>Staff</b></h2>
					</div>
                </div>
            </div>

    <asp:GridView ID="staffInfo" CssClass="table table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
            <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
            <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;ROLE_ID&quot;, &quot;STAFF_NAME&quot;) VALUES (:STAFF_ID, :ROLE_ID, :STAFF_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STAFF_ID&quot;, &quot;ROLE_ID&quot;, &quot;STAFF_NAME&quot; FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;ROLE_ID&quot; = :ROLE_ID, &quot;STAFF_NAME&quot; = :STAFF_NAME WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
        <DeleteParameters>
            <asp:Parameter Name="STAFF_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STAFF_ID" Type="String" />
            <asp:Parameter Name="ROLE_ID" Type="String" />
            <asp:Parameter Name="STAFF_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ROLE_ID" Type="String" />
            <asp:Parameter Name="STAFF_NAME" Type="String" />
            <asp:Parameter Name="STAFF_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <div class="form-group">
            STAFF_ID:
            <asp:Label ID="STAFF_IDLabel1" class="form-control" runat="server" Text='<%# Eval("STAFF_ID") %>' />
            <br />
            </div>
            <div class="form-group">
            ROLE_ID:
            <asp:TextBox ID="ROLE_IDTextBox" class="form-control" runat="server" Text='<%# Bind("ROLE_ID") %>' />
            <br />
            </div>
            <div class="form-group">
            STAFF_NAME:
            <asp:TextBox ID="STAFF_NAMETextBox" class="form-control" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
            <br />
            <div class="form-group">
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="form-group">
            STAFF_ID:
            <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
            <br />
                </div>
            <div class="form-group">
            ROLE_ID:
            <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
            <br />
                </div>
            <div class="form-group">
            STAFF_NAME:
            <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
            <br />
                </div>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
           <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>
        </div>
</asp:Content>
