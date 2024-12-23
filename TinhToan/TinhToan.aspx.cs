using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinhToan
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            double numberOne = double.Parse(txtNumber1.Text);
            double numberTwo = double.Parse(txtNumber2.Text);

            txtResult.Text = (numberOne + numberTwo).ToString();
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            double numberOne = double.Parse(txtNumber1.Text);
            double numberTwo = double.Parse(txtNumber2.Text);

            txtResult.Text = (numberOne - numberTwo).ToString();
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            double numberOne = double.Parse(txtNumber1.Text);
            double numberTwo = double.Parse(txtNumber2.Text);

            txtResult.Text = (numberOne * numberTwo).ToString();
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            double numberOne = double.Parse(txtNumber1.Text);
            double numberTwo = double.Parse(txtNumber2.Text);

            if (numberTwo != 0)
            {
                txtResult.Text = (numberOne / numberTwo).ToString("F2");
            }
            else
            {
                txtResult.Text = "Không thể chia cho 0";
            }
        }
    }
}