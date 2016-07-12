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
//   mrgTexcoordIndex         c26      3
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   sampDif                  s0       1
//   sampSpe                  s2       1
//   sampNrm                  s4       1
//   sampEmiMask              s6       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 10, 4
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s4
    dcl_2d s6
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c1.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c1
    add r0, r0.y, -c1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s0
    mul_pp oC0.w, r2.w, c16.w
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    frc r0.w, c27.z
    cmp r1.y, -r0.w, c1.x, c1.y
    add r0.w, -r0.w, c27.z
    cmp r1.y, c27.z, r1.x, r1.y
    add r0.w, r0.w, r1.y
    add r3, r0.w, -c1
    cmp r1.yz, -r3_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r3_abs.y, v0.xzww, r1
    cmp r1.yz, -r3_abs.z, v1.xxyw, r1
    cmp r1.yz, -r3_abs.w, v1.xzww, r1
    texld_pp r3, r1.yzzw, s4
    mul_pp r3.x, r3.w, r3.x
    mad_pp r1.yz, r3.xxyw, c0.x, c0.y
    nrm_pp r3.xyz, v6
    mul_pp r3.xyz, r1.z, r3
    nrm_pp r4.xyz, v5
    mad_pp r3.xyz, r1.y, r4, r3
    dp2add_sat_pp r0.w, r1.yzzw, r1.yzzw, c1.x
    add r0.w, -r0.w, c1.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r1.yzw, r0.w, r4.xxyz, r3.xxyz
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r1.yzww
    dp3_sat_pp r1.y, r1.yzww, -c10
    mov r1.z, c0.z
    mul_pp r1.z, r1.z, c20.y
    exp_pp r1.z, r1.z
    mul_pp r1.z, r1.z, c0.w
    pow_pp r2.w, r0.w, r1.z
    texld r3, v0.zwzw, s10
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r4.xyz, r0.w, c37
    mul_pp r4.xyz, r4, c18
    mul_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, v3.w
    mul r0.w, r1.y, r3.w
    mul_pp r1.yzw, r0.w, c36.xxyz
    mad_pp r1.yzw, r3.xxyz, r3.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    mad_pp r0.xyz, r1.yzww, r2, r0
    frc r0.w, c28.x
    cmp r1.y, -r0.w, c1.x, c1.y
    add r0.w, -r0.w, c28.x
    cmp r1.x, c28.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c1
    cmp r2.xy, -r1_abs.x, v0, c1.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r1, r1, s6
    mul_pp r2.xyz, c17, v7
    mad_pp r0.xyz, r2, r1, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 92 instruction slots used (6 texture, 86 arithmetic)
