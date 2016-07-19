import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public final class cm
  extends LinearLayout
  implements View.OnLongClickListener
{
  private ck b;
  private TextView c;
  private ImageView d;
  private View e;
  private TextView f;
  private ImageView g;
  private int h = 2;
  
  public cm(TabLayout paramTabLayout, Context paramContext)
  {
    super(paramContext);
    if (TabLayout.a(paramTabLayout) != 0) {
      setBackgroundDrawable(jt.a().a(paramContext, TabLayout.a(paramTabLayout)));
    }
    ViewCompat.setPaddingRelative(this, TabLayout.b(paramTabLayout), TabLayout.c(paramTabLayout), TabLayout.d(paramTabLayout), TabLayout.e(paramTabLayout));
    setGravity(17);
    setOrientation(1);
    setClickable(true);
  }
  
  private static float a(Layout paramLayout, float paramFloat)
  {
    return paramLayout.getLineWidth(0) * (paramFloat / paramLayout.getPaint().getTextSize());
  }
  
  private void a(TextView paramTextView, ImageView paramImageView)
  {
    Drawable localDrawable;
    CharSequence localCharSequence1;
    label32:
    CharSequence localCharSequence2;
    label48:
    label73:
    int i;
    if (b != null)
    {
      localDrawable = b.b();
      if (b == null) {
        break label196;
      }
      localCharSequence1 = b.d();
      if (b == null) {
        break label202;
      }
      localCharSequence2 = b.f();
      if (paramImageView != null)
      {
        if (localDrawable == null) {
          break label208;
        }
        paramImageView.setImageDrawable(localDrawable);
        paramImageView.setVisibility(0);
        setVisibility(0);
        paramImageView.setContentDescription(localCharSequence2);
      }
      if (TextUtils.isEmpty(localCharSequence1)) {
        break label222;
      }
      i = 1;
      label89:
      if (paramTextView != null)
      {
        if (i == 0) {
          break label227;
        }
        paramTextView.setText(localCharSequence1);
        paramTextView.setVisibility(0);
        setVisibility(0);
        label113:
        paramTextView.setContentDescription(localCharSequence2);
      }
      if (paramImageView != null)
      {
        paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
        if ((i == 0) || (paramImageView.getVisibility() != 0)) {
          break label252;
        }
      }
    }
    label196:
    label202:
    label208:
    label222:
    label227:
    label252:
    for (int j = TabLayout.a(a, 8);; j = 0)
    {
      if (j != bottomMargin)
      {
        bottomMargin = j;
        paramImageView.requestLayout();
      }
      if ((i == 0) && (!TextUtils.isEmpty(localCharSequence2)))
      {
        setOnLongClickListener(this);
        return;
        localDrawable = null;
        break;
        localCharSequence1 = null;
        break label32;
        localCharSequence2 = null;
        break label48;
        paramImageView.setVisibility(8);
        paramImageView.setImageDrawable(null);
        break label73;
        i = 0;
        break label89;
        paramTextView.setVisibility(8);
        paramTextView.setText(null);
        break label113;
      }
      setOnLongClickListener(null);
      setLongClickable(false);
      return;
    }
  }
  
  private void a(ck paramck)
  {
    if (paramck != b)
    {
      b = paramck;
      a();
    }
  }
  
  private void b()
  {
    a(null);
    setSelected(false);
  }
  
  final void a()
  {
    Object localObject = b;
    if (localObject != null)
    {
      localObject = ((ck)localObject).a();
      if (localObject == null) {
        break label285;
      }
      ViewParent localViewParent = ((View)localObject).getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null) {
          ((ViewGroup)localViewParent).removeView((View)localObject);
        }
        addView((View)localObject);
      }
      e = ((View)localObject);
      if (c != null) {
        c.setVisibility(8);
      }
      if (d != null)
      {
        d.setVisibility(8);
        d.setImageDrawable(null);
      }
      f = ((TextView)((View)localObject).findViewById(16908308));
      if (f != null) {
        h = TextViewCompat.getMaxLines(f);
      }
      g = ((ImageView)((View)localObject).findViewById(16908294));
      label134:
      if (e != null) {
        break label318;
      }
      if (d == null)
      {
        localObject = (ImageView)LayoutInflater.from(getContext()).inflate(al.design_layout_tab_icon, this, false);
        addView((View)localObject, 0);
        d = ((ImageView)localObject);
      }
      if (c == null)
      {
        localObject = (TextView)LayoutInflater.from(getContext()).inflate(al.design_layout_tab_text, this, false);
        addView((View)localObject);
        c = ((TextView)localObject);
        h = TextViewCompat.getMaxLines(c);
      }
      c.setTextAppearance(getContext(), TabLayout.k(a));
      if (TabLayout.l(a) != null) {
        c.setTextColor(TabLayout.l(a));
      }
      a(c, d);
    }
    label285:
    label318:
    while ((f == null) && (g == null))
    {
      return;
      localObject = null;
      break;
      if (e != null)
      {
        removeView(e);
        e = null;
      }
      f = null;
      g = null;
      break label134;
    }
    a(f, g);
  }
  
  @TargetApi(14)
  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ek.class.getName());
  }
  
  @TargetApi(14)
  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(ek.class.getName());
  }
  
  public final boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, b.f(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public final void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 1;
    int j = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = TabLayout.f(a);
    int i = paramInt1;
    if (n > 0) {
      if (m != 0)
      {
        i = paramInt1;
        if (j <= n) {}
      }
      else
      {
        i = View.MeasureSpec.makeMeasureSpec(TabLayout.g(a), Integer.MIN_VALUE);
      }
    }
    super.onMeasure(i, paramInt2);
    float f2;
    float f1;
    if (c != null)
    {
      getResources();
      f2 = TabLayout.h(a);
      j = h;
      if ((d == null) || (d.getVisibility() != 0)) {
        break label266;
      }
      paramInt1 = 1;
      f1 = f2;
    }
    for (;;)
    {
      f2 = c.getTextSize();
      m = c.getLineCount();
      j = TextViewCompat.getMaxLines(c);
      if ((f1 != f2) || ((j >= 0) && (paramInt1 != j)))
      {
        j = k;
        if (TabLayout.j(a) == 1)
        {
          j = k;
          if (f1 > f2)
          {
            j = k;
            if (m == 1)
            {
              Layout localLayout = c.getLayout();
              if (localLayout != null)
              {
                j = k;
                if (a(localLayout, f1) <= localLayout.getWidth()) {}
              }
              else
              {
                j = 0;
              }
            }
          }
        }
        if (j != 0)
        {
          c.setTextSize(0, f1);
          c.setMaxLines(paramInt1);
          super.onMeasure(i, paramInt2);
        }
      }
      return;
      label266:
      paramInt1 = j;
      f1 = f2;
      if (c != null)
      {
        paramInt1 = j;
        f1 = f2;
        if (c.getLineCount() > 1)
        {
          f1 = TabLayout.i(a);
          paramInt1 = j;
        }
      }
    }
  }
  
  public final boolean performClick()
  {
    boolean bool = super.performClick();
    if (b != null)
    {
      b.e();
      bool = true;
    }
    return bool;
  }
  
  public final void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
      {
        sendAccessibilityEvent(4);
        if (c != null) {
          c.setSelected(paramBoolean);
        }
        if (d != null) {
          d.setSelected(paramBoolean);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */