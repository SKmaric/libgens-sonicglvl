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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   sampler2D sampNrm;
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
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampOffset0              s3       1
//   sampOffsetMask           s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
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
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c2.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    frc r2.xyz, c27.xyww
    cmp r3.xyz, -r2, c2.x, c2.y
    add r2.xyz, -r2, c27.xyww
    cmp r3.xyz, c27.xyww, r1.x, r3
    add r2.xyz, r2, r3
    add r3, r2.z, -c2
    cmp r1.xw, -r3_abs.x, v0.xyzy, c2.x
    cmp r1.xw, -r3_abs.y, v0.zyzw, r1
    cmp r1.xw, -r3_abs.z, v1.xyzy, r1
    cmp r1.xw, -r3_abs.w, v1.zyzw, r1
    texld r3, r1.xwzw, s5
    dp2add_pp r1.x, v7.w, r3.y, c2.x
    add r3, r2.y, -c2
    add r2, r2.x, -c2
    cmp r4.xy, -r3_abs.x, v0, c2.x
    cmp r3.xy, -r3_abs.y, v0.zwzw, r4
    cmp r3.xy, -r3_abs.z, v1, r3
    cmp r3.xy, -r3_abs.w, v1.zwzw, r3
    texld_pp r3, r3, s3
    mad r1.xw, r3.wyzy, r1.x, -c2.y
    mad r1.yz, r1.xxww, c150.xxyw, r1
    texld_pp r3, r1.yzzw, s0
    mul_pp oC0.w, r3.w, c16.w
    cmp r1.yz, -r0_abs.x, v0.xxyw, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    mad r0.xy, r1.xwzw, c150, r0
    texld_pp r0, r0, s1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    mad r1.xy, r1.xwzw, c150, r1.yzzw
    texld_pp r1, r1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.y, c0.z
    nrm_pp r2.xyz, v6
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r4.xyz, v5
    mad_pp r2.xyz, r1.x, r4, r2
    dp2add_sat_pp r0.w, r1, r1, c2.x
    add r0.w, -r0.w, c2.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad_pp r1.xyz, r0.w, r1, r2
    add_pp r2.xyz, -c46, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r4.xyz, r0.w, c47
    add_pp r5.xyz, c22, -v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mad_pp r6.xyz, r5, r0.w, -r2
    dp3_sat_pp r1.w, r1, -r2
    mul_pp r2.xyz, r4, r1.w
    nrm_pp r7.xyz, r6
    dp3_sat_pp r1.w, r7, r1
    mov r6.y, c20.y
    mul_pp r2.w, r6.y, c0.w
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.x
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r4.xyz, r4, r1.w
    add_pp r6.xyz, -c42, v2
    dp3_pp r1.w, r6, r6
    rsq_pp r1.w, r1.w
    mul_pp r6.xyz, r1.w, r6
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul r7.xyz, r1.w, c43
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r1.w, r1, -r6
    mad_pp r2.xyz, r1.w, r7, r2
    nrm_pp r6.xyz, r8
    dp3_sat_pp r1.w, r6, r1
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r7, r4
    add_pp r6.xyz, -c50, v2
    dp3_pp r1.w, r6, r6
    rsq_pp r1.w, r1.w
    mul_pp r6.xyz, r1.w, r6
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r7.xyz, r1.w, c51
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r1.w, r1, -r6
    mad_pp r2.xyz, r1.w, r7, r2
    nrm_pp r6.xyz, r8
    dp3_sat_pp r1.w, r6, r1
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r7, r4
    add_pp r6.xyz, -c54, v2
    dp3_pp r1.w, r6, r6
    rsq_pp r1.w, r1.w
    mul_pp r6.xyz, r1.w, r6
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r7.xyz, r1.w, c55
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r1.w, r1, -r6
    mad_pp r2.xyz, r1.w, r7, r2
    nrm_pp r6.xyz, r8
    dp3_sat_pp r1.w, r6, r1
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r7, r4
    mad_pp r6.xyz, r5, r0.w, -c10
    mul_pp r5.xyz, r0.w, r5
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r7.xyz, r6
    dp3_sat_pp r1.w, r7, r1
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, c37, r4
    add_pp r6.xyz, r5, r5
    dp3_sat_pp r1.w, r1, r5
    nrm_pp r5.xyz, r6
    dp3_sat_pp r3.w, r5, r1
    dp3_sat_pp r1.x, r1, -c10
    mad_pp r1.xyz, r1.x, c36, r2
    pow_pp r4.w, r3.w, r2.w
    mul_pp r2.x, r4.w, c20.z
    mul_pp r2.yzw, r0.w, c59.xxyz
    mul r5.xyz, r0.w, c58
    mad_pp r1.xyz, r1.w, r5, r1
    mad_pp r2.xyz, r2.x, r2.yzww, r4
    mul_pp r2.xyz, r2, c18
    mul_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, v3.w
    texld_pp r2, v0.zwzw, s10
    mul_pp r2.xyz, r2, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r3, r0
    add_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 196 instruction slots used (8 texture, 188 arithmetic)
