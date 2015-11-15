.class public Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "HealthyChangePasswordSession.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->uid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->newPassword:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->oldPassword:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 30
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 31
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "newPassword"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->newPassword:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "oldPassword"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->oldPassword:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "method"

    const-string v4, "user.changepassword"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "user.changepassword"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "newPassword"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->newPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "oldPassword"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyChangePasswordSession;->oldPassword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method
