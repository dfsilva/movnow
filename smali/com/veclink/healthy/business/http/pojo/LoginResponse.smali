.class public Lcom/veclink/healthy/business/http/pojo/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private chgTime:Ljava/lang/String;

.field private cityId:I

.field private crtTime:Ljava/lang/String;

.field private district_id:I

.field private email:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private errorToken:Ljava/lang/String;

.field private height:I

.field private message:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private provId:I

.field private regType:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

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

.field private userFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getChgTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->chgTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->cityId:I

    return v0
.end method

.method public getCrtTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->crtTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict_id()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->district_id:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->errorToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->height:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvId()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->provId:I

    return v0
.end method

.method public getRegType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->regType:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->solution:Ljava/lang/String;

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
    .line 397
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->subErrors:Ljava/util/List;

    return-object v0
.end method

.method public getUserFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->weight:I

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->avatar:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->birthday:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setChgTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "chgTime"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->chgTime:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->cityId:I

    .line 251
    return-void
.end method

.method public setCrtTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "crtTime"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->crtTime:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setDistrict_id(I)V
    .locals 0
    .param p1, "district_id"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->district_id:I

    .line 265
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->email:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->error:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setErrorToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorToken"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->errorToken:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->height:I

    .line 190
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->message:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->mobile:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->nickName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setProvId(I)V
    .locals 0
    .param p1, "provId"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->provId:I

    .line 237
    return-void
.end method

.method public setRegType(Ljava/lang/String;)V
    .locals 0
    .param p1, "regType"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->regType:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sessionId:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .param p1, "sex"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sex:I

    .line 176
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->signature:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setSolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "solution"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->solution:Ljava/lang/String;

    .line 391
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
    .line 404
    .local p1, "subErrors":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/business/http/pojo/SubError;>;"
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->subErrors:Ljava/util/List;

    .line 405
    return-void
.end method

.method public setUserFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "userFlag"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userFlag:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->username:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->weight:I

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->error:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginResponse [error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->provId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->cityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", district_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->district_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->userFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->regType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->crtTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chgTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->chgTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginResponse [error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->errorToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", solution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->solution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->subErrors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
