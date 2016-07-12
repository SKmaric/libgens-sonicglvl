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
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
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
//   sampOffset0              s3       1
//   sampOffsetMask           s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 0, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c27.ywzw
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c27.ywzw
    mov r1.x, c1.x
    cmp r0.zw, c27.xyyw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.y, -c1
    add r0, r0.x, -c1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld r2, r1.yzzw, s5
    add_pp r1.y, r2.y, r2.y
    cmp r1.zw, -r0_abs.x, v0.xyxy, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mad r0.xy, r0.wyzw, r1.y, -c1.y
    frc r0.zw, c26.xyxz
    cmp r1.yz, -r0.xzww, c1.x, c1.y
    add r0.zw, -r0, c26.xyxz
    cmp r1.xy, c26.xzzw, r1.x, r1.yzzw
    add r0.zw, r0, r1.xyxy
    add r1, r0.z, -c1
    add r2, r0.w, -c1
    cmp r0.zw, -r1_abs.x, v0.xyxy, c1.x
    cmp r0.zw, -r1_abs.y, v0, r0
    cmp r0.zw, -r1_abs.z, v1.xyxy, r0
    cmp r0.zw, -r1_abs.w, v1, r0
    mad r0.zw, r0.xyxy, c150.xyxy, r0
    texld_pp r1, r0.zwzw, s0
    mul_pp r0.z, r1.w, c16.w
    mul_pp oC0.w, r0.z, v5.w
    cmp r0.zw, -r2_abs.x, v0.xyxy, c1.x
    cmp r0.zw, -r2_abs.y, v0, r0
    cmp r0.zw, -r2_abs.z, v1.xyxy, r0
    cmp r0.zw, -r2_abs.w, v1, r0
    mad r0.xy, r0, c150, r0.zwzw
    texld_pp r0, r0, s1
    mov r2.y, c20.y
    mul_pp r0.w, r2.y, c0.x
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add_pp r2.xyz, c22, -v2
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mad_pp r2.xyz, r2, r1.w, -c10
    nrm_pp r3.xyz, r2
    nrm_pp r2.xyz, v3
    dp3_sat_pp r1.w, r3, r2
    dp3_sat_pp r2.x, r2, -c10
    pow_pp r2.y, r1.w, r0.w
    texld r3, v0.zwzw, s10
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.y, r0.w
    mul_pp r2.yzw, r0.w, c37.xxyz
    mul_pp r2.yzw, r2, c18.xxyz
    mul_pp r0.xyz, r0, r2.yzww
    mul_pp r0.xyz, r0, v3.w
    mul r0.w, r2.x, r3.w
    mul_pp r2.xyz, r3, r3
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mul_pp r1.xyz, r1, r2
    mad_pp r0.xyz, r1, v5, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 76 instruction slots used (6 texture, 70 arithmetic)
