.class Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;
.super Ljava/lang/Object;
.source "ReBmiWheelViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveResult()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, v1, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_result_view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dismiss()V

    goto :goto_0
.end method
