.class public Lcom/veclink/healthy/photo/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final CleverCamFolder:Ljava/lang/String; = "CleverCam"

.field public static final EmmcPath:Ljava/lang/String; = "/mnt/emmc"

.field public static final ImageFolder:Ljava/lang/String; = "Pictures"

.field public static ImagePath:Ljava/lang/String; = null

.field public static final RECORD_AUDIO:I = 0x2

.field public static final RECORD_AUDIO_STOP:I = 0x2

.field public static final RECORD_NULL:I = 0x0

.field public static final RECORD_PICTURE:I = 0x1

.field public static final RECORD_PICTURE_STOP:I = 0x1

.field public static final RECORD_VIDEO:I = 0x3

.field public static final RECORD_VIDEO_STOP:I = 0x3

.field public static final VideoFolder:Ljava/lang/String; = "Video"

.field public static VideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/veclink/healthy/photo/Const;->ImagePath:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/veclink/healthy/photo/Const;->VideoPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
