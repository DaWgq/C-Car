<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="news1.aspx.cs" Inherits="carNews.news1" %>

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
    <div style="background: linear-gradient(135deg, #1a5f2a 0%, #2d8f4e 100%); padding: 40px 0; text-align: center; color: #fff;">
        <div class="container">
            <h1><i class="fas fa-newspaper"></i> 行业资讯</h1>
            <p>了解新能源汽车行业最新动态</p>
        </div>
    </div>

    <div class="container" style="padding: 30px 15px; background: #f5f5f5;">
        <div class="row">
            <!-- 文章主体 -->
            <div class="col-lg-8">
                <div class="article-content">
                    <h1 class="article-title">
                        <asp:Label ID="lblTitle" runat="server" Text="比亚迪发布第五代DM技术，油耗低至2.9L"></asp:Label>
                    </h1>
                    <div class="article-meta">
                        <i class="fas fa-user"></i> 作者：汽车观察员 &nbsp;&nbsp;
                        <i class="fas fa-calendar"></i> 发布时间：<asp:Label ID="lblDate" runat="server" Text="2026-01-05"></asp:Label> &nbsp;&nbsp;
                        <i class="fas fa-eye"></i> 浏览：<asp:Label ID="lblViews" runat="server" Text="1258"></asp:Label>次
                    </div>
                    
                    <div class="article-body">
                        <asp:Image ID="imgArticle" runat="server" ImageUrl="~/images/banner1.jpg" CssClass="article-img" AlternateText="比亚迪DM技术" />
                        
                        <p>2026年1月，比亚迪正式发布了第五代DM混动技术，这是比亚迪在混动领域的又一次重大突破。新一代DM技术将亏电油耗降至惊人的2.9L/100km，综合续航里程超过2000公里，彻底解决了用户的里程焦虑问题。</p>
                        
                        <p>第五代DM技术采用了全新的插混专用高效发动机，热效率高达46.5%，是目前量产发动机中效率最高的。同时，新一代EHS电混系统采用了更先进的功率分流技术，实现了动力与能耗的完美平衡。</p>
                        
                        <p>在电池技术方面，比亚迪采用了最新的刀片电池2.0技术，能量密度提升30%，充电速度提升50%。支持快充的情况下，30分钟即可从20%充至80%，大大缩短了补能时间。</p>
                        
                        <p>业内专家表示，比亚迪第五代DM技术的发布，标志着中国新能源汽车技术已经走在世界前列。这项技术不仅将推动比亚迪自身销量的增长，也将带动整个行业的技术进步。</p>
                        
                        <p>据悉，搭载第五代DM技术的首款车型将于2026年第二季度上市，预计售价在15-25万元区间，将直接与合资品牌的燃油车展开竞争。</p>
                    </div>

                    <div class="mt-4 pt-3 border-top">
                        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="Default.aspx" CssClass="btn btn-success">
                            <i class="fas fa-arrow-left"></i> 返回首页
                        </asp:HyperLink>
                        <asp:HyperLink ID="hlNext" runat="server" NavigateUrl="news2.aspx" CssClass="btn btn-outline-success ms-2">
                            下一篇 <i class="fas fa-arrow-right"></i>
                        </asp:HyperLink>
                    </div>
                </div>
            </div>

            <!-- 侧边栏 -->
            <div class="col-lg-4">
                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-fire"></i> 热门文章</h4>
                    <ul class="related-list">
                        <li><a href="news2.aspx">特斯拉Model 3焕新版正式上市</a></li>
                        <li><a href="news1.aspx">宁德时代发布神行超充电池</a></li>
                        <li><a href="news2.aspx">小米汽车SU7交付量突破10万台</a></li>
                        <li><a href="news1.aspx">蔚来换电站突破2500座</a></li>
                        <li><a href="news2.aspx">理想汽车月销量首次突破5万</a></li>
                    </ul>
                </div>

                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-tags"></i> 热门标签</h4>
                    <div>
                        <asp:Label ID="lblTag1" runat="server" Text="比亚迪" CssClass="badge bg-success me-1 mb-1" style="font-size:0.9rem;"></asp:Label>
                        <asp:Label ID="lblTag2" runat="server" Text="特斯拉" CssClass="badge bg-primary me-1 mb-1" style="font-size:0.9rem;"></asp:Label>
                        <asp:Label ID="lblTag3" runat="server" Text="电池技术" CssClass="badge bg-info me-1 mb-1" style="font-size:0.9rem;"></asp:Label>
                        <asp:Label ID="lblTag4" runat="server" Text="充电桩" CssClass="badge bg-warning text-dark me-1 mb-1" style="font-size:0.9rem;"></asp:Label>
                        <asp:Label ID="lblTag5" runat="server" Text="智能驾驶" CssClass="badge bg-danger me-1 mb-1" style="font-size:0.9rem;"></asp:Label>
                    </div>
                </div>

                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-image"></i> 精彩图片</h4>
                    <asp:Image ID="imgSide1" runat="server" ImageUrl="~/images/car1.jpg" CssClass="img-fluid rounded mb-2" AlternateText="新能源汽车" />
                    <asp:Image ID="imgSide2" runat="server" ImageUrl="~/images/car2.jpg" CssClass="img-fluid rounded" AlternateText="新能源汽车" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
