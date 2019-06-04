using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetikWeb
{
    public partial class UrediNamirnicu : System.Web.UI.Page
    {
        Repo r = new Repo();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void ddlTipNamirnice_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvr = ((DropDownList)sender).NamingContainer as GridViewRow;
            if (gvr != null)
            {

                var ddlTipNamirnice = gvr.FindControl("ddlTipNamirnice") as DropDownList;
                if (ddlTipNamirnice.SelectedValue == "Masti")
                {
                    gvr.Cells[2].Text = "2";



                }
                else if (ddlTipNamirnice.SelectedValue == "Ugljikohidrati")
                {
                    gvr.Cells[2].Text = "1";


                }
                else
                {
                    gvr.Cells[2].Text = "3";

                }
            }

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var ddl = e.Row.FindControl("ddlTipNamirnice") as DropDownList;


                if (ddl != null)
                {
                    ddl.DataSource = new List<string>() { "Ugljikohidrati", "Masti", "Bjelančevine" };

                    ddl.DataBind();
                }

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView gv1 = (GridView)sender;
            GridViewRow gvr1 = (GridViewRow)gv1.Rows[e.RowIndex];
            
        }
    }
}