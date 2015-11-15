.class public Lcom/veclink/healthy/database/entity/ExerciseData;
.super Ljava/lang/Object;
.source "ExerciseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private CalorieConsume:I

.field private DateTime:Ljava/lang/String;

.field private Mileage:I

.field private StepNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->DateTime:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;
    .param p2, "StepNumber"    # I
    .param p3, "Mileage"    # I
    .param p4, "CalorieConsume"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->DateTime:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->StepNumber:I

    .line 24
    iput p3, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->Mileage:I

    .line 25
    iput p4, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->CalorieConsume:I

    .line 26
    return-void
.end method


# virtual methods
.method public getCalorieConsume()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->CalorieConsume:I

    return v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->Mileage:I

    return v0
.end method

.method public getStepNumber()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->StepNumber:I

    return v0
.end method

.method public setCalorieConsume(I)V
    .locals 0
    .param p1, "CalorieConsume"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->CalorieConsume:I

    .line 58
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "DateTime"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->DateTime:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMileage(I)V
    .locals 0
    .param p1, "Mileage"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->Mileage:I

    .line 50
    return-void
.end method

.method public setStepNumber(I)V
    .locals 0
    .param p1, "StepNumber"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/veclink/healthy/database/entity/ExerciseData;->StepNumber:I

    .line 42
    return-void
.end method
