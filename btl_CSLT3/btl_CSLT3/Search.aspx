<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="btl_CSLT3.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        
    <asp:Label ID="Label3" runat="server" Text="Tìm kiếm danh sách Lớp: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlSourceLop" DataTextField="tenlop" DataValueField="tenlop">
        </asp:DropDownList>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlSourceSV" Height="220px" Width="765px">
            <Columns>
                <asp:BoundField DataField="maSV" HeaderText="Mã Sinh Viên" SortExpression="maSV" />
                <asp:BoundField DataField="tenlop" HeaderText="Tên Lớp" SortExpression="tenlop" />
                <asp:BoundField DataField="tenSV" HeaderText="Tên Sinh Viên" SortExpression="tenSV" />
                <asp:TemplateField HeaderText="Giới Tính">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlGioiTinh" runat="server" Height="19px" Width="81px">
                                <asp:ListItem Value="1">Nam</asp:ListItem>
                                <asp:ListItem Value="0">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        
                    </asp:TemplateField>
                <asp:BoundField DataField="ngaysinh" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Sinh" SortExpression="ngaysinh" />
                <asp:BoundField DataField="quequan" HeaderText="Quê Quán" SortExpression="quequan" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlSourceLop" runat="server" ConnectionString="Data Source=DESKTOP-JMC4T24\SQLEXPRESS;Initial Catalog=QLSV;Persist Security Info=True;User ID=sa;Password=123456" SelectCommand="SELECT [tenlop] FROM [tblLop]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlSourceSV" runat="server" ConnectionString="Data Source=DESKTOP-JMC4T24\SQLEXPRESS;Initial Catalog=QLSV;Persist Security Info=True;User ID=sa;Password=123456" SelectCommand="SELECT [maSV], [tenlop], [tenSV], [gioitinh], [ngaysinh], [quequan] FROM [tblSinhVien] WHERE ([tenlop] = @tenlop)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="tenlop" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </center>
    </asp:Content>
