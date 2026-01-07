using car;
using System;
using System.Collections.Generic;
using System.Linq; // 必须引用 LINQ
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carNews
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNews();
            }
        }

        private void BindNews()
        {
            // Database1Entities 是刚才第二步自动生成的连接对象名称
            using (var db = new Database1Entities())
            {
                // 【试卷得分点】使用 LINQ 查询数据
                // 意思：从 News 表里取数据，按发布时间倒序排列，取前 5 条
                var newsList = (from n in db.News
                                orderby n.PublishDate descending
                                select n).Take(5).ToList();

                // 【试卷得分点】数据绑定控件的使用
                rptNews.DataSource = newsList;
                rptNews.DataBind();
            }
        }
    }
}