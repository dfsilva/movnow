.class public Lcom/veclink/movnow_q2/view/wheel/WheelViewOnWheelScrollListener;
.super Ljava/lang/Object;
.source "WheelViewOnWheelScrollListener.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelViewOnWheelScrollListener;->handler:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelViewOnWheelScrollListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelViewOnWheelScrollListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    :cond_0
    return-void
.end method

.method public onScrollingStarted(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 0
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 20
    return-void
.end method
