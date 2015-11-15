.class public Lde/greenrobot/event/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/AsyncExecutor$Builder;,
        Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;
    }
.end annotation


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final failureEventConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;)V
    .locals 4
    .param p1, "threadPool"    # Ljava/util/concurrent/Executor;
    .param p2, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lde/greenrobot/event/EventBus;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "failureEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    .line 89
    iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;

    .line 91
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 94
    const-string v2, "Failure event class must have a constructor with one parameter of type Throwable"

    .line 93
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Lde/greenrobot/event/util/AsyncExecutor;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lde/greenrobot/event/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static synthetic access$2(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public static builder()Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$Builder;)V

    return-object v0
.end method

.method public static create()Lde/greenrobot/event/util/AsyncExecutor;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$Builder;)V

    invoke-virtual {v0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;->build()Lde/greenrobot/event/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
    .locals 2
    .param p1, "runnable"    # Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    .prologue
    .line 100
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lde/greenrobot/event/util/AsyncExecutor$1;

    invoke-direct {v1, p0, p1}, Lde/greenrobot/event/util/AsyncExecutor$1;-><init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
