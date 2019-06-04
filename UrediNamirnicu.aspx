<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrediNamirnicu.aspx.cs" Inherits="DiabetikWeb.UrediNamirnicu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:gridview width="900px" id="GridView1" runat="server" autogeneratecolumns="False" backcolor="LightGoldenrodYellow" bordercolor="Tan" borderwidth="1px" cellpadding="10" datasourceid="SqlDataSource1" forecolor="Black" gridlines="None" allowpaging="True" allowsorting="True" datakeynames="IdNamirnice" onrowdatabound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            
            <asp:CommandField ShowEditButton="True" />
          
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
            <asp:BoundField DataField="Tip" HeaderText="Tip-U/B/M" SortExpression="Tip"/>
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
    </asp:gridview>
    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:DiabetikWebConnectionString %>" deletecommand="deleteNamirnice" deletecommandtype="StoredProcedure" insertcommand="insertNamirnice" insertcommandtype="StoredProcedure" selectcommand="getAllNamirnice" selectcommandtype="StoredProcedure" updatecommand="updateNamirnice" updatecommandtype="StoredProcedure">
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
            <asp:Parameter Name="KCal100g" Type="Int32" />
            <asp:Parameter Name="KCal1Dkg" Type="Int32" />
            <asp:Parameter Name="KCal1Kg" Type="Int32" />
            <asp:Parameter Name="KCalZlica" Type="Int32" />
            <asp:Parameter Name="KCalZlicica" Type="Int32" />
            <asp:Parameter Name="KCalKomad" Type="Int32" />
            <asp:Parameter Name="KCalSalica" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
    <asp:objectdatasource id="ObjectDataSource1" runat="server" selectmethod="getAllNamirnice" typename="DiabetikWeb.Repo"></asp:objectdatasource>







    


</asp:Content>



