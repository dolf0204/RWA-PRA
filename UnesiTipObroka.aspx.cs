using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiabetikWeb
{
    public partial class UnesiTipObroka : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserted1(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("~/UnesiTipObroka.aspx");

        }
    }
}