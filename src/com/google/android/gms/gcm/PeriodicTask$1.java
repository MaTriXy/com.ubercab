package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PeriodicTask$1
  implements Parcelable.Creator<PeriodicTask>
{
  private static PeriodicTask a(Parcel paramParcel)
  {
    return new PeriodicTask(paramParcel, (byte)0);
  }
  
  private static PeriodicTask[] a(int paramInt)
  {
    return new PeriodicTask[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.PeriodicTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */