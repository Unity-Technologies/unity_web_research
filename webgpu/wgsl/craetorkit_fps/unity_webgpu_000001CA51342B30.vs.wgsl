type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_SinTime : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
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

@group(0) @binding(13) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(15) var sampler_DisplacementNoise : sampler;

@group(0) @binding(14) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(16) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_227 : f32 = u_xlat1.z;
  vs_TEXCOORD3 = x_227;
  let x_228 : vec3<f32> = in_NORMAL0;
  let x_231 : vec4<f32> = x_22.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_228, vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_235 : vec3<f32> = in_NORMAL0;
  let x_237 : vec4<f32> = x_22.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_235, vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_241 : vec3<f32> = in_NORMAL0;
  let x_243 : vec4<f32> = x_22.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_241, vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_253);
  let x_255 : f32 = u_xlat18;
  let x_257 : vec4<f32> = u_xlat2;
  let x_259 : vec3<f32> = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_264 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_264.x, x_264.y, x_264.z);
  let x_267 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  let x_270 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_270;
  let x_272 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = x_22.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x)) + x_276);
  let x_279 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_22.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_279.y, x_279.y, x_279.y, x_279.y)) + x_283);
  let x_285 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_22.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_285.z, x_285.z, x_285.z, x_285.z)) + x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_293.y, x_293.y, x_293.y, x_293.y) * x_295);
  let x_297 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_297 * x_298);
  let x_300 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_300 * x_301) + x_303);
  let x_305 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_305 * vec4<f32>(x_306.x, x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat2;
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_311 * vec4<f32>(x_312.z, x_312.z, x_312.z, x_312.z)) + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_317 * x_318) + x_320);
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_322, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_326);
  let x_328 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = x_22.unity_4LightAtten0;
  u_xlat0 = ((x_328 * x_331) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_336);
  let x_338 : vec4<f32> = u_xlat3;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_338 * x_339);
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_341, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_344 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_344 * x_345);
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = x_22.unity_LightColor[1i];
  let x_353 : vec3<f32> = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = x_22.unity_LightColor[0i];
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat3;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : vec4<f32> = x_22.unity_LightColor[2i];
  let x_370 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = u_xlat3;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.z, x_370.z, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : vec4<f32> = x_22.unity_LightColor[3i];
  let x_381 : vec4<f32> = u_xlat0;
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.w, x_381.w, x_381.w)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = u_xlat2.y;
  let x_392 : f32 = u_xlat2.y;
  u_xlat18 = (x_390 * x_392);
  let x_395 : f32 = u_xlat2.x;
  let x_397 : f32 = u_xlat2.x;
  let x_399 : f32 = u_xlat18;
  u_xlat18 = ((x_395 * x_397) + -(x_399));
  let x_402 : vec4<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_402.y, x_402.z, x_402.z, x_402.x) * vec4<f32>(x_404.x, x_404.y, x_404.z, x_404.z));
  let x_409 : vec4<f32> = x_22.unity_SHBr;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_409, x_410);
  let x_415 : vec4<f32> = x_22.unity_SHBg;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_22.unity_SHBb;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_421, x_422);
  let x_427 : vec4<f32> = x_22.unity_SHC;
  let x_429 : f32 = u_xlat18;
  let x_432 : vec4<f32> = u_xlat3;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429, x_429, x_429)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat2;
  vs_TEXCOORD2 = (vec3<f32>(x_438.x, x_438.y, x_438.z) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_444 : f32 = u_xlat1.y;
  let x_446 : f32 = x_22.x_ProjectionParams.x;
  u_xlat0.x = (x_444 * x_446);
  let x_450 : f32 = u_xlat0.x;
  u_xlat0.w = (x_450 * 0.5f);
  let x_455 : vec4<f32> = u_xlat1;
  let x_458 : vec2<f32> = (vec2<f32>(x_455.x, x_455.w) * vec2<f32>(0.5f, 0.5f));
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_459.y, x_458.y, x_459.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_463 : vec2<f32> = vec2<f32>(x_462.z, x_462.w);
  let x_464 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_464.x, x_464.y, x_463.x, x_463.y);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat0;
  let x_470 : vec2<f32> = (vec2<f32>(x_466.z, x_466.z) + vec2<f32>(x_468.x, x_468.w));
  let x_471 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  @location(5)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD3, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

