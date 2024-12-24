using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DangKyThongTin
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!IsPostBack)
                {

                    ddlTrinhDo.Items.Add(new ListItem("Cao Đẳng", "CD"));
                    ddlTrinhDo.Items.Add(new ListItem("Đại Học", "DH"));
                    ddlTrinhDo.Items.Add(new ListItem("Sau Đại Học", "SDH"));


                    lstNgheNghiep.Items.Add(new ListItem("Kỹ Sư", "KySu"));
                    lstNgheNghiep.Items.Add(new ListItem("Giáo Viên", "GiaoVien"));
                    lstNgheNghiep.Items.Add(new ListItem("Bác Sĩ", "BacSi"));
                    lstNgheNghiep.Items.Add(new ListItem("Lập Trình Viên", "LapTrinhVien"));


                    cblSoThich.Items.Add(new ListItem("Đọc Sách", "DocSach"));
                    cblSoThich.Items.Add(new ListItem("Thể Thao", "TheThao"));
                    cblSoThich.Items.Add(new ListItem("Du Lịch", "DuLich"));
                    cblSoThich.Items.Add(new ListItem("Âm Nhạc", "AmNhac"));
                }
            }
        }

        

        protected void btnGui_Click(object sender, EventArgs e)
        {
            //Lấy thông tin gửi từ client
            string kq = "<ul>";
            kq += "<li>Họ tên: <b> " + txtHoTen.Text + "</b>";
            kq += string.Format("<li>Ngày sinh: <b> {0} </b>", txtNgaySinh.Text);
            if (rdoNam.Checked)
            {
                kq += string.Format("<li>Giới tính: <b> {0} </b>", rdoNam.Text);
            }
            else {
                kq += string.Format("<li>Giới tính: <b> {0} </b>", rdoNu.Text);
            }

            kq += string.Format("<li>Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li>Nghề nghiệp: <b> {0} </b>", lstNgheNghiep.SelectedItem.Text);

            if (fuHinh.HasFile)
            {
                //Xử lý uploadfile
                string path = Server.MapPath("~/Uploads"); //lấy đường dẫn tuyệt đối của thư mục trên máy chủ
                string filename = fuHinh.FileName;//lấy tên file
                fuHinh.SaveAs(path + "/" + filename);//sao chép lên webserver

                kq += string.Format("<li>Hình: <img src='/Uploads/{0}' width=200px>", filename);
            }

            kq += "<li>Sở thích:";
            foreach (ListItem item in cblSoThich.Items) {
                if (item.Selected) {
                    kq += item.Text + " ,";
                }
            }

            kq += "</ul>"; 

            //Gửi thông tin về client
            lblResult.Text = kq;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}