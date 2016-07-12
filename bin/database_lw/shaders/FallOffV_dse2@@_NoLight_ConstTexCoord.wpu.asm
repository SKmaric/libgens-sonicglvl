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
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 1, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_cube s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    mov r1.xz, c0
    mul_pp r0.w, r1.x, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add_pp r1.xyw, c22.xyzz, -v1.xyzz
    dp3_pp r2.x, r1.xyww, r1.xyww
    rsq_pp r2.x, r2.x
    mad_pp r2.yzw, r1.xxyw, r2.x, -c10.xxyz
    mul r1.xyw, r1, r2.x
    nrm_pp r3.xyz, r2.yzww
    nrm r2.xyz, v2
    dp3_sat_pp r2.w, r3, r2
    pow_pp r3.x, r2.w, r0.w
    texld r4, v0.zwzw, s10
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mul_pp r3.xyz, r0.w, c37
    dp3 r0.w, -r1.xyww, r2
    add r0.w, r0.w, r0.w
    mad_pp r5.xyz, r2, -r0.w, -r1.xyww
    dp3_pp r0.w, r2, r1.xyww
    dp3_sat_pp r1.x, r2, -c10
    mul r1.x, r1.x, r4.w
    mul_pp r1.xyw, r1.x, c36.xyzz
    mov_pp r5.w, -r5.z
    texld_pp r2, r5.xyww, s5
    mul r5.xy, c64.zwzw, c64
    mov r6, c64
    mad r5.zw, r6.xyxy, -r6, r6
    mad_pp r5.xy, r4.w, r5.zwzw, r5
    mul_pp r4.xyz, r4, r4
    mad_pp r1.xyw, r4.xyzz, c17.xyzz, r1
    mul_pp r1.xyw, r1, c16.xyzz
    texld r4, v0, s1
    mul r2.w, r4.w, c63.x
    mul r2.w, r5.x, r2.w
    mul_pp r2.xyz, r2.w, r2
    mad_pp r2.xyz, r3, c18, r2
    mul_pp r2.xyz, r4, r2
    mul_pp r2.xyz, r2, v2.w
    mad_pp r0.xyz, r1.xyww, r0, r2
    add_pp r1.x, r1.z, c150.w
    add_sat_pp r0.w, -r0.w, r1.x
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v4
    mad_pp r0.xyz, r1, r5.y, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 60 instruction slots used (5 texture, 55 arithmetic)
