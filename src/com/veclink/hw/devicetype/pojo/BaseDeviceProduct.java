// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype.pojo;


public class BaseDeviceProduct
{

    public static final int CLICK_BIND_DEVICE_WAY = 1;
    public static final int DIALOG_UPDATE_WAY = 1;
    public static final int QUNTIC_UPDATE_WAY = 2;
    public static final int VECLINK_UPDATE_WAY = 0;
    public int INVISIBLE;
    public int VISIBLE;
    public int bindDeviceWay;
    public int canCharge;
    public int canPay;
    public int canShowCallRemindView;
    public int canShowFamilyNumber;
    public int canShowFindDeviceView;
    public int canShowHeartReateModule;
    public int canShowKeptView;
    public int canShowLightView;
    public int canShowPowerView;
    public int canShowRemindModule;
    public int canShowSleepModule;
    public int canShowSmsRemindView;
    public int canShowSportType;
    public int canShowStepModule;
    public int canShowTakePhotoView;
    public int canShowUseInstructions;
    public boolean controlPlayer;
    public int updateFirewareWay;

    public BaseDeviceProduct()
    {
        VISIBLE = 0;
        INVISIBLE = 8;
        canShowStepModule = VISIBLE;
        canShowSleepModule = VISIBLE;
        canShowRemindModule = VISIBLE;
        canShowTakePhotoView = VISIBLE;
        canShowLightView = VISIBLE;
        canShowKeptView = VISIBLE;
        canShowFindDeviceView = VISIBLE;
        canShowCallRemindView = VISIBLE;
        canShowSmsRemindView = VISIBLE;
        canShowPowerView = VISIBLE;
        canShowHeartReateModule = INVISIBLE;
        canShowSportType = VISIBLE;
        canShowUseInstructions = VISIBLE;
        canShowFamilyNumber = INVISIBLE;
        canPay = INVISIBLE;
        canCharge = INVISIBLE;
        updateFirewareWay = 0;
    }

    public void setAllModueInVisibleExceptStep()
    {
        canShowStepModule = VISIBLE;
        canShowSleepModule = INVISIBLE;
        canShowRemindModule = INVISIBLE;
        canShowTakePhotoView = INVISIBLE;
        canShowLightView = INVISIBLE;
        canShowKeptView = INVISIBLE;
        canShowFindDeviceView = INVISIBLE;
        canShowCallRemindView = INVISIBLE;
        canShowSmsRemindView = INVISIBLE;
        canShowPowerView = INVISIBLE;
        canShowHeartReateModule = INVISIBLE;
        canShowSportType = INVISIBLE;
        canShowUseInstructions = INVISIBLE;
        canShowFamilyNumber = INVISIBLE;
        canPay = INVISIBLE;
        canCharge = INVISIBLE;
    }
}
