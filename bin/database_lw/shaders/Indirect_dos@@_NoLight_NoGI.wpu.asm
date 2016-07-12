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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampOffset0;
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
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampOffset0              s3       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, 10
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s9
    dcl_2d s11
    frc r0.x, c27.y
    cmp r0.y, -r0.x, c2.x, c2.y
    add r0.x, -r0.x, c27.y
    mov r1.x, c2.x
    cmp r0.y, c27.y, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c2
    cmp r1.yz, -r0_abs.x, v0.xxyw, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mad r0.xy, r0.wyzw, c0.x, c0.y
    frc r0.zw, c26.xyxz
    cmp r1.yz, -r0.xzww, c2.x, c2.y
    add r0.zw, -r0, c26.xyxz
    cmp r1.xy, c26.xzzw, r1.x, r1.yzzw
    add r0.zw, r0, r1.xyxy
    add r1, r0.z, -c2
    add r2, r0.w, -c2
    cmp r0.zw, -r1_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r1_abs.y, v0, r0
    cmp r0.zw, -r1_abs.z, v1.xyxy, r0
    cmp r0.zw, -r1_abs.w, v1, r0
    mad r0.zw, r0.xyxy, c150.xyxy, r0
    texld_pp r1, r0.zwzw, s0
    mul_pp r0.z, r1.w, c16.w
    mul_pp oC0.w, r0.z, v5.w
    cmp r0.zw, -r2_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r2_abs.y, v0, r0
    cmp r0.zw, -r2_abs.z, v1.xyxy, r0
    cmp r0.zw, -r2_abs.w, v1, r0
    mad r0.xy, r0, c150, r0.zwzw
    texld_pp r0, r0, s1
    mov r0.w, c0.w
    mul_pp r0.w, r0.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add_pp r2.xyz, c22, -v2
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mul_pp r3.xyz, r1.w, r2
    mad_pp r2.xyz, r2, r1.w, -c10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r4.xyz, r2
    add_pp r2.xyz, r3, r3
    nrm_pp r5.xyz, r2
    nrm_pp r2.xyz, v3
    dp3_sat_pp r2.w, r5, r2
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r5.xyz, r1.w, c59
    mul r6.xyz, r1.w, c58
    mul_pp r5.xyz, r2.w, r5
    dp3_sat_pp r1.w, r4, r2
    pow_pp r2.w, r1.w, r0.w
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r5.xyz, r0.w, c37, r5
    mul_pp r5.xyz, r5, c18
    mul_pp r0.xyz, r0, r5
    mul_pp r0.xyz, r0, v3.w
    dp3_sat_pp r0.w, r2, r3
    mul_pp r3.xyz, r6, r0.w
    dp3_sat_pp r0.w, r2, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r3.xyz, r0.w, c36, r3
    mad_pp r5.xyz, r2, c0.z, c0.z
    mul_pp r2.xyz, r2, r2
    mov r6.xyz, c80
    mad r6.xyz, r6, r5.y, c79
    mul r6.xyz, r2.y, r6
    mad r4.xyz, c78, r5.x, r4
    mov r7.xyz, c82
    mad r5.xyz, r7, r5.z, c81
    mad_pp r2.xyw, r2.x, r4.xyzz, r6.xyzz
    mad_pp r2.xyz, r2.z, r5, r2.xyww
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mul_pp r1.xyz, r1, r2
    mad_pp r0.xyz, r1, v5, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 101 instruction slots used (5 texture, 96 arithmetic)
