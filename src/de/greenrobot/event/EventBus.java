// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.event;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package de.greenrobot.event:
//            ThreadMode, HandlerPoster, BackgroundPoster, AsyncPoster, 
//            SubscriberMethodFinder, NoSubscriberEvent, SubscriberExceptionEvent, Subscription, 
//            SubscriberMethod, EventBusException, PendingPost

public class EventBus
{
    static final class BooleanWrapper
    {

        boolean value;

        BooleanWrapper()
        {
        }
    }

    static interface PostCallback
    {

        public abstract void onPostCompleted(List list);
    }


    private static int $SWITCH_TABLE$de$greenrobot$event$ThreadMode[];
    public static String TAG = "Event";
    private static volatile EventBus defaultInstance;
    private static final Map eventTypesCache = new HashMap();
    static ExecutorService executorService = Executors.newCachedThreadPool();
    private final AsyncPoster asyncPoster = new AsyncPoster(this);
    private final BackgroundPoster backgroundPoster = new BackgroundPoster(this);
    private final ThreadLocal currentThreadEventQueue = new ThreadLocal() {

        final EventBus this$0;

        protected volatile Object initialValue()
        {
            return initialValue();
        }

        protected List initialValue()
        {
            return new ArrayList();
        }

            
            {
                this$0 = EventBus.this;
                super();
            }
    };
    private final ThreadLocal currentThreadIsPosting = new ThreadLocal() {

        final EventBus this$0;

        protected BooleanWrapper initialValue()
        {
            return new BooleanWrapper();
        }

        protected volatile Object initialValue()
        {
            return initialValue();
        }

            
            {
                this$0 = EventBus.this;
                super();
            }
    };
    private String defaultMethodName;
    private boolean logSubscriberExceptions;
    private final HandlerPoster mainThreadPoster = new HandlerPoster(this, Looper.getMainLooper(), 10);
    private final Map stickyEvents = new ConcurrentHashMap();
    private boolean subscribed;
    private final SubscriberMethodFinder subscriberMethodFinder = new SubscriberMethodFinder();
    private final Map subscriptionsByEventType = new HashMap();
    private final Map typesBySubscriber = new HashMap();

    static int[] $SWITCH_TABLE$de$greenrobot$event$ThreadMode()
    {
        int ai[] = $SWITCH_TABLE$de$greenrobot$event$ThreadMode;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[ThreadMode.values().length];
        try
        {
            ai[ThreadMode.Async.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[ThreadMode.BackgroundThread.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[ThreadMode.MainThread.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[ThreadMode.PostThread.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$de$greenrobot$event$ThreadMode = ai;
        return ai;
    }

    public EventBus()
    {
        defaultMethodName = "onEvent";
        logSubscriberExceptions = true;
    }

    static void addInterfaces(List list, Class aclass[])
    {
        int j = aclass.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            Class class1 = aclass[i];
            if (!list.contains(class1))
            {
                list.add(class1);
                addInterfaces(list, class1.getInterfaces());
            }
            i++;
        } while (true);
    }

    public static void clearCaches()
    {
        SubscriberMethodFinder.clearCaches();
        eventTypesCache.clear();
    }

    public static void clearSkipMethodNameVerifications()
    {
        SubscriberMethodFinder.clearSkipMethodNameVerifications();
    }

    private List findEventTypes(Class class1)
    {
        Map map = eventTypesCache;
        map;
        JVM INSTR monitorenter ;
        Object obj1 = (List)eventTypesCache.get(class1);
        Object obj = obj1;
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        obj1 = new ArrayList();
        obj = class1;
_L6:
        if (obj != null) goto _L4; else goto _L3
_L3:
        eventTypesCache.put(class1, obj1);
        obj = obj1;
_L2:
        map;
        JVM INSTR monitorexit ;
        return ((List) (obj));
_L4:
        ((List) (obj1)).add(obj);
        addInterfaces(((List) (obj1)), ((Class) (obj)).getInterfaces());
        obj = ((Class) (obj)).getSuperclass();
        if (true) goto _L6; else goto _L5
_L5:
        class1;
        map;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public static EventBus getDefault()
    {
        if (defaultInstance != null) goto _L2; else goto _L1
_L1:
        de/greenrobot/event/EventBus;
        JVM INSTR monitorenter ;
        if (defaultInstance == null)
        {
            defaultInstance = new EventBus();
        }
        de/greenrobot/event/EventBus;
        JVM INSTR monitorexit ;
_L2:
        return defaultInstance;
        Exception exception;
        exception;
        de/greenrobot/event/EventBus;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void postSingleEvent(Object obj, boolean flag)
        throws Error
    {
        Class class1;
        List list;
        int i;
        boolean flag1;
        int j;
        class1 = obj.getClass();
        list = findEventTypes(class1);
        flag1 = false;
        j = list.size();
        i = 0;
_L2:
        if (i >= j)
        {
            if (!flag1)
            {
                Log.d(TAG, (new StringBuilder("No subscripers registered for event ")).append(class1).toString());
                if (class1 != de/greenrobot/event/NoSubscriberEvent && class1 != de/greenrobot/event/SubscriberExceptionEvent)
                {
                    post(new NoSubscriberEvent(this, obj));
                }
            }
            return;
        }
        Object obj1 = (Class)list.get(i);
        this;
        JVM INSTR monitorenter ;
        obj1 = (CopyOnWriteArrayList)subscriptionsByEventType.get(obj1);
        this;
        JVM INSTR monitorexit ;
        if (obj1 != null)
        {
            for (obj1 = ((CopyOnWriteArrayList) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); postToSubscription((Subscription)((Iterator) (obj1)).next(), obj, flag))
            {
                break MISSING_BLOCK_LABEL_161;
            }

            flag1 = true;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
    }

    private void postToSubscription(Subscription subscription, Object obj, boolean flag)
    {
        switch ($SWITCH_TABLE$de$greenrobot$event$ThreadMode()[subscription.subscriberMethod.threadMode.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder("Unknown thread mode: ")).append(subscription.subscriberMethod.threadMode).toString());

        case 1: // '\001'
            invokeSubscriber(subscription, obj);
            return;

        case 2: // '\002'
            if (flag)
            {
                invokeSubscriber(subscription, obj);
                return;
            } else
            {
                mainThreadPoster.enqueue(subscription, obj);
                return;
            }

        case 3: // '\003'
            if (flag)
            {
                backgroundPoster.enqueue(subscription, obj);
                return;
            } else
            {
                invokeSubscriber(subscription, obj);
                return;
            }

        case 4: // '\004'
            asyncPoster.enqueue(subscription, obj);
            return;
        }
    }

    private void register(Object obj, String s, boolean flag)
    {
        s = subscriberMethodFinder.findSubscriberMethods(obj.getClass(), s).iterator();
        do
        {
            if (!s.hasNext())
            {
                return;
            }
            subscribe(obj, (SubscriberMethod)s.next(), flag);
        } while (true);
    }

    private transient void register(Object obj, String s, boolean flag, Class class1, Class aclass[])
    {
        this;
        JVM INSTR monitorenter ;
        Class class2 = obj.getClass();
        s = subscriberMethodFinder.findSubscriberMethods(class2, s).iterator();
_L1:
        boolean flag1 = s.hasNext();
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        SubscriberMethod subscribermethod;
        subscribermethod = (SubscriberMethod)s.next();
        if (class1 != subscribermethod.eventType)
        {
            continue; /* Loop/switch isn't completed */
        }
        subscribe(obj, subscribermethod, flag);
          goto _L1
        obj;
        throw obj;
        if (aclass == null) goto _L1; else goto _L2
_L2:
        int j = aclass.length;
        int i = 0;
_L5:
        if (i >= j) goto _L1; else goto _L3
_L3:
label0:
        {
            if (aclass[i] != subscribermethod.eventType)
            {
                break label0;
            }
            subscribe(obj, subscribermethod, flag);
        }
        if (true) goto _L1; else goto _L4
_L4:
        i++;
          goto _L5
    }

    public static void skipMethodNameVerificationFor(Class class1)
    {
        SubscriberMethodFinder.skipMethodNameVerificationFor(class1);
    }

    private void subscribe(Object obj, SubscriberMethod subscribermethod, boolean flag)
    {
        CopyOnWriteArrayList copyonwritearraylist;
        Subscription subscription;
        Class class1;
        boolean flag1;
        flag1 = true;
        subscribed = true;
        class1 = subscribermethod.eventType;
        copyonwritearraylist = (CopyOnWriteArrayList)subscriptionsByEventType.get(class1);
        subscription = new Subscription(obj, subscribermethod);
        if (copyonwritearraylist != null) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = new CopyOnWriteArrayList();
        subscriptionsByEventType.put(class1, obj1);
_L4:
        subscribermethod.method.setAccessible(true);
        ((CopyOnWriteArrayList) (obj1)).add(subscription);
        obj1 = (List)typesBySubscriber.get(obj);
        subscribermethod = ((SubscriberMethod) (obj1));
        if (obj1 == null)
        {
            subscribermethod = new ArrayList();
            typesBySubscriber.put(obj, subscribermethod);
        }
        subscribermethod.add(class1);
        if (flag)
        {
            synchronized (stickyEvents)
            {
                subscribermethod = ((SubscriberMethod) (stickyEvents.get(class1)));
            }
            if (subscribermethod != null)
            {
                Iterator iterator;
                if (Looper.getMainLooper() == Looper.myLooper())
                {
                    flag = flag1;
                } else
                {
                    flag = false;
                }
                postToSubscription(subscription, subscribermethod, flag);
            }
        }
        return;
_L2:
        iterator = copyonwritearraylist.iterator();
_L6:
        obj1 = copyonwritearraylist;
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if (!((Subscription)iterator.next()).equals(subscription)) goto _L6; else goto _L5
_L5:
        throw new EventBusException((new StringBuilder("Subscriber ")).append(obj.getClass()).append(" already registered to event ").append(class1).toString());
        subscribermethod;
        obj;
        JVM INSTR monitorexit ;
        throw subscribermethod;
    }

    private void unubscribeByEventType(Object obj, Class class1)
    {
        class1 = (List)subscriptionsByEventType.get(class1);
        if (class1 == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = class1.size();
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        int l = i;
        int k = j;
        if (((Subscription)class1.get(i)).subscriber == obj)
        {
            class1.remove(i);
            l = i - 1;
            k = j - 1;
        }
        i = l + 1;
        j = k;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void configureLogSubscriberExceptions(boolean flag)
    {
        if (subscribed)
        {
            throw new EventBusException("This method must be called before any registration");
        } else
        {
            logSubscriberExceptions = flag;
            return;
        }
    }

    public Object getStickyEvent(Class class1)
    {
        synchronized (stickyEvents)
        {
            class1 = ((Class) (stickyEvents.get(class1)));
        }
        return class1;
        class1;
        map;
        JVM INSTR monitorexit ;
        throw class1;
    }

    void invokeSubscriber(PendingPost pendingpost)
    {
        Object obj = pendingpost.event;
        Subscription subscription = pendingpost.subscription;
        PendingPost.releasePendingPost(pendingpost);
        invokeSubscriber(subscription, obj);
    }

    void invokeSubscriber(Subscription subscription, Object obj)
        throws Error
    {
        Throwable throwable;
        try
        {
            subscription.subscriberMethod.method.invoke(subscription.subscriber, new Object[] {
                obj
            });
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throwable = invocationtargetexception.getCause();
        }
        // Misplaced declaration of an exception variable
        catch (Subscription subscription)
        {
            throw new IllegalStateException("Unexpected exception", subscription);
        }
        if (obj instanceof SubscriberExceptionEvent)
        {
            Log.e(TAG, (new StringBuilder("SubscriberExceptionEvent subscriber ")).append(subscription.subscriber.getClass()).append(" threw an exception").toString(), throwable);
            subscription = (SubscriberExceptionEvent)obj;
            Log.e(TAG, (new StringBuilder("Initial event ")).append(((SubscriberExceptionEvent) (subscription)).causingEvent).append(" caused exception in ").append(((SubscriberExceptionEvent) (subscription)).causingSubscriber).toString(), ((SubscriberExceptionEvent) (subscription)).throwable);
            return;
        }
        if (logSubscriberExceptions)
        {
            Log.e(TAG, (new StringBuilder("Could not dispatch event: ")).append(obj.getClass()).append(" to subscribing class ").append(subscription.subscriber.getClass()).toString(), throwable);
        }
        post(new SubscriberExceptionEvent(this, throwable, obj, subscription.subscriber));
    }

    public void post(Object obj)
    {
        List list;
        boolean flag;
        list = (List)currentThreadEventQueue.get();
        list.add(obj);
        obj = (BooleanWrapper)currentThreadIsPosting.get();
        if (((BooleanWrapper) (obj)).value)
        {
            return;
        }
        boolean flag1;
        if (Looper.getMainLooper() == Looper.myLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj.value = true;
_L1:
        flag1 = list.isEmpty();
        if (flag1)
        {
            obj.value = false;
            return;
        }
        postSingleEvent(list.remove(0), flag);
          goto _L1
        Exception exception;
        exception;
        obj.value = false;
        throw exception;
    }

    public void postSticky(Object obj)
    {
        synchronized (stickyEvents)
        {
            stickyEvents.put(obj.getClass(), obj);
        }
        post(obj);
        return;
        obj;
        map;
        JVM INSTR monitorexit ;
        throw obj;
    }

    public void register(Object obj)
    {
        register(obj, defaultMethodName, false);
    }

    public transient void register(Object obj, Class class1, Class aclass[])
    {
        register(obj, defaultMethodName, false, class1, aclass);
    }

    public void register(Object obj, String s)
    {
        register(obj, s, false);
    }

    public transient void register(Object obj, String s, Class class1, Class aclass[])
    {
        this;
        JVM INSTR monitorenter ;
        register(obj, s, false, class1, aclass);
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        throw obj;
    }

    public void registerSticky(Object obj)
    {
        register(obj, defaultMethodName, true);
    }

    public transient void registerSticky(Object obj, Class class1, Class aclass[])
    {
        register(obj, defaultMethodName, true, class1, aclass);
    }

    public void registerSticky(Object obj, String s)
    {
        register(obj, s, true);
    }

    public transient void registerSticky(Object obj, String s, Class class1, Class aclass[])
    {
        this;
        JVM INSTR monitorenter ;
        register(obj, s, true, class1, aclass);
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        throw obj;
    }

    public Object removeStickyEvent(Class class1)
    {
        synchronized (stickyEvents)
        {
            class1 = ((Class) (stickyEvents.remove(class1)));
        }
        return class1;
        class1;
        map;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public boolean removeStickyEvent(Object obj)
    {
        Map map = stickyEvents;
        map;
        JVM INSTR monitorenter ;
        Class class1 = obj.getClass();
        if (!obj.equals(stickyEvents.get(class1)))
        {
            break MISSING_BLOCK_LABEL_44;
        }
        stickyEvents.remove(class1);
        return true;
        map;
        JVM INSTR monitorexit ;
        return false;
        obj;
        map;
        JVM INSTR monitorexit ;
        throw obj;
    }

    public void unregister(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = (List)typesBySubscriber.get(obj);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        obj1 = ((List) (obj1)).iterator();
_L3:
        if (((Iterator) (obj1)).hasNext()) goto _L2; else goto _L1
_L1:
        typesBySubscriber.remove(obj);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        unubscribeByEventType(obj, (Class)((Iterator) (obj1)).next());
          goto _L3
        obj;
        throw obj;
        Log.w(TAG, (new StringBuilder("Subscriber to unregister was not registered before: ")).append(obj.getClass()).toString());
          goto _L4
    }

    public transient void unregister(Object obj, Class aclass[])
    {
        this;
        JVM INSTR monitorenter ;
        if (aclass.length == 0)
        {
            throw new IllegalArgumentException("Provide at least one event class");
        }
        break MISSING_BLOCK_LABEL_23;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        List list = (List)typesBySubscriber.get(obj);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        int j = aclass.length;
        int i = 0;
_L3:
        if (i < j) goto _L2; else goto _L1
_L1:
        if (list.isEmpty())
        {
            typesBySubscriber.remove(obj);
        }
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Class class1 = aclass[i];
        unubscribeByEventType(obj, class1);
        list.remove(class1);
        i++;
          goto _L3
        Log.w(TAG, (new StringBuilder("Subscriber to unregister was not registered before: ")).append(obj.getClass()).toString());
          goto _L4
    }

}
