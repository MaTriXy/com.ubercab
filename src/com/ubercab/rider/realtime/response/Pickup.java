package com.ubercab.rider.realtime.response;

import com.ubercab.rider.realtime.model.ClientStatus;
import com.ubercab.rider.realtime.model.Trip;
import com.ubercab.rider.realtime.validator.RealtimeValidatorFactory;
import com.ubercab.shape.Shape;
import lzo;

@Shape
@lzo(a=RealtimeValidatorFactory.class)
public abstract class Pickup
{
  public abstract ClientStatus getClientStatus();
  
  public abstract Trip getTrip();
  
  public abstract Pickup setClientStatus(ClientStatus paramClientStatus);
  
  public abstract Pickup setTrip(Trip paramTrip);
}

/* Location:
 * Qualified Name:     com.ubercab.rider.realtime.response.Pickup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */