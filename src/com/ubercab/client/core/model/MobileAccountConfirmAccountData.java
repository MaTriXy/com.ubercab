package com.ubercab.client.core.model;

import com.ubercab.client.core.validator.RiderValidatorFactory;
import com.ubercab.shape.Shape;
import lzo;

@Shape
@lzo(a=RiderValidatorFactory.class)
public abstract class MobileAccountConfirmAccountData
{
  public abstract boolean getIsAccountOwner();
  
  abstract MobileAccountConfirmAccountData setIsAccountOwner(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.ubercab.client.core.model.MobileAccountConfirmAccountData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */