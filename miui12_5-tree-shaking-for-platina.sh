adb devices 2>&1 | grep -E device$
if [ $? -ne 0  ] ; then echo "Missmatching device"; exit 1; fi

adb shell pm uninstall --user 0 com.miui.screenrecorder
adb shell pm uninstall --user 0 com.miui.contentextension
adb shell pm uninstall --user 0 com.mi.liveassistant
adb shell pm uninstall --user 0 com.miui.contentcatcher
adb shell pm uninstall --user 0 com.xiaomi.vipaccount
adb shell pm uninstall --user 0 com.xiaomi.mi_connect_service
adb shell pm uninstall --user 0 com.xiaomi.gamecenter.sdk.service
adb shell pm uninstall --user 0 com.android.htmlviewer
adb shell pm uninstall --user 0 com.android.quicksearchbox
adb shell pm uninstall --user 0 com.xiaomi.payment
adb shell pm uninstall --user 0 com.android.browser
adb shell pm uninstall --user 0 com.miui.systemAdSolution
adb shell pm uninstall --user 0 com.xiaomi.aiasst.vision
adb shell pm uninstall --user 0 com.baidu.input_mi
adb shell pm uninstall --user 0 com.miui.userguide
adb shell pm uninstall --user 0 com.miui.daemon
adb shell pm uninstall --user 0 com.xiaomi.ab
adb shell pm uninstall --user 0 com.xiaomi.jr
adb shell pm uninstall --user 0 com.xiaomi.mibrain.speech
adb shell pm uninstall --user 0 com.google.android.marvin.talkback
adb shell pm uninstall --user 0 com.miui.huanji
adb shell pm uninstall --user 0 com.miui.hybrid
adb shell pm uninstall --user 0 com.mi.health
adb shell pm uninstall --user 0 cn.wps.moffice_eng.xiaomi.lite
adb shell pm uninstall --user 0 com.android.ons
adb shell pm uninstall --user 0 com.android.stk
adb shell pm uninstall --user 0 com.mfashiongallery.emag
adb shell pm uninstall --user 0 com.miui.phrase
adb shell pm uninstall --user 0 com.miui.player
adb shell pm uninstall --user 0 com.miui.miservice
adb shell pm uninstall --user 0 com.miui.translation.kingsoft
adb shell pm uninstall --user 0 com.miui.catcherpatch
adb shell pm uninstall --user 0 com.miui.virtualsim
adb shell pm uninstall --user 0 com.miui.cit
adb shell pm uninstall --user 0 com.miui.vpnsdkmanager
adb shell pm uninstall --user 0 com.miui.personalassistant
adb shell pm uninstall --user 0 com.android.dreams.basic
adb shell pm uninstall --user 0 com.duokan.phone.remotecontroller
adb shell pm uninstall --user 0 com.miui.bugreport
adb shell pm uninstall --user 0 com.qti.xdivert
adb shell pm uninstall --user 0 com.miui.voicetrigger
adb shell pm uninstall --user 0 com.miui.translation.youdao
adb shell pm uninstall --user 0 com.miui.cloudbackup
adb shell pm uninstall --user 0 com.mipay.wallet
adb shell pm uninstall --user 0 com.xiaomi.shop
adb shell pm uninstall --user 0 com.miui.mishare.connectivity
adb shell pm uninstall --user 0 com.iflytek.inputmethod.miui
adb shell pm uninstall --user 0 com.miui.newhome
adb shell pm uninstall --user 0 com.miui.notes
adb shell pm uninstall --user 0 com.miui.video
adb shell pm uninstall --user 0 com.miui.translationservice
adb shell pm uninstall --user 0 com.miui.hybrid.accessory
adb shell pm uninstall --user 0 com.google.android.documentsui
adb shell pm uninstall --user 0 com.miui.translation.xmcloud
adb shell pm uninstall --user 0 com.sohu.inputmethod.sogou.xiaomi
adb shell pm uninstall --user 0 com.miui.touchassistant
adb shell pm uninstall --user 0 com.android.wallpaper.livepicker
adb shell pm uninstall --user 0 com.xiaomi.youpin
adb shell pm uninstall --user 0 com.xiaomi.gamecenter
adb shell pm uninstall --user 0 com.miui.analytics
adb shell pm uninstall --user 0 com.android.bookmarkprovider
adb shell pm uninstall --user 0 com.autonavi.minimap
adb shell pm uninstall --user 0 com.duokan.reader
adb shell pm uninstall --user 0 com.miui.yellowpage
adb shell pm uninstall --user 0 com.miui.accessibility
adb shell pm uninstall --user 0 com.android.email
adb shell pm uninstall --user 0 com.miui.voiceassist
adb shell pm uninstall --user 0 com.android.wallpaperbackup
adb shell pm uninstall --user 0 com.android.providers.userdictionary
adb shell pm uninstall --user 0 com.miui.smarttravel
adb shell pm uninstall --user 0 com.xiaomi.mimobile.noti
adb shell pm uninstall --user 0 com.xiaomi.smarthome
adb shell pm uninstall --user 0 com.xiaomi.drivemode
adb shell pm uninstall --user 0 com.miui.newmidrive
adb shell pm uninstall --user 0 com.xiaomi.aiasst.service

adb push ./com.google.android.inputmethod.latin*apps.evozi.com.apk /storage/emulated/0
adb push ./via-release-cn.apk /storage/emulated/0