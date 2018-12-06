<div class="sidebar" data-background-color="brown" data-active-color="danger">
    <!--
        Tip 1: you can change the color of the sidebar's background using: data-background-color="white | brown"
        Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
    -->
    <div class="logo">
        <a href="#" class="simple-text">
            MoShop管理后台
        </a>
    </div>
    <div class="logo logo-mini">
        <a href="#" class="simple-text">
            Mo
        </a>
    </div>
    <div class="sidebar-wrapper">
        <ul class="nav">
            <li class="active">
                <a href="/admin">
                    <i class="ti-dashboard"></i>
                    <p>控制台(Dashboard)</p>
                </a>
            </li>
            <li>
                <a data-toggle="collapse" href="#goods" class="collapsed" aria-expanded="false">
                    <i class="ti-package"></i>
                    <p>商品管理(Goods)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="goods" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li>
                            <a href="/admin/address">社区管理</a>
                        </li>
                        <li>
                            <a href="/admin/category">商品分类</a>
                        </li>
                        <li>
                            <a href="/admin/goods">商品管理</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#trades" class="collapsed" aria-expanded="false">
                    <i class="ti-shopping-cart"></i>
                    <p>交易管理(Trades)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="trades" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li>
                            <a href="/admin/orders">订单管理</a>
                        </li>
                        <li>
                            <a href="/admin/drawback">退款管理</a>
                        </li>
                        <li>
                            <a href="/admin/return">退货管理</a>
                        </li>
                        <li>
                            <a href="/admin/refundreason">售后原因</a>
                        </li>
                        <li>
                            <a href="/admin/express">快递物流</a>
                        </li>
                        <li>
                            <a href="/admin/invoice">发票管理</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#users" class="collapsed" aria-expanded="false">
                    <i class="ti-user"></i>
                    <p>用户管理(Users)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="users" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li><a href="/admin/users">用户管理</a></li>
                        <li><a href="/admin/integral">会员积分</a></li>
                        <li><a href="/admin/integralrule">积分规则</a></li>
                        <li><a href="/admin/usergrade">会员等级</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#marketing" class="collapsed" aria-expanded="false">
                    <i class="ti-announcement"></i>
                    <p>营销管理(Marketing)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="marketing" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li><a href="/admin/coupon">优惠券</a></li>
                        <li><a href="/admin/limitimebuy">限时购</a></li>
                        <li><a href="/admin/fulldiscount">满额减</a></li>
                        <li><a href="/admin/shopbonus">代金红包</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#distribution" class="collapsed" aria-expanded="false">
                    <i class="ti-direction-alt"></i>
                    <p>团长分销(Distribution)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="distribution" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li><a href="/admin/distributionconfig">分销设置</a></li>
                        <li><a href="/admin/distributors">社区团长管理</a></li>
                        <li><a href="/admin/distriachievement">社区团长业绩</a></li>
                        <li><a href="/admin/distriwithdraw">佣金提现</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#statistics" class="collapsed" aria-expanded="false">
                    <i class="ti-pulse"></i>
                    <p>统计管理(Statistics)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="statistics" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li><a href="/admin/tradestatistics">交易统计</a></li>
                        <li><a href="/admin/userstatistics">会员统计</a></li>
                        <li><a href="/admin/goodstatistics">商品统计</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a data-toggle="collapse" href="#settings" class="collapsed" aria-expanded="false">
                    <i class="ti-settings"></i>
                    <p>设置管理(Settings)
                        <b class="caret"></b>
                    </p>
                </a>
                <div class="collapse" id="settings" role="navigation" aria-expanded="false" style="height: 0px;">
                    <ul class="nav">
                        <li><a href="/admin/sitesetting">站点设置</a></li>
                        <li><a href="/admin/adminuser">管理员管理</a></li>
                        <li><a href="/admin/auth">权限组管理</a></li>
                        <li><a href="/admin/menu">菜单管理</a></li>
                        <li><a href="/admin/area">区域管理</a></li>
                        <li><a href="/admin/crontab">定时任务</a></li>
                        <li><a href="/admin/apidoc">接口文档</a></li>
                        <li><a href="/admin/optlog">操作日志</a></li>
                    </ul>
                </div>
            </li>
        </ul>

    </div>
</div>