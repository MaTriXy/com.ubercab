package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import gl;

final class ListPopupWindow$2
  implements AdapterView.OnItemSelectedListener
{
  ListPopupWindow$2(ListPopupWindow paramListPopupWindow) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      paramAdapterView = ListPopupWindow.a(a);
      if (paramAdapterView != null) {
        gl.a(paramAdapterView, false);
      }
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ListPopupWindow.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */