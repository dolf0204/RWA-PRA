<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrediKombinacijuObroka.aspx.cs" Inherits="DiabetikWeb.UrediKombinacijuObroka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="form-group">
        <div>
            <asp:label text="Broj obroka" runat="server" />
            <asp:dropdownlist appenddatabounditems="true" ondatabound="ddlBrojObroka_DataBound" runat="server" id="ddlBrojObroka" autopostback="true" onselectedindexchanged="ddlBrojObroka_SelectedIndexChanged"></asp:dropdownlist>
        </div>
        <br />
        <br />
        <asp:gridview onrowdatabound="GridView1_RowDataBound" Width="900px" visible="False" id="GridView1" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1" datakeynames="IdKombinacijaObrokaOmjer" OnRowUpdated="GridView1_RowUpdated" OnInit="GridView1_Init" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv"   />
                <asp:BoundField DataField="Masti" HeaderText="Masti" SortExpression="Masti" />
                <asp:BoundField DataField="Ugljikohidrati" HeaderText="Ugljikohidrati" SortExpression="Ugljikohidrati" />
                <asp:BoundField DataField="Bjelančevine" HeaderText="Bjelančevine" SortExpression="Bjelančevine" />
                <asp:BoundField DataField="Ukupno" HeaderText="Ukupno" SortExpression="Ukupno" />
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

        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:DiabetikWebConnectionString %>" selectcommand="Get1KombObroka" selectcommandtype="StoredProcedure" updatecommand="update1kombObrokaTester" updatecommandtype="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="idKombinacijaObrokaOmjer" Type="Int32" />
                <asp:Parameter Name="Naziv" Type="String" />
                <asp:Parameter Name="Masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="Ukupno" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
        <br />
        <br />
        <asp:GridView Visible="False" Width="900px" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="IdKombinacijaObrokaOmjer" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv"/>
                <asp:BoundField DataField="Masti" HeaderText="Masti" SortExpression="Masti" />
                <asp:BoundField DataField="Ugljikohidrati" HeaderText="Ugljikohidrati" SortExpression="Ugljikohidrati" />
                <asp:BoundField DataField="Bjelančevine" HeaderText="Bjelančevine" SortExpression="Bjelančevine" />
                <asp:BoundField DataField="Ukupno" HeaderText="Ukupno" SortExpression="Ukupno" />
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

        <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:DiabetikWebConnectionString %>" deletecommand="DELETE FROM [KombinacijaObrokaOmjer] WHERE [IdKombinacijaObrokaOmjer] = @IdKombinacijaObrokaOmjer" insertcommand="INSERT INTO [KombinacijaObrokaOmjer] ([TipObrokaID], [KombinacijaObrokaGlavniID], [Masti], [Ugljikohidrati], [Bjelančevine], [Ukupno]) VALUES (@TipObrokaID, @KombinacijaObrokaGlavniID, @Masti, @Ugljikohidrati, @Bjelančevine, @Ukupno)" selectcommand="get2KombObroka" selectcommandtype="StoredProcedure" updatecommand="update2kombObrokaTester" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="IdKombinacijaObrokaOmjer" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TipObrokaID" Type="Int32" />
                <asp:Parameter Name="KombinacijaObrokaGlavniID" Type="Int32" />
                <asp:Parameter Name="Masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="Ukupno" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdKombinacijaObrokaOmjer" Type="Int32" />
                <asp:Parameter Name="Naziv" Type="String" />
                <asp:Parameter Name="Masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="Ukupno" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get3kombObroka" SelectCommandType="StoredProcedure" UpdateCommand="update3kombObrokaTester" UpdateCommandType="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="idKombinacijaObrokaOmjer" Type="Int32" />
                <asp:Parameter Name="Naziv" Type="String" />
                <asp:Parameter Name="masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="ukupno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get4kombObroka" SelectCommandType="StoredProcedure" UpdateCommand="update4kombObrokaTester" UpdateCommandType="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="idKombinacijaObrokaOmjer" Type="Int32" />
                <asp:Parameter Name="Naziv" Type="String" />
                <asp:Parameter Name="masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="ukupno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get5kombObroka" SelectCommandType="StoredProcedure" UpdateCommand="update5kombObrokaTester" UpdateCommandType="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="idKombinacijaObrokaOmjer" Type="Int32" />
                <asp:Parameter Name="Naziv" Type="String" />
                <asp:Parameter Name="masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="ukupno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        <asp:GridView ID="GridView3" Width="900px" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="IdKombinacijaObrokaOmjer" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv"  />
                <asp:BoundField DataField="Masti" HeaderText="Masti" SortExpression="Masti" />
                <asp:BoundField DataField="Ugljikohidrati" HeaderText="Ugljikohidrati" SortExpression="Ugljikohidrati" />
                <asp:BoundField DataField="Bjelančevine" HeaderText="Bjelančevine" SortExpression="Bjelančevine" />
                <asp:BoundField DataField="Ukupno" HeaderText="Ukupno" SortExpression="Ukupno" />
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
        <asp:GridView ID="GridView4" Width="900px" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="IdKombinacijaObrokaOmjer" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv"  />
                <asp:BoundField DataField="Masti" HeaderText="Masti" SortExpression="Masti" />
                <asp:BoundField DataField="Ugljikohidrati" HeaderText="Ugljikohidrati" SortExpression="Ugljikohidrati" />
                <asp:BoundField DataField="Bjelančevine" HeaderText="Bjelančevine" SortExpression="Bjelančevine" />
                <asp:BoundField DataField="Ukupno" HeaderText="Ukupno" SortExpression="Ukupno" />
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
        <asp:GridView ID="GridView5" Width="900px" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" DataKeyNames="IdKombinacijaObrokaOmjer" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv"  />
                <asp:BoundField DataField="Masti" HeaderText="Masti" SortExpression="Masti" />
                <asp:BoundField DataField="Ugljikohidrati" HeaderText="Ugljikohidrati" SortExpression="Ugljikohidrati" />
                <asp:BoundField DataField="Bjelančevine" HeaderText="Bjelančevine" SortExpression="Bjelančevine" />
                <asp:BoundField DataField="Ukupno" HeaderText="Ukupno" SortExpression="Ukupno" />
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

    </div>
</asp:Content>
