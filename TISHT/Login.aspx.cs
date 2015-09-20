using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TISHT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
               
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtkad.Text == "admin" && txtpass.Text == "123")
            {
                Session["Admin"] = txtkad.Text;
                Response.Redirect("TisortEkle.aspx");
            }
        }
    }
}