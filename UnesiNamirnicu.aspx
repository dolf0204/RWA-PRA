<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UnesiNamirnicu.aspx.cs" Inherits="DiabetikWeb.UnesiNamirnicu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="IdNamirnice" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" GridLines="Both" >
        <EditItemTemplate>
            IdNamirnice:
            <asp:Label ID="IdNamirniceLabel1" runat="server" Text='<%# Eval("IdNamirnice") %>' />
            <br />
            Naziv:
            <asp:TextBox ID="NazivTextBox" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            Tip:
            <asp:TextBox ID="TipTextBox" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            KCal100g:
            <asp:TextBox ID="KCal100gTextBox" runat="server" Text='<%# Bind("KCal100g") %>' />
            <br />
            KCal1Dkg:
            <asp:TextBox ID="KCal1DkgTextBox" runat="server" Text='<%# Bind("KCal1Dkg") %>' />
            <br />
            KCal1Kg:
            <asp:TextBox ID="KCal1KgTextBox" runat="server" Text='<%# Bind("KCal1Kg") %>' />
            <br />
            KCalZlica:
            <asp:TextBox ID="KCalZlicaTextBox" runat="server" Text='<%# Bind("KCalZlica") %>' />
            <br />
            KCalZlicica:
            <asp:TextBox ID="KCalZlicicaTextBox" runat="server" Text='<%# Bind("KCalZlicica") %>' />
            <br />
            KcalKomad:
            <asp:TextBox ID="KcalKomadTextBox" runat="server" Text='<%# Bind("KcalKomad") %>' />
            <br />
            KcalSalica:
            <asp:TextBox ID="KcalSalicaTextBox" runat="server" Text='<%# Bind("KcalSalica") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Naziv:
            <asp:TextBox ID="NazivTextBox" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            Tip M/B/U:
            <asp:TextBox ID="TipTextBox" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            KCal100g:
            <asp:TextBox ID="KCal100gTextBox" runat="server" Text='<%# Bind("KCal100g") %>' />
            <br />
            KCal1Dkg:
            <asp:TextBox ID="KCal1DkgTextBox" runat="server" Text='<%# Bind("KCal1Dkg") %>' />
            <br />
            KCal1Kg:
            <asp:TextBox ID="KCal1KgTextBox" runat="server" Text='<%# Bind("KCal1Kg") %>' />
            <br />
            KCalZlica:
            <asp:TextBox ID="KCalZlicaTextBox" runat="server" Text='<%# Bind("KCalZlica") %>' />
            <br />
            KCalZlicica:
            <asp:TextBox ID="KCalZlicicaTextBox" runat="server" Text='<%# Bind("KCalZlicica") %>' />
            <br />
            KcalKomad:
            <asp:TextBox ID="KcalKomadTextBox" runat="server" Text='<%# Bind("KcalKomad") %>' />
            <br />
            KcalSalica:
            <asp:TextBox ID="KcalSalicaTextBox" runat="server" Text='<%# Bind("KcalSalica") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IdNamirnice:
            <asp:Label ID="IdNamirniceLabel" runat="server" Text='<%# Eval("IdNamirnice") %>' />
            <br />
            Naziv:
            <asp:Label ID="NazivLabel" runat="server" Text='<%# Bind("Naziv") %>' />
            <br />
            Tip:
            <asp:Label ID="TipLabel" runat="server" Text='<%# Bind("Tip") %>' />
            <br />
            KCal100g:
            <asp:Label ID="KCal100gLabel" runat="server" Text='<%# Bind("KCal100g") %>' />
            <br />
            KCal1Dkg:
            <asp:Label ID="KCal1DkgLabel" runat="server" Text='<%# Bind("KCal1Dkg") %>' />
            <br />
            KCal1Kg:
            <asp:Label ID="KCal1KgLabel" runat="server" Text='<%# Bind("KCal1Kg") %>' />
            <br />
            KCalZlica:
            <asp:Label ID="KCalZlicaLabel" runat="server" Text='<%# Bind("KCalZlica") %>' />
            <br />
            KCalZlicica:
            <asp:Label ID="KCalZlicicaLabel" runat="server" Text='<%# Bind("KCalZlicica") %>' />
            <br />
            KcalKomad:
            <asp:Label ID="KcalKomadLabel" runat="server" Text='<%# Bind("KcalKomad") %>' />
            <br />
            KcalSalica:
            <asp:Label ID="KcalSalicaLabel" runat="server" Text='<%# Bind("KcalSalica") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:FormView>
    <br />
    <br />
    
    <asp:GridView Width="900" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdNamirnice" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
            <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" />
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
</asp:Content>
