// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.async;


// Referenced classes of package de.greenrobot.dao.async:
//            AsyncOperation

public static final class  extends Enum
{

    private static final Refresh $VALUES[];
    public static final Refresh Count;
    public static final Refresh Delete;
    public static final Refresh DeleteAll;
    public static final Refresh DeleteByKey;
    public static final Refresh DeleteInTxArray;
    public static final Refresh DeleteInTxIterable;
    public static final Refresh Insert;
    public static final Refresh InsertInTxArray;
    public static final Refresh InsertInTxIterable;
    public static final Refresh InsertOrReplace;
    public static final Refresh InsertOrReplaceInTxArray;
    public static final Refresh InsertOrReplaceInTxIterable;
    public static final Refresh Load;
    public static final Refresh LoadAll;
    public static final Refresh QueryList;
    public static final Refresh QueryUnique;
    public static final Refresh Refresh;
    public static final Refresh TransactionCallable;
    public static final Refresh TransactionRunnable;
    public static final Refresh Update;
    public static final Refresh UpdateInTxArray;
    public static final Refresh UpdateInTxIterable;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(de/greenrobot/dao/async/AsyncOperation$OperationType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        Insert = new <init>("Insert", 0);
        InsertInTxIterable = new <init>("InsertInTxIterable", 1);
        InsertInTxArray = new <init>("InsertInTxArray", 2);
        InsertOrReplace = new <init>("InsertOrReplace", 3);
        InsertOrReplaceInTxIterable = new <init>("InsertOrReplaceInTxIterable", 4);
        InsertOrReplaceInTxArray = new <init>("InsertOrReplaceInTxArray", 5);
        Update = new <init>("Update", 6);
        UpdateInTxIterable = new <init>("UpdateInTxIterable", 7);
        UpdateInTxArray = new <init>("UpdateInTxArray", 8);
        Delete = new <init>("Delete", 9);
        DeleteInTxIterable = new <init>("DeleteInTxIterable", 10);
        DeleteInTxArray = new <init>("DeleteInTxArray", 11);
        DeleteByKey = new <init>("DeleteByKey", 12);
        DeleteAll = new <init>("DeleteAll", 13);
        TransactionRunnable = new <init>("TransactionRunnable", 14);
        TransactionCallable = new <init>("TransactionCallable", 15);
        QueryList = new <init>("QueryList", 16);
        QueryUnique = new <init>("QueryUnique", 17);
        Load = new <init>("Load", 18);
        LoadAll = new <init>("LoadAll", 19);
        Count = new <init>("Count", 20);
        Refresh = new <init>("Refresh", 21);
        $VALUES = (new .VALUES[] {
            Insert, InsertInTxIterable, InsertInTxArray, InsertOrReplace, InsertOrReplaceInTxIterable, InsertOrReplaceInTxArray, Update, UpdateInTxIterable, UpdateInTxArray, Delete, 
            DeleteInTxIterable, DeleteInTxArray, DeleteByKey, DeleteAll, TransactionRunnable, TransactionCallable, QueryList, QueryUnique, Load, LoadAll, 
            Count, Refresh
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
