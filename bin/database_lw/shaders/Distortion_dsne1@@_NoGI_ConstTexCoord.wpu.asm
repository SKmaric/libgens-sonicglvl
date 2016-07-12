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
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampEnv                  s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    def c1, 2, -1, 0, 1
    def c2, 0.0500000007, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    add_pp r1.xyz, -c50, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    add_pp r7.xyz, c22, -v2
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    mad_pp r8.xyz, r7, r0.w, -r5
    nrm_pp r9.xyz, r8
    nrm_pp r8.xyz, v6
    texld_pp r10, v1, s3
    mul_pp r10.x, r10.w, r10.x
    mad_pp r10.xy, r10, c1.x, c1.y
    mul_pp r8.xyz, r8, r10.y
    nrm_pp r11.xyz, v5
    mad_pp r8.xyz, r10.x, r11, r8
    dp2add_sat_pp r1.w, r10, r10, c1.z
    add r1.w, -r1.w, c1.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r10.xyz, v3
    mad_pp r8.xyz, r1.w, r10, r8
    dp3_sat_pp r1.w, r9, r8
    mov r9.y, c0.y
    mul_pp r2.w, r9.y, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c0.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r9.xyz, r6, r1.w
    mad_pp r10.xyz, r7, r0.w, -r3
    dp3_sat_pp r1.w, r8, -r3
    nrm_pp r3.xyz, r10
    dp3_sat_pp r3.x, r3, r8
    pow_pp r4.w, r3.x, r2.w
    mul_pp r3.x, r4.w, c20.z
    mad_pp r3.xyz, r3.x, r4, r9
    mad_pp r9.xyz, r7, r0.w, -r1
    dp3_sat_pp r1.x, r8, -r1
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.y, r10, r8
    pow_pp r3.w, r1.y, r2.w
    mul_pp r1.y, r3.w, c20.z
    mad_pp r3.xyz, r1.y, r2, r3
    add_pp r9.xyz, -c54, v2
    dp3_pp r1.y, r9, r9
    rsq_pp r1.y, r1.y
    rcp_pp r1.z, r1.y
    mul_pp r9.xyz, r1.y, r9
    mad_sat_pp r1.y, -r1.z, c56.z, c56.w
    mul r10.xyz, r1.y, c55
    mad_pp r11.xyz, r7, r0.w, -r9
    dp3_sat_pp r1.y, r8, -r9
    mad_pp r7.xyz, r7, r0.w, -c10
    nrm_pp r9.xyz, r7
    dp3_sat_pp r0.w, r9, r8
    pow_pp r1.z, r0.w, r2.w
    nrm_pp r7.xyz, r11
    dp3_sat_pp r0.w, r7, r8
    pow_pp r3.w, r0.w, r2.w
    mul_pp r0.w, r3.w, c20.z
    mad_pp r3.xyz, r0.w, r10, r3
    mov r7, c77
    mul_pp r0.w, r7.w, c20.z
    mul_pp r0.w, r1.z, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul r9, r8.y, c91
    mad r9, r8.x, c90, r9
    mad r9, r8.z, c92, r9
    dp4 r0.w, r9, r9
    rsq r0.w, r0.w
    mul r9.zw, r0.w, r9.xyxy
    mad_pp r9.zw, r9, c0.xyxw, c0.x
    texld_pp r11, r9.zwzw, s4
    mul r0.w, c64.z, c64.x
    mov r12.xz, c64
    mad r1.z, r12.x, -r12.z, r12.z
    mad_pp r0.w, c77.w, r1.z, r0.w
    texld r12, v0, s1
    mul r1.z, r12.w, c63.x
    mul r0.w, r0.w, r1.z
    mul_pp r11.xyz, r0.w, r11
    mad_pp r3.xyz, r3, c18, r11
    mul_pp r3.xyz, r12, r3
    mul_pp r3.xyz, r3, v3.w
    dp3_sat_pp r0.w, r8, -r5
    mul_pp r5.xyz, r6, r0.w
    mad_pp r4.xyz, r1.w, r4, r5
    mad_pp r1.xzw, r1.x, r2.xyyz, r4.xyyz
    mad_pp r1.xyz, r1.y, r10, r1.xzww
    dp3_sat_pp r0.w, r8, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r8, c0.x, c0.x
    mul_pp r4.xyz, r8, r8
    mov r5.xyz, c80
    mad r5.xyz, r5, r2.y, c79
    mul r5.xyz, r4.y, r5
    mad r2.xyw, c78.xyzz, r2.x, r7.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r2.z, c81
    mad_pp r2.xyz, r4.x, r2.xyww, r5
    mad_pp r2.xyz, r4.z, r6, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r3
    mul r0.w, c24.w, vPos.y
    mad_pp r1.y, r0.w, -c1.x, -c1.y
    mov r2.y, c1.y
    dp2add_pp r1.x, vPos.x, c24.z, r2.y
    mad_pp r1.xy, r9, c2.x, r1
    mad r1.xy, r1, c0.xwzw, c0.x
    texld_pp r1, r1, s11
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 165 instruction slots used (6 texture, 159 arithmetic)
