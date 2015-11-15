.class public Lcom/veclink/global/data/ExerciseAmountHolder;
.super Ljava/lang/Object;
.source "ExerciseAmountHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;
    }
.end annotation


# static fields
.field private static final HandleThreadName:Ljava/lang/String; = "ExerciseAmountHolderThread"

.field private static final Handler_init_data:I

.field private static mContext:Landroid/content/Context;

.field private static mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

.field public static mUptakeCalorieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDayExerciseAmountHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation
.end field

.field public mExerciseAmountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHandler:Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;

.field public mMonthExerciseAmountHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation
.end field

.field public mSleepQualityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepQuality;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mThreadLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mThreadLooper:Landroid/os/Looper;

    .line 34
    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mHandler:Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;

    .line 39
    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mSleepQualityList:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mDayExerciseAmountHash:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mMonthExerciseAmountHash:Ljava/util/HashMap;

    .line 302
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExerciseAmountHolderThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 303
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 304
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mThreadLooper:Landroid/os/Looper;

    .line 305
    new-instance v1, Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;

    iget-object v2, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mThreadLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;-><init>(Lcom/veclink/global/data/ExerciseAmountHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mHandler:Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;

    .line 306
    return-void
.end method

.method private Initial(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    sput-object p1, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    .line 340
    iget-object v0, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mHandler:Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void
.end method

.method public static deInit()V
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    invoke-virtual {v0}, Lcom/veclink/global/data/ExerciseAmountHolder;->Release()V

    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    goto :goto_0
.end method

.method public static getInstance()Lcom/veclink/global/data/ExerciseAmountHolder;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/veclink/global/data/ExerciseAmountHolder;

    invoke-direct {v0}, Lcom/veclink/global/data/ExerciseAmountHolder;-><init>()V

    sput-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    .line 318
    :cond_0
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountHolder:Lcom/veclink/global/data/ExerciseAmountHolder;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 328
    invoke-static {}, Lcom/veclink/global/data/ExerciseAmountHolder;->getInstance()Lcom/veclink/global/data/ExerciseAmountHolder;

    move-result-object v0

    .line 329
    .local v0, "obj":Lcom/veclink/global/data/ExerciseAmountHolder;
    invoke-direct {v0, p0}, Lcom/veclink/global/data/ExerciseAmountHolder;->Initial(Landroid/content/Context;)V

    .line 330
    return-void
.end method

.method private initDayExerciseAmountData()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "preKey":Ljava/lang/String;
    const/4 v7, 0x0

    .line 172
    .local v7, "stepNum":I
    const/4 v5, 0x0

    .line 173
    .local v5, "mileage":I
    const/4 v1, 0x0

    .line 174
    .local v1, "calorieConsume":I
    const/4 v2, 0x0

    .line 176
    .local v2, "counts":I
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .line 177
    .local v3, "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    if-nez v6, :cond_1

    .line 178
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v7

    .line 179
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v5

    .line 180
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v1

    .line 182
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 203
    :goto_1
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_0

    .line 204
    new-instance v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    invoke-direct {v0}, Lcom/veclink/healthy/database/entity/ExerciseAmount;-><init>()V

    .line 205
    .local v0, "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    invoke-virtual {v0, v7}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setStepNumber(I)V

    .line 206
    invoke-virtual {v0, v5}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setMileage(I)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setCalorieConsume(I)V

    .line 208
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mDayExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 211
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v8

    add-int/2addr v7, v8

    .line 186
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v8

    add-int v5, v7, v8

    .line 187
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v8

    add-int v1, v7, v8

    goto :goto_1

    .line 189
    :cond_2
    new-instance v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    invoke-direct {v0}, Lcom/veclink/healthy/database/entity/ExerciseAmount;-><init>()V

    .line 190
    .restart local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    invoke-virtual {v0, v7}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setStepNumber(I)V

    .line 191
    invoke-virtual {v0, v5}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setMileage(I)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setCalorieConsume(I)V

    .line 193
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mDayExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v7

    .line 196
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v5

    .line 197
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v1

    .line 199
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 212
    .end local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    .end local v3    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_3
    return-void
.end method

.method private initMonthExerciseAmountData()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "preKey":Ljava/lang/String;
    const/4 v7, 0x0

    .line 123
    .local v7, "stepNum":I
    const/4 v5, 0x0

    .line 124
    .local v5, "mileage":I
    const/4 v1, 0x0

    .line 125
    .local v1, "calorieConsume":I
    const/4 v2, 0x0

    .line 127
    .local v2, "counts":I
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .line 128
    .local v3, "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    if-nez v6, :cond_1

    .line 129
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v7

    .line 130
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v5

    .line 131
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v1

    .line 133
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 155
    :goto_1
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_0

    .line 156
    new-instance v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    invoke-direct {v0}, Lcom/veclink/healthy/database/entity/ExerciseAmount;-><init>()V

    .line 157
    .local v0, "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    invoke-virtual {v0, v7}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setStepNumber(I)V

    .line 158
    invoke-virtual {v0, v5}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setMileage(I)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setCalorieConsume(I)V

    .line 160
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mMonthExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 163
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v8

    add-int/2addr v7, v8

    .line 137
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v8

    add-int v5, v7, v8

    .line 138
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v8

    add-int v1, v7, v8

    goto :goto_1

    .line 140
    :cond_2
    new-instance v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    invoke-direct {v0}, Lcom/veclink/healthy/database/entity/ExerciseAmount;-><init>()V

    .line 141
    .restart local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    invoke-virtual {v0, v7}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setStepNumber(I)V

    .line 142
    invoke-virtual {v0, v5}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setMileage(I)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->setCalorieConsume(I)V

    .line 144
    iget-object v8, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mMonthExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getStepNumber()I

    move-result v7

    .line 147
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getMileage()I

    move-result v5

    .line 148
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getCalorieConsume()I

    move-result v1

    .line 150
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/ExerciseAmount;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 164
    .end local v0    # "amount":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    .end local v3    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_3
    return-void
.end method

.method public static initUptakeCalorieData()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "userId":Ljava/lang/String;
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    const-string v6, "yyyyMMdd"

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadUptakeCalorieByDay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "sum":F
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 59
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getCalorieContent()I

    move-result v0

    .line 60
    .local v0, "calory":I
    sget-object v5, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getCounts()F

    move-result v1

    .line 61
    .local v1, "copy":F
    int-to-float v5, v0

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "calory":I
    .end local v1    # "copy":F
    .end local v2    # "i":I
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_1

    .line 65
    const-string v5, "0"

    .line 67
    :goto_1
    return-object v5

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public Release()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public delUptakeCalorieData(ILcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "uptakeCalorie"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 100
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->delUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    .line 104
    :cond_0
    return-void
.end method

.method public getExerciseAmountByDay(Ljava/lang/String;)Lcom/veclink/healthy/database/entity/ExerciseAmount;
    .locals 2
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    iget-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mDayExerciseAmountHash:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mDayExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    check-cast v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .line 237
    .restart local v0    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_0
    return-object v0
.end method

.method public getExerciseAmountByMonth(Ljava/lang/String;)Lcom/veclink/healthy/database/entity/ExerciseAmount;
    .locals 2
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    iget-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mMonthExerciseAmountHash:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mMonthExerciseAmountHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    check-cast v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .line 224
    .restart local v0    # "ea":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_0
    return-object v0
.end method

.method public initExerciseAmountData()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadAllExerciseAmount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/veclink/global/data/ExerciseAmountHolder;->mExerciseAmountList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/veclink/global/data/ExerciseAmountHolder;->initMonthExerciseAmountData()V

    .line 113
    invoke-direct {p0}, Lcom/veclink/global/data/ExerciseAmountHolder;->initDayExerciseAmountData()V

    .line 115
    :cond_0
    return-void
.end method

.method public insertUptakeCalorieData(Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 1
    .param p1, "uptakeCalorie"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 77
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    .line 80
    :cond_0
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mUptakeCalorieList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)J

    .line 82
    return-void
.end method

.method public updateUptakeCalorieData(Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 1
    .param p1, "uptakeCalorie"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 90
    sget-object v0, Lcom/veclink/global/data/ExerciseAmountHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->updateUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    .line 91
    return-void
.end method
