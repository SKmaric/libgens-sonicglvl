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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
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
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampOffset0              s3       1
//   sampOffsetMask           s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    frc r0.xy, c27.ywzw
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c27.ywzw
    mov r1.x, c1.x
    cmp r0.zw, c27.xyyw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.y, -c1
    add r0, r0.x, -c1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld r2, r1.yzzw, s5
    dp2add_pp r1.y, v5.w, r2.y, c1.x
    frc r1.zw, c26.xyxz
    cmp r2.xy, -r1.zwzw, c1.x, c1.y
    add r1.zw, -r1, c26.xyxz
    cmp r2.xy, c26.xzzw, r1.x, r2
    add r1.xz, r1.zyww, r2.xyyw
    add r2, r1.x, -c1
    add r3, r1.z, -c1
    cmp r1.xz, -r2_abs.x, v0.xyyw, c1.x
    cmp r1.xz, -r2_abs.y, v0.zyww, r1
    cmp r1.xz, -r2_abs.z, v1.xyyw, r1
    cmp r1.xz, -r2_abs.w, v1.zyww, r1
    texld r2, r1.xzzw, s0
    mul_pp r1.y, r1.y, r2.w
    cmp r2.xy, -r0_abs.x, v0, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mad r0.xy, r0.wyzw, r1.y, -c1.y
    mad r0.zw, r0.xyxy, c150.xyxy, r1.xyxz
    texld_pp r1, r0.zwzw, s0
    mul_pp oC0.w, r1.w, c16.w
    cmp r0.zw, -r3_abs.x, v0.xyxy, c1.x
    cmp r0.zw, -r3_abs.y, v0, r0
    cmp r0.zw, -r3_abs.z, v1.xyxy, r0
    cmp r0.zw, -r3_abs.w, v1, r0
    mad r0.xy, r0, c150, r0.zwzw
    texld_pp r0, r0, s1
    add_pp r2.xyz, -c54, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r3.xyz, r0.w, c55
    add_pp r4.xyz, -c50, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r5.xyz, r0.w, c51
    add_pp r6.xyz, -c42, v2
    dp3_pp r0.w, r6, r6
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r6.xyz, r0.w, r6
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r7.xyz, r0.w, c43
    add_pp r8.xyz, -c46, v2
    dp3_pp r0.w, r8, r8
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r8.xyz, r0.w, r8
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r9.xyz, r0.w, c47
    mov r10.y, c0.y
    mul_pp r0.w, r10.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r10.xyz, c22, -v2
    dp3_pp r1.w, r10, r10
    rsq_pp r1.w, r1.w
    mad_pp r11.xyz, r10, r1.w, -r8
    nrm_pp r12.xyz, r11
    nrm_pp r11.xyz, v3
    dp3_sat_pp r2.w, r12, r11
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r12.xyz, r9, r2.w
    mad_pp r13.xyz, r10, r1.w, -r6
    dp3_sat_pp r2.w, r11, -r6
    nrm_pp r6.xyz, r13
    dp3_sat_pp r3.w, r6, r11
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mad_pp r6.xyz, r3.w, r7, r12
    mad_pp r12.xyz, r10, r1.w, -r4
    dp3_sat_pp r3.w, r11, -r4
    nrm_pp r4.xyz, r12
    dp3_sat_pp r4.x, r4, r11
    pow_pp r5.w, r4.x, r0.w
    mul_pp r4.x, r5.w, c20.z
    mad_pp r4.xyz, r4.x, r5, r6
    mad_pp r6.xyz, r10, r1.w, -r2
    dp3_sat_pp r2.x, r11, -r2
    nrm_pp r12.xyz, r6
    dp3_sat_pp r2.y, r12, r11
    pow_pp r4.w, r2.y, r0.w
    mul_pp r2.y, r4.w, c20.z
    mad_pp r4.xyz, r2.y, r3, r4
    mov r2.z, c20.z
    mul_pp r2.y, r2.z, c77.w
    mad_pp r6.xyz, r10, r1.w, -c10
    mul_pp r10.xyz, r1.w, r10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r12.xyz, r6
    dp3_sat_pp r2.z, r12, r11
    pow_pp r4.w, r2.z, r0.w
    mul_pp r2.y, r2.y, r4.w
    mad_pp r4.xyz, r2.y, c37, r4
    mul_pp r6.xyz, r1.w, c59
    mul r12.xyz, r1.w, c58
    add_pp r13.xyz, r10, r10
    dp3_sat_pp r1.w, r11, r10
    nrm_pp r10.xyz, r13
    dp3_sat_pp r2.y, r10, r11
    pow_pp r4.w, r2.y, r0.w
    mul_pp r0.w, r4.w, c20.z
    mad_pp r4.xyz, r0.w, r6, r4
    mul_pp r4.xyz, r4, c18
    mul_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, v3.w
    dp3_sat_pp r0.w, r11, -r8
    mul_pp r4.xyz, r9, r0.w
    mad_pp r2.yzw, r2.w, r7.xxyz, r4.xxyz
    mad_pp r2.yzw, r3.w, r5.xxyz, r2
    mad_pp r2.xyz, r2.x, r3, r2.yzww
    dp3_sat_pp r0.w, r11, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r2.xyz, r1.w, r12, r2
    mad_pp r3.xyz, r11, c0.x, c0.x
    mul_pp r4.xyz, r11, r11
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mad_pp r3.xyz, r4.x, r3.xyww, r5
    mad_pp r3.xyz, r4.z, r6, r3
    mad_pp r2.xyz, r3, c17, r2
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r1, r0
    add_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 187 instruction slots used (7 texture, 180 arithmetic)
