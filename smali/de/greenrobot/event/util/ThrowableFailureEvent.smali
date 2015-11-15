.class public Lde/greenrobot/event/util/ThrowableFailureEvent;
.super Ljava/lang/Object;
.source "ThrowableFailureEvent.java"


# instance fields
.field protected final suppressErrorUi:Z

.field protected final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "suppressErrorUi"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    .line 37
    iput-boolean p2, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuppressErrorUi()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->suppressErrorUi:Z

    return v0
.end method
