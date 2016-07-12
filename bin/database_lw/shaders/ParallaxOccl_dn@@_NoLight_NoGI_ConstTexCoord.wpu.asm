//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 ParallaxOccl;
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   mrgGlobalLight_Diffuse   c36      1
//   g_aLightField            c77      6
//   ParallaxOccl             c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.75, 0, 2, -1
    def c1, 5, -4, -3, 0
    def c2, 0.5, 3, 0.25, 0
    def c3, 1, 6, -0, 0.5
    def c4, 0, 1, 0.25, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5_pp v4.xy
    dcl_texcoord7 v5.xy
    dcl_color_pp v6
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    mov r0.z, c2.w
    mul_pp r1.xy, c150.x, v4
    mad_pp r2.xy, r1, -c2.z, v0
    mad_pp r0.xy, r1, -c2.z, r2
    texldb_pp r3, r0.xyzz, s2
    add r0.z, -r3.w, c2.x
    mad r3.xy, r3.w, c3_abs.zxzw, c3_abs.wzzw
    mov r2.z, c2.w
    texldb_pp r4, r2.xyzz, s2
    mad_pp r3.zw, r4.w, c0_abs.xyyw, c0_abs.xyxy
    add r1.z, -r4.w, c0.x
    cmp_pp r4.xy, r1.z, c2.w, r3.zwzw
    mov r5.yzw, c0
    cmp r5.xyz, r1.z, r5.yzww, c3
    mov r4.zw, r5.x
    cmp_pp r6, r0.z, r4.xyww, r3
    cmp r0.z, r0.z, r5.y, c1.x
    add r3.xz, r0.z, c1.yyzw
    mov_pp r0.w, r3.y
    cmp_pp r4, r1.z, r6, r4
    mov_pp r2.w, r3.w
    cmp_pp r2.xyz, r1.z, r0.wxyw, r2.wxyw
    mad_pp r0.xy, r1, -c2.z, r0
    mad_pp r6.xy, r1, -c2.z, r2.yzzw
    mov r6.z, c2.w
    texldb_pp r7, r6.xyzz, s2
    add r1.z, -r7.w, c2.z
    mad r7.xyz, r7.w, c4.xyxw, c4.zxww
    mov_pp r7.w, r2.x
    cmp_pp r8, r1.z, r4, r7
    mov_pp r6.w, r7.y
    cmp r1.z, r3.x, -c2.w, r5.z
    cmp_pp r4, r1.z, r4, r8
    cmp_pp r2.xyw, r1.z, r2.yzzx, r6
    mad_pp r5.xy, r1, -c2.z, r2
    mov r5.zw, c2.w
    texldb_pp r5, r5, s2
    mad r2.xyz, r5.w, c4.xyxw, c4.xxzw
    cmp_pp r2, -r5.w, r4, r2
    mov r0.zw, c2.w
    texldb_pp r0, r0, s2
    add r0.x, -r0.w, c2.z
    cmp r0.x, r0.x, r3.z, -c0.w
    cmp r0.x, r0.x, -c2.w, r1.z
    cmp_pp r0, r0.x, r4, r2
    add_pp r0.yw, -r0.xwzy, r0.xzzx
    mul_pp r0.z, r0.w, r0.z
    mad_pp r0.x, r0.x, r0.y, -r0.z
    add_pp r0.y, -r0.w, r0.y
    rcp r0.z, r0.y
    mul_pp r0.x, r0.z, r0.x
    cmp_pp r0.x, -r0_abs.y, -c2.w, -r0.x
    add_pp r0.x, r0.x, -c0.w
    max_pp r1.z, c2.z, r0.x
    mad_pp r0.xy, r1, -r1.z, v0
    texld_pp r1, r0, s2
    texld r0, r0, s0
    mad_pp r1.xyz, r1, c0.z, c0.w
    nrm_pp r2.xyz, v2
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r3.xyz, v1
    mad_pp r1.xyw, r1.x, r3.xyzz, r2.xyzz
    nrm_pp r2.xyz, v3
    mad_pp r1.xyz, r1.z, r2, r1.xyww
    nrm_pp r2.xyz, r1
    mad_pp r1.xyz, r2, c2.x, c2.x
    mov r3.xyz, c77
    mad r3.xyz, c78, r1.x, r3
    mul_pp r4.xyz, r2, r2
    dp3_sat_pp r1.x, r2, -c10
    mul r1.x, r1.x, c77.w
    mul_pp r2.xyz, r1.x, c36
    mov r5.xyz, c80
    mad r1.xyw, r5.xyzz, r1.y, c79.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mul r1.xyz, r1.xyww, r4.y
    mad_pp r1.xyz, r4.x, r3, r1
    mad_pp r1.xyz, r4.z, r5, r1
    mad_pp r1.xyz, r1, c17, r2
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r0, r1
    mul_pp r1.w, r0.w, c16.w
    mul_pp r0, r1, v6
    dsy_pp r1.xy, v0
    mul_pp r1.xy, r1, r1
    dsx_pp r1.zw, v0.xyxy
    mad_pp r1.xy, r1.zwzw, r1.zwzw, r1
    max_pp r2.x, r1.x, r1.y
    log_pp r1.x, r2.x
    mad r1.y, r1.x, -c2.x, c2.y
    cmp r1.x, r1.x, r1.y, c2.y
    cmp_pp r0, r1.x, r0, c0_abs.yyyw
    texld_pp r1, v5.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 106 instruction slots used (8 texture, 98 arithmetic)
