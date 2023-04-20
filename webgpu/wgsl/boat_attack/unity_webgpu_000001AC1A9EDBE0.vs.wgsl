diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_201 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  let x_38 : vec2<f32> = in_TEXCOORD0;
  let x_44 : vec4<f32> = x_41.x_Splat0_ST;
  let x_48 : vec4<f32> = x_41.x_Splat0_ST;
  let x_50 : vec2<f32> = ((x_38 * vec2<f32>(x_44.x, x_44.y)) + vec2<f32>(x_48.z, x_48.w));
  let x_51 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_50.x, x_50.y, x_51.z, x_51.w);
  let x_53 : vec2<f32> = in_TEXCOORD0;
  let x_56 : vec4<f32> = x_41.x_Splat1_ST;
  let x_60 : vec4<f32> = x_41.x_Splat1_ST;
  let x_62 : vec2<f32> = ((x_53 * vec2<f32>(x_56.x, x_56.y)) + vec2<f32>(x_60.z, x_60.w));
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_63.x, x_63.y, x_62.x, x_62.y);
  let x_66 : vec2<f32> = in_TEXCOORD0;
  let x_69 : vec4<f32> = x_41.x_Splat2_ST;
  let x_73 : vec4<f32> = x_41.x_Splat2_ST;
  let x_75 : vec2<f32> = ((x_66 * vec2<f32>(x_69.x, x_69.y)) + vec2<f32>(x_73.z, x_73.w));
  let x_76 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_78 : vec2<f32> = in_TEXCOORD0;
  let x_81 : vec4<f32> = x_41.x_Splat3_ST;
  let x_85 : vec4<f32> = x_41.x_Splat3_ST;
  let x_87 : vec2<f32> = ((x_78 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(x_85.z, x_85.w));
  let x_88 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_88.x, x_88.y, x_87.x, x_87.y);
  let x_95 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_102 : vec3<f32> = (vec3<f32>(x_95.y, x_95.y, x_95.y) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.x, x_108.x, x_108.x)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat6;
  u_xlat6 = max(x_135, 1.17549435e-38f);
  let x_138 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_138);
  let x_142 : f32 = u_xlat6;
  let x_144 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_142, x_142, x_142) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  vs_TEXCOORD6 = 0.0f;
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_154 : vec4<f32> = in_POSITION0;
  let x_157 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_159 : vec3<f32> = (vec3<f32>(x_154.y, x_154.y, x_154.y) * vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_176 : vec4<f32> = in_POSITION0;
  let x_179 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_190 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_194.x, x_194.y, x_194.z);
  let x_197 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_201.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_197.y, x_197.y, x_197.y, x_197.y) * x_203);
  let x_206 : vec4<f32> = x_201.unity_MatrixVP[0i];
  let x_207 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_206 * vec4<f32>(x_207.x, x_207.x, x_207.x, x_207.x)) + x_210);
  let x_213 : vec4<f32> = x_201.unity_MatrixVP[2i];
  let x_214 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_213 * vec4<f32>(x_214.z, x_214.z, x_214.z, x_214.z)) + x_217);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_201.unity_MatrixVP[3i];
  gl_Position = (x_224 + x_226);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}


