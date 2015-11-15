.class public Lcom/veclink/movmow/allen/nurse/RemindObject;
.super Ljava/lang/Object;
.source "RemindObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/veclink/movmow/allen/nurse/RemindObject;",
        ">;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x533bc19ec50e42d4L


# instance fields
.field private hour:I

.field private minute:I

.field private repeateArray:[Z

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->repeateArray:[Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->repeateArray:[Z

    .line 24
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->title:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 41
    const-wide v0, -0x533bc19ec50e42d4L    # -4.852444999446541E-93

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/veclink/movmow/allen/nurse/RemindObject;)I
    .locals 2
    .param p1, "waterRemindObject"    # Lcom/veclink/movmow/allen/nurse/RemindObject;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    iget-object v1, p1, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 7
    check-cast p1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->compareTo(Lcom/veclink/movmow/allen/nurse/RemindObject;)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->minute:I

    return v0
.end method

.method public getRepeateArray()[Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->repeateArray:[Z

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->hour:I

    .line 51
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->minute:I

    .line 59
    return-void
.end method

.method public setRepeateArray([Z)V
    .locals 0
    .param p1, "repeateArray"    # [Z

    .prologue
    .line 80
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->repeateArray:[Z

    .line 81
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemindObject [time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeateArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/RemindObject;->repeateArray:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
