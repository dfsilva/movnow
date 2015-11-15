.class final Lcn/sharesdk/framework/utils/UIHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/UIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Message;

.field public final b:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/utils/UIHandler$a;->a:Landroid/os/Message;

    iput-object p2, p0, Lcn/sharesdk/framework/utils/UIHandler$a;->b:Landroid/os/Handler$Callback;

    return-void
.end method
