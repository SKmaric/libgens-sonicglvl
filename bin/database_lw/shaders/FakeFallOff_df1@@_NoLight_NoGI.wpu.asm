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
//   row_major float4x4 g_MtxView;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampFO;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampFO                   s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, -0.5, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    add r1.xyz, c22, -v1
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c60.z, c60.w
    mul r2.xyz, r0.w, c58
    nrm_pp r3.xyz, v2
    dp3_sat_pp r0.w, r3, r1
    mul_pp r1.xyz, r2, r0.w
    dp3_sat_pp r0.w, r3, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r3, c0.x, c0.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul_pp r5.xyz, r3, r3
    mul r4.xyz, r4, r5.y
    mov r6.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r6.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r2.z, c81
    mad_pp r2.xyz, r5.x, r2.xyww, r4
    mad_pp r2.xyz, r5.z, r6, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r2.xy, r3.y, c91
    mad_pp r2.xy, r3.x, c90, r2
    mad_pp r2.xy, r3.z, c92, r2
    mad_pp r2.xy, r2, c0, c0.x
    texld_pp r2, r2, s4
    mul r0.w, c64.w, c64.y
    mov r3.yw, c64
    mad r1.w, r3.y, -r3.w, r3.w
    mad_pp r0.w, c77.w, r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 49 instruction slots used (4 texture, 45 arithmetic)
