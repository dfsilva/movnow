.class Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDateItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhirondelle/date4j/DateTime;

    .line 834
    .local v3, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    # getter for: Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    invoke-static {v4}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->access$000(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 835
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-boolean v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableClickOnDisabledDates:Z

    if-nez v4, :cond_3

    .line 836
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v3, v4}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v3, v4}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 851
    :cond_2
    :goto_0
    return-void

    .line 843
    :cond_3
    invoke-static {v3}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v2

    .line 844
    .local v2, "date":Ljava/util/Date;
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->formatterMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 845
    .local v0, "clickDate":I
    const-string v4, "yyyyMMdd"

    invoke-static {v4}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 846
    .local v1, "currDate":I
    if-gt v0, v1, :cond_2

    .line 849
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    # getter for: Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    invoke-static {v4}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->access$000(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;->onSelectDate(Ljava/util/Date;Landroid/view/View;)V

    goto :goto_0
.end method
