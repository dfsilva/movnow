.class public Lcom/veclink/healthy/view/BluetoothConnAnimView;
.super Landroid/widget/FrameLayout;
.source "BluetoothConnAnimView.java"


# static fields
.field private static final ANIMATIONEACHOFFSET:I = 0x3e8


# instance fields
.field private aniSet:Landroid/view/animation/AnimationSet;

.field private aniSet2:Landroid/view/animation/AnimationSet;

.field private aniSet3:Landroid/view/animation/AnimationSet;

.field private connect_message_view:Landroid/widget/TextView;

.field private control_view:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field public mDragging:Z

.field private wave1:Landroid/widget/ImageView;

.field private wave2:Landroid/widget/ImageView;

.field private wave3:Landroid/widget/ImageView;

.field private wave_halo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;-><init>(Lcom/veclink/healthy/view/BluetoothConnAnimView;)V

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->handler:Landroid/os/Handler;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->getNewAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet:Landroid/view/animation/AnimationSet;

    .line 48
    invoke-direct {p0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->getNewAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet2:Landroid/view/animation/AnimationSet;

    .line 49
    invoke-direct {p0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->getNewAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet3:Landroid/view/animation/AnimationSet;

    .line 50
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->control_view:Landroid/view/View;

    .line 51
    const v0, 0x7f060083

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->connect_message_view:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave1:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave2:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave3:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave_halo:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet2:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet3:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave3:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getNewAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 12

    .prologue
    const/4 v11, -0x1

    const v2, 0x3fcccccd    # 1.6f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    .local v10, "as":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 63
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 64
    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 65
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .local v9, "aniAlp":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 67
    const-wide/16 v1, 0xbb8

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 68
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 69
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 70
    return-object v10
.end method


# virtual methods
.method public setConnectMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->connect_message_view:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->connect_message_view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setControListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->control_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public startWaveAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 74
    iput-boolean v3, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    .line 75
    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 77
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 80
    .local v0, "am":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 81
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 82
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave_halo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave_halo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->handler:Landroid/os/Handler;

    const/16 v2, 0x222

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->handler:Landroid/os/Handler;

    const/16 v2, 0x333

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    return-void
.end method

.method public stopWaveAnimation()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 91
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 92
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 93
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave_halo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    .line 95
    return-void
.end method
