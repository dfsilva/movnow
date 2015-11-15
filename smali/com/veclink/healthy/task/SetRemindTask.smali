.class public Lcom/veclink/healthy/task/SetRemindTask;
.super Ljava/lang/Object;
.source "SetRemindTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SETDRINKWATERREMIND:I = 0x1

.field public static final SETLONGSITREMIND:I = 0x2

.field public static final SETWAKEUPREMIND:I = 0x3


# instance fields
.field final TAG:Ljava/lang/String;

.field private baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

.field private mContext:Landroid/content/Context;

.field private remindType:I

.field settingRemindCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field settingRemindHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "remindType"    # I
    .param p3, "baseRemindParam"    # Lcom/veclink/bracelet/bean/BaseRemindParam;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SetRemindTask"

    iput-object v0, p0, Lcom/veclink/healthy/task/SetRemindTask;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/veclink/healthy/task/SetRemindTask$1;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/task/SetRemindTask$1;-><init>(Lcom/veclink/healthy/task/SetRemindTask;)V

    iput-object v0, p0, Lcom/veclink/healthy/task/SetRemindTask;->settingRemindHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask;->settingRemindHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/healthy/task/SetRemindTask;->settingRemindCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 87
    iput-object p1, p0, Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/veclink/healthy/task/SetRemindTask;->remindType:I

    .line 89
    iput-object p3, p0, Lcom/veclink/healthy/task/SetRemindTask;->baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/task/SetRemindTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/task/SetRemindTask;

    .prologue
    .line 24
    iget v0, p0, Lcom/veclink/healthy/task/SetRemindTask;->remindType:I

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/healthy/task/SetRemindTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/task/SetRemindTask;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;

    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/healthy/task/SetRemindTask;->settingRemindCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v3, p0, Lcom/veclink/healthy/task/SetRemindTask;->baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Lcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->work()V

    .line 83
    return-void
.end method
