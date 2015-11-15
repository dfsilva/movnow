.class Lcom/veclink/movnow_q2/activity/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/LoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "focus"    # Z

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/LoginActivity;->transport_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$000(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/LoginActivity;->transport_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$000(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
