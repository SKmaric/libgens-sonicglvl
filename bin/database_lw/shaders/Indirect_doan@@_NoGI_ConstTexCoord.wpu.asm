//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_OffsetParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
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
//   g_aLightField            c77      6
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampOffset0              s3       1
//   sampOffsetMask           s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0.5, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c1.x, c1.y
    add r0.x, -r0.x, c26.x
    mov r1.x, c1.x
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c1
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    frc r1.yzw, c27.xxyw
    cmp r2.xyz, -r1.yzww, c1.x, c1.y
    add r1.yzw, -r1, c27.xxyw
    cmp r2.xyz, c27.xyww, r1.x, r2
    add r1.xyz, r1.yzww, r2
    add r2, r1.z, -c1
    cmp r0.zw, -r2_abs.x, v0.xyxy, c1.x
    cmp r0.zw, -r2_abs.y, v0, r0
    cmp r0.zw, -r2_abs.z, v1.xyxy, r0
    cmp r0.zw, -r2_abs.w, v1, r0
    texld r2, r0.zwzw, s5
    add_pp r0.z, r2.y, r2.y
    add r2, r1.y, -c1
    add r1, r1.x, -c1
    cmp r3.xy, -r2_abs.x, v0, c1.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s3
    mad r0.zw, r2.xywy, r0.z, -c1.y
    mad r0.xy, r0.zwzw, c150, r0
    texld_pp r2, r0, s0
    mul_pp r0.x, r2.w, c16.w
    mul_pp oC0.w, r0.x, v7.w
    cmp r0.xy, -r1_abs.x, v0, c1.x
    cmp r0.xy, -r1_abs.y, v0.zwzw, r0
    cmp r0.xy, -r1_abs.z, v1, r0
    cmp r0.xy, -r1_abs.w, v1.zwzw, r0
    mad r0.xy, r0.zwzw, c150, r0
    texld_pp r0, r0, s2
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    nrm_pp r1.xyz, v6
    mul_pp r1.xyz, r0.y, r1
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r0.x, r3, r1
    dp2add_sat_pp r0.x, r0, r0, c1.x
    add r0.x, -r0.x, c1.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r3.xyz, v3
    mad_pp r0.xyz, r0.x, r3, r1
    add_pp r1.xyz, -c46, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r3.xyz, r0.w, c47
    dp3_sat_pp r0.w, r0, -r1
    mul_pp r1.xyz, r3, r0.w
    add_pp r3.xyz, -c42, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    dp3_sat_pp r0.w, r0, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r3.xyz, -c50, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    dp3_sat_pp r0.w, r0, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r3.xyz, -c54, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c56.z, c56.w
    mul r4.xyz, r0.w, c55
    dp3_sat_pp r0.w, r0, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    dp3_sat_pp r0.w, r0, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r3.xyz, r0, c0.z, c0.z
    mul_pp r0.xyz, r0, r0
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r0.y, r4
    mov r5.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r0.xyw, r0.x, r3, r4.xyzz
    mad_pp r0.xyz, r0.z, r5, r0.xyww
    mad_pp r0.xyz, r0, c17, r1
    mul_pp r0.xyz, r0, c16
    mul_pp r0.xyz, r2, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 116 instruction slots used (5 texture, 111 arithmetic)
