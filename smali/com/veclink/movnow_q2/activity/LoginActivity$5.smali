.class Lcom/veclink/movnow_q2/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

.field final synthetic val$toastString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$5;->val$toastString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$5;->val$toastString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    return-void
.end method
