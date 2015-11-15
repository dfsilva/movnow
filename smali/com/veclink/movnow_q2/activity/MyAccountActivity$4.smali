.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MyAccountActivity;->initView()V
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
    .line 153
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 156
    new-instance v0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "customEditTextDialog":Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->createDialog()Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setTip(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;

    invoke-direct {v3, p0, v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;Lcom/veclink/movnow_q2/view/CustomEditTextDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;

    invoke-direct {v3, p0, v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$1;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;Lcom/veclink/movnow_q2/view/CustomEditTextDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$600(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setEditText(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->showDialog()V

    .line 176
    return-void
.end method
