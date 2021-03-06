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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampOffset0;
//   sampler2D sampOffset1;
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
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampNrm0                 s2       1
//   sampNrm1                 s3       1
//   sampOffset0              s4       1
//   sampOffset1              s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 10
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    frc r0.xy, c27.xzzw
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c27.xzzw
    mov r1.x, c2.x
    cmp r0.zw, c27.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.y, -c2
    add r0, r0.x, -c2
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s4
    texld_pp r3, r1.yzzw, s5
    frc r1.y, c26.x
    cmp r1.z, -r1.y, c2.x, c2.y
    add r1.y, -r1.y, c26.x
    cmp r1.x, c26.x, r1.x, r1.z
    add r1.x, r1.x, r1.y
    add r1, r1.x, -c2
    cmp r2.xz, -r1_abs.x, v0.xyyw, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2.xzzw
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r4, r1, s0
    add_pp r1.z, r4.w, r4.w
    mad r1.zw, r2.xywy, r1.z, -c2.y
    mad r2.xy, r1.zwzw, c150, r1
    texld_pp r2, r2, s0
    texld r4, r1, s1
    add_pp r3.x, r4.w, r4.w
    mad r3.xy, r3.wyzw, r3.x, -c2.y
    mad r1.xy, r3, c150, r1
    texld_pp r4, r1, s1
    lrp_pp r5, v7.w, r4, r2
    mul_pp r1.x, r5.w, c16.w
    mul_pp oC0.w, r1.x, v7.w
    cmp r1.xy, -r0_abs.x, v0, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    mad r0.zw, r1, c150.xyxy, r0.xyxy
    mad r0.xy, r3, c150, r0
    texld r1, r0, s3
    texld r0, r0.zwzw, s2
    lrp_pp r2.yzw, v7.w, r1.xxyw, r0.xxyw
    mul_pp r2.x, r2.w, r2.y
    mad_pp r0.xy, r2.xzzw, c0.y, c0.z
    nrm_pp r1.xyz, v6
    mul_pp r1.xyz, r0.y, r1
    nrm_pp r2.xyz, v5
    mad_pp r1.xyz, r0.x, r2, r1
    dp2add_sat_pp r0.x, r0, r0, c2.x
    add r0.x, -r0.x, c2.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r2.xyz, v3
    mad_pp r0.xyz, r0.x, r2, r1
    add_pp r1.xyz, -c46, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r2.xyz, r0.w, c47
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r4.xyz, r3, r0.w, -r1
    dp3_sat_pp r1.x, r0, -r1
    mul_pp r1.xyz, r2, r1.x
    nrm_pp r6.xyz, r4
    dp3_sat_pp r1.w, r6, r0
    mov r2.w, c0.w
    mul_pp r2.w, r2.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.x
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r2.xyz, r2, r1.w
    add_pp r4.xyz, -c42, v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul r6.xyz, r1.w, c43
    mad_pp r7.xyz, r3, r0.w, -r4
    dp3_sat_pp r1.w, r0, -r4
    mad_pp r1.xyz, r1.w, r6, r1
    nrm_pp r4.xyz, r7
    dp3_sat_pp r1.w, r4, r0
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r2.xyz, r1.w, r6, r2
    add_pp r4.xyz, -c50, v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r6.xyz, r1.w, c51
    mad_pp r7.xyz, r3, r0.w, -r4
    dp3_sat_pp r1.w, r0, -r4
    mad_pp r1.xyz, r1.w, r6, r1
    nrm_pp r4.xyz, r7
    dp3_sat_pp r1.w, r4, r0
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r2.xyz, r1.w, r6, r2
    add_pp r4.xyz, -c54, v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r6.xyz, r1.w, c55
    mad_pp r7.xyz, r3, r0.w, -r4
    dp3_sat_pp r1.w, r0, -r4
    mad_pp r1.xyz, r1.w, r6, r1
    nrm_pp r4.xyz, r7
    dp3_sat_pp r1.w, r4, r0
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r2.xyz, r1.w, r6, r2
    mad_pp r4.xyz, r3, r0.w, -c10
    mul_pp r3.xyz, r0.w, r3
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r6.xyz, r4
    dp3_sat_pp r1.w, r6, r0
    pow_pp r3.w, r1.w, r2.w
    mov r4.z, c20.z
    mul_pp r1.w, r4.z, c77.w
    mul_pp r1.w, r3.w, r1.w
    mad_pp r2.xyz, r1.w, c37, r2
    add_pp r4.xyz, r3, r3
    dp3_sat_pp r1.w, r0, r3
    nrm_pp r3.xyz, r4
    dp3_sat_pp r3.x, r3, r0
    pow_pp r4.x, r3.x, r2.w
    mul_pp r2.w, r4.x, c20.z
    mul_pp r3.xyz, r0.w, c59
    mul r4.xyz, r0.w, c58
    mad_pp r2.xyz, r2.w, r3, r2
    mul_pp r2.xyz, r2, c18
    mul_pp r2.xyz, r2, v3.w
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r1.xyz, r1.w, r4, r1
    mad_pp r3.xyz, r0, c0.x, c0.x
    mul_pp r0.xyz, r0, r0
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r0.y, r4
    mov r6.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mad_pp r0.xyw, r0.x, r3, r4.xyzz
    mad_pp r0.xyz, r0.z, r6, r0.xyww
    mad_pp r0.xyz, r0, c17, r1
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r5, r2
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 205 instruction slots used (10 texture, 195 arithmetic)
