.class public Lcom/veclink/movnow_q2/reveiver/NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private hasInternet(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 36
    .local v1, "mConnMgr":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, "aActiveInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 40
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/reveiver/NetWorkChangeReceiver;->hasInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "userId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    new-instance v0, Lcom/veclink/healthy/task/UploadBraceletDataTask;

    invoke-direct {v0, p1}, Lcom/veclink/healthy/task/UploadBraceletDataTask;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "task":Lcom/veclink/healthy/task/UploadBraceletDataTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/veclink/healthy/task/UploadBraceletDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    .end local v0    # "task":Lcom/veclink/healthy/task/UploadBraceletDataTask;
    .end local v1    # "userId":Ljava/lang/String;
    :cond_0
    return-void
.end method
