.class public Lcom/veclink/healthy/database/entity/SleepQuality;
.super Ljava/lang/Object;
.source "SleepQuality.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DateTime:Ljava/lang/String;

.field private DeepSleep:Ljava/lang/String;

.field private SleepAmount:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private shallowSleep:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->id:Ljava/lang/Long;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "SleepAmount"    # Ljava/lang/String;
    .param p3, "DeepSleep"    # Ljava/lang/String;
    .param p4, "shallowSleep"    # Ljava/lang/String;
    .param p5, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->id:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->SleepAmount:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DeepSleep:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->shallowSleep:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DateTime:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepSleep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DeepSleep:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getShallowSleep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->shallowSleep:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->SleepAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DateTime:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDeepSleep(Ljava/lang/String;)V
    .locals 0
    .param p1, "DeepSleep"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->DeepSleep:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->id:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setShallowSleep(Ljava/lang/String;)V
    .locals 0
    .param p1, "shallowSleep"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->shallowSleep:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSleepAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "SleepAmount"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepQuality;->SleepAmount:Ljava/lang/String;

    .line 50
    return-void
.end method
