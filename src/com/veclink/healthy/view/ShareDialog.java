// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import cn.sharesdk.facebook.Facebook;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.twitter.Twitter;
import cn.sharesdk.wechat.moments.WechatMoments;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.util.ScreenShot;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StorageUtil;
import java.io.File;
import java.util.Date;
import java.util.HashMap;

public class ShareDialog extends Dialog
    implements android.view.View.OnClickListener
{

    public static final int FACEBOOK = 3;
    private static final String IMG_FILE_NAME = "screenshotshare.png";
    public static int SHARETYPE = 0;
    public static final int SINA = 1;
    public static final int TWITTER = 4;
    public static final int WEIXIN = 2;
    private Date date;
    private Context mContext;
    private TextView share_to_facebook_btn;
    private TextView share_to_sina_btn;
    private TextView share_to_twitter_btn;
    private TextView share_to_wxfriend_btn;
    Handler sharehand;
    PlatformActionListener sinalistener;

    public ShareDialog(Context context, Date date1)
    {
        super(context, 0x7f0b0016);
        sinalistener = new PlatformActionListener() {

            final ShareDialog this$0;

            public void onCancel(Platform platform, int i)
            {
            }

            public void onComplete(Platform platform, int i, HashMap hashmap)
            {
                platform = new Message();
                platform.obj = "yes";
                sharehand.sendMessage(platform);
            }

            public void onError(Platform platform, int i, Throwable throwable)
            {
                platform = new Message();
                platform.obj = throwable;
                sharehand.sendMessage(platform);
            }

            
            {
                this$0 = ShareDialog.this;
                super();
            }
        };
        sharehand = new Handler() {

            final ShareDialog this$0;

            public void handleMessage(Message message)
            {
                while ("yes".equals(message.obj.toString()) || !(message.obj instanceof WechatClientNotExistException)) 
                {
                    return;
                }
                Toast.makeText(mContext, mContext.getString(0x7f0c01b7), 1).show();
            }

            
            {
                this$0 = ShareDialog.this;
                super();
            }
        };
        mContext = context;
        date = date1;
        ShareSDK.initSDK(context);
        (new Thread() {

            final ShareDialog this$0;

            public void run()
            {
                ScreenShot.shoot((Activity)mContext, ShareDialog.getImageFilePath());
            }

            
            {
                this$0 = ShareDialog.this;
                super();
            }
        }).start();
    }

    private String createShareContent()
    {
        String s;
        StringBuilder stringbuilder;
        int i;
        s = DateTimeUtil.getDateStringByDate(date);
        int j = StepDataConverterUtil.getTotalStepByOriginData(HealthyDBOperate.loadOriginSportDataByDate(mContext, s));
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, (new StringBuilder()).append(Keeper.getDeviceId(mContext)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(0))).intValue();
        i = j;
        if (k > j)
        {
            i = k;
        }
        stringbuilder = new StringBuilder();
        stringbuilder.append(DateTimeUtil.getShareDateStringByDate(date, mContext));
        s = null;
        if (i != 0) goto _L2; else goto _L1
_L1:
        s = mContext.getString(0x7f0c0169);
_L4:
        stringbuilder.append(s);
        return stringbuilder.toString();
_L2:
        if (i > 0 && i < 7000)
        {
            s = mContext.getString(0x7f0c016a, new Object[] {
                Integer.valueOf(i)
            });
        } else
        if (i >= 7000 && i < 12000)
        {
            s = mContext.getString(0x7f0c016b, new Object[] {
                Integer.valueOf(i)
            });
        } else
        if (i >= 12000 && i < 17000)
        {
            s = mContext.getString(0x7f0c016c, new Object[] {
                Integer.valueOf(i)
            });
        } else
        if (i >= 17000)
        {
            s = mContext.getString(0x7f0c016d, new Object[] {
                Integer.valueOf(i)
            });
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String getImageFilePath()
    {
        return (new StringBuilder()).append(StorageUtil.getMovnowDataDirPath()).append(File.separator).append("screenshotshare.png").toString();
    }

    private void shareToFaceBook(Context context, PlatformActionListener platformactionlistener)
    {
        cn.sharesdk.facebook.Facebook.ShareParams shareparams = new cn.sharesdk.facebook.Facebook.ShareParams();
        shareparams.text = createShareContent();
        context = ShareSDK.getPlatform(context, Facebook.NAME);
        context.setPlatformActionListener(platformactionlistener);
        context.share(shareparams);
    }

    private void shareToTwitter(Context context, PlatformActionListener platformactionlistener)
    {
        cn.sharesdk.twitter.Twitter.ShareParams shareparams = new cn.sharesdk.twitter.Twitter.ShareParams();
        shareparams.text = createShareContent();
        context = ShareSDK.getPlatform(context, Twitter.NAME);
        context.setPlatformActionListener(platformactionlistener);
        context.share(shareparams);
    }

    private void shareToWeiXinFriends(Context context, PlatformActionListener platformactionlistener)
    {
        cn.sharesdk.wechat.moments.WechatMoments.ShareParams shareparams = new cn.sharesdk.wechat.moments.WechatMoments.ShareParams();
        shareparams.text = createShareContent();
        shareparams.shareType = 2;
        shareparams.imagePath = getImageFilePath();
        Log.e("imagePath", shareparams.imagePath);
        context = ShareSDK.getPlatform(context, WechatMoments.NAME);
        context.setPlatformActionListener(platformactionlistener);
        context.share(shareparams);
    }

    private void shareToXinLangWeiBo(Context context, PlatformActionListener platformactionlistener)
    {
        cn.sharesdk.sina.weibo.SinaWeibo.ShareParams shareparams = new cn.sharesdk.sina.weibo.SinaWeibo.ShareParams();
        shareparams.text = createShareContent();
        shareparams.imagePath = getImageFilePath();
        context = ShareSDK.getPlatform(context, SinaWeibo.NAME);
        context.setPlatformActionListener(platformactionlistener);
        context.share(shareparams);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131100086 2131100089: default 36
    //                   2131100086 41
    //                   2131100087 60
    //                   2131100088 79
    //                   2131100089 98;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        dismiss();
        return;
_L2:
        SHARETYPE = 1;
        shareToXinLangWeiBo(mContext, sinalistener);
        continue; /* Loop/switch isn't completed */
_L3:
        SHARETYPE = 2;
        shareToWeiXinFriends(mContext, sinalistener);
        continue; /* Loop/switch isn't completed */
_L4:
        SHARETYPE = 3;
        shareToFaceBook(mContext, sinalistener);
        continue; /* Loop/switch isn't completed */
_L5:
        SHARETYPE = 4;
        shareToTwitter(mContext, sinalistener);
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03005d);
        share_to_sina_btn = (TextView)findViewById(0x7f0601b6);
        share_to_wxfriend_btn = (TextView)findViewById(0x7f0601b7);
        share_to_facebook_btn = (TextView)findViewById(0x7f0601b8);
        share_to_twitter_btn = (TextView)findViewById(0x7f0601b9);
        if (LanguageUtil.isChina())
        {
            share_to_sina_btn.setVisibility(0);
            share_to_wxfriend_btn.setVisibility(0);
            share_to_facebook_btn.setVisibility(8);
            share_to_twitter_btn.setVisibility(8);
        } else
        {
            share_to_sina_btn.setVisibility(8);
            share_to_wxfriend_btn.setVisibility(8);
            share_to_facebook_btn.setVisibility(0);
            share_to_twitter_btn.setVisibility(0);
        }
        share_to_sina_btn.setOnClickListener(this);
        share_to_wxfriend_btn.setOnClickListener(this);
        share_to_facebook_btn.setOnClickListener(this);
        share_to_twitter_btn.setOnClickListener(this);
    }

}
