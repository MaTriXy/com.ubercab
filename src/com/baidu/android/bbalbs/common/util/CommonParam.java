package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.text.TextUtils;

public class CommonParam
{
  private static final String a = CommonParam.class.getSimpleName();
  
  public static String a(Context paramContext)
  {
    String str2 = b(paramContext);
    String str1 = a.b(paramContext);
    paramContext = str1;
    if (TextUtils.isEmpty(str1)) {
      paramContext = "0";
    }
    paramContext = new StringBuffer(paramContext).reverse().toString();
    return str2 + "|" + paramContext;
  }
  
  private static String b(Context paramContext)
  {
    return a.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.bbalbs.common.util.CommonParam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */