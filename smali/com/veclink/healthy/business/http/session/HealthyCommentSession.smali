.class public Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.super Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;
.source "HealthyCommentSession.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected email:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected newPassword:Ljava/lang/String;

.field protected oldPassword:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field protected uid:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;-><init>(Ljava/lang/Class;)V

    .line 39
    iput-object p2, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public createTimeStamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "timeformat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "time":Ljava/lang/String;
    return-object v0
.end method

.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method

.method public handlerResponse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "responce"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "error":Ljava/lang/String;
    const-string v6, "27"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0191

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/veclink/healthy/account/HealthyAccountHolder;->setSessionId(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    const-class v7, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->onSuccessBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v6, "response:"

    invoke-static {v6, p1}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {v2, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 62
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, v5}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->onSuccessDoMore(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {p0, v5}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->postEvent(Ljava/lang/Object;)V

    .line 70
    :goto_0
    invoke-virtual {p0, v5}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->onSuccessAfter(Ljava/lang/Object;)V

    .line 77
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    return-void

    .line 66
    .restart local v1    # "error":Ljava/lang/String;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {p0, v6}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->postNetErrorResult(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {p0, v6}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->postNetErrorResult(Ljava/lang/Class;)V

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BaseAdapterSession:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method
