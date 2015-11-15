.class public Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "HealthyDeleteDataSession.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field deviceId:Ljava/lang/String;

.field endTime:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field startTime:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 22
    const-class v0, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->userId:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->deviceId:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->endTime:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->sessionId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->startTime:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 40
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 41
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "userId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "method"

    const-string v4, "bracelet.deletesportsdata"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "bracelet.deletesportsdata"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "userId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->userId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method
