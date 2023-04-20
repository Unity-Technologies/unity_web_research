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
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerDraw;

var<private> u_xlat6 : f32;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_387 : VGlobals;

var<private> vs_INTERP1 : vec3<f32>;

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
  u_xlat0.x = sin(x_41);
  let x_45 : f32 = u_xlat0.x;
  u_xlat0.x = (x_45 + 1.0f);
  let x_49 : vec4<f32> = u_xlat0;
  let x_54 : vec2<f32> = (vec2<f32>(x_49.x, x_49.x) * vec2<f32>(-0.05000000074505805969f, -0.17499999701976776123f));
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_54.x, x_54.y, x_55.z, x_55.w);
  let x_63 : f32 = in_POSITION0.y;
  u_xlat6 = ((x_63 * 0.05000000074505805969f) + 1.0f);
  let x_67 : f32 = u_xlat6;
  let x_68 : f32 = u_xlat6;
  u_xlat6 = (x_67 * x_68);
  let x_70 : f32 = u_xlat6;
  let x_71 : f32 = u_xlat6;
  let x_73 : f32 = u_xlat6;
  u_xlat6 = ((x_70 * x_71) + -(x_73));
  let x_76 : vec4<f32> = u_xlat0;
  let x_78 : f32 = u_xlat6;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(x_78, x_78));
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_80.x, x_81.y, x_80.y, x_81.w);
  let x_84 : vec3<f32> = in_POSITION0;
  let x_88 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_90 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_96 : vec3<f32> = in_POSITION0;
  let x_99 : vec4<f32> = u_xlat1;
  let x_101 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_106 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_108 : vec3<f32> = in_POSITION0;
  let x_111 : vec4<f32> = u_xlat1;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.z, x_108.z, x_108.z)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_121 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  u_xlat0.y = 0.0f;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.z) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<f32> = x_16.unity_WorldToObject[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_16.unity_WorldToObject[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_149.z);
  let x_153 : vec4<f32> = x_16.unity_WorldToObject[2i];
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.w));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_16.unity_WorldToObject[3i];
  let x_168 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_177);
  let x_179 : f32 = u_xlat9;
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec3<f32> = in_POSITION0;
  let x_187 : vec3<f32> = in_POSITION0;
  u_xlat9 = dot(x_186, x_187);
  let x_189 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_189);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : f32 = u_xlat9;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193, x_193, x_193));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = x_16.unity_ObjectToWorld[0i].y;
  u_xlat1.x = x_200;
  let x_203 : f32 = x_16.unity_ObjectToWorld[1i].y;
  u_xlat1.y = x_203;
  let x_206 : f32 = x_16.unity_ObjectToWorld[2i].y;
  u_xlat1.z = x_206;
  let x_209 : f32 = x_16.unity_ObjectToWorld[3i].y;
  u_xlat1.w = x_209;
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_212, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_218 : f32 = in_COLOR0.y;
  let x_221 : f32 = u_xlat9;
  u_xlat9 = ((x_218 * 4.5f) + x_221);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : f32 = u_xlat9;
  u_xlat1.x = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225, x_225, x_225));
  let x_230 : f32 = in_COLOR0.y;
  u_xlat1.y = x_230;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_232.x, x_232.x, x_232.y, x_232.y) * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 2.47499990463256835938f, 1.27380001544952392578f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_243 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_249);
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_251 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat2 = (abs(x_256) * abs(x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = ((-(abs(x_261)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_268 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_268 * x_269) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.y, x_274.w, x_274.y) + vec3<f32>(x_276.x, x_276.z, x_276.x));
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : vec3<f32> = in_NORMAL0;
  let x_284 : vec4<f32> = x_16.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_282, vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_288 : vec3<f32> = in_NORMAL0;
  let x_290 : vec4<f32> = x_16.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_288, vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_296 : vec4<f32> = x_16.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_294, vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : vec4<f32> = u_xlat2;
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : f32 = u_xlat9;
  u_xlat9 = max(x_305, 1.17549435e-38f);
  let x_308 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_308);
  let x_310 : f32 = u_xlat9;
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec2<f32> = (vec2<f32>(x_310, x_310) * vec2<f32>(x_312.x, x_312.z));
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
  let x_318 : f32 = in_COLOR0.x;
  u_xlat9 = (x_318 * 0.10000000149011611938f);
  let x_321 : f32 = u_xlat9;
  let x_323 : vec4<f32> = u_xlat2;
  let x_325 : vec2<f32> = (vec2<f32>(x_321, x_321) * vec2<f32>(x_323.x, x_323.y));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_326.y, x_325.y, x_326.w);
  let x_329 : f32 = in_COLOR0.z;
  u_xlat2.y = ((x_329 * -0.34999999403953552246f) + 0.34999999403953552246f);
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.x, x_337.y, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_350 : vec3<f32> = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_361.z);
  let x_365 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.w));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_380 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_387.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_383.y, x_383.y, x_383.y, x_383.y) * x_389);
  let x_392 : vec4<f32> = x_387.unity_MatrixVP[0i];
  let x_393 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_392 * vec4<f32>(x_393.x, x_393.x, x_393.x, x_393.x)) + x_396);
  let x_399 : vec4<f32> = x_387.unity_MatrixVP[2i];
  let x_400 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_399 * vec4<f32>(x_400.z, x_400.z, x_400.z, x_400.z)) + x_403);
  let x_407 : vec4<f32> = u_xlat0;
  vs_INTERP1 = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_413 : vec4<f32> = u_xlat1;
  let x_415 : vec4<f32> = x_387.unity_MatrixVP[3i];
  gl_Position = (x_413 + x_415);
  let x_421 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_421;
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


