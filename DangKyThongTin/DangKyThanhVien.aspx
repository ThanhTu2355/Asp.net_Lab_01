<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DangKyThongTin.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    form {
        margin: 20px auto;
        width: 60%;
        max-width: 1200px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    h1 {
        font-size: 20px;
        color: #4A4A4A;
        border-bottom: 2px solid #d8bdf3;
        padding-bottom: 5px;
        margin-bottom: 20px;
        text-align: center;
    }

    .container {
        display: flex;
        gap: 20px;
    }

    .container .left,
    .container .right {
        flex: 1; /* Chia đều không gian */
        padding: 10px;
        box-sizing: border-box;
    }

    .container .left {
        background-color: #f2f2f2;
        border-right: 1px solid #ccc;
    }

    .container .right {
        background-color: #e6e6ff;
    }

    .item {
        margin-bottom: 15px;
        display: flex; /* Sử dụng flex để label và textbox nằm trên 1 dòng */
        align-items: center; /* Canh giữa theo chiều dọc */
    }

    .item label {
        font-weight: bold;
        color: #333;
        margin-right: 120px; /* Tăng khoảng cách giữa label và textbox */
        width: 150px; /* Đảm bảo label có độ rộng cố định */
    }

    .item input[type="text"],
    .item input[type="password"],
    .item input[type="email"],
    .item select,
    .item textarea {
        flex: 1; /* Textbox chiếm hết không gian còn lại */
        padding: 1px; /* Giảm chiều cao của textbox */
        height: 20px; /* Giảm chiều cao cụ thể */
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    .item input[type="text"]:focus,
    .item input[type="password"]:focus,
    .item textarea:focus,
    .item select:focus {
        outline: none;
        border-color: #6a1b9a;
        box-shadow: 0 0 4px rgba(106, 27, 154, 0.5);
    }

    .container button,
    .container input[type="submit"],
    .container input[type="button"] {
        display: inline-block;
        width: 20%;
        padding: 10px;
        font-size: 16px;
        color: #fff;
        background-color: #6a1b9a;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        text-align: center;
        transition: background-color 0.3s ease;
        margin: 0 auto; /* Căn giữa button */
        display: block; /* Đảm bảo button được hiển thị như một block */
    }

    .container button:hover,
    .container input[type="submit"]:hover,
    .container input[type="button"]:hover {
        background-color: #4a0072;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="left">
                <h1>Thông tin đăng nhập</h1>
                <div class="item">
                    <asp:Label ID="lblTenDangNhap" runat="server" Text="Tên đăng nhập"></asp:Label>
                    <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDangNhap" ControlToValidate="txtTenDangNhap" runat="server" ForeColor="Red" ErrorMessage="Tên đăng nhập không được để trống" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="item">
                    <asp:Label ID="lblMatKhau" runat="server" Text="Mật khẩu"></asp:Label>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhau" ControlToValidate="txtMatKhau" runat="server" ForeColor="Red" ErrorMessage="Mật khẩu không được để trống" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="item">
                    <asp:Label ID="lblNhapLaiMatKhau" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                    <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNhapLaiMatKhau" ControlToValidate="txtNhapLaiMatKhau" runat="server" ForeColor="Red" ErrorMessage="Mật khẩu nhập lại không được để trống" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvNhapLaiMatKhau" runat="server" ErrorMessage=" Không trùng mật khẩu" ControlToValidate="txtNhapLaiMatKhau" ControlToCompare="txtMatKhau" ForeColor="Red">(*)</asp:CompareValidator>
                </div>
                <h1>Thông tin cá nhân</h1>
                <div class="item">
                    <asp:Label ID="lblTenKhachHang" runat="server" Text="Họ tên khách hàng"></asp:Label>
                    <asp:TextBox ID="txtTenKhachHang" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenKhachHang" ControlToValidate="txtTenKhachHang" runat="server" ForeColor="Red" ErrorMessage="Tên khách hàng không được để trống" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                </div>
                <div class="item">
                    <asp:Label ID="lblNgaySinh" runat="server" Text="Ngày sinh"></asp:Label>
                    <asp:DropDownList ID="ddlNgaySinh" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlThangSinh" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlNamSinh" runat="server"></asp:DropDownList>
                </div>
                <div class="item">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>
                <div class="item">
                    <asp:Label ID="lblThuNhap" runat="server" Text="Thu nhập"></asp:Label>
                    <asp:TextBox ID="txtThuNhap" runat="server"></asp:TextBox>
                </div>
                <div class="item">
                    <asp:Label ID="lblGioitinh" runat="server" Text="Giới tính"></asp:Label>
                    <asp:CheckBox ID="chkNam" runat="server" Text="Nam" />
                </div>
                <div class="item">
                    <asp:Label ID="lblDiaChi" runat="server" Text="Địa chỉ"></asp:Label>
                    <asp:TextBox ID="txtDiaChi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="item">
                    <asp:Label ID="lblPhone" runat="server" Text="Điện thoại"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="txtDangKy" runat="server" Text="Đăng ký" />
            </div>
            <div class="right">
                <h1>Hồ sơ khách hàng</h1>
                <asp:ValidationSummary ID="vsError" runat="server" />
                <asp:Label ID="lblKetQua" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
