.class public Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;
.super Ljava/lang/Object;
.source "UploadBraceletResponse.java"


# instance fields
.field private error:Ljava/lang/String;

.field private message:Ljava/lang/String;

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
    .line 11
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->message:Ljava/lang/String;

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
    .line 23
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->error:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->message:Ljava/lang/String;

    .line 21
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
    .line 26
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;->subErrors:Ljava/util/List;

    .line 27
    return-void
.end method
