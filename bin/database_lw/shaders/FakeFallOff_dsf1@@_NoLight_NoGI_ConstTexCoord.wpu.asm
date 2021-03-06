//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampFO;
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
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampFO                   s4       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    mul_pp r0.x, v4.w, v4.w
    texld_pp r1, v0, s0
    mul_pp r0.y, r1.w, c16.w
    mul_pp oC0.w, r0.y, r0.x
    nrm_pp r0.xyz, v2
    mad_pp r2.xyz, r0, c0.x, c0.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r2.y, c79
    mul_pp r4.xyz, r0, r0
    mul r3.xyz, r3, r4.y
    mov r5, c77
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r2.xyz, r4.x, r2.xyww, r3
    mad_pp r2.xyz, r4.z, r5, r2
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r3.xyz, r0.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mul_pp r1.xyz, r1, r2
    mov r2.y, c0.y
    mul_pp r0.w, r2.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    add_pp r2.xyz, c22, -v1
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mad_pp r2.xyz, r2, r1.w, -c10
    nrm_pp r3.xyz, r2
    dp3_sat_pp r1.w, r3, r0
    pow_pp r2.x, r1.w, r0.w
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.x, r0.w
    mul_pp r2.xyz, r0.w, c37
    mul_pp r2.xyz, r2, c18
    texld_pp r3, v0, s1
    mul_pp r2.xyz, r2, r3
    mul_pp r2.xyz, r2, v2.w
    mad_pp r1.xyz, r1, v4, r2
    mul r0.w, c64.w, c64.y
    mov r2.yw, c64
    mad r1.w, r2.y, -r2.w, r2.w
    mad_pp r0.w, c77.w, r1.w, r0.w
    mul_pp r2.xy, r0.y, c91
    mad_pp r0.xy, r0.x, c90, r2
    mad_pp r0.xy, r0.z, c92, r0
    mad_pp r0.xy, r0, c0.xwzw, c0.x
    texld_pp r2, r0, s4
    mad_pp r0.xyz, r2, r0.w, r1
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 59 instruction slots used (4 texture, 55 arithmetic)
