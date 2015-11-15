.class public abstract Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
.super Ljava/lang/Object;
.source "CaldroidListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaldroidViewCreated()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onChangeMonth(II)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onLongClickDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method public abstract onSelectDate(Ljava/util/Date;Landroid/view/View;)V
.end method
