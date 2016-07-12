//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
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
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_EmissionParam          c150     1
//   sampDif                  s0       1
//   sampEmi                  s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v5.w
    add r1.xyz, c22, -v2
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c60.z, c60.w
    mul r2.xyz, r0.w, c58
    nrm_pp r3.xyz, v3
    dp3_sat_pp r0.w, r3, r1
    mul_pp r1.xyz, r2, r0.w
    dp3_sat_pp r0.w, r3, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r3, c0.x, c0.x
    mul_pp r3.xyz, r3, r3
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r2.xyz, r3.x, r2.xyww, r4
    mad_pp r2.xyz, r3.z, r5, r2
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v1.zwzw, s4
    add r2.xyz, r2, c150
    mul r2.xyz, r2, c17
    mul_pp r2.xyz, r2, c150.w
    mul_pp r2.xyz, r2, c17
    mad_pp r0.xyz, r1, r0, r2
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 46 instruction slots used (4 texture, 42 arithmetic)
