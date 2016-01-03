using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

public partial class _Index: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["uName"] != null && Request["uPwd"] != null)
        {
            Response.Write(Request["uName"] + ",你好！<br/>");
            
        }

    }
}
