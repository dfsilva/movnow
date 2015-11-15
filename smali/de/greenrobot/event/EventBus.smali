.class public Lde/greenrobot/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/EventBus$BooleanWrapper;,
        Lde/greenrobot/event/EventBus$PostCallback;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

.field public static TAG:Ljava/lang/String;

.field private static volatile defaultInstance:Lde/greenrobot/event/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final asyncPoster:Lde/greenrobot/event/AsyncPoster;

.field private final backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

.field private final currentThreadEventQueue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currentThreadIsPosting:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lde/greenrobot/event/EventBus$BooleanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMethodName:Ljava/lang/String;

.field private logSubscriberExceptions:Z

.field private final mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subscribed:Z

.field private final subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lde/greenrobot/event/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/greenrobot/event/ThreadMode;->values()[Lde/greenrobot/event/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    const-string v0, "Event"

    sput-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lde/greenrobot/event/EventBus$1;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$1;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentThreadEventQueue:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Lde/greenrobot/event/EventBus$2;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$2;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentThreadIsPosting:Ljava/lang/ThreadLocal;

    .line 68
    const-string v0, "onEvent"

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    .line 117
    new-instance v0, Lde/greenrobot/event/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/event/HandlerPoster;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    .line 118
    new-instance v0, Lde/greenrobot/event/BackgroundPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/BackgroundPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    .line 119
    new-instance v0, Lde/greenrobot/event/AsyncPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/AsyncPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    .line 120
    new-instance v0, Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-direct {v0}, Lde/greenrobot/event/SubscriberMethodFinder;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 122
    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "interfaces"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 466
    return-void

    .line 460
    :cond_0
    aget-object v0, p1, v1

    .line 461
    .local v0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static clearCaches()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearCaches()V

    .line 93
    sget-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    return-void
.end method

.method public static clearSkipMethodNameVerifications()V
    .locals 0

    .prologue
    .line 106
    invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearSkipMethodNameVerifications()V

    .line 107
    return-void
.end method

.method private findEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v3

    .line 443
    :try_start_0
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 444
    .local v1, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v1, :cond_0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .restart local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 447
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_1

    .line 452
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit v3

    return-object v1

    .line 448
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 442
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getDefault()Lde/greenrobot/event/EventBus;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lde/greenrobot/event/EventBus;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postSingleEvent(Ljava/lang/Object;Z)V
    .locals 11
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "isMainThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 389
    .local v2, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lde/greenrobot/event/EventBus;->findEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v6, 0x0

    .line 391
    .local v6, "subscriptionFound":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 392
    .local v1, "countTypes":I
    const/4 v4, 0x0

    .local v4, "h":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 405
    if-nez v6, :cond_0

    .line 406
    sget-object v8, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No subscripers registered for event "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-class v8, Lde/greenrobot/event/NoSubscriberEvent;

    if-eq v2, v8, :cond_0

    const-class v8, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eq v2, v8, :cond_0

    .line 408
    new-instance v8, Lde/greenrobot/event/NoSubscriberEvent;

    invoke-direct {v8, p0, p1}, Lde/greenrobot/event/NoSubscriberEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 411
    :cond_0
    return-void

    .line 393
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 395
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v8, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 395
    .local v7, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-eqz v7, :cond_2

    .line 399
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 402
    const/4 v6, 0x1

    .line 392
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .end local v7    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 399
    .restart local v7    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/greenrobot/event/Subscription;

    .line 400
    .local v5, "subscription":Lde/greenrobot/event/Subscription;
    invoke-direct {p0, v5, p1, p2}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method private postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "isMainThread"    # Z

    .prologue
    .line 414
    invoke-static {}, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I

    move-result-object v0

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown thread mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 438
    :goto_0
    return-void

    .line 419
    :pswitch_1
    if-eqz p3, :cond_0

    .line 420
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/HandlerPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :pswitch_2
    if-eqz p3, :cond_1

    .line 427
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/BackgroundPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/AsyncPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private register(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "sticky"    # Z

    .prologue
    .line 172
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    return-void

    .line 174
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/SubscriberMethod;

    .line 175
    .local v0, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    invoke-direct {p0, p1, v0, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V

    goto :goto_0
.end method

.method private varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    .locals 8
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "sticky"    # Z
    .param p5, "moreEventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p4, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 212
    .local v1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {v4, v1, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 226
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/SubscriberMethod;

    .line 215
    .local v2, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    iget-object v4, v2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    if-ne p4, v4, :cond_2

    .line 216
    invoke-direct {p0, p1, v2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v1    # "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .end local v3    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 217
    .restart local v1    # "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .restart local v3    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_2
    if-eqz p5, :cond_0

    .line 218
    :try_start_2
    array-length v6, p5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, p5, v4

    .line 219
    .local v0, "eventType2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, v2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    if-ne v0, v7, :cond_3

    .line 220
    invoke-direct {p0, p1, v2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 218
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static skipMethodNameVerificationFor(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationFor(Ljava/lang/Class;)V

    .line 102
    return-void
.end method

.method private subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
    .locals 9
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lde/greenrobot/event/SubscriberMethod;
    .param p3, "sticky"    # Z

    .prologue
    const/4 v6, 0x1

    .line 229
    iput-boolean v6, p0, Lde/greenrobot/event/EventBus;->subscribed:Z

    .line 230
    iget-object v0, p2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 231
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 232
    .local v5, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    new-instance v1, Lde/greenrobot/event/Subscription;

    invoke-direct {v1, p1, p2}, Lde/greenrobot/event/Subscription;-><init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;)V

    .line 233
    .local v1, "newSubscription":Lde/greenrobot/event/Subscription;
    if-nez v5, :cond_3

    .line 234
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v5    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 235
    .restart local v5    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    iget-object v7, p2, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 249
    .local v3, "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v3, :cond_1

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .restart local v3    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v7, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    if-eqz p3, :cond_2

    .line 257
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v7

    .line 258
    :try_start_0
    iget-object v8, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    .local v2, "stickyEvent":Ljava/lang/Object;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v2, :cond_2

    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_5

    :goto_0
    invoke-direct {p0, v1, v2, v6}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 264
    .end local v2    # "stickyEvent":Ljava/lang/Object;
    :cond_2
    return-void

    .line 237
    .end local v3    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/greenrobot/event/Subscription;

    .line 238
    .local v4, "subscription":Lde/greenrobot/event/Subscription;
    invoke-virtual {v4, v1}, Lde/greenrobot/event/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 239
    new-instance v6, Lde/greenrobot/event/EventBusException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Subscriber "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already registered to event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 240
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-direct {v6, v7}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    .end local v4    # "subscription":Lde/greenrobot/event/Subscription;
    .restart local v3    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 261
    .restart local v2    # "stickyEvent":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 288
    .local v2, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/Subscription;>;"
    if-eqz v2, :cond_0

    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 290
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 298
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 291
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/Subscription;

    iget-object v3, v3, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    .line 292
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    add-int/lit8 v0, v0, -0x1

    .line 294
    add-int/lit8 v1, v1, -0x1

    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public configureLogSubscriberExceptions(Z)V
    .locals 2
    .param p1, "logSubscriberExceptions"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->subscribed:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lde/greenrobot/event/EventBusException;

    const-string v1, "This method must be called before any registration"

    invoke-direct {v0, v1}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-boolean p1, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 133
    return-void
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    .locals 2
    .param p1, "pendingPost"    # Lde/greenrobot/event/PendingPost;

    .prologue
    .line 469
    iget-object v0, p1, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;

    .line 470
    .local v0, "event":Ljava/lang/Object;
    iget-object v1, p1, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;

    .line 471
    .local v1, "subscription":Lde/greenrobot/event/Subscription;
    invoke-static {p1}, Lde/greenrobot/event/PendingPost;->releasePendingPost(Lde/greenrobot/event/PendingPost;)V

    .line 472
    invoke-virtual {p0, v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 7
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 477
    :try_start_0
    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v3, v3, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v4, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 480
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, p2, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eqz v3, :cond_0

    .line 482
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SubscriberExceptionEvent subscriber "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 483
    const-string v5, " threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p2

    .line 484
    check-cast v2, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 485
    .local v2, "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initial event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " caused exception in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 486
    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    .line 485
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    .end local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :cond_0
    iget-boolean v3, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-eqz v3, :cond_1

    .line 489
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not dispatch event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to subscribing class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 490
    iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    :cond_1
    new-instance v2, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 493
    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    .line 492
    invoke-direct {v2, p0, v0, p2, v3}, Lde/greenrobot/event/SubscriberExceptionEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .restart local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    invoke-virtual {p0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :catch_1
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected exception"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public post(Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 315
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->currentThreadEventQueue:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    .local v0, "eventQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->currentThreadIsPosting:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus$BooleanWrapper;

    .line 319
    .local v2, "isPosting":Lde/greenrobot/event/EventBus$BooleanWrapper;
    iget-boolean v5, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z

    if-eqz v5, :cond_0

    .line 332
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 323
    .local v1, "isMainThread":Z
    :goto_1
    iput-boolean v3, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z

    .line 325
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    iput-boolean v4, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z

    goto :goto_0

    .end local v1    # "isMainThread":Z
    :cond_1
    move v1, v4

    .line 322
    goto :goto_1

    .line 326
    .restart local v1    # "isMainThread":Z
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lde/greenrobot/event/EventBus;->postSingleEvent(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 328
    :catchall_0
    move-exception v3

    .line 329
    iput-boolean v4, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z

    .line 330
    throw v3
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 340
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 345
    return-void

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 146
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public varargs register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p3, "moreEventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 184
    return-void
.end method

.method public register(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "moreEventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 161
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public varargs registerSticky(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p3, "moreEventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 169
    return-void
.end method

.method public varargs declared-synchronized registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "moreEventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 375
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v3

    .line 376
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 377
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "existingEvent":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v3

    const/4 v2, 0x1

    .line 382
    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .end local v0    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v1    # "existingEvent":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 303
    .local v1, "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_1
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 305
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    .end local v0    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 309
    .restart local v1    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    :try_start_2
    sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscriber to unregister was not registered before: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public varargs declared-synchronized unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "eventTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    array-length v2, p2

    if-nez v2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provide at least one event class"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 271
    :cond_0
    :try_start_1
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 272
    .local v1, "subscribedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v1, :cond_3

    .line 273
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 277
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 273
    :cond_2
    :try_start_2
    aget-object v0, p2, v2

    .line 274
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscriber to unregister was not registered before: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
