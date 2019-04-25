<%@ WebHandler Language="C#" Class="Handler2" %>

using System;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;

public class Handler2 : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        string username = context.Request.Form["username"];
        string pwd = context.Request.Form["pwd"];
        string constr = "server=localhost;User Id=root;password=;Database=test";
        MySqlConnection mycon = new MySqlConnection(constr);
        mycon.Open();
        string strSql = string.Format("select * from user where username='{0}' and pwd='{1}'",username,pwd);
        MySqlCommand mycmd = new MySqlCommand(strSql, mycon);
        MySqlDataReader reader = mycmd.ExecuteReader();
        if (reader.HasRows) {
            context.Response.Write("Enter correct!");
        }
        else {
            context.Response.Write("username or pwd is wrong!");
        }

        mycon.Close();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}