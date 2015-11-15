.class public Lcom/veclink/bracelet/bean/DeviceSportData;
.super Ljava/lang/Object;
.source "DeviceSportData.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public isWear:Z

.field public sportStep:I

.field public sportTime:Ljava/lang/String;

.field public sportType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bean/DeviceSportData;->isWear:Z

    .line 45
    return-void
.end method
