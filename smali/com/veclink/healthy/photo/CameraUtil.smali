.class public Lcom/veclink/healthy/photo/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraUtil"

.field private static final TIME_LAPSE_VIDEO_QUALITY:[I

.field private static final VIDEO_QUALITY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/veclink/healthy/photo/CameraUtil;->TIME_LAPSE_VIDEO_QUALITY:[I

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/veclink/healthy/photo/CameraUtil;->VIDEO_QUALITY:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x3ee
        0x3ed
        0x3ec
        0x3eb
        0x3ef
        0x3ea
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x6
        0x5
        0x4
        0x3
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCameraInstance(ZLjava/lang/StringBuffer;)Landroid/hardware/Camera;
    .locals 9
    .param p0, "facingfront"    # Z
    .param p1, "camIdx"    # Ljava/lang/StringBuffer;

    .prologue
    .line 38
    const-class v7, Lcom/veclink/healthy/photo/CameraUtil;

    monitor-enter v7

    const/4 v0, 0x0

    .line 39
    .local v0, "cam":Landroid/hardware/Camera;
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 42
    .local v2, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-eqz p0, :cond_1

    .line 43
    const/4 v4, 0x1

    .line 47
    .local v4, "facing":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "idx":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .local v1, "cameraCount":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 48
    invoke-static {v5, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 49
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v4, :cond_2

    .line 51
    :try_start_1
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 52
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_0
    monitor-exit v7

    return-object v0

    .line 45
    .end local v1    # "cameraCount":I
    .end local v4    # "facing":I
    .end local v5    # "idx":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "facing":I
    goto :goto_0

    .line 54
    .restart local v1    # "cameraCount":I
    .restart local v5    # "idx":I
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 56
    const-string v6, "CameraUtil"

    const-string v8, "Camera open error !"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v4    # "facing":I
    .end local v5    # "idx":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static getCameraQuality(I)I
    .locals 2
    .param p0, "camIdx"    # I

    .prologue
    .line 65
    const/4 v0, 0x6

    .line 66
    .local v0, "quality":B
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x5

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const/4 v0, 0x5

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const/4 v0, 0x4

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :cond_3
    const/4 v1, 0x7

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const/4 v0, 0x7

    goto :goto_0

    .line 75
    :cond_4
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 78
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 7
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "angle"    # I

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayOrientation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    .local v0, "downPolymorphic":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 89
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "downPolymorphic":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayOrientation(), error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPreviewRotation(Landroid/hardware/Camera;I)V
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "rotation"    # I

    .prologue
    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "camera_method":Z
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 106
    .end local v0    # "camera_method":Z
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "camera_method":Z
    :cond_1
    invoke-static {p0, p1}, Lcom/veclink/healthy/photo/CameraUtil;->setDisplayOrientation(Landroid/hardware/Camera;I)V

    goto :goto_0
.end method
