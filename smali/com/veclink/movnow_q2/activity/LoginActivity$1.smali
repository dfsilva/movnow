.class Lcom/veclink/movnow_q2/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 134
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 138
    sget-object v0, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->finish()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->finish()V

    .line 143
    return-void
.end method
