Shader "Tutorial/00_Basic" {
    Properties{
        _DiffuseColor("Diffuse Color", Color) = (1,1,1,0.5)
        _AmbientColor("Ambient Color", Color) = (1,1,1,0.5)
        _ConstantColor("Constant Color", Color) = (1,1,1,0.5)
        _SpecColor("Specular Color", Color) = (1,1,1,1)
        _Emission("Emmisive Color", Color) = (0,0,0,0)
        _Shininess("Shininess", Range(0.01, 1)) = 0.7
        _MainTex("Base (RGB)", 2D) = "white" { }
    }

        SubShader{
            Pass {
                Material {
                    Diffuse[_DiffuseColor]
                    Ambient[_AmbientColor]
                    Shininess[_Shininess]
                    Specular[_SpecColor]
                    Emission[_Emission]
                }
                Lighting On
                SeparateSpecular On
                SetTexture[_MainTex] {
                    constantColor[_ConstantColor]
                    Combine texture * primary, texture * constant
                    //Combine primary, constant
                }
            }
    }
}