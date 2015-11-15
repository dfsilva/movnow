.class Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;
.super Ljava/lang/Object;
.source "SetFamilyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 53
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->phone_number_edit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$100(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    new-instance v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/veclink/movmow/allen/nurse/RemindObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    const-string v4, "family_phone_number_file.wao"

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->notifyDataSetChanged()V

    .line 70
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->phone_number_edit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->access$100(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
