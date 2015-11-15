.class Lcom/veclink/movnow_q2/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->finish()V

    .line 68
    return-void
.end method
