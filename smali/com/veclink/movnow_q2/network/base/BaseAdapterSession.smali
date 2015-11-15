.class public abstract Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;
.super Lcom/veclink/movnow_q2/network/base/BaseSession;
.source "BaseAdapterSession.java"


# static fields
.field public static final FORMAT_ERROR:Ljava/lang/String; = "-1001"

.field public static final NWT_ERROR:Ljava/lang/String; = "-1000"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final mRespClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private specifiedEventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/veclink/movnow_q2/network/base/BaseSession;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->specifiedEventBus:Lde/greenrobot/event/EventBus;

    .line 31
    iput-object p1, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->mRespClazz:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method public createTimeStamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "timeformat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 148
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "time":Ljava/lang/String;
    return-object v0
.end method

.method public getSyncParam()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->postNetErrorResult(Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "responce"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->onSuccessBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    const-string v3, "BaseAdapterSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 112
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->onSuccessDoMore(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->postEvent(Ljava/lang/Object;)V

    .line 122
    :goto_0
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->onSuccessAfter(Ljava/lang/Object;)V

    .line 129
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    return-void

    .line 118
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->postNetErrorResult(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->mRespClazz:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->postNetErrorResult(Ljava/lang/Class;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseAdapterSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->getRequestParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public onSuccessAfter(Ljava/lang/Object;)V
    .locals 0
    .param p1, "respObj"    # Ljava/lang/Object;

    .prologue
    .line 104
    return-void
.end method

.method public onSuccessBefore(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "responce"    # Ljava/lang/String;

    .prologue
    .line 94
    return-object p1
.end method

.method public onSuccessDoMore(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "responce"    # Ljava/lang/String;
    .param p2, "respObj"    # Ljava/lang/Object;

    .prologue
    .line 99
    return-object p2
.end method

.method protected postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->specifiedEventBus:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->specifiedEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public postNetErrorResult(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "event":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "object":Ljava/lang/Object;
    const-string v3, "setError"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .local v2, "setError":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 57
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "-1000"

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->postEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setError":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 60
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "setError":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    const-string v3, "error"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 61
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 62
    const-string v3, "-1000"

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 64
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 77
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setError":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 75
    :catch_2
    move-exception v3

    goto :goto_1

    .line 73
    :catch_3
    move-exception v3

    goto :goto_1

    .line 71
    :catch_4
    move-exception v3

    goto :goto_1

    .line 69
    :catch_5
    move-exception v3

    goto :goto_1
.end method

.method protected putParamIfNotEmpty(Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Lcom/loopj/android/http/RequestParams;
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setSpecifiedEventBus(Lde/greenrobot/event/EventBus;)V
    .locals 0
    .param p1, "specifiedEventBus"    # Lde/greenrobot/event/EventBus;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/veclink/movnow_q2/network/base/BaseAdapterSession;->specifiedEventBus:Lde/greenrobot/event/EventBus;

    .line 28
    return-void
.end method
