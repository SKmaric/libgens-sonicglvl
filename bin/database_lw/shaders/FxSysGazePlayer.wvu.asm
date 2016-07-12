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
    def c0, 1, 3, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_position o0
    if b15
      add r0.x, c0.x, -v1.x
      add r0.x, r0.x, -v1.y
      add r0.x, r0.x, -v1.z
      mul r1, c0.y, v2
      mova a0, r1.yxzw
      mul r2, v1.y, c30[a0.x]
      mad r2, v1.x, c30[a0.y], r2
      mad r2, v1.z, c30[a0.z], r2
      mad r1, r0.x, c30[a0.w], r2
      mad r2, v0.xyzx, c0.xxxz, c0.zzzx
      dp4 r0.y, r1, r2
      mul r1, v1.y, c28[a0.x]
      mad r1, v1.x, c28[a0.y], r1
      mad r1, v1.z, c28[a0.z], r1
      mad r1, r0.x, c28[a0.w], r1
      dp4 r0.z, r1, r2
      mul r1, v1.y, c29[a0.x]
      mad r1, v1.x, c29[a0.y], r1
      mad r1, v1.z, c29[a0.z], r1
      mad r1, r0.x, c29[a0.w], r1
      dp4 r0.x, r1, r2
    else
      mov r0.xyz, v0.yzxw
    endif
    mul r1, r0.x, c233
    mad r1, r0.z, c232, r1
    mad r0, r0.y, c234, r1
    add r0, r0, c235
    mul r1, r0.y, c225
    mad r1, r0.x, c224, r1
    mad r1, r0.z, c226, r1
    mad r0, r0.w, c227, r1
    mov o0.zw, r0
    mad r0.xy, c231, r0.w, r0
    mul o0.xy, r0, c230

// approximately 38 instruction slots used
