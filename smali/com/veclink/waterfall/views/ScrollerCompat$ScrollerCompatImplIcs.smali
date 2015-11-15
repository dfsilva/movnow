.class Lcom/veclink/waterfall/views/ScrollerCompat$ScrollerCompatImplIcs;
.super Lcom/veclink/waterfall/views/ScrollerCompat;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplIcs"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/ScrollerCompat;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/veclink/waterfall/views/ScrollerCompat$ScrollerCompatImplIcs;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/veclink/waterfall/views/ScrollerCompatIcs;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    return v0
.end method
