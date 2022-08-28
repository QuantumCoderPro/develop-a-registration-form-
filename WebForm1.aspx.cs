using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registerform
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(title.SelectedItem.Text + "</br>");
            Response.Write(name.Text + "</br>");
            Response.Write(dob.Text + "</br>");
            Response.Write(number.Text + "</br>");
            Response.Write(email.Text + "</br>");
            Response.Write(url.Text + "</br>");
            Response.Write(password.Text + "</br>");
            Response.Write(conpassword.Text + "</br>");
        }
    }
}