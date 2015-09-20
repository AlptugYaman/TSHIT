using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TISHT
{
    public partial class TisortEkle : System.Web.UI.Page
    {
        TShitEntities ent = new TShitEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                    Response.Redirect("Login.aspx");
                else
                {
                   UrunGetir();
                }
            }
        }

        private void UrunGetir()
        {
            var tshirt = (from ts in ent.Urunler
                          where ts.silindi == false
                          orderby ts.urunId descending
                          select ts).ToList();
            dlstTs.DataSource = tshirt;
            dlstTs.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {

            if (txtUrunAdi.Text != "")
            {
                Urunler u = new Urunler();
                u.urunadi = txtUrunAdi.Text;
                u.urunkategori = txtUrunKategorisi.Text;
                u.cinsiyet = txtCinsiyet.Text;
                u.adet = Convert.ToInt32(txtAdet.Text) ;
                u.birimfiyat = Convert.ToDecimal(txtBirimFiyat.Text);
                u.beden = txtBeden.Text;
                u.resimyolu1 = "images/" + fuResim1.FileName;
                u.resimyolu2 = "images/" + fuResim2.FileName;
                u.urunbilgisi = txtUrunBilgisi.Text;
                ent.Urunler.Add(u);
                try
                {
                    ent.SaveChanges();
                    UrunGetir();
                }
                catch (SqlException ex)
                {
                   string hata = ex.Message ;
                }
            }
        }

        protected void btnDegistir_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(dlstTs.SelectedValue);
            var degisen = (from t in ent.Urunler
                          where t.urunId == ID
                          select t).First();

            degisen.urunadi = txtUrunAdi.Text;
            degisen.urunkategori = txtUrunKategorisi.Text;
            degisen.cinsiyet = txtCinsiyet.Text;
            degisen.adet = Convert.ToInt32(txtAdet.Text);
            degisen.birimfiyat = Convert.ToDecimal(txtBirimFiyat.Text);
            degisen.beden = txtBeden.Text;
            degisen.resimyolu1 = "images/" + fuResim1.FileName;
            degisen.resimyolu2 = "images/" + fuResim2.FileName;
            //degisen.urunbilgisi = txtUrunBilgisi.Text;
            try
            {
                ent.SaveChanges();
                UrunGetir();
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(dlstTs.SelectedValue);
            var silinen = (from t in ent.Urunler
                           where t.urunId == ID
                           select t).First();
            ent.Urunler.Remove(silinen);
            try
            {
                ent.SaveChanges();
                UrunGetir();
            }
            catch (SqlException ex)
            {
                string hata = ex.Message;
            }
        }

        protected void dlstTs_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUrunAdi.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[2].Text);
            txtUrunKategorisi.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[3].Text);
            txtCinsiyet.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[4].Text);
            txtAdet.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[5].Text);
            txtBirimFiyat.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[6].Text);
            txtBeden.Text = HttpUtility.HtmlDecode(dlstTs.SelectedRow.Cells[7].Text);
        }

        protected void txtUrunBilgisi_TextChanged(object sender, EventArgs e)
        {

        }


    }
}