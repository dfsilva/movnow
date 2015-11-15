.class public Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;
.super Ljava/lang/Object;
.source "ChangePassWordResponse.java"


# instance fields
.field private error:Ljava/lang/String;

.field private errorToken:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private solution:Ljava/lang/String;

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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->errorToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->solution:Ljava/lang/String;

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
    .line 37
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->error:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setErrorToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorToken"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->errorToken:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->message:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "solution"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->solution:Ljava/lang/String;

    .line 35
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
    .line 40
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->subErrors:Ljava/util/List;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangePassWordResponse [error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->errorToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", solution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->solution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ChangePassWordResponse;->subErrors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
