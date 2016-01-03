<%@ Application Language="C#" %>
<%@ Import Namespace=" System.IO" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //在应用程序启动时运行的代码
        int count = 0;
       
        string filePath = Server.MapPath("counter.txt");
        StreamReader sr = File.OpenText(filePath);
        count = int.Parse(sr.ReadLine());
        sr.Close();
        
        Application.Lock();
        Application["num"] = count;
        Application["cnum"] =0;
        Application.UnLock();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        ////在应用程序关闭时运行的代码
        
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        //在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e) 
    {
        //在新会话启动时运行的代码
        Application.Lock(); 
        Application["num"] =Convert.ToInt32(Application["num"]) + 1;
        Application["cnum"] = Convert.ToInt32(Application["cnum"]) + 1;
        Application.UnLock();
        
        string filepath = Server.MapPath("counter.txt");
        StreamWriter sw = new StreamWriter(filepath, false);
        sw.WriteLine(Convert.ToInt32(Application["num"]));
        sw.Close();
        

    }

    void Session_End(object sender, EventArgs e) 
    {
        
        Application.Lock();
        Application["cnum"] = Convert.ToInt32(Application["cnum"]) - 1;
        Application.UnLock();

    } 
       
</script>
