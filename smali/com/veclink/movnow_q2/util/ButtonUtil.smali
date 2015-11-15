.class public Lcom/veclink/movnow_q2/util/ButtonUtil;
.super Ljava/lang/Object;
.source "ButtonUtil.java"


# static fields
.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isFastClick()Z
    .locals 8

    .prologue
    .line 15
    const-class v3, Lcom/veclink/movnow_q2/util/ButtonUtil;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    .local v0, "time":J
    sget-wide v4, Lcom/veclink/movnow_q2/util/ButtonUtil;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 17
    const/4 v2, 0x1

    .line 20
    :goto_0
    monitor-exit v3

    return v2

    .line 19
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/veclink/movnow_q2/util/ButtonUtil;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    const/4 v2, 0x0

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized isFindBtnFastClick()Z
    .locals 8

    .prologue
    .line 24
    const-class v3, Lcom/veclink/movnow_q2/util/ButtonUtil;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    .local v0, "time":J
    sget-wide v4, Lcom/veclink/movnow_q2/util/ButtonUtil;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 26
    const/4 v2, 0x1

    .line 29
    :goto_0
    monitor-exit v3

    return v2

    .line 28
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/veclink/movnow_q2/util/ButtonUtil;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v2, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
