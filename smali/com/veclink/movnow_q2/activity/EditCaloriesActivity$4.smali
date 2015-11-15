.class Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$4;
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
    .line 209
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnLocalPic()V

    .line 213
    return-void
.end method
