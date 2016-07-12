//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   sampler2D g_DepthSampler;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   float2 mrgMystParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   g_MtxInvProjection       c4       4
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
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
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   mrgMystParam             c150     1
//   sampDif                  s0       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//   g_DepthSampler           s12      1
//

    ps_3_0
    def c0, 2, -2, 0.5, -0.5
    def c1, 0.5, 1, 0, -1
    def c2, 0.00389099144, 1.51991853e-005, 0.99609381, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s9
    dcl_2d s11
    dcl_2d s12
    add r0.xy, c1.x, vPos
    mul r0.xy, r0, c24.zwzw
    mov r1.yzw, c1
    mad r1, c24.zzww, r1.yzzw, r1.zywz
    mad r0.zw, r0.xyxy, c0.xyxy, r1.xyxy
    texld r2, r0, s11
    add r0.xy, r1.zwzw, r0.zwzw
    mul r0.zw, r0.y, c5
    mad r0.zw, r0.x, c4, r0
    mad r0.xy, r0, c0.zwzw, c0.z
    texld r1, r0, s12
    dp3 r0.x, r1.xyww, c2
    mad r0.xy, r0.x, c6.zwzw, r0.zwzw
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mad r0.x, r0.x, -r0.y, -v1.w
    add r0.x, r0.x, -c150.x
    rcp r0.y, c150.y
    mul_sat_pp r0.x, r0.y, r0.x
    texld_pp r1, v0, s0
    mul_pp r0.y, r1.w, c16.w
    mul_pp r0.y, r0.y, v4.w
    mul_pp oC0.w, r0.x, r0.y
    add_pp r0.xyz, -c42, v1
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v1
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    nrm_pp r6.xyz, v2
    dp3_sat_pp r0.w, r6, -r4
    mul_pp r4.xyz, r5, r0.w
    dp3_sat_pp r0.x, r6, -r0
    mad_pp r0.xyz, r0.x, r3, r4
    add_pp r3.xyz, -c50, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    dp3_sat_pp r0.w, r6, -r3
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r3.xyz, r1.w, c51
    mad_pp r0.xyz, r0.w, r3, r0
    add_pp r3.xyz, -c54, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    dp3_sat_pp r0.w, r6, -r3
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r3.xyz, r1.w, c55
    mad_pp r0.xyz, r0.w, r3, r0
    dp3_sat_pp r0.w, r6, -c10
    mad_pp r0.xyz, r0.w, c36, r0
    add r3.xyz, c22, -v1
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    dp3_sat_pp r0.w, r6, r3
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r3.xyz, r1.w, c58
    mad_pp r0.xyz, r0.w, r3, r0
    mad_pp r3.xyz, r6, c1.x, c1.x
    mul_pp r4.xyz, r6, r6
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul r5.xyz, r4.y, r5
    mov r6.xyz, c78
    mad r3.xyw, r6.xyzz, r3.x, c77.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mad_pp r3.xyz, r4.x, r3.xyww, r5
    mad_pp r3.xyz, r4.z, r6, r3
    mad_pp r0.xyz, r3, c17, r0
    mul_pp r0.xyz, r0, c16
    mul_pp r0.xyz, r1, r0
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r2
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 93 instruction slots used (4 texture, 89 arithmetic)
