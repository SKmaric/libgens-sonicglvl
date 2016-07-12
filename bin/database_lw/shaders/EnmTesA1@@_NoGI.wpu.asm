//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_EnmTes1;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
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
//   sampler2D sampHighLight;
//   sampler2D sampLev;
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
//   g_Emission               c19      1
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_EnmTes1                c150     1
//   sampDif                  s0       1
//   sampLev                  s1       1
//   sampSpe                  s2       1
//   sampHighLight            s3       1
//   sampEnv                  s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 1, 10, 4
    def c1, 0.5, -0.5, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    add_pp r1.xyz, -c42, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r0.w, c43
    add_pp r3.xyz, -c46, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r4.xyz, r0.w, c47
    nrm_pp r5.xyz, v2
    dp3_pp r0.w, r5, -r3
    add_pp r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mul_pp r6.xyz, r4, r0.w
    mad_pp r7.xyz, r1.w, r5, r3
    mul_pp r8.xyz, r7.y, c91
    mad_pp r7.xyw, r7.x, c90.xyzz, r8.xyzz
    mad_pp r7.xyz, r7.z, c92, r7.xyww
    add_pp r7.w, r7.z, c0.y
    dp3_pp r0.w, r7.xyww, r7.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r7.xy, r7, r0.w, c0.x
    texld_pp r7, r7, s3
    mul_pp r7.xyz, r4, r7
    dp3_pp r0.w, r5, -r1
    add_pp r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mad_pp r6.xyz, r0.w, r2, r6
    mad_pp r8.xyz, r1.w, r5, r1
    mul_pp r9.xyz, r8.y, c91
    mad_pp r8.xyw, r8.x, c90.xyzz, r9.xyzz
    mad_pp r8.xyz, r8.z, c92, r8.xyww
    add_pp r8.w, r8.z, c0.y
    dp3_pp r0.w, r8.xyww, r8.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r8.xy, r8, r0.w, c0.x
    texld_pp r8, r8, s3
    mad_pp r7.xyz, r2, r8, r7
    add_pp r8.xyz, -c50, v1
    dp3_pp r0.w, r8, r8
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r8.xyz, r0.w, r8
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r9.xyz, r0.w, c51
    dp3_pp r0.w, r5, -r8
    add_pp r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mad_pp r6.xyz, r0.w, r9, r6
    mad_pp r10.xyz, r1.w, r5, r8
    mul_pp r11.xyz, r10.y, c91
    mad_pp r10.xyw, r10.x, c90.xyzz, r11.xyzz
    mad_pp r10.xyz, r10.z, c92, r10.xyww
    add_pp r10.w, r10.z, c0.y
    dp3_pp r0.w, r10.xyww, r10.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r10.xy, r10, r0.w, c0.x
    texld_pp r10, r10, s3
    mad_pp r7.xyz, r9, r10, r7
    add_pp r10.xyz, -c54, v1
    dp3_pp r0.w, r10, r10
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r10.xyz, r0.w, r10
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r11.xyz, r0.w, c55
    dp3_pp r0.w, r5, -r10
    add_pp r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mad_pp r6.xyz, r0.w, r11, r6
    mad_pp r12.xyz, r1.w, r5, r10
    mul_pp r13.xyz, r12.y, c91
    mad_pp r12.xyw, r12.x, c90.xyzz, r13.xyzz
    mad_pp r12.xyz, r12.z, c92, r12.xyww
    add_pp r12.w, r12.z, c0.y
    dp3_pp r0.w, r12.xyww, r12.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r12.xy, r12, r0.w, c0.x
    texld_pp r12, r12, s3
    mad_pp r7.xyz, r11, r12, r7
    dp3_pp r0.w, r5, -c10
    add_pp r1.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mul r0.w, r0.w, c77.w
    mad_pp r6.xyz, r0.w, c36, r6
    mad_pp r12.xyz, r1.w, r5, c10
    mul_pp r13.xyz, r12.y, c91
    mad_pp r12.xyw, r12.x, c90.xyzz, r13.xyzz
    mad_pp r12.xyz, r12.z, c92, r12.xyww
    add_pp r12.w, r12.z, c0.y
    dp3_pp r0.w, r12.xyww, r12.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r12.xy, r12, r0.w, c0.x
    texld_pp r12, r12, s3
    mul_pp r12.xyz, r12, c37
    mad_pp r7.xyz, r12, c77.w, r7
    add r12.xyz, c22, -v1
    dp3 r0.w, r12, r12
    rsq r0.w, r0.w
    mul_pp r13.xyz, r0.w, r12
    dp3_pp r1.w, r5, r13
    add_pp r2.w, r1.w, r1.w
    mov_sat_pp r1.w, r1.w
    mad_pp r14.xyz, r2.w, r5, -r13
    add_pp r13.xyz, r13, r13
    nrm_pp r15.xyz, r13
    dp3_sat_pp r2.w, r15, r5
    mul_pp r13.xyz, r14.y, c91
    mad_pp r13.xyz, r14.x, c90, r13
    mad_pp r13.xyz, r14.z, c92, r13
    add_pp r13.w, r13.z, c0.y
    dp3_pp r3.w, r13.xyww, r13.xyww
    rsq_pp r3.w, r3.w
    rcp_pp r3.w, r3.w
    add_pp r3.w, r3.w, r3.w
    rcp r3.w, r3.w
    mad_pp r13.xy, r13, r3.w, c0.x
    texld_pp r13, r13, s3
    mul_pp r13.xyz, r13, c59
    rcp r3.w, r0.w
    mad_sat_pp r3.w, -r3.w, c60.z, c60.w
    mad_pp r7.xyz, r3.w, r13, r7
    mul_pp r7.xyz, r7, c18
    texld_pp r13, v0, s2
    mul_pp r7.xyz, r7, r13.w
    mad_pp r3.xyz, r12, r0.w, -r3
    nrm_pp r14.xyz, r3
    dp3_sat_pp r3.x, r14, r5
    mov r3.yz, c0
    mul_pp r3.z, r3.z, c20.y
    exp_pp r3.z, r3.z
    mul_pp r3.z, r3.z, c0.w
    pow_pp r4.w, r3.x, r3.z
    mul_pp r3.x, r4.w, c20.z
    mul_pp r4.xyz, r4, r3.x
    mad_pp r1.xyz, r12, r0.w, -r1
    nrm_pp r14.xyz, r1
    dp3_sat_pp r1.x, r14, r5
    pow_pp r4.w, r1.x, r3.z
    mul_pp r1.x, r4.w, c20.z
    mad_pp r1.xyz, r1.x, r2, r4
    mad_pp r2.xyz, r12, r0.w, -r8
    nrm_pp r4.xyz, r2
    dp3_sat_pp r2.x, r4, r5
    pow_pp r4.x, r2.x, r3.z
    mul_pp r2.x, r4.x, c20.z
    mad_pp r1.xyz, r2.x, r9, r1
    mad_pp r2.xyz, r12, r0.w, -r10
    mad_pp r4.xyz, r12, r0.w, -c10
    nrm_pp r8.xyz, r4
    dp3_sat_pp r0.w, r8, r5
    pow_pp r4.x, r0.w, r3.z
    nrm_pp r8.xyz, r2
    dp3_sat_pp r0.w, r8, r5
    pow_pp r2.x, r0.w, r3.z
    pow_pp r0.w, r2.w, r3.z
    mul_pp r0.w, r0.w, c20.z
    mul_pp r2.x, r2.x, c20.z
    mad_pp r1.xyz, r2.x, r11, r1
    mov r2, c77
    mul_pp r2.w, r2.w, c20.z
    mul_pp r2.w, r4.x, r2.w
    mad_pp r1.xyz, r2.w, c37, r1
    mul_pp r4.xyz, r3.w, c59
    mul r3.xzw, r3.w, c58.xyyz
    mad_pp r3.xzw, r1.w, r3, r6.xyyz
    mad_pp r1.xyz, r0.w, r4, r1
    mul_pp r1.xyz, r1, c18
    mul r4.xy, c150.y, v0
    texld r4, r4, s1
    mul_pp r1.xyz, r1, r4
    mad_pp r1.xyz, r1, r13.w, r7
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r2.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, c77.w, r2.w, r0.w
    mul r4, r5.y, c91
    mad r4, r5.x, c90, r4
    mad r4, r5.z, c92, r4
    dp4 r2.w, r4, r4
    rsq r2.w, r2.w
    mul r4.xy, r2.w, r4
    mad_pp r4.xy, r4, c1, c1.x
    texld_pp r4, r4, s4
    mul_pp r4.xyz, r4, c63.x
    mul_pp r4.xyz, r13, r4
    mad_pp r1.xyz, r4, r0.w, r1
    mul_pp r1.xyz, r1, v2.w
    mad_pp r4.xyz, r5, c0.x, c0.x
    mul_pp r5.xyz, r5, r5
    mov r6.xyz, c80
    mad r6.xyz, r6, r4.y, c79
    mul r6.xyz, r5.y, r6
    mad r2.xyz, c78, r4.x, r2
    mov r7.xyz, c82
    mad r4.xyz, r7, r4.z, c81
    mad_pp r2.xyz, r5.x, r2, r6
    mad_pp r2.xyz, r5.z, r4, r2
    mad_pp r2.xyz, r2, c17, r3.xzww
    add r0.w, r3.y, -c150.x
    mad_pp r2.w, r1.w, -r0.w, c0.y
    mul_pp r0.w, r0.w, r1.w
    mul_pp r3.xyz, r2.w, c19
    mad_pp r3.xyz, c16, r0.w, r3
    mul_pp r2.xyz, r2, r3
    mad_pp r0.xyz, r2, r0, r1
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 262 instruction slots used (12 texture, 250 arithmetic)
