//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
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
//   sampler2D sampEnv;
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
//   g_MtxView                c90      3
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    def c1, 1, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1.xyz, -c54, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r2.xyz, r0.w, c55
    add_pp r3.xyz, -c50, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    add_pp r5.xyz, -c42, v1
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r6.xyz, r0.w, c43
    add_pp r7.xyz, -c46, v1
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r7.xyz, r0.w, r7
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r8.xyz, r0.w, c47
    mov r9.y, c0.y
    mul_pp r0.w, r9.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r9.xyz, c22, -v1
    dp3_pp r1.w, r9, r9
    rsq_pp r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r7
    nrm_pp r11.xyz, r10
    nrm_pp r10.xyz, v2
    dp3_sat_pp r2.w, r11, r10
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r11.xyz, r8, r2.w
    mad_pp r12.xyz, r9, r1.w, -r5
    dp3_sat_pp r2.w, r10, -r5
    nrm_pp r5.xyz, r12
    dp3_sat_pp r3.w, r5, r10
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mad_pp r5.xyz, r3.w, r6, r11
    mad_pp r11.xyz, r9, r1.w, -r3
    dp3_sat_pp r3.x, r10, -r3
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.y, r12, r10
    pow_pp r4.w, r3.y, r0.w
    mul_pp r3.y, r4.w, c20.z
    mad_pp r3.yzw, r3.y, r4.xxyz, r5.xxyz
    mad_pp r5.xyz, r9, r1.w, -r1
    dp3_sat_pp r1.x, r10, -r1
    nrm_pp r11.xyz, r5
    dp3_sat_pp r1.y, r11, r10
    pow_pp r4.w, r1.y, r0.w
    mul_pp r1.y, r4.w, c20.z
    mad_pp r3.yzw, r1.y, r2.xxyz, r3
    mov r5, c77
    mul_pp r1.y, r5.w, c20.z
    mad_pp r11.xyz, r9, r1.w, -c10
    mul_pp r9.xyz, r1.w, r9
    dp3_pp r1.z, r10, r9
    nrm_pp r9.xyz, r11
    dp3_sat_pp r1.w, r9, r10
    pow_pp r4.w, r1.w, r0.w
    mul_pp r0.w, r1.y, r4.w
    mad_pp r3.yzw, r0.w, c37.xxyz, r3
    mul r9, r10.y, c91
    mad r9, r10.x, c90, r9
    mad r9, r10.z, c92, r9
    dp4 r0.w, r9, r9
    rsq r0.w, r0.w
    mul r1.yw, r0.w, r9.xxzy
    mad_pp r1.yw, r1, c0.xxzw, c0.x
    texld_pp r9, r1.ywzw, s5
    mul r1.yw, c64.xzzw, c64.xxzy
    mov r11, c64
    mad r11.xy, r11, -r11.zwzw, r11.zwzw
    mad_pp r1.yw, c77.w, r11.xxzy, r1
    texld r11, v0, s1
    mul r0.w, r11.w, c63.x
    mul r0.w, r1.y, r0.w
    mul_pp r9.xyz, r0.w, r9
    mad_pp r3.yzw, r3, c18.xxyz, r9.xxyz
    mul_pp r3.yzw, r11.xxyz, r3
    mul_pp r3.yzw, r3, v2.w
    dp3_sat_pp r0.w, r10, -r7
    mul_pp r7.xyz, r8, r0.w
    mad_pp r6.xyz, r2.w, r6, r7
    mad_pp r4.xyz, r3.x, r4, r6
    mad_pp r2.xyz, r1.x, r2, r4
    dp3_sat_pp r0.w, r10, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r4.xyz, r10, c0.x, c0.x
    mul_pp r6.xyz, r10, r10
    mov r7.xyz, c80
    mad r7.xyz, r7, r4.y, c79
    mul r7.xyz, r6.y, r7
    mad r4.xyw, c78.xyzz, r4.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r4.z, c81
    mad_pp r4.xyz, r6.x, r4.xyww, r7
    mad_pp r4.xyz, r6.z, r5, r4
    mad_pp r2.xyz, r4, c17, r2
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r3.yzww
    mov_pp r0.w, c150.w
    add_pp r0.w, r0.w, c1.x
    add_sat_pp r0.w, -r1.z, r0.w
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v4
    mad_pp r0.xyz, r1, r1.w, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 149 instruction slots used (4 texture, 145 arithmetic)
