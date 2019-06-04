<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PregledTipaObroka.aspx.cs" Inherits="DiabetikWeb.PregledTipaObroka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" DeleteCommand="deleteTipObroka" DeleteCommandType="StoredProcedure" InsertCommand="insertTipObroka" InsertCommandType="StoredProcedure" SelectCommand="selectTipObroka" SelectCommandType="StoredProcedure" UpdateCommand="updateTipObroka" UpdateCommandType="StoredProcedure">
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
    </asp:SqlDataSource>
    <br /><br />
    <asp:GridView ID="GridView1" Width="900px" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTipObroka" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" >
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle  HorizontalAlign="Center" CssClass="text-center" Font-Bold="True" Font-Size="X-Large"/>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Medium" />
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
    <br /><br />
    </asp:Content>
