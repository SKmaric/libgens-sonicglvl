//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
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
//   g_aLightField            c77      6
//   g_EmissionParam          c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampEmi                  s4       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    texld r1, v0, s1
    mul r1.w, r1.w, c63.x
    mul r0.w, r0.w, r1.w
    nrm_pp r2.xyz, v6
    texld_pp r3, v1, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r3.xy, r3, c0.x, c0.y
    mul_pp r2.xyz, r2, r3.y
    nrm_pp r4.xyz, v5
    mad_pp r2.xyz, r3.x, r4, r2
    dp2add_sat_pp r1.w, r3, r3, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r3.xyz, v3
    mad r2.xyz, r1.w, r3, r2
    add_pp r3.xyz, c22, -v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mul r4.xyz, r1.w, r3
    mad_pp r3.xyz, r3, r1.w, -c10
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r2
    dp3 r2.w, -r4, r2
    add r2.w, r2.w, r2.w
    mad_pp r3.xyz, r2, -r2.w, -r4
    mov_pp r3.w, -r3.z
    texld_pp r3, r3.xyww, s5
    mul_pp r3.xyz, r0.w, r3
    mov r4.y, c1.y
    mul_pp r0.w, r4.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.z
    pow_pp r2.w, r1.w, r0.w
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r5.xyz, r0.w, c37
    mad_pp r3.xyz, r5, c18, r3
    mul_pp r1.xyz, r1, r3
    mul_pp r1.xyz, r1, v3.w
    mad_pp r3.xyz, r2, c1.x, c1.x
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul_pp r6.xyz, r2, r2
    dp3_sat_pp r0.w, r2, -c10
    mul r0.w, r0.w, c77.w
    mul r2.xyz, r5, r6.y
    mad r3.xyw, c78.xyzz, r3.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r3.z, c81
    mad_pp r2.xyz, r6.x, r3.xyww, r2
    mad_pp r2.xyz, r6.z, r4, r2
    mad_pp r2.xyz, r0.w, c36, r2
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c150
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c150.w
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 82 instruction slots used (6 texture, 76 arithmetic)
