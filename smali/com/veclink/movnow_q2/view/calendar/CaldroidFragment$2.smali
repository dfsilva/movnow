.class Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
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
    .line 866
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTime;

    .line 873
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    # getter for: Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->access$000(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 874
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-boolean v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableClickOnDisabledDates:Z

    if-nez v2, :cond_3

    .line 875
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 881
    :cond_2
    const/4 v2, 0x0

    .line 889
    :goto_0
    return v2

    .line 884
    :cond_3
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v0

    .line 886
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    # getter for: Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->access$000(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;->onLongClickDate(Ljava/util/Date;Landroid/view/View;)V

    .line 889
    .end local v0    # "date":Ljava/util/Date;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method
