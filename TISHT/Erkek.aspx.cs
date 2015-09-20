using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TISHT
{
    public partial class Erkek : System.Web.UI.Page
    {
        TShitEntities ent = new TShitEntities();
        cSepet spt = new cSepet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UrunGetir();
            }
        }

        private void UrunGetir()
        {
            var tshirt = (from ts in ent.Urunler
                          where ts.silindi == false && ts.cinsiyet == "Erkek"
                          select ts).ToList();
            dlstTs.DataSource = tshirt;
            dlstTs.DataBind();

        }

        protected void dlstTs_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "sepet")
            {
                dlstTs.SelectedIndex = e.Item.ItemIndex;
                if (Session["sepet"] == null)
                {
                    Session["sepet"] = spt.YeniSepet();
                }
                DataTable dt = (DataTable)Session["sepet"];
                DataRow dr;
                dr = dt.NewRow();
                dr["urunId"] = Convert.ToInt32(dlstTs.SelectedValue);
                Label UrunAdi = (Label)e.Item.FindControl("lblTs");
                dr["urunadi"] = UrunAdi.Text;
                Label Fiyat = (Label)e.Item.FindControl("lblFiyat");
                dr["birimfiyat"] = Convert.ToDecimal(Fiyat.Text);
                TextBox Adet = (TextBox)e.Item.FindControl("txtAdet");
                dr["adet"] = Convert.ToInt32(Adet.Text);
                dr["tutar"] = Convert.ToInt32(Adet.Text) * Convert.ToDecimal(Fiyat.Text);
                dt.Rows.Add(dr);
                Session["sepet"] = dt;


                Response.Redirect("Sepet.aspx");
            }
            else
                if (e.CommandName == "detay")
                {
                    Response.Redirect("Detay.aspx?ID=" + Convert.ToInt32(e.CommandArgument));
                }
        }
    }
}
