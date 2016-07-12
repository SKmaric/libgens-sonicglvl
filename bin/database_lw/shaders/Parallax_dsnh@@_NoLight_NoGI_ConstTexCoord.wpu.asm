//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_ParallaxParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampHeight;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
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
//   g_ParallaxParam          c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm                  s3       1
//   sampHeight               s4       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4_pp v3
    dcl_texcoord5_pp v4
    dcl_texcoord7_pp v5.xyw
    dcl_color_pp v6
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    mov_pp r0.z, v4.w
    mov_pp r0.x, v2.w
    mov_pp r0.y, v3.w
    dp3_pp r0.z, r0, r0
    rsq_pp r0.z, r0.z
    mul_pp r0.xy, r0.z, r0
    texld_pp r1, v0, s4
    mad_pp r0.z, r1.y, c150.y, c150.x
    mad r0.xy, r0, r0.z, v0
    texld_pp r1, r0, s3
    mul_pp r1.x, r1.w, r1.x
    mad_pp r0.zw, r1.xyxy, c0.x, c0.y
    nrm_pp r1.xyz, v3
    mul_pp r1.xyz, r0.w, r1
    nrm_pp r2.xyz, v2
    mad_pp r1.xyz, r0.z, r2, r1
    dp2add_sat_pp r0.z, r0.zwzw, r0.zwzw, c0.z
    add r0.z, -r0.z, c0.w
    rsq r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r2.xyz, v4
    mad_pp r1.xyz, r0.z, r2, r1
    mad_pp r2.xyz, r1, c1.x, c1.x
    mov r3, c77
    mad r3.xyz, c78, r2.x, r3
    mul_pp r4.xyz, r1, r1
    mov r5.xyz, c80
    mad r2.xyw, r5.xyzz, r2.y, c79.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mul r2.xyz, r2.xyww, r4.y
    mad_pp r2.xyz, r4.x, r3, r2
    mad_pp r2.xyz, r4.z, r5, r2
    dp3_sat_pp r0.z, r1, -c10
    mul r0.z, r0.z, c77.w
    mul_pp r3.xyz, r0.z, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    texld_pp r4, r0, s0
    texld_pp r0, r0, s1
    mul_pp r2.xyz, r2, r4
    mul_pp r2.w, r4.w, c16.w
    mul_pp r2, r2, v6
    add_pp r3.xyz, c22, -v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r1
    mov r1.y, c1.y
    mul_pp r1.x, r1.y, c20.y
    exp_pp r1.x, r1.x
    mul_pp r1.x, r1.x, c1.z
    pow_pp r3.x, r0.w, r1.x
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mul_pp r1.xyz, r0.w, c37
    mul_pp r1.xyz, r1, c18
    mul_pp r0.xyz, r0, r1
    mad_pp r0.xyz, r0, v5.w, r2
    mov_pp oC0.w, r2.w
    texld_pp r1, v5.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 74 instruction slots used (5 texture, 69 arithmetic)
