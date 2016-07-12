//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_DepthOfFieldFocusNearFarRange;
//   float4 g_MiddleGray_Scale_LuminanceLow_LuminanceHigh;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_dofLerpScaleBias[2];
//   sampler2D s0;
//   sampler2D s1;
//   sampler2D s4;
//
//
// Registers:
//
//   Name                                          Reg   Size
//   --------------------------------------------- ----- ----
//   g_MtxInvProjection                            c4       4
//   g_MiddleGray_Scale_LuminanceLow_LuminanceHigh c150     1
//   g_DepthOfFieldFocusNearFarRange               c151     1
//   g_dofLerpScaleBias                            c152     2
//   s0                                            s0       1
//   s1                                            s1       1
//   s4                                            s4       1
//

    ps_3_0
    def c0, 0.00389099144, 1.51991853e-005, 0.99609381, 1
    def c1, 0.996078432, -0.999984741, 0.5, 0.00100000005
    def c2, 0.0625, 16, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    mul r0.xy, c5.zwzw, v0.y
    mad r0.xy, v0.x, c4.zwzw, r0
    texld r1, v1, s1
    dp3 r0.z, r1.xyww, c0
    mad r0.xy, r0.z, c6.zwzw, r0
    add r0.z, r0.z, c1.y
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    add r0.w, c151.w, c151.x
    mad r0.x, r0.x, -r0.y, -r0.w
    add r0.y, -r0.w, c151.z
    rcp r0.y, r0.y
    mul_sat_pp r0.x, r0.x, r0.y
    mov r1.yzw, c152
    mad_sat_pp r0.xyw, r0.x, r1.yzzw, c153.yzzw
    add_pp r0.x, -r0.x, c0.w
    min_pp r1.x, r0.x, r0.y
    add_pp r0.x, r0.w, r1.x
    min_pp r1.x, r0.x, c1.x
    cmp_pp oC0.w, r0.z, c0.w, r1.x
    texld r0, c1.z, s4
    add r0.x, r0.x, c1.w
    rcp r0.x, r0.x
    mul r0.x, r0.x, c150.x
    max r1.x, r0.x, c2.x
    min r0.x, r1.x, c2.y
    texld_pp r1, v1, s0
    mul_pp oC0.xyz, r0.x, r1

// approximately 28 instruction slots used (3 texture, 25 arithmetic)
