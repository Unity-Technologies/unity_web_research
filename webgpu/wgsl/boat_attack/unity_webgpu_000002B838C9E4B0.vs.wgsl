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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_153 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_198 : VGlobals;

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
  let x_42 : vec3<f32> = in_NORMAL0;
  let x_47 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_42.y, x_42.y, x_42.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_55 : vec3<f32> = in_NORMAL0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat6;
  u_xlat6 = max(x_82, 1.17549435e-38f);
  let x_85 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat6;
  let x_91 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  vs_TEXCOORD6 = 0.0f;
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_101 : vec4<f32> = in_POSITION0;
  let x_104 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_106 : vec3<f32> = (vec3<f32>(x_101.y, x_101.y, x_101.y) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.x, x_112.x, x_112.x)) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_123 : vec4<f32> = in_POSITION0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_123.z, x_123.z, x_123.z)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_137 : vec3<f32> = (vec3<f32>(x_131.x, x_131.y, x_131.z) + vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_141 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_141.x, x_141.y, x_141.z);
  let x_144 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = x_153.x_MainLightWorldToShadow[0i][1i];
  let x_157 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_153.x_MainLightWorldToShadow[0i][0i];
  let x_163 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.x, x_163.x, x_163.x)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = x_153.x_MainLightWorldToShadow[0i][2i];
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.z, x_174.z, x_174.z)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : vec4<f32> = x_153.x_MainLightWorldToShadow[0i][3i];
  let x_188 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_194 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = x_198.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_194.y, x_194.y, x_194.y, x_194.y) * x_200);
  let x_203 : vec4<f32> = x_198.unity_MatrixVP[0i];
  let x_204 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_203 * vec4<f32>(x_204.x, x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_198.unity_MatrixVP[2i];
  let x_211 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_210 * vec4<f32>(x_211.z, x_211.z, x_211.z, x_211.z)) + x_214);
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = x_198.unity_MatrixVP[3i];
  gl_Position = (x_221 + x_223);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}


