.class public Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatePageChangeListener"
.end annotation


# instance fields
.field private caldroidGridAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private currentDateTime:Lhirondelle/date4j/DateTime;

.field private currentPage:I

.field final synthetic this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V
    .locals 1

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    return-void
.end method

.method private getNext(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1331
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private getPrevious(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1341
    add-int/lit8 v0, p1, 0x3

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public getCaldroidGridAdapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrent(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1351
    rem-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public getCurrentDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1356
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1360
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 1415
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1418
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    rem-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 1422
    .local v0, "currentAdapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1423
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->getDatetimeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1425
    return-void
.end method

.method public refreshAdapters(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1364
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getCurrent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 1365
    .local v9, "currentAdapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getPrevious(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 1366
    .local v11, "prevAdapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getNext(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 1368
    .local v10, "nextAdapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    iget v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    if-ne p1, v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v9, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1372
    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1375
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1376
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1379
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1380
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1404
    :goto_0
    iput p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    .line 1405
    return-void

    .line 1384
    :cond_0
    iget v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    if-le p1, v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1389
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1390
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1399
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1400
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setCaldroidGridAdapters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1321
    .local p1, "caldroidGridAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    .line 1322
    return-void
.end method

.method public setCurrentDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 2
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1307
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1308
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 1293
    iput p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->currentPage:I

    .line 1294
    return-void
.end method
