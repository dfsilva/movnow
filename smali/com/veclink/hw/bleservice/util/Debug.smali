.class public final Lcom/veclink/hw/bleservice/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final BLELOGTAG:Ljava/lang/String; = "blelogtag"

.field public static isDebug:Z

.field public static isPringBleData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    .line 9
    sput-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isPringBleData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    .line 42
    sput-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isPringBleData:Z

    .line 43
    return-void
.end method

.method public static logBle(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "blelogtag"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static logBleAllDataByTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isPringBleData:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static logBleByTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-boolean v0, Lcom/veclink/hw/bleservice/util/Debug;->isDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method
