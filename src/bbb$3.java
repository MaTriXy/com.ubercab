import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.EventParcel;

final class bbb$3
  implements Runnable
{
  bbb$3(bbb parambbb, String paramString, EventParcel paramEventParcel) {}
  
  public final void run()
  {
    bbz localbbz = bbb.c(c);
    if (localbbz == null)
    {
      c.s().b().a("Discarding data. Failed to send event to service");
      return;
    }
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(a))
        {
          localbbz.a(b, c.i().a(c.s().A()));
          bbb.d(c);
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        c.s().b().a("Failed to send event to AppMeasurementService", localRemoteException);
        return;
      }
      localRemoteException.a(b, a, c.s().A());
    }
  }
}

/* Location:
 * Qualified Name:     bbb.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */