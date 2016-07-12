//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_EyePosition;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 s_FalloffParam;
//   float4 s_FalloffParam2;
//   float4 s_LightScaleParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampFoMask;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_Emission                            c19      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   s_FalloffParam                        c150     1
//   s_FalloffParam2                       c151     1
//   s_LightScaleParam                     c152     1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampFoMask                            s2       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2.xyz
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s9
    texld_pp r0, v0, s0
    mov r1.yw, c0
    add_pp r1.x, r1.w, c151.w
    add_pp r2.xyz, c22, -v1
    dp3_pp r1.z, r2, r2
    rsq_pp r1.z, r1.z
    mul_pp r3.xyz, r1.z, r2
    mad_pp r2.xyz, r2, r1.z, -c10
    nrm_pp r4.xyz, r2
    nrm_pp r2.xyz, v2
    dp3_pp r1.z, r2, r3
    add_sat_pp r1.x, -r1.z, r1.x
    add_pp r1.z, -r1.z, c150.w
    add_sat_pp r1.z, r1.z, c0.w
    pow_pp r2.w, r1.z, c150.z
    mad_pp r1.z, c150.y, r2.w, c150.x
    pow_pp r2.w, r1.x, c151.z
    mad_sat_pp r1.x, c151.y, r2.w, c151.x
    lrp_pp r3, r1.x, c19, r0
    mul_pp r0.x, r3.w, c16.w
    mul_pp oC0.w, r0.x, c21.x
    mad_pp r0.xyz, r2, c0.x, c0.x
    mov r5.xyz, c80
    mad r5.xyz, r5, r0.y, c79
    mul_pp r6.xyz, r2, r2
    dp3_sat_pp r0.y, r4, r2
    mul r2.xyz, r5, r6.y
    mov r4.xyz, c77
    mad r4.xyz, c78, r0.x, r4
    mov r5.xyz, c82
    mad r0.xzw, r5.xyyz, r0.z, c81.xyyz
    mad_pp r2.xyz, r6.x, r4, r2
    mad_pp r0.xzw, r6.z, r0, r2.xyyz
    mov_sat_pp r1.x, c152.x
    mov_sat_pp r1.w, c77.w
    lrp r2.x, r1.w, c0.w, r1.x
    mov_sat_pp r1.x, v4.w
    mul_pp r2.yzw, r1.x, c36.xxyz
    mul_pp r2.yzw, r2.x, r2
    mad_pp r0.xzw, r0, c17.xyyz, r2.yyzw
    mul_pp r0.xzw, r0, c16.xyyz
    mul_pp r1.y, r1.y, c20.y
    exp_pp r1.y, r1.y
    mul_pp r1.y, r1.y, c0.z
    pow_pp r2.y, r0.y, r1.y
    mul_pp r0.y, r2.y, c20.z
    mul_pp r2.yzw, r0.y, c37.xxyz
    mul_pp r2.yzw, r2, c18.xxyz
    mul_pp r2.xyz, r2.x, r2.yzww
    texld_pp r4, v0, s1
    mul_pp r2.xyz, r2, r4
    mul_pp r2.xyz, r1.x, r2
    mad_pp r0.xyz, r0.xzww, r3, r2
    texld_pp r2, v0, s2
    mul_pp r2.xyz, r2, v4
    mul_pp r1.yzw, r1.z, r2.xxyz
    mul_pp r1.yzw, r1, c64.w
    mad_pp r0.xyz, r1.yzww, r1.x, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 70 instruction slots used (4 texture, 66 arithmetic)
