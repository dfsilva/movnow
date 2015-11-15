.class public Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;
.super Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
.source "DateNumericAdapter.java"


# instance fields
.field currentItem:I

.field currentValue:I

.field fontSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "current"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 21
    const/16 v0, 0x12

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->fontSize:I

    .line 29
    iput p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->currentValue:I

    .line 30
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->fontSize:I

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->setTextSize(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "current"    # I
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 21
    const/16 v0, 0x12

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->fontSize:I

    .line 34
    iput p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->currentValue:I

    .line 35
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->fontSize:I

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->setTextSize(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 40
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->currentItem:I

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->currentValue:I

    if-ne v0, v1, :cond_0

    .line 41
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    return-void
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/DateNumericAdapter;->currentItem:I

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
