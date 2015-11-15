.class final Lhirondelle/date4j/ModelUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/ModelUtil$NullsGo;
    }
.end annotation


# static fields
.field static final HASH_SEED:I = 0x17

.field private static final fODD_PRIME_NUMBER:I = 0x25


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areEqual(CC)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(DD)Z
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(FF)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method does not currently support arrays."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static areEqual(ZZ)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;",
            "Lhirondelle/date4j/ModelUtil$NullsGo;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    :cond_2
    :goto_1
    sget-object v1, Lhirondelle/date4j/ModelUtil$NullsGo;->LAST:Lhirondelle/date4j/ModelUtil$NullsGo;

    if-ne v1, p2, :cond_0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method static equalsFor([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array lengths do not match. \'This\' length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while \'That\' length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lhirondelle/date4j/ModelUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static firstTerm(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x25

    return v0
.end method

.method static hash(IC)I
    .locals 1

    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method static hash(ID)I
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lhirondelle/date4j/ModelUtil;->hash(IJ)I

    move-result v0

    return v0
.end method

.method static hash(IF)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v0

    return v0
.end method

.method static hash(II)I
    .locals 1

    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method static hash(IJ)I
    .locals 3

    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method static hash(ILjava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {p0, v0}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    move v0, p0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lhirondelle/date4j/ModelUtil;->hash(ILjava/lang/Object;)I

    move-result p0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, p0

    goto :goto_1
.end method

.method static hash(IZ)I
    .locals 2

    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final varargs hashCodeFor([Ljava/lang/Object;)I
    .locals 4

    const/16 v1, 0x17

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v1, v3}, Lhirondelle/date4j/ModelUtil;->hash(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static isArray(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static quickEquals(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static toStringAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lhirondelle/date4j/ToStringUtil;->getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toStringFor(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
