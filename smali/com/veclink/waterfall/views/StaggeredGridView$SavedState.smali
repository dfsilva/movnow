.class Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstId:J

.field mapping:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field topOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2534
    new-instance v0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState$1;

    invoke-direct {v0}, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2510
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2500
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    .line 2511
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    .line 2512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->position:I

    .line 2513
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->topOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2514
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    sget-object v1, Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 2516
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2499
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2506
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2500
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    .line 2507
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaggereGridView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2520
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2521
    iget-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2522
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->topOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2524
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2525
    return-void
.end method
