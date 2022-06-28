type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_99 : vec4<f32> = in_TANGENT0;
  let x_102 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_104 : vec3<f32> = (vec3<f32>(x_99.y, x_99.y, x_99.y) * vec3<f32>(x_102.y, x_102.z, x_102.x));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_110 : vec4<f32> = in_TANGENT0;
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec3<f32> = ((vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.x, x_110.x, x_110.x)) + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_119 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_121 : vec4<f32> = in_TANGENT0;
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec3<f32> = ((vec3<f32>(x_119.y, x_119.z, x_119.x) * vec3<f32>(x_121.z, x_121.z, x_121.z)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_136);
  let x_138 : f32 = u_xlat18;
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_148;
  let x_155 : f32 = in_TANGENT0.w;
  let x_159 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_155 * x_159);
  let x_164 : vec3<f32> = in_NORMAL0;
  let x_167 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_164, vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec3<f32> = in_NORMAL0;
  let x_173 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_171, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec3<f32> = in_NORMAL0;
  let x_179 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_177, vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat20 = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_189);
  let x_191 : f32 = u_xlat20;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_191, x_191, x_191, x_191) * vec4<f32>(x_193.x, x_193.y, x_193.z, x_193.z));
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.w, x_199.x, x_199.y));
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat2;
  let x_209 : vec4<f32> = u_xlat4;
  let x_212 : vec3<f32> = ((vec3<f32>(x_204.y, x_204.w, x_204.x) * vec3<f32>(x_206.y, x_206.z, x_206.x)) + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : f32 = u_xlat18;
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_223;
  let x_226 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_226;
  let x_229 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_229;
  let x_233 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_233;
  let x_237 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_237;
  let x_240 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_240;
  let x_243 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_243;
  let x_246 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_246;
  let x_249 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_249;
  let x_252 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_252;
  let x_255 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_255;
  let x_259 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_259;
  let x_265 : vec2<f32> = in_TEXCOORD0;
  let x_268 : vec4<f32> = x_20.x_MainTex_ST;
  let x_272 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_265 * vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(x_272.z, x_272.w));
  let x_275 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_275.x, x_275.x, x_275.x, x_275.x)) + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_281.y, x_281.y, x_281.y, x_281.y)) + x_285);
  let x_287 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_287.z, x_287.z, x_287.z, x_287.z)) + x_291);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_294.y, x_294.y, x_294.y, x_294.y) * x_296);
  let x_298 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_298 * x_299);
  let x_301 : vec4<f32> = u_xlat2;
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_301 * x_302) + x_304);
  let x_306 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat3;
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_306 * vec4<f32>(x_307.x, x_307.x, x_307.x, x_307.x)) + x_310);
  let x_312 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_312 * vec4<f32>(x_313.w, x_313.w, x_313.z, x_313.w)) + x_316);
  let x_318 : vec4<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_318 * x_319) + x_321);
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_323, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_327);
  let x_329 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_329 * x_332) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_337);
  let x_339 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_339 * x_340);
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_342, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_346 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_346 * x_347);
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_355 : vec3<f32> = (vec3<f32>(x_349.y, x_349.y, x_349.y) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.z, x_372.z, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_383 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.w, x_383.w, x_383.w)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat3.y;
  let x_394 : f32 = u_xlat3.y;
  u_xlat18 = (x_392 * x_394);
  let x_397 : f32 = u_xlat3.x;
  let x_399 : f32 = u_xlat3.x;
  let x_401 : f32 = u_xlat18;
  u_xlat18 = ((x_397 * x_399) + -(x_401));
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_404.y, x_404.w, x_404.z, x_404.x) * x_406);
  let x_410 : vec4<f32> = x_20.unity_SHBr;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_20.unity_SHBg;
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_20.unity_SHBb;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_422, x_423);
  let x_428 : vec4<f32> = x_20.unity_SHC;
  let x_430 : f32 = u_xlat18;
  let x_433 : vec4<f32> = u_xlat3;
  let x_435 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430)) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_440.x, x_440.y, x_440.z) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_446 : f32 = u_xlat1.y;
  let x_448 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_446 * x_448);
  let x_452 : f32 = u_xlat0.x;
  u_xlat0.w = (x_452 * 0.5f);
  let x_456 : vec4<f32> = u_xlat1;
  let x_459 : vec2<f32> = (vec2<f32>(x_456.x, x_456.w) * vec2<f32>(0.5f, 0.5f));
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_459.x, x_460.y, x_459.y, x_460.w);
  let x_463 : vec4<f32> = u_xlat1;
  let x_464 : vec2<f32> = vec2<f32>(x_463.z, x_463.w);
  let x_465 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_465.x, x_465.y, x_464.x, x_464.y);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = u_xlat0;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.z, x_467.z) + vec2<f32>(x_469.x, x_469.w));
  let x_472 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

