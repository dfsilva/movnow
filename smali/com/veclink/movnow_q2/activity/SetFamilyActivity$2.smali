.class Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;
.super Ljava/lang/Object;
.source "SetFamilyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->add_number_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$200(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->add_number_btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$200(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 80
    return-void
.end method
