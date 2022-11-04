#com.huawei.camera # 相机
#com.google.android.ext.services
#com.huawei.android.launcher # 桌面
#com.android.providers.telephony # 通话信息存储
#com.unionpay.tsmservice # 银联可信服务安全组件
#com.huawei.androidx
#com.android.phone.recorder # 通话录音
#com.android.providers.calendar # 日历
#com.huawei.featurelayer.featureframework
#com.huawei.hidisk # 文件管理
#com.huawei.iaware # 性能优化, 习惯学习
#com.huawei.bluetooth # 蓝牙导入
#com.android.providers.media # 媒体存储, 不可删, 阿里云盘会闪退
#com.huawei.android.thememanager # 主题
#com.huawei.android.hsf # 华为框架, Wlan闲时流量更新和后台软件自动安装
#com.google.android.ext.shared
#com.huawei.motionservice # 手势服务, 手势截屏
#com.huawei.appmarket # 应用商店
#com.huawei.recsys
#com.xy.smartmmsplugin.remote # 智能短信插件
#com.huawei.secime
#com.android.documentsui # 文件
#com.huawei.numberidentity # 号码识别
#com.android.externalstorage # 外部存储设备
#com.huawei.regservice # 华为注册服务
#com.android.mms.service
#com.huawei.android.totemweather # 天气
#com.android.providers.downloads # 下载
#com.huawei.cryptosms.service
#com.huawei.android.findmyphone # 查找我的手机
#com.huawei.trustcircle # 设备认证服务
#com.huawei.securitymgr # 隐私空间
#com.android.soundrecorder # 录音机
#com.huawei.android.AutoRegSms
#com.android.defcontainer # 软件包访问帮助程序
#com.android.providers.downloads.ui # 下载内容
#com.huawei.imedia.sws
#com.huawei.hwid # 华为移动服务
#com.huawei.msdp # 综合传感信息处理平台
#com.android.contacts # 联系人
#com.huawei.systemserver # 系统服务
#com.android.frameworkhwext.dark
#com.android.frameworkhwext.nova
#com.android.mms # 信息
#com.android.mtp
#com.huawei.trustspace # 支付保护中心
#com.android.statementservice
#com.huawei.printservice # 默认打印服务
#com.huawei.android.internal.app
#com.huawei.hwasm
#com.android.calendar # 日历
#com.huawei.wifiprobqeservice # 评估无线质量
#com.android.providers.settings
#com.android.printspooler # 打印处理任务
#com.huawei.featurelayer.sharedfeature.map # 地图服务
#com.android.incallui # 电话
#com.huawei.systemmanager # 手机管家
#com.huawei.nb.service # 数据管理服务
#com.android.se
#com.android.inputdevices # 输入设备
#com.android.supl
#com.huawei.contacts.sync # 联系人同步
#com.huawei.hwonlineprovisionservice
#com.google.android.webview
#com.android.onetimeinitializer
#com.android.server.telecom # 通话管理
#com.android.keychain # 密钥链
#com.huawei.languagedownloader # 下载语言
#com.android.gallery3d # 图库
#com.android.calllogbackup # 通话备份
#com.huawei.fido.uafclient
#com.android.packageinstaller # 打包安装程序
#com.android.proxyhandler
#com.android.frameworkhwext.overlay.dark
#com.google.android.printservice.recommendation # 发现和配置网络打印机
#com.android.managedprovisioning # 工作资料设置
#com.huawei.compass # 指南针
#com.huawei.android.dsdscardmanager # 双卡管理
#com.huawei.android.hwaps
#com.huawei.android.hwouc # 系统更新
#com.huawei.android.wfdft # Wlan直连
#com.huawei.behaviorauth
#com.huawei.android.instantonline
#com.android.storagemanager # 存储空间管理器
#com.android.settings # 设置
#com.android.calculator2 # 计算器
#com.android.vpndialogs
#com.huawei.android.hwupgradeguide # 升级向导
#com.android.phone # 拨号服务
#com.android.shell # 终端
#com.android.providers.blockednumber # 存储已屏蔽号码
#com.android.providers.userdictionary # 用户字典, 不可删, 会导致设置闪退
#com.android.emergency # 个人紧急信息
#com.android.location.fused # 融合定位
#com.huawei.lbs # 融合定位, 物理硬件位置服务
#com.android.deskclock # 时钟
#com.android.systemui # 系统用户界面
#com.android.bluetoothmidiservice
#com.huawei.ims
#com.android.bluetooth # 蓝牙
#com.android.providers.contacts # 联系人存储
#com.android.captiveportallogin
#com.huawei.android.airsharing # 无线投屏
#com.huawei.powergenie # 省电精灵
#com.android.wallpapercropper # 壁纸裁剪
#com.android.certinstaller # 证书安装器
#com.android.carrierconfig
#com.android.pacprocessor
#com.android.frameworkhwext.honor # 华为框架服务
#com.android.systemui.overlay
#com.huawei.android.FMRadio # 收音机
#com.huawei.HwMultiScreenShot # 滚动截屏

adb devices 2>&1 | grep -E device$
if [ $? -ne 0  ] ; then echo "Missmatching device"; exit 1; fi

# 安卓
adb shell pm uninstall --user 0 com.example.android.notepad # 备忘录
adb shell pm uninstall --user 0 com.google.android.overlay.gmsconfig # 在谷歌地图上显示位置
adb shell pm uninstall --user 0 com.google.android.overlay.settingsProvider # 多层设置, 国内无法使用
adb shell pm uninstall --user 0 com.google.android.marvin.talkback # Talkback
adb shell pm uninstall --user 0 com.android.dreams.basic # 基本互动屏保
adb shell pm uninstall --user 0 com.android.frameworkres.overlay # 可禁用
adb shell pm uninstall --user 0 com.android.backupconfirm # 备份确认
adb shell pm uninstall --user 0 com.android.stk # SIM卡应用
adb shell pm uninstall --user 0 com.android.simappdialog
adb shell pm uninstall --user 0 com.android.mediacenter # 音乐
adb shell pm uninstall --user 0 com.android.wallpaperbackup # 壁纸备份
adb shell pm uninstall --user 0 com.android.dreams.phototable # 图片屏保程序
adb shell pm uninstall --user 0 com.android.apps.tag # 标记
adb shell pm uninstall --user 0 com.android.keyguard # 杂志锁屏
adb shell pm uninstall --user 0 com.android.email # 电子邮件
adb shell pm uninstall --user 0 com.android.hwmirror # 镜子
adb shell pm uninstall --user 0 com.android.htmlviewer # HTML查看器
adb shell pm uninstall --user 0 com.android.companiondevicemanager # 跟随设备管理器
adb shell pm uninstall --user 0 com.android.huawei.HiMediaEngine
adb shell pm uninstall --user 0 com.android.browser # 浏览器
adb shell pm uninstall --user 0 com.android.wallpaper.livepicker # 动态壁纸
adb shell pm uninstall --user 0 com.android.cts.priv.ctsshim # CTS
adb shell pm uninstall --user 0 com.android.cts.ctsshim # CTS兼容性检测
adb shell pm uninstall --user 0 com.android.sharedstoragebackup # 云备份

# 华为
adb shell pm uninstall --user 0 com.hicloud.android.clone # 手机克隆
adb shell pm uninstall --user 0 com.huawei.android.UEInfoCheck # 用户体验计划监控
adb shell pm uninstall --user 0 com.huawei.android.chr # 检测异常, 收集异常关键信息
adb shell pm uninstall --user 0 com.huawei.iconnect # 穿戴设备连接服务
adb shell pm uninstall --user 0 com.huawei.parentcontrol # 健康使用手机
adb shell pm uninstall --user 0 com.huawei.search # 智慧搜索
adb shell pm uninstall --user 0 com.huawei.wallet # 钱包
adb shell pm uninstall --user 0 com.huawei.hwstartupguide # 开机引导
adb shell pm uninstall --user 0 com.huawei.hicloud # 云服务
adb shell pm uninstall --user 0 com.huawei.vdrive # 驾驶模式
adb shell pm uninstall --user 0 com.huawei.gameassistant # 游戏助手
adb shell pm uninstall --user 0 com.huawei.nearby # 附近, 国内无法使用
adb shell pm uninstall --user 0 com.huawei.hiview # 日志上传
adb shell pm uninstall --user 0 com.huawei.health # 运动健康
adb shell pm uninstall --user 0 com.huawei.synergy # 将手机端信息同步到穿戴设备上
adb shell pm uninstall --user 0 com.huawei.android.tips # 玩机技巧
adb shell pm uninstall --user 0 com.huawei.hifolder # 精品推荐
adb shell pm uninstall --user 0 com.huawei.mmitest # 首次开机测试
adb shell pm uninstall --user 0 com.huawei.suggestion # 情景智能
adb shell pm uninstall --user 0 com.huawei.hwvoipservice # 畅连通话
adb shell pm uninstall --user 0 com.huawei.hiaction # 智能识屏
adb shell pm uninstall --user 0 com.huawei.bd # 用户体验改进计划
adb shell pm uninstall --user 0 com.huawei.android.pushagent # 推送服务
adb shell pm uninstall --user 0 com.huawei.scanner # 智慧视觉
adb shell pm uninstall --user 0 com.huawei.himovie # 视频
adb shell pm uninstall --user 0 com.huawei.hitouch # 爆炸文字
adb shell pm uninstall --user 0 com.huawei.hiskytone # 天际通
adb shell pm uninstall --user 0 com.huawei.android.karaoke # K歌音效
adb shell pm uninstall --user 0 com.huawei.android.FloatTasks # 悬浮导航
adb shell pm uninstall --user 0 com.huawei.intelligent # 智能助手, 负一屏
adb shell pm uninstall --user 0 com.huawei.hicard # 华为卡片服务
adb shell pm uninstall --user 0 com.huawei.vassistant # 语音助手
adb shell pm uninstall --user 0 com.huawei.educenter # 教育中心
adb shell pm uninstall --user 0 com.huawei.welinknow # LinkNow
adb shell pm uninstall --user 0 com.huawei.KoBackup # 备份
adb shell pm uninstall --user 0 com.huawei.hwvplayer.youku # 优酷
adb shell pm uninstall --user 0 com.huawei.hiviewtunnel # 日志上传
adb shell pm uninstall --user 0 com.huawei.smarthome # 智慧生活
adb shell pm uninstall --user 0 com.huawei.pengine # 智能建议
adb shell pm uninstall --user 0 com.huawei.contactscamcard # 扫名片
adb shell pm uninstall --user 0 com.huawei.hwireader # 阅读
adb shell pm uninstall --user 0 com.huawei.hilink.framework # 智能产品框架
adb shell pm uninstall --user 0 com.huawei.lives # 生活服务
adb shell pm uninstall --user 0 com.huawei.gamebox # 游戏中心
adb shell pm uninstall --user 0 com.huawei.android.instantshare # Huawei Share
adb shell pm uninstall --user 0 com.huawei.trustagent # 手环智能解锁
adb shell pm uninstall --user 0 com.huawei.mycenter # 会员中心
adb shell pm uninstall --user 0 com.huawei.contentsensor # 取词
adb shell pm uninstall --user 0 com.huawei.fans # 花粉俱乐部
adb shell pm uninstall --user 0 com.huawei.hiai # 华为智能引擎
adb shell pm uninstall --user 0 com.huawei.pcassistant # 华为连接助手
adb shell pm uninstall --user 0 com.huawei.fastapp # 快应用
adb shell pm uninstall --user 0 com.huawei.phoneservice # 服务
adb shell pm uninstall --user 0 com.huawei.screenrecorder # 屏幕录制
adb shell pm uninstall --user 0 com.huawei.videoeditor # 视频编辑
adb shell pm uninstall --user 0 com.huawei.tips # 智能提醒
adb shell pm uninstall --user 0 com.huawei.android.projectmenu # 工程菜单
adb shell pm uninstall --user 0 com.huawei.ca # 日志
adb shell pm uninstall --user 0 com.huawei.hwdetectrepair # 智能检测

# 推广
adb shell pm uninstall --user 0 com.vmall.client # 华为商城
adb shell pm uninstall --user 0 com.Qunar # 去哪儿
adb shell pm uninstall --user 0 com.jingdong.app.mall # 京东
adb shell pm uninstall --user 0 com.sohu.newsclient # 搜狐
adb shell pm uninstall --user 0 com.sina.weibo # 微博
adb shell pm uninstall --user 0 com.smile.gifmaker # 快手
adb shell pm uninstall --user 0 com.taobao.taobao # 淘宝
adb shell pm uninstall --user 0 com.eg.android.AlipayGphone # 支付宝
adb shell pm uninstall --user 0 cn.wps.moffice_eng # WPS
adb shell pm uninstall --user 0 com.achievo.vipshop # 唯品会
adb shell pm uninstall --user 0 com.sankuai.meituan # 美团
adb shell pm uninstall --user 0 com.dianping.v1 # 大众点评
adb shell pm uninstall --user 0 com.iflytek.speechsuite # 讯飞语音引擎
adb shell pm uninstall --user 0 com.ximalaya.ting.android # 喜马拉雅
adb shell pm uninstall --user 0 com.baidu.BaiduMap # 百度地图
adb shell pm uninstall --user 0 com.ss.android.ugc.aweme # 抖音
adb shell pm uninstall --user 0 com.tencent.mtt # QQ浏览器
adb shell pm uninstall --user 0 com.baidu.input_huawei # 百度输入法
adb shell pm uninstall --user 0 com.baidu.searchbox # 百度App
adb shell pm uninstall --user 0 com.ss.android.article.news # 今日头条
adb shell pm uninstall --user 0 com.wuba # 58同城

adb install ./com.google.android.inputmethod.latin*apkmirror.com.apk
adb install ./via-release-cn.apk
