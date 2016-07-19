package com.ubercab.rider.realtime.model;

import com.ubercab.rider.realtime.validator.RealtimeValidatorFactory;
import lzo;

@lzo(a=RealtimeValidatorFactory.class)
public abstract interface FeedbackTag
{
  public abstract String getDescription();
  
  public abstract String getUuid();
}

/* Location:
 * Qualified Name:     com.ubercab.rider.realtime.model.FeedbackTag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */