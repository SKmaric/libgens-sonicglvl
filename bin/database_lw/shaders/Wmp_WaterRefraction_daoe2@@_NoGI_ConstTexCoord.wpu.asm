//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
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
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampAlpha                s3       1
//   sampDLScatter            s9       1
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
    dcl_2d s11
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c151.xyxy, r1
    texld_pp r2, r0.zwzw, s0
    add_pp r3.xyz, -c54, v2
    dp3_pp r0.z, r3, r3
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r3.xyz, r0.z, r3
    mad_sat_pp r0.z, -r0.w, c56.z, c56.w
    mul r4.xyz, r0.z, c55
    add_pp r5.xyz, -c50, v2
    dp3_pp r0.z, r5, r5
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r5.xyz, r0.z, r5
    mad_sat_pp r0.z, -r0.w, c52.z, c52.w
    mul r6.xyz, r0.z, c51
    add_pp r7.xyz, -c42, v2
    dp3_pp r0.z, r7, r7
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r7.xyz, r0.z, r7
    mad_sat_pp r0.z, -r0.w, c44.z, c44.w
    mul r8.xyz, r0.z, c43
    add_pp r9.xyz, -c46, v2
    dp3_pp r0.z, r9, r9
    rsq_pp r0.z, r0.z
    rcp_pp r0.w, r0.z
    mul_pp r9.xyz, r0.z, r9
    mad_sat_pp r0.z, -r0.w, c48.z, c48.w
    mul r10.xyz, r0.z, c47
    nrm r11.xyz, v3
    dp3_sat_pp r0.z, r11, -r9
    mul_pp r12.xyz, r10, r0.z
    dp3_sat_pp r0.z, r11, -r7
    mad_pp r12.xyz, r0.z, r8, r12
    dp3_sat_pp r0.z, r11, -r5
    mad_pp r12.xyz, r0.z, r6, r12
    dp3_sat_pp r0.z, r11, -r3
    mad_pp r12.xyz, r0.z, r4, r12
    dp3_sat_pp r0.z, r11, -c10
    mul r0.z, r0.z, c77.w
    mad_pp r12.xyz, r0.z, c36, r12
    mad_pp r13.xyz, r11, c0.z, c0.z
    mov r14.xyz, c80
    mad r14.xyz, r14, r13.y, c79
    mul_pp r15.xyz, r11, r11
    mul r14.xyz, r14, r15.y
    mov r16, c77
    mad r13.xyw, c78.xyzz, r13.x, r16.xyzz
    mov r16.xyz, c82
    mad r16.xyz, r16, r13.z, c81
    mad_pp r13.xyz, r15.x, r13.xyww, r14
    mad_pp r13.xyz, r15.z, r16, r13
    mad_pp r12.xyz, r13, c17, r12
    mul_pp r12.xyz, r12, c16
    mul_pp r2.xyz, r2, r12
    mul_pp r0.z, r2.w, c16.w
    add r1.zw, c0.z, vPos.xyxy
    mul r1.zw, r1, c24
    mov r12, c2
    mad r13, c24.zzww, r12.xyyz, r12.yxzy
    mad r1.zw, r1, c0.xyxw, r13.xyxy
    add_pp r1.zw, r13, r1
    mul r0.w, c150.x, c150.x
    mul_pp r12.xyz, r11.y, c91
    mad_pp r12.xyz, r11.x, c90, r12
    mad_pp r12.xyz, r11.z, c92, r12
    mad r2.w, r12.z, -r12.z, c3.y
    mad r0.w, r0.w, -r2.w, c3.y
    cmp r2.w, r0.w, c3.y, c3.x
    mul r0.w, r0.w, r2.w
    mul r2.w, r2.w, c150.x
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mad r0.w, r2.w, -r12.z, r0.w
    mul_pp r12.xy, r12, r0.w
    mad_pp r1.zw, r12.xyxy, c1.y, r1
    mad_pp r1.zw, r0.xyxy, c151.xyxy, r1
    mad r1.zw, r1, c1, c1.z
    texld_pp r13, r1.zwzw, s11
    mad r2.xyz, r2, v5, -r13
    mul_pp r0.w, r0.z, v5.w
    mad r0.z, r0.z, -v5.w, c3.y
    mul r0.z, r0.z, c63.x
    mad_pp r2.xyz, r0.w, r2, r13
    mul_pp r0.w, r12.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add_pp r12.xyz, c22, -v2
    dp3_pp r1.z, r12, r12
    rsq_pp r1.z, r1.z
    mad_pp r9.xyz, r12, r1.z, -r9
    nrm_pp r13.xyz, r9
    dp3_sat_pp r1.w, r13, r11
    pow_pp r2.w, r1.w, r0.w
    mul_pp r1.w, r2.w, c20.z
    mul_pp r9.xyz, r10, r1.w
    mad_pp r7.xyz, r12, r1.z, -r7
    nrm_pp r10.xyz, r7
    dp3_sat_pp r1.w, r10, r11
    pow_pp r2.w, r1.w, r0.w
    mul_pp r1.w, r2.w, c20.z
    mad_pp r7.xyz, r1.w, r8, r9
    mad_pp r5.xyz, r12, r1.z, -r5
    nrm_pp r8.xyz, r5
    dp3_sat_pp r1.w, r8, r11
    pow_pp r2.w, r1.w, r0.w
    mul_pp r1.w, r2.w, c20.z
    mad_pp r5.xyz, r1.w, r6, r7
    mad_pp r3.xyz, r12, r1.z, -r3
    nrm_pp r6.xyz, r3
    dp3_sat_pp r1.w, r6, r11
    pow_pp r2.w, r1.w, r0.w
    mul_pp r1.w, r2.w, c20.z
    mad_pp r3.xyz, r1.w, r4, r5
    mad_pp r4.xyz, r12, r1.z, -c10
    mul r5.xyz, r1.z, r12
    nrm_pp r6.xyz, r4
    dp3_sat_pp r1.z, r6, r11
    pow_pp r2.w, r1.z, r0.w
    mul_pp r0.w, r16.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    dp3 r0.w, -r5, r11
    add r0.w, r0.w, r0.w
    mad_pp r4.xyz, r11, -r0.w, -r5
    dp3_sat_pp r0.w, r11, r5
    add_pp r0.w, -r0.w, c3.y
    mad_pp r5.xy, r0, c151, r4
    mov_pp r5.z, -r4.z
    texld_pp r4, r5, s1
    mul r0.x, c64.z, c64.x
    mov r5.xz, c64
    mad r0.y, r5.x, -r5.z, r5.z
    mad_pp r0.x, c77.w, r0.y, r0.x
    mul r0.x, r0.x, r0.z
    mul_pp r0.xyz, r0.x, r4
    mad_pp r0.xyz, r3, c18, r0
    mul_pp r1.z, r0.w, r0.w
    mul_pp r1.z, r1.z, r1.z
    mul_pp r0.w, r0.w, r1.z
    lrp_pp r2.w, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.w, r0, r2
    texld_pp r2, v4.yxzw, s9
    mad_pp r0.xyz, r0, r2.w, r2
    mul_pp oC0.xyz, r0, c16
    frc r0.x, c27.x
    cmp r0.y, -r0.x, c3.x, c3.y
    add r0.x, -r0.x, c27.x
    cmp r0.y, c27.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c3
    cmp r1.xz, -r0_abs.x, v0.xyyw, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.xzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    add r0.x, r0.y, -c3.y
    mad_pp oC0.w, c16.y, r0.x, r1.y

// approximately 199 instruction slots used (6 texture, 193 arithmetic)
