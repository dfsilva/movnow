// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.internal;

import de.greenrobot.dao.DaoLog;
import java.util.Arrays;

public final class LongHashMap
{
    static final class Entry
    {

        final long key;
        Entry next;
        Object value;

        Entry(long l, Object obj, Entry entry)
        {
            key = l;
            value = obj;
            next = entry;
        }
    }


    private int capacity;
    private int size;
    private Entry table[];
    private int threshold;

    public LongHashMap()
    {
        this(16);
    }

    public LongHashMap(int i)
    {
        capacity = i;
        threshold = (i * 4) / 3;
        table = new Entry[i];
    }

    public void clear()
    {
        size = 0;
        Arrays.fill(table, null);
    }

    public boolean containsKey(long l)
    {
        int i = (int)(l >>> 32);
        int j = (int)l;
        int k = capacity;
        for (Entry entry = table[((i ^ j) & 0x7fffffff) % k]; entry != null; entry = entry.next)
        {
            if (entry.key == l)
            {
                return true;
            }
        }

        return false;
    }

    public Object get(long l)
    {
        int i = (int)(l >>> 32);
        int j = (int)l;
        int k = capacity;
        for (Entry entry = table[((i ^ j) & 0x7fffffff) % k]; entry != null; entry = entry.next)
        {
            if (entry.key == l)
            {
                return entry.value;
            }
        }

        return null;
    }

    public void logStats()
    {
        int j = 0;
        Entry aentry[] = table;
        int k = aentry.length;
        for (int i = 0; i < k; i++)
        {
            for (Entry entry = aentry[i]; entry != null && entry.next != null; entry = entry.next)
            {
                j++;
            }

        }

        DaoLog.d((new StringBuilder()).append("load: ").append((float)size / (float)capacity).append(", size: ").append(size).append(", capa: ").append(capacity).append(", collisions: ").append(j).append(", collision ratio: ").append((float)j / (float)size).toString());
    }

    public Object put(long l, Object obj)
    {
        int i = (((int)(l >>> 32) ^ (int)l) & 0x7fffffff) % capacity;
        Object obj2 = table[i];
        for (Object obj1 = obj2; obj1 != null; obj1 = ((Entry) (obj1)).next)
        {
            if (((Entry) (obj1)).key == l)
            {
                obj2 = ((Entry) (obj1)).value;
                obj1.value = obj;
                return obj2;
            }
        }

        table[i] = new Entry(l, obj, ((Entry) (obj2)));
        size = size + 1;
        if (size > threshold)
        {
            setCapacity(capacity * 2);
        }
        return null;
    }

    public Object remove(long l)
    {
        int i = (((int)(l >>> 32) ^ (int)l) & 0x7fffffff) % capacity;
        Entry entry1 = null;
        Entry entry2;
        for (Entry entry = table[i]; entry != null; entry = entry2)
        {
            entry2 = entry.next;
            if (entry.key == l)
            {
                if (entry1 == null)
                {
                    table[i] = entry2;
                } else
                {
                    entry1.next = entry2;
                }
                size = size - 1;
                return entry.value;
            }
            entry1 = entry;
        }

        return null;
    }

    public void reserveRoom(int i)
    {
        setCapacity((i * 5) / 3);
    }

    public void setCapacity(int i)
    {
        Entry aentry[] = new Entry[i];
        int k = table.length;
        for (int j = 0; j < k; j++)
        {
            Entry entry1;
            for (Entry entry = table[j]; entry != null; entry = entry1)
            {
                long l1 = entry.key;
                int l = (((int)(l1 >>> 32) ^ (int)l1) & 0x7fffffff) % i;
                entry1 = entry.next;
                entry.next = aentry[l];
                aentry[l] = entry;
            }

        }

        table = aentry;
        capacity = i;
        threshold = (i * 4) / 3;
    }

    public int size()
    {
        return size;
    }
}
