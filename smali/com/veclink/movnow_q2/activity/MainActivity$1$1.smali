.class Lcom/veclink/movnow_q2/activity/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MainActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/activity/MainActivity$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MainActivity$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;->this$1:Lcom/veclink/movnow_q2/activity/MainActivity$1;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    const-class v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;->this$1:Lcom/veclink/movnow_q2/activity/MainActivity$1;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
