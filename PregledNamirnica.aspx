<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PregledNamirnica.aspx.cs" Inherits="DiabetikWeb.PregledNamirnica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:GridView width="900px" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="10" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AllowPaging="True" AllowSorting="True" DataKeyNames="IdNamirnice">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            
<asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv">
</asp:BoundField>
            <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" >
            </asp:BoundField>
            <asp:BoundField DataField="KCal100g" HeaderText="KCal100g" SortExpression="KCal100g" />
            <asp:BoundField DataField="KCal1Dkg" HeaderText="KCal1Dkg" SortExpression="KCal1Dkg" />
            <asp:BoundField DataField="KCal1Kg" HeaderText="KCal1Kg" SortExpression="KCal1Kg" />
            <asp:BoundField DataField="KCalZlica" HeaderText="KCalZlica" SortExpression="KCalZlica" />
            <asp:BoundField DataField="KCalZlicica" HeaderText="KCalZlicica" SortExpression="KCalZlicica" />
            <asp:BoundField DataField="KcalKomad" HeaderText="KcalKomad" SortExpression="KcalKomad" />
            <asp:BoundField DataField="KcalSalica" HeaderText="KcalSalica" SortExpression="KcalSalica" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" DeleteCommand="deleteNamirnice" DeleteCommandType="StoredProcedure" InsertCommand="insertNamirnice" InsertCommandType="StoredProcedure" SelectCommand="getAllNamirnice" SelectCommandType="StoredProcedure" UpdateCommand="updateNamirnice" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="IdNamirnice" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter Name="Tip" Type="String" />
            <asp:Parameter Name="KCal100g" Type="Int32" />
            <asp:Parameter Name="KCal1Dkg" Type="Int32" />
            <asp:Parameter Name="KCal1Kg" Type="Int32" />
            <asp:Parameter Name="KCalZlica" Type="Int32" />
            <asp:Parameter Name="KCalZlicica" Type="Int32" />
            <asp:Parameter Name="KCalKomad" Type="Int32" />
            <asp:Parameter Name="KCalSalica" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdNamirnice" Type="Int32" />
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter Name="Tip" Type="String" />
            <asp:Parameter Name="KolicinaKCal100g" Type="Int32" />
            <asp:Parameter Name="KolicinaKCal1Dkg" Type="Int32" />
            <asp:Parameter Name="KolicinaKCal1Kg" Type="Int32" />
            <asp:Parameter Name="KolicinaKCalZlica" Type="Int32" />
            <asp:Parameter Name="KolicinaKCalZlicica" Type="Int32" />
            <asp:Parameter Name="KolicinaKCalKomad" Type="Int32" />
            <asp:Parameter Name="KolicinaKCalSalica" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAllNamirnice" TypeName="DiabetikWeb.Repo"></asp:ObjectDataSource>

</asp:Content>
