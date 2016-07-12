//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
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
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_cube s5
    dcl_2d s9
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    nrm_pp r6.xyz, v6
    texld_pp r7, v1, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    mul_pp r6.xyz, r6, r7.y
    nrm_pp r8.xyz, v5
    mad_pp r6.xyz, r7.x, r8, r6
    dp2add_sat_pp r0.w, r7, r7, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r7.xyz, v3
    mad r6.xyz, r0.w, r7, r6
    add_pp r7.xyz, c22, -v2
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    mad_pp r8.xyz, r7, r0.w, -r4
    dp3_sat_pp r1.w, r6, -r4
    mul_pp r4.xyz, r5, r1.w
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.w, r9, r6
    mov r8.y, c1.y
    mul_pp r2.w, r8.y, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r5.xyz, r5, r1.w
    mad_pp r8.xyz, r7, r0.w, -r2
    dp3_sat_pp r1.w, r6, -r2
    mad_pp r2.xyz, r1.w, r3, r4
    nrm_pp r4.xyz, r8
    dp3_sat_pp r1.w, r4, r6
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r3.xyz, r1.w, r3, r5
    mad_pp r4.xyz, r7, r0.w, -r0
    dp3_sat_pp r0.x, r6, -r0
    mad_pp r0.xyz, r0.x, r1, r2
    nrm_pp r2.xyz, r4
    dp3_sat_pp r1.w, r2, r6
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r1.xyz, r1.w, r1, r3
    add_pp r2.xyz, -c54, v2
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    rcp_pp r3.x, r1.w
    mul_pp r2.xyz, r1.w, r2
    mad_sat_pp r1.w, -r3.x, c56.z, c56.w
    mul r3.xyz, r1.w, c55
    mad_pp r4.xyz, r7, r0.w, -r2
    dp3_sat_pp r1.w, r6, -r2
    mad_pp r0.xyz, r1.w, r3, r0
    nrm_pp r2.xyz, r4
    dp3_sat_pp r1.w, r2, r6
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r1.xyz, r1.w, r3, r1
    mad_pp r2.xyz, r7, r0.w, -c10
    mul r3.xyz, r0.w, r7
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r6
    pow_pp r1.w, r0.w, r2.w
    mov r2, c77
    mul_pp r0.w, r2.w, c20.z
    mul_pp r0.w, r1.w, r0.w
    mad_pp r1.xyz, r0.w, c37, r1
    dp3 r0.w, -r3, r6
    add r0.w, r0.w, r0.w
    mad_pp r3.xyz, r6, -r0.w, -r3
    mov_pp r3.w, -r3.z
    texld_pp r3, r3.xyww, s5
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r1.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    texld r4, v0, s1
    mul r1.w, r4.w, c63.x
    mul r0.w, r0.w, r1.w
    mul_pp r3.xyz, r0.w, r3
    mad_pp r1.xyz, r1, c18, r3
    mul_pp r1.xyz, r4, r1
    mul_pp r1.xyz, r1, v3.w
    mad_pp r3.xyz, r6, c1.x, c1.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul_pp r5.xyz, r6, r6
    dp3_sat_pp r0.w, r6, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    mul r4.xyz, r4, r5.y
    mad r2.xyz, c78, r3.x, r2
    mov r6.xyz, c82
    mad r3.xyz, r6, r3.z, c81
    mad_pp r2.xyz, r5.x, r2, r4
    mad_pp r2.xyz, r5.z, r3, r2
    mad_pp r0.xyz, r2, c17, r0
    mul_pp r0.xyz, r0, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.w, r2.w, c16.w
    mad r0.w, r0.w, v7.w, c0.y
    mov r1.w, c0.w
    mad_pp oC0.w, c16.y, r0.w, r1.w
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 157 instruction slots used (5 texture, 152 arithmetic)
