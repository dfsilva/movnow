.class public final Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BleDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public address_view:Landroid/widget/TextView;

.field public name_view:Landroid/widget/TextView;

.field public rssi_view:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
