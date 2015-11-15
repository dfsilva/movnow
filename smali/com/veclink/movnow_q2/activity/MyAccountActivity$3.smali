.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;
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
    .line 131
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    new-instance v1, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$400(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/CircleImageView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V

    # setter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$302(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .line 135
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$300(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$500(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->setExtendHandler(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$300(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->show()V

    .line 137
    return-void
.end method
