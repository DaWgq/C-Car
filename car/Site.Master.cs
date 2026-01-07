using System;

namespace carNews
{
    // 关键点：这里必须写 : System.Web.UI.MasterPage
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 根据登录状态显示/隐藏导航项
            if (Session["CurrentUser"] != null)
            {
                // 已登录：显示用户名和退出按钮，隐藏登录/注册
                lblUserStatus.Text = Session["CurrentUser"].ToString() + " 欢迎您！";
                liUserStatus.Visible = true;
                liLogout.Visible = true;
                liLogin.Visible = false;
                liRegister.Visible = false;
            }
            else
            {
                // 未登录：显示登录/注册，隐藏用户状态和退出
                liUserStatus.Visible = false;
                liLogout.Visible = false;
                liLogin.Visible = true;
                liRegister.Visible = true;
            }
        }

        // 退出登录
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();  // 清除所有 Session
            Response.Redirect("Default.aspx");
        }
    }
}