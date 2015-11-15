.class Lde/greenrobot/dao/async/AsyncOperationExecutor;
.super Ljava/lang/Object;
.source "AsyncOperationExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/async/AsyncOperationExecutor$1;
    }
.end annotation


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private countOperationsCompleted:I

.field private countOperationsEnqueued:I

.field private volatile executorRunning:Z

.field private handlerMainThread:Landroid/os/Handler;

.field private lastSequenceNumber:I

.field private volatile listener:Lde/greenrobot/dao/async/AsyncOperationListener;

.field private volatile listenerMainThread:Lde/greenrobot/dao/async/AsyncOperationListener;

.field private volatile maxOperationCountToMerge:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lde/greenrobot/dao/async/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile waitForMergeMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    iput v1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 54
    iput v1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 55
    return-void
.end method

.method private executeOperation(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->timeStarted:J

    .line 259
    :try_start_0
    sget-object v1, Lde/greenrobot/dao/async/AsyncOperationExecutor$1;->$SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType:[I

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->type:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    invoke-virtual {v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 327
    new-instance v1, Lde/greenrobot/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lde/greenrobot/dao/async/AsyncOperation;->type:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "th":Ljava/lang/Throwable;
    iput-object v0, p1, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 332
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->timeCompleted:J

    .line 334
    return-void

    .line 261
    :pswitch_0
    :try_start_1
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    .line 273
    :pswitch_4
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 276
    :pswitch_5
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :pswitch_6
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    .line 282
    :pswitch_7
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 285
    :pswitch_8
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :pswitch_9
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :pswitch_a
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 294
    :pswitch_b
    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :pswitch_c
    invoke-direct {p0, p1}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeTransactionRunnable(Lde/greenrobot/dao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 300
    :pswitch_d
    invoke-direct {p0, p1}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeTransactionCallable(Lde/greenrobot/dao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 303
    :pswitch_e
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lde/greenrobot/dao/query/Query;

    invoke-virtual {v1}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 306
    :pswitch_f
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lde/greenrobot/dao/query/Query;

    invoke-virtual {v1}, Lde/greenrobot/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 309
    :pswitch_10
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 312
    :pswitch_11
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    goto/16 :goto_0

    .line 315
    :pswitch_12
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 318
    :pswitch_13
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 321
    :pswitch_14
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 324
    :pswitch_15
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v2, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDao;->refresh(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private executeOperationAndPostCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 0
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperation(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 252
    invoke-direct {p0, p1}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handleOperationCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 253
    return-void
.end method

.method private executeTransactionCallable(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 352
    :try_start_0
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 353
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private executeTransactionRunnable(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 337
    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 338
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 340
    :try_start_0
    iget-object v1, p1, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 341
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private handleOperationCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 229
    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->setCompleted()V

    .line 231
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listener:Lde/greenrobot/dao/async/AsyncOperationListener;

    .line 232
    .local v0, "listenerToCall":Lde/greenrobot/dao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p1}, Lde/greenrobot/dao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 235
    :cond_0
    iget-object v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listenerMainThread:Lde/greenrobot/dao/async/AsyncOperationListener;

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 237
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 239
    :cond_1
    iget-object v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 240
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    monitor-enter p0

    .line 243
    :try_start_0
    iget v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    .line 244
    iget v2, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    iget v3, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    if-ne v2, v3, :cond_3

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    :cond_3
    monitor-exit p0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private mergeTxAndExecute(Lde/greenrobot/dao/async/AsyncOperation;Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 12
    .param p1, "operation1"    # Lde/greenrobot/dao/async/AsyncOperation;
    .param p2, "operation2"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v6, "mergedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/greenrobot/dao/async/AsyncOperation;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    const/4 v2, 0x0

    .line 187
    .local v2, "failed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 188
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/greenrobot/dao/async/AsyncOperation;

    .line 189
    .local v7, "operation":Lde/greenrobot/dao/async/AsyncOperation;
    invoke-direct {p0, v7}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperation(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 190
    invoke-virtual {v7}, Lde/greenrobot/dao/async/AsyncOperation;->isFailed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 192
    const/4 v2, 0x1

    .line 211
    .end local v7    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    if-eqz v2, :cond_5

    .line 214
    const-string v10, "Revered merged transaction because one of the operations failed. Executing operations one by one instead..."

    invoke-static {v10}, Lde/greenrobot/dao/DaoLog;->i(Ljava/lang/String;)I

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/async/AsyncOperation;

    .line 216
    .local v0, "asyncOperation":Lde/greenrobot/dao/async/AsyncOperation;
    invoke-virtual {v0}, Lde/greenrobot/dao/async/AsyncOperation;->reset()V

    .line 217
    invoke-direct {p0, v0}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    goto :goto_1

    .line 195
    .end local v0    # "asyncOperation":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_3

    .line 196
    iget-object v10, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/greenrobot/dao/async/AsyncOperation;

    .line 197
    .local v8, "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    iget v10, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    if-ge v3, v10, :cond_4

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/async/AsyncOperation;->isMergeableWith(Lde/greenrobot/dao/async/AsyncOperation;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 198
    iget-object v10, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/greenrobot/dao/async/AsyncOperation;

    .line 199
    .local v9, "removedOp":Lde/greenrobot/dao/async/AsyncOperation;
    if-eq v9, v8, :cond_2

    .line 201
    new-instance v10, Lde/greenrobot/dao/DaoException;

    const-string v11, "Internal error: peeked op did not match removed op"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v7    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v8    # "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v9    # "removedOp":Lde/greenrobot/dao/async/AsyncOperation;
    :catchall_0
    move-exception v10

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 203
    .restart local v7    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    .restart local v8    # "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    .restart local v9    # "removedOp":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_2
    :try_start_2
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v8    # "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v9    # "removedOp":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .restart local v8    # "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 220
    .end local v7    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v8    # "peekedOp":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 221
    .local v5, "mergedCount":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/async/AsyncOperation;

    .line 222
    .restart local v0    # "asyncOperation":Lde/greenrobot/dao/async/AsyncOperation;
    iput v5, v0, Lde/greenrobot/dao/async/AsyncOperation;->mergedOperationsCount:I

    .line 223
    invoke-direct {p0, v0}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->handleOperationCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    goto :goto_3

    .line 226
    .end local v0    # "asyncOperation":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v5    # "mergedCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public enqueue(Lde/greenrobot/dao/async/AsyncOperation;)V
    .locals 1
    .param p1, "operation"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    iput v0, p1, Lde/greenrobot/dao/async/AsyncOperation;->sequenceNumber:I

    .line 60
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 61
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 62
    iget-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 64
    sget-object v0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getListener()Lde/greenrobot/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listener:Lde/greenrobot/dao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getListenerMainThread()Lde/greenrobot/dao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listenerMainThread:Lde/greenrobot/dao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 361
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listenerMainThread:Lde/greenrobot/dao/async/AsyncOperationListener;

    .line 362
    .local v0, "listenerToCall":Lde/greenrobot/dao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lde/greenrobot/dao/async/AsyncOperation;

    invoke-interface {v0, v1}, Lde/greenrobot/dao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 365
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized isCompleted()Z
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    iget v1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->countOperationsCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 141
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/dao/async/AsyncOperation;

    .line 142
    .local v2, "operation":Lde/greenrobot/dao/async/AsyncOperation;
    if-nez v2, :cond_2

    .line 143
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    iget-object v4, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lde/greenrobot/dao/async/AsyncOperation;

    move-object v2, v0

    .line 146
    if-nez v2, :cond_1

    .line 147
    const/4 v4, 0x0

    iput-boolean v4, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    iput-boolean v8, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 176
    .end local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :goto_1
    return-void

    .line 150
    .restart local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :cond_2
    if-eqz v2, :cond_0

    .line 153
    :try_start_3
    invoke-virtual {v2}, Lde/greenrobot/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    iget-object v4, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    iget v5, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/dao/async/AsyncOperation;

    .line 156
    .local v3, "operation2":Lde/greenrobot/dao/async/AsyncOperation;
    if-eqz v3, :cond_4

    .line 157
    invoke-virtual {v2, v3}, Lde/greenrobot/dao/async/AsyncOperation;->isMergeableWith(Lde/greenrobot/dao/async/AsyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    invoke-direct {p0, v2, v3}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->mergeTxAndExecute(Lde/greenrobot/dao/async/AsyncOperation;Lde/greenrobot/dao/async/AsyncOperation;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 170
    .end local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    .end local v3    # "operation2":Lde/greenrobot/dao/async/AsyncOperation;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was interruppted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lde/greenrobot/dao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    iput-boolean v8, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    goto :goto_1

    .line 150
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 174
    .end local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    :catchall_1
    move-exception v4

    iput-boolean v8, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executorRunning:Z

    throw v4

    .line 161
    .restart local v2    # "operation":Lde/greenrobot/dao/async/AsyncOperation;
    .restart local v3    # "operation2":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_3
    :try_start_7
    invoke-direct {p0, v2}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    .line 162
    invoke-direct {p0, v3}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V

    goto :goto_0

    .line 167
    .end local v3    # "operation2":Lde/greenrobot/dao/async/AsyncOperation;
    :cond_4
    invoke-direct {p0, v2}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lde/greenrobot/dao/async/AsyncOperation;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setListener(Lde/greenrobot/dao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listener"    # Lde/greenrobot/dao/async/AsyncOperationListener;

    .prologue
    .line 90
    iput-object p1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listener:Lde/greenrobot/dao/async/AsyncOperationListener;

    .line 91
    return-void
.end method

.method public setListenerMainThread(Lde/greenrobot/dao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listenerMainThread"    # Lde/greenrobot/dao/async/AsyncOperationListener;

    .prologue
    .line 98
    iput-object p1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->listenerMainThread:Lde/greenrobot/dao/async/AsyncOperationListener;

    .line 99
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 0
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 74
    iput p1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 75
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 0
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 82
    iput p1, p0, Lde/greenrobot/dao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 83
    return-void
.end method

.method public declared-synchronized waitForCompletion()V
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 117
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 3
    .param p1, "maxMillis"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 128
    int-to-long v1, p1

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
