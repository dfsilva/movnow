.class public Lcom/veclink/healthy/database/entity/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field private districtId:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private proId:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->email:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;
    .param p3, "sex"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "birthday"    # Ljava/lang/String;
    .param p6, "height"    # Ljava/lang/String;
    .param p7, "weight"    # Ljava/lang/String;
    .param p8, "proId"    # Ljava/lang/String;
    .param p9, "cityId"    # Ljava/lang/String;
    .param p10, "districtId"    # Ljava/lang/String;
    .param p11, "avatar"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->email:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/UserInfo;->nickName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/UserInfo;->sex:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/UserInfo;->signature:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/UserInfo;->birthday:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/veclink/healthy/database/entity/UserInfo;->height:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/veclink/healthy/database/entity/UserInfo;->weight:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/veclink/healthy/database/entity/UserInfo;->proId:Ljava/lang/String;

    .line 42
    iput-object p9, p0, Lcom/veclink/healthy/database/entity/UserInfo;->cityId:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/veclink/healthy/database/entity/UserInfo;->districtId:Ljava/lang/String;

    .line 44
    iput-object p11, p0, Lcom/veclink/healthy/database/entity/UserInfo;->avatar:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->districtId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getProId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->proId:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UserInfo;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->avatar:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->birthday:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->cityId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setDistrictId(Ljava/lang/String;)V
    .locals 0
    .param p1, "districtId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->districtId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->email:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->height:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->nickName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProId(Ljava/lang/String;)V
    .locals 0
    .param p1, "proId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->proId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->sex:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->signature:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UserInfo;->weight:Ljava/lang/String;

    .line 111
    return-void
.end method
