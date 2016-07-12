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
//   float4 g_OffsetParam;
//   float2 g_RefractionParam;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampOffset;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
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
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   g_RefractionParam        c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampEnv                  s3       1
//   sampOffset               s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, -1, 0.5, 1, 0
    def c1, 2, -2, -1, -0.707106769
    def c2, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_cube s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    add_pp r0.xyz, -c42, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c44.z, c44.w
    mul r1.xyz, r0.w, c43
    add_pp r2.xyz, -c46, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r3.xyz, r0.w, c47
    nrm_pp r4.xyz, v5
    nrm_pp r5.xyz, v6
    add_pp r0.w, v7.w, v7.w
    texld_pp r6, v1, s4
    mad r6.xy, r6.wyzw, r0.w, c0.x
    mad r7, r6.xyxy, c151.xyxy, v0
    texld_pp r8, r7.zwzw, s2
    texld_pp r7, r7, s0
    mul_pp r8.x, r8.w, r8.x
    mad_pp r6.zw, r8.xyxy, c1.x, c1.z
    mul_pp r5.xyz, r5, r6.w
    mad_pp r4.xyz, r6.z, r4, r5
    dp2add_sat_pp r0.w, r6.zwzw, r6.zwzw, c0.w
    add r0.w, -r0.w, c0.z
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r5.xyz, v3
    mad r4.xyz, r0.w, r5, r4
    dp3_sat_pp r0.w, r4, -r2
    mul_pp r2.xyz, r3, r0.w
    dp3_sat_pp r0.x, r4, -r0
    mad_pp r0.xyz, r0.x, r1, r2
    add_pp r1.xyz, -c50, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r4, -r1
    mad_sat_pp r1.x, -r1.w, c52.z, c52.w
    mul r1.xyz, r1.x, c51
    mad_pp r0.xyz, r0.w, r1, r0
    add_pp r1.xyz, -c54, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r4, -r1
    mad_sat_pp r1.x, -r1.w, c56.z, c56.w
    mul r1.xyz, r1.x, c55
    mad_pp r0.xyz, r0.w, r1, r0
    dp3_sat_pp r0.w, r4, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    mad_pp r1.xyz, r4, c0.y, c0.y
    mov r2.xyz, c80
    mad r2.xyz, r2, r1.y, c79
    mul_pp r3.xyz, r4, r4
    mul r2.xyz, r2, r3.y
    mov r5.xyz, c77
    mad r1.xyw, c78.xyzz, r1.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r2
    mad_pp r1.xyz, r3.z, r5, r1
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, c16
    mul_pp r1.xyz, r4.y, c91
    mad_pp r1.xyz, r4.x, c90, r1
    mad_pp r1.xyz, r4.z, c92, r1
    mad r0.w, r1.z, -r1.z, c0.z
    mul r1.w, c150.x, c150.x
    mad r0.w, r1.w, -r0.w, c0.z
    cmp r1.w, r0.w, c0.z, c0.w
    mul r0.w, r0.w, r1.w
    mul r1.w, r1.w, c150.x
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mad r0.w, r1.w, -r1.z, r0.w
    mul_pp r1.xy, r1, r0.w
    add r1.zw, c0.y, vPos.xyxy
    mul r1.zw, r1, c24
    mov r2.xzw, c0
    mad r3, c24.zzww, r2.zwwx, r2.wzxw
    mad r1.zw, r1, c1.xyxy, r3.xyxy
    add_pp r1.zw, r3, r1
    mad_pp r1.xy, r1, c1.w, r1.zwzw
    mad_pp r1.xy, r6, c151, r1
    mad r1.xy, r1, c2, c2.x
    texld_pp r1, r1, s11
    mad r0.xyz, r0, r7, -r1
    mul_pp r0.w, r7.w, c16.w
    mul_pp r1.w, r0.w, v7.w
    mad r0.w, r0.w, -v7.w, c0.z
    mul r0.w, r0.w, c63.x
    mad_pp r0.xyz, r1.w, r0, r1
    add_pp r1.xyz, c22, -v2
    nrm r3.xyz, r1
    dp3 r1.x, -r3, r4
    add r1.x, r1.x, r1.x
    mad_pp r1.xyz, r4, -r1.x, -r3
    dp3_sat_pp r1.w, r4, r3
    add_pp r1.w, -r1.w, c0.z
    mad_pp r3.xy, r6, c151, r1
    mov_pp r3.z, -r1.z
    texld_pp r3, r3, s3
    mul r1.x, c64.z, c64.x
    mov r4.xz, c64
    mad r1.y, r4.x, -r4.z, r4.z
    mad_pp r1.x, c77.w, r1.y, r1.x
    mul r0.w, r0.w, r1.x
    mul_pp r1.xyz, r0.w, r3
    mul_pp r0.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r1.w, r0.w
    lrp_pp r1.w, r0.w, r2.z, c62.x
    mad_pp r0.xyz, r1.w, r1, r0
    add r1.xyz, c0.x, v7
    mad_pp r1.xyz, c16.w, r1, r2.z
    mul_pp r0.xyz, r0, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c0.z

// approximately 135 instruction slots used (6 texture, 129 arithmetic)
