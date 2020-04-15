Shader "Tutorial/0013_slices" {
    Properties{
      _MainTex("Texture", 2D) = "white" {}
      _BumpMap("Bumpmap", 2D) = "bump" {}
      _Slice("Slice Amount", Range(0,1)) = 0.5
    }
        SubShader{
          Tags { "RenderType" = "Opaque" }
          Cull Off
          CGPROGRAM
          #pragma surface surf Lambert
          struct Input {
              float2 uv_MainTex;
              float2 uv_BumpMap;
              float3 worldPos;
          };
          sampler2D _MainTex;
          sampler2D _BumpMap;
          float _Slice;
          void surf(Input IN, inout SurfaceOutput o) {              
              clip(frac((IN.worldPos.x * 1) * 5) - _Slice);
              o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
              o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
          }
          ENDCG
    }
        Fallback "Diffuse"
}