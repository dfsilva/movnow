.class public Lde/greenrobot/event/util/AsyncExecutor$Builder;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private failureEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/event/util/AsyncExecutor$Builder;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lde/greenrobot/event/util/AsyncExecutor;
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    .line 60
    :cond_0
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 63
    :cond_1
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 64
    const-class v0, Lde/greenrobot/event/util/ThrowableFailureEvent;

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 66
    :cond_2
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor;

    iget-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lde/greenrobot/event/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Lde/greenrobot/event/util/AsyncExecutor;)V

    return-object v0
.end method

.method public eventBus(Lde/greenrobot/event/EventBus;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .locals 0
    .param p1, "eventBus"    # Lde/greenrobot/event/EventBus;

    .prologue
    .line 52
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    .line 53
    return-object p0
.end method

.method public failureEventType(Ljava/lang/Class;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/greenrobot/event/util/AsyncExecutor$Builder;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "failureEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 48
    return-object p0
.end method

.method public threadPool(Ljava/util/concurrent/Executor;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .locals 0
    .param p1, "threadPool"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 42
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 43
    return-object p0
.end method
