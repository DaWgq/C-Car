<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="carNews.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 顶部轮播图 -->
    <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image ID="imgBanner1" runat="server" ImageUrl="~/images/banner1.jpg" CssClass="d-block w-100 carousel-img" AlternateText="新能源汽车" />
                <div class="carousel-caption">
                    <h2>新能源汽车新时代</h2>
                    <p>聚焦绿色出行，探索未来科技</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:Image ID="imgBanner2" runat="server" ImageUrl="~/images/banner2.jpg" CssClass="d-block w-100 carousel-img" AlternateText="电动汽车充电" />
                <div class="carousel-caption">
                    <h2>充电基础设施全面升级</h2>
                    <p>全国充电桩突破300万个</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:Image ID="imgBanner3" runat="server" ImageUrl="~/images/banner3.jpg" CssClass="d-block w-100 carousel-img" AlternateText="智能驾驶" />
                <div class="carousel-caption">
                    <h2>智能驾驶引领未来</h2>
                    <p>L4级自动驾驶技术突破</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <!-- 快捷导航条 -->
    <div class="quick-nav">
        <div class="container">
            <div class="row text-center">
                <div class="col-3 col-md quick-nav-item" onclick="location.href='news1.aspx'" style="cursor:pointer;">
                    <i class="fas fa-car"></i>
                    <asp:Label ID="lblNav1" runat="server" Text="新车上市"></asp:Label>
                </div>
                <div class="col-3 col-md quick-nav-item" onclick="location.href='news2.aspx'" style="cursor:pointer;">
                    <i class="fas fa-bolt"></i>
                    <asp:Label ID="lblNav2" runat="server" Text="充电指南"></asp:Label>
                </div>
                <div class="col-3 col-md quick-nav-item" onclick="location.href='news3.aspx'" style="cursor:pointer;">
                    <i class="fas fa-battery-full"></i>
                    <asp:Label ID="lblNav3" runat="server" Text="电池技术"></asp:Label>
                </div>
                <div class="col-3 col-md quick-nav-item" onclick="location.href='news4.aspx'" style="cursor:pointer;">
                    <i class="fas fa-chart-line"></i>
                    <asp:Label ID="lblNav4" runat="server" Text="销量排行"></asp:Label>
                </div>
                <div class="col-3 col-md quick-nav-item d-none d-md-block" onclick="location.href='news2.aspx'" style="cursor:pointer;">
                    <i class="fas fa-leaf"></i>
                    <asp:Label ID="lblNav5" runat="server" Text="环保政策"></asp:Label>
                </div>
                <div class="col-3 col-md quick-nav-item d-none d-md-block" onclick="location.href='news1.aspx'" style="cursor:pointer;">
                    <i class="fas fa-tools"></i>
                    <asp:Label ID="lblNav6" runat="server" Text="维修保养"></asp:Label>
                </div>
            </div>
        </div>
    </div>

    <!-- 主内容区 -->
    <div class="container main-content">
        <div class="row">
            <!-- 左侧：行业动态 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="news-section">
                    <div class="section-header">
                        <h4><i class="fas fa-newspaper"></i> 行业动态</h4>
                        <a href="javascript:void(0);" class="more-link">更多>></a>
                    </div>
                    <ul class="news-list">
                        <li><a href="news1.aspx">比亚迪发布第五代DM技术，油耗低至2.9L</a></li>
                        <li><a href="news1.aspx">特斯拉Model 3焕新版正式上市</a></li>
                        <li><a href="news1.aspx">宁德时代发布神行超充电池</a></li>
                        <li><a href="news1.aspx">小米汽车SU7交付量突破10万台</a></li>
                        <li><a href="news1.aspx">蔚来换电站突破2500座</a></li>
                        <li><a href="news1.aspx">理想汽车月销量首次突破5万</a></li>
                    </ul>
                </div>
            </div>

            <!-- 中间：政策法规 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="news-section">
                    <div class="section-header section-header-green">
                        <h4><i class="fas fa-gavel"></i> 政策法规</h4>
                        <a href="javascript:void(0);" class="more-link">更多>></a>
                    </div>
                    <ul class="news-list">
                        <li><a href="news2.aspx">新能源汽车购置税减免政策延续至2027年</a></li>
                        <li><a href="news2.aspx">多地出台充电桩建设补贴新政</a></li>
                        <li><a href="news2.aspx">工信部发布智能网联汽车准入规范</a></li>
                        <li><a href="news2.aspx">北京新能源指标配置方案调整</a></li>
                        <li><a href="news2.aspx">上海发布新能源汽车产业发展规划</a></li>
                        <li><a href="news2.aspx">国家鼓励新能源汽车下乡</a></li>
                    </ul>
                </div>
            </div>

            <!-- 右侧：技术前沿 -->
            <div class="col-lg-4 col-md-12 mb-4">
                <div class="news-section">
                    <div class="section-header section-header-blue">
                        <h4><i class="fas fa-microchip"></i> 技术前沿</h4>
                        <a href="javascript:void(0);" class="more-link">更多>></a>
                    </div>
                    <ul class="news-list">
                        <li><a href="news1.aspx">固态电池量产进入倒计时</a></li>
                        <li><a href="news1.aspx">800V高压平台成为行业标配</a></li>
                        <li><a href="news2.aspx">激光雷达成本降至千元级别</a></li>
                        <li><a href="news2.aspx">车载芯片算力突破1000TOPS</a></li>
                        <li><a href="news1.aspx">无线充电技术取得重大突破</a></li>
                        <li><a href="news2.aspx">氢燃料电池汽车续航超1000公里</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 热门车型推荐 -->
        <div class="hot-cars-section">
            <div class="section-header section-header-orange">
                <h4><i class="fas fa-fire"></i> 热门车型推荐</h4>
                <a href="javascript:void(0);" class="more-link">更多车型>></a>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-6 mb-3">
                    <div class="car-card">
                        <asp:Image ID="imgCar1" runat="server" ImageUrl="~/images/car1.jpg" AlternateText="特斯拉Model 3" />
                        <div class="car-info">
                            <h5>特斯拉 Model 3</h5>
                            <p class="price">24.59-33.59万</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-6 mb-3">
                    <div class="car-card">
                        <asp:Image ID="imgCar2" runat="server" ImageUrl="~/images/car2.jpg" AlternateText="比亚迪汉" />
                        <div class="car-info">
                            <h5>比亚迪 汉EV</h5>
                            <p class="price">20.98-29.98万</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-6 mb-3">
                    <div class="car-card">
                        <asp:Image ID="imgCar3" runat="server" ImageUrl="~/images/car3.jpg" AlternateText="小鹏P7" />
                        <div class="car-info">
                            <h5>小鹏 P7</h5>
                            <p class="price">20.99-33.99万</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-6 mb-3">
                    <div class="car-card">
                        <asp:Image ID="imgCar4" runat="server" ImageUrl="~/images/car4.jpg" AlternateText="蔚来ES6" />
                        <div class="car-info">
                            <h5>蔚来 ES6</h5>
                            <p class="price">33.80-42.60万</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 数据库新闻 + 重要通知 -->
        <div class="row mt-4">
            <!-- 数据库新闻列表 -->
            <div class="col-lg-8 mb-4">
                <div class="news-section">
                    <div class="section-header">
                        <h4><i class="fas fa-database"></i> 最新资讯（数据库）</h4>
                        <a href="javascript:void(0);" class="more-link">更多>></a>
                    </div>
                    <asp:Repeater ID="rptNews" runat="server">
                        <ItemTemplate>
                            <div class="db-news-item">
                                <a href="news1.aspx">
                                    <span class="news-title"><%# Eval("Title") %></span>
                                    <span class="news-date"><%# Eval("PublishDate", "{0:MM-dd}") %></span>
                                </a>
                                <p class="news-summary"><%# Eval("Summary") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <!-- 重要通知 -->
            <div class="col-lg-4 mb-4">
                <div class="news-section notice-section">
                    <div class="section-header section-header-red">
                        <h4><i class="fas fa-bullhorn"></i> 重要通知</h4>
                    </div>
                    <ul class="notice-list">
                        <li><a href="news2.aspx">2026年新能源补贴政策解读</a></li>
                        <li><a href="news2.aspx">春节期间充电站运营时间</a></li>
                        <li><a href="news1.aspx">新用户注册送100元充电券</a></li>
                        <li><a href="news1.aspx">网站系统升级维护通知</a></li>
                        <li><a href="news2.aspx">投稿邮箱变更公告</a></li>
                    </ul>
                </div>

                <!-- 友情链接 -->
                <div class="news-section mt-3">
                    <div class="section-header section-header-gray">
                        <h4><i class="fas fa-link"></i> 友情链接</h4>
                    </div>
                    <div class="friend-links">
                        <asp:HyperLink ID="hlLink1" runat="server" NavigateUrl="javascript:void(0);">汽车之家</asp:HyperLink>
                        <asp:HyperLink ID="hlLink2" runat="server" NavigateUrl="javascript:void(0);">易车网</asp:HyperLink>
                        <asp:HyperLink ID="hlLink3" runat="server" NavigateUrl="javascript:void(0);">太平洋汽车</asp:HyperLink>
                        <asp:HyperLink ID="hlLink4" runat="server" NavigateUrl="javascript:void(0);">懂车帝</asp:HyperLink>
                        <asp:HyperLink ID="hlLink5" runat="server" NavigateUrl="javascript:void(0);">新能源汽车网</asp:HyperLink>
                        <asp:HyperLink ID="hlLink6" runat="server" NavigateUrl="javascript:void(0);">电动邦</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
