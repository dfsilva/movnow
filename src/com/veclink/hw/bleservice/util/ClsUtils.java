// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import android.bluetooth.BluetoothDevice;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ClsUtils
{

    public ClsUtils()
    {
    }

    public static boolean cancelBondProcess(Class class1, BluetoothDevice bluetoothdevice)
        throws Exception
    {
        return ((Boolean)class1.getMethod("cancelBondProcess", new Class[0]).invoke(bluetoothdevice, new Object[0])).booleanValue();
    }

    public static boolean cancelPairingUserInput(Class class1, BluetoothDevice bluetoothdevice)
        throws Exception
    {
        return ((Boolean)class1.getMethod("cancelPairingUserInput", new Class[0]).invoke(bluetoothdevice, new Object[0])).booleanValue();
    }

    public static boolean createBond(Class class1, BluetoothDevice bluetoothdevice)
        throws Exception
    {
        return ((Boolean)class1.getMethod("createBond", new Class[0]).invoke(bluetoothdevice, new Object[0])).booleanValue();
    }

    public static void printAllInform(Class class1)
    {
        Method amethod[] = class1.getMethods();
        int i = 0;
_L2:
        if (i >= amethod.length)
        {
            break; /* Loop/switch isn't completed */
        }
        Log.e("method name", (new StringBuilder()).append(amethod[i].getName()).append(";and the i is:").append(i).toString());
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        class1 = class1.getFields();
        i = 0;
_L4:
        if (i >= class1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        Log.e("Field name", class1[i].getName());
        i++;
        if (true) goto _L4; else goto _L3
        class1;
        class1.printStackTrace();
_L3:
        return;
        class1;
        class1.printStackTrace();
        return;
        class1;
        class1.printStackTrace();
        return;
    }

    public static boolean removeBond(Class class1, BluetoothDevice bluetoothdevice)
        throws Exception
    {
        return ((Boolean)class1.getMethod("removeBond", new Class[0]).invoke(bluetoothdevice, new Object[0])).booleanValue();
    }

    public static boolean setPin(Class class1, BluetoothDevice bluetoothdevice, String s)
        throws Exception
    {
        try
        {
            class1 = (Boolean)class1.getDeclaredMethod("setPin", new Class[] {
                [B
            }).invoke(bluetoothdevice, new Object[] {
                s.getBytes()
            });
            Log.e("returnValue", (new StringBuilder()).append("").append(class1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return true;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return true;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            class1.printStackTrace();
            return true;
        }
        return true;
    }
}
