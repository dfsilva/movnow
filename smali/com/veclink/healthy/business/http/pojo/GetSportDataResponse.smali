.class public Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;
.super Ljava/lang/Object;
.source "GetSportDataResponse.java"


# instance fields
.field private error:Ljava/lang/String;

.field private errorToken:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private solution:Ljava/lang/String;

.field private sports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation
.end field

.field private subErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/business/http/pojo/SubError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->errorToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->solution:Ljava/lang/String;

    return-object v0
.end method

.method public getSports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->sports:Ljava/util/List;

    return-object v0
.end method

.method public getSubErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/business/http/pojo/SubError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->error:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setErrorToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorToken"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->errorToken:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->message:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "solution"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->solution:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->sports:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setSubErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/business/http/pojo/SubError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->subErrors:Ljava/util/List;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->sports:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->sports:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GetSportDataResponse\uff1a"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->sports:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    .line 62
    .local v2, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v2    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSportDataResponse [error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->errorToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", solution="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->solution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subErrors="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->subErrors:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
