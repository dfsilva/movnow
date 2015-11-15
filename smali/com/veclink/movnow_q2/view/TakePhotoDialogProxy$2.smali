.class Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;
.super Ljava/lang/Object;
.source "TakePhotoDialogProxy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->btnLocalPic()V

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$000(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->dismiss()V

    .line 81
    return-void
.end method
