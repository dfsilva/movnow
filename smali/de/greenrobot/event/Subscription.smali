.class final Lde/greenrobot/event/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field final subscriber:Ljava/lang/Object;

.field final subscriberMethod:Lde/greenrobot/event/SubscriberMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;)V
    .locals 0
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lde/greenrobot/event/SubscriberMethod;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 29
    instance-of v2, p1, Lde/greenrobot/event/Subscription;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 30
    check-cast v0, Lde/greenrobot/event/Subscription;

    .line 31
    .local v0, "otherSubscription":Lde/greenrobot/event/Subscription;
    iget-object v2, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    iget-object v3, v0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v3, v0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/SubscriberMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 33
    .end local v0    # "otherSubscription":Lde/greenrobot/event/Subscription;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
