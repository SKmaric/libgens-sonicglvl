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
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_EmissionParam          c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEmi                  s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v5.w
    mov r1.y, c0.y
    mul_pp r0.w, r1.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r1.xyz, c22, -v2
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    mul_pp r2.xyz, r1.w, r1
    mad_pp r1.xyz, r1, r1.w, -c10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r3.xyz, r1
    add_pp r1.xyz, r2, r2
    nrm_pp r4.xyz, r1
    nrm_pp r1.xyz, v3
    dp3_sat_pp r2.w, r4, r1
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r4.xyz, r1.w, c59
    mul r5.xyz, r1.w, c58
    mul_pp r4.xyz, r2.w, r4
    dp3_sat_pp r1.w, r3, r1
    pow_pp r2.w, r1.w, r0.w
    mov r3, c77
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r4.xyz, r0.w, c37, r4
    mul_pp r4.xyz, r4, c18
    texld_pp r6, v0, s1
    mul_pp r4.xyz, r4, r6
    mul_pp r4.xyz, r4, v3.w
    dp3_sat_pp r0.w, r1, r2
    mul_pp r2.xyz, r5, r0.w
    dp3_sat_pp r0.w, r1, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r5.xyz, r1, c0.x, c0.x
    mul_pp r1.xyz, r1, r1
    mov r6.xyz, c80
    mad r6.xyz, r6, r5.y, c79
    mul r6.xyz, r1.y, r6
    mad r3.xyz, c78, r5.x, r3
    mov r7.xyz, c82
    mad r5.xyz, r7, r5.z, c81
    mad_pp r1.xyw, r1.x, r3.xyzz, r6.xyzz
    mad_pp r1.xyz, r1.z, r5, r1.xyww
    add_pp r1.xyz, r2, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r4
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c150
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c150.w
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 76 instruction slots used (5 texture, 71 arithmetic)
