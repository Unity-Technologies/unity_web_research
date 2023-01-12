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
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat4 : vec4<f32>;
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
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_98 : vec4<f32> = in_TANGENT0;
  let x_101 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_103 : vec3<f32> = (vec3<f32>(x_98.y, x_98.y, x_98.y) * vec3<f32>(x_101.y, x_101.z, x_101.x));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_109 : vec4<f32> = in_TANGENT0;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.y, x_107.z, x_107.x) * vec3<f32>(x_109.x, x_109.x, x_109.x)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.y, x_118.z, x_118.x) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_130 : vec4<f32> = u_xlat2;
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_135);
  let x_137 : f32 = u_xlat15;
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec3<f32> = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_147 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_147;
  let x_154 : f32 = in_TANGENT0.w;
  let x_158 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_154 * x_158);
  let x_163 : vec3<f32> = in_NORMAL0;
  let x_166 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_163, vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_170 : vec3<f32> = in_NORMAL0;
  let x_172 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_170, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_176 : vec3<f32> = in_NORMAL0;
  let x_178 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_176, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat17;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_190, x_190, x_190, x_190) * vec4<f32>(x_192.x, x_192.y, x_192.z, x_192.z));
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.w, x_198.x, x_198.y));
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat4;
  let x_211 : vec3<f32> = ((vec3<f32>(x_203.y, x_203.w, x_203.x) * vec3<f32>(x_205.y, x_205.z, x_205.x)) + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : f32 = u_xlat15;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = (vec3<f32>(x_214, x_214, x_214) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_222;
  let x_225 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_225;
  let x_228 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_228;
  let x_232 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_232;
  let x_236 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_236;
  let x_239 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_239;
  let x_242 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_242;
  let x_245 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_245;
  let x_248 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_248;
  let x_251 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_251;
  let x_254 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_254;
  let x_258 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_258;
  let x_264 : vec2<f32> = in_TEXCOORD0;
  let x_267 : vec4<f32> = x_20.x_MainTex_ST;
  let x_271 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_264 * vec2<f32>(x_267.x, x_267.y)) + vec2<f32>(x_271.z, x_271.w));
  let x_275 : f32 = u_xlat1.y;
  let x_278 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat15 = (x_275 * x_278);
  let x_281 : f32 = x_20.unity_MatrixV[0i].z;
  let x_283 : f32 = u_xlat1.x;
  let x_285 : f32 = u_xlat15;
  u_xlat15 = ((x_281 * x_283) + x_285);
  let x_288 : f32 = x_20.unity_MatrixV[2i].z;
  let x_290 : f32 = u_xlat1.z;
  let x_292 : f32 = u_xlat15;
  u_xlat15 = ((x_288 * x_290) + x_292);
  let x_295 : f32 = x_20.unity_MatrixV[3i].z;
  let x_297 : f32 = u_xlat1.w;
  let x_299 : f32 = u_xlat15;
  u_xlat15 = ((x_295 * x_297) + x_299);
  let x_303 : f32 = u_xlat15;
  vs_TEXCOORD4.z = -(x_303);
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.w));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_318 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.w) * vec3<f32>(x_318.x, x_318.x, x_318.x)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.w) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.w) * vec3<f32>(x_340.w, x_340.w, x_340.w)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_352 : vec2<f32> = (vec2<f32>(x_348.x, x_348.z) * vec2<f32>(0.5f, 0.5f));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_352.x, x_353.y, x_352.y, x_353.w);
  let x_356 : f32 = u_xlat1.y;
  let x_358 : f32 = x_20.x_ProjectionParams.x;
  u_xlat15 = (x_356 * x_358);
  let x_361 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_361;
  let x_363 : f32 = u_xlat15;
  u_xlat2.w = (x_363 * 0.5f);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec4<f32> = u_xlat2;
  let x_370 : vec2<f32> = (vec2<f32>(x_366.z, x_366.z) + vec2<f32>(x_368.x, x_368.w));
  let x_371 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_373.x, x_373.x, x_373.x, x_373.x)) + x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_379.y, x_379.y, x_379.y, x_379.y)) + x_383);
  let x_385 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_385.z, x_385.z, x_385.z, x_385.z)) + x_389);
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_391.y, x_391.y, x_391.y, x_391.y) * x_393);
  let x_395 : vec4<f32> = u_xlat2;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_395 * x_396);
  let x_398 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_398 * x_399) + x_401);
  let x_403 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat3;
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_403 * vec4<f32>(x_404.x, x_404.x, x_404.x, x_404.x)) + x_407);
  let x_409 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = u_xlat3;
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_409 * vec4<f32>(x_410.w, x_410.w, x_410.z, x_410.w)) + x_413);
  let x_415 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_415 * x_416) + x_418);
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_420, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_424);
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_426 * x_429) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_434);
  let x_436 : vec4<f32> = u_xlat1;
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_436 * x_437);
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_439, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_443 * x_444);
  let x_446 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_452 : vec3<f32> = (vec3<f32>(x_446.y, x_446.y, x_446.y) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_456 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_458 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_458.x, x_458.x, x_458.x)) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_469 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec3<f32> = ((vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_469.z, x_469.z, x_469.z)) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_480 : vec4<f32> = u_xlat0;
  let x_483 : vec4<f32> = u_xlat0;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.w, x_480.w, x_480.w)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat3.y;
  let x_491 : f32 = u_xlat3.y;
  u_xlat15 = (x_489 * x_491);
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat3.x;
  let x_498 : f32 = u_xlat15;
  u_xlat15 = ((x_494 * x_496) + -(x_498));
  let x_501 : vec4<f32> = u_xlat3;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_501.y, x_501.w, x_501.z, x_501.x) * x_503);
  let x_507 : vec4<f32> = x_20.unity_SHBr;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_507, x_508);
  let x_513 : vec4<f32> = x_20.unity_SHBg;
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_513, x_514);
  let x_519 : vec4<f32> = x_20.unity_SHBb;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_20.unity_SHC;
  let x_527 : f32 = u_xlat15;
  let x_530 : vec4<f32> = u_xlat2;
  let x_532 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527, x_527, x_527)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_537 : vec4<f32> = u_xlat0;
  let x_539 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

