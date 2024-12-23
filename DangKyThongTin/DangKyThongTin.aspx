<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="DangKyThongTin.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .register {
            background: white;
            padding: 20px;
            border: 1px solid blue;
            text-align: center;
            width: 800px;
        }

            .register h1 {
                background-color: darkcyan;
                color: black;
                margin: -20px -20px 20px;
                padding: 15px;
                font-size: 32px;
            }

        input {
            margin-top: 10px;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="register">
            <h1>ĐĂNG KÝ THÔNG TIN</h1>
            <div class="item">
                <asp:Label runat="server" Text="Họ và tên:"></asp:Label>
                <input id="txtHoTen" type="text" />
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Ngày sinh:"></asp:Label>
                <input type="datetime-local" id="txtNgaySinh" runat="server" />
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Giới tính:"></asp:Label>
                <asp:RadioButton ID="rdoNam" GroupName="GioiTinh" runat="server" Text="Nam" />
                <asp:RadioButton ID="rdoNu" GroupName="GioiTinh" runat="server" Text="Nữ" />
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Trình độ:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Sơ cấp" Value=""></asp:ListItem>
                    <asp:ListItem Text="Trung cấp" Value=""></asp:ListItem>
                    <asp:ListItem Text="Cao cấp" Value=""></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Nghề nghiệp:"></asp:Label>
                <asp:ListBox ID="ListBox1" runat="server">
                    <asp:ListItem Text="Kỹ sư" Value=""></asp:ListItem>
                    <asp:ListItem Text="Bác sĩ" Value=""></asp:ListItem>
                    <asp:ListItem Text="Công nhân" Value=""></asp:ListItem>
                    <asp:ListItem Text="Lập trình viên" Value=""></asp:ListItem>
                </asp:ListBox>
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Hình ảnh:"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="item">
                <asp:Label runat="server" Text="Sở thích:"></asp:Label>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem Text="Chơi game" Value=""></asp:ListItem>
                    <asp:ListItem Text="Nghe nhạc" Value=""></asp:ListItem>
                    <asp:ListItem Text="Xem phim" Value=""></asp:ListItem>
                    <asp:ListItem Text="Du lịch" Value=""></asp:ListItem>
                    <asp:ListItem Text="Mua sắm" Value=""></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="actions">
                <asp:Button ID="btnSubmit" runat="server" Text="Gửi" />
                <asp:Button ID="btnReset" runat="server" Text="Làm lại" />
            </div>
        </div>
    </form>
</body>
</html>
