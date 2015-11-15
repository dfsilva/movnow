.class public Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "HealthyGetSleepDataSession.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field deviceId:Ljava/lang/String;

.field endTime:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field startTime:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->userId:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->deviceId:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->sessionId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->startTime:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->endTime:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 41
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 42
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "userId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "startDate"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v3, "endDate"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v3, "method"

    const-string v4, "bracelet.getsleepdata"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "bracelet.getsleepdata"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "userId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->userId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "startDate"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "endDate"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;->endTime:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method
