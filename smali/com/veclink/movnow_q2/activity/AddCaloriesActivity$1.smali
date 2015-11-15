.class Lcom/veclink/movnow_q2/activity/AddCaloriesActivity$1;
.super Ljava/lang/Object;
.source "AddCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->backDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->finish()V

    .line 63
    return-void
.end method
