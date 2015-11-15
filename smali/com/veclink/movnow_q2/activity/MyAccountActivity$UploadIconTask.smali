.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;
.super Landroid/os/AsyncTask;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadIconTask"
.end annotation

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
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;


# direct methods
.method private constructor <init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;
    .param p2, "x1"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1, "paramsarray"    # [Ljava/lang/Object;

    .prologue
    .line 430
    const-string v13, ""

    .line 432
    .local v13, "result":Ljava/lang/String;
    const-wide/16 v18, 0x1f4

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 433
    const/16 v18, 0x0

    aget-object v8, p1, v18

    check-cast v8, Ljava/lang/String;

    .line 434
    .local v8, "filePath":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v9, p1, v18

    check-cast v9, Ljava/lang/String;

    .line 435
    .local v9, "filename":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v15, p1, v18

    check-cast v15, Ljava/lang/String;

    .line 436
    .local v15, "token":Ljava/lang/String;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "filepath:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    new-instance v16, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://upload.movnow.com/upload/file.do?method=file.upload&filename="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&token="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 438
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 440
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 441
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 443
    invoke-static {v8}, Lcom/veclink/movnow_q2/util/FileUtil;->getFileByte(Ljava/lang/String;)[B

    move-result-object v7

    .line 444
    .local v7, "f":[B
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u5b57\u8282\u6570\u7ec4\u7684\u5927\u5c0f:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v7

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    const-string v2, "---------------------------7d4a6d158c9"

    .line 447
    .local v2, "BOUNDARY":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v14, "sb":Ljava/lang/StringBuffer;
    const-string v18, "--"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 449
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 450
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 451
    const-string v18, "Content-Disposition: form-data; name=\"s\"; filename=\"test.doc\"\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 452
    const-string v18, "Content-Type: application/octet-stream\r\n\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 453
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 454
    .local v4, "data":[B
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\r\n--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 456
    .local v6, "end_data":[B
    const-string v18, "Content-Type"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "multipart/form-data;boundary="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v18, "Content-Length"

    array-length v0, v4

    move/from16 v19, v0

    array-length v0, v7

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v6

    move/from16 v20, v0

    add-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 459
    .local v17, "userAgent":Ljava/lang/String;
    const-string v18, "User-Agent"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 462
    .local v12, "out":Ljava/io/OutputStream;
    invoke-virtual {v12, v4}, Ljava/io/OutputStream;->write([B)V

    .line 463
    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    .line 464
    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write([B)V

    .line 465
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 467
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 468
    .local v10, "in":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 469
    .local v11, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 470
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 473
    :cond_0
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "result:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 475
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2    # "BOUNDARY":Ljava/lang/String;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "data":[B
    .end local v6    # "end_data":[B
    .end local v7    # "f":[B
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .end local v17    # "userAgent":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 476
    :catch_0
    move-exception v5

    .line 477
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 486
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$100(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 487
    const-string v2, "uploadresult:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 489
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;

    .line 490
    .local v1, "response":Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;->error:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;->error:Ljava/lang/String;

    const-string v3, "succeed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;->fileId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/veclink/healthy/account/HealthyAccountHolder;->setUserIconUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$000(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;->messag:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/veclink/healthy/business/http/pojo/UploadFileResponse;->messag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c009a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
