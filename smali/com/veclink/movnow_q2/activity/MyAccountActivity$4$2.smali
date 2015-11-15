.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;
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
    .line 157
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;->this$1:Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4$2;->val$customEditTextDialog:Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->dismiss()V

    .line 161
    return-void
.end method
