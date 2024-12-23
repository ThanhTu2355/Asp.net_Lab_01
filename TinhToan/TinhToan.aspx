<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="TinhToan.TinhToan" %>

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

            .calculator {
                background: white;
                padding: 20px;
                border: 1px solid blue;
                text-align: center;
                width: 500px;
            }

            .calculator h1 {
                background-color: darkcyan;
                color: black;
                margin: -20px -20px 20px;
                padding: 15px;
                font-size: 32px;
            }

            .output label {
                color: red;
            }

            input {
                margin-top: 10px;
                padding: 8px;
                font-size: 14px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            .buttons button {
                padding: 10px 15px;
                font-size: 14px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .cong {
                background-color: blue;
                color: white;
            }

            .tru {
                background-color: red;
                color: white;
            }

            .nhan {
                background-color: yellow;
                color: black;
            }

            .chia {
                background-color: gray;
                color: white;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div class="calculator">
                <h1>Tính toán đơn giản</h1>
                <div class="input">
                    <div class="input-item">
                        <label>Nhập số 1:</label>
                        <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-item">
                        <label>Nhập số 2:</label>
                        <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="buttons">
                    <asp:Button ID="btnCong" runat="server" Text="Cộng" OnClick="btnCong_Click" CssClass="cong" />
                    <asp:Button ID="btnTru" runat="server" Text="Trừ" OnClick="btnTru_Click" CssClass="tru" />
                    <asp:Button ID="btnNhan" runat="server" Text="Nhân" OnClick="btnNhan_Click" CssClass="nhan" />
                    <asp:Button ID="btnChia" runat="server" Text="Chia" OnClick="btnChia_Click" CssClass="chia" />
                </div>
                <div class="output">
                    <label for="txtResult">Kết quả</label>
                    <asp:TextBox ID="txtResult" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
            </div>
        </form>
    </body>

    </html>