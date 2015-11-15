.class final Lhirondelle/date4j/ToStringUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/ToStringUtil$1;,
        Lhirondelle/date4j/ToStringUtil$Pong;,
        Lhirondelle/date4j/ToStringUtil$Ping;
    }
.end annotation


# static fields
.field private static HIDDEN_PASSWORD_VALUE:Ljava/lang/String; = null

.field private static final NEW_LINE:Ljava/lang/String;

.field private static PASSWORD_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final fAVOID_CIRCULAR_REFERENCES:Ljava/lang/String; = "[circular reference]"

.field private static final fCLONE:Ljava/lang/String; = "clone"

.field private static final fGET:Ljava/lang/String; = "get"

.field private static final fGET_CLASS:Ljava/lang/String; = "getClass"

.field private static final fHASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final fINDENT:Ljava/lang/String; = ""

.field private static final fLogger:Ljava/util/logging/Logger;

.field private static final fNO_ARGS:[Ljava/lang/Object;

.field private static final fNO_PARAMS:[Ljava/lang/Class;

.field private static final fTO_STRING:Ljava/lang/String; = "toString"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fNO_ARGS:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fNO_PARAMS:[Ljava/lang/Class;

    const-class v0, Lhirondelle/date4j/ToStringUtil;

    invoke-static {v0}, Lhirondelle/date4j/Util;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    const-string v0, "password"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "****"

    sput-object v0, Lhirondelle/date4j/ToStringUtil;->HIDDEN_PASSWORD_VALUE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEndLine(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static addLineForGetXXXMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lhirondelle/date4j/ToStringUtil;->getMethodNameMinusGet(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lhirondelle/date4j/Util;->getArrayAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    sget-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p3, v1, :cond_0

    invoke-static {p3, p4}, Lhirondelle/date4j/ToStringUtil;->getMethodFromName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, p3}, Lhirondelle/date4j/ToStringUtil;->isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Lhirondelle/date4j/ToStringUtil;->getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v0, "[circular reference]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addStartLine(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lhirondelle/date4j/ToStringUtil;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static dontShowPasswords(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lhirondelle/date4j/ToStringUtil;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lhirondelle/date4j/ToStringUtil;->HIDDEN_PASSWORD_VALUE:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static getMethodFromName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhirondelle/date4j/ToStringUtil;->fNO_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMethodNameMinusGet(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "get"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getMethodReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhirondelle/date4j/ToStringUtil;->fNO_ARGS:[Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lhirondelle/date4j/ToStringUtil;->dontShowPasswords(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {p0, p1}, Lhirondelle/date4j/ToStringUtil;->vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method static getText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lhirondelle/date4j/ToStringUtil;->getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lhirondelle/date4j/ToStringUtil;->addStartLine(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lhirondelle/date4j/ToStringUtil;->isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v4, v1, p1, p2}, Lhirondelle/date4j/ToStringUtil;->addLineForGetXXXMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lhirondelle/date4j/ToStringUtil;->addEndLine(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isContributingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_3

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "clone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getClass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "hashCode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "toString"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v5, v1

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    :goto_4
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "blah"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "blah"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "blah"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "This is the end."

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lhirondelle/date4j/ToStringUtil$Ping;

    invoke-direct {v0, v2}, Lhirondelle/date4j/ToStringUtil$Ping;-><init>(Lhirondelle/date4j/ToStringUtil$1;)V

    new-instance v1, Lhirondelle/date4j/ToStringUtil$Pong;

    invoke-direct {v1, v2}, Lhirondelle/date4j/ToStringUtil$Pong;-><init>(Lhirondelle/date4j/ToStringUtil$1;)V

    invoke-virtual {v0, v1}, Lhirondelle/date4j/ToStringUtil$Ping;->setPong(Lhirondelle/date4j/ToStringUtil$Pong;)V

    invoke-virtual {v1, v0}, Lhirondelle/date4j/ToStringUtil$Pong;->setPing(Lhirondelle/date4j/ToStringUtil$Ping;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static vomit(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflection fails to get no-arg method named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void
.end method

.method private static vomit(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3

    sget-object v0, Lhirondelle/date4j/ToStringUtil;->fLogger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get return value using reflection. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void
.end method
