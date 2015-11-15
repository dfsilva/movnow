.class public Lcom/veclink/waterfall/model/Infos;
.super Ljava/lang/Object;
.source "Infos.java"


# instance fields
.field private newsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/waterfall/model/DuitangInfo;",
            ">;"
        }
    .end annotation
.end field

.field private newsLast:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/veclink/waterfall/model/Infos;->newsLast:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/waterfall/model/Infos;->type:I

    return-void
.end method


# virtual methods
.method public getNewsInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/waterfall/model/DuitangInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/veclink/waterfall/model/Infos;->newsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getNewsLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/veclink/waterfall/model/Infos;->newsLast:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/veclink/waterfall/model/Infos;->type:I

    return v0
.end method

.method public setNewsInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/waterfall/model/DuitangInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "newsInfos":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/waterfall/model/DuitangInfo;>;"
    iput-object p1, p0, Lcom/veclink/waterfall/model/Infos;->newsInfos:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setNewsLast(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsLast"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/veclink/waterfall/model/Infos;->newsLast:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/veclink/waterfall/model/Infos;->type:I

    .line 24
    return-void
.end method
