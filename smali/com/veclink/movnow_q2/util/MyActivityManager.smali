.class public Lcom/veclink/movnow_q2/util/MyActivityManager;
.super Ljava/lang/Object;
.source "MyActivityManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/veclink/movnow_q2/util/MyActivityManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getScreenManager()Lcom/veclink/movnow_q2/util/MyActivityManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->instance:Lcom/veclink/movnow_q2/util/MyActivityManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/veclink/movnow_q2/util/MyActivityManager;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/util/MyActivityManager;-><init>()V

    sput-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->instance:Lcom/veclink/movnow_q2/util/MyActivityManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->instance:Lcom/veclink/movnow_q2/util/MyActivityManager;

    return-object v0
.end method


# virtual methods
.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    sget-object v1, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 40
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 31
    sget-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 32
    const/4 p1, 0x0

    .line 34
    :cond_0
    return-void
.end method

.method public popAllActivityExceptOne(Ljava/lang/Class;)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 53
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public pushActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    sget-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    .line 47
    :cond_0
    sget-object v0, Lcom/veclink/movnow_q2/util/MyActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
