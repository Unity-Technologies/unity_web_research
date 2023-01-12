type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_SinTime : vec4<f32>,
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
  let x_215 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_216 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = u_xlat2;
  gl_Position = ((x_215 * vec4<f32>(x_216.w, x_216.w, x_216.w, x_216.w)) + x_219);
  let x_223 : vec3<f32> = in_NORMAL0;
  let x_226 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_223, vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec3<f32> = in_NORMAL0;
  let x_232 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_230, vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_248);
  let x_250 : f32 = u_xlat18;
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_250, x_250, x_250) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_259 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_262 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_262.x, x_262.y, x_262.z);
  let x_265 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_265;
  let x_267 : f32 = u_xlat1.y;
  let x_269 : f32 = u_xlat1.y;
  u_xlat18 = (x_267 * x_269);
  let x_272 : f32 = u_xlat1.x;
  let x_274 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat18;
  u_xlat18 = ((x_272 * x_274) + -(x_276));
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_279.y, x_279.z, x_279.z, x_279.x) * vec4<f32>(x_281.x, x_281.y, x_281.z, x_281.z));
  let x_287 : vec4<f32> = x_22.unity_SHBr;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_287, x_288);
  let x_293 : vec4<f32> = x_22.unity_SHBg;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_293, x_294);
  let x_299 : vec4<f32> = x_22.unity_SHBb;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_299, x_300);
  let x_305 : vec4<f32> = x_22.unity_SHC;
  let x_307 : f32 = u_xlat18;
  let x_310 : vec4<f32> = u_xlat3;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307, x_307, x_307)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  u_xlat1.w = 1.0f;
  let x_320 : vec4<f32> = x_22.unity_SHAr;
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_320, x_321);
  let x_326 : vec4<f32> = x_22.unity_SHAg;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_326, x_327);
  let x_332 : vec4<f32> = x_22.unity_SHAb;
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_332, x_333);
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat2;
  let x_346 : vec3<f32> = max(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_349.y, x_349.y, x_349.y, x_349.y)) + x_353);
  let x_356 : vec4<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_356.y, x_356.y, x_356.y, x_356.y) * x_358);
  let x_360 : vec4<f32> = u_xlat3;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_360 * x_361);
  let x_364 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_364.x, x_364.x, x_364.x, x_364.x)) + x_368);
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_370.z, x_370.z, x_370.z, x_370.z)) + x_374);
  let x_376 : vec4<f32> = u_xlat5;
  let x_377 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_376 * vec4<f32>(x_377.x, x_377.x, x_377.x, x_377.x)) + x_380);
  let x_382 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_382 * x_383) + x_385);
  let x_387 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_387 * x_388) + x_390);
  let x_392 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat1;
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_392 * vec4<f32>(x_393.z, x_393.z, x_393.z, x_393.z)) + x_396);
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat1 = max(x_398, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_402);
  let x_404 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat1 = ((x_404 * x_407) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_411);
  let x_413 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_413 * x_414);
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_416, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_419 : vec4<f32> = u_xlat1;
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_419 * x_420);
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_428 : vec3<f32> = (vec3<f32>(x_422.y, x_422.y, x_422.y) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.x, x_434.x, x_434.x)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat1;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.z, x_445.z, x_445.z)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_456 : vec4<f32> = u_xlat0;
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = ((vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(x_456.w, x_456.w, x_456.w)) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = (vec3<f32>(x_465.x, x_465.y, x_465.z) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2);
}

