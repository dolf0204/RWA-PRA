<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrediTipObroka.aspx.cs" Inherits="DiabetikWeb.UrediTipObroka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:DiabetikWebConnectionString %>" deletecommand="deleteTipObroka" deletecommandtype="StoredProcedure" insertcommand="insertTipObroka" insertcommandtype="StoredProcedure" selectcommand="selectTipObroka" selectcommandtype="StoredProcedure" updatecommand="updateTipObroka" updatecommandtype="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="IdTipObroka" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Naziv" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdTipObroka" Type="Int32" />
            <asp:Parameter Name="Naziv" Type="String" />
        </UpdateParameters>
    </asp:sqldatasource>
   
    <asp:gridview id="GridView1" Width="900px" runat="server" autogeneratecolumns="False" datakeynames="IdTipObroka" datasourceid="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField Visible="false" DataField="IdTipObroka" HeaderText="IdTipObroka" InsertVisible="False" ReadOnly="True" SortExpression="IdTipObroka" />
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
    <br />
    <br />
</asp:Content>
