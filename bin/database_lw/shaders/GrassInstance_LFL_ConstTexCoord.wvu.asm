//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyeDirection;
//   float4 g_IndexCount2;
//   float4 g_Instance;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_Misc[3];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_TimeParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Direction;
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   g_EyeDirection                c179     1
//   mrgGlobalLight_Direction      c183     1
//   g_IndexCount2                 c196     1
//   g_LightScatteringFarNearScale c199     1
//   g_TimeParam                   c212     1
//   g_aLightField                 c213     6
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//   g_Misc                        c246     3
//   g_Instance                    c249     1
//

    vs_3_0
    def c0, 2, -1, 0.159154937, 0.5
    def c1, 6.28318548, -3.14159274, 0.499746531, 0.5
    def c2, 1, 0, -1, -0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord4 v2
    dcl_texcoord5 v3
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord3 o2
    dcl_texcoord1 o3
    dcl_texcoord6 o4
    dcl_color o5
    dcl_color1 o6
    mad r0.xyz, v3, c0.x, c0.y
    mul r1.xyz, r0.y, c233
    mad r0.xyw, r0.x, c232.xyzz, r1.xyzz
    mad r0.xyz, r0.z, c234, r0.xyww
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul r0.xyz, r0.w, r0
    rcp r0.w, r0.w
    mul r1.xyz, r0.yzxw, r0
    mad r1.xyz, r0.zxyw, r0.zxyw, -r1
    nrm r2.xyz, r1
    mul r1.xyz, r0.yzxw, r2.zxyw
    mad r1.xyz, r2.yzxw, r0.zxyw, -r1
    nrm r3.xyz, r1
    mul r1.xyz, r3, c249.y
    mad r1.xyz, r2, c249.x, r1
    mul r2, c233, v2.y
    mad r2, v2.x, c232, r2
    mad r2, v2.z, c234, r2
    add r2, r2, c235
    mad r1.xyz, r0.w, r1, r2
    add r2.x, r1.y, r1.x
    add r2.x, r1.z, r2.x
    mov r3.xy, c247
    mad r2.x, r2.x, r3.y, c212.y
    mul r2.x, r2.x, c247.z
    mad r2.x, r2.x, c0.z, c0.w
    frc r2.x, r2.x
    mad r2.x, r2.x, c1.x, c1.y
    sincos r4.y, r2.x
    mul r2.x, r4.y, c247.w
    mad r2.x, r2.x, c1.z, c1.w
    frc r2.x, r2.x
    mad r2.x, r2.x, c1.x, c1.y
    sincos r4.xy, r2.x
    mul r2.xyz, r4.yxyw, c2.xxyw
    mul r3.yzw, r2.xzyx, c2.xxxz
    lrp r4.xyz, c247.x, r3.yzww, r2
    mad r2.xyz, r2.xxyw, c2.yxxw, c2.ywzw
    mad r2.xyz, r3.x, r2, c2.yyxw
    mul r4.xyz, r0.y, r4
    add r5.xyz, -r3.zwyw, c2.xyyw
    mad r3.xyz, c247.x, r5, r3.zwyw
    mad r3.xyz, r0.x, r3, r4
    mad r2.xyz, r0.z, r2, r3
    mov o5.xyz, r0
    mad r0.xyz, r2, c0.w, c0.w
    mov r3.xyz, c213
    mad r3.xyz, c214, r0.x, r3
    mul r4.xyz, r2, r2
    mov r5.xyz, c216
    mad r5.xyz, r5, r0.y, c215
    mov r6.xyz, c218
    mad r0.xyz, r6, r0.z, c217
    mul r5.xyz, r4.y, r5
    mad r3.xyz, r4.x, r3, r5
    mad o6.xyz, r4.z, r0, r3
    mul r3, r1.y, c229
    mad r3, r1.x, c228, r3
    mad r3, r1.z, c230, r3
    mad r3, r2.w, c231, r3
    mad_sat r0.x, -r3.z, c246.x, c246.y
    slt r0.y, v2.w, -v2.w
    frc r0.z, v2.w
    add r2.w, -r0.z, v2.w
    slt r0.z, -r0.z, r0.z
    mad r0.y, r0.y, r0.z, r2.w
    add r0.z, -r0.y, v2.w
    add r0.y, r0.y, c0.w
    mad r0.z, c248.y, r0.z, c248.x
    mul r0.x, r0.z, r0.x
    mul r0.x, r0.x, v3.w
    mul r0.x, r0.x, v0.y
    mul r4.xyz, r2.y, c229
    mad r2.xyw, r2.x, c228.xyzz, r4.xyzz
    mad r2.xyz, r2.z, c230, r2.xyww
    mul r4.xyz, r0.x, r2
    mul r5.xyz, r2.zxyw, c2.yxyw
    mad r2.xyz, r2.yzxw, c2.xyyw, -r5
    nrm r5.xyz, r2
    mul r2.xyz, r5, v0.x
    mad r2.xyz, r2, c248.z, r4
    mad r0.xzw, r0.w, r2.xyyz, r3.xyyz
    mul r2, r0.z, c225
    mad r2, r0.x, c224, r2
    mad r2, r0.w, c226, r2
    mad o0, r3.w, c227, r2
    mul r0.x, r0.y, c196.z
    frc r0.z, r0.x
    add r2.x, r0.x, -r0.z
    slt r0.x, r0.x, -r0.x
    slt r0.z, -r0.z, r0.z
    mad r0.x, r0.x, r0.z, r2.x
    mad o1.z, r0.y, c196.z, -r0.x
    add r0.x, r0.x, c0.w
    mul o1.w, r0.x, c196.w
    add r0.x, -r0.w, -c199.y
    mov r1.w, r0.w
    mul_sat o3.x, r0.x, c199.x
    mov r0.xyz, c183
    dp3 r0.x, -r0, c179
    mad o3.y, r0.x, c0.w, c0.w
    mov o1.xy, v1
    mov o2, c2.y
    mov o3.zw, c2.y
    mov o4, r1
    mov o5.w, r1.w
    mov o6.w, c213.w

// approximately 128 instruction slots used
