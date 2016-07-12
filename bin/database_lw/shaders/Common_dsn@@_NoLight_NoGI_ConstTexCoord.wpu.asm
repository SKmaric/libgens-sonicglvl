//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   g_aLightField            c77      6
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
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
    dcl_2d s9
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
    mad_pp r1.xyz, r0.w, r2, r1
    mad_pp r2.xyz, r1, c1.x, c1.x
    mov r3, c77
    mad r3.xyz, c78, r2.x, r3
    mov r4.xyz, c80
    mad r2.xyw, r4.xyzz, r2.y, c79.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r2.z, c81
    mul_pp r5.xyz, r1, r1
    mul r2.xyz, r2.xyww, r5.y
    mad_pp r2.xyz, r5.x, r3, r2
    mad_pp r2.xyz, r5.z, r4, r2
    dp3_sat_pp r0.w, r1, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r1
    mov r1.y, c1.y
    mul_pp r1.x, r1.y, c20.y
    exp_pp r1.x, r1.x
    mul_pp r1.x, r1.x, c1.z
    pow_pp r2.w, r0.w, r1.x
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r1.xyz, r0.w, c37
    mul_pp r1.xyz, r1, c18
    texld_pp r3, v0, s1
    mul_pp r1.xyz, r1, r3
    mul_pp r1.xyz, r1, v3.w
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 65 instruction slots used (4 texture, 61 arithmetic)
