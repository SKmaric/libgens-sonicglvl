//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   mrgTexcoordIndex         c26      1
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
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
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
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.xz, -r2_abs.x, v0.xyyw, c3.x
    cmp r1.xz, -r2_abs.y, v0.zyww, r1
    cmp r1.xz, -r2_abs.z, v1.xyyw, r1
    cmp r1.xz, -r2_abs.w, v1.zyww, r1
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c151.xyxy, r1.xyxz
    texld_pp r2, r0.zwzw, s0
    mul_pp r0.z, r2.w, c16.w
    mul_pp r0.w, r0.z, v5.w
    mad r0.z, r0.z, -v5.w, c3.y
    mul r0.z, r0.z, c63.x
    add_pp r1.xzw, -c54.xyyz, v2.xyyz
    dp3_pp r2.w, r1.xzww, r1.xzww
    rsq_pp r2.w, r2.w
    rcp_pp r3.x, r2.w
    mul_pp r1.xzw, r1, r2.w
    mad_sat_pp r2.w, -r3.x, c56.z, c56.w
    mul r3.xyz, r2.w, c55
    add_pp r4.xyz, -c50, v2
    dp3_pp r2.w, r4, r4
    rsq_pp r2.w, r2.w
    rcp_pp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    mad_sat_pp r2.w, -r3.w, c52.z, c52.w
    mul r5.xyz, r2.w, c51
    add_pp r6.xyz, -c42, v2
    dp3_pp r2.w, r6, r6
    rsq_pp r2.w, r2.w
    rcp_pp r3.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    mad_sat_pp r2.w, -r3.w, c44.z, c44.w
    mul r7.xyz, r2.w, c43
    add_pp r8.xyz, -c46, v2
    dp3_pp r2.w, r8, r8
    rsq_pp r2.w, r2.w
    rcp_pp r3.w, r2.w
    mul_pp r8.xyz, r2.w, r8
    mad_sat_pp r2.w, -r3.w, c48.z, c48.w
    mul r9.xyz, r2.w, c47
    nrm r10.xyz, v3
    dp3_sat_pp r2.w, r10, -r8
    mul_pp r11.xyz, r9, r2.w
    dp3_sat_pp r2.w, r10, -r6
    mad_pp r11.xyz, r2.w, r7, r11
    dp3_sat_pp r2.w, r10, -r4
    mad_pp r11.xyz, r2.w, r5, r11
    dp3_sat_pp r2.w, r10, -r1.xzww
    mad_pp r11.xyz, r2.w, r3, r11
    texld r12, v0.zwzw, s10
    dp3_sat_pp r2.w, r10, -c10
    mul r2.w, r2.w, r12.w
    mad_pp r11.xyz, r2.w, c36, r11
    mul_pp r12.xyz, r12, r12
    mad_pp r11.xyz, r12, c17, r11
    mul_pp r11.xyz, r11, c16
    mul_pp r2.xyz, r2, r11
    add r11.xy, c0.z, vPos
    mul r11.xy, r11, c24.zwzw
    mov r13, c2
    mad r14, c24.zzww, r13.xyyz, r13.yxzy
    mad r11.xy, r11, c0.xwzw, r14
    add_pp r11.xy, r14.zwzw, r11
    mul r2.w, c150.x, c150.x
    mul_pp r12.xyz, r10.y, c91
    mad_pp r12.xyz, r10.x, c90, r12
    mad_pp r12.xyz, r10.z, c92, r12
    mad r3.w, r12.z, -r12.z, c3.y
    mad r2.w, r2.w, -r3.w, c3.y
    cmp r3.w, r2.w, c3.y, c3.x
    mul r2.w, r2.w, r3.w
    mul r3.w, r3.w, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.w, r3.w, -r12.z, r2.w
    mul_pp r11.zw, r12.xyxy, r2.w
    mad_pp r11.xy, r11.zwzw, c1.y, r11
    mad_pp r11.xy, r0, c151, r11
    mad r11.xy, r11, c1.zwzw, c1.z
    texld_pp r11, r11, s11
    mad r2.xyz, r2, v5, -r11
    mad_pp r2.xyz, r0.w, r2, r11
    mul_pp r0.w, r13.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add_pp r11.xyz, c22, -v2
    dp3_pp r2.w, r11, r11
    rsq_pp r2.w, r2.w
    mad_pp r8.xyz, r11, r2.w, -r8
    nrm_pp r12.xyz, r8
    dp3_sat_pp r3.w, r12, r10
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mul_pp r8.xyz, r9, r3.w
    mad_pp r6.xyz, r11, r2.w, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r3.w, r9, r10
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mad_pp r6.xyz, r3.w, r7, r8
    mad_pp r4.xyz, r11, r2.w, -r4
    nrm_pp r7.xyz, r4
    dp3_sat_pp r3.w, r7, r10
    pow_pp r4.x, r3.w, r0.w
    mul_pp r3.w, r4.x, c20.z
    mad_pp r4.xyz, r3.w, r5, r6
    mad_pp r1.xzw, r11.xyyz, r2.w, -r1
    nrm_pp r5.xyz, r1.xzww
    dp3_sat_pp r1.x, r5, r10
    pow_pp r3.w, r1.x, r0.w
    mul_pp r1.x, r3.w, c20.z
    mad_pp r1.xzw, r1.x, r3.xyyz, r4.xyyz
    mad_pp r3.xyz, r11, r2.w, -c10
    mul r4.xyz, r2.w, r11
    nrm_pp r5.xyz, r3
    dp3_sat_pp r2.w, r5, r10
    pow_pp r3.x, r2.w, r0.w
    mul_pp r0.w, r12.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mad_pp r1.xzw, r0.w, c37.xyyz, r1
    dp3 r0.w, -r4, r10
    add r0.w, r0.w, r0.w
    mad_pp r3.xyz, r10, -r0.w, -r4
    dp3_sat_pp r0.w, r10, r4
    add_pp r0.w, -r0.w, c3.y
    mad_pp r4.xy, r0, c151, r3
    mov_pp r4.z, -r3.z
    texld_pp r3, r4, s1
    mul r0.x, c64.z, c64.x
    mov r4.xz, c64
    mad r0.y, r4.x, -r4.z, r4.z
    mad_pp r0.x, r12.w, r0.y, r0.x
    mul r0.x, r0.x, r0.z
    mul_pp r0.xyz, r0.x, r3
    mad_pp r0.xyz, r1.xzww, c18, r0
    mul_pp r1.x, r0.w, r0.w
    mul_pp r1.x, r1.x, r1.x
    mul_pp r0.w, r0.w, r1.x
    lrp_pp r2.w, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.w, r0, r2
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c3.y

// approximately 177 instruction slots used (6 texture, 171 arithmetic)
