<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="news1.aspx.cs" Inherits="carNews.news1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/news.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="news-page-header">
        <div class="container">
            <h1><i class="fas fa-newspaper"></i> 行业资讯</h1>
            <p>了解新能源汽车行业最新动态</p>
        </div>
    </div>

    <div class="container news-container">
        <div class="row">
            <div class="col-lg-8">
                <div class="article-content">
                    <h1 class="article-title">比亚迪发布第五代DM技术 油耗低至2.9L</h1>
                    <div class="article-meta">
                        <i class="fas fa-user"></i> 作者：汽车观察员
                        <i class="fas fa-calendar"></i> 发布时间：2026-01-05
                        <i class="fas fa-eye"></i> 浏览：1258次
                    </div>
                    
                    <div class="article-body">
                        <asp:Image ID="imgArticle" runat="server" ImageUrl="~/images/banner1.jpg" CssClass="article-img" AlternateText="新能源汽车" />
                        
                        <p>2026年1月，比亚迪正式发布了第五代DM混动技术，这是比亚迪在混动领域的又一次重大突破。新一代DM技术将亏电油耗降至惊人的2.9L每百公里，综合续航里程超过2000公里，彻底解决了用户的里程焦虑问题。</p>
                        
                        <p>第五代DM技术采用了全新的插混专用高效发动机，热效率高达46.5，是目前量产发动机中效率最高的。同时，新一代EHS电混系统采用了更先进的功率分流技术，实现了动力与能耗的完美平衡。</p>
                        
                        <p>在电池技术方面，比亚迪采用了最新的刀片电池2.0技术，能量密度大幅提升，充电速度显著加快。支持快充的情况下，30分钟即可完成快速补能，大大缩短了充电时间。</p>
                        
                        <p>业内专家表示，比亚迪第五代DM技术的发布，标志着中国新能源汽车技术已经走在世界前列。这项技术不仅将推动比亚迪自身销量的增长，也将带动整个行业的技术进步。</p>
                        
                        <p>据悉，搭载第五代DM技术的首款车型将于2026年第二季度上市，预计售价在15到25万元区间，将直接与合资品牌的燃油车展开竞争。</p>
                    </div>

                    <div class="article-nav">
                        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="Default.aspx" CssClass="btn btn-primary">
                            <i class="fas fa-arrow-left"></i> 返回首页
                        </asp:HyperLink>
                        <asp:HyperLink ID="hlNext" runat="server" NavigateUrl="news2.aspx" CssClass="btn btn-outline-primary ms-2">
                            下一篇 <i class="fas fa-arrow-right"></i>
                        </asp:HyperLink>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-fire"></i> 热门文章</h4>
                    <ul class="related-list">
                        <li><a href="news2.aspx">特斯拉Model 3焕新版正式上市</a></li>
                        <li><a href="news3.aspx">宁德时代发布神行超充电池</a></li>
                        <li><a href="news4.aspx">小米汽车SU7交付量突破10万台</a></li>
                        <li><a href="news2.aspx">蔚来换电站突破2500座</a></li>
                        <li><a href="news3.aspx">理想汽车月销量首次突破5万</a></li>
                    </ul>
                </div>

                <div class="sidebar-section">
                    <h4 class="sidebar-title"><i class="fas fa-image"></i> 精彩图片</h4>
                    <asp:Image ID="imgSide1" runat="server" ImageUrl="~/images/car1.jpg" CssClass="img-fluid rounded mb-2" AlternateText="汽车图片" />
                    <asp:Image ID="imgSide2" runat="server" ImageUrl="~/images/car2.jpg" CssClass="img-fluid rounded" AlternateText="汽车图片" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
