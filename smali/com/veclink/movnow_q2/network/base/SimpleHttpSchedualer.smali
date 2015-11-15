.class public Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;
.super Ljava/lang/Object;
.source "SimpleHttpSchedualer.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "session"    # Lcom/veclink/movnow_q2/network/base/BaseSession;

    .prologue
    .line 18
    invoke-static {}, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 20
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-static {p0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const v1, 0x7f0c0176

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/veclink/movnow_q2/util/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 30
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_0
    invoke-static {v0, p0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->setUserAgent(Lcom/loopj/android/http/AsyncHttpClient;Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method public static ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;Ljava/lang/String;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "session"    # Lcom/veclink/movnow_q2/network/base/BaseSession;
    .param p2, "request"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {}, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 43
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-static {p0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const v2, 0x7f0c0176

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_0
    invoke-static {v0, p0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->setUserAgent(Lcom/loopj/android/http/AsyncHttpClient;Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/network/base/BaseSession;->getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 92
    .local v3, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 93
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 65
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 68
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 69
    const/4 v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static setUserAgent(Lcom/loopj/android/http/AsyncHttpClient;Landroid/content/Context;)V
    .locals 3
    .param p0, "client"    # Lcom/loopj/android/http/AsyncHttpClient;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "userAgent":Ljava/lang/String;
    sget-object v1, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 82
    return-void
.end method
