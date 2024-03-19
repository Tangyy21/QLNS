<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="QLNS.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center">Danh sách nhân viên</h2>
<asp:SqlDataSource ID="dsNhanVien" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString8 %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV" 
    >
    <DeleteParameters>
        <asp:Parameter Name="MaNV" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="HoNV" Type="String" />
        <asp:Parameter Name="TenNV" Type="String" />
        <asp:Parameter Name="Phai" Type="Boolean" />
        <asp:Parameter DbType="Date" Name="NgaySinh" />
        <asp:Parameter Name="NoiSinh" Type="String" />
        <asp:Parameter Name="MaPhong" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="HoNV" Type="String" />
        <asp:Parameter Name="TenNV" Type="String" />
        <asp:Parameter Name="Phai" Type="Boolean" />
        <asp:Parameter DbType="Date" Name="NgaySinh" />
        <asp:Parameter Name="NoiSinh" Type="String" />
        <asp:Parameter Name="MaPhong" Type="Int32" />
        <asp:Parameter Name="MaNV" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False"
        CssClass="table table-bordered table-hover" DataSourceID="dsNhanVien" DataKeyNames="MaNV">
        <Columns>

            <asp:BoundField DataField="MaNV" HeaderText="MaNV" ReadOnly="True" InsertVisible="False" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV"/>
            <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV"/>
            <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh"/>
            <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong"/>

        </Columns>
        <HeaderStyle CssClass="bg-info" /> 
    </asp:GridView>
</asp:Content>
