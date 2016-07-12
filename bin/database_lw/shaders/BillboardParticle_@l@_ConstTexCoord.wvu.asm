//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   row_major float4x4 g_MtxWorldIT;
//   float4 g_ParticleOptionParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   mrgHasBone             b15      1
//   mrgGlobalLight_Diffuse c184     1
//   g_aLightField          c213     1
//   g_MtxProjection        c224     4
//   g_MtxView              c228     4
//   g_MtxWorld             c232     4
//   g_MtxWorldIT           c236     3
//   g_ParticleOptionParam  c246     1
//

    vs_3_0
    def c0, -1, 0, 1, 0.25
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    dcl_texcoord2 o3
    mov r0.xzw, c0
    add r0.y, r0.z, c246.y
    mul r0.y, r0.y, c246.x
    add r0.x, r0.x, c213.w
    mad r0.x, c246.z, r0.x, r0.z
    add r1.xyz, r0.w, c184
    mul r0.yzw, r0.y, r1.xxyz
    mul o2.xyz, r0.x, r0.yzww
    mul r0.yzw, r0, v3.xxyz
    mul o3.xyz, r0.x, r0.yzww
    mul r0, c233, v0.y
    mad r0, v0.x, c232, r0
    mad r0, v0.z, c234, r0
    add r0, r0, c235
    if b15
      nrm r1.xyz, v2
      mul r2.xyz, r1.y, c229
      mad r1.xyw, r1.x, c228.xyzz, r2.xyzz
      mad r1.xyz, r1.z, c230, r1.xyww
      mul r2.xyz, r1, v0.w
      mul r3.xyz, r1.yzxw, c0.xyyw
      mad r1.xyz, r1.zxyw, c0.yxyw, -r3
      nrm r3.xyz, r1
      mad r1.xyz, r3, v2.w, r2
      mul r2, r0.y, c229
      mad r2, r0.x, c228, r2
      mad r2, r0.z, c230, r2
      mad r2, r0.w, c231, r2
      mov r1.w, c0.y
      add r1, r1, r2
      mov r2.x, c0.y
    else
      mul r3, c237, v2.y
      mad r3, v2.x, c236, r3
      mad r3, v2.z, c238, r3
      add r0, r0, r3
      mul r3, r0.y, c229
      mad r3, r0.x, c228, r3
      mad r3, r0.z, c230, r3
      mad r1, r0.w, c231, r3
      mov r2.x, v0.w
    endif
    mov r2.y, c0.y
    add r0, r1, r2.yyxy
    mul r2.xy, r0.y, c225.zwzw
    mad r0.xy, r0.x, c224.zwzw, r2
    mad r0.xy, r0.z, c226.zwzw, r0
    mad r0.xy, r0.w, c227.zwzw, r0
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    mul r0.yzw, r1.y, c225.xxyw
    mad r0.yzw, r1.x, c224.xxyw, r0
    mad r0.yzw, r1.z, c226.xxyw, r0
    mad r0.yzw, r1.w, c227.xxyw, r0
    mov o0.xyw, r0.yzzw
    mul o0.z, r0.w, r0.x
    mov o1, v1
    mov o2.w, c0.z
    mov o3.w, v3.w

// approximately 65 instruction slots used
