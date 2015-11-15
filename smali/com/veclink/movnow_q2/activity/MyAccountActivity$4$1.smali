.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

.field final synthetic val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;Lcom/veclink/movnow_q2/view/CustomEditTextDialog;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$600(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$600(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->setNickName(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "nickName"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$000(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    goto :goto_0
.end method
