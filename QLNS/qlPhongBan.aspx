<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="QLNS.qlPhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row w-50 m-auto">
        <div class="col-md-12 form-inline mt-3 mb-3 text-center">
             Choose Phòng ban:<asp:DropDownList ID="dplphongban" runat="server" DataSourceID="dsphongban" DataTextField="TenPhong" DataValueField="MaPhong" AutoPostBack="True"></asp:DropDownList>
        </div>      
    </div>

    <asp:SqlDataSource ID="dsphongban" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString9 %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="dsphongbannv" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString10 %>" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)">
        <SelectParameters>
            <asp:ControlParameter ControlID="dplphongban" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:GridView 
       CssClass="table table-bordered table-hover" ID="grpphongban" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsphongbannv">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
            <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
        </Columns>
        <EmptyDataTemplate>
            <div class="arlet alert-warning">
                Không có nhân viên phù hợp
            </div>
        </EmptyDataTemplate>
</asp:GridView>
</asp:Content>
