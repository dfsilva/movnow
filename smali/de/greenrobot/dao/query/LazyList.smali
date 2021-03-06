.class public Lde/greenrobot/dao/query/LazyList;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/query/LazyList$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;

.field private final daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/InternalQueryDaoAccess",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile loadedCount:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final size:I


# direct methods
.method constructor <init>(Lde/greenrobot/dao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cacheEntities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/InternalQueryDaoAccess",
            "<TE;>;",
            "Landroid/database/Cursor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "daoAccess":Lde/greenrobot/dao/InternalQueryDaoAccess;, "Lde/greenrobot/dao/InternalQueryDaoAccess<TE;>;"
    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 134
    iput-object p1, p0, Lde/greenrobot/dao/query/LazyList;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    .line 135
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    .line 136
    if-eqz p3, :cond_0

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    .line 144
    :cond_1
    iget v1, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    if-nez v1, :cond_2

    .line 145
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lde/greenrobot/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lde/greenrobot/dao/query/LazyList;)I
    .locals 1
    .param p0, "x0"    # Lde/greenrobot/dao/query/LazyList;

    .prologue
    .line 45
    iget v0, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p2, "arg1":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected checkCached()V
    .locals 2

    .prologue
    .line 161
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "This operation only works with cached lazy lists"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 220
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 221
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 227
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    .line 235
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 237
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget v1, p0, Lde/greenrobot/dao/query/LazyList;->loadedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde/greenrobot/dao/query/LazyList;->loadedCount:I

    .line 243
    iget v1, p0, Lde/greenrobot/dao/query/LazyList;->loadedCount:I

    iget v2, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    if-ne v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    .end local v0    # "entity":Ljava/lang/Object;, "TE;"
    :cond_1
    :goto_0
    return-object v0

    .line 248
    .restart local v0    # "entity":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lde/greenrobot/dao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 253
    .end local v0    # "entity":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadedCount()I
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList;->loadedCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 268
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 269
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadedCompletely()Z
    .locals 2

    .prologue
    .line 190
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList;->loadedCount:I

    iget v1, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    const/4 v1, 0x0

    .line 279
    new-instance v0, Lde/greenrobot/dao/query/LazyList$LazyIterator;

    invoke-direct {v0, p0, v1, v1}, Lde/greenrobot/dao/query/LazyList$LazyIterator;-><init>(Lde/greenrobot/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 285
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Lde/greenrobot/dao/query/CloseableListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CloseableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    const/4 v1, 0x0

    .line 290
    new-instance v0, Lde/greenrobot/dao/query/LazyList$LazyIterator;

    invoke-direct {v0, p0, v1, v1}, Lde/greenrobot/dao/query/LazyList$LazyIterator;-><init>(Lde/greenrobot/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->listIterator()Lde/greenrobot/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    new-instance v0, Lde/greenrobot/dao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lde/greenrobot/dao/query/LazyList$LazyIterator;-><init>(Lde/greenrobot/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method public listIteratorAutoClose()Lde/greenrobot/dao/query/CloseableListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CloseableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    new-instance v0, Lde/greenrobot/dao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/dao/query/LazyList$LazyIterator;-><init>(Lde/greenrobot/dao/query/LazyList;IZ)V

    return-object v0
.end method

.method protected loadEntity(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 259
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    iget-object v2, p0, Lde/greenrobot/dao/query/LazyList;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/InternalQueryDaoAccess;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "entity":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 261
    new-instance v1, Lde/greenrobot/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading of entity failed (null) at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_0
    return-object v0
.end method

.method public loadRemaining()V
    .locals 3

    .prologue
    .line 153
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->checkCached()V

    .line 154
    iget-object v2, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 155
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/LazyList;->get(I)Ljava/lang/Object;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public peak(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 310
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    iget v0, p0, Lde/greenrobot/dao/query/LazyList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->checkCached()V

    .line 336
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 345
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lde/greenrobot/dao/query/LazyList;, "Lde/greenrobot/dao/query/LazyList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/LazyList;->loadRemaining()V

    .line 351
    iget-object v0, p0, Lde/greenrobot/dao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
