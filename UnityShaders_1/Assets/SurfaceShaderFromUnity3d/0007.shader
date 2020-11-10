//from link https://docs.unity3d.com/560/Documentation/Manual/SL-SurfaceShaderExamples.html (added a 4 digits number after Exmple/)
Shader "Example/0007_WorldRefl" {
	Properties{
	  _MainTex("Texture", 2D) = "white" {}
	  _Cube("Cubemap", CUBE) = "" {}
	}
		SubShader{
		  Tags { "RenderType" = "Opaque" }
		  CGPROGRAM
		  #pragma surface surf Lambert
		  struct Input {
			  float2 uv_MainTex;
			  float3 worldRefl;
		  };
		  sampler2D _MainTex;
		  samplerCUBE _Cube;
		  void surf(Input IN, inout SurfaceOutput o) {
			  //o.Albedo = float3(0, 0, 1);
			  //o.Emission = float3(1, 0, 0);
			  //o.Normal = float3(0, 0, 1);
			  o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb * 0.5;
			  o.Emission = texCUBE(_Cube, IN.worldRefl).rgb;
		  }
		  ENDCG
	}
		Fallback "Diffuse"
}