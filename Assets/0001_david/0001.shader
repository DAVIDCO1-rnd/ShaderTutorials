//Using the tutorial in this link:
//https://docs.unity3d.com/Manual/ShaderTut1.html
Shader "Tutorial/0001" {
    Properties{
        _Color("Main Color", Color) = (1 , 0.0 , 0.0 , 1)
    }
        SubShader{
            Pass {
                Material {
                    Diffuse[_Color]
                }
                Lighting On
            }
    }
}
