.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final skipMethodNameVerificationForClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCaches()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    return-void
.end method

.method public static clearSkipMethodNameVerifications()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    return-void
.end method

.method static skipMethodNameVerificationFor(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called before registering anything"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p2, "eventMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "key":Ljava/lang/String;
    sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v18

    .line 34
    :try_start_0
    sget-object v17, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 33
    .local v14, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v18

    .line 36
    if-eqz v14, :cond_0

    move-object v15, v14

    .line 93
    .end local v14    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local v15, "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :goto_0
    return-object v15

    .line 33
    .end local v15    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 39
    .restart local v14    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .restart local v14    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object/from16 v2, p1

    .line 41
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 42
    .local v4, "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v8, "methodKeyBuilder":Ljava/lang/StringBuilder;
    :goto_1
    if-nez v2, :cond_2

    .line 87
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 88
    new-instance v17, Lde/greenrobot/event/EventBusException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Subscriber "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no methods called "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 45
    .local v12, "name":Ljava/lang/String;
    const-string v17, "java."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "javax."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "android."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 51
    .local v10, "methods":[Ljava/lang/reflect/Method;
    array-length v0, v10

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 51
    :cond_3
    aget-object v6, v10, v17

    .line 52
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, "methodName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 54
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 55
    .local v13, "parameterTypes":[Ljava/lang/Class;
    array-length v0, v13

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "modifierString":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 59
    sget-object v16, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    .line 73
    .local v16, "threadMode":Lde/greenrobot/event/ThreadMode;
    :goto_3
    const/16 v19, 0x0

    aget-object v3, v13, v19

    .line 74
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v19, 0x3e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "methodKey":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 80
    new-instance v19, Lde/greenrobot/event/SubscriberMethod;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1, v3}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "methodKey":Ljava/lang/String;
    .end local v11    # "modifierString":Ljava/lang/String;
    .end local v13    # "parameterTypes":[Ljava/lang/Class;
    .end local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 60
    .restart local v11    # "modifierString":Ljava/lang/String;
    .restart local v13    # "parameterTypes":[Ljava/lang/Class;
    :cond_5
    const-string v19, "MainThread"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 61
    sget-object v16, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    .line 62
    .restart local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .end local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_6
    const-string v19, "BackgroundThread"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 63
    sget-object v16, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    .line 64
    .restart local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .end local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_7
    const-string v19, "Async"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 65
    sget-object v16, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    .line 66
    .restart local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .line 67
    .end local v16    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_8
    sget-object v19, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 70
    new-instance v17, Lde/greenrobot/event/EventBusException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Illegal onEvent method, check for typos: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 90
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "modifierString":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "parameterTypes":[Ljava/lang/Class;
    :cond_9
    sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v18

    .line 91
    :try_start_1
    sget-object v17, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v18

    move-object v15, v14

    .line 93
    .restart local v15    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    goto/16 :goto_0

    .line 90
    .end local v15    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v17
.end method
