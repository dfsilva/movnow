.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveResult()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "savereult":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, v1, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_result_view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dismiss()V

    .line 91
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$000(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    goto :goto_0
.end method
