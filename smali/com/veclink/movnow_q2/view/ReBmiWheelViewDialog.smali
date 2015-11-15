.class public Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;
.super Landroid/app/Dialog;
.source "ReBmiWheelViewDialog.java"


# static fields
.field public static final SHOW_BIRDAY_VIEW:I = 0x1

.field public static final SHOW_HEIGHTVIEW:I = 0x3

.field public static final SHOW_WIEGHTVIEW:I = 0x2


# instance fields
.field final VISIBLEITEMCOUNT:I

.field private birday_wheelViews:Landroid/view/View;

.field currentItemSize:I

.field private dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private defaultListener:Landroid/view/View$OnClickListener;

.field private first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field height_unit_array:[Ljava/lang/String;

.field private height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private height_wheelViews:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field minWeight:I

.field private monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private saveBtn:Landroid/widget/Button;

.field private saveListener:Landroid/view/View$OnClickListener;

.field private second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private second_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field public show_result_view:Landroid/widget/TextView;

.field private show_which:I

.field weight_unit_array:[Ljava/lang/String;

.field private weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private weight_wheelViews:Landroid/view/View;

.field private yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "show_which"    # I
    .param p3, "show_result_view"    # Landroid/widget/TextView;

    .prologue
    .line 75
    const v0, 0x7f0b0016

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->VISIBLEITEMCOUNT:I

    .line 64
    new-instance v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$1;-><init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->defaultListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    .line 77
    iput p2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_which:I

    .line 78
    iput-object p3, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_result_view:Landroid/widget/TextView;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method private initHeightView()V
    .locals 14

    .prologue
    .line 180
    const v10, 0x7f06016a

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 181
    const v10, 0x7f06016b

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 182
    const v10, 0x7f06016c

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 184
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f02018f

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 185
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f020124

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 187
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f02018f

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 188
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f020124

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 190
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f02018f

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 191
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v11, 0x7f020124

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 193
    new-instance v4, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/16 v12, 0x8

    const v13, 0x7f030050

    invoke-direct {v4, v10, v11, v12, v13}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 194
    .local v4, "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v11, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 195
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v10, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 196
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 197
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 198
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v8, "secondDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v10, 0x64

    if-ge v7, v10, :cond_0

    .line 200
    const-string v10, ".%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v9, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-interface {v8}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 203
    .local v9, "sencound_height_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    const v10, 0x7f030050

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 204
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v11, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 205
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v10, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 206
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 208
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_array:[Ljava/lang/String;

    .line 209
    new-instance v6, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_array:[Ljava/lang/String;

    invoke-direct {v6, v10, v11}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 210
    .local v6, "height_unit_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    const v10, 0x7f030050

    invoke-virtual {v6, v10}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 211
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v11, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 212
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v10, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 213
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    new-instance v11, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;

    invoke-direct {v11, p0, v6}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;-><init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;)V

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V

    .line 231
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v11, "personal_height"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 232
    .local v3, "height":F
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v11, "pre_DistanceType"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    .local v0, "distanceType":I
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "distanceUnitArray":[Ljava/lang/String;
    const-string v2, ""

    .line 235
    .local v2, "distanceUnitString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 236
    const/4 v10, 0x1

    aget-object v2, v1, v10

    .line 237
    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v3

    float-to-double v10, v10

    const/4 v12, 0x2

    const/4 v13, 0x4

    invoke-static {v10, v11, v12, v13}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v3

    .line 238
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 244
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    const-string v11, "[.]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "heightStringArray":[Ljava/lang/String;
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 246
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 249
    return-void

    .line 240
    .end local v5    # "heightStringArray":[Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    aget-object v2, v1, v10

    .line 241
    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v3

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFtByM(F)F

    move-result v3

    .line 242
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private initShowView()V
    .locals 15

    .prologue
    const v14, 0x7f030050

    const/4 v13, 0x5

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v12, 0x1

    .line 122
    iget v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_which:I

    packed-switch v9, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->birday_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 129
    .local v4, "maxYear":I
    new-instance v8, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/16 v10, 0x781

    invoke-direct {v8, v9, v10, v4, v14}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 130
    .local v8, "yearAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    new-instance v6, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/16 v10, 0xc

    invoke-direct {v6, v9, v12, v10, v14}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 131
    .local v6, "monthAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    new-instance v2, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/16 v10, 0x1f

    invoke-direct {v2, v9, v12, v10, v14}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 132
    .local v2, "dayAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 133
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 134
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 135
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 136
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 137
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 139
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 140
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 141
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v10, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 146
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 147
    .local v3, "lableTextSize":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setLabelSize(I)V

    .line 148
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setLabelSize(I)V

    .line 149
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setLabelSize(I)V

    .line 151
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 152
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 153
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v9, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 154
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v10, "personal_year"

    const/16 v11, 0x781

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 155
    .local v7, "year":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v10, "personal_month"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 156
    .local v5, "month":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v10, "personal_day"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    .local v1, "day":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    add-int/lit16 v10, v7, -0x781

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 158
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 159
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "day":I
    .end local v2    # "dayAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v3    # "lableTextSize":I
    .end local v4    # "maxYear":I
    .end local v5    # "month":I
    .end local v6    # "monthAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v7    # "year":I
    .end local v8    # "yearAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    :pswitch_1
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->birday_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->initWeightView()V

    goto/16 :goto_0

    .line 169
    :pswitch_2
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->birday_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v9, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_wheelViews:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->initHeightView()V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initWeightView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f030050

    const v8, 0x7f02018f

    const v7, 0x7f020124

    const/4 v9, 0x1

    .line 253
    const v6, 0x7f060166

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 254
    const v6, 0x7f060167

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 255
    const v6, 0x7f060168

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 257
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 258
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 260
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 261
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 263
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 264
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 278
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    .line 279
    new-instance v5, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 280
    .local v5, "weight_unit_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    invoke-virtual {v5, v10}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 281
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v7, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 282
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 283
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    new-instance v7, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;

    invoke-direct {v7, p0, v5}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;-><init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;)V

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V

    .line 303
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v7, "pre_Weight_Type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 304
    .local v3, "weightType":I
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const-string v7, "personal_weight"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 306
    .local v1, "weight":F
    const-string v4, ""

    .line 307
    .local v4, "weightUnitString":Ljava/lang/String;
    if-ne v3, v9, :cond_0

    .line 308
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    aget-object v4, v6, v9

    .line 309
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 310
    const/4 v6, 0x2

    iput v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    .line 311
    new-instance v2, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    const/16 v8, 0xc8

    invoke-direct {v2, v6, v7, v8, v10}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 313
    .local v2, "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 314
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 315
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 327
    :goto_0
    iget v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    int-to-float v6, v6

    sub-float v6, v1, v6

    float-to-int v0, v6

    .line 328
    .local v0, "currentItem":I
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 330
    return-void

    .line 317
    .end local v0    # "currentItem":I
    .end local v2    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    :cond_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    aget-object v4, v6, v11

    .line 318
    invoke-static {v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getLbUnitWeight(F)F

    move-result v1

    .line 319
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 320
    const/4 v6, 0x4

    iput v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    .line 321
    new-instance v2, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    const/16 v8, 0x1b9

    invoke-direct {v2, v6, v7, v8, v10}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 323
    .restart local v2    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 324
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 325
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSaveListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f02018f

    const v6, 0x7f020124

    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f03004f

    .line 85
    .local v0, "layoutResId":I
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const v0, 0x7f03004e

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setContentView(Landroid/view/View;)V

    .line 90
    const v4, 0x7f0600a1

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveBtn:Landroid/widget/Button;

    .line 91
    iget-object v5, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveListener:Landroid/view/View$OnClickListener;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->defaultListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v4, 0x7f060161

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->birday_wheelViews:Landroid/view/View;

    .line 93
    const v4, 0x7f060165

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_wheelViews:Landroid/view/View;

    .line 94
    const v4, 0x7f060169

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_wheelViews:Landroid/view/View;

    .line 95
    const v4, 0x7f060162

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 96
    const v4, 0x7f060163

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 97
    const v4, 0x7f060164

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 98
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->currentItemSize:I

    .line 100
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 101
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 103
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 104
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 106
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 107
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 109
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v5}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 111
    .local v2, "window":Landroid/view/Window;
    const v4, 0x7f0b0018

    invoke-virtual {v2, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 112
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 113
    .local v3, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->initShowView()V

    .line 119
    return-void

    .line 91
    .end local v2    # "window":Landroid/view/Window;
    .end local v3    # "wl":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveListener:Landroid/view/View$OnClickListener;

    goto/16 :goto_0
.end method

.method public saveResult()Ljava/lang/String;
    .locals 22

    .prologue
    .line 334
    const/4 v11, 0x0

    .line 335
    .local v11, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show_which:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :goto_0
    move-object/from16 v19, v11

    .line 417
    :goto_1
    return-object v19

    .line 338
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v2, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x781

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "personal_year"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x781

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "personal_month"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "personal_day"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 346
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x781

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 360
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v5

    check-cast v5, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .line 361
    .local v5, "firstAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v12

    check-cast v12, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    .line 362
    .local v12, "secondAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v18

    check-cast v18, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    .line 363
    .local v18, "weightunitAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v16, "weightBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v15, v0

    .line 365
    .local v15, "weight":F
    float-to-int v14, v15

    .line 366
    .local v14, "tempWeight":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 369
    .local v17, "weightunit":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 373
    invoke-static {v15}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getKgUnitWeight(F)F

    move-result v15

    .line 375
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "personal_weight"

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v4

    .line 377
    .local v4, "currentWeightUnit":I
    if-nez v4, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "pre_Weight_Type"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 380
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "pre_Weight_Type"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 385
    .end local v4    # "currentWeightUnit":I
    .end local v5    # "firstAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v12    # "secondAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    .end local v14    # "tempWeight":I
    .end local v15    # "weight":F
    .end local v16    # "weightBuffer":Ljava/lang/StringBuffer;
    .end local v17    # "weightunit":Ljava/lang/String;
    .end local v18    # "weightunitAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v6

    check-cast v6, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .line 386
    .local v6, "firstHeightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    .line 387
    .local v13, "secondHeightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    .line 388
    .local v10, "heightunitAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;, "Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter<Ljava/lang/Object;>;"
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 389
    .local v8, "heightBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->second_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 392
    .local v7, "height":F
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-nez v19, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c01b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    const-string v19, ""

    goto/16 :goto_1

    .line 396
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "heightUint":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_array:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 401
    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getMbyFt(F)F

    move-result v19

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v7, v19, v20

    .line 408
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "personal_height"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    .line 410
    .local v3, "currentHeightUnit":I
    if-nez v3, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "pre_DistanceType"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 405
    .end local v3    # "currentHeightUnit":I
    :cond_4
    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v7, v7, v19

    goto :goto_3

    .line 413
    .restart local v3    # "currentHeightUnit":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "pre_DistanceType"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaveListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "saveListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->saveListener:Landroid/view/View$OnClickListener;

    .line 427
    return-void
.end method
