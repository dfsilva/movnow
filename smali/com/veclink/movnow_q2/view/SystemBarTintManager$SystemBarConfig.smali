.class public Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "translucentStatusBar"    # Z
    .param p3, "traslucentNavBar"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 377
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    .line 378
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    .line 379
    const-string v1, "status_bar_height"

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    .line 380
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    .line 381
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 382
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    .line 383
    iget v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    .line 384
    iput-boolean p2, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    .line 385
    iput-boolean p3, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    .line 386
    return-void

    :cond_0
    move v1, v3

    .line 377
    goto :goto_0

    :cond_1
    move v2, v3

    .line 383
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/veclink/movnow_q2/view/SystemBarTintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/veclink/movnow_q2/view/SystemBarTintManager$1;

    .prologue
    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "result":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 392
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 393
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 394
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 396
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_0
    return v0
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "result":I
    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 451
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 453
    :cond_0
    return v1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 402
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 403
    .local v2, "result":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget-boolean v3, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v3, :cond_1

    .line 407
    const-string v0, "navigation_bar_height"

    .line 411
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    .line 414
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_0
    return v2

    .line 409
    .restart local v2    # "result":I
    :cond_1
    const-string v0, "navigation_bar_height_landscape"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 421
    .local v1, "result":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 422
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const-string v2, "navigation_bar_width"

    invoke-direct {p0, v0, v2}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 426
    .end local v1    # "result":I
    :cond_0
    return v1
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 459
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v3, v4

    .line 466
    .local v2, "widthDp":F
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v4

    .line 467
    .local v0, "heightDp":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    return v3

    .line 463
    .end local v0    # "heightDp":F
    .end local v2    # "widthDp":F
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 432
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, "resourceId":I
    if-eqz v2, :cond_2

    .line 434
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 436
    .local v0, "hasNav":Z
    const-string v3, "1"

    # getter for: Lcom/veclink/movnow_q2/view/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 443
    .end local v0    # "hasNav":Z
    :cond_0
    :goto_0
    return v0

    .line 438
    .restart local v0    # "hasNav":Z
    :cond_1
    const-string v3, "0"

    # getter for: Lcom/veclink/movnow_q2/view/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    const/4 v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "hasNav":Z
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetRight()I
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2
    .param p1, "withActionBar"    # Z

    .prologue
    const/4 v0, 0x0

    .line 535
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
