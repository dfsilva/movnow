.class Lcom/quintic/libota/otaManager$1;
.super Ljava/lang/Object;
.source "otaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quintic/libota/otaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quintic/libota/otaManager;


# direct methods
.method constructor <init>(Lcom/quintic/libota/otaManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/quintic/libota/otaManager$1;->this$0:Lcom/quintic/libota/otaManager;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/quintic/libota/otaManager$1;->this$0:Lcom/quintic/libota/otaManager;

    iget-object v1, p0, Lcom/quintic/libota/otaManager$1;->this$0:Lcom/quintic/libota/otaManager;

    iget-object v1, v1, Lcom/quintic/libota/otaManager;->mFilePath:Ljava/lang/String;

    # invokes: Lcom/quintic/libota/otaManager;->otaUpdateProcess(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/quintic/libota/otaManager;->access$0(Lcom/quintic/libota/otaManager;Ljava/lang/String;)V

    .line 333
    return-void
.end method
