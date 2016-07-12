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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampAlpha;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampOffset;
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
//   mrgTexcoordIndex         c26      2
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
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampAlpha                s3       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 4, -0.707106769, 0.5, -0.5
    def c2, 1, 0, -1, 10
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    add_pp r0.xyz, -c54, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c56.z, c56.w
    mul r1.xyz, r0.w, c55
    add_pp r2.xyz, -c50, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r3.xyz, r0.w, c51
    add_pp r4.xyz, -c42, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r5.xyz, r0.w, c43
    add_pp r6.xyz, -c46, v2
    dp3_pp r0.w, r6, r6
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r6.xyz, r0.w, r6
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r7.xyz, r0.w, c47
    mov r8, c2
    mul_pp r0.w, r8.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add_pp r9.xyz, c22, -v2
    dp3_pp r1.w, r9, r9
    rsq_pp r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r6
    nrm_pp r11.xyz, r10
    nrm r10.xyz, v3
    dp3_sat_pp r2.w, r11, r10
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r11.xyz, r7, r2.w
    mad_pp r12.xyz, r9, r1.w, -r4
    dp3_sat_pp r2.w, r10, -r4
    nrm_pp r4.xyz, r12
    dp3_sat_pp r3.w, r4, r10
    pow_pp r4.x, r3.w, r0.w
    mul_pp r3.w, r4.x, c20.z
    mad_pp r4.xyz, r3.w, r5, r11
    mad_pp r11.xyz, r9, r1.w, -r2
    dp3_sat_pp r2.x, r10, -r2
    nrm_pp r12.xyz, r11
    dp3_sat_pp r2.y, r12, r10
    pow_pp r3.w, r2.y, r0.w
    mul_pp r2.y, r3.w, c20.z
    mad_pp r4.xyz, r2.y, r3, r4
    mad_pp r11.xyz, r9, r1.w, -r0
    dp3_sat_pp r0.x, r10, -r0
    nrm_pp r12.xyz, r11
    dp3_sat_pp r0.y, r12, r10
    pow_pp r2.y, r0.y, r0.w
    mul_pp r0.y, r2.y, c20.z
    mad_pp r4.xyz, r0.y, r1, r4
    mad_pp r11.xyz, r9, r1.w, -c10
    mul r9.xyz, r1.w, r9
    rcp r0.y, r1.w
    mad_sat_pp r0.y, -r0.y, c60.z, c60.w
    nrm_pp r12.xyz, r11
    dp3_sat_pp r0.z, r12, r10
    pow_pp r1.w, r0.z, r0.w
    texld r11, v0.zwzw, s10
    mul_pp r0.z, r11.w, c20.z
    mul_pp r0.z, r1.w, r0.z
    mad_pp r4.xyz, r0.z, c37, r4
    mul_pp r12.xyz, r0.y, c59
    mul r13.xyz, r0.y, c58
    add_pp r14.xyz, r9, r9
    nrm_pp r15.xyz, r14
    dp3_sat_pp r0.y, r15, r10
    pow_pp r1.w, r0.y, r0.w
    mul_pp r0.y, r1.w, c20.z
    mad_pp r0.yzw, r0.y, r12.xxyz, r4.xxyz
    frc r2.yz, c26.xxww
    cmp r4.xy, -r2.yzzw, c3.x, c3.y
    add r2.yz, -r2, c26.xxww
    mov r12.xy, c3
    cmp r4.xy, c26.xwzw, r12.x, r4
    add r2.yz, r2, r4.xxyw
    add r4, r2.y, -c3
    add r14, r2.z, -c3
    cmp r2.yz, -r4_abs.x, v0.xxyw, c3.x
    cmp r2.yz, -r4_abs.y, v0.xzww, r2
    cmp r2.yz, -r4_abs.z, v1.xxyw, r2
    cmp r2.yz, -r4_abs.w, v1.xzww, r2
    cmp r4.xy, -r14_abs.x, v0, c3.x
    cmp r4.xy, -r14_abs.y, v0.zwzw, r4
    cmp r4.xy, -r14_abs.z, v1, r4
    cmp r4.xy, -r14_abs.w, v1.zwzw, r4
    texld_pp r4, r4, s2
    mad r4.xy, r4.wyzw, c0.x, c0.y
    mad r2.yz, r4.xxyw, c151.xxyw, r2
    texld_pp r14, r2.yzzw, s0
    mul_pp r1.w, r14.w, c16.w
    mad r2.y, r1.w, -v5.w, c3.y
    mul_pp r1.w, r1.w, v5.w
    mul r2.y, r2.y, c63.x
    mul r2.z, c64.z, c64.x
    mov r15.xz, c64
    mad r3.w, r15.x, -r15.z, r15.z
    mad_pp r2.z, r11.w, r3.w, r2.z
    mul r2.y, r2.z, r2.y
    dp3 r2.z, -r9, r10
    add r2.z, r2.z, r2.z
    mad_pp r15.xyz, r10, -r2.z, -r9
    dp3_sat_pp r2.z, r10, r9
    mad_pp r9.xy, r4, c151, r15
    mov_pp r9.z, -r15.z
    texld_pp r9, r9, s1
    mul_pp r9.xyz, r2.y, r9
    mad_pp r0.yzw, r0, c18.xxyz, r9.xxyz
    dp3_sat_pp r2.y, r10, -r6
    mul_pp r6.xyz, r7, r2.y
    mad_pp r5.xyz, r2.w, r5, r6
    mad_pp r2.xyw, r2.x, r3.xyzz, r5.xyzz
    mad_pp r1.xyz, r0.x, r1, r2.xyww
    dp3_sat_pp r0.x, r10, -c10
    mul r0.x, r0.x, r11.w
    mul_pp r2.xyw, r11.xyzz, r11.xyzz
    mad_pp r1.xyz, r0.x, c36, r1
    mad_pp r1.xyz, r2.z, r13, r1
    add_pp r0.x, -r2.z, c3.y
    mad_pp r1.xyz, r2.xyww, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r14, r1
    mul_pp r2.xyz, r10.y, c91
    mad_pp r2.xyz, r10.x, c90, r2
    mad_pp r2.xyz, r10.z, c92, r2
    mad r2.w, r2.z, -r2.z, c3.y
    mul r3.x, c150.x, c150.x
    mad r2.w, r3.x, -r2.w, c3.y
    cmp r3.x, r2.w, c3.y, c3.x
    mul r2.w, r2.w, r3.x
    mul r3.x, r3.x, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.z, r3.x, -r2.z, r2.w
    mul_pp r2.xy, r2, r2.z
    add r2.zw, c0.z, vPos.xyxy
    mul r2.zw, r2, c24
    mad r3, c24.zzww, r8.xyyz, r8.yxzy
    mad r3.xy, r2.zwzw, c0.xwzw, r3
    texld r5, r2.zwzw, s11
    add_pp r2.zw, r3, r3.xyxy
    mad_pp r2.xy, r2, c1.y, r2.zwzw
    mad_pp r2.xy, r4, c151, r2
    mad r2.xy, r2, c1.zwzw, c1.z
    texld_pp r2, r2, s11
    mad r1.xyz, r1, v5, -r2
    mad_pp r1.xyz, r1.w, r1, r2
    mul_pp r1.w, r0.x, r0.x
    mul_pp r1.w, r1.w, r1.w
    mul_pp r0.x, r0.x, r1.w
    lrp_pp r1.w, r0.x, r12.y, c62.x
    mad_pp r0.xyz, r1.w, r0.yzww, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r5
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0
    frc r0.x, c27.x
    cmp r0.y, -r0.x, c3.x, c3.y
    add r0.x, -r0.x, c27.x
    cmp r0.y, c27.x, r12.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c3
    cmp r1.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mov_pp oC0.w, r0.y

// approximately 207 instruction slots used (8 texture, 199 arithmetic)
