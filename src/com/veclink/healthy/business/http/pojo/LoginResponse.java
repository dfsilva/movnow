// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.List;

public class LoginResponse
{

    private String avatar;
    private String birthday;
    private String chgTime;
    private int cityId;
    private String crtTime;
    private int district_id;
    private String email;
    private String error;
    private String errorToken;
    private int height;
    private String message;
    private String mobile;
    private String nickName;
    private int provId;
    private String regType;
    private String sessionId;
    private int sex;
    private String signature;
    private String solution;
    private List subErrors;
    private String userFlag;
    private String userId;
    private String username;
    private int weight;

    public LoginResponse()
    {
    }

    public String getAvatar()
    {
        return avatar;
    }

    public String getBirthday()
    {
        return birthday;
    }

    public String getChgTime()
    {
        return chgTime;
    }

    public int getCityId()
    {
        return cityId;
    }

    public String getCrtTime()
    {
        return crtTime;
    }

    public int getDistrict_id()
    {
        return district_id;
    }

    public String getEmail()
    {
        return email;
    }

    public String getError()
    {
        return error;
    }

    public String getErrorToken()
    {
        return errorToken;
    }

    public int getHeight()
    {
        return height;
    }

    public String getMessage()
    {
        return message;
    }

    public String getMobile()
    {
        return mobile;
    }

    public String getNickName()
    {
        return nickName;
    }

    public int getProvId()
    {
        return provId;
    }

    public String getRegType()
    {
        return regType;
    }

    public String getSessionId()
    {
        return sessionId;
    }

    public int getSex()
    {
        return sex;
    }

    public String getSignature()
    {
        return signature;
    }

    public String getSolution()
    {
        return solution;
    }

    public List getSubErrors()
    {
        return subErrors;
    }

    public String getUserFlag()
    {
        return userFlag;
    }

    public String getUserId()
    {
        return userId;
    }

    public String getUsername()
    {
        return username;
    }

    public int getWeight()
    {
        return weight;
    }

    public void setAvatar(String s)
    {
        avatar = s;
    }

    public void setBirthday(String s)
    {
        birthday = s;
    }

    public void setChgTime(String s)
    {
        chgTime = s;
    }

    public void setCityId(int i)
    {
        cityId = i;
    }

    public void setCrtTime(String s)
    {
        crtTime = s;
    }

    public void setDistrict_id(int i)
    {
        district_id = i;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setError(String s)
    {
        error = s;
    }

    public void setErrorToken(String s)
    {
        errorToken = s;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public void setMobile(String s)
    {
        mobile = s;
    }

    public void setNickName(String s)
    {
        nickName = s;
    }

    public void setProvId(int i)
    {
        provId = i;
    }

    public void setRegType(String s)
    {
        regType = s;
    }

    public void setSessionId(String s)
    {
        sessionId = s;
    }

    public void setSex(int i)
    {
        sex = i;
    }

    public void setSignature(String s)
    {
        signature = s;
    }

    public void setSolution(String s)
    {
        solution = s;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }

    public void setUserFlag(String s)
    {
        userFlag = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void setUsername(String s)
    {
        username = s;
    }

    public void setWeight(int i)
    {
        weight = i;
    }

    public String toString()
    {
        if (error.equals("0"))
        {
            return (new StringBuilder()).append("LoginResponse [error=").append(error).append(", userId=").append(userId).append(", username=").append(username).append(", mobile=").append(mobile).append(", email=").append(email).append(", nickName=").append(nickName).append(", sex=").append(sex).append(", birthday=").append(birthday).append(", height=").append(height).append(", weight=").append(weight).append(", avatar=").append(avatar).append(", provId=").append(provId).append(", cityId=").append(cityId).append(", district_id=").append(district_id).append(", userFlag=").append(userFlag).append(", signature=").append(signature).append(", regType=").append(regType).append(", crtTime=").append(crtTime).append(", chgTime=").append(chgTime).append(", sessionId=").append(sessionId).append("]").toString();
        } else
        {
            return (new StringBuilder()).append("LoginResponse [error=").append(error).append(", errorToken=").append(errorToken).append(", message=").append(message).append(", solution=").append(solution).append(", subErrors=").append(subErrors).append("]").toString();
        }
    }
}
