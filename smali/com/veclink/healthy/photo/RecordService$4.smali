.class Lcom/veclink/healthy/photo/RecordService$4;
.super Landroid/os/Handler;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/photo/RecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordService;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/RecordService;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService$4;->this$0:Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$4;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # setter for: Lcom/veclink/healthy/photo/RecordService;->recordState:I
    invoke-static {v0, v1}, Lcom/veclink/healthy/photo/RecordService;->access$302(Lcom/veclink/healthy/photo/RecordService;I)I

    .line 209
    const-string v0, "RecordService"

    const-string v1, "stop take picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$4;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # setter for: Lcom/veclink/healthy/photo/RecordService;->recordState:I
    invoke-static {v0, v1}, Lcom/veclink/healthy/photo/RecordService;->access$302(Lcom/veclink/healthy/photo/RecordService;I)I

    .line 213
    const-string v0, "RecordService"

    const-string v1, "stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
