using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TISHT
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["sepet"] != null)
                {
                    DataTable dt = (DataTable)Session["sepet"];
                    SepetGoster(dt);
                }

            }
        }
        private void SepetGoster(DataTable dt)
        {
            gvSepet.Columns[1].FooterText = "Toplam : ";
            gvSepet.Columns[1].FooterStyle.HorizontalAlign = HorizontalAlign.Right;
            gvSepet.Columns[2].FooterText = ToplamAdetBul().ToString();
            gvSepet.Columns[2].FooterStyle.HorizontalAlign = HorizontalAlign.Center;
            gvSepet.Columns[3].FooterText = string.Format("{0:c}", ToplamTutarBul());
            gvSepet.Columns[3].FooterStyle.HorizontalAlign = HorizontalAlign.Right;

            gvSepet.Columns[1].HeaderStyle.HorizontalAlign = HorizontalAlign.Right;
            gvSepet.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
            gvSepet.Columns[2].HeaderStyle.HorizontalAlign = HorizontalAlign.Right;
            gvSepet.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            gvSepet.Columns[3].HeaderStyle.HorizontalAlign = HorizontalAlign.Right;
            gvSepet.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Right;



            gvSepet.DataSource = dt;
            gvSepet.DataBind();


            GridView sepetOzet = (GridView)this.Master.FindControl("gvSepetOzet");
            sepetOzet.Columns[0].FooterText = "Toplam:";
            sepetOzet.Columns[1].FooterText = string.Format("{0:c}", ToplamTutarBul());
            sepetOzet.DataSource = dt;
            sepetOzet.DataBind();

            Label tl = (Label)this.Master.FindControl("TL");
            tl.Text = string.Format("{0:c}", ToplamTutarBul());

        }



        private decimal ToplamTutarBul()
        {
            decimal ToplamTutar = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamTutar += Convert.ToDecimal(dr["tutar"]);
            }

            
            return ToplamTutar;
        }
        private int ToplamAdetBul()
        {
            int ToplamAdet = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamAdet += Convert.ToInt32(dr["adet"]);
            }
            return ToplamAdet;
        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            dt.Rows.Clear();
            Session["sepet"] = dt;
            Response.Redirect("Default.aspx");
        }

        protected void btnDevam_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        //protected void gvSepet_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    DataTable dt = (DataTable)Session["sepet"];
        //    dt.Rows.RemoveAt(e.RowIndex);
        //    gvSepet.DataSource = dt;
        //    gvSepet.DataBind();

        //    Session["sepet"] = dt;
        //    SepetGoster(dt);
        //}

    }
}