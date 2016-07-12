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
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 10, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_cube s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    nrm_pp r1.xyz, v6
    texld_pp r2, v1, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_sat_pp r0.w, r2, r2, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r2.xyz, v3
    mad r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, c22, -v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul r3.xyz, r0.w, r2
    mad_pp r2.xyz, r2, r0.w, -c10
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r1
    dp3 r1.w, -r3, r1
    add r1.w, r1.w, r1.w
    mad_pp r2.xyz, r1, -r1.w, -r3
    dp3_sat_pp r1.x, r1, -c10
    mov_pp r2.w, -r2.z
    texld_pp r2, r2.xyww, s5
    texld r3, v0, s1
    mul r1.y, r3.w, c63.x
    mul r1.z, c64.z, c64.x
    mov r4.xz, c64
    mad r1.w, r4.x, -r4.z, r4.z
    texld r4, v0.zwzw, s10
    mad_pp r1.z, r4.w, r1.w, r1.z
    mul r1.y, r1.z, r1.y
    mul_pp r1.yzw, r1.y, r2.xxyz
    mov r2.y, c20.y
    mul_pp r2.x, r2.y, c1.x
    exp_pp r2.x, r2.x
    mul_pp r2.x, r2.x, c1.y
    pow_pp r3.w, r0.w, r2.x
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.w, r0.w
    mul_pp r2.xyz, r0.w, c37
    mad_pp r1.yzw, r2.xxyz, c18.xxyz, r1
    mul_pp r1.yzw, r3.xxyz, r1
    mul_pp r1.yzw, r1, v3.w
    mul r0.w, r1.x, r4.w
    mul_pp r2.xyz, r4, r4
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1.yzww
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 69 instruction slots used (6 texture, 63 arithmetic)
