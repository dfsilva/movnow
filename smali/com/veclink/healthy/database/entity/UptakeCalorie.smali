.class public Lcom/veclink/healthy/database/entity/UptakeCalorie;
.super Ljava/lang/Object;
.source "UptakeCalorie.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private CalorieContent:I

.field private Counts:F

.field private DateTime:Ljava/lang/String;

.field private FoodName:Ljava/lang/String;

.field private ImgUrl:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->id:Ljava/lang/Long;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "FoodName"    # Ljava/lang/String;
    .param p4, "CalorieContent"    # I
    .param p5, "Counts"    # F
    .param p6, "DateTime"    # Ljava/lang/String;
    .param p7, "ImgUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->id:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->userId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->FoodName:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->CalorieContent:I

    .line 33
    iput p5, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->Counts:F

    .line 34
    iput-object p6, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->DateTime:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->ImgUrl:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getCalorieContent()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->CalorieContent:I

    return v0
.end method

.method public getCounts()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->Counts:F

    return v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFoodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->FoodName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->ImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCalorieContent(I)V
    .locals 0
    .param p1, "CalorieContent"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->CalorieContent:I

    .line 72
    return-void
.end method

.method public setCounts(F)V
    .locals 0
    .param p1, "Counts"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->Counts:F

    .line 80
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->DateTime:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setFoodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "FoodName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->FoodName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->id:Ljava/lang/Long;

    .line 44
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ImgUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->ImgUrl:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UptakeCalorie;->userId:Ljava/lang/String;

    .line 54
    return-void
.end method
