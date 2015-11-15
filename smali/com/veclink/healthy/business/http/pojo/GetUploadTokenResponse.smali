.class public Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;
.super Ljava/lang/Object;
.source "GetUploadTokenResponse.java"


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

.field private token:Ljava/lang/String;


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
    .line 16
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->errorToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->solution:Ljava/lang/String;

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
    .line 40
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->error:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setErrorToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorToken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->errorToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->message:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "solution"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->solution:Ljava/lang/String;

    .line 38
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
    .line 43
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->subErrors:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->token:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUploadTokenResponse [error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->errorToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", solution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->solution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->subErrors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
