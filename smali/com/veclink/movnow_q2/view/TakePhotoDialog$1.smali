.class Lcom/veclink/movnow_q2/view/TakePhotoDialog$1;
.super Ljava/lang/Object;
.source "TakePhotoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/TakePhotoDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/TakePhotoDialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog$1;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog$1;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->dismiss()V

    .line 54
    return-void
.end method
