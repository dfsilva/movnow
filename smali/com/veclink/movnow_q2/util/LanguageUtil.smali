.class public Lcom/veclink/movnow_q2/util/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLanguageEnv()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 29
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "country":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const-string v2, "zh-CN"

    .line 38
    :cond_0
    :goto_0
    return-object v2

    .line 34
    :cond_1
    const-string v3, "tw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v2, "zh-TW"

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh-CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh-TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 21
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnglish()Z
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRuuna()Z
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 58
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSpanish()Z
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTR()Z
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
