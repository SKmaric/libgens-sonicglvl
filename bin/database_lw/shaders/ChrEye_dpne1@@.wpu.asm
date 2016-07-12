//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicEyeHighLightColor;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPower;
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
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgLocalLight4_Position               c54      1
//   mrgLocalLight4_Color                  c55      1
//   mrgLocalLight4_Range                  c56      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_SonicEyeHighLightColor              c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, -1024, 0.100000001, 2.67628008e+031, 0
    def c2, 10, 4, 500, 5
    def c3, 0.5, -0.5, 0.699999988, 0.300000012
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4.xy
    dcl_texcoord6_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    add_pp r1.xyz, -c54, v6
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    rcp_pp r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_sat_pp r1.w, -r2.x, c56.z, c56.w
    mul r2.xyz, r1.w, c55
    add_pp r3.xyz, -c50, v6
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_sat_pp r1.w, -r2.w, c52.z, c52.w
    mul r4.xyz, r1.w, c51
    add_pp r5.xyz, -c42, v6
    dp3_pp r1.w, r5, r5
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r5.xyz, r1.w, r5
    mad_sat_pp r1.w, -r2.w, c44.z, c44.w
    mul r6.xyz, r1.w, c43
    add_pp r7.xyz, -c46, v6
    dp3_pp r1.w, r7, r7
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r7.xyz, r1.w, r7
    mad_sat_pp r1.w, -r2.w, c48.z, c48.w
    mul r8.xyz, r1.w, c47
    add r9.xyz, c22, -v6
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r7
    nrm_pp r11.xyz, r10
    nrm_pp r10.xyz, v3
    dp3_sat_pp r2.w, r11, r10
    mov r12.yz, c20
    mul_pp r3.w, r12.y, c2.x
    exp_pp r3.w, r3.w
    mul_pp r3.w, r3.w, c2.y
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mul_pp r12.xyw, r8.xyzz, r2.w
    mad_pp r13.xyz, r9, r1.w, -r5
    dp3_sat_pp r2.w, r10, -r5
    nrm_pp r5.xyz, r13
    dp3_sat_pp r4.w, r5, r10
    pow_pp r5.w, r4.w, r3.w
    mul_pp r4.w, r5.w, c20.z
    mad_pp r12.xyw, r4.w, r6.xyzz, r12
    mad_pp r13.xyz, r9, r1.w, -r3
    dp3_sat_pp r3.x, r10, -r3
    nrm_pp r14.xyz, r13
    dp3_sat_pp r3.y, r14, r10
    pow_pp r4.w, r3.y, r3.w
    mul_pp r3.y, r4.w, c20.z
    mad_pp r12.xyw, r3.y, r4.xyzz, r12
    mad_pp r13.xyz, r9, r1.w, -r1
    dp3_sat_pp r1.x, r10, -r1
    nrm_pp r15.xyz, r13
    dp3_sat_pp r1.y, r15, r10
    pow_pp r4.w, r1.y, r3.w
    mul_pp r1.y, r4.w, c20.z
    mad_pp r12.xyw, r1.y, r2.xyzz, r12
    mul_pp r1.y, r12.z, c77.w
    mad_pp r13.xyz, r9, r1.w, -c10
    mul_pp r9.xyz, r1.w, r9
    rcp r1.z, r1.w
    mad_sat_pp r1.z, -r1.z, c60.z, c60.w
    nrm_pp r16.xyz, r13
    dp3_sat_pp r1.w, r16, r10
    pow_pp r4.w, r1.w, r3.w
    mul_pp r1.w, r1.y, r4.w
    mad_pp r12.xyz, r1.w, c37, r12.xyww
    mul_pp r13.xyz, r1.z, c59
    mul r17.xyz, r1.z, c58
    add_pp r18.xyz, r9, r9
    nrm_pp r19.xyz, r18
    dp3_sat_pp r1.z, r19, r10
    pow_pp r4.w, r1.z, r3.w
    mul_pp r1.z, r4.w, c20.z
    mad_pp r12.xyz, r1.z, r13, r12
    texld_pp r18, v0, s1
    mul_pp r1.zw, r18.x, c20.xyyz
    mul_pp r1.zw, r1, c2
    max_pp r3.y, r1.z, c0.z
    mul r1.z, r3.y, c1.y
    add r3.y, r3.y, c1.x
    exp r1.z, r1.z
    mul_pp r1.z, r1.z, c2.y
    cmp_pp r1.z, r3.y, c1.z, r1.z
    dp3_pp r3.y, v5, v5
    rsq_pp r3.y, r3.y
    mad_pp r18.xyz, v5, r3.y, r9
    nrm_pp r20.xyz, r18
    texld r18, v0, s2
    mad_pp r18, r18, c0.x, c0.y
    dp2add_pp r3.y, r18, -r18, c0.z
    rsq_pp r3.y, r3.y
    rcp_pp r3.y, r3.y
    nrm_pp r21.xyz, v1
    nrm_pp r22.xyz, v2
    mul_pp r23.xyz, r18.y, r22
    mul_pp r22.xyz, r18.w, r22
    mad_pp r22.xyz, r18.z, r21, r22
    mad_pp r21.xyz, r18.x, r21, r23
    dp2add_pp r3.z, r18.zwzw, -r18.zwzw, c0.z
    rsq_pp r3.z, r3.z
    rcp_pp r3.z, r3.z
    mad_pp r18.xyz, r3.z, r10, r22
    mad_pp r21.xyz, r3.y, r10, r21
    dp3_sat_pp r3.y, r20, r21
    pow_pp r4.w, r3.y, r1.z
    mul_pp r1.z, r1.w, r4.w
    mul_pp r20.xyz, r1.z, c150
    mad_pp r12.xyz, r12, c18, r20
    mul r20, r10.y, c91
    mad r20, r10.x, c90, r20
    mad r20, r10.z, c92, r20
    dp4 r1.z, r20, r20
    rsq r1.z, r1.z
    mul r1.zw, r1.z, r20.xyxy
    mad_pp r1.zw, r1, c3.xyxy, c3.x
    texld_pp r20, r1.zwzw, s3
    mul_pp r20.xyz, r20, c63.x
    mul_pp r20.xyz, r20, v7.w
    mad_pp r12.xyz, r20, r0.w, r12
    mul_pp r12.xyz, r12, v3.w
    dp3_sat_pp r0.w, r10, -r7
    mul_pp r7.xyz, r8, r0.w
    mad_pp r7.xyz, r2.w, r6, r7
    mad_pp r3.xyz, r3.x, r4, r7
    mad_pp r1.xzw, r1.x, r2.xyyz, r3.xyyz
    dp3_sat_pp r0.w, r10, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xzw, r0.w, c36.xyyz, r1
    dp3_sat_pp r0.w, r10, r9
    dp3_sat_pp r2.w, r18, r9
    add_pp r2.w, -r2.w, c0.z
    mad_pp r1.xzw, r0.w, r17.xyyz, r1
    mad_pp r3.xyz, r10, c0.w, c0.w
    mul_pp r7.xyz, r10, r10
    mov r9.xyz, c80
    mad r9.xyz, r9, r3.y, c79
    mul r9.xyz, r7.y, r9
    mov r10.xyz, c77
    mad r10.xyz, c78, r3.x, r10
    mov r17.xyz, c82
    mad r3.xyz, r17, r3.z, c81
    mad_pp r7.xyw, r7.x, r10.xyzz, r9.xyzz
    mad_pp r3.xyz, r7.z, r3, r7.xyww
    mad_pp r1.xzw, r3.xyyz, c17.xyyz, r1
    mul_pp r1.xzw, r1, c16.xyyz
    mad_pp r1.xzw, r1, r0.xyyz, r12.xyyz
    dp3_sat_pp r0.w, r11, r18
    pow_pp r4.w, r0.w, r3.w
    mul_pp r0.w, r4.w, c20.z
    mul_pp r3.xyz, r8, r0.w
    dp3_sat_pp r0.w, r5, r18
    pow_pp r4.w, r0.w, r3.w
    mul_pp r0.w, r4.w, c20.z
    mad_pp r3.xyz, r0.w, r6, r3
    dp3_sat_pp r0.w, r14, r18
    pow_pp r4.w, r0.w, r3.w
    mul_pp r0.w, r4.w, c20.z
    mad_pp r3.xyz, r0.w, r4, r3
    dp3_sat_pp r0.w, r15, r18
    pow_pp r4.x, r0.w, r3.w
    mul_pp r0.w, r4.x, c20.z
    mad_pp r2.xyz, r0.w, r2, r3
    dp3_sat_pp r0.w, r16, r18
    dp3_sat_pp r3.x, r19, r18
    pow_pp r4.x, r3.x, r3.w
    pow_pp r4.y, r0.w, r3.w
    mul_pp r0.w, r1.y, r4.y
    mad_pp r2.xyz, r0.w, c37, r2
    mul_pp r0.w, r4.x, c20.z
    mad_pp r2.xyz, r0.w, r13, r2
    mul_pp r2.xyz, r2, c18
    mul_pp r0.xyz, r0, r2
    mul_pp r0.w, r2.w, r2.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r2.w, r0.w
    mad_pp r0.w, r0.w, c3.z, c3.w
    mad_pp r0.xyz, r0, r0.w, r1.xzww
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.w, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 248 instruction slots used (6 texture, 242 arithmetic)
