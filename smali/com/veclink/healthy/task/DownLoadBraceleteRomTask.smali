.class public Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;
.super Landroid/os/AsyncTask;
.source "DownLoadBraceleteRomTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1, "parmas"    # [Ljava/lang/String;

    .prologue
    .line 22
    const/4 v11, 0x0

    aget-object v9, p1, v11

    .line 23
    .local v9, "url":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 25
    .local v3, "filePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v7, "romFile":Ljava/io/File;
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 28
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 29
    const v11, 0x8994

    iput v11, v6, Landroid/os/Message;->what:I

    .line 30
    iget-object v11, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    const/4 v11, 0x1

    aget-object v8, p1, v11

    .line 32
    .local v8, "serverfileMD5":Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v10, p1, v11

    .line 33
    .local v10, "urlPath":Ljava/lang/String;
    const/4 v5, 0x3

    .line 34
    .local v5, "maxtrydowncount":I
    :cond_0
    if-lez v5, :cond_1

    .line 35
    add-int/lit8 v5, v5, -0x1

    .line 37
    :try_start_0
    invoke-static {v10, v2}, Lcom/veclink/movnow_q2/util/StorageUtil;->downloadLastestRom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 45
    :goto_0
    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StorageUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "downFileMD5":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 47
    const-string v11, "MD5 is equal"

    invoke-static {v11}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 48
    new-instance v6, Landroid/os/Message;

    .end local v6    # "msg":Landroid/os/Message;
    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 49
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    const v11, 0x8991

    iput v11, v6, Landroid/os/Message;->what:I

    .line 51
    iget-object v11, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v4, v3

    .line 70
    .end local v0    # "downFileMD5":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "maxtrydowncount":I
    .end local v8    # "serverfileMD5":Ljava/lang/String;
    .end local v10    # "urlPath":Ljava/lang/String;
    .local v4, "filePath":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 38
    .end local v4    # "filePath":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "maxtrydowncount":I
    .restart local v8    # "serverfileMD5":Ljava/lang/String;
    .restart local v10    # "urlPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    new-instance v6, Landroid/os/Message;

    .end local v6    # "msg":Landroid/os/Message;
    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 41
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    const v11, 0x8992

    iput v11, v6, Landroid/os/Message;->what:I

    .line 43
    iget-object v11, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    if-gtz v5, :cond_2

    .line 57
    new-instance v6, Landroid/os/Message;

    .end local v6    # "msg":Landroid/os/Message;
    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 58
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    const v11, 0x8992

    iput v11, v6, Landroid/os/Message;->what:I

    .line 60
    iget-object v11, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v5    # "maxtrydowncount":I
    .end local v8    # "serverfileMD5":Ljava/lang/String;
    .end local v10    # "urlPath":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v4, v3

    .line 70
    .end local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 65
    .end local v4    # "filePath":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_3
    new-instance v6, Landroid/os/Message;

    .end local v6    # "msg":Landroid/os/Message;
    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 66
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    const v11, 0x8991

    iput v11, v6, Landroid/os/Message;->what:I

    .line 68
    iget-object v11, p0, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->handler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
