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

struct VGlobals {
  /* @offset(0) */
  x_TimeParameters : vec4<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_16 : UnityPerDraw;

@group(1) @binding(5) var<uniform> x_44 : VGlobals;

var<private> u_xlat10 : f32;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> vs_INTERP0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_459 : LightShadows;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP5 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_28 : vec2<f32> = (vec2<f32>(x_23.x, x_23.z) * vec2<f32>(2.0f, 0.25f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_34 : f32 = u_xlat0.y;
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = (x_34 + x_37);
  let x_41 : f32 = u_xlat0.x;
  let x_47 : f32 = x_44.x_TimeParameters.x;
  u_xlat0.x = (x_41 + x_47);
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_51);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 + 1.0f);
  let x_59 : vec4<f32> = u_xlat0;
  let x_64 : vec2<f32> = (vec2<f32>(x_59.x, x_59.x) * vec2<f32>(-0.05000000074505805969f, -0.17499999701976776123f));
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_64.x, x_64.y, x_65.z, x_65.w);
  let x_73 : f32 = in_POSITION0.y;
  u_xlat10 = ((x_73 * 0.05000000074505805969f) + 1.0f);
  let x_77 : f32 = u_xlat10;
  let x_78 : f32 = u_xlat10;
  u_xlat10 = (x_77 * x_78);
  let x_80 : f32 = u_xlat10;
  let x_81 : f32 = u_xlat10;
  let x_83 : f32 = u_xlat10;
  u_xlat10 = ((x_80 * x_81) + -(x_83));
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : f32 = u_xlat10;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_88, x_88));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_91.y, x_90.y, x_91.w);
  let x_94 : vec3<f32> = in_POSITION0;
  let x_98 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_100 : vec3<f32> = (vec3<f32>(x_94.y, x_94.y, x_94.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_104 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_106 : vec3<f32> = in_POSITION0;
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.x, x_106.x, x_106.x)) + vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_116 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_118 : vec3<f32> = in_POSITION0;
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec3<f32> = ((vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_118.z, x_118.z, x_118.z)) + vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_131 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.z) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  u_xlat0.y = 0.0f;
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_136.x, x_136.y, x_136.z) + vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = x_16.unity_WorldToObject[1i];
  let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = x_16.unity_WorldToObject[0i];
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_159.z);
  let x_163 : vec4<f32> = x_16.unity_WorldToObject[2i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.y, x_168.w));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_16.unity_WorldToObject[3i];
  let x_178 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat15;
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = in_POSITION0;
  let x_197 : vec3<f32> = in_POSITION0;
  u_xlat15 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_199);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : f32 = u_xlat15;
  let x_205 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : f32 = x_16.unity_ObjectToWorld[0i].y;
  u_xlat1.x = x_209;
  let x_212 : f32 = x_16.unity_ObjectToWorld[1i].y;
  u_xlat1.y = x_212;
  let x_215 : f32 = x_16.unity_ObjectToWorld[2i].y;
  u_xlat1.z = x_215;
  let x_218 : f32 = x_16.unity_ObjectToWorld[3i].y;
  u_xlat1.w = x_218;
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(x_221, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : f32 = in_COLOR0.y;
  let x_230 : f32 = u_xlat15;
  u_xlat15 = ((x_227 * 4.5f) + x_230);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : f32 = u_xlat15;
  u_xlat6.y = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236, x_236, x_236));
  let x_240 : vec4<f32> = in_COLOR0;
  let x_245 : vec2<f32> = (vec2<f32>(x_240.x, x_240.y) * vec2<f32>(0.10000000149011611938f, 3.29999995231628417969f));
  let x_246 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_245.x, x_246.y, x_245.y);
  let x_249 : vec3<f32> = u_xlat6;
  let x_252 : vec4<f32> = x_44.x_TimeParameters;
  u_xlat2 = (vec4<f32>(x_249.y, x_249.y, x_249.z, x_249.z) + vec4<f32>(x_252.x, x_252.x, x_252.x, x_252.x));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_255 * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 0.75f, 0.38600000739097595215f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_265 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat2 = fract(x_271);
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_273 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat3 = (abs(x_278) * abs(x_280));
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2 = ((-(abs(x_283)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_290 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_290 * x_291) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.y, x_296.w, x_296.y) + vec3<f32>(x_298.x, x_298.z, x_298.x));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_301.y, x_300.y, x_300.z);
  let x_304 : f32 = in_COLOR0.z;
  u_xlat2.y = ((x_304 * -0.34999999403953552246f) + 0.34999999403953552246f);
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = x_16.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_311, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = in_NORMAL0;
  let x_319 : vec4<f32> = x_16.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_317, vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_325 : vec4<f32> = x_16.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_323, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : f32 = u_xlat15;
  u_xlat15 = max(x_334, 1.17549435e-38f);
  let x_337 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_337);
  let x_341 : f32 = u_xlat15;
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec2<f32>(x_341, x_341) * vec2<f32>(x_343.x, x_343.z));
  let x_348 : f32 = u_xlat15;
  let x_350 : vec4<f32> = u_xlat3;
  vs_INTERP9 = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat6;
  let x_355 : vec2<f32> = u_xlat4;
  let x_356 : vec2<f32> = (vec2<f32>(x_353.x, x_353.x) * x_355);
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_356.x, x_357.y, x_356.y, x_357.w);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat2;
  let x_364 : vec4<f32> = u_xlat0;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.z, x_359.w) * vec3<f32>(x_361.x, x_361.y, x_361.z)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_374 : vec3<f32> = (vec3<f32>(x_369.y, x_369.y, x_369.y) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_380 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat1;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.x, x_380.x)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_385.z);
  let x_389 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = ((vec3<f32>(x_389.x, x_389.y, x_389.z) * vec3<f32>(x_391.z, x_391.z, x_391.z)) + vec3<f32>(x_394.x, x_394.y, x_394.w));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_404 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = x_44.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_407.y, x_407.y, x_407.y, x_407.y) * x_410);
  let x_413 : vec4<f32> = x_44.unity_MatrixVP[0i];
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_413 * vec4<f32>(x_414.x, x_414.x, x_414.x, x_414.x)) + x_417);
  let x_420 : vec4<f32> = x_44.unity_MatrixVP[2i];
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_420 * vec4<f32>(x_421.z, x_421.z, x_421.z, x_421.z)) + x_424);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = x_44.unity_MatrixVP[3i];
  gl_Position = (x_430 + x_432);
  let x_439 : vec4<f32> = in_TEXCOORD1;
  let x_443 : vec4<f32> = x_16.unity_LightmapST;
  let x_447 : vec4<f32> = x_16.unity_LightmapST;
  vs_INTERP0 = ((vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_443.x, x_443.y)) + vec2<f32>(x_447.z, x_447.w));
  let x_450 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = x_459.x_MainLightWorldToShadow[0i][1i];
  let x_463 : vec3<f32> = (vec3<f32>(x_450.y, x_450.y, x_450.y) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : vec4<f32> = x_459.x_MainLightWorldToShadow[0i][0i];
  let x_469 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec3<f32> = ((vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_469.x, x_469.x, x_469.x)) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : vec4<f32> = x_459.x_MainLightWorldToShadow[0i][2i];
  let x_480 : vec4<f32> = u_xlat0;
  let x_483 : vec4<f32> = u_xlat1;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.z, x_480.z, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : vec4<f32> = u_xlat0;
  vs_INTERP8 = vec3<f32>(x_489.x, x_489.y, x_489.z);
  let x_492 : vec4<f32> = u_xlat1;
  let x_495 : vec4<f32> = x_459.x_MainLightWorldToShadow[0i][3i];
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = vs_INTERP3;
  vs_INTERP3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  vs_INTERP3.w = 0.0f;
  let x_503 : vec4<f32> = in_TANGENT0;
  let x_506 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_508 : vec3<f32> = (vec3<f32>(x_503.y, x_503.y, x_503.y) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_514 : vec4<f32> = in_TANGENT0;
  let x_517 : vec4<f32> = u_xlat0;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.x, x_514.x, x_514.x)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_525 : vec4<f32> = in_TANGENT0;
  let x_528 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = ((vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(x_525.z, x_525.z, x_525.z)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : f32 = u_xlat15;
  u_xlat15 = max(x_538, 1.17549435e-38f);
  let x_540 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_540);
  let x_543 : f32 = u_xlat15;
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec3<f32> = (vec3<f32>(x_543, x_543, x_543) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = vs_INTERP4;
  vs_INTERP4 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = in_TANGENT0.w;
  vs_INTERP4.w = x_551;
  let x_555 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP5 = x_555;
  let x_557 : vec4<f32> = in_COLOR0;
  vs_INTERP6 = x_557;
  vs_INTERP7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(6)
  vs_INTERP9_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec2<f32>,
  @location(5)
  vs_INTERP8_1 : vec3<f32>,
  @location(1)
  vs_INTERP3_1 : vec4<f32>,
  @location(2)
  vs_INTERP4_1 : vec4<f32>,
  @location(3)
  vs_INTERP5_1 : vec4<f32>,
  @location(4)
  vs_INTERP6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(5) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_INTERP9, gl_Position, vs_INTERP0, vs_INTERP8, vs_INTERP3, vs_INTERP4, vs_INTERP5, vs_INTERP6);
}


