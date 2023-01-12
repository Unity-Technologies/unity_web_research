type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_SinTime : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(12) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(14) var sampler_DisplacementNoise : sampler;

@group(0) @binding(13) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_26 : f32 = x_22.x_DisplacementScale;
  let x_28 : f32 = x_22.x_DisplacementScale;
  let x_30 : f32 = x_22.x_DisplacementScale;
  let x_31 : vec3<f32> = vec3<f32>(x_26, x_28, x_30);
  let x_36 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = in_COLOR0;
  let x_44 : vec3<f32> = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.z, x_42.z, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_51 : f32 = x_22.x_SinTime.y;
  let x_54 : f32 = x_22.x_DisplacementSpeed;
  u_xlat1.y = (x_51 * x_54);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_63 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = in_COLOR0;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.y, x_65.y, x_65.y)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_83.x, x_83.y, x_83.z), 0.0f);
  u_xlat0 = x_85;
  let x_91 : i32 = x_22.x_DisplacementIndex;
  u_xlati1 = x_91;
  let x_92 : vec4<f32> = u_xlat0;
  let x_102 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_107 : vec4<u32> = indexable[x_102];
  u_xlat0.x = dot(x_92, bitcast<vec4<f32>>(x_107));
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_120.x, x_120.x), 0.0f);
  u_xlat0.x = x_122.x;
  let x_126 : f32 = u_xlat0.x;
  let x_129 : f32 = x_22.x_Displacement;
  u_xlat0.x = (x_126 * x_129);
  let x_133 : f32 = u_xlat0.x;
  let x_136 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_133 * x_136);
  let x_141 : vec3<f32> = in_NORMAL0;
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = in_POSITION0;
  let x_147 : vec3<f32> = ((x_141 * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_150.y, x_150.y, x_150.y, x_150.y) * x_156);
  let x_159 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_159 * vec4<f32>(x_160.x, x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_167 * vec4<f32>(x_168.z, x_168.z, x_168.z, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  u_xlat1 = (x_173 + x_176);
  let x_179 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  let x_181 : vec4<f32> = in_POSITION0;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.w, x_181.w, x_181.w)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = x_22.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_190.y, x_190.y, x_190.y, x_190.y) * x_194);
  let x_197 : vec4<f32> = x_22.unity_MatrixVP[0i];
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_197 * vec4<f32>(x_198.x, x_198.x, x_198.x, x_198.x)) + x_201);
  let x_204 : vec4<f32> = x_22.unity_MatrixVP[2i];
  let x_205 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_211 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_211 * vec4<f32>(x_212.w, x_212.w, x_212.w, x_212.w)) + x_215);
  let x_221 : vec4<f32> = u_xlat1;
  gl_Position = x_221;
  let x_226 : f32 = u_xlat1.z;
  let x_228 : f32 = x_22.x_ProjectionParams.y;
  u_xlat18 = (x_226 / x_228);
  let x_230 : f32 = u_xlat18;
  u_xlat18 = (-(x_230) + 1.0f);
  let x_234 : f32 = u_xlat18;
  let x_236 : f32 = x_22.x_ProjectionParams.z;
  u_xlat18 = (x_234 * x_236);
  let x_238 : f32 = u_xlat18;
  u_xlat18 = max(x_238, 0.0f);
  let x_240 : f32 = u_xlat18;
  let x_243 : f32 = x_22.unity_FogParams.x;
  u_xlat18 = (x_240 * x_243);
  let x_245 : f32 = u_xlat18;
  let x_246 : f32 = u_xlat18;
  u_xlat18 = (x_245 * -(x_246));
  let x_251 : f32 = u_xlat18;
  vs_TEXCOORD3 = exp2(x_251);
  let x_253 : vec3<f32> = in_NORMAL0;
  let x_256 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_253, vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_262 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_260, vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_266 : vec3<f32> = in_NORMAL0;
  let x_268 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_266, vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_277);
  let x_279 : f32 = u_xlat18;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec3<f32> = (vec3<f32>(x_279, x_279, x_279) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_288 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_288.x, x_288.y, x_288.z);
  let x_291 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_294 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_294;
  let x_296 : f32 = u_xlat1.y;
  let x_298 : f32 = u_xlat1.y;
  u_xlat18 = (x_296 * x_298);
  let x_301 : f32 = u_xlat1.x;
  let x_303 : f32 = u_xlat1.x;
  let x_305 : f32 = u_xlat18;
  u_xlat18 = ((x_301 * x_303) + -(x_305));
  let x_308 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_308.y, x_308.z, x_308.z, x_308.x) * vec4<f32>(x_310.x, x_310.y, x_310.z, x_310.z));
  let x_316 : vec4<f32> = x_22.unity_SHBr;
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_316, x_317);
  let x_322 : vec4<f32> = x_22.unity_SHBg;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_22.unity_SHBb;
  let x_329 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_328, x_329);
  let x_334 : vec4<f32> = x_22.unity_SHC;
  let x_336 : f32 = u_xlat18;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336, x_336, x_336)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  u_xlat1.w = 1.0f;
  let x_348 : vec4<f32> = x_22.unity_SHAr;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_22.unity_SHAg;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_22.unity_SHAb;
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_360, x_361);
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = max(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_377.y, x_377.y, x_377.y, x_377.y)) + x_381);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_384.y, x_384.y, x_384.y, x_384.y) * x_386);
  let x_388 : vec4<f32> = u_xlat3;
  let x_389 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_388 * x_389);
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_392.x, x_392.x, x_392.x, x_392.x)) + x_396);
  let x_398 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_398.z, x_398.z, x_398.z, x_398.z)) + x_403);
  let x_405 : vec4<f32> = u_xlat5;
  let x_406 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_405 * vec4<f32>(x_406.x, x_406.x, x_406.x, x_406.x)) + x_409);
  let x_411 : vec4<f32> = u_xlat5;
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_411 * x_412) + x_414);
  let x_416 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_416 * x_417) + x_419);
  let x_421 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = u_xlat1;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_421 * vec4<f32>(x_422.z, x_422.z, x_422.z, x_422.z)) + x_425);
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat1 = max(x_427, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_431);
  let x_433 : vec4<f32> = u_xlat1;
  let x_436 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat1 = ((x_433 * x_436) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_440);
  let x_442 : vec4<f32> = u_xlat0;
  let x_443 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_442 * x_443);
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_445, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_448 : vec4<f32> = u_xlat1;
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_448 * x_449);
  let x_451 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_457 : vec3<f32> = (vec3<f32>(x_451.y, x_451.y, x_451.y) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_463 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_474 : vec4<f32> = u_xlat0;
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.z, x_474.z, x_474.z)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_485 : vec4<f32> = u_xlat0;
  let x_488 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.w, x_485.w, x_485.w)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : vec4<f32> = u_xlat2;
  let x_496 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD3, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2);
}

