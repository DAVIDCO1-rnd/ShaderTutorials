//from link https://docs.unity3d.com/560/Documentation/Manual/SL-SurfaceShaderExamples.html (added a 4 digits number after Exmple/)
Shader "Example/0001_Diffuse Simple" {
	SubShader{
	  Tags { "RenderType" = "Opaque" }
	  CGPROGRAM
	  #pragma surface surf Lambert
	  struct Input {
		  float4 color : COLOR;
	  };
	  void surf(Input IN, inout SurfaceOutput o) {
		  o.Albedo = 1;
	  }
	  ENDCG
	}
		Fallback "Diffuse"
}