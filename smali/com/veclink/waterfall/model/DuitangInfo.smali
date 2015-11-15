.class public Lcom/veclink/waterfall/model/DuitangInfo;
.super Ljava/lang/Object;
.source "DuitangInfo.java"


# instance fields
.field private albid:Ljava/lang/String;

.field private height:I

.field private isrc:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->albid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->msg:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->isrc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->albid:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->height:I

    return v0
.end method

.method public getIsrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->isrc:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/waterfall/model/DuitangInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xc8

    return v0
.end method

.method public setAlbid(Ljava/lang/String;)V
    .locals 0
    .param p1, "albid"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/veclink/waterfall/model/DuitangInfo;->albid:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/veclink/waterfall/model/DuitangInfo;->height:I

    .line 43
    return-void
.end method

.method public setIsrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "isrc"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/veclink/waterfall/model/DuitangInfo;->isrc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/veclink/waterfall/model/DuitangInfo;->msg:Ljava/lang/String;

    .line 27
    return-void
.end method
