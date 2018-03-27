using System;

public partial class Time : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		Response.Write( DateTime.Now.Hour + ":" + DateTime.Now.Minute + ":" + DateTime.Now.Second );
    }
}
