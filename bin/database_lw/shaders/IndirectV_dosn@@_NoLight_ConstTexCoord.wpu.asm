//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
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
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampOffset0              s3       1
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
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c27
    mov r1.x, c1.x
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.y, -c1
    add r0, r0.x, -c1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s3
    frc r1.yz, c26.xxzw
    cmp r2.xz, -r1.yyzw, c1.x, c1.y
    add r1.yz, -r1, c26.xxzw
    cmp r1.xw, c26.xyzz, r1.x, r2.xyzz
    add r1.xy, r1.xwzw, r1.yzzw
    add r3, r1.x, -c1
    add r1, r1.y, -c1
    cmp r2.xz, -r3_abs.x, v0.xyyw, c1.x
    cmp r2.xz, -r3_abs.y, v0.zyww, r2
    cmp r2.xz, -r3_abs.z, v1.xyyw, r2
    cmp r2.xz, -r3_abs.w, v1.zyww, r2
    texld r3, r2.xzzw, s0
    add_pp r3.x, v7.w, v7.w
    mul_pp r3.x, r3.w, r3.x
    mad r2.yw, r2.xwzy, r3.x, -c1.y
    mad r2.xz, r2.yyww, c150.xyyw, r2
    texld_pp r3, r2.xzzw, s0
    mul_pp oC0.w, r3.w, c16.w
    cmp r2.xz, -r1_abs.x, v0.xyyw, c1.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2.xzzw
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    mad r1.xy, r2.ywzw, c150, r1
    texld_pp r1, r1, s1
    cmp r2.xz, -r0_abs.x, v0.xyyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2.xzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    mad r0.xy, r2.ywzw, c150, r0
    texld_pp r0, r0, s2
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    nrm_pp r2.xyz, v6
    mul_pp r2.xyz, r0.y, r2
    nrm_pp r4.xyz, v5
    mad_pp r2.xyz, r0.x, r4, r2
    dp2add_sat_pp r0.x, r0, r0, c1.x
    add r0.x, -r0.x, c1.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r4.xyz, v3
    mad_pp r0.xyz, r0.x, r4, r2
    add_pp r2.xyz, c22, -v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mad_pp r2.xyz, r2, r0.w, -c10
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r0
    dp3_sat_pp r0.x, r0, -c10
    mov r0.z, c0.z
    mul_pp r0.y, r0.z, c20.y
    exp_pp r0.y, r0.y
    mul_pp r0.y, r0.y, c0.w
    pow_pp r1.w, r0.w, r0.y
    texld r2, v0.zwzw, s10
    mul_pp r0.y, r2.w, c20.z
    mul_pp r0.y, r1.w, r0.y
    mul_pp r0.yzw, r0.y, c37.xxyz
    mul_pp r0.yzw, r0, c18.xxyz
    mul_pp r0.yzw, r1.xxyz, r0
    mul_pp r0.yzw, r0, v3.w
    mul r0.x, r0.x, r2.w
    mul_pp r1.xyz, r2, r2
    mul_pp r2.xyz, r0.x, c36
    mad_pp r1.xyz, r1, c17, r2
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r3, r0.yzww
    add_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 94 instruction slots used (7 texture, 87 arithmetic)
