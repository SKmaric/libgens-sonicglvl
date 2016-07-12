//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 g_CameraNearFarAspect;
//   float4 g_Param2;
//   float4 g_Param3;
//   float4 g_ParamDistortion[2];
//   sampler2D g_Source;
//   sampler2D g_SourceLow;
//   sampler2D s2;
//   sampler2D s3;
//   sampler2D s6;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   g_CameraNearFarAspect c25      1
//   g_Param2              c168     1
//   g_Param3              c169     1
//   g_ParamDistortion     c172     2
//   g_Source              s0       1
//   g_SourceLow           s1       1
//   s2                    s2       1
//   s3                    s3       1
//   s6                    s6       1
//

    ps_3_0
    def c0, -0.5, 0.996078432, -0.996078432, 0
    def c1, 255, 1, 0, 0
    def c2, 0, -1, 1.57079637, 1
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s6
    rcp r0.x, c25.z
    add r1.xy, c168, -v0
    mul r1.z, r0.x, r1.y
    dp2add r0.x, r1.xzzw, r1.xzzw, c2.x
    rsq r0.x, r0.x
    mul r0.yz, r0.x, r1.xxzw
    rcp r0.x, r0.x
    add r0.x, r0.x, -c168.w
    rcp r0.w, c169.x
    mul r0.x, r0.w, r0.x
    max r1.x, r0.x, c2.y
    add r0.x, r1.x, c2.y
    mul r0.w, r1.x, c2.z
    cmp r0.x, r0.x, c2.z, r0.w
    sincos r1.x, r0.x
    mul r0.xy, r0.yzzw, r1.x
    mov r0.w, c2.w
    mad r0.z, r1.x, c169.w, r0.w
    mad r0.xy, r0, c169.y, v0
    mov r1.x, c172.x
    mad r1.xy, r0, c173.w, r1.x
    texld r1, r1, s6
    add_pp r1.xy, r1.ywzw, c0.x
    texld_pp r2, v0, s3
    dp3_pp r1.z, r2, r2
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    add r1.z, r1.z, c2.y
    mad r1.z, c173.y, r1.z, r0.w
    mul r1.w, r1.z, c173.z
    mad r0.xy, r1, r1.w, r0
    texld_pp r3, r0, s0
    add r1.x, r3.w, c2.y
    mad r1.y, c172.w, r1.x, r0.w
    mad r0.w, c173.x, r1.x, r0.w
    mul r0.w, r1.z, r0.w
    mul r0.w, r0.w, c172.z
    mul r1.xy, r0, r1.y
    mad r1.xy, r1, c172.y, c172.x
    texld r1, r1, s6
    add_pp r1.xy, r1.ywzw, c0.x
    mad r0.xy, r1, r0.w, r0
    texld_pp r1, r0, s1
    add_pp r0.x, r1.w, c0.z
    mad_pp r0.x, r0.x, -c1.x, c1.y
    add r0.y, -r1.w, c0.y
    cmp_pp r0.x, r0.y, r1.w, r0.x
    mul_pp r0.x, r0.x, c169.z
    lrp_pp r4.xyz, r0.x, r1, r3
    texld_pp r1, v0, s2
    lrp_pp r0.xyw, r1.w, r1.xyzz, r4.xyzz
    mad_pp oC0.xyz, r0.xyww, r0.z, r2
    mov_pp oC0.w, c2.w

// approximately 61 instruction slots used (6 texture, 55 arithmetic)
