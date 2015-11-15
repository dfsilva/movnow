.class Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$3;
.super Ljava/lang/Object;
.source "MovnowTwoApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$3;->this$0:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 478
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 479
    return-void
.end method
