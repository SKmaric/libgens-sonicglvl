//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float3x4 g_MtxPalette[25];
//   row_major float3x4 g_MtxPrevPalette[25];
//   row_major float4x4 g_MtxPrevView;
//   row_major float4x4 g_MtxPrevWorld;
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   mrgHasBone       b0       1
//   g_MtxProjection  c0       4
//   g_MtxView        c4       4
//   g_MtxWorld       c8       4
//   g_MtxPrevView    c16      4
//   g_MtxPrevWorld   c20      4
//   g_MtxPalette     c28     75
//   g_MtxPrevPalette c103    75
//

    vs_3_0
    def c12, 3, 1, 0.00999999978, 0.400000006
    def c13, 0, 0.5, -0.5, 0
    dcl_position v0
    dcl_normal v1
    dcl_blendweight v2
    dcl_blendindices v3
    dcl_position o0
    dcl_texcoord o1.xy
    if b0
      add r0.x, v2.y, v2.x
      add r0.x, r0.x, v2.z
      add r0.x, -r0.x, c12.y
      mul r1, c12.x, v3
      mova a0, r1.yxzw
      mul r2, v2.y, c105[a0.x]
      mad r2, c105[a0.y], v2.x, r2
      mad r2, c105[a0.z], v2.z, r2
      mad r1, c105[a0.w], r0.x, r2
      dp4 r0.y, r1, v0
      mul r1, v2.y, c28[a0.x]
      mad r1, c28[a0.y], v2.x, r1
      mad r1, c28[a0.z], v2.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.z, r1, v0
      dp3 r0.w, r1, v1
      mul r1, v2.y, c103[a0.x]
      mad r1, c103[a0.y], v2.x, r1
      mad r1, c103[a0.z], v2.z, r1
      mad r1, c103[a0.w], r0.x, r1
      dp4 r1.x, r1, v0
      mul r2, v2.y, c104[a0.x]
      mad r2, c104[a0.y], v2.x, r2
      mad r2, c104[a0.z], v2.z, r2
      mad r2, c104[a0.w], r0.x, r2
      dp4 r1.y, r2, v0
      mul r2, v2.y, c29[a0.x]
      mad r2, c29[a0.y], v2.x, r2
      mad r2, c29[a0.z], v2.z, r2
      mad r2, c29[a0.w], r0.x, r2
      dp4 r1.z, r2, v0
      dp3 r1.w, r2, v1
      mul r2, v2.y, c30[a0.x]
      mad r2, c30[a0.y], v2.x, r2
      mad r2, c30[a0.z], v2.z, r2
      mad r2, c30[a0.w], r0.x, r2
      dp4 r0.x, r2, v0
      dp3 r2.x, r2, v1
      mov r2.yz, v0.w
    else
      mov r1.xyz, v0.xyyw
      mov r0.xyz, v0.zzxw
      mov r2.yz, v0.w
      mov r0.w, v1.x
      mov r1.w, v1.y
      mov r2.x, v1.z
    endif
    mul r3, r1.z, c9
    mad r3, r0.z, c8, r3
    mad r3, r0.x, c10, r3
    mad r3, r2.y, c11, r3
    mul r4, r1.y, c21
    mad r4, r1.x, c20, r4
    mad r4, r0.y, c22, r4
    mad r4, r2.z, c23, r4
    mul r0.xyz, r1.w, c9
    mad r0.xyz, r0.w, c8, r0
    mad r0.xyz, r2.x, c10, r0
    nrm r1.xyz, r0
    mad r0.xyz, r1, c12.z, r3
    mad r2.xyz, r1, c12.z, r4
    mul r5, r0.y, c5
    mad r5, r0.x, c4, r5
    mad r0, r0.z, c6, r5
    mad r0, r3.w, c7, r0
    nrm r3.xyz, r0
    mad r0.xyz, r3, -c12.w, r0
    mul r1.yw, r1.y, c5.xxzy
    mad r1.xy, r1.x, c4, r1.ywzw
    mad r1.xy, r1.z, c6, r1
    mul r3, r2.y, c17
    mad r3, r2.x, c16, r3
    mad r2, r2.z, c18, r3
    mad r2, r4.w, c19, r2
    nrm r3.xyz, r2
    mad r2.xyz, r3, -c12.w, r2
    add r1.zw, r0.xyxy, -r2.xyxy
    mul r1.xy, r1, r1.zwzw
    add r1.x, r1.y, r1.x
    mul r3, r0.y, c1
    mad r3, r0.x, c0, r3
    mad r3, r0.z, c2, r3
    mad r0, r0.w, c3, r3
    mul r3, r2.y, c1
    mad r3, r2.x, c0, r3
    mad r3, r2.z, c2, r3
    mad r2, r2.w, c3, r3
    max r1.x, r1.x, -c12.y
    min r1.x, r1.x, c12.y
    sge r1.x, r1.x, c13.x
    add r3, r0, -r2
    mad o0, r1.x, r3, r2
    rcp r0.z, r0.w
    rcp r0.w, r2.w
    mul r1.yz, r0.w, r2.xxyw
    mad r0.xy, r0, r0.z, -r1.yzzw
    mad r0.xy, r1.x, -r0, r0
    mul o1.xy, r0, c13.yzzw

// approximately 107 instruction slots used
