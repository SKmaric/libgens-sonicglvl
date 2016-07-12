//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   sampler2D sampBlend;
//   sampler2D sampDLScatter;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   mrgGlobalLight_Diffuse   c36      1
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampBlend                s6       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3_pp v2.xyz
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s6
    dcl_2d s9
    nrm_pp r0.xyz, v2
    mad_pp r1.xyz, r0, c0.x, c0.x
    mov r2.xyz, c80
    mad r2.xyz, r2, r1.y, c79
    mul_pp r3.xyz, r0, r0
    dp3_sat_pp r0.x, r0, -c10
    mul r0.x, r0.x, c77.w
    mul_pp r0.xyz, r0.x, c36
    mul r2.xyz, r2, r3.y
    mov r4.xyz, c77
    mad r1.xyw, c78.xyzz, r1.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r2
    mad_pp r1.xyz, r3.z, r4, r1
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v1.zwzw, s6
    texld_pp r2, v0, s0
    texld_pp r3, v1, s1
    lrp_pp r4, r1.y, r2, r3
    mul_pp r0.xyz, r0, r4
    mul_pp r0.w, r4.w, c16.w
    mul_pp r0, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 29 instruction slots used (4 texture, 25 arithmetic)
