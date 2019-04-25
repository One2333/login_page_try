<%@ WebHandler Language="C#" Class="Handler.ashx.Handler" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using SqlHelper;
using System.Data.SqlClient;


namespace Handler.ashx
{
    public class Handler : IHttpHandler {

        public void ProcessRequest(HttpContext context) {
            string username = context.Request.Form["username"];
            string pwd = context.Request.Form["pwd"];
            Console.WriteLine("{0} and {1}", username, pwd);

            //string strSql = string.Format("select * from user where username='{0}' and pwd='{1}'",username,pwd);
            /*if (SqlHelper.SqlHelper.Exists(strSql)) {
                context.Response.Write("Enter correct!");
            }
            else {
                context.Response.Write("username or pwd is wrong!");
            }*/

            /*string constr = "server=localhost;User Id=root;password=;Database=test";
            MySqlConnection mycon = new MySqlConnection(constr);
            mycon.Open();
            string strSql = string.Format("select * from user where username='{0}' and pwd='{1}'",username,pwd);
            MySqlCommand mycmd = new MySqlCommand(strSql, mycon);
            if (mycmd.ExecuteNonQuery() > 0) {
                context.Response.Write("Enter correct!");
            }
            else {
                context.Response.Write("username or pwd is wrong!");
            }

            mycon.Close();*/

        }

        public bool IsReusable {
            get {
                return false;
            }
        }

    }

}