.class public Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;
.super Ljava/lang/Object;
.source "HealthyDBOprateSleepData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v15, "sleepDataTotalList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v17, "sleepDeepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v19, "sleepLightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    const/16 v20, 0x0

    .line 137
    .local v20, "sleepTotalData":Lcom/veclink/healthy/database/entity/SleepData;
    const/16 v16, 0x0

    .line 138
    .local v16, "sleepDeepData":Lcom/veclink/healthy/database/entity/SleepData;
    const/16 v18, 0x0

    .line 139
    .local v18, "sleepLightData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 140
    .local v2, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 142
    .local v10, "preCalendar":Ljava/util/Calendar;
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    const-wide/32 v23, 0x5265c00

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 143
    .local v11, "preDate":Ljava/util/Date;
    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 144
    const/4 v13, 0x0

    .line 145
    .local v13, "queryCurrentDays":Ljava/lang/String;
    const/4 v14, 0x0

    .line 146
    .local v14, "queryPreDays":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v21, 0x6

    move/from16 v0, v21

    if-gt v3, v0, :cond_5

    .line 147
    new-instance v20, Lcom/veclink/healthy/database/entity/SleepData;

    .end local v20    # "sleepTotalData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-direct/range {v20 .. v20}, Lcom/veclink/healthy/database/entity/SleepData;-><init>()V

    .line 148
    .restart local v20    # "sleepTotalData":Lcom/veclink/healthy/database/entity/SleepData;
    new-instance v16, Lcom/veclink/healthy/database/entity/SleepData;

    .end local v16    # "sleepDeepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-direct/range {v16 .. v16}, Lcom/veclink/healthy/database/entity/SleepData;-><init>()V

    .line 149
    .restart local v16    # "sleepDeepData":Lcom/veclink/healthy/database/entity/SleepData;
    new-instance v18, Lcom/veclink/healthy/database/entity/SleepData;

    .end local v18    # "sleepLightData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-direct/range {v18 .. v18}, Lcom/veclink/healthy/database/entity/SleepData;-><init>()V

    .line 150
    .restart local v18    # "sleepLightData":Lcom/veclink/healthy/database/entity/SleepData;
    const/4 v8, 0x0

    .line 151
    .local v8, "oneDayDuration":I
    const/4 v7, 0x0

    .line 152
    .local v7, "oneDayDeepSleepDuration":I
    const/4 v9, 0x0

    .line 153
    .local v9, "oneDayLightSleepDuration":I
    if-nez v3, :cond_0

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 156
    invoke-static {v11}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 167
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectSleepDataByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 168
    .local v6, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectPreDaySleepData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 169
    .local v12, "preDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v6, :cond_2

    .line 170
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/SleepData;

    .line 171
    .local v5, "item":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v8, v8, v21

    .line 172
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 173
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v7, v7, v21

    goto :goto_2

    .line 159
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v12    # "preDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_0
    const/16 v21, 0x5

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 160
    const/16 v21, 0x5

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 161
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 162
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 175
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    .restart local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .restart local v12    # "preDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_1
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v9, v9, v21

    goto :goto_2

    .line 179
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_2
    if-eqz v12, :cond_4

    .line 180
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/SleepData;

    .line 181
    .restart local v5    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v8, v8, v21

    .line 182
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 183
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v7, v7, v21

    goto :goto_3

    .line 185
    :cond_3
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v9, v9, v21

    goto :goto_3

    .line 190
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/veclink/healthy/database/entity/SleepData;->setSleepDuration(I)V

    .line 191
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/veclink/healthy/database/entity/SleepData;->setSleepDuration(I)V

    .line 194
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/veclink/healthy/database/entity/SleepData;->setSleepDuration(I)V

    .line 197
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v7    # "oneDayDeepSleepDuration":I
    .end local v8    # "oneDayDuration":I
    .end local v9    # "oneDayLightSleepDuration":I
    .end local v12    # "preDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 208
    .end local v17    # "sleepDeepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :goto_4
    return-object v17

    .line 203
    .restart local v17    # "sleepDeepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_6
    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move-object/from16 v17, v19

    .line 205
    goto :goto_4

    :cond_7
    move-object/from16 v17, v15

    .line 208
    goto :goto_4
.end method

.method public static querySleepDataByOneWeekAtNight(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v7, "oneWeekSleepData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    const/4 v1, 0x0

    .line 224
    .local v1, "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 225
    .local v2, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 227
    .local v8, "preCalendar":Ljava/util/Calendar;
    new-instance v9, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/32 v15, 0x5265c00

    sub-long/2addr v13, v15

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 228
    .local v9, "preDate":Ljava/util/Date;
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    const/4 v11, 0x0

    .line 230
    .local v11, "queryCurrentDays":Ljava/lang/String;
    const/4 v12, 0x0

    .line 231
    .local v12, "queryPreDays":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v13, 0x6

    if-gt v4, v13, :cond_4

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .restart local v1    # "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-nez v4, :cond_0

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 237
    invoke-static {v9}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 245
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectSleepDataByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 246
    .local v3, "currentdaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectPreDaySleepData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 247
    .local v10, "predaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v10, :cond_1

    .line 248
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/veclink/healthy/database/entity/SleepData;

    .line 250
    .local v6, "item":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    .end local v3    # "currentdaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v10    # "predaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_0
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 241
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 242
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 243
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 253
    .restart local v3    # "currentdaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .restart local v10    # "predaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_1
    if-eqz v3, :cond_3

    .line 254
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/veclink/healthy/database/entity/SleepData;

    .line 256
    .restart local v6    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v6}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v13

    const/16 v14, 0x21c

    if-ge v13, v14, :cond_2

    .line 261
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_3
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "currentdaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v10    # "predaySleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_4
    return-object v7
.end method

.method public static querySleepTotalTimeFromZeroToTwentyFour(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/movnow_q2/util/SleepStatus;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static/range {p0 .. p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v13

    iget-object v13, v13, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v13}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v2

    .line 64
    .local v2, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v8

    .line 65
    .local v8, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static/range {p0 .. p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "userId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "deviceId":Ljava/lang/String;
    sget-object v13, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v13, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 68
    sget-object v13, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v13, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 69
    sget-object v13, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 70
    sget-object v13, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    sget-object v14, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    const/16 v15, 0x5a0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v13, v14, v15}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v8, v13, v14}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 72
    const/4 v11, 0x0

    .line 73
    .local v11, "totaltime":I
    const/4 v3, 0x0

    .line 74
    .local v3, "deepSleep":I
    const/4 v6, 0x0

    .line 75
    .local v6, "lightSleep":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 77
    invoke-virtual {v8}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "currentDaysSleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    .line 79
    .local v9, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v11, v13

    .line 80
    const-string v13, "0"

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 81
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v3, v13

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    goto :goto_0

    .line 87
    .end local v1    # "currentDaysSleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_1
    new-instance v10, Lcom/veclink/movnow_q2/util/SleepStatus;

    invoke-direct {v10}, Lcom/veclink/movnow_q2/util/SleepStatus;-><init>()V

    .line 88
    .local v10, "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    invoke-virtual {v10, v11}, Lcom/veclink/movnow_q2/util/SleepStatus;->setTotalTimes(I)V

    .line 89
    invoke-virtual {v10, v3}, Lcom/veclink/movnow_q2/util/SleepStatus;->setDeepTimes(I)V

    .line 90
    invoke-virtual {v10, v6}, Lcom/veclink/movnow_q2/util/SleepStatus;->setLightTimes(I)V

    .line 91
    return-object v10
.end method

.method public static selectPreDaySleepData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 102
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 103
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 106
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 107
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 108
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    const/16 v5, 0x4ec

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    const/16 v6, 0x5a0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 121
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 124
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static selectSleepDataByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 42
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 43
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 46
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 47
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 48
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->StartTime:Lde/greenrobot/dao/Property;

    const/16 v6, 0x4eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 50
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 51
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 53
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
