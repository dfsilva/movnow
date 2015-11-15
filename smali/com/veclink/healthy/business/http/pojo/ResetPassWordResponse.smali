.class public Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;
.super Ljava/lang/Object;
.source "ResetPassWordResponse.java"


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
    .line 32
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->errorToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->solution:Ljava/lang/String;

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
    .line 56
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->error:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setErrorToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorToken"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->errorToken:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->message:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "solution"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->solution:Ljava/lang/String;

    .line 54
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
    .line 59
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->subErrors:Ljava/util/List;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResetPassWordResponse [error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->errorToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", solution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->solution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/ResetPassWordResponse;->subErrors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
