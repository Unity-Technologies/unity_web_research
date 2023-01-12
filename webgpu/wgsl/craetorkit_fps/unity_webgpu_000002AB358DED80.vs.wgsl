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

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  let x_103 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_103;
  let x_106 : vec4<f32> = u_xlat1;
  let x_107 : vec2<f32> = vec2<f32>(x_106.z, x_106.w);
  let x_108 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_108.x, x_108.y, x_107.x, x_107.y);
  let x_113 : vec4<f32> = in_TEXCOORD0;
  let x_117 : vec4<f32> = x_20.x_MainTex_ST;
  let x_121 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_117.x, x_117.y)) + vec2<f32>(x_121.z, x_121.w));
  let x_125 : vec4<f32> = in_TANGENT0;
  let x_128 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_130 : vec3<f32> = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_128.y, x_128.z, x_128.x));
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_134 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_136 : vec4<f32> = in_TANGENT0;
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec3<f32> = ((vec3<f32>(x_134.y, x_134.z, x_134.x) * vec3<f32>(x_136.x, x_136.x, x_136.x)) + vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_147 : vec4<f32> = in_TANGENT0;
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.y, x_145.z, x_145.x) * vec3<f32>(x_147.z, x_147.z, x_147.z)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_161);
  let x_163 : f32 = u_xlat18;
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = (vec3<f32>(x_163, x_163, x_163) * vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_172 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_172;
  let x_178 : f32 = in_TANGENT0.w;
  let x_182 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_178 * x_182);
  let x_187 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_187, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_196 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_194, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_202 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_200, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec4<f32> = u_xlat3;
  u_xlat13 = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_212);
  let x_214 : f32 = u_xlat13;
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_214, x_214, x_214, x_214) * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.z));
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.w, x_222.x, x_222.y));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat4;
  let x_235 : vec3<f32> = ((vec3<f32>(x_227.y, x_227.w, x_227.x) * vec3<f32>(x_229.y, x_229.z, x_229.x)) + -(vec3<f32>(x_232.x, x_232.y, x_232.z)));
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : f32 = u_xlat18;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec3<f32> = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_246;
  let x_249 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_249;
  let x_252 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_252;
  let x_256 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_256;
  let x_260 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_260;
  let x_263 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_263;
  let x_266 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_266;
  let x_269 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_269;
  let x_272 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_272;
  let x_275 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_275;
  let x_278 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_278;
  let x_280 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x)) + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_286.y, x_286.y, x_286.y, x_286.y)) + x_290);
  let x_292 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_292.z, x_292.z, x_292.z, x_292.z)) + x_296);
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_299.y, x_299.y, x_299.y, x_299.y) * x_301);
  let x_303 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_303 * x_304);
  let x_306 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_306 * x_307) + x_309);
  let x_311 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_311 * vec4<f32>(x_312.x, x_312.x, x_312.x, x_312.x)) + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat3;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_317 * vec4<f32>(x_318.w, x_318.w, x_318.z, x_318.w)) + x_321);
  let x_323 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_323 * x_324) + x_326);
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_328, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_332);
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_334 * x_337) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_342 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_342);
  let x_344 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_344 * x_345);
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_347, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_351 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_351 * x_352);
  let x_354 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_360 : vec3<f32> = (vec3<f32>(x_354.y, x_354.y, x_354.y) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_366 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat2;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.z, x_377.z, x_377.z)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_388 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388.w, x_388.w, x_388.w)) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat3.y;
  let x_399 : f32 = u_xlat3.y;
  u_xlat18 = (x_397 * x_399);
  let x_402 : f32 = u_xlat3.x;
  let x_404 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat18;
  u_xlat18 = ((x_402 * x_404) + -(x_406));
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_409.y, x_409.w, x_409.z, x_409.x) * x_411);
  let x_415 : vec4<f32> = x_20.unity_SHBr;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_20.unity_SHBg;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_421, x_422);
  let x_427 : vec4<f32> = x_20.unity_SHBb;
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_427, x_428);
  let x_433 : vec4<f32> = x_20.unity_SHC;
  let x_435 : f32 = u_xlat18;
  let x_438 : vec4<f32> = u_xlat3;
  let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435, x_435, x_435)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_451 : f32 = u_xlat1.y;
  let x_453 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_451 * x_453);
  let x_456 : vec4<f32> = u_xlat1;
  let x_460 : vec2<f32> = (vec2<f32>(x_456.x, x_456.w) * vec2<f32>(0.5f, 0.5f));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_461.y, x_460.y, x_461.w);
  let x_464 : f32 = u_xlat0.x;
  u_xlat1.w = (x_464 * 0.5f);
  let x_467 : vec4<f32> = u_xlat1;
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.z, x_467.z) + vec2<f32>(x_469.x, x_469.w));
  let x_472 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

