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
//   float4 g_Specular;
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
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   sampDif                  s0       1
//   sampSpe                  s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
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
    mov r7.y, c20.y
    mul_pp r0.w, r7.y, c0.x
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add_pp r7.xyz, c22, -v2
    dp3_pp r1.w, r7, r7
    rsq_pp r1.w, r1.w
    mad_pp r8.xyz, r7, r1.w, -r5
    nrm_pp r9.xyz, r8
    nrm_pp r8.xyz, v3
    dp3_sat_pp r2.w, r9, r8
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r9.xyz, r6, r2.w
    mad_pp r10.xyz, r7, r1.w, -r3
    dp3_sat_pp r2.w, r8, -r3
    nrm_pp r3.xyz, r10
    dp3_sat_pp r3.x, r3, r8
    pow_pp r4.w, r3.x, r0.w
    mul_pp r3.x, r4.w, c20.z
    mad_pp r3.xyz, r3.x, r4, r9
    mad_pp r9.xyz, r7, r1.w, -r1
    dp3_sat_pp r1.x, r8, -r1
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.y, r10, r8
    pow_pp r3.w, r1.y, r0.w
    mul_pp r1.y, r3.w, c20.z
    mad_pp r3.xyz, r1.y, r2, r3
    add_pp r9.xyz, -c54, v2
    dp3_pp r1.y, r9, r9
    rsq_pp r1.y, r1.y
    rcp_pp r1.z, r1.y
    mul_pp r9.xyz, r1.y, r9
    mad_sat_pp r1.y, -r1.z, c56.z, c56.w
    mul r10.xyz, r1.y, c55
    mad_pp r11.xyz, r7, r1.w, -r9
    dp3_sat_pp r1.y, r8, -r9
    mad_pp r7.xyz, r7, r1.w, -c10
    nrm_pp r9.xyz, r7
    dp3_sat_pp r1.z, r9, r8
    pow_pp r3.w, r1.z, r0.w
    nrm_pp r7.xyz, r11
    dp3_sat_pp r1.z, r7, r8
    pow_pp r4.w, r1.z, r0.w
    mul_pp r0.w, r4.w, c20.z
    mad_pp r3.xyz, r0.w, r10, r3
    texld r7, v0.zwzw, s10
    mul_pp r0.w, r7.w, c20.z
    mul_pp r0.w, r3.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    texld_pp r9, v1.zwzw, s2
    mul_pp r3.xyz, r3, r9
    mul_pp r3.xyz, r3, v3.w
    dp3_sat_pp r0.w, r8, -r5
    dp3_sat_pp r1.z, r8, -c10
    mul r1.z, r1.z, r7.w
    mul_pp r5.xyz, r6, r0.w
    mad_pp r4.xyz, r2.w, r4, r5
    mad_pp r2.xyz, r1.x, r2, r4
    mad_pp r1.xyw, r1.y, r10.xyzz, r2.xyzz
    mad_pp r1.xyz, r1.z, c36, r1.xyww
    mad_pp r1.xyz, r7, r7, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r3
    mad_pp r0.xyz, v5, c17, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 113 instruction slots used (4 texture, 109 arithmetic)
