// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;


public class SubError
{

    public static final String ACCOUNT_LOCKED = "isv.user-login-service-error:ACCOUNT_LOCKED";
    public static final String EMAIL_HAS_NOT_REGIGTERED = "isv.user-resetpasswordbyemail-service-error:EMAIL_DOES_NOT_EXIST";
    public static final String EMAIL_IS_USED = "isv.user-registerbyemail-service-error:EMAIL_IS_USED";
    public static final String INACTIVE_ACCOUNT = "isv.user-login-service-error:INACTIVE_ACCOUNT";
    public static final String INVILAD_USERNAME_OR_PASSWORD = "isv.user-login-service-error:INVLIAD_USERNAME_OR_PASSWORD";
    public static final String MAIL_SEND_FAILED = "isv.user-registerbyemail-service-error:MAIL_SEND_FAILED";
    public static final String NO_FIRMWARE = "isv.bracelet-firmwareupgrade-service-error:NO_FIRMWARE";
    public static final String REGISTRATION_FAILED = "isv.user-registerbyemail-service-error:REGISTRATION_FAILED";
    private String code;
    private String message;

    public SubError()
    {
    }

    public String getCode()
    {
        return code;
    }

    public String getMessage()
    {
        return message;
    }

    public void setCode(String s)
    {
        code = s;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("SubErrors [code=").append(code).append(", message=").append(message).append("]").toString();
    }
}
