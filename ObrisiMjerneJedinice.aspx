<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ObrisiMjerneJedinice.aspx.cs" Inherits="DiabetikWeb.ObrisiMjerneJedinice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:DiabetikWebConnectionString %>" deletecommand="deleteMjerneJedinice" deletecommandtype="StoredProcedure" insertcommand="insertMjerneJedinice" insertcommandtype="StoredProcedure" selectcommand="selectMjerneJedinice" selectcommandtype="StoredProcedure" updatecommand="updateMjerneJedinice" updatecommandtype="StoredProcedure">
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
    </asp:sqldatasource>

    <asp:gridview width="900px" id="GridView1" runat="server" autogeneratecolumns="False" backcolor="LightGoldenrodYellow" bordercolor="Tan" borderwidth="1px" cellpadding="20" datakeynames="IdMjerneJedinice" datasourceid="SqlDataSource1" forecolor="Black" gridlines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
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
    </asp:gridview>

</asp:Content>
