using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetikWeb
{
    public partial class UrediKombinacijuObroka : System.Web.UI.Page
    {
     
       private Repo r = new Repo();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                PrikaziBrojObroka();
                PrikaziTablicu();
                PrikaziObroke();
              

            }
                          

        }

        private void PrikaziObroke()
        {
            
        }

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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    DropDownList ddlNaziv = (DropDownList)e.Row.FindControl("ddlNazivObroka");
            //    ddlNaziv.DataSource = r.getAllTipObroka();
            //    ddlNaziv.DataTextField = "Naziv";
            //    ddlNaziv.DataValueField = "Naziv";
            //    ViewState["Naziv1"] = ddlNaziv.SelectedValue;

            //    ddlNaziv.DataBind();

            //}

           

            if (e.Row.RowState == DataControlRowState.Edit)
            {
                TextBox nazivObroka = (TextBox)e.Row.FindControl("Naziv");

                
                if (!IsPostBack)
                {
                    nazivObroka.Text = "Malo morgen";
                }
                
               
            }
        }
        protected void ddlNazivObroka_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvr = ((DropDownList)sender).NamingContainer as GridViewRow;
            if (gvr != null)
            {

                
                    var ddlNaziv = gvr.FindControl("ddlNazivObroka") as DropDownList;
                     Session["Vrijednost"] = ddlNaziv.SelectedValue;
                    if (ddlNaziv.SelectedValue == "Zajutrak")
                    {
                        gvr.Cells[2].Text = "Zajutrak";



                    }
                    else if (ddlNaziv.SelectedValue == "Rucak")
                    {
                        gvr.Cells[2].Text = "Rucak";


                    }
                    else
                    {
                        gvr.Cells[2].Text = "Vecera";

                    } 
                
            }

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
           
               

        }

        protected void GridView1_Init(object sender, EventArgs e)
        {
            
        }
    }
    
}