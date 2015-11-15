.class public Lcom/veclink/healthy/business/http/pojo/UpStatisticsGson;
.super Ljava/lang/Object;
.source "UpStatisticsGson.java"


# instance fields
.field public error:Ljava/lang/String;

.field public isInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/healthy/business/http/pojo/UpStatisticsGson;->isInstall:Z

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/UpStatisticsGson;->error:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/UpStatisticsGson;->error:Ljava/lang/String;

    .line 14
    return-void
.end method
