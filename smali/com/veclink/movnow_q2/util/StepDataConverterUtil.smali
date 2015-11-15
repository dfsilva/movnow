.class public Lcom/veclink/movnow_q2/util/StepDataConverterUtil;
.super Ljava/lang/Object;
.source "StepDataConverterUtil.java"


# static fields
.field private static final KM_TO_MILE_C:F = 0.6213712f

.field public static final TYPE_DISTANCES:I = 0x1

.field public static final TYPE_KCAL:I = 0x2

.field public static final TYPE_STEPS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBmiHeightByChooseResult(Landroid/content/Context;F)Ljava/lang/String;
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "choose_result"    # F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "result_string":Ljava/lang/String;
    const-string v4, "pre_DistanceType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    .local v0, "height_unit":I
    if-nez v0, :cond_0

    .line 240
    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->round(DII)D

    move-result-wide v2

    .line 241
    .local v2, "result_temp":D
    const v4, 0x7f0c0139

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 243
    .end local v2    # "result_temp":D
    :cond_0
    float-to-double v4, p1

    invoke-static {v4, v5, v8, v9}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->round(DII)D

    move-result-wide v2

    .line 244
    .restart local v2    # "result_temp":D
    const v4, 0x7f0c013a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBmiWeightByChooseResult(Landroid/content/Context;F)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "choose_result"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "result_string":Ljava/lang/String;
    const-string v2, "pre_Weight_Type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 252
    .local v1, "weight_unit":I
    if-ne v1, v5, :cond_0

    .line 253
    float-to-double v2, p1

    const/4 v4, 0x4

    invoke-static {v2, v3, v5, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result p1

    .line 254
    const v2, 0x7f0c013b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 256
    :cond_0
    const v2, 0x7f0c013c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    float-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCaloryByWeightAndDisStance(FDI)I
    .locals 6
    .param p0, "weight"    # F
    .param p1, "distM"    # D
    .param p3, "sport_type"    # I

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 144
    .local v0, "result":D
    packed-switch p3, :pswitch_data_0

    .line 153
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->round(DII)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 146
    :pswitch_0
    const-wide v2, 0x3fe3333333333333L    # 0.6

    float-to-double v4, p0

    mul-double/2addr v2, v4

    mul-double v0, v2, p1

    .line 147
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDistance(Landroid/content/Context;I)D
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stepsCount"    # I

    .prologue
    .line 285
    const-string v4, "personal_height"

    const/high16 v5, 0x43200000    # 160.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 286
    .local v1, "person_height":F
    const-string v4, "pre_DistanceType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "distance_unit":I
    invoke-static {v1, v0}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v4

    int-to-double v6, p1

    mul-double v2, v4, v6

    .line 288
    .local v2, "stepDistance":D
    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static getFormatDistance(D)D
    .locals 4
    .param p0, "distance"    # D

    .prologue
    .line 109
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 110
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {p0, p1, v0, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->round(DII)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFtByM(F)F
    .locals 5
    .param p0, "height"    # F

    .prologue
    .line 183
    float-to-double v1, p0

    const-wide v3, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr v1, v3

    double-to-float v0, v1

    .line 184
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getKcal(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stepsCount"    # I

    .prologue
    .line 297
    const-string v5, "personal_weight"

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 298
    .local v2, "person_weight":F
    const-string v5, "personal_height"

    const/high16 v6, 0x43200000    # 160.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 299
    .local v1, "person_height":F
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v5

    int-to-double v7, p1

    mul-double v3, v5, v7

    .line 300
    .local v3, "stepDistanceKMUnit":D
    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v0

    .line 301
    .local v0, "cal":I
    return v0
.end method

.method public static getKgUnitWeight(F)F
    .locals 5
    .param p0, "weight"    # F

    .prologue
    .line 162
    float-to-double v1, p0

    const-wide v3, 0x4001a3112c782e0fL    # 2.2046226

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 163
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getKmDistance(F)F
    .locals 5
    .param p0, "height"    # F

    .prologue
    .line 195
    const v1, 0x3f1f122f

    div-float v0, p0, v1

    .line 196
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getLbUnitWeight(F)F
    .locals 5
    .param p0, "weight"    # F

    .prologue
    .line 189
    float-to-double v1, p0

    const-wide v3, 0x4001a3112c782e0fL    # 2.2046226

    mul-double/2addr v1, v3

    double-to-float v0, v1

    .line 190
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getMbyFt(F)F
    .locals 5
    .param p0, "height"    # F

    .prologue
    .line 172
    float-to-double v1, p0

    const-wide v3, 0x3fd381d7dbf487fdL    # 0.3048

    mul-double/2addr v1, v3

    double-to-float v0, v1

    .line 173
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getMileDistance(F)F
    .locals 5
    .param p0, "height"    # F

    .prologue
    .line 201
    const v1, 0x3f1f122f

    mul-float v0, p0, v1

    .line 202
    .local v0, "result":F
    float-to-double v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v1

    return v1
.end method

.method public static getRunStepDistanceByHeight(FI)D
    .locals 9
    .param p0, "height"    # F
    .param p1, "unit"    # I

    .prologue
    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v5, 0x42480000    # 50.0f

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "stepDistance":D
    cmpg-float v2, p0, v5

    if-gtz v2, :cond_2

    .line 64
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 98
    :cond_0
    :goto_0
    if-nez p1, :cond_12

    .line 99
    div-double/2addr v0, v3

    .line 103
    :cond_1
    :goto_1
    return-wide v0

    .line 65
    :cond_2
    cmpg-float v2, v5, p0

    if-gez v2, :cond_3

    cmpg-float v2, p0, v6

    if-gtz v2, :cond_3

    .line 66
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    .line 67
    :cond_3
    cmpg-float v2, v6, p0

    if-gez v2, :cond_4

    cmpg-float v2, p0, v7

    if-gtz v2, :cond_4

    .line 68
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    .line 69
    :cond_4
    cmpg-float v2, v7, p0

    if-gez v2, :cond_5

    cmpg-float v2, p0, v8

    if-gtz v2, :cond_5

    .line 70
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    .line 71
    :cond_5
    cmpg-float v2, v8, p0

    if-gez v2, :cond_6

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_6

    .line 72
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    .line 73
    :cond_6
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_7

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_7

    .line 74
    const-wide v0, 0x4046800000000000L    # 45.0

    goto :goto_0

    .line 75
    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_8

    const/high16 v2, 0x42dc0000    # 110.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_8

    .line 76
    const-wide v0, 0x4048800000000000L    # 49.0

    goto :goto_0

    .line 77
    :cond_8
    const/high16 v2, 0x42dc0000    # 110.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_9

    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_9

    .line 78
    const-wide/high16 v0, 0x404b000000000000L    # 54.0

    goto :goto_0

    .line 79
    :cond_9
    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_a

    const/high16 v2, 0x43020000    # 130.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_a

    .line 80
    const-wide/high16 v0, 0x404d000000000000L    # 58.0

    goto :goto_0

    .line 81
    :cond_a
    const/high16 v2, 0x43020000    # 130.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_b

    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_b

    .line 82
    const-wide v0, 0x404f800000000000L    # 63.0

    goto/16 :goto_0

    .line 83
    :cond_b
    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_c

    const/high16 v2, 0x43160000    # 150.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_c

    .line 84
    const-wide v0, 0x4050c00000000000L    # 67.0

    goto/16 :goto_0

    .line 85
    :cond_c
    const/high16 v2, 0x43160000    # 150.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_d

    const/high16 v2, 0x43200000    # 160.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_d

    .line 86
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    goto/16 :goto_0

    .line 87
    :cond_d
    const/high16 v2, 0x43200000    # 160.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_e

    const/high16 v2, 0x432a0000    # 170.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_e

    .line 88
    const-wide/high16 v0, 0x4053000000000000L    # 76.0

    goto/16 :goto_0

    .line 89
    :cond_e
    const/high16 v2, 0x432a0000    # 170.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_f

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_f

    .line 90
    const-wide v0, 0x4054400000000000L    # 81.0

    goto/16 :goto_0

    .line 91
    :cond_f
    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_10

    const/high16 v2, 0x433e0000    # 190.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_10

    .line 92
    const-wide v0, 0x4055400000000000L    # 85.0

    goto/16 :goto_0

    .line 93
    :cond_10
    const/high16 v2, 0x433e0000    # 190.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_11

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_11

    .line 94
    const-wide v0, 0x4056800000000000L    # 90.0

    goto/16 :goto_0

    .line 95
    :cond_11
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_0

    .line 96
    const-wide v0, 0x4056800000000000L    # 90.0

    goto/16 :goto_0

    .line 100
    :cond_12
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 101
    div-double v2, v0, v3

    const-wide v4, 0x3fe3e245e0000000L    # 0.6213712096214294

    mul-double v0, v2, v4

    goto/16 :goto_1
.end method

.method public static getStepDistanceByHeight(FI)D
    .locals 8
    .param p0, "height"    # F
    .param p1, "unit"    # I

    .prologue
    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v3, 0x42480000    # 50.0f

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .local v0, "stepDistance":D
    cmpg-float v2, p0, v3

    if-gtz v2, :cond_2

    .line 16
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 51
    :cond_0
    :goto_0
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    .line 52
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 53
    const-wide v2, 0x3fe3e245e0000000L    # 0.6213712096214294

    mul-double/2addr v0, v2

    .line 55
    :cond_1
    return-wide v0

    .line 17
    :cond_2
    cmpg-float v2, v3, p0

    if-gez v2, :cond_3

    cmpg-float v2, p0, v4

    if-gtz v2, :cond_3

    .line 18
    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    goto :goto_0

    .line 19
    :cond_3
    cmpg-float v2, v4, p0

    if-gez v2, :cond_4

    cmpg-float v2, p0, v5

    if-gtz v2, :cond_4

    .line 20
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_0

    .line 21
    :cond_4
    cmpg-float v2, v5, p0

    if-gez v2, :cond_5

    cmpg-float v2, p0, v6

    if-gtz v2, :cond_5

    .line 22
    const-wide/high16 v0, 0x403d000000000000L    # 29.0

    goto :goto_0

    .line 23
    :cond_5
    cmpg-float v2, v6, p0

    if-gez v2, :cond_6

    cmpg-float v2, p0, v7

    if-gtz v2, :cond_6

    .line 24
    const-wide v0, 0x4040800000000000L    # 33.0

    goto :goto_0

    .line 25
    :cond_6
    cmpg-float v2, v7, p0

    if-gez v2, :cond_7

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_7

    .line 26
    const-wide v0, 0x4042800000000000L    # 37.0

    goto :goto_0

    .line 27
    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_8

    const/high16 v2, 0x42dc0000    # 110.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_8

    .line 28
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    .line 29
    :cond_8
    const/high16 v2, 0x42dc0000    # 110.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_9

    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_9

    .line 30
    const-wide/high16 v0, 0x4046000000000000L    # 44.0

    goto :goto_0

    .line 31
    :cond_9
    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_a

    const/high16 v2, 0x43020000    # 130.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_a

    .line 32
    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    goto :goto_0

    .line 33
    :cond_a
    const/high16 v2, 0x43020000    # 130.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_b

    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_b

    .line 34
    const-wide v0, 0x4049800000000000L    # 51.0

    goto/16 :goto_0

    .line 35
    :cond_b
    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_c

    const/high16 v2, 0x43160000    # 150.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_c

    .line 36
    const-wide v0, 0x404b800000000000L    # 55.0

    goto/16 :goto_0

    .line 37
    :cond_c
    const/high16 v2, 0x43160000    # 150.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_d

    const/high16 v2, 0x43200000    # 160.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_d

    .line 38
    const-wide v0, 0x404d800000000000L    # 59.0

    goto/16 :goto_0

    .line 39
    :cond_d
    const/high16 v2, 0x43200000    # 160.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_e

    const/high16 v2, 0x432a0000    # 170.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_e

    .line 40
    const-wide/high16 v0, 0x404f000000000000L    # 62.0

    goto/16 :goto_0

    .line 41
    :cond_e
    const/high16 v2, 0x432a0000    # 170.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_f

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_f

    .line 42
    const-wide v0, 0x4050800000000000L    # 66.0

    goto/16 :goto_0

    .line 43
    :cond_f
    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_10

    const/high16 v2, 0x433e0000    # 190.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_10

    .line 44
    const-wide v0, 0x4051800000000000L    # 70.0

    goto/16 :goto_0

    .line 45
    :cond_10
    const/high16 v2, 0x433e0000    # 190.0f

    cmpg-float v2, v2, p0

    if-gez v2, :cond_11

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_11

    .line 46
    const-wide v0, 0x4052800000000000L    # 74.0

    goto/16 :goto_0

    .line 47
    :cond_11
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_0

    .line 48
    const-wide v0, 0x4052800000000000L    # 74.0

    goto/16 :goto_0
.end method

.method public static getTotalStepByOriginData(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "originDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v2, 0x0

    .line 265
    .local v2, "total_step":I
    if-eqz p0, :cond_0

    .line 266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    .line 267
    .local v1, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 268
    goto :goto_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    return v2
.end method

.method public static round(DII)D
    .locals 3
    .param p0, "value"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 115
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 117
    .local v1, "result":D
    const/4 v0, 0x0

    .line 118
    return-wide v1
.end method

.method public static roundFloat(DII)F
    .locals 2
    .param p0, "value"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 123
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 125
    .local v1, "result":F
    const/4 v0, 0x0

    .line 126
    return v1
.end method
