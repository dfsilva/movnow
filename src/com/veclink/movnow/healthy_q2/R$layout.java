// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow.healthy_q2;


// Referenced classes of package com.veclink.movnow.healthy_q2:
//            R

public static final class 
{

    public static final int activity_add_cal = 0x7f030000;
    public static final int activity_add_wakeup_remind = 0x7f030001;
    public static final int activity_bmi = 0x7f030002;
    public static final int activity_con_syn = 0x7f030003;
    public static final int activity_edit_cal = 0x7f030004;
    public static final int activity_guide_introduce = 0x7f030005;
    public static final int activity_guide_page = 0x7f030006;
    public static final int activity_heartreate_history = 0x7f030007;
    public static final int activity_login = 0x7f030008;
    public static final int activity_long_sitting_remind = 0x7f030009;
    public static final int activity_main = 0x7f03000a;
    public static final int activity_manager_calories = 0x7f03000b;
    public static final int activity_manager_devices = 0x7f03000c;
    public static final int activity_my_account = 0x7f03000d;
    public static final int activity_regisiter = 0x7f03000e;
    public static final int activity_register_bmi = 0x7f03000f;
    public static final int activity_reset_pwd = 0x7f030010;
    public static final int activity_reset_pwd_success_tip = 0x7f030011;
    public static final int activity_set_family_number = 0x7f030012;
    public static final int activity_settings = 0x7f030013;
    public static final int activity_settings_introduce = 0x7f030014;
    public static final int activity_show_cal = 0x7f030015;
    public static final int activity_sleep_history = 0x7f030016;
    public static final int activity_user_agreement = 0x7f030017;
    public static final int activity_walk_date = 0x7f030018;
    public static final int activity_walk_history = 0x7f030019;
    public static final int activity_water_history = 0x7f03001a;
    public static final int activity_water_remind = 0x7f03001b;
    public static final int al_long_sitting_list_head_view = 0x7f03001c;
    public static final int al_long_sitting_remind_list_activity = 0x7f03001d;
    public static final int al_long_sitting_remind_list_item = 0x7f03001e;
    public static final int al_water_remind_list_activity = 0x7f03001f;
    public static final int al_water_remind_list_item = 0x7f030020;
    public static final int base_remind_dialog_layout = 0x7f030021;
    public static final int bind_band_activity = 0x7f030022;
    public static final int bluetoothview_layout = 0x7f030023;
    public static final int calendar_view = 0x7f030024;
    public static final int choose_remind_time_view = 0x7f030025;
    public static final int connect_ble_dialog_layout = 0x7f030026;
    public static final int custom_alert_dialog = 0x7f030027;
    public static final int custom_edit_progress_dialog = 0x7f030028;
    public static final int custom_pooupwindow = 0x7f030029;
    public static final int custom_tip_dialog = 0x7f03002a;
    public static final int custom_two_edit_progress_dialog = 0x7f03002b;
    public static final int custom_wait_progress_dialog = 0x7f03002c;
    public static final int date_cell = 0x7f03002d;
    public static final int date_grid_fragment = 0x7f03002e;
    public static final int day_button = 0x7f03002f;
    public static final int device_list = 0x7f030030;
    public static final int device_list_item = 0x7f030031;
    public static final int dialog_devices_select_remind_times = 0x7f030032;
    public static final int dialog_item_portait = 0x7f030033;
    public static final int food_cal_list_item = 0x7f030034;
    public static final int food_manager = 0x7f030035;
    public static final int food_manager_item = 0x7f030036;
    public static final int fragment_heartrate_item = 0x7f030037;
    public static final int fragment_sleep_item = 0x7f030038;
    public static final int fragment_walk_item = 0x7f030039;
    public static final int fragment_walk_month = 0x7f03003a;
    public static final int fragment_walk_week = 0x7f03003b;
    public static final int fragment_water_item = 0x7f03003c;
    public static final int healthy_settings_item_view = 0x7f03003d;
    public static final int heart_rate_groud_child_item = 0x7f03003e;
    public static final int heart_rate_groud_list_item = 0x7f03003f;
    public static final int history_record_week_layout = 0x7f030040;
    public static final int item_guide = 0x7f030041;
    public static final int layout_dot = 0x7f030042;
    public static final int list_item = 0x7f030043;
    public static final int loading_process_dialog_anim = 0x7f030044;
    public static final int login_autocomplete_draw_layout = 0x7f030045;
    public static final int pager_sleep_date_item = 0x7f030046;
    public static final int pager_sleep_week_item = 0x7f030047;
    public static final int pager_walk_date_item = 0x7f030048;
    public static final int pager_walk_month_item = 0x7f030049;
    public static final int pager_walk_week_item = 0x7f03004a;
    public static final int photographic = 0x7f03004b;
    public static final int pull_to_refresh_header_horizontal = 0x7f03004c;
    public static final int pull_to_refresh_header_vertical = 0x7f03004d;
    public static final int rebmidialog_layout = 0x7f03004e;
    public static final int rebmidialog_layout_en = 0x7f03004f;
    public static final int remind_wheel_view_item = 0x7f030050;
    public static final int settings_activity_my_device = 0x7f030051;
    public static final int settings_activity_mydevice_sleeptime = 0x7f030052;
    public static final int settings_activity_mydevice_sleeptime_choosetime = 0x7f030053;
    public static final int settings_activity_mydevice_sportmode = 0x7f030054;
    public static final int settings_activity_mytarget = 0x7f030055;
    public static final int settings_activity_settings = 0x7f030056;
    public static final int settings_activity_sitting_remind_time = 0x7f030057;
    public static final int settings_bmi_choose_birthday_layout = 0x7f030058;
    public static final int settings_bmi_choose_sex_layout = 0x7f030059;
    public static final int settings_bmi_choose_user_height_layout = 0x7f03005a;
    public static final int settings_bmi_choose_user_weight_layout = 0x7f03005b;
    public static final int settings_bmi_show_result_layout = 0x7f03005c;
    public static final int share_dialog_layout = 0x7f03005d;
    public static final int show_hertrate_result_layout = 0x7f03005e;
    public static final int sleect_band_light_color_layout = 0x7f03005f;
    public static final int sleep_graphview_layout = 0x7f030060;
    public static final int sport_graphview_layout = 0x7f030061;
    public static final int sport_month_graphview_layout = 0x7f030062;
    public static final int title_bar = 0x7f030063;
    public static final int updaet_remind_dialog_layout = 0x7f030064;
    public static final int wakeup_remind_list_activity = 0x7f030065;
    public static final int wakeup_remind_list_item = 0x7f030066;
    public static final int walk_pager_week = 0x7f030067;
    public static final int wheel_view_item = 0x7f030068;

    public ()
    {
    }
}
