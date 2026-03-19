<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>李想 · 个人简历 | 会计学（司法会计方向）</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        body {
            background: #f0f2f5;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            padding: 2rem 1rem;
        }

        .container {
            max-width: 1000px;
            width: 100%;
            background: white;
            border-radius: 32px;
            box-shadow: 0 25px 50px -12px rgba(0,0,0,0.25);
            overflow: hidden;
            position: relative;
        }

        /* 语言切换按钮 */
        .lang-toggle {
            position: absolute;
            top: 24px;
            right: 30px;
            z-index: 100;
            display: flex;
            gap: 12px;
            background: rgba(255,255,255,0.9);
            padding: 6px;
            border-radius: 40px;
            backdrop-filter: blur(8px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }

        .lang-btn {
            padding: 8px 20px;
            border: none;
            border-radius: 30px;
            background: transparent;
            color: #1e293b;
            font-weight: 600;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.2s;
        }

        .lang-btn.active {
            background: #2563eb;
            color: white;
        }

        /* 头部区域 - 深色渐变 */
        .header {
            background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
            color: white;
            padding: 3rem 3rem 2.5rem;
            position: relative;
        }

        .header::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #3b82f6, #8b5cf6, #ec4899);
        }

        .name {
            font-size: 3.2rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            margin-bottom: 0.5rem;
            line-height: 1.2;
        }

        .school {
            font-size: 1.3rem;
            color: #cbd5e1;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        .research-interest {
            font-size: 1.1rem;
            color: #94a3b8;
            margin-top: 0.5rem;
            font-style: italic;
            border-left: 3px solid #3b82f6;
            padding-left: 1rem;
        }

        .contact {
            margin-top: 1.5rem;
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .contact-item {
            display: flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,0.08);
            padding: 8px 18px;
            border-radius: 40px;
            font-size: 0.95rem;
            color: #e2e8f0;
            border: 1px solid rgba(255,255,255,0.1);
            backdrop-filter: blur(4px);
        }

        .contact-item i {
            font-size: 1.1rem;
            color: #3b82f6;
        }

        /* 主要内容区域 */
        .content {
            padding: 2.5rem 3rem;
            background: white;
        }

        .section {
            margin-bottom: 2.5rem;
        }

        .section-title {
            font-size: 1.4rem;
            font-weight: 600;
            color: #0f172a;
            margin-bottom: 1.2rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            border-bottom: 3px solid #2563eb;
            padding-bottom: 0.5rem;
        }

        .section-title span {
            background: #2563eb;
            color: white;
            width: 28px;
            height: 28px;
            border-radius: 8px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 0.9rem;
        }

        /* 个人简介 */
        .profile-text {
            line-height: 1.8;
            color: #334155;
            font-size: 1.05rem;
            background: #f8fafc;
            padding: 1.5rem;
            border-radius: 20px;
            border-left: 4px solid #2563eb;
        }

        /* 技能标签 - 彩色设计 */
        .skills-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .skill-tag {
            padding: 8px 20px;
            border-radius: 30px;
            font-weight: 500;
            font-size: 0.95rem;
            transition: all 0.2s;
            background: #f1f5f9;
            color: #1e293b;
            border: 1px solid #e2e8f0;
        }

        .skill-tag:hover {
            background: #2563eb;
            color: white;
            border-color: #2563eb;
            transform: translateY(-2px);
            box-shadow: 0 10px 20px -10px #2563eb;
        }

        /* 教育经历卡片 */
        .education-grid {
            display: grid;
            gap: 1.2rem;
        }

        .education-item {
            background: #f8fafc;
            border-radius: 20px;
            padding: 1.2rem 1.5rem;
            border: 1px solid #e2e8f0;
            transition: all 0.2s;
        }

        .education-item:hover {
            border-color: #2563eb;
            box-shadow: 0 4px 12px rgba(37,99,235,0.1);
        }

        .edu-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            margin-bottom: 0.5rem;
        }

        .edu-school {
            font-weight: 700;
            font-size: 1.2rem;
            color: #0f172a;
        }

        .edu-date {
            color: #2563eb;
            font-weight: 500;
            background: #dbeafe;
            padding: 4px 12px;
            border-radius: 30px;
            font-size: 0.85rem;
        }

        .edu-major {
            color: #475569;
            font-weight: 600;
            margin: 0.3rem 0;
        }

        .edu-detail {
            color: #64748b;
            font-size: 0.95rem;
            line-height: 1.6;
            margin-top: 0.5rem;
            padding-top: 0.5rem;
            border-top: 1px dashed #cbd5e1;
        }

        .gpa-highlight {
            color: #2563eb;
            font-weight: 600;
            background: #dbeafe;
            padding: 2px 8px;
            border-radius: 20px;
            font-size: 0.85rem;
            margin-left: 8px;
        }

        /* 课程列表 */
        .course-list {
            list-style: none;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 10px 15px;
        }

        .course-list li {
            color: #334155;
            padding: 8px 12px;
            background: #f8fafc;
            border-radius: 12px;
            border: 1px solid #e2e8f0;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
        }

        .course-list li::before {
            content: "📚";
            margin-right: 8px;
            font-size: 0.9rem;
        }

        /* 社团和组织经历 */
        .experience-item {
            background: #f8fafc;
            border-radius: 16px;
            padding: 1.2rem;
            margin-bottom: 1rem;
            border: 1px solid #e2e8f0;
        }

        .exp-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            margin-bottom: 0.8rem;
        }

        .exp-title {
            font-weight: 700;
            color: #0f172a;
            font-size: 1.1rem;
        }

        .exp-role {
            color: #2563eb;
            font-weight: 600;
        }

        .exp-date {
            color: #64748b;
            font-size: 0.9rem;
        }

        .exp-desc {
            color: #475569;
            line-height: 1.6;
            font-size: 0.95rem;
            padding-left: 0.5rem;
            border-left: 2px solid #2563eb;
        }

        .exp-desc ul {
            list-style: none;
            margin-top: 0.5rem;
        }

        .exp-desc li {
            margin-bottom: 0.3rem;
            display: flex;
            align-items: baseline;
            gap: 8px;
        }

        .exp-desc li::before {
            content: "•";
            color: #2563eb;
            font-weight: bold;
        }

        /* 荣誉奖项 */
        .awards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 12px;
        }

        .award-item {
            background: linear-gradient(135deg, #f8fafc, #f1f5f9);
            padding: 1rem;
            border-radius: 16px;
            border: 1px solid #e2e8f0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .award-name {
            font-weight: 500;
            color: #0f172a;
        }

        .award-date {
            color: #2563eb;
            font-size: 0.85rem;
            background: #dbeafe;
            padding: 2px 10px;
            border-radius: 30px;
        }

        /* 最后更新 */
        .last-updated {
            margin-top: 2rem;
            text-align: right;
            color: #94a3b8;
            font-size: 0.9rem;
            font-style: italic;
            border-top: 1px solid #e2e8f0;
            padding-top: 1rem;
        }

        /* 语言切换 */
        .zh {
            display: none;
        }

        /* 响应式 */
        @media (max-width: 768px) {
            .header, .content {
                padding: 2rem 1.5rem;
            }
            
            .name {
                font-size: 2.5rem;
            }
            
            .lang-toggle {
                top: 16px;
                right: 16px;
            }
            
            .contact {
                flex-direction: column;
                gap: 10px;
            }
            
            .course-list {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- 语言切换按钮 -->
        <div class="lang-toggle">
            <button class="lang-btn active" onclick="switchLanguage('en', event)">EN</button>
            <button class="lang-btn" onclick="switchLanguage('zh', event)">中文</button>
        </div>

        <!-- ========== 英文版本 ========== -->
        <!-- 头部信息 - 英文 -->
        <div class="header en">
            <div class="name">LI XIANG</div>
            <div class="school">BBA in Accounting (Forensic Accounting) · East China University of Political Science and Law</div>
            <div class="research-interest">Research Interests: Forensic Accounting, Economic Law, Applied Economics</div>
            <div class="contact">
                <span class="contact-item">📧 ttttunod@outlook.com</span>
                <span class="contact-item">📱 135-0172-4980</span>
                <span class="contact-item">📍 Shanghai, China</span>
                <span class="contact-item">🌐 IELTS 7.5 | CET-6 590+</span>
            </div>
        </div>

        <!-- 主要内容 - 英文 -->
        <div class="content en">
            <!-- Profile -->
            <div class="section">
                <h2 class="section-title"><span>📋</span> Profile</h2>
                <p class="profile-text">
                    Highly motivated accounting student with a specialized focus on forensic accounting. 
                    Top 1% of the cohort with a GPA of 3.83/4.0. Experienced in cross-cultural academic 
                    environments through exchange program at the University of Fribourg, Switzerland. 
                    Proven leadership in student organizations with excellent communication and organizational skills. 
                    Seeking opportunities to apply analytical skills and accounting expertise in professional settings.
                </p>
            </div>

            <!-- Skills -->
            <div class="section">
                <h2 class="section-title"><span>⚡</span> Skills</h2>
                <div class="skills-grid">
                    <span class="skill-tag">Excel</span>
                    <span class="skill-tag">PowerPoint</span>
                    <span class="skill-tag">Word</span>
                    <span class="skill-tag">Data Analysis</span>
                    <span class="skill-tag">Financial Accounting</span>
                    <span class="skill-tag">Tax Law</span>
                    <span class="skill-tag">Economic Law</span>
                    <span class="skill-tag">Legal English</span>
                    <span class="skill-tag">Academic Writing</span>
                    <span class="skill-tag">Statistics</span>
                    <span class="skill-tag">Python (Basic)</span>
                    <span class="skill-tag">Content Creation</span>
                    <span class="skill-tag">Team Leadership</span>
                    <span class="skill-tag">Event Planning</span>
                </div>
            </div>

            <!-- Education -->
            <div class="section">
                <h2 class="section-title"><span>🎓</span> Education</h2>
                <div class="education-grid">
                    <div class="education-item">
                        <div class="edu-header">
                            <span class="edu-school">East China University of Political Science and Law</span>
                            <span class="edu-date">2023 - 2027</span>
                        </div>
                        <div class="edu-major">BBA in Accounting (Forensic Accounting) · GPA 3.83/4.0 <span class="gpa-highlight">Top 1%</span></div>
                        <div class="edu-detail">
                            <strong>Core Courses:</strong> Intermediate Financial Accounting, Tax Law, Accounting English, Economic Law, 
                            Negotiable Instruments Law, Probability Theory, Advanced Mathematics, Linear Algebra, Statistics, Macroeconomics
                        </div>
                    </div>

                    <div class="education-item">
                        <div class="edu-header">
                            <span class="edu-school">University of Fribourg, Switzerland</span>
                            <span class="edu-date">Sep 2025 - Feb 2026</span>
                        </div>
                        <div class="edu-major">Exchange Program · Business School</div>
                        <div class="edu-detail">
                            <strong>Courses:</strong> Applied Economics, Business Management, Legal English & Common Law, English Language Cognition
                        </div>
                    </div>
                </div>
            </div>

            <!-- Experience -->
            <div class="section">
                <h2 class="section-title"><span>💼</span> Leadership & Experience</h2>
                
                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">Student Union</span>
                        <span class="exp-role">Sports Department Minister</span>
                        <span class="exp-date">2023 - Present</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>Coordinated class and college sports activities, including event planning and personnel coordination</li>
                            <li>Organized University Spring Sports Meet, Martial Arts Competition, Red May Dance Competition, and multiple basketball tournaments</li>
                        </ul>
                    </div>
                </div>

                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">ECUPL Badminton Association</span>
                        <span class="exp-role">Presidium Member & Director</span>
                        <span class="exp-date">2023 - Present</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>Led the official WeChat account management team, published 32 articles with average readership of 1,000+</li>
                            <li>Coordinated badminton competitions including budget planning and program development</li>
                            <li>Responsible for event photography and layout design for promotional materials</li>
                        </ul>
                    </div>
                </div>

                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">Class Committee</span>
                        <span class="exp-role">Sports Representative</span>
                        <span class="exp-date">2023 - Present</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>Liaised between classmates and PE instructors, managed attendance and feedback collection (100% completion rate)</li>
                            <li>Led class participation in university long-distance running and relay events</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Awards -->
            <div class="section">
                <h2 class="section-title"><span>🏆</span> Honors & Awards</h2>
                <div class="awards-grid">
                    <div class="award-item"><span class="award-name">First-class Comprehensive Scholarship</span><span class="award-date">2025</span></div>
                    <div class="award-item"><span class="award-name">Third-class Comprehensive Scholarship</span><span class="award-date">2024</span></div>
                    <div class="award-item"><span class="award-name">Outstanding Student Union Member</span><span class="award-date">2023/2024</span></div>
                </div>
            </div>

            <!-- Certifications -->
            <div class="section">
                <h2 class="section-title"><span>📜</span> Certifications</h2>
                <div class="skills-grid">
                    <span class="skill-tag">Primary Accountant Certificate</span>
                    <span class="skill-tag">MS Computer Level 2</span>
                    <span class="skill-tag">IELTS 7.5</span>
                    <span class="skill-tag">CET-6 590+</span>
                    <span class="skill-tag">CET-4 620+</span>
                    <span class="skill-tag">Driver's License</span>
                </div>
            </div>

            <!-- Last Updated -->
            <div class="last-updated en">
                Last Updated: March 19, 2026
            </div>
        </div>

        <!-- ========== 中文版本 ========== -->
        <!-- 头部信息 - 中文 -->
        <div class="header zh">
            <div class="name">李想</div>
            <div class="school">会计学（司法会计方向）本科 · 华东政法大学</div>
            <div class="research-interest">研究兴趣：司法会计、经济法学、应用经济学</div>
            <div class="contact">
                <span class="contact-item">📧 ttttunod@outlook.com</span>
                <span class="contact-item">📱 135-0172-4980</span>
                <span class="contact-item">📍 上海</span>
                <span class="contact-item">🌐 雅思7.5 | CET-6 590+</span>
            </div>
        </div>

        <!-- 主要内容 - 中文 -->
        <div class="content zh">
            <!-- 个人简介 -->
            <div class="section">
                <h2 class="section-title"><span>📋</span> 个人简介</h2>
                <p class="profile-text">
                    会计学（司法会计方向）专业本科生，GPA 3.83/4.0，位列全院前1%。 
                    具备瑞士弗里堡大学交换经历，拥有跨文化学术背景。 
                    在学生组织中展现出卓越的领导力，具备优秀的沟通能力和组织协调能力。
                    性格活泼热情，责任心强，执行力高，能够快速适应新环境。
                </p>
            </div>

            <!-- 技能 -->
            <div class="section">
                <h2 class="section-title"><span>⚡</span> 专业技能</h2>
                <div class="skills-grid">
                    <span class="skill-tag">Excel</span>
                    <span class="skill-tag">PowerPoint</span>
                    <span class="skill-tag">Word</span>
                    <span class="skill-tag">数据分析</span>
                    <span class="skill-tag">财务会计</span>
                    <span class="skill-tag">税法</span>
                    <span class="skill-tag">经济法学</span>
                    <span class="skill-tag">法律英语</span>
                    <span class="skill-tag">学术写作</span>
                    <span class="skill-tag">统计学</span>
                    <span class="skill-tag">Python基础</span>
                    <span class="skill-tag">文案撰写</span>
                    <span class="skill-tag">团队领导</span>
                    <span class="skill-tag">活动策划</span>
                </div>
            </div>

            <!-- 教育经历 -->
            <div class="section">
                <h2 class="section-title"><span>🎓</span> 教育经历</h2>
                <div class="education-grid">
                    <div class="education-item">
                        <div class="edu-header">
                            <span class="edu-school">华东政法大学</span>
                            <span class="edu-date">2023.09 - 2027.06</span>
                        </div>
                        <div class="edu-major">会计学（司法会计方向）本科 · GPA 3.83/4.0 <span class="gpa-highlight">全院前1%</span></div>
                        <div class="edu-detail">
                            <strong>主修课程：</strong>中级财务会计、税法、会计英语、经济法学、票据法学、概率论、高等数学、线性代数、统计学、宏观经济学
                        </div>
                    </div>

                    <div class="education-item">
                        <div class="edu-header">
                            <span class="edu-school">瑞士弗里堡大学</span>
                            <span class="edu-date">2025.09 - 2026.02</span>
                        </div>
                        <div class="edu-major">商学院 · 境外交换</div>
                        <div class="edu-detail">
                            <strong>主修课程：</strong>应用经济学、企业管理学、法律英语与普通法、英语语言认知学
                        </div>
                    </div>
                </div>
            </div>

            <!-- 社团和组织经历 -->
            <div class="section">
                <h2 class="section-title"><span>💼</span> 社团和组织经历</h2>
                
                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">学生会</span>
                        <span class="exp-role">体育部部长</span>
                        <span class="exp-date">2023 - 至今</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>协办班级与学院的各类体育活动，参与赛事制定与人员协调</li>
                            <li>组织校春季运动会、校武术大赛、校红五月舞蹈比赛、华商杯篮球赛等多项赛事</li>
                        </ul>
                    </div>
                </div>

                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">华政羽毛球协会</span>
                        <span class="exp-role">主席团部长</span>
                        <span class="exp-date">2023 - 至今</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>担任华政羽办公众号学生负责人，管理运营小组，累计推送文章32篇，平均阅读量达1000+</li>
                            <li>协办院级与校级羽毛球比赛，负责方案敲定、预算拟定</li>
                            <li>负责羽毛球赛事拍摄，为推文供图并担任美工排版</li>
                        </ul>
                    </div>
                </div>

                <div class="experience-item">
                    <div class="exp-header">
                        <span class="exp-title">班级</span>
                        <span class="exp-role">体育委员</span>
                        <span class="exp-date">2023 - 至今</span>
                    </div>
                    <div class="exp-desc">
                        <ul>
                            <li>负责班内同学体育事务的传达与赛事报名的收集工作</li>
                            <li>对接体育专业课老师，完成课程通知、考勤及学生反馈汇总，完成率100%</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 荣誉奖项 -->
            <div class="section">
                <h2 class="section-title"><span>🏆</span> 荣誉奖项</h2>
                <div class="awards-grid">
                    <div class="award-item"><span class="award-name">综合一等奖学金</span><span class="award-date">2025</span></div>
                    <div class="award-item"><span class="award-name">综合三等奖学金</span><span class="award-date">2024</span></div>
                    <div class="award-item"><span class="award-name">商学院团委学生会优秀个人</span><span class="award-date">2023/2024</span></div>
                </div>
            </div>

            <!-- 证书及其他 -->
            <div class="section">
                <h2 class="section-title"><span>📜</span> 证书及其他</h2>
                <div class="skills-grid">
                    <span class="skill-tag">初级会计师</span>
                    <span class="skill-tag">MS计算机二级</span>
                    <span class="skill-tag">雅思7.5</span>
                    <span class="skill-tag">CET-6 590+</span>
                    <span class="skill-tag">CET-4 620+</span>
                    <span class="skill-tag">驾驶证</span>
                </div>
            </div>

            <!-- 最后更新 -->
            <div class="last-updated zh">
                最后更新：2026年3月19日
            </div>
        </div>
    </div>

    <script>
        function switchLanguage(lang, event) {
            // 隐藏所有语言版本
            document.querySelectorAll('.en, .zh').forEach(el => {
                el.style.display = 'none';
            });
            
            // 显示选中的语言
            document.querySelectorAll('.' + lang).forEach(el => {
                el.style.display = 'block';
            });
            
            // 更新按钮状态
            document.querySelectorAll('.lang-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // 为点击的按钮添加active类
            if (event && event.target) {
                event.target.classList.add('active');
            } else {
                // 兼容旧版调用方式
                const btns = document.querySelectorAll('.lang-btn');
                if (lang === 'en') {
                    btns[0].classList.add('active');
                } else {
                    btns[1].classList.add('active');
                }
            }
        }

        // 初始化：显示英文
        document.addEventListener('DOMContentLoaded', function() {
            switchLanguage('en', { target: document.querySelector('.lang-btn') });
        });
    </script>
</body>
</html>
