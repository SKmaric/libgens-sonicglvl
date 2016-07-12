//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   float4 mrgMaterialColor;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
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
//   mrgMaterialColor         c150     1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    dcl_texcoord2 v0.xyz
    dcl_texcoord3_pp v1.xyz
    add_pp r0.xyz, -c50, v0
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v0
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v0
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    nrm r6.xyz, v1
    dp3_sat_pp r0.w, r6, -r4
    mul_pp r7.xyz, r5, r0.w
    mul_pp r5.xyz, r5, c20.z
    dp3_sat_pp r0.w, r6, -r2
    mad_pp r7.xyz, r0.w, r3, r7
    mul_pp r3.xyz, r3, c20.z
    dp3_sat_pp r0.w, r6, -r0
    mad_pp r7.xyz, r0.w, r1, r7
    mul_pp r1.xyz, r1, c20.z
    add_pp r8.xyz, -c54, v0
    dp3_pp r0.w, r8, r8
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r8.xyz, r0.w, r8
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r9.xyz, r0.w, c55
    dp3_sat_pp r0.w, r6, -r8
    mad_pp r7.xyz, r0.w, r9, r7
    mul_pp r9.xyz, r9, c20.z
    dp3_sat_pp r0.w, r6, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r7.xyz, r0.w, c36, r7
    mad_pp r10.xyz, r6, c0.x, c0.x
    mov r11.xyz, c80
    mad r11.xyz, r11, r10.y, c79
    mul_pp r12.xyz, r6, r6
    mul r11.xyz, r11, r12.y
    mov r13.xyz, c77
    mad r10.xyw, c78.xyzz, r10.x, r13.xyzz
    mov r13.xyz, c82
    mad r13.xyz, r13, r10.z, c81
    mad_pp r10.xyz, r12.x, r10.xyww, r11
    mad_pp r10.xyz, r12.z, r13, r10
    mad_pp r7.xyz, r10, c17, r7
    add_pp r10.xyz, c22, -v0
    nrm_pp r11.xyz, r10
    dp3 r0.w, -r11, r6
    add r0.w, r0.w, r0.w
    mad_pp r6.xyz, r6, -r0.w, -r11
    dp3_sat_pp r0.w, r6, -r4
    mov r4.yz, c20
    mul_pp r1.w, r4.y, c0.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c0.z
    pow_pp r2.w, r0.w, r1.w
    mul_pp r4.xyw, r2.w, r5.xyzz
    dp3_sat_pp r0.w, r6, -r2
    pow_pp r2.x, r0.w, r1.w
    mad_pp r2.xyz, r3, r2.x, r4.xyww
    dp3_sat_pp r0.x, r6, -r0
    pow_pp r2.w, r0.x, r1.w
    mad_pp r0.xyz, r1, r2.w, r2
    dp3_sat_pp r0.w, r6, -r8
    dp3_sat_pp r1.x, r6, -c10
    pow_pp r2.x, r1.x, r1.w
    pow_pp r2.y, r0.w, r1.w
    mad_pp r0.xyz, r9, r2.y, r0
    mul_pp r1.xyz, r4.z, c37
    mul_pp r1.xyz, r2.x, r1
    mad_pp r0.xyz, r1, c77.w, r0
    mul_pp r0.xyz, r0, c18
    mad_pp oC0.xyz, r7, c150, r0
    mov_pp oC0.w, c16.w

// approximately 99 instruction slots used
