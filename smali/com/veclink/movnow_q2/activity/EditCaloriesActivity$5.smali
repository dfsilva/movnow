.class Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$5;
.super Ljava/lang/Object;
.source "EditCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->showPortaitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->access$100(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 219
    return-void
.end method
