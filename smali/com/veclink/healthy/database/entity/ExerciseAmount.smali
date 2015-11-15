.class public Lcom/veclink/healthy/database/entity/ExerciseAmount;
.super Ljava/lang/Object;
.source "ExerciseAmount.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private CalorieConsume:I

.field private DateTime:Ljava/lang/String;

.field private Mileage:I

.field private StepNumber:I

.field private id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->id:Ljava/lang/Long;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "StepNumber"    # I
    .param p3, "Mileage"    # I
    .param p4, "CalorieConsume"    # I
    .param p5, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->id:Ljava/lang/Long;

    .line 25
    iput p2, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->StepNumber:I

    .line 26
    iput p3, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->Mileage:I

    .line 27
    iput p4, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->CalorieConsume:I

    .line 28
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->DateTime:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCalorieConsume()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->CalorieConsume:I

    return v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMileage()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->Mileage:I

    return v0
.end method

.method public getStepNumber()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->StepNumber:I

    return v0
.end method

.method public setCalorieConsume(I)V
    .locals 0
    .param p1, "CalorieConsume"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->CalorieConsume:I

    .line 61
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->DateTime:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->id:Ljava/lang/Long;

    .line 37
    return-void
.end method

.method public setMileage(I)V
    .locals 0
    .param p1, "Mileage"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->Mileage:I

    .line 53
    return-void
.end method

.method public setStepNumber(I)V
    .locals 0
    .param p1, "StepNumber"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseAmount;->StepNumber:I

    .line 45
    return-void
.end method
