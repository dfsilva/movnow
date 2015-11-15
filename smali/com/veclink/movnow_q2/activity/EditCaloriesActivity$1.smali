.class Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$1;
.super Ljava/lang/Object;
.source "EditCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->initView()V
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
    .line 95
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->showPortaitDialog()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->access$000(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    .line 99
    return-void
.end method
