using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetikWeb
{
    public partial class PregledKombinacijeObroka : System.Web.UI.Page
    {
        private Repo r = new Repo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //PrikaziObroke();
                PrikaziBrojObroka();
                PrikaziTablicu();

            }

        }

        //protected void ddlObrok_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    
        //    PrikaziObroke();
        //}

        //private void PrikaziObroke()
        //{
        //    if (ddlObrok.Items.Count <= 1)
        //    {
        //        ddlObrok.DataSource = r.getAllTipObroka();
        //        ddlObrok.DataTextField = "Naziv";
        //        ddlObrok.DataValueField = "IdTipObroka";
        //        ddlObrok.DataBind();
        //    }
        //}

        protected void ddlBrojObroka_SelectedIndexChanged(object sender, EventArgs e)
        {

            PrikaziBrojObroka();
            PrikaziTablicu();

        }

        private void PrikaziTablicu()
        {
            if (ddlBrojObroka.SelectedValue == "1")
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;

            }
            else if (ddlBrojObroka.SelectedValue == "2")
            {
                GridView2.Visible = true;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;


            }
            else if (ddlBrojObroka.SelectedValue == "3")
            {
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = true;
                GridView4.Visible = false;
                GridView5.Visible = false;


            }
            else if (ddlBrojObroka.SelectedValue == "4")
            {
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = true;
                GridView5.Visible = false;



            }
            else if (ddlBrojObroka.SelectedValue == "5")
            {
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = true;
            }
        }

        private void PrikaziBrojObroka()
        {

            if (ddlBrojObroka.Items.Count <= 1)
            {


                ddlBrojObroka.DataSource = r.getAllBrojObroka();
                ddlBrojObroka.DataTextField = "BrojObroka";
                ddlBrojObroka.DataValueField = "IdKombObrokaGlavni";
                ddlBrojObroka.DataBind();
            }
          
        }

        protected void ddlBrojObroka_DataBound(object sender, EventArgs e)
        {
            ddlBrojObroka.Items.Insert(0, new ListItem("- Select -", ""));
        }

        //protected void ddlObrok_DataBound(object sender, EventArgs e)
        //{
        //    ddlObrok.Items.Insert(0, new ListItem("- Select -", ""));

        //}
    }
}