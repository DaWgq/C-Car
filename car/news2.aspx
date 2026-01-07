<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="news2.aspx.cs" Inherits="carNews.news2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .article-content { background: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .article-title { color: #1a5f2a; font-size: 1.8rem; margin-bottom: 15px; }
        .article-meta { color: #999; font-size: 0.9rem; margin-bottom: 20px; padding-bottom: 15px; border-bottom: 1px solid #eee; }
        .article-body { line-height: 1.8; color: #333; }
        .article-body p { margin-bottom: 15px; text-indent: 2em; }
        .article-img { max-width: 100%; border-radius: 10px; margin: 20px 0; }
        .sidebar-section { background: #fff; border-radius: 10px; padding: 20px; margin-bottom: 20px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .sidebar-title { color: #1a5f2a; font-size: 1.1rem; border-bottom: 2px solid #1a5f2a; padding-bottom: 10px; margin-bottom: 15px; }
        .related-list { list-style: none; padding: 0; margin: 0; }
        .related-list li { padding: 8px 0; border-bottom: 1px dashed #eee; }
        .related-list li:last-child { border-bottom: none; }
        .related-list a { color: #333; text-decoration: none; font-size: 0.9rem; }
        .related-list a:hover { color: #1a5f2a; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 页面标题 -->
    <div style="background: linear-gradient(135deg, #2c3e50 0%, #3498db 100%); padding: 40px 0; text-align: center; color: #fff;">
        <div class="container">
            <h1><i class="fas fa-gavel"></i> 政策解读</h1>
            <p>新能源汽车政策法规深度解析</p>
        </div>
    </div>

    <div class="container" style="padding: 30px 15px; background: #f5f5f5;">
        <div class="row">
            <!-- 文章主体 -->
            <div class="col-lg-8">
                <div class="article-content">
                    <h1 class="article-title">
                        <asp:Label ID="lblTitle" runat="server" Text="新能源汽车购置税减免政策延续至2027年"></asp:Label>
                    </h1>
                    <div class="article-meta">
                        <i class="fas fa-user"></i> 作者：政策分析师 &nbsp;&nbsp;
                        <i class="fas fa-calendar"></i> 发布时间：<asp:Label ID="lblDate" runat="server" Text="2026-01-03"></asp:Label> &nbsp;&nbsp;
                        <i class="fas fa-eye"></i> 浏览：<asp:Label ID="lblViews" runat="server" Text="2356"></asp:Label>次
                    </div>
                    
                    <div class="article-body">
                        <asp:Image ID="imgArticle" runat="server" ImageUrl="~/images/banner2.jpg" CssClass="article-img" AlternateText="新能源政策" />
                        
                        <p>近日，财政部、税务总局、工业和信息化部联合发布公告，明确新能源汽车车辆购置税减免政策将延续至2027年12月31日。这一政策的延续，将继续为新能源汽车市场的发展提供有力支持。</p>
                        
                        <p>根据新政策，2024年1月1日至2025年12月31日期间购置的新能源汽车免征车辆购置税，每辆新能源乘用车免税额不超过3万元；2026年1月1日至2027年12月31日期间购置的新能源汽车减半征收车辆购置税，每辆新能源乘用车减税额不超过1.5万元。</p>
                        
                        <p>业内人士分析，购置税减免政策的延续，将有效降低消费者购买新能源汽车的成本，进一步刺激市场需求。以一辆售价20万元的新能源汽车为例，消费者可节省约1.77万元的购置税。</p>
                        
                        <p>此外，各地方政府也在积极出台配套政策。北京、上海、广州、深圳等一线城市纷纷推出新能源汽车专属号牌政策，新能源汽车可享受不限行、不限购等优惠措施。</p>
                        
                        <p>专家表示，随着政策的持续支持和技术的不断进步，预计到2027年，中国新能源汽车年销量将突破1500万辆，市场渗透率将超过50%，新能源汽车将真正成为汽车市场的主流选择。</p>
                    </div>

                    <div class="mt-4 pt-3 border-top">
                        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="Default.aspx" CssClass="btn btn-primary">
                            <i class="fas fa-arrow-left"></i> 返回首页
                        </asp:HyperLink>
                        <asp:HyperLink ID="hlPrev" runat="server" NavigateUrl="news1.aspx" CssClass="btn btn-outline-primary ms-2">
                            <i class="fas fa-arrow-left"></i> 上一篇
                        </asp:HyperLink>
                    </div>
                </div>
            </div>

            <!-- 侧边栏 -->
            <div class="col-lg-4">
                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-file-alt"></i> 相关政策</h4>
                    <ul class="related-list">
                        <li><a href="news1.aspx">多地出台充电桩建设补贴新政</a></li>
                        <li><a href="news2.aspx">工信部发布智能网联汽车准入规范</a></li>
                        <li><a href="news1.aspx">北京新能源指标配置方案调整</a></li>
                        <li><a href="news2.aspx">上海发布新能源汽车产业发展规划</a></li>
                        <li><a href="news1.aspx">国家鼓励新能源汽车下乡</a></li>
                    </ul>
                </div>

                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-chart-pie"></i> 数据统计</h4>
                    <div class="text-center">
                        <p><strong style="font-size: 2rem; color: #1a5f2a;">1200万+</strong></p>
                        <p class="text-muted">2025年新能源汽车销量</p>
                        <hr>
                        <p><strong style="font-size: 2rem; color: #3498db;">45%</strong></p>
                        <p class="text-muted">新能源汽车市场渗透率</p>
                    </div>
                </div>

                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-image"></i> 精彩图片</h4>
                    <asp:Image ID="imgSide1" runat="server" ImageUrl="~/images/car3.jpg" CssClass="img-fluid rounded mb-2" AlternateText="新能源汽车" />
                    <asp:Image ID="imgSide2" runat="server" ImageUrl="~/images/car4.jpg" CssClass="img-fluid rounded" AlternateText="新能源汽车" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
