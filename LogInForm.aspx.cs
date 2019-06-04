using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetikWeb
{
    public partial class LogInForm : System.Web.UI.Page
    {
        Repo r = new Repo();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

            // Get a ClientScriptManager reference from the Page class.
           
            //if (!IsPostBack)
            //{
            //    PrikaziKorisnike();

            //}

        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {

            var adminLoginDetalji = r.getAdminLogin();

            string username = String.Format("{0}", Request.Form["inputEmailAdmin"]);
            string password = String.Format("{0}", Request.Form["inputPasswordAdmin"]);

            if (username == adminLoginDetalji.AdminID && password == adminLoginDetalji.Password.Substring(0,3))
            {
                Response.Redirect("AdminMainMenuForm.aspx");
            }
            else
            {
                            
                ClientScriptManager cs = Page.ClientScript;
                Type cstype = this.GetType();
               
                if (!cs.IsStartupScriptRegistered(cstype, "PopupScript"))
                {
                    String cstext = "alert('Wrong Username or Password');";
                    cs.RegisterStartupScript(cstype, "PopupScript", cstext, true);
                    
                }
                
               
            }
        }

        protected void btnUSer_Click(object sender, EventArgs e)
        {

        }



        //private void PrikaziKorisnike()
        //{
        //    var korisnici = r.GetSviKorisnici();
        //    DropDownList1.DataTextField = "Ime";
        //    DropDownList1.DataValueField = "IdKorisnik";
        //    DropDownList1.DataSource = korisnici;
        //    DropDownList1.DataBind();

        //}

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
}