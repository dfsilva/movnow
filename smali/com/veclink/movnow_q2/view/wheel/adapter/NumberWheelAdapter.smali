.class public Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;
.super Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;
.source "NumberWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I

.field private time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "itemResourceId"    # I

    .prologue
    .line 57
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "time"    # I
    .param p5, "itemResourceId"    # I

    .prologue
    .line 67
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 68
    iput p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->time:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 107
    iput p2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->minValue:I

    .line 108
    iput p3, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->maxValue:I

    .line 109
    iput-object p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->format:Ljava/lang/String;

    .line 110
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
    .line 79
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 81
    iput p2, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->minValue:I

    .line 82
    iput p3, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->maxValue:I

    .line 83
    iput-object p4, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->format:Ljava/lang/String;

    .line 84
    iput p5, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->itemResourceId:I

    .line 85
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 114
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 115
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->minValue:I

    add-int v0, v1, p1

    .line 116
    .local v0, "value":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->format:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .end local v0    # "value":I
    :goto_0
    return-object v1

    .line 116
    .restart local v0    # "value":I
    :cond_0
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->time:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    .end local v0    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
