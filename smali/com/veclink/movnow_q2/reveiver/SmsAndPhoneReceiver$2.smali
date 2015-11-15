.class Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;
.super Ljava/lang/Thread;
.source "SmsAndPhoneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    iput-object p2, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->val$context:Landroid/content/Context;

    const-string v3, "family_phone_number_file.wao"

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 146
    .local v18, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 147
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "dialNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diaNumber is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 149
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 150
    .local v17, "msg":Landroid/os/Message;
    const/16 v2, 0x7d0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/os/Message;->what:I

    .line 151
    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    iget-object v2, v2, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->sendMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 154
    .local v20, "startTime":J
    const/4 v2, 0x0

    sput-boolean v2, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_IDLE:Z

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    sget-boolean v2, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_IDLE:Z

    if-nez v2, :cond_3

    .line 157
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 163
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 167
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 168
    .local v9, "duration":J
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "lastRecordNumber":Ljava/lang/String;
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    .local v19, "sfd":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 171
    .local v12, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastRecordNumber is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 173
    const/4 v15, 0x0

    .line 174
    .local v15, "isNowDialTime":Z
    sub-long v2, v12, v20

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 175
    const/4 v15, 0x1

    .line 177
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNowDialTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 178
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v15, :cond_0

    sget-boolean v2, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    if-eqz v2, :cond_0

    .line 179
    const/4 v2, 0x0

    sput-boolean v2, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    .line 186
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "dialNumber":Ljava/lang/String;
    .end local v9    # "duration":J
    .end local v12    # "endTime":J
    .end local v15    # "isNowDialTime":Z
    .end local v16    # "lastRecordNumber":Ljava/lang/String;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v19    # "sfd":Ljava/text/SimpleDateFormat;
    .end local v20    # "startTime":J
    :cond_2
    return-void

    .line 158
    .restart local v8    # "dialNumber":Ljava/lang/String;
    .restart local v17    # "msg":Landroid/os/Message;
    .restart local v20    # "startTime":J
    :catch_0
    move-exception v11

    .line 160
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 183
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    # invokes: Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->closePhone()V
    invoke-static {v2}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->access$100(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;)V

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method
