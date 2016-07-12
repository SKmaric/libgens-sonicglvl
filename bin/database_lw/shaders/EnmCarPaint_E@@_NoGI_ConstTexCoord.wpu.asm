//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EnmCarPaint;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
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
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampFlake;
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_EnmCarPaint            c150     1
//   g_EmissionParam          c151     1
//   sampDif                  s0       1
//   sampFlake                s1       1
//   sampSpe                  s2       1
//   sampEnv                  s4       1
//   sampEmi                  s6       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s6
    dcl_2d s9
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    mov r6.y, c0.y
    mul_pp r0.w, r6.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r6.xyz, c22, -v2
    dp3_pp r1.w, r6, r6
    rsq_pp r1.w, r1.w
    mad_pp r7.xyz, r6, r1.w, -r4
    nrm_pp r8.xyz, r7
    nrm_pp r7.xyz, v3
    dp3_sat_pp r2.w, r8, r7
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r8.xyz, r5, r2.w
    mad_pp r9.xyz, r6, r1.w, -r2
    dp3_sat_pp r2.x, r7, -r2
    nrm_pp r10.xyz, r9
    dp3_sat_pp r2.y, r10, r7
    pow_pp r3.w, r2.y, r0.w
    mul_pp r2.y, r3.w, c20.z
    mad_pp r2.yzw, r2.y, r3.xxyz, r8.xxyz
    mad_pp r8.xyz, r6, r1.w, -r0
    dp3_sat_pp r0.x, r7, -r0
    nrm_pp r9.xyz, r8
    dp3_sat_pp r0.y, r9, r7
    pow_pp r3.w, r0.y, r0.w
    mul_pp r0.y, r3.w, c20.z
    mad_pp r2.yzw, r0.y, r1.xxyz, r2
    add_pp r8.xyz, -c54, v2
    dp3_pp r0.y, r8, r8
    rsq_pp r0.y, r0.y
    rcp_pp r0.z, r0.y
    mul_pp r8.xyz, r0.y, r8
    mad_sat_pp r0.y, -r0.z, c56.z, c56.w
    mul r9.xyz, r0.y, c55
    mad_pp r10.xyz, r6, r1.w, -r8
    dp3_sat_pp r0.y, r7, -r8
    mad_pp r6.xyz, r6, r1.w, -c10
    nrm_pp r8.xyz, r6
    dp3_sat_pp r0.z, r8, r7
    pow_pp r1.w, r0.z, r0.w
    nrm_pp r6.xyz, r10
    dp3_sat_pp r0.z, r6, r7
    pow_pp r3.w, r0.z, r0.w
    mul_pp r0.z, r3.w, c20.z
    mad_pp r2.yzw, r0.z, r9.xxyz, r2
    mov r6, c77
    mul_pp r0.z, r6.w, c20.z
    mul_pp r0.z, r1.w, r0.z
    mad_pp r2.yzw, r0.z, c37.xxyz, r2
    mul_pp r2.yzw, r2, c18.xxyz
    mul r8, r7.y, c91
    mad r8, r7.x, c90, r8
    mad r8, r7.z, c92, r8
    dp4 r0.z, r8, r8
    rsq r0.z, r0.z
    mul r0.zw, r0.z, r8.xyxy
    mad_pp r0.zw, r0, c0.xyxw, c0.x
    texld_pp r8, r0.zwzw, s4
    mul_pp r8.xyz, r8, c63.x
    texld_pp r10, v0, s2
    mul_pp r8.xyz, r8, r10
    mul r0.zw, c150.x, v0.xyxy
    texld r11, r0.zwzw, s1
    mul_pp r8.xyz, r8, r11
    mul r0.z, c64.z, c64.x
    mov r10.xz, c64
    mad r0.w, r10.x, -r10.z, r10.z
    mad_pp r0.z, c77.w, r0.w, r0.z
    mul_pp r8.xyz, r0.z, r8
    mad_pp r2.yzw, r2, r10.w, r8.xxyz
    mul_pp r2.yzw, r2, v3.w
    dp3_sat_pp r0.z, r7, -r4
    mul_pp r4.xyz, r5, r0.z
    mad_pp r3.xyz, r2.x, r3, r4
    mad_pp r0.xzw, r0.x, r1.xyyz, r3.xyyz
    mad_pp r0.xyz, r0.y, r9, r0.xzww
    dp3_sat_pp r0.w, r7, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    mad_pp r1.xyz, r7, c0.x, c0.x
    mul_pp r3.xyz, r7, r7
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.y, c79
    mul r4.xyz, r3.y, r4
    mad r1.xyw, c78.xyzz, r1.x, r6.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r4
    mad_pp r1.xyz, r3.z, r5, r1
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r2.yzww
    mul_pp r1.w, r1.w, c16.w
    texld r2, v1.zwzw, s6
    add_pp r2.xyz, r2, c151
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c151.w, r0
    mul_pp r0, r1, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 146 instruction slots used (6 texture, 140 arithmetic)
