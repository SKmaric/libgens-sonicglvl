//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampEnv;
//   sampler2D sampSpe0;
//   sampler2D sampSpe1;
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
//   g_ViewportSize           c24      1
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampSpe1                 s3       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 10, 4, 0.5, -0.5
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    lrp_pp r2, v5.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    add_pp r0.xyz, -c54, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c56.z, c56.w
    mul r1.xyz, r0.w, c55
    add_pp r3.xyz, -c50, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    add_pp r5.xyz, -c42, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r6.xyz, r0.w, c43
    add_pp r7.xyz, -c46, v2
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r7.xyz, r0.w, r7
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r8.xyz, r0.w, c47
    mov r9.x, c0.x
    mul_pp r0.w, r9.x, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add r9.xyz, c22, -v2
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r7
    nrm_pp r11.xyz, r10
    nrm_pp r10.xyz, v3
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
    mad_pp r5.xyz, r9, r1.w, -r0
    dp3_sat_pp r0.x, r10, -r0
    nrm_pp r11.xyz, r5
    dp3_sat_pp r0.y, r11, r10
    pow_pp r4.w, r0.y, r0.w
    mul_pp r0.y, r4.w, c20.z
    mad_pp r3.yzw, r0.y, r1.xxyz, r3
    mad_pp r5.xyz, r9, r1.w, -c10
    mul_pp r9.xyz, r1.w, r9
    rcp r0.y, r1.w
    mad_sat_pp r0.y, -r0.y, c60.z, c60.w
    nrm_pp r11.xyz, r5
    dp3_sat_pp r0.z, r11, r10
    pow_pp r1.w, r0.z, r0.w
    texld_pp r5, v0.zwzw, s10
    mul_pp r0.z, r5.w, c20.z
    mul_pp r0.z, r1.w, r0.z
    mad_pp r3.yzw, r0.z, c37.xxyz, r3
    mul_pp r11.xyz, r0.y, c59
    mul r12.xyz, r0.y, c58
    add_pp r13.xyz, r9, r9
    dp3_sat_pp r0.y, r10, r9
    nrm_pp r9.xyz, r13
    dp3_sat_pp r0.z, r9, r10
    pow_pp r1.w, r0.z, r0.w
    mul_pp r0.z, r1.w, c20.z
    mad_pp r3.yzw, r0.z, r11.xxyz, r3
    mul r9, r10.y, c91
    mad r9, r10.x, c90, r9
    mad r9, r10.z, c92, r9
    dp4 r0.z, r9, r9
    rsq r0.z, r0.z
    mul r0.zw, r0.z, r9.xyxy
    mad_pp r0.zw, r0, c0, c0.z
    texld_pp r9, r0.zwzw, s5
    texld_pp r11, v0, s2
    texld_pp r13, v1, s3
    lrp r14, v5.w, r11, r13
    mul r0.z, r14.w, c63.x
    mul r0.w, c64.z, c64.x
    mov r11.xz, c64
    mad r1.w, r11.x, -r11.z, r11.z
    mad_pp r0.w, r5.w, r1.w, r0.w
    mul r0.z, r0.w, r0.z
    mul_pp r9.xyz, r0.z, r9
    mad_pp r3.yzw, r3, c18.xxyz, r9.xxyz
    mul_pp r3.yzw, r14.xxyz, r3
    mul_pp r3.yzw, r3, v3.w
    dp3_sat_pp r0.z, r10, -r7
    dp3_sat_pp r0.w, r10, -c10
    mul r0.w, r0.w, r5.w
    mul_pp r5.xyz, r5, r5
    mul_pp r7.xyz, r8, r0.z
    mad_pp r6.xyz, r2.w, r6, r7
    mad_pp r4.xyz, r3.x, r4, r6
    mad_pp r1.xyz, r0.x, r1, r4
    mad_pp r0.xzw, r0.w, c36.xyyz, r1.xyyz
    mad_pp r0.xyz, r0.y, r12, r0.xzww
    mad_pp r0.xyz, r5, c17, r0
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r2, r3.yzww
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 156 instruction slots used (8 texture, 148 arithmetic)
