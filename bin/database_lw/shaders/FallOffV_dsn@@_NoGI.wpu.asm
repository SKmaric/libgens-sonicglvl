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
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
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
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    def c1, 10, 4, 0, 0
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
    dcl_2d s2
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
    nrm_pp r7.xyz, v6
    texld_pp r8, v1, s2
    mul_pp r8.x, r8.w, r8.x
    mad_pp r8.xy, r8, c0.y, c0.z
    mul_pp r7.xyz, r7, r8.y
    nrm_pp r9.xyz, v5
    mad_pp r7.xyz, r8.x, r9, r7
    dp2add_sat_pp r0.w, r8, r8, c0.w
    add r0.w, -r0.w, -c0.z
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r8.xyz, v3
    mad_pp r7.xyz, r0.w, r8, r7
    add_pp r9.xyz, c22, -v2
    dp3_pp r0.w, r9, r9
    rsq_pp r0.w, r0.w
    mad_pp r10.xyz, r9, r0.w, -r5
    dp3_sat_pp r1.w, r7, -r5
    mul_pp r5.xyz, r6, r1.w
    nrm_pp r11.xyz, r10
    dp3_sat_pp r1.w, r11, r7
    mov r10.yz, c20
    mul_pp r2.w, r10.y, c1.x
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.y
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r6.xyz, r6, r1.w
    mad_pp r10.xyw, r9.xyzz, r0.w, -r3.xyzz
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r3.xyz, r1.w, r4, r5
    nrm_pp r5.xyz, r10.xyww
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r4, r6
    mad_pp r5.xyz, r9, r0.w, -r1
    dp3_sat_pp r1.x, r7, -r1
    mad_pp r1.xyz, r1.x, r2, r3
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r2, r4
    add_pp r3.xyz, -c54, v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_sat_pp r1.w, -r3.w, c56.z, c56.w
    mul r4.xyz, r1.w, c55
    mad_pp r5.xyz, r9, r0.w, -r3
    dp3_sat_pp r1.w, r7, -r3
    mad_pp r1.xyz, r1.w, r4, r1
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r4, r2
    mad_pp r3.xyz, r9, r0.w, -c10
    mul_pp r4.xyz, r0.w, r9
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r10.z, c77.w
    mul_pp r1.w, r3.x, r1.w
    mad_pp r2.xyz, r1.w, c37, r2
    add_pp r3.xyz, r4, r4
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mul_pp r3.xyz, r0.w, c59
    mul r5.xyz, r0.w, c58
    mad_pp r2.xyz, r1.w, r3, r2
    mul_pp r2.xyz, r2, c18
    texld_pp r3, v0, s1
    mul_pp r2.xyz, r2, r3
    mul_pp r2.xyz, r2, v3.w
    dp3_sat_pp r0.w, r7, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    dp3_sat_pp r0.w, r7, r4
    dp3_pp r1.w, r8, r4
    mad_pp r1.xyz, r0.w, r5, r1
    mad_pp r3.xyz, r7, c0.x, c0.x
    mul_pp r4.xyz, r7, r7
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mad_pp r3.xyz, r4.x, r3.xyww, r5
    mad_pp r3.xyz, r4.z, r6, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mul r0.w, c64.w, c64.y
    mov r2.yw, c64
    mad r1.x, r2.y, -r2.w, r2.w
    mad_pp r0.w, c77.w, r1.x, r0.w
    mov r1.z, c0.z
    add_pp r1.x, -r1.z, c150.w
    add_sat_pp r1.x, -r1.w, r1.x
    pow_pp r2.x, r1.x, c150.z
    mad_pp r1.x, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.x, v7
    mad_pp r0.xyz, r1, r0.w, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 177 instruction slots used (5 texture, 172 arithmetic)
