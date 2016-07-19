import android.os.Build;
import com.paypal.android.sdk.bY;
import com.paypal.android.sdk.ce;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class bwp
  extends bwq
{
  public bY a;
  public boolean b;
  public String c;
  public String d;
  public String e;
  public long f;
  private String j;
  private final boolean k;
  private final String l;
  private String m;
  private String n;
  
  public bwp(bus parambus, bva parambva, String paramString1, String paramString2, bY parambY, String paramString3, String paramString4, boolean paramBoolean1, String paramString5, boolean paramBoolean2, String paramString6)
  {
    this(parambus, parambva, paramString1, paramString2, parambY, paramBoolean1, paramString5, paramBoolean2, paramString6);
    m = paramString3;
    n = paramString4;
  }
  
  public bwp(bus parambus, bva parambva, String paramString1, String paramString2, bY parambY, boolean paramBoolean1, String paramString3, boolean paramBoolean2, String paramString4)
  {
    super(bux.d, parambus, parambva, c(paramString1, paramString2));
    a = parambY;
    b = paramBoolean1;
    j = paramString3;
    k = paramBoolean2;
    l = paramString4;
  }
  
  public final String b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("response_type", j);
    if ((j != null) && (j.equals("token")))
    {
      localHashMap.put("scope_consent_context", "access_token");
      if (!bwy.c(l)) {
        localHashMap.put("scope", l);
      }
    }
    localHashMap.put("risk_data", bwy.a(bre.a().c().toString()));
    if (m != null)
    {
      localHashMap.put("grant_type", "urn:paypal:params:oauth2:grant_type:otp");
      localHashMap.put("nonce", n);
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.accumulate("token_identifier", "otp");
      localJSONObject.accumulate("token_value", m);
      localHashMap.put("2fa_token_claims", a(localJSONObject));
    }
    for (;;)
    {
      localHashMap.put("remember_me", "true");
      localHashMap.put("device_name", bwy.a(Build.DEVICE));
      localHashMap.put("redirect_uri", bwy.a("urn:ietf:wg:oauth:2.0:oob"));
      return bwy.a(localHashMap);
      if (a.a())
      {
        localHashMap.put("grant_type", "password");
        localHashMap.put("email", bwy.a(a.b()));
        localHashMap.put("password", bwy.a(a.c()));
      }
      else
      {
        localHashMap.put("grant_type", "password");
        a.d().c();
        localHashMap.put("phone", bwy.a("+" + a.d().c() + " " + a.d().a()));
        localHashMap.put("pin", a.e());
      }
    }
  }
  
  public final void c()
  {
    JSONObject localJSONObject = n();
    try
    {
      localJSONObject.getString("scope");
      e = localJSONObject.getString("scope");
      if (k)
      {
        c = localJSONObject.getString("code");
        g = localJSONObject.getString("nonce");
        return;
      }
      d = localJSONObject.getString("access_token");
      f = localJSONObject.getLong("expires_in");
      return;
    }
    catch (JSONException localJSONException)
    {
      b(localJSONObject);
    }
  }
  
  public final void d()
  {
    b(n());
  }
  
  public final String e()
  {
    return "{ \"access_token\": \"mock_access_token\", \"code\": \"mock_code_EJhi9jOPswug9TDOv93qg4Y28xIlqPDpAoqd7biDLpeGCPvORHjP1Fh4CbFPgKMGCHejdDwe9w1uDWnjPCp1lkaFBjVmjvjpFtnr6z1YeBbmfZYqa9faQT_71dmgZhMIFVkbi4yO7hk0LBHXt_wtdsw\", \"scope\": \"https://api.paypal.com/v1/payments/.*\", \"nonce\": \"mock_nonce\", \"token_type\": \"Bearer\",\"expires_in\":28800,\"visitor_id\":\"zVxjDBTRRNfYXdOb19-lcTblxm-6bzXGvSlP76ZiHOudKaAvoxrW8Cg5pA6EjIPpiz4zlw\" }";
  }
  
  public final boolean u()
  {
    return m != null;
  }
}

/* Location:
 * Qualified Name:     bwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */