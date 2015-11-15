.class public Lcom/veclink/healthy/task/UploadBraceletDataTask;
.super Landroid/os/AsyncTask;
.source "UploadBraceletDataTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    const-string v0, "UploadBraceletDataTask"

    iput-object v0, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private post(Ljava/lang/String;[B)Z
    .locals 20
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v12, 0x0

    .line 73
    .local v12, "result":Z
    const/4 v5, 0x3

    .line 74
    .local v5, "i":I
    :cond_0
    :goto_0
    if-lez v5, :cond_4

    if-nez v12, :cond_4

    .line 75
    add-int/lit8 v5, v5, -0x1

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 79
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 80
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 81
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 83
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 84
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 85
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v9, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "data_type"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v17, "method"

    const-string v18, "bracelet.receivebraceletdata"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 90
    .local v14, "sf":Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "time":Ljava/lang/String;
    const-string v17, "Connection"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v17, "User-Agent"

    const-string v18, "Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded;"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v17, "method"

    const-string v18, "bracelet.receivebraceletdata"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v17, "data_type"

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v17, "app_key"

    const-string v18, "q2_android"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v17, "timestamp"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v17, "sign"

    invoke-static {v9, v15}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getUploadDataPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v8, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 105
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 107
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v13, "resultBuffer":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 113
    .local v7, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 134
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "resultBuffer":Ljava/lang/StringBuffer;
    .end local v14    # "sf":Ljava/text/SimpleDateFormat;
    .end local v15    # "time":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 116
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/OutputStream;
    .restart local v9    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "resultBuffer":Ljava/lang/StringBuffer;
    .restart local v14    # "sf":Ljava/text/SimpleDateFormat;
    .restart local v15    # "time":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    const-string v17, "UploadBraceletDataTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "upload return result "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 119
    .local v6, "json":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    .local v4, "gson":Lcom/google/gson/Gson;
    const-class v17, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;

    .line 121
    .local v11, "response":Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;
    invoke-virtual {v11}, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->getError()Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 122
    const/4 v12, 0x1

    .line 123
    const-string v17, "UploadBraceletDataTask"

    const-string v18, "do upload Braceletedata task success"

    invoke-static/range {v17 .. v18}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v11    # "response":Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v11    # "response":Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;
    :cond_2
    const/4 v12, 0x0

    .line 126
    :try_start_5
    const-string v17, "UploadBraceletDataTask"

    const-string v18, "do upload Braceletedata task fail"

    invoke-static/range {v17 .. v18}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 128
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v11    # "response":Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;
    :catch_1
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 138
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "resultBuffer":Ljava/lang/StringBuffer;
    .end local v14    # "sf":Ljava/text/SimpleDateFormat;
    .end local v15    # "time":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v17

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    const/4 v2, 0x0

    :cond_3
    throw v17

    .line 144
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :cond_4
    return v12
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->queryAlWaitUploadSportData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 45
    .local v5, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->queryAlWaitUploadSleepData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 46
    .local v4, "sleepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->loadAllLogObject(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "logList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/LogObject;>;"
    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 48
    const/4 v7, 0x0

    .line 67
    :goto_0
    return-object v7

    .line 50
    :cond_0
    invoke-static {v5, v2, v4}, Lcom/veclink/healthy/business/http/server/UpLoadBraceleteDataUtil;->createUploadContent(Ljava/util/List;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v6

    .line 51
    .local v6, "uploadContent":[B
    sget-object v7, Lcom/veclink/healthy/business/http/server/ServerUrl;->UPLOAD_BRACELET_DATA_URL:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/veclink/healthy/task/UploadBraceletDataTask;->post(Ljava/lang/String;[B)Z

    move-result v3

    .line 52
    .local v3, "result":Z
    if-eqz v3, :cond_5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    .line 55
    .local v1, "item":Lcom/veclink/healthy/database/entity/SportData;
    const-string v7, "done"

    invoke-virtual {v1, v7}, Lcom/veclink/healthy/database/entity/SportData;->setHadupload(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    .end local v1    # "item":Lcom/veclink/healthy/database/entity/SportData;
    :cond_1
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSportDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 59
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v4, :cond_4

    .line 60
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SleepData;

    .line 61
    .local v1, "item":Lcom/veclink/healthy/database/entity/SleepData;
    const-string v7, "done"

    invoke-virtual {v1, v7}, Lcom/veclink/healthy/database/entity/SleepData;->setHadupload(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    .end local v1    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_3
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSleepdataList(Landroid/content/Context;Ljava/util/List;)V

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/veclink/healthy/task/UploadBraceletDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->delAllLogObject(Landroid/content/Context;)V

    .line 67
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method
