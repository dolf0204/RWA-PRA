<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrediMjerneJedinice.aspx.cs" Inherits="DiabetikWeb.UrediMjerneJedinice" %>
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
  
    <asp:GridView Width="900px" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="20" DataKeyNames="IdMjerneJedinice" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField Visible="false" DataField="IdMjerneJedinice" HeaderText="IdMjerneJedinice" SortExpression="IdMjerneJedinice" InsertVisible="False" ReadOnly="True">
            </asp:BoundField>
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" >
            <HeaderStyle Font-Bold="True" Font-Size="X-Large" />
            <ItemStyle Font-Size="Medium" />
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
