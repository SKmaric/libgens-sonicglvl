//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_EmissionParam          c150     1
//   sampDif                  s0       1
//   sampNrm                  s3       1
//   sampEmi                  s4       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    add_pp r1.xyz, -c46, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r2.xyz, r0.w, c47
    nrm_pp r3.xyz, v6
    texld_pp r4, v1, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c0.x, c0.y
    mul_pp r3.xyz, r3, r4.y
    nrm_pp r5.xyz, v5
    mad_pp r3.xyz, r4.x, r5, r3
    dp2add_sat_pp r0.w, r4, r4, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad r3.xyz, r0.w, r4, r3
    dp3_sat_pp r0.w, r3, -r1
    mul_pp r1.xyz, r2, r0.w
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r3, -r2
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r1.w, c43
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, -c50, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r3, -r2
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r1.w, c51
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, -c54, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r3, -r2
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r2.xyz, r1.w, c55
    mad_pp r1.xyz, r0.w, r2, r1
    dp3_sat_pp r0.w, r3, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r3, c1.x, c1.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul_pp r5.xyz, r3, r3
    mul r4.xyz, r4, r5.y
    mov r6.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r2.z, c81
    mad_pp r2.xyz, r5.x, r2.xyww, r4
    mad_pp r2.xyz, r5.z, r6, r2
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c16
    add_pp r2.xyz, c22, -v2
    nrm r4.xyz, r2
    dp3 r0.w, -r4, r3
    add r0.w, r0.w, r0.w
    mad_pp r2.xyz, r3, -r0.w, -r4
    mov_pp r2.w, -r2.z
    texld_pp r2, r2.xyww, s5
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    mul r0.w, r0.w, c63.x
    mul_pp r2.xyz, r0.w, r2
    mul_pp r2.xyz, r2, v3.w
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c150
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c150.w
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 100 instruction slots used (5 texture, 95 arithmetic)
