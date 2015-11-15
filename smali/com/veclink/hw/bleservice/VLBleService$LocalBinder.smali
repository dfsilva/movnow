.class public Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;
.super Landroid/os/Binder;
.source "VLBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/hw/bleservice/VLBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/hw/bleservice/VLBleService;


# direct methods
.method public constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/veclink/hw/bleservice/VLBleService;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    return-object v0
.end method
