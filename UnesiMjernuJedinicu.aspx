<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UnesiMjernuJedinicu.aspx.cs" Inherits="DiabetikWeb.UnesiMjernuJedinicu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" DeleteCommand="deleteMjerneJedinice" DeleteCommandType="StoredProcedure" InsertCommand="insertMjerneJedinice" InsertCommandType="StoredProcedure" SelectCommand="selectMjerneJedinice" SelectCommandType="StoredProcedure" UpdateCommand="updateMjerneJedinice" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="IdMjerneJedinice" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Naziv" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdMjerneJedinice" Type="Int32" />
            <asp:Parameter Name="Naziv" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IdMjerneJedinice" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Both" OnItemInserted="FormView1_ItemInserted" CellSpacing="2">
        <EditItemTemplate>
            IdMjerneJedinice:
            <asp:Label ID="IdMjerneJediniceLabel1" runat="server" Text='<%# Eval("IdMjerneJedinice") %>' />
            <br />
            Naziv:
            <asp:TextBox ID="NazivTextBox" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Naziv:
            <asp:TextBox ID="NazivTextBox" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IdMjerneJedinice:
            <asp:Label ID="IdMjerneJediniceLabel" runat="server" Text='<%# Eval("IdMjerneJedinice") %>' />
            <br />
            Naziv:
            <asp:Label ID="NazivLabel" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <br />
    <br /> 
    <asp:GridView Width="900" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="20" DataKeyNames="IdMjerneJedinice" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" >
            <HeaderStyle Font-Bold="True" Font-Size="X-Large" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
            <ItemStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>

</asp:Content>
