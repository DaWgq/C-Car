using System;
using System.Data.SqlClient; // 记得引用这个

namespace carNews
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uName = txtUsername.Text.Trim();
            string uPass = txtPassword.Text.Trim();

            // 数据库连接字符串 (和注册页一样)
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    // 查询用户名和密码是否匹配
                    string sql = "SELECT COUNT(*) FROM Users WHERE Username = @uName AND Password = @uPass";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@uName", uName);
                    cmd.Parameters.AddWithValue("@uPass", uPass);

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        // 登录成功！
                        // 1. 【试卷得分点】将状态保存在 Session 中
                        Session["CurrentUser"] = uName;

                        // 2. 跳转回首页
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "登录失败：用户名或密码错误";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "系统错误：" + ex.Message;
            }
        }
    }
}