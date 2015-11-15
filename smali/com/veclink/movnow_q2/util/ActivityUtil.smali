.class public Lcom/veclink/movnow_q2/util/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# static fields
.field private static hasHardwareMenuKey:Ljava/lang/Boolean;

.field public static isFullScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/veclink/movnow_q2/util/ActivityUtil;->isFullScreen:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasHardwareMenuKey(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x0

    .line 31
    sget-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 32
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 33
    .local v2, "vc":Landroid/view/ViewConfiguration;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "hasPermanentMenuKey"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 39
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_2

    .line 54
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    .line 59
    .end local v2    # "vc":Landroid/view/ViewConfiguration;
    :cond_1
    :goto_1
    sget-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 41
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "vc":Landroid/view/ViewConfiguration;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/ActivityUtil;->hasHardwareMenuKey:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static setActivityTheme(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    const-string v0, "product"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "hammerhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/veclink/movnow_q2/util/ActivityUtil;->isFullScreen:Z

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_1
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/veclink/movnow_q2/util/ActivityUtil;->isFullScreen:Z

    goto :goto_0
.end method
