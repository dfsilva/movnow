.class public Lcom/veclink/hw/bleservice/util/Keeper;
.super Ljava/lang/Object;
.source "Keeper.java"


# static fields
.field public static final DEVICE_MAC_ADDRESS:Ljava/lang/String; = "device_mac_address"

.field public static final KEEPER_FILE_NAME:Ljava/lang/String; = "keep_file"

.field public static final KEY_BAND_LIGHT_COLOR:Ljava/lang/String; = "band_light_color"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final KEY_DEVICE_MAC_ADDRESS:Ljava/lang/String; = "device_mac_address"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final KEY_LAST_SYNC_TIME:Ljava/lang/String; = "last_sync_time"

.field public static final KEY_NEED_TO_DO_OLD_PROTOCOL:Ljava/lang/String; = "KEY_NEED_TO_DO_OLD_PROTOCOL"

.field public static final KEY_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field public static final KEY_USER_HAS_BIND_BAND:Ljava/lang/String; = "user_has_bind_band"

.field public static final kEY_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final kEY_DEVICE_ROM_VERSION:Ljava/lang/String; = "device_rom_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBindDeviceMessage(Landroid/content/Context;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 187
    const-string v3, "keep_file"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, ""

    .line 190
    .local v1, "empty":Ljava/lang/String;
    const-string v3, "device_name"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v3, "device_mac_address"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v3, "device_mac_address"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v3, "deviceId"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v3, "device_rom_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v3, "device_type"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v3, "protocol_version"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v3, "user_has_bind_band"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v3, "KEY_NEED_TO_DO_OLD_PROTOCOL"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v3, "band_light_color"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method public static getBandLightColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v2, "keep_file"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "band_light_color"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "band_light_color":I
    return v0
.end method

.method public static getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "device_mac_address"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "address":Ljava/lang/String;
    return-object v0
.end method

.method public static getBindDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "device_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "address":Ljava/lang/String;
    return-object v0
.end method

.method public static getChangeToOldProtocol(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 181
    const-string v2, "keep_file"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "KEY_NEED_TO_DO_OLD_PROTOCOL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    .local v0, "change":Z
    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "deviceId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public static getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "device_rom_version"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 126
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "device_type"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "address":Ljava/lang/String;
    return-object v0
.end method

.method public static getProtocolVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "protocol_version"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "address":Ljava/lang/String;
    return-object v0
.end method

.method public static getUserHasBindBand(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v2, "keep_file"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "user_has_bind_band"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, "isHasBinded":Z
    return v0
.end method

.method public static setBandLightColor(Landroid/content/Context;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "band_light_color"    # I

    .prologue
    .line 159
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "band_light_color"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method public static setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_mac_address"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    const-string v2, "deviceId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public static setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static setChangeToOldProtocol(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "change"    # Z

    .prologue
    .line 173
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 174
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "KEY_NEED_TO_DO_OLD_PROTOCOL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public static setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "deviceId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public static setDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_mac_address"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method public static setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_rom_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void
.end method

.method public static setDeviceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "device_type"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "device_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public static setProtocolVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pro_version"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "protocol_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public static setUserHasBindBand(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isHasBinded"    # Z

    .prologue
    .line 145
    const-string v2, "keep_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "user_has_bind_band"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method
