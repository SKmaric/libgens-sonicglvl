//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   sampler2D g_GISampler;
//   float4 mrgGlobalLight_Diffuse;
//   float4 s_LightScaleParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   g_Diffuse              c16      1
//   mrgGlobalLight_Diffuse c36      1
//   s_LightScaleParam      c151     1
//   sampDif                s0       1
//   sampDLScatter          s9       1
//   g_GISampler            s10      1
//

    ps_3_0
    def c0, 1, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord5 v1.xy
    dcl_color_pp v2
    dcl_2d s0
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v2.w
    mov_sat_pp r0.w, c151.x
    texld_pp r1, v0.zwzw, s10
    mov_sat r1.w, r1.w
    lrp r2.x, r1.w, c0.x, r0.w
    mul_pp r2.xyz, r2.x, c36
    mad_pp r1.xyz, r1, r1, r2
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v2
    texld_pp r1, v1.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 14 instruction slots used (3 texture, 11 arithmetic)
