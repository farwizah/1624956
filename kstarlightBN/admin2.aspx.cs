using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kstarlightBN
{
    public partial class admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}