.class public Lcom/veclink/movnow_q2/util/SleepData;
.super Ljava/lang/Object;
.source "SleepData.java"


# instance fields
.field private sleepDuration:Ljava/lang/String;

.field private sleepState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSleepDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/veclink/movnow_q2/util/SleepData;->sleepDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/veclink/movnow_q2/util/SleepData;->sleepState:Ljava/lang/String;

    return-object v0
.end method

.method public setSleepDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepDuration"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/veclink/movnow_q2/util/SleepData;->sleepDuration:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSleepState(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepState"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/veclink/movnow_q2/util/SleepData;->sleepState:Ljava/lang/String;

    .line 16
    return-void
.end method
