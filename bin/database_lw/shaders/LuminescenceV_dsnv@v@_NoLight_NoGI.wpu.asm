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
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmiMask;
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
//   mrgTexcoordIndex         c26      3
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   sampDif                  s0       1
//   sampSpe                  s2       1
//   sampNrm                  s4       1
//   sampEmiMask              s6       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 10
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s4
    dcl_2d s6
    dcl_2d s9
    dcl_2d s11
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c2.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s0
    mul_pp oC0.w, r2.w, c16.w
    cmp r1.yz, -r0_abs.x, v0.xxyw, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    frc r0.w, c27.z
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c27.z
    cmp r1.y, c27.z, r1.x, r1.y
    add r0.w, r0.w, r1.y
    add r3, r0.w, -c2
    cmp r1.yz, -r3_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r3_abs.y, v0.xzww, r1
    cmp r1.yz, -r3_abs.z, v1.xxyw, r1
    cmp r1.yz, -r3_abs.w, v1.xzww, r1
    texld_pp r3, r1.yzzw, s4
    mul_pp r3.x, r3.w, r3.x
    mad_pp r1.yz, r3.xxyw, c0.y, c0.z
    nrm_pp r3.xyz, v6
    mul_pp r3.xyz, r1.z, r3
    nrm_pp r4.xyz, v5
    mad_pp r3.xyz, r1.y, r4, r3
    dp2add_sat_pp r0.w, r1.yzzw, r1.yzzw, c2.x
    add r0.w, -r0.w, c2.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r1.yzw, r0.w, r4.xxyz, r3.xxyz
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r4.xyz, r0.w, r3
    mad_pp r3.xyz, r3, r0.w, -c10
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r5.xyz, r3
    dp3_sat_pp r2.w, r5, r1.yzww
    add_pp r3.xyz, r4, r4
    dp3_sat_pp r3.w, r1.yzww, r4
    nrm_pp r4.xyz, r3
    dp3_sat_pp r3.x, r4, r1.yzww
    mov r4.w, c0.w
    mul_pp r3.y, r4.w, c20.y
    exp_pp r3.y, r3.y
    mul_pp r3.y, r3.y, c1.x
    pow_pp r4.x, r3.x, r3.y
    pow_pp r4.y, r2.w, r3.y
    mul_pp r2.w, r4.x, c20.z
    mul_pp r3.xyz, r0.w, c59
    mul r4.xzw, r0.w, c58.xyyz
    mul_pp r4.xzw, r3.w, r4
    mul_pp r3.xyz, r2.w, r3
    mov r5, c77
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r4.y, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    mul_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, v3.w
    mad_pp r3.xyz, r1.yzww, c0.x, c0.x
    mov r6.xyz, c80
    mad r6.xyz, r6, r3.y, c79
    mul_pp r7.xyz, r1.yzww, r1.yzww
    dp3_sat_pp r0.w, r1.yzww, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.yzw, r0.w, c36.xxyz, r4.xxzw
    mul r4.xyz, r6, r7.y
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r3.xyz, r7.x, r3.xyww, r4
    mad_pp r3.xyz, r7.z, r5, r3
    add_pp r1.yzw, r1, r3.xxyz
    mul_pp r1.yzw, r1, c16.xxyz
    mad_pp r0.xyz, r1.yzww, r2, r0
    frc r0.w, c28.x
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c28.x
    cmp r1.x, c28.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c2
    cmp r2.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r1, r1, s6
    mul_pp r2.xyz, c17, v7
    mad_pp r0.xyz, r2, r1, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 125 instruction slots used (6 texture, 119 arithmetic)
