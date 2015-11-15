.class public Lcom/veclink/healthy/business/http/server/UpLoadBraceleteDataUtil;
.super Ljava/lang/Object;
.source "UpLoadBraceleteDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUploadContent(Ljava/util/List;Ljava/util/List;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/LogObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .local p1, "logList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/LogObject;>;"
    .local p2, "sleepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 18
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/veclink/healthy/business/http/server/UpLoadObject;

    invoke-direct {v3, p0, p1, p2}, Lcom/veclink/healthy/business/http/server/UpLoadObject;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 19
    .local v3, "upLoadObject":Lcom/veclink/healthy/business/http/server/UpLoadObject;
    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "uploadContent":Ljava/lang/String;
    const-string v5, "uploadContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadContent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 22
    .local v2, "tmparray":[B
    invoke-static {v2}, Lcom/veclink/movnow_q2/util/ZLibUtils;->compress([B)[B

    move-result-object v0

    .line 23
    .local v0, "cpmpressarray":[B
    return-object v0
.end method
