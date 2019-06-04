<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PregledKorisnika.aspx.cs" Inherits="DiabetikWeb.PregledKorisnika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:GridView ID="Gv" runat="server" Width="500px" AutoGenerateColumns="False" DataSourceID="repo" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="8" ForeColor="Black" GridLines="None" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
         
            <asp:BoundField DataField="KorisnickoIme" HeaderText="Korisnicko Ime" SortExpression="KorisnickoIme" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
        
            <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="Tezina" HeaderText="Tezina" SortExpression="Tezina" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="DatumRodjenja" HeaderText="Datum Rođenja" SortExpression="DatumRodjenja" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="Spol" HeaderText="Spol" SortExpression="Spol" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="TipDiabetesa" HeaderText="TipDiabetesa" SortExpression="TipDiabetesa" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="RazinaAktivnosti" HeaderText="RazinaAktivnosti" SortExpression="RazinaAktivnosti" >
                <HeaderStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                <ItemStyle BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
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
    <asp:ObjectDataSource ID="repo" runat="server" SelectMethod="GetSviKorisnici" TypeName="DiabetikWeb.Repo"></asp:ObjectDataSource>
       
 
</asp:Content>


