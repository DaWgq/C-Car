using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // 必须引用这个

namespace carNews
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // 1. 获取输入
            string uName = txtUsername.Text.Trim();
            string uPass = txtPassword.Text.Trim();

            // 2. 简单的数据库连接字符串 (针对 LocalDB 在 App_Data 文件夹的情况)
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    // 3. 检查用户名是否已存在
                    string checkSql = "SELECT COUNT(*) FROM Users WHERE Username = @uName";
                    SqlCommand checkCmd = new SqlCommand(checkSql, conn);
                    checkCmd.Parameters.AddWithValue("@uName", uName);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        lblMsg.Text = "注册失败：该用户名已被使用！";
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        return;
                    }

                    // 4. 插入新用户
                    string sql = "INSERT INTO Users (Username, Password) VALUES (@uName, @uPass)";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@uName", uName);
                    cmd.Parameters.AddWithValue("@uPass", uPass);

                    cmd.ExecuteNonQuery();

                    // 5. 注册成功
                    lblMsg.Text = "注册成功！正在跳转到登录页...";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                    // 延迟 2秒跳转 (为了让用户看到提示) - 实际 WebForms 通常直接跳转
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "系统错误：" + ex.Message;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}