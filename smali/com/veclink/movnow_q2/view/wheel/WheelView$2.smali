.class Lcom/veclink/movnow_q2/view/wheel/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidateWheel(Z)V

    .line 252
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidateWheel(Z)V

    .line 257
    return-void
.end method
