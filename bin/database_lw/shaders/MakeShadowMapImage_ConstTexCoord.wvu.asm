//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   mrgHasBone      b15      1
//   g_MtxPalette    c28     75
//   g_MtxProjection c224     4
//   g_MtxView       c228     4
//   g_MtxWorld      c232     4
//

    vs_3_0
    def c0, 3, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_position o0
    if b15
      mul r0, c0.x, v2
      mova a0, r0.yxzw
      mul r1, v1.y, c30[a0.x]
      mad r1, c30[a0.y], v1.x, r1
      mad r1, c30[a0.z], v1.z, r1
      add r0.x, v1.y, v1.x
      add r0.x, r0.x, v1.z
      add r0.x, -r0.x, c0.y
      mad r1, c30[a0.w], r0.x, r1
      dp4 r0.y, r1, v0
      mul r1, v1.y, c28[a0.x]
      mad r1, c28[a0.y], v1.x, r1
      mad r1, c28[a0.z], v1.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.z, r1, v0
      mul r1, v1.y, c29[a0.x]
      mad r1, c29[a0.y], v1.x, r1
      mad r1, c29[a0.z], v1.z, r1
      mad r1, c29[a0.w], r0.x, r1
      dp4 r0.x, r1, v0
      mov r0.w, v0.w
    else
      mov r0, v0.yzxw
    endif
    mul r1, r0.x, c233
    mad r1, r0.z, c232, r1
    mad r1, r0.y, c234, r1
    mad r0, r0.w, c235, r1
    mul r1, r0.y, c229
    mad r1, r0.x, c228, r1
    mad r1, r0.z, c230, r1
    mad r0, r0.w, c231, r1
    mul r1, r0.y, c225
    mad r1, r0.x, c224, r1
    mad r1, r0.z, c226, r1
    mad o0, r0.w, c227, r1

// approximately 39 instruction slots used
