.class public Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "HealthyLogoutSession.java"


# instance fields
.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 17
    const-class v0, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->uid:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->sessionId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 25
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 26
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v3, "method"

    const-string v4, "user.logout"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "user.logout"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method
