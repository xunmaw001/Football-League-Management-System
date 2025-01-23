
var projectName = '足球联赛管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的订单',
	url: '../shop-order/list.jsp'
},

{
	name: '我的地址',
	url: '../shop-address/list.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '球员信息',
	url: './pages/qiuyuanxinxi/list.jsp'
}, 
{
	name: '球队',
	url: './pages/qiudui/list.jsp'
}, 
{
	name: '联赛信息',
	url: './pages/liansaixinxi/list.jsp'
}, 
{
	name: '购物商城',
	url: './pages/gouwushangcheng/list.jsp'
}, 
{
	name: '比赛竞猜',
	url: './pages/bisaijingcai/list.jsp'
}, 

{
	name: '论坛',
	url: './pages/forum/list.jsp'
}, 
{
	name: '公告资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmtdl2g/index.jsp";

var cartFlag = false

var chatFlag = false


cartFlag = true


var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除","查看评论"],"menu":"球员信息","menuJump":"列表","tableName":"qiuyuanxinxi"}],"menu":"球员信息管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除","查看评论"],"menu":"球队","menuJump":"列表","tableName":"qiudui"}],"menu":"球队管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论"],"menu":"联赛信息","menuJump":"列表","tableName":"liansaixinxi"}],"menu":"联赛信息管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除","查看评论"],"menu":"购物商城","menuJump":"列表","tableName":"gouwushangcheng"}],"menu":"购物商城管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除"],"menu":"比赛竞猜","menuJump":"列表","tableName":"bisaijingcai"}],"menu":"比赛竞猜管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除","审核"],"menu":"竞猜信息","menuJump":"列表","tableName":"jingcaixinxi"}],"menu":"竞猜信息管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"商品分类","menuJump":"列表","tableName":"shangpinfenlei"}],"menu":"商品分类管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"论坛","tableName":"forum"}],"menu":"论坛"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告资讯","tableName":"news"},{"appFrontIcon":"cuIcon-taxi","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-album","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-album","buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-pay","buttons":["查看"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","发货"],"menu":"已支付订单","tableName":"orders/已支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"球员信息列表","menuJump":"列表","tableName":"qiuyuanxinxi"}],"menu":"球员信息模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看"],"menu":"球队列表","menuJump":"列表","tableName":"qiudui"}],"menu":"球队模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"联赛信息列表","menuJump":"列表","tableName":"liansaixinxi"}],"menu":"联赛信息模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"购物商城列表","menuJump":"列表","tableName":"gouwushangcheng"}],"menu":"购物商城模块"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","竞猜"],"menu":"比赛竞猜列表","menuJump":"列表","tableName":"bisaijingcai"}],"menu":"比赛竞猜模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"竞猜信息","menuJump":"列表","tableName":"jingcaixinxi"}],"menu":"竞猜信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看"],"menu":"球员信息列表","menuJump":"列表","tableName":"qiuyuanxinxi"}],"menu":"球员信息模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看"],"menu":"球队列表","menuJump":"列表","tableName":"qiudui"}],"menu":"球队模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"联赛信息列表","menuJump":"列表","tableName":"liansaixinxi"}],"menu":"联赛信息模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"购物商城列表","menuJump":"列表","tableName":"gouwushangcheng"}],"menu":"购物商城模块"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["查看","竞猜"],"menu":"比赛竞猜列表","menuJump":"列表","tableName":"bisaijingcai"}],"menu":"比赛竞猜模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
