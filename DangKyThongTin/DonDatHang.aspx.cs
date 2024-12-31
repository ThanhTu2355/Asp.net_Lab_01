using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DangKyThongTin
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblKetQua.Visible = false;
            if (!IsPostBack)
            {
                // Khởi tạo danh sách loại bánh
                ddlLoaiBanh.Items.Add(new ListItem("Bánh tráng nướng", "0"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh bò", "1"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh ốc quế sầu siêng", "2"));
                ddlLoaiBanh.Items.Add(new ListItem("Bông lan trứng muối", "3"));
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string tenbanh = ddlLoaiBanh.SelectedItem.Text;
            int soluong = int.Parse(txtSoLuong.Text);
            string kq = string.Format("{0}  ({1})", tenbanh, soluong);
            lstBanh.Items.Add(kq);
        }

        protected void btnRemove_Click(object sender, ImageClickEventArgs e)
        {
            //duyệt danh sách mục được chọn
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 text-center'>HÓA ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border' style='padding: 10px; border: 1px solid #000;'>";

            // Thu thập thông tin đơn hàng
            kq += string.Format("<p><b>Khách hàng:</b> {0}</p>", txtHoTen.Text);
            kq += string.Format("<p><b>Địa chỉ:</b> {0}</p>", txtDiaChi.Text);
            kq += string.Format("<p><b>Mã số thuế:</b> {0}</p>", txtMaSoThue.Text);
            kq += "<p><b>Đặt các loại bánh sau:</b></p>";

            // Tạo bảng hiển thị danh sách bánh
            kq += "<table style='width: 100%; border-collapse: collapse;' border='1'>";
            kq += "<tr><th>Tên bánh</th><th>Số lượng</th></tr>";

            foreach (ListItem item in lstBanh.Items)
            {
                //tách phần tử thành tên bánh và số lượng
                string[] details = item.Text.Split('(');
                string tenBanh = details[0].Trim(); // Tên bánh
                string soLuong = details[1].Replace(")", "").Trim(); // Số lượng

                // Thêm hàng vào bảng
                kq += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", tenBanh, soLuong);
            }

            kq += "</tbody></table>";
            kq += "</div>";

            // Hồi đáp thông tin đơn hàng
            lblKetQua.Text = kq;
            lblKetQua.Visible = true;
        }

    }
}