<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PregledKombinacijeObroka.aspx.cs" Inherits="DiabetikWeb.PregledKombinacijeObroka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="form-group">
        <div>
        <asp:Label Text="Broj obroka" runat="server" />
            <asp:DropDownList AppendDataBoundItems="true" OnDataBound="ddlBrojObroka_DataBound" runat="server" ID="ddlBrojObroka" AutoPostBack="true" OnSelectedIndexChanged="ddlBrojObroka_SelectedIndexChanged" ></asp:DropDownList>
        </div>
        <br />
        <br />
        <asp:GridView  Visible="False" Width="900" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
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
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" DeleteCommand="DELETE FROM [KombinacijaObrokaOmjer] WHERE [IdKombinacijaObrokaOmjer] = @IdKombinacijaObrokaOmjer" InsertCommand="INSERT INTO [KombinacijaObrokaOmjer] ([TipObrokaID], [KombinacijaObrokaGlavniID], [Masti], [Ugljikohidrati], [Bjelančevine], [Ukupno]) VALUES (@TipObrokaID, @KombinacijaObrokaGlavniID, @Masti, @Ugljikohidrati, @Bjelančevine, @Ukupno)" SelectCommand="Get1KombObroka" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [KombinacijaObrokaOmjer] SET [TipObrokaID] = @TipObrokaID, [KombinacijaObrokaGlavniID] = @KombinacijaObrokaGlavniID, [Masti] = @Masti, [Ugljikohidrati] = @Ugljikohidrati, [Bjelančevine] = @Bjelančevine, [Ukupno] = @Ukupno WHERE [IdKombinacijaObrokaOmjer] = @IdKombinacijaObrokaOmjer">
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
                <asp:Parameter Name="TipObrokaID" Type="Int32" />
                <asp:Parameter Name="KombinacijaObrokaGlavniID" Type="Int32" />
                <asp:Parameter Name="Masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="Ukupno" Type="Int32" />
                <asp:Parameter Name="IdKombinacijaObrokaOmjer" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
        <asp:GridView Visible="False" Width="900" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
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
       
        <asp:GridView ID="GridView3" Width="900" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get3kombObroka" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get4kombObroka" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" SelectCommand="get5kombObroka" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" Width="900" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
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
        <asp:GridView ID="GridView5" Width="900" Visible="False" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" />
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

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetikWebConnectionString %>" DeleteCommand="DELETE FROM [KombinacijaObrokaOmjer] WHERE [IdKombinacijaObrokaOmjer] = @IdKombinacijaObrokaOmjer" InsertCommand="INSERT INTO [KombinacijaObrokaOmjer] ([TipObrokaID], [KombinacijaObrokaGlavniID], [Masti], [Ugljikohidrati], [Bjelančevine], [Ukupno]) VALUES (@TipObrokaID, @KombinacijaObrokaGlavniID, @Masti, @Ugljikohidrati, @Bjelančevine, @Ukupno)" SelectCommand="get2KombObroka" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [KombinacijaObrokaOmjer] SET [TipObrokaID] = @TipObrokaID, [KombinacijaObrokaGlavniID] = @KombinacijaObrokaGlavniID, [Masti] = @Masti, [Ugljikohidrati] = @Ugljikohidrati, [Bjelančevine] = @Bjelančevine, [Ukupno] = @Ukupno WHERE [IdKombinacijaObrokaOmjer] = @IdKombinacijaObrokaOmjer">
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
                <asp:Parameter Name="TipObrokaID" Type="Int32" />
                <asp:Parameter Name="KombinacijaObrokaGlavniID" Type="Int32" />
                <asp:Parameter Name="Masti" Type="Int32" />
                <asp:Parameter Name="Ugljikohidrati" Type="Int32" />
                <asp:Parameter Name="Bjelančevine" Type="Int32" />
                <asp:Parameter Name="Ukupno" Type="Int32" />
                <asp:Parameter Name="IdKombinacijaObrokaOmjer" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
