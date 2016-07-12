//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
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
//   sampler2D sampDLScatter;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Emission               c19      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, -0.5, 0, 0
    dcl_texcoord2 v0.xyz
    dcl_texcoord3 v1.xyz
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl vPos.xy
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    nrm_pp r0.xyz, v1
    mul r1, r0.y, c91
    mad r1, r0.x, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c0, c0.x
    texld_pp r1, r1, s5
    mul_pp r0.w, r1.w, c16.w
    mul_pp oC0.w, r0.w, v3.w
    add r2.xyz, c22, -v0
    dp3 r0.w, r2, r2
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r0, r2
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r2.xyz, r1.w, c58
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r3.xyz, r0, c0.x, c0.x
    mul_pp r0.xyz, r0, r0
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r0.y, r4
    mov r5.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r0.xyw, r0.x, r3, r4.xyzz
    mad_pp r0.xyz, r0.z, r5, r0.xyww
    add_pp r0.xyz, r2, r0
    mul_pp r0.xyz, r0, c16
    mov_pp r2.xyz, c19
    mul_pp r2.xyz, r2, c17
    mad_pp r0.xyz, r0, r1, r2
    mul_pp r0.xyz, r0, v3
    texld_pp r1, v2.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v2.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 50 instruction slots used (3 texture, 47 arithmetic)
