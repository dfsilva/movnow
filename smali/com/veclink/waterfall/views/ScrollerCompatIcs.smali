.class Lcom/veclink/waterfall/views/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .locals 1
    .param p0, "scroller"    # Landroid/widget/Scroller;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
