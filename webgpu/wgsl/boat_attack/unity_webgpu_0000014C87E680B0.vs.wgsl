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
  /* @offset(80) */
  x_ShadowBias : vec4<f32>,
  /* @offset(96) */
  x_LightPosition : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_16 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_45 : VGlobals;

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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

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
  let x_48 : f32 = x_45.x_TimeParameters.x;
  u_xlat0.x = (x_41 + x_48);
  let x_52 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_52);
  let x_56 : f32 = u_xlat0.x;
  u_xlat0.x = (x_56 + 1.0f);
  let x_60 : vec4<f32> = u_xlat0;
  let x_65 : vec2<f32> = (vec2<f32>(x_60.x, x_60.x) * vec2<f32>(-0.05000000074505805969f, -0.17499999701976776123f));
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
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
  let x_252 : vec4<f32> = x_45.x_TimeParameters;
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
  let x_346 : f32 = u_xlat15;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = (vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
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
  let x_412 : vec3<f32> = x_45.x_LightPosition;
  let x_413 : vec3<f32> = (-(vec3<f32>(x_407.x, x_407.y, x_407.z)) + x_412);
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_421);
  let x_423 : f32 = u_xlat15;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = (vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat15;
  u_xlat15 = clamp(x_435, 0.0f, 1.0f);
  let x_437 : vec4<f32> = u_xlat1;
  let x_440 : vec4<f32> = x_45.x_ShadowBias;
  let x_443 : vec4<f32> = u_xlat0;
  let x_445 : vec3<f32> = ((vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_440.x, x_440.x, x_440.x)) + vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat0;
  vs_INTERP1 = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : f32 = u_xlat15;
  u_xlat0.x = (-(x_451) + 1.0f);
  let x_456 : f32 = u_xlat0.x;
  let x_458 : f32 = x_45.x_ShadowBias.y;
  u_xlat0.x = (x_456 * x_458);
  let x_461 : vec4<f32> = u_xlat3;
  let x_463 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : vec4<f32> = u_xlat3;
  vs_INTERP2 = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat0;
  let x_477 : vec4<f32> = x_45.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_474.y, x_474.y, x_474.y, x_474.y) * x_477);
  let x_480 : vec4<f32> = x_45.unity_MatrixVP[0i];
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_480 * vec4<f32>(x_481.x, x_481.x, x_481.x, x_481.x)) + x_484);
  let x_487 : vec4<f32> = x_45.unity_MatrixVP[2i];
  let x_488 : vec4<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_487 * vec4<f32>(x_488.z, x_488.z, x_488.z, x_488.z)) + x_491);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = x_45.unity_MatrixVP[3i];
  u_xlat0 = (x_493 + x_495);
  let x_502 : f32 = u_xlat0.z;
  gl_Position.z = min(x_502, 1.0f);
  let x_506 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = vec3<f32>(x_506.x, x_506.y, x_506.w);
  let x_510 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_507.x, x_507.y, x_510.z, x_507.z);
  let x_514 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_514;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0);
}


