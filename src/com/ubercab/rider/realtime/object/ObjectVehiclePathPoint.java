package com.ubercab.rider.realtime.object;

import com.ubercab.shape.Shape;
import naq;

@Shape
abstract class ObjectVehiclePathPoint
  implements naq
{
  public static ObjectVehiclePathPoint create()
  {
    return new Shape_ObjectVehiclePathPoint();
  }
}

/* Location:
 * Qualified Name:     com.ubercab.rider.realtime.object.ObjectVehiclePathPoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */