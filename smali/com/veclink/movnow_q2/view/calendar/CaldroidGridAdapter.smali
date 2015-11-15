.class public Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaldroidGridAdapter.java"


# instance fields
.field protected caldroidData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected datetimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected disableDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected disableDatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final formatterMonth:Ljava/text/SimpleDateFormat;

.field protected maxDateTime:Lhirondelle/date4j/DateTime;

.field protected minDateTime:Lhirondelle/date4j/DateTime;

.field protected month:I

.field protected resources:Landroid/content/res/Resources;

.field protected selectedDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedDatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected sixWeeksInCalendar:Z

.field protected startDayOfWeek:I

.field protected today:Lhirondelle/date4j/DateTime;

.field protected year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "month"    # I
    .param p3, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "caldroidData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDatesMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->formatterMonth:Ljava/text/SimpleDateFormat;

    .line 132
    iput p2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->month:I

    .line 133
    iput p3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->year:I

    .line 134
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->context:Landroid/content/Context;

    .line 135
    iput-object p4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    .line 136
    iput-object p5, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->extraData:Ljava/util/HashMap;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    .line 139
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->populateFromCaldroidData()V

    .line 140
    return-void
.end method

.method private populateFromCaldroidData()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 147
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "disableDates"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    .line 148
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDatesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 150
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 151
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDatesMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "selectedDates"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    .line 156
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 158
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 159
    .restart local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "_minDateTime"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhirondelle/date4j/DateTime;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 164
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "_maxDateTime"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhirondelle/date4j/DateTime;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 165
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "startDayOfWeek"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->startDayOfWeek:I

    .line 166
    const-string v2, "CaldroidFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START_DAY_OF_WEEK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->startDayOfWeek:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v3, "sixWeeksInCalendar"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    .line 169
    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->month:I

    iget v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->year:I

    iget v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->startDayOfWeek:I

    iget-boolean v5, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    invoke-static {v2, v3, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getFullWeeks(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    .line 170
    return-void
.end method


# virtual methods
.method protected customizeTextView(ILandroid/widget/TextView;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "cellView"    # Landroid/widget/TextView;

    .prologue
    const/4 v8, -0x1

    .line 219
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    const v7, 0x7f080011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhirondelle/date4j/DateTime;

    .line 225
    .local v3, "dateTime":Lhirondelle/date4j/DateTime;
    invoke-static {v3}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v2

    .line 226
    .local v2, "date":Ljava/util/Date;
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->formatterMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "clickDate":I
    const-string v6, "yyyyMMdd"

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, "currDate":I
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->month:I

    if-ne v6, v7, :cond_0

    if-le v0, v1, :cond_1

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    :cond_1
    const/4 v4, 0x0

    .line 235
    .local v4, "shouldResetDiabledView":Z
    const/4 v5, 0x0

    .line 238
    .local v5, "shouldResetSelectedView":Z
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v3, v6}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v3, v6}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDatesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 242
    :cond_4
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disabledTextColor:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disabledBackgroundDrawable:I

    if-ne v6, v8, :cond_7

    .line 244
    const v6, 0x7f02005c

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->getToday()Lhirondelle/date4j/DateTime;

    move-result-object v6

    invoke-virtual {v3, v6}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 250
    const v6, 0x7f020110

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDatesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 258
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedBackgroundDrawable:I

    if-eq v6, v8, :cond_9

    .line 259
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedBackgroundDrawable:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 264
    :goto_2
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedTextColor:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    :goto_3
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 271
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->getToday()Lhirondelle/date4j/DateTime;

    move-result-object v6

    invoke-virtual {v3, v6}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 273
    const v6, 0x7f02003f

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 274
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    :cond_6
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0, v3, p2, p2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setCustomResources(Lhirondelle/date4j/DateTime;Landroid/view/View;Landroid/widget/TextView;)V

    .line 290
    return-void

    .line 246
    :cond_7
    sget v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disabledBackgroundDrawable:I

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 253
    :cond_8
    const/4 v4, 0x1

    goto :goto_1

    .line 261
    :cond_9
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    const v7, 0x7f080010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 266
    :cond_a
    const/4 v5, 0x1

    goto :goto_3

    .line 277
    :cond_b
    if-le v0, v1, :cond_c

    .line 278
    const v6, 0x7f020033

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 280
    :cond_c
    const v6, 0x7f020032

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method public getCaldroidData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDatetimeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisableDates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->extraData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 307
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getMinDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getSelectedDates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getToday()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->today:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 312
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v0, p2

    .line 313
    check-cast v0, Landroid/widget/TextView;

    .line 316
    .local v0, "cellView":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 317
    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cellView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 320
    .restart local v0    # "cellView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->customizeTextView(ILandroid/widget/TextView;)V

    .line 322
    return-object v0
.end method

.method public setAdapterDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 4
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 60
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->month:I

    .line 61
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->year:I

    .line 62
    iget v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->month:I

    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->year:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->startDayOfWeek:I

    iget-boolean v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->sixWeeksInCalendar:Z

    invoke-static {v0, v1, v2, v3}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getFullWeeks(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->datetimeList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public setCaldroidData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "caldroidData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    .line 110
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->populateFromCaldroidData()V

    .line 111
    return-void
.end method

.method protected setCustomResources(Lhirondelle/date4j/DateTime;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;
    .param p2, "backgroundView"    # Landroid/view/View;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 182
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v5, "_backgroundForDateTimeMap"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 183
    .local v0, "backgroundForDateTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 188
    .local v1, "backgroundResource":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .end local v1    # "backgroundResource":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->caldroidData:Ljava/util/HashMap;

    const-string v5, "_textColorForDateTimeMap"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 195
    .local v2, "textColorForDateTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 200
    .local v3, "textColorResource":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 201
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    .end local v3    # "textColorResource":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public setDisableDates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "disableDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->disableDates:Ljava/util/ArrayList;

    .line 92
    return-void
.end method

.method public setExtraData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->extraData:Ljava/util/HashMap;

    .line 119
    return-void
.end method

.method public setMaxDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 0
    .param p1, "maxDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 84
    return-void
.end method

.method public setMinDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 0
    .param p1, "minDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 76
    return-void
.end method

.method public setSelectedDates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "selectedDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->selectedDates:Ljava/util/ArrayList;

    .line 100
    return-void
.end method
