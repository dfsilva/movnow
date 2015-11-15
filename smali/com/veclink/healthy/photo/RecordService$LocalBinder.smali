.class public Lcom/veclink/healthy/photo/RecordService$LocalBinder;
.super Landroid/os/Binder;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/photo/RecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordService;


# direct methods
.method public constructor <init>(Lcom/veclink/healthy/photo/RecordService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService$LocalBinder;->this$0:Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/veclink/healthy/photo/RecordService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$LocalBinder;->this$0:Lcom/veclink/healthy/photo/RecordService;

    return-object v0
.end method
