using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Car_Rental
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Login"] != null)
            {
                lbluser.Text = Session["Login"].ToString();
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
                HyperLink3.Visible = false;
                HyperLink4.Visible = true;
                Button1.Visible = true;
            }
            else
            {
                if(Session["Admin"] != null)
                {
                    lbluser.Text = Session["Admin"].ToString();
                    HyperLink1.Visible = false;
                    HyperLink2.Visible = false;
                    HyperLink3.Visible = false;
                    HyperLink4.Visible = false;
                    Button1.Visible = true;
                }
                else
                {
                    lbluser.Text = "";
                    HyperLink1.Visible = true;
                    HyperLink2.Visible = true;
                    HyperLink3.Visible = true;
                    HyperLink4.Visible = false;
                    Button1.Visible = false;
                }
               

            }
            /*
            else
            {
                lbluser.Text = "";
                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
                HyperLink3.Visible = true;
                HyperLink4.Visible = false;
                Button1.Visible = false;
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Homepage.aspx");
            lbluser.Text = "Logged out successfully ";
        }
    }
}