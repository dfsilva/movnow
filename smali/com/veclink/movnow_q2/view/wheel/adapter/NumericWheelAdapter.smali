.class public Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
.super Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field isfloat:Z

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "itemResourceId"    # I

    .prologue
    .line 58
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    iput p2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->minValue:I

    .line 112
    iput p3, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->maxValue:I

    .line 113
    iput-object p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "itemResourceId"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    iput p2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->minValue:I

    .line 86
    iput p3, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->maxValue:I

    .line 87
    iput-object p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->itemResourceId:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "isfloat"    # Z
    .param p5, "itemResourceId"    # I

    .prologue
    .line 71
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 72
    iput-boolean p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->isfloat:Z

    .line 73
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 118
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 119
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->minValue:I

    add-int v1, v2, p1

    .line 121
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->isfloat:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v4, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .end local v1    # "value":I
    :goto_0
    return-object v0

    .line 125
    .restart local v1    # "value":I
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 129
    .end local v1    # "value":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
