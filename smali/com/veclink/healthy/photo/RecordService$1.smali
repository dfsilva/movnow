.class Lcom/veclink/healthy/photo/RecordService$1;
.super Ljava/lang/Object;
.source "RecordService.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/photo/RecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordService;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/RecordService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService$1;->this$0:Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "tone":Landroid/media/ToneGenerator;
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/media/ToneGenerator;

    .end local v0    # "tone":Landroid/media/ToneGenerator;
    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 92
    .restart local v0    # "tone":Landroid/media/ToneGenerator;
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 93
    return-void
.end method
