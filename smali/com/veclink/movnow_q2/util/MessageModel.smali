.class public Lcom/veclink/movnow_q2/util/MessageModel;
.super Ljava/lang/Object;
.source "MessageModel.java"


# static fields
.field public static final ASK_CAPTURE_PHOTO:I = 0x3

.field public static final ASK_FRIEND_DATA:I = 0x4

.field public static final ASK_LOCAL_IMAGE:I = 0x2

.field public static final CAPTURE_TEMP_FILE:Ljava/lang/String;

.field public static final CHOOSE_CONTACT_REQUEST_CODE:I = 0x0

.field public static final CHOOSE_CONTACT_RESULT_CODE:I = 0x1

.field public static final CHOOSE_SMALL_PICTURE:I = 0xa

.field public static final CROP_SMALL_PICTURE:I = 0x9

.field public static final FINISH_ACTIVITY:I = 0x3ee

.field public static final GET_NET_DEVICE_POINT:Ljava/lang/String; = "action_get_new_device_point"

.field public static final HIDE_VIEW:I = 0x3e9

.field public static final IS_FROM_LOGIN:I = 0x3ef

.field public static final MAP_ADD_AND_SHOW_WARNING_INFO:I = 0xc

.field public static final MAP_CHOOSE_POSITION_RESULT_CODE:I = 0xb

.field public static final MAP_GET_MKPOINT_INFO:I = 0x3f1

.field public static final MAP_SHOW_MKPOINT_INFO:I = 0x3f2

.field public static final MICROBLOG_RESULT_CODE:I = 0x5

.field public static final MODIFY_DEVICE_NAME_RETURN:I = 0xd

.field public static final MOOD_UPDATE_EDITVIEW_USERNAME:I = 0x3eb

.field public static final MOOD_UPDATE_FACE:I = 0x3f0

.field public static final MOOD_UPDATE_IMG:I = 0x3ec

.field public static final NETWORK_GET_WEATHER:I = 0x3f3

.field public static final NETWORK_GET_WEATHER_LOC:I = 0x3f4

.field public static final PERSONAL_TO_LOCATION:I = 0x8

.field public static final SETTINGS_TO_PERSONAL_REQUEST:I = 0x6

.field public static final SETTINGS_TO_PERSONAL_RESULT:I = 0x7

.field public static final UPDATE_DATABASES:I = 0x3ea

.field public static final UPDATE_PERSONAL_INFO:I = 0x3ed


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/q2_temp_capture.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
