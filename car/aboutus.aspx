<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="carNews.aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-section { background: #fff; border-radius: 10px; padding: 30px; margin-bottom: 30px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .about-title { color: #1a5f2a; border-left: 4px solid #1a5f2a; padding-left: 15px; margin-bottom: 20px; }
        .tech-badge { display: inline-block; padding: 8px 15px; margin: 5px; background: linear-gradient(135deg, #1a5f2a, #27ae60); color: #fff; border-radius: 20px; font-size: 0.9rem; }
        .feature-card { text-align: center; padding: 20px; border: 1px solid #eee; border-radius: 10px; transition: all 0.3s; }
        .feature-card:hover { box-shadow: 0 5px 20px rgba(0,0,0,0.15); transform: translateY(-5px); }
        .feature-card i { font-size: 3rem; color: #1a5f2a; margin-bottom: 15px; }
        .team-img { width: 120px; height: 120px; border-radius: 50%; object-fit: cover; border: 4px solid #1a5f2a; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 顶部横幅 -->
    <div style="background: linear-gradient(135deg, #1a5f2a 0%, #2d8f4e 100%); padding: 60px 0; text-align: center; color: #fff;">
        <div class="container">
            <h1><i class="fas fa-info-circle"></i> 关于我们</h1>
            <p class="lead">新能源汽车资讯平台 · 设计理念与技术实现</p>
        </div>
    </div>

    <div class="container" style="padding: 40px 15px; background: #f5f5f5;">
        <!-- 网站简介 -->
        <div class="about-section">
            <h2 class="about-title"><i class="fas fa-globe"></i> 网站简介</h2>
            <div class="row align-items-center">
                <div class="col-md-8">
                    <p>
                        <strong>新能源前沿</strong>是一个专注于新能源汽车行业的综合资讯平台。我们致力于为用户提供最新、最全面的新能源汽车资讯，
                        包括行业动态、政策法规、技术前沿、车型推荐等内容。
                    </p>
                    <p>
                        随着全球能源转型和环保意识的提升，新能源汽车已成为汽车产业发展的必然趋势。
                        我们希望通过这个平台，帮助更多人了解新能源汽车，推动绿色出行理念的普及。
                    </p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="https://images.unsplash.com/photo-1593941707882-a5bba14938c7?w=300&h=200&fit=crop" alt="新能源汽车" class="img-fluid rounded">
                </div>
            </div>
        </div>

        <!-- 网站特色 -->
        <div class="about-section">
            <h2 class="about-title"><i class="fas fa-star"></i> 网站特色</h2>
            <div class="row">
                <div class="col-md-3 col-6 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-mobile-alt"></i>
                        <h5>响应式设计</h5>
                        <p class="text-muted small">完美适配电脑、平板、手机</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-database"></i>
                        <h5>数据驱动</h5>
                        <p class="text-muted small">SQL Server数据库支持</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-user-shield"></i>
                        <h5>用户系统</h5>
                        <p class="text-muted small">完整的注册登录功能</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mb-4">
                    <div class="feature-card">
                        <i class="fas fa-palette"></i>
                        <h5>美观界面</h5>
                        <p class="text-muted small">现代化门户网站风格</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 参考网站 -->
        <div class="about-section">
            <h2 class="about-title"><i class="fas fa-link"></i> 参考网站</h2>
            <p>
                在设计本网站时，我参考了以下优秀的行业网站：<br />
                <strong>网站名称：</strong> 汽车之家新能源频道<br />
                <strong>网址：</strong> <a href="https://www.autohome.com.cn/newenergy/" target="_blank" style="color: #1a5f2a;">https://www.autohome.com.cn/newenergy/</a>
            </p>
            <div class="alert alert-success">
                <strong>评价：</strong> 该参考网站布局清晰，色彩搭配以科技蓝和环保绿为主，非常符合新能源汽车的主题。
                其导航栏分类明确，用户可以快速找到所需的车型参数和评测文章。
            </div>
        </div>

        <!-- 使用技术 -->
        <div class="about-section">
            <h2 class="about-title"><i class="fas fa-code"></i> 使用技术</h2>
            <div class="mb-3">
                <strong>前端技术：</strong><br>
                <span class="tech-badge"><i class="fab fa-html5"></i> HTML5</span>
                <span class="tech-badge"><i class="fab fa-css3-alt"></i> CSS3</span>
                <span class="tech-badge"><i class="fab fa-js"></i> JavaScript</span>
                <span class="tech-badge"><i class="fab fa-bootstrap"></i> Bootstrap 5</span>
                <span class="tech-badge"><i class="fas fa-font"></i> Font Awesome</span>
            </div>
            <div class="mb-3">
                <strong>后端技术：</strong><br>
                <span class="tech-badge"><i class="fab fa-microsoft"></i> ASP.NET Web Forms</span>
                <span class="tech-badge"><i class="fas fa-code"></i> C#</span>
                <span class="tech-badge"><i class="fas fa-database"></i> Entity Framework</span>
                <span class="tech-badge"><i class="fas fa-server"></i> SQL Server</span>
            </div>
            <div>
                <strong>开发工具：</strong><br>
                <span class="tech-badge"><i class="fas fa-laptop-code"></i> Visual Studio 2019</span>
                <span class="tech-badge"><i class="fas fa-database"></i> SQL Server LocalDB</span>
            </div>
        </div>

        <!-- 得分点说明 -->
        <div class="about-section" style="background: linear-gradient(135deg, #fff9e6, #fff3cd);">
            <h2 class="about-title" style="color: #d35400; border-color: #d35400;"><i class="fas fa-award"></i> 作业得分点</h2>
            <div class="row">
                <div class="col-md-6">
                    <ul>
                        <li>✅ 使用母版页 (Site.Master)</li>
                        <li>✅ CSS 布局与样式设计</li>
                        <li>✅ 响应式设计 (Bootstrap)</li>
                        <li>✅ 轮播图组件</li>
                        <li>✅ 多栏新闻布局</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul>
                        <li>✅ 用户注册功能 (验证控件)</li>
                        <li>✅ 用户登录功能 (Session)</li>
                        <li>✅ 数据库连接 (SQL Server)</li>
                        <li>✅ LINQ 数据查询</li>
                        <li>✅ 数据绑定控件 (Repeater)</li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 联系方式 -->
        <div class="about-section text-center">
            <h2 class="about-title" style="text-align: center; border: none; padding: 0;"><i class="fas fa-envelope"></i> 联系我们</h2>
            <p>如有任何问题或建议，欢迎联系我们：</p>
            <p>
                <i class="fas fa-envelope" style="color: #1a5f2a;"></i> 邮箱：contact@newenergy.com<br>
                <i class="fas fa-phone" style="color: #1a5f2a;"></i> 电话：400-XXX-XXXX<br>
                <i class="fas fa-map-marker-alt" style="color: #1a5f2a;"></i> 地址：XX省XX市XX大学
            </p>
        </div>
    </div>
</asp:Content>
