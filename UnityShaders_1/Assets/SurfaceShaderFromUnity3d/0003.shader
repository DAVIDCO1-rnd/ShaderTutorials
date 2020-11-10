//from link https://docs.unity3d.com/560/Documentation/Manual/SL-SurfaceShaderExamples.html (added a 4 digits number after Exmple/)
Shader "Example/0003_Diffuse Bump" {
	Properties{
	  _MainTex("Texture", 2D) = "white" {}
	  _BumpMap("Bumpmap", 2D) = "bump" {}
	}
		SubShader{
		  Tags { "RenderType" = "Opaque" }
		  CGPROGRAM
		  #pragma surface surf Lambert
		  struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
		  };
		  sampler2D _MainTex;
		  sampler2D _BumpMap;
		  void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
			o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
		  }
		  ENDCG
	}
		Fallback "Diffuse"
}