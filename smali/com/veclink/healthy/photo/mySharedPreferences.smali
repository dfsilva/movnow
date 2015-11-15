.class public Lcom/veclink/healthy/photo/mySharedPreferences;
.super Ljava/lang/Object;
.source "mySharedPreferences.java"


# instance fields
.field private BanLostButtonb:Z

.field private LookingPhoneButtonb:Z

.field private ShootInterval:I

.field private ShootNumber:I

.field private Silent_mode:Z

.field private context:Landroid/content/Context;

.field private deviceAddrres:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private isOne:I

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mycontext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->BanLostButtonb:Z

    .line 9
    iput-boolean v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->LookingPhoneButtonb:Z

    .line 11
    iput-boolean v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->Silent_mode:Z

    .line 12
    iput v2, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->ShootNumber:I

    .line 13
    iput v2, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->ShootInterval:I

    .line 17
    iput v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->isOne:I

    .line 86
    iput-object p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->context:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->context:Landroid/content/Context;

    const-string v1, "mySP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    .line 88
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 89
    return-void
.end method


# virtual methods
.method public getDeviceAddrres()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "deviceAddrres"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "deviceName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsOne()I
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isOne"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShootInterval()I
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShootInterval"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShootNumber()I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShootNumber"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBanLostButtonb()Z
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "BanLostButton"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLookingPhoneButtonb()Z
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "lookingPhoneButton"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSilent_mode()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SilentMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBanLostButtonb(Z)V
    .locals 2
    .param p1, "banLostButtonb"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "BanLostButton"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    iput-boolean p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->BanLostButtonb:Z

    .line 102
    return-void
.end method

.method public setDeviceAddrres(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddrres"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->deviceAddrres:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceAddrres"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->deviceName:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public setIsOne(I)V
    .locals 2
    .param p1, "IsOne"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->isOne:I

    .line 25
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isOne"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method

.method public setLookingPhoneButtonb(Z)V
    .locals 2
    .param p1, "lookingPhoneButtonb"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->LookingPhoneButtonb:Z

    .line 111
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lookingPhoneButton"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public setShootInterval(I)V
    .locals 2
    .param p1, "shootInterval"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->ShootInterval:I

    .line 76
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ShootInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public setShootNumber(I)V
    .locals 2
    .param p1, "shootNumber"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->ShootNumber:I

    .line 66
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ShootNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public setSilent_mode(Z)V
    .locals 2
    .param p1, "silent_mode"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->Silent_mode:Z

    .line 36
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SilentMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v0, p0, Lcom/veclink/healthy/photo/mySharedPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
