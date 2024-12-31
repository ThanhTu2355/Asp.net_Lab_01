<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="DangKyThongTin.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đơn đặt hàng</title>
    <style>
        .form-container {
            width: 500px;
            margin: 0 auto;
            border: 1px solid #000;
            padding: 10px;
            text-align: center;
        }
        .form-header {
            background-color: #b4e475;
            padding: 5px;
            font-weight: bold;
        }
        .form-row {
            margin: 10px 0;
            text-align: left;
        }
        .form-row label {
            display: inline-block;
            width: 100px;
        }
        .form-actions {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .print-button {
            background-color: #b4e475;
            padding: 5px 10px;
            border: 1px solid #000;
            cursor: pointer;
            font-weight: bold;
        }
        .add-button {
            margin-left: 90px;
            margin-top: 20px;
        }
        .ketqua {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-header">
                ĐƠN ĐẶT HÀNG
            </div>
            <div class="form-row">
                <label>Khách hàng:</label>
                <asp:TextBox ID="txtHoTen" runat="server" Width="250px"></asp:TextBox>
            </div>
            <div class="form-row">
                <label>Địa chỉ:</label>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="250px"></asp:TextBox>
            </div>
            <div class="form-row">
                <label>Mã số thuế:</label>
                <asp:TextBox ID="txtMaSoThue" runat="server" Width="250px"></asp:TextBox>
            </div>
            <hr />
            <div class="form-row">
                <div style="float: left; width: 50%;">
                    <label style="color: green; width: 200px">Chọn các loại bánh:</label><br />
                    <asp:DropDownList ID="ddlLoaiBanh" runat="server"></asp:DropDownList>
                    <br />
                    <label style="margin-top: 10px">Số lượng:</label>
                    <asp:TextBox ID="txtSoLuong" runat="server" Width="80px"></asp:TextBox> cái
                    <br />
                    <asp:Button CssClass="add-button" ID="btnAdd" runat="server" Text=">" OnClick="btnAdd_Click" />
                </div>
                <div style="float: right; width: 50%;">
                    <label style="color: green; width:200px">Danh sách bánh được đặt:</label><br />
                    <asp:ListBox ID="lstBanh" runat="server" Width="200px" Height="100px" SelectionMode="Multiple"></asp:ListBox>
                    <asp:ImageButton ID="btnRemove" runat="server" OnClick="btnRemove_Click" ImageUrl="~/Images/delete.gif" />
                </div>
                <div style="clear: both;"></div>
            </div>
            <div class="form-actions">
                <asp:Button CssClass="print-button" ID="btnPrint" runat="server" Text="In đơn đặt hàng" OnClick="btnPrint_Click" />
            </div>
            <asp:Label CssClass="ketqua" ID="lblKetQua" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
