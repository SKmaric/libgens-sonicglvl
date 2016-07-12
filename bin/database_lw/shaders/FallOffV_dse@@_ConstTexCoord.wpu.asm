//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
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
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 1, 0.5
    def c1, -1, 1, 0, 0.5
    def c2, 0.25, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1.xyz, -c50, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v1
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    mov r7.xz, c0
    mul_pp r0.w, r7.x, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add_pp r8, c22.xyzx, -v1.xyzx
    dp3_pp r1.w, r8.yzww, r8.yzww
    rsq_pp r1.w, r1.w
    mad_pp r7.xyw, r8.xyzz, r1.w, -r5.xyzz
    nrm_pp r9.xyz, r7.xyww
    nrm r10, v2.xyzx
    dp3_sat_pp r2.w, r9, r10
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r7.xyw, r6.xyzz, r2.w
    mad_pp r9.xyz, r8, r1.w, -r3
    dp3_sat_pp r2.w, r10.wyzw, -r3
    nrm_pp r3.xyz, r9
    dp3_sat_pp r3.x, r3, r10
    pow_pp r4.w, r3.x, r0.w
    mul_pp r3.x, r4.w, c20.z
    mad_pp r3.xyz, r3.x, r4, r7.xyww
    mad_pp r7.xyw, r8.xyzz, r1.w, -r1.xyzz
    dp3_sat_pp r1.x, r10.wyzw, -r1
    nrm_pp r9.xyz, r7.xyww
    dp3_sat_pp r1.y, r9, r10
    pow_pp r3.w, r1.y, r0.w
    mul_pp r1.y, r3.w, c20.z
    mad_pp r3.xyz, r1.y, r2, r3
    add_pp r7.xyw, -c54.xyzz, v1.xyzz
    dp3_pp r1.y, r7.xyww, r7.xyww
    rsq_pp r1.y, r1.y
    rcp_pp r1.z, r1.y
    mul_pp r7.xyw, r1.y, r7
    mad_sat_pp r1.y, -r1.z, c56.z, c56.w
    mul r9.xyz, r1.y, c55
    mad_pp r11.xyz, r8, r1.w, -r7.xyww
    dp3_sat_pp r1.y, r10.wyzw, -r7.xyww
    nrm_pp r12.xyz, r11
    dp3_sat_pp r1.z, r12, r10
    pow_pp r3.w, r1.z, r0.w
    mul_pp r1.z, r3.w, c20.z
    mad_pp r3.xyz, r1.z, r9, r3
    mad_pp r7.xyw, r8.xyzz, r1.w, -c10.xyzz
    mul r8, r1.w, r8
    nrm_pp r11.xyz, r7.xyww
    dp3_sat_pp r1.z, r11, r10
    pow_pp r3.w, r1.z, r0.w
    texld r11, v0.zwzw, s10
    mul_pp r0.w, r11.w, c20.z
    mul_pp r0.w, r3.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    dp3 r0.w, r8.yzww, r10.yzww
    add r1.z, r0.w, r0.w
    mad r8, r1.z, r10, -r8
    mul r12, r8.wyzw, c1.xxyz
    mad r13, r8, c1.yxxz, c1.zzzw
    cmp r8, r8.z, r12, r13
    add r1.z, r8.z, c0.z
    rcp r1.z, r1.z
    mad r1.zw, r8.xyyx, r1.z, c0.z
    mad_pp r7.x, r1.w, c2.x, r8.w
    mul_pp r7.y, r1.z, c0.w
    texld_pp r8, r7, s5
    mul r1.zw, c64, c64.xyxy
    mov r12, c64
    mad r7.xy, r12, -r12.zwzw, r12.zwzw
    mad_pp r1.zw, r11.w, r7.xyxy, r1
    texld r12, v0, s1
    mul r3.w, r12.w, c63.x
    mul r1.z, r1.z, r3.w
    mul_pp r7.xyw, r1.z, r8.xyzz
    mad_pp r3.xyz, r3, c18, r7.xyww
    mul_pp r3.xyz, r12, r3
    mul_pp r3.xyz, r3, v2.w
    dp3_sat_pp r1.z, r10.wyzw, -r5
    dp3_sat_pp r3.w, r10.wyzw, -c10
    mul r3.w, r3.w, r11.w
    mul_pp r5.xyz, r11, r11
    mul_pp r6.xyz, r6, r1.z
    mad_pp r4.xyz, r2.w, r4, r6
    mad_pp r2.xyz, r1.x, r2, r4
    mad_pp r1.xyz, r1.y, r9, r2
    mad_pp r1.xyz, r3.w, c36, r1
    mad_pp r1.xyz, r5, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r3
    add_pp r1.x, r7.z, c150.w
    add_sat_pp r0.w, -r0.w, r1.x
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v4
    mad_pp r0.xyz, r1, r1.w, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 142 instruction slots used (5 texture, 137 arithmetic)
