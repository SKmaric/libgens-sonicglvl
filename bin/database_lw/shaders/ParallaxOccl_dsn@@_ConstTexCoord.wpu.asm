//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 ParallaxOccl;
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
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
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   ParallaxOccl             c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 0.5, 3, 0.25, 0
    def c1, 0.75, 0, 2, -1
    def c2, 5, -4, -3, 10
    def c3, 1, 6, -0, 0.5
    def c4, 0, 1, 0.25, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xyz
    dcl_texcoord5_pp v5.xy
    dcl_texcoord7_pp v6.xyw
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    mov r0.z, c0.w
    mul_pp r1.xy, c150.x, v5
    mad_pp r2.xy, r1, -c0.z, v0
    mad_pp r0.xy, r1, -c0.z, r2
    texldb_pp r3, r0.xyzz, s2
    add r0.z, -r3.w, c0.x
    mad_pp r3.xy, r3.w, c3_abs.zxzw, c3_abs.wzzw
    mov r2.z, c0.w
    texldb_pp r4, r2.xyzz, s2
    mad_pp r3.zw, r4.w, c1_abs.xyyw, c1_abs.xyxy
    add r1.z, -r4.w, c1.x
    cmp_pp r4.xy, r1.z, c0.w, r3.zwzw
    mov r5.yzw, c1
    cmp r5.xyz, r1.z, r5.yzww, c3
    mov r4.zw, r5.x
    cmp_pp r6, r0.z, r4.xyww, r3
    cmp r0.z, r0.z, r5.y, c2.x
    add r3.xz, r0.z, c2.yyzw
    mov_pp r0.w, r3.y
    cmp_pp r4, r1.z, r6, r4
    mov_pp r2.w, r3.w
    cmp_pp r2.xyz, r1.z, r0.wxyw, r2.wxyw
    mad_pp r0.xy, r1, -c0.z, r0
    mad_pp r6.xy, r1, -c0.z, r2.yzzw
    mov r6.z, c0.w
    texldb_pp r7, r6.xyzz, s2
    add r1.z, -r7.w, c0.z
    mad r7.xyz, r7.w, c4.xyxw, c4.zxww
    mov_pp r7.w, r2.x
    cmp_pp r8, r1.z, r4, r7
    mov_pp r6.w, r7.y
    cmp r1.z, r3.x, -c0.w, r5.z
    cmp_pp r4, r1.z, r4, r8
    cmp_pp r2.xyw, r1.z, r2.yzzx, r6
    mad_pp r5.xy, r1, -c0.z, r2
    mov r5.zw, c0.w
    texldb_pp r5, r5, s2
    mad r2.xyz, r5.w, c4.xyxw, c4.xxzw
    cmp_pp r2, -r5.w, r4, r2
    mov r0.zw, c0.w
    texldb_pp r0, r0, s2
    add r0.x, -r0.w, c0.z
    cmp r0.x, r0.x, r3.z, -c1.w
    cmp r0.x, r0.x, -c0.w, r1.z
    cmp_pp r0, r0.x, r4, r2
    add_pp r0.yw, -r0.xwzy, r0.xzzx
    mul_pp r0.z, r0.w, r0.z
    mad_pp r0.x, r0.x, r0.y, -r0.z
    add_pp r0.y, -r0.w, r0.y
    rcp r0.z, r0.y
    mul_pp r0.x, r0.z, r0.x
    cmp_pp r0.x, -r0_abs.y, -c0.w, -r0.x
    add_pp r0.x, r0.x, -c1.w
    max_pp r1.z, c0.z, r0.x
    mad_pp r0.xy, r1, -r1.z, v0
    texld_pp r1, r0, s2
    texld r0, r0, s0
    mad_pp r1.xyz, r1, c1.z, c1.w
    nrm_pp r2.xyz, v3
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r3.xyz, v2
    mad_pp r1.xyw, r1.x, r3.xyzz, r2.xyzz
    nrm_pp r2.xyz, v4
    mad_pp r1.xyz, r1.z, r2, r1.xyww
    nrm_pp r2.xyz, r1
    add_pp r1.xyz, -c46, v1
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    mul_pp r1.xyz, r1.w, r1
    rcp_pp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c48.z, c48.w
    mul r3.xyz, r1.w, c47
    add_pp r4.xyz, c22, -v1
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mad_pp r5.xyz, r4, r1.w, -r1
    dp3_sat_pp r1.x, r2, -r1
    mul_pp r1.xyz, r3, r1.x
    nrm_pp r6.xyz, r5
    dp3_sat_pp r2.w, r6, r2
    mov r5.y, c20.y
    mul_pp r3.w, r5.y, c2.w
    exp r3.w, r3.w
    mul_pp r3.w, r3.w, -c2.y
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mul_pp r3.xyz, r3, r2.w
    add_pp r5.xyz, -c42, v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mul_pp r5.xyz, r2.w, r5
    rcp_pp r2.w, r2.w
    mad_sat_pp r2.w, -r2.w, c44.z, c44.w
    mul r6.xyz, r2.w, c43
    mad_pp r7.xyz, r4, r1.w, -r5
    dp3_sat_pp r2.w, r2, -r5
    mad_pp r1.xyz, r2.w, r6, r1
    nrm_pp r5.xyz, r7
    dp3_sat_pp r2.w, r5, r2
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mad_pp r3.xyz, r2.w, r6, r3
    add_pp r5.xyz, -c50, v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mul_pp r5.xyz, r2.w, r5
    rcp_pp r2.w, r2.w
    mad_sat_pp r2.w, -r2.w, c52.z, c52.w
    mul r6.xyz, r2.w, c51
    mad_pp r7.xyz, r4, r1.w, -r5
    dp3_sat_pp r2.w, r2, -r5
    mad_pp r1.xyz, r2.w, r6, r1
    nrm_pp r5.xyz, r7
    dp3_sat_pp r2.w, r5, r2
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mad_pp r3.xyz, r2.w, r6, r3
    add_pp r5.xyz, -c54, v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mul_pp r5.xyz, r2.w, r5
    rcp_pp r2.w, r2.w
    mad_sat_pp r2.w, -r2.w, c56.z, c56.w
    mul r6.xyz, r2.w, c55
    mad_pp r7.xyz, r4, r1.w, -r5
    dp3_sat_pp r2.w, r2, -r5
    mad_pp r1.xyz, r2.w, r6, r1
    mad_pp r4.xyz, r4, r1.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r1.w, r5, r2
    pow_pp r2.w, r1.w, r3.w
    nrm_pp r4.xyz, r7
    dp3_sat_pp r1.w, r4, r2
    dp3_sat_pp r2.x, r2, -c10
    pow_pp r2.y, r1.w, r3.w
    mul_pp r1.w, r2.y, c20.z
    mad_pp r3.xyz, r1.w, r6, r3
    texld_pp r4, v0.zwzw, s10
    mul_pp r1.w, r4.w, c20.z
    mul_pp r1.w, r2.w, r1.w
    mad_pp r2.yzw, r1.w, c37.xxyz, r3.xxyz
    mul_pp r2.yzw, r2, c18.xxyz
    mul r1.w, r2.x, r4.w
    mul_pp r3.xyz, r4, r4
    mad_pp r1.xyz, r1.w, c36, r1
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r0, r1
    mul_pp r1.w, r0.w, c16.w
    mul_pp r0, r1, v7
    mad_pp r0.xyz, r2.yzww, v6.w, r0
    dsy_pp r1.xy, v0
    mul_pp r1.xy, r1, r1
    dsx_pp r1.zw, v0.xyxy
    mad_pp r1.xy, r1.zwzw, r1.zwzw, r1
    max_pp r2.x, r1.x, r1.y
    log_pp r1.x, r2.x
    mad r1.y, r1.x, -c0.x, c0.y
    cmp r1.x, r1.x, r1.y, c0.y
    cmp_pp r0, r1.x, r0, c1_abs.yyyw
    texld_pp r1, v6.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 193 instruction slots used (9 texture, 184 arithmetic)
