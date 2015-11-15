.class public Lcom/veclink/movnow_q2/activity/PhotographicActivity;
.super Landroid/app/Activity;
.source "PhotographicActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CAMERA_CTR_ACTION:Ljava/lang/String; = "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION"

.field public static final CAM_MODE_CAPTURE:I = 0x1

.field public static final CAM_MODE_RECORD:I = 0x2

.field public static final MESSAGE_CLOSE:I = 0x1

.field public static final MESSAGE_OPEN:I = 0x0

.field public static final MESSAGE_SVAE_FAILURE:I = 0x1

.field public static final MESSAGE_SVAE_SUCCESS:I = 0x0

.field public static final MESSAGE_TIMEI_UPDATE:I = 0x2

.field public static final MESSAGE_VIDEO_COLSE:I = 0x4

.field public static final MESSAGE_VIDEO_OPEN:I = 0x3

.field public static final REQUEST_ENABLE_BT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MainActivity"

.field public static device:Landroid/bluetooth/BluetoothDevice;

.field public static isp:Z

.field private static mRecordService:Lcom/veclink/healthy/photo/RecordService;

.field public static myDevice:Landroid/bluetooth/BluetoothDevice;


# instance fields
.field private final FLASH_MODE_AUTO:I

.field private final FLASH_MODE_OFF:I

.field private final FLASH_MODE_ON:I

.field MyHandler:Landroid/os/Handler;

.field private Myview:Landroid/view/View;

.field private SettingShootlayout:Landroid/widget/LinearLayout;

.field private ShootFiveButton:Landroid/widget/Button;

.field private ShootIntervalThreeButton:Landroid/widget/Button;

.field private ShootIntervalTwoButton:Landroid/widget/Button;

.field private ShootIntervalfourButton:Landroid/widget/Button;

.field private ShootTenButton:Landroid/widget/Button;

.field private ShootThreeButton:Landroid/widget/Button;

.field private final camera_receiver:Landroid/content/BroadcastReceiver;

.field private count:I

.field private firClick:I

.field private hour:I

.field private index:I

.field private isAllow:Z

.field private isServiceBound:Z

.field private isshoot:Z

.field lockOrUnLockKeyTask:Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;

.field lockUnLockCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field lockUnLockHandler:Landroid/os/Handler;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtnCamSwitch:Landroid/widget/ImageView;

.field private mCamIdx:Ljava/lang/StringBuffer;

.field private mCamMode:I

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mFacingFront:Z

.field private mFlashMode:I

.field mHandler:Landroid/os/Handler;

.field private mImagePath:Ljava/io/File;

.field private mLlWhiteBorder:Landroid/widget/LinearLayout;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreSensorRotation:I

.field private mSensorRotation:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoPath:Ljava/io/File;

.field private mVideoRecord:Z

.field private minute:I

.field private myHandler:Landroid/os/Handler;

.field private mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

.field private newDegree:I

.field private oldDegree:I

.field private onRecordService:Landroid/content/ServiceConnection;

.field private onService:Landroid/content/ServiceConnection;

.field private photoView:Landroid/widget/ImageView;

.field runnable:Ljava/lang/Runnable;

.field private secClick:I

.field private second:I

.field private settingImageView:Landroid/widget/ImageView;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field timer:Ljava/util/Timer;

.field private user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isp:Z

    .line 85
    sput-object v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->myDevice:Landroid/bluetooth/BluetoothDevice;

    .line 94
    sput-object v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    .line 113
    sput-object v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->FLASH_MODE_AUTO:I

    .line 65
    iput v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->FLASH_MODE_ON:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->FLASH_MODE_OFF:I

    .line 67
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFlashMode:I

    .line 86
    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->user:Landroid/content/SharedPreferences;

    .line 87
    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->onService:Landroid/content/ServiceConnection;

    .line 95
    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->onRecordService:Landroid/content/ServiceConnection;

    .line 96
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoRecord:Z

    .line 100
    iput-boolean v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    .line 104
    iput v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamMode:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mPreSensorRotation:I

    .line 107
    const/16 v0, 0x5a

    iput v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSensorRotation:I

    .line 108
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->oldDegree:I

    .line 109
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->newDegree:I

    .line 110
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isServiceBound:Z

    .line 115
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->hour:I

    .line 116
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->minute:I

    .line 117
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->second:I

    .line 121
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I

    .line 126
    iput-boolean v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z

    .line 128
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isshoot:Z

    .line 131
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    .line 132
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->firClick:I

    .line 133
    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->secClick:I

    .line 136
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->timer:Ljava/util/Timer;

    .line 137
    new-instance v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->runnable:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$4;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockUnLockHandler:Landroid/os/Handler;

    .line 244
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockUnLockHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockUnLockCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 664
    new-instance v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->camera_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private RefreshSetting()V
    .locals 3

    .prologue
    const v2, 0x7f020142

    .line 286
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    .line 287
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    .line 288
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0}, Lcom/veclink/healthy/photo/mySharedPreferences;->getShootNumber()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0}, Lcom/veclink/healthy/photo/mySharedPreferences;->getShootInterval()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_1
    return-void

    .line 290
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 293
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 304
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 299
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I

    return v0
.end method

.method static synthetic access$1000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamIdx:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/activity/PhotographicActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I

    return p1
.end method

.method static synthetic access$108(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I

    return v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Lcom/veclink/healthy/photo/mySharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400()Lcom/veclink/healthy/photo/RecordService;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/RecordService;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordService;

    .prologue
    .line 48
    sput-object p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    return v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoRecord:Z

    return v0
.end method

.method static synthetic access$802(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoRecord:Z

    return p1
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private doLockOrUnLockKeyTask(Z)V
    .locals 4
    .param p1, "isLock"    # Z

    .prologue
    .line 247
    new-instance v0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockUnLockCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;ZI)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockOrUnLockKeyTask:Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;

    .line 248
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->lockOrUnLockKeyTask:Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->work()V

    .line 249
    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 17
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 589
    .local v1, "ASPECT_TOLERANCE":D
    move/from16 v0, p3

    int-to-double v13, v0

    move/from16 v0, p2

    int-to-double v15, v0

    div-double v11, v13, v15

    .line 591
    .local v11, "targetRatio":D
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 616
    :cond_0
    return-object v6

    .line 593
    :cond_1
    const/4 v6, 0x0

    .line 594
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 596
    .local v4, "minDiff":D
    move/from16 v10, p3

    .line 598
    .local v10, "targetHeight":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 599
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v7, v13, v15

    .line 600
    .local v7, "ratio":D
    sub-double v13, v7, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_2

    .line 601
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_2

    .line 602
    move-object v6, v9

    .line 603
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_0

    .line 607
    .end local v7    # "ratio":D
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v6, :cond_0

    .line 608
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 609
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 610
    .restart local v9    # "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_4

    .line 611
    move-object v6, v9

    .line 612
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_1
.end method

.method private initRecordService()V
    .locals 3

    .prologue
    .line 406
    new-instance v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->onRecordService:Landroid/content/ServiceConnection;

    .line 423
    const-string v1, "MainActivity"

    const-string v2, "start Record Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, "bindSilentIntent":Landroid/content/Intent;
    const-string v1, "MainActivity"

    const-string v2, "bind Record Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->onRecordService:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 428
    return-void
.end method

.method private initSurfaceView()V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 525
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 528
    :cond_0
    const v1, 0x7f06014e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 529
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 530
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 532
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 533
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 375
    const v0, 0x7f060152

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtnCamSwitch:Landroid/widget/ImageView;

    .line 377
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtnCamSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    const v0, 0x7f060150

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->photoView:Landroid/widget/ImageView;

    .line 379
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->settingImageView:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->settingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    const v0, 0x7f06014d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;

    .line 384
    const v0, 0x7f060155

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    .line 385
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    const v0, 0x7f060156

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    .line 387
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    const v0, 0x7f060157

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    .line 389
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    const v0, 0x7f060159

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    .line 391
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    const v0, 0x7f06015a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    .line 393
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    const v0, 0x7f06015b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    .line 395
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 397
    const v0, 0x7f060153

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->SettingShootlayout:Landroid/widget/LinearLayout;

    .line 401
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 402
    return-void
.end method


# virtual methods
.method public MyOnclick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const v2, 0x7f020142

    const v1, 0x7f02003a

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 316
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 317
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 319
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 321
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 325
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 327
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 329
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 332
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 333
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 335
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 340
    :sswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 345
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto :goto_0

    .line 348
    :sswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 351
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto :goto_0

    .line 356
    :sswitch_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 357
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 359
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 361
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto/16 :goto_0

    .line 365
    :sswitch_6
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->finish()V

    goto/16 :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x7f06009b -> :sswitch_6
        0x7f060155 -> :sswitch_0
        0x7f060156 -> :sswitch_1
        0x7f060157 -> :sswitch_2
        0x7f060159 -> :sswitch_3
        0x7f06015a -> :sswitch_4
        0x7f06015b -> :sswitch_5
    .end sparse-switch
.end method

.method public MyonLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f02003a

    .line 830
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 888
    :goto_0
    :pswitch_0
    return v2

    .line 832
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 834
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 836
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 838
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v2}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 842
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 844
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 846
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 848
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v2}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 851
    :pswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 853
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootFiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 855
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootTenButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 857
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v2}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootNumber(I)V

    goto :goto_0

    .line 860
    :pswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 862
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 864
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 866
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto :goto_0

    .line 869
    :pswitch_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 871
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 873
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 875
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto :goto_0

    .line 878
    :pswitch_6
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalTwoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 880
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalThreeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 882
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->ShootIntervalfourButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 884
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/photo/mySharedPreferences;->setShootInterval(I)V

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x7f060155
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method cameraPreview(Z)V
    .locals 7
    .param p1, "facingfront"    # Z

    .prologue
    const/16 v6, 0x5a

    .line 537
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 539
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 540
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    .line 544
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamIdx:Ljava/lang/StringBuffer;

    .line 545
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamIdx:Ljava/lang/StringBuffer;

    invoke-static {p1, v4}, Lcom/veclink/healthy/photo/CameraUtil;->getCameraInstance(ZLjava/lang/StringBuffer;)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    .line 546
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 548
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 550
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 551
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 552
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v3, v4, v5}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 554
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 555
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 559
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 561
    iput v6, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSensorRotation:I

    .line 565
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    iget v5, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSensorRotation:I

    invoke-static {v4, v5}, Lcom/veclink/healthy/photo/CameraUtil;->setPreviewRotation(Landroid/hardware/Camera;I)V

    .line 568
    :try_start_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 575
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->initSurfaceView()V

    .line 579
    :cond_3
    iget-boolean v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    if-eqz v4, :cond_5

    .line 580
    sget-object v4, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    const/16 v5, 0x10e

    invoke-virtual {v4, v5}, Lcom/veclink/healthy/photo/RecordService;->setPlaybackRotation(I)V

    .line 585
    :goto_2
    return-void

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 563
    const/16 v4, 0xb4

    iput v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mSensorRotation:I

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 571
    const-string v4, "MainActivity"

    const-string v5, "Can not get camera instance !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 582
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v4, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    invoke-virtual {v4, v6}, Lcom/veclink/healthy/photo/RecordService;->setPlaybackRotation(I)V

    goto :goto_2
.end method

.method public getStorageDir(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "create"    # Ljava/lang/Boolean;

    .prologue
    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "scan":Z
    const/4 v4, 0x0

    .line 434
    .local v4, "subDir":Ljava/lang/String;
    const/4 v0, 0x0

    .line 435
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 437
    .local v1, "rootDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 439
    .local v3, "sdCardExist":Z
    if-nez v3, :cond_0

    .line 440
    const-string v5, "MainActivity"

    const-string v6, "SD Card is not inserted! Use /mnt/emmc !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v1, Ljava/io/File;

    .end local v1    # "rootDir":Ljava/io/File;
    const-string v5, "/mnt/emmc"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v1    # "rootDir":Ljava/io/File;
    :goto_0
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rootDir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 448
    const-string v5, "MainActivity"

    const-string v6, "Storage Directory does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_1
    return-void

    .line 443
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 453
    :cond_1
    const-string v4, "/CleverCam/Pictures"

    .line 454
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    .restart local v0    # "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 457
    const/4 v2, 0x1

    .line 459
    :cond_2
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mImagePath:Ljava/io/File;

    .line 460
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mImagePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/veclink/healthy/photo/Const;->ImagePath:Ljava/lang/String;

    .line 461
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImagePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/veclink/healthy/photo/Const;->ImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, "/CleverCam/Video"

    .line 465
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    .restart local v0    # "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 468
    const/4 v2, 0x1

    .line 470
    :cond_3
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoPath:Ljava/io/File;

    .line 471
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/veclink/healthy/photo/Const;->VideoPath:Ljava/lang/String;

    .line 472
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/veclink/healthy/photo/Const;->VideoPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 662
    :goto_0
    return-void

    .line 648
    :pswitch_0
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    if-ne v0, v1, :cond_0

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    .line 655
    :goto_1
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->cameraPreview(Z)V

    goto :goto_0

    .line 652
    :cond_0
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    goto :goto_1

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x7f060152
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->setContentView(I)V

    .line 256
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 257
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mContext:Landroid/content/Context;

    .line 258
    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->doLockOrUnLockKeyTask(Z)V

    .line 259
    const-string v1, "user_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->user:Landroid/content/SharedPreferences;

    .line 260
    new-instance v1, Lcom/veclink/healthy/photo/mySharedPreferences;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/veclink/healthy/photo/mySharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;

    .line 262
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 263
    const-string v1, "Bluetooth is not available"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 265
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->finish()V

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->myHandler:Landroid/os/Handler;

    .line 269
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->initView()V

    .line 271
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->RefreshSetting()V

    .line 272
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->getStorageDir(Ljava/lang/Boolean;)V

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->camera_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->doLockOrUnLockKeyTask(Z)V

    .line 486
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 488
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    .line 491
    :cond_0
    sget-object v0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->onRecordService:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/healthy/photo/RecordService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->stopService(Landroid/content/Intent;)Z

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->camera_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 497
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->finish()V

    .line 498
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 504
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    const-string v1, "MainActivity"

    const-string v2, "onResume - BT not enabled yet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "enableIntent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 511
    .end local v0    # "enableIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->initRecordService()V

    .line 513
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->initSurfaceView()V

    .line 515
    sget-object v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    if-eqz v1, :cond_1

    .line 516
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->cameraPreview(Z)V

    .line 520
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 798
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 799
    iget v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    .line 800
    iget v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    if-ne v1, v4, :cond_6

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->firClick:I

    .line 802
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyOnclick(Landroid/view/View;)V

    .line 803
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->Myview:Landroid/view/View;

    .line 825
    :cond_0
    :goto_0
    return v4

    .line 732
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 733
    iput-boolean v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z

    .line 734
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->photoView:Landroid/widget/ImageView;

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 735
    sget-object v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/veclink/healthy/photo/RecordService;->takePicture(Landroid/hardware/Camera;)V

    .line 736
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 737
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 738
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    new-instance v1, Lcom/veclink/movnow_q2/activity/PhotographicActivity$7;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$7;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$7;->start()V

    .line 755
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->photoView:Landroid/widget/ImageView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 760
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 761
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->settingImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isshoot:Z

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->SettingShootlayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 765
    iput-boolean v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isshoot:Z

    .line 772
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->settingImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->SettingShootlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isshoot:Z

    goto :goto_1

    .line 778
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 780
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtnCamSwitch:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    if-ne v1, v4, :cond_5

    .line 782
    iput-boolean v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    .line 788
    :goto_2
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->cameraPreview(Z)V

    .line 790
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mBtnCamSwitch:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 785
    :cond_5
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z

    goto :goto_2

    .line 804
    :cond_6
    iget v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->secClick:I

    .line 806
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyOnclick(Landroid/view/View;)V

    .line 807
    iget v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->secClick:I

    iget v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->firClick:I

    sub-int/2addr v1, v2

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_7

    .line 809
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->Myview:Landroid/view/View;

    if-ne v1, p1, :cond_7

    .line 810
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyonLongClick(Landroid/view/View;)Z

    .line 814
    :cond_7
    iput v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->count:I

    .line 815
    iput v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->firClick:I

    .line 816
    iput v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->secClick:I

    goto/16 :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x7f060150
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 624
    const-string v0, "MainActivity"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 626
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 631
    const-string v0, "MainActivity"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 633
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 638
    const-string v0, "MainActivity"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 641
    return-void
.end method
