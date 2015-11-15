.class public Lcn/sharesdk/facebookmessenger/XMPP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/facebookmessenger/XMPP$NoResponseException;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Lcn/sharesdk/facebookmessenger/XMPP;

.field private static final j:[C

.field private static final k:[C

.field private static final l:[C

.field private static final m:[C

.field private static final n:[C


# instance fields
.field private c:Lorg/xmlpull/v1/XmlPullParser;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/BufferedReader;

.field private f:Ljava/io/BufferedWriter;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/sharesdk/facebookmessenger/XMPP;->a:I

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->j:[C

    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->k:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->l:[C

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->m:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->n:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Lcn/sharesdk/facebookmessenger/XMPP;
    .locals 1

    sget-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->b:Lcn/sharesdk/facebookmessenger/XMPP;

    if-nez v0, :cond_0

    new-instance v0, Lcn/sharesdk/facebookmessenger/XMPP;

    invoke-direct {v0}, Lcn/sharesdk/facebookmessenger/XMPP;-><init>()V

    sput-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->b:Lcn/sharesdk/facebookmessenger/XMPP;

    :cond_0
    sget-object v0, Lcn/sharesdk/facebookmessenger/XMPP;->b:Lcn/sharesdk/facebookmessenger/XMPP;

    return-object v0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v6, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    const-string v3, "jid"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    const-string v4, "name"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "jid"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "group"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3e

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v5, v3

    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v5, v7

    double-to-int v1, v5

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_e

    aget-char v5, v2, v1

    if-le v5, v9, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_4

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcn/sharesdk/facebookmessenger/XMPP;->m:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v5, v9, :cond_7

    if-le v1, v0, :cond_6

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcn/sharesdk/facebookmessenger/XMPP;->n:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v6, 0x26

    if-ne v5, v6, :cond_a

    if-le v1, v0, :cond_8

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v5, v1, 0x5

    if-le v3, v5, :cond_9

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v2, v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x3

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x4

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v5, v1, 0x5

    aget-char v5, v2, v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_2

    :cond_9
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcn/sharesdk/facebookmessenger/XMPP;->l:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/16 v6, 0x22

    if-ne v5, v6, :cond_c

    if-le v1, v0, :cond_b

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcn/sharesdk/facebookmessenger/XMPP;->j:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    const/16 v6, 0x27

    if-ne v5, v6, :cond_2

    if-le v1, v0, :cond_d

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcn/sharesdk/facebookmessenger/XMPP;->k:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_e
    if-eqz v0, :cond_0

    if-le v1, v0, :cond_f

    sub-int/2addr v1, v0

    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->f:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->f:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcn/sharesdk/facebookmessenger/XMPP;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/sharesdk/facebookmessenger/XMPP;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    const-string v1, "iq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcn/sharesdk/facebookmessenger/XMPP;->h()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "presence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, "features"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "proceed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcn/sharesdk/facebookmessenger/XMPP;->d()V

    goto :goto_0

    :cond_5
    const-string v1, "failure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TLS negotiation has failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v1, "http://jabber.org/protocol/compress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SASL authentication failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v1, "challenge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcn/sharesdk/facebookmessenger/XMPP;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "1.0"

    const-string v0, "nonce"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "method"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&nonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->g:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&api_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->h:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&call_id=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_2
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "can\'t composed response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method

.method private f()V
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->e:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->f:Ljava/io/BufferedWriter;

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->e:Ljava/io/BufferedReader;

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "recvXML: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-object v2

    :cond_0
    const-string v0, "recvXML: 0."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/e;->c(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-instance v0, Lcn/sharesdk/facebookmessenger/XMPP$NoResponseException;

    const-string v1, "receive socket data failed"

    invoke-direct {v0, v1}, Lcn/sharesdk/facebookmessenger/XMPP$NoResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\\&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v2

    array-length v7, v0

    if-le v7, v8, :cond_0

    aget-object v0, v0, v8

    :goto_1
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private h()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, ""

    const-string v2, "from"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->i:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "parse iq attr but has error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "query"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "jabber:iq:roster"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing your JID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<message id=\"5lw7t-6\" to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareSDK\" type=\"chat\"><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcn/sharesdk/facebookmessenger/XMPP;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    const-string v0, "chat.facebook.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget v3, Lcn/sharesdk/facebookmessenger/XMPP;->a:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcn/sharesdk/facebookmessenger/XMPP;->a:I

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-object v0, v0, v3

    const/16 v3, 0x1466

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    invoke-direct {p0}, Lcn/sharesdk/facebookmessenger/XMPP;->f()V

    const-string v0, "<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<auth mechanism=\"X-FACEBOOK-PLATFORM\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\"></auth>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<iq id=\"5lw7t-4\" type=\"set\"><bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind\"><resource>ShareSDK</resource></bind></iq>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<iq id=\"5lw7t-5\" type=\"set\"><session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"/></iq>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->h:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "</stream:stream>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcn/sharesdk/facebookmessenger/f;

    const-string v5, "chat.facebook.com"

    invoke-direct {v4, v5}, Lcn/sharesdk/facebookmessenger/f;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/XMPP;->d:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-direct {p0}, Lcn/sharesdk/facebookmessenger/XMPP;->f()V

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "<iq id=\"5lw7t-6\" type=\"get\"><query xmlns=\"jabber:iq:roster\" ></query></iq>"

    invoke-direct {p0, v0}, Lcn/sharesdk/facebookmessenger/XMPP;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcn/sharesdk/facebookmessenger/XMPP$NoResponseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
