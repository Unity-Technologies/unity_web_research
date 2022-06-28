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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

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
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_100 : vec4<f32> = in_TANGENT0;
  let x_103 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_105 : vec3<f32> = (vec3<f32>(x_100.y, x_100.y, x_100.y) * vec3<f32>(x_103.y, x_103.z, x_103.x));
  let x_106 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_111 : vec4<f32> = in_TANGENT0;
  let x_114 : vec4<f32> = u_xlat3;
  let x_116 : vec3<f32> = ((vec3<f32>(x_109.y, x_109.z, x_109.x) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_122 : vec4<f32> = in_TANGENT0;
  let x_125 : vec4<f32> = u_xlat3;
  let x_127 : vec3<f32> = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.z, x_122.z)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat18;
  let x_141 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139, x_139, x_139) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_149 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_149;
  let x_156 : f32 = in_TANGENT0.w;
  let x_160 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_156 * x_160);
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_165, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_178, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_185 : vec4<f32> = u_xlat4;
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_190);
  let x_192 : f32 = u_xlat21;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_192, x_192, x_192, x_192) * vec4<f32>(x_194.x, x_194.y, x_194.z, x_194.z));
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec4<f32> = u_xlat4;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.w, x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat5;
  let x_213 : vec3<f32> = ((vec3<f32>(x_205.y, x_205.w, x_205.x) * vec3<f32>(x_207.y, x_207.z, x_207.x)) + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : f32 = u_xlat18;
  let x_218 : vec4<f32> = u_xlat5;
  let x_220 : vec3<f32> = (vec3<f32>(x_216, x_216, x_216) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_224;
  let x_227 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_227;
  let x_230 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_230;
  let x_234 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_234;
  let x_238 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_238;
  let x_241 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_241;
  let x_244 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_244;
  let x_247 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_247;
  let x_250 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_250;
  let x_253 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_253;
  let x_256 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_256;
  let x_260 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_260;
  let x_266 : vec2<f32> = in_TEXCOORD0;
  let x_269 : vec4<f32> = x_20.x_MainTex_ST;
  let x_273 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_266 * vec2<f32>(x_269.x, x_269.y)) + vec2<f32>(x_273.z, x_273.w));
  let x_277 : f32 = u_xlat1.y;
  let x_280 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_277 * x_280);
  let x_283 : f32 = x_20.unity_MatrixV[0i].z;
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat18;
  u_xlat18 = ((x_283 * x_285) + x_287);
  let x_290 : f32 = x_20.unity_MatrixV[2i].z;
  let x_292 : f32 = u_xlat1.z;
  let x_294 : f32 = u_xlat18;
  u_xlat18 = ((x_290 * x_292) + x_294);
  let x_297 : f32 = x_20.unity_MatrixV[3i].z;
  let x_299 : f32 = u_xlat1.w;
  let x_301 : f32 = u_xlat18;
  u_xlat18 = ((x_297 * x_299) + x_301);
  let x_304 : f32 = u_xlat18;
  vs_TEXCOORD4.z = -(x_304);
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.w));
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_318 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.w) * vec3<f32>(x_318.x, x_318.x, x_318.x)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.w) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.w) * vec3<f32>(x_340.w, x_340.w, x_340.w)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_349;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_355 : f32 = x_20.x_ProjectionParams.x;
  u_xlat3.y = x_355;
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat3;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.w) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : vec4<f32> = u_xlat2;
  let x_373 : vec2<f32> = vec2<f32>(x_372.z, x_372.w);
  let x_374 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_374.x, x_374.y, x_373.x, x_373.y);
  let x_377 : f32 = u_xlat1.y;
  u_xlat1.w = (x_377 * 0.5f);
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec2<f32> = (vec2<f32>(x_380.z, x_380.z) + vec2<f32>(x_382.x, x_382.w));
  let x_385 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_387.x, x_387.x, x_387.x, x_387.x)) + x_391);
  let x_393 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_393.y, x_393.y, x_393.y, x_393.y)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_399.z, x_399.z, x_399.z, x_399.z)) + x_403);
  let x_405 : vec4<f32> = u_xlat4;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_405.y, x_405.y, x_405.y, x_405.y) * x_407);
  let x_409 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_409 * x_410);
  let x_412 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = u_xlat1;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_412 * x_413) + x_415);
  let x_417 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat4;
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_417 * vec4<f32>(x_418.x, x_418.x, x_418.x, x_418.x)) + x_421);
  let x_423 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_423 * vec4<f32>(x_424.w, x_424.w, x_424.z, x_424.w)) + x_427);
  let x_429 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_429 * x_430) + x_432);
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_434, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_438);
  let x_440 : vec4<f32> = u_xlat0;
  let x_443 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_440 * x_443) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_448);
  let x_450 : vec4<f32> = u_xlat1;
  let x_451 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_450 * x_451);
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_453, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_457 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_457 * x_458);
  let x_460 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_466 : vec3<f32> = (vec3<f32>(x_460.y, x_460.y, x_460.y) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_470 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_472 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472.x, x_472.x, x_472.x)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_483 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.z, x_483.z, x_483.z)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_492 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat0;
  let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_494.w, x_494.w, x_494.w)) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = u_xlat4.y;
  let x_505 : f32 = u_xlat4.y;
  u_xlat18 = (x_503 * x_505);
  let x_508 : f32 = u_xlat4.x;
  let x_510 : f32 = u_xlat4.x;
  let x_512 : f32 = u_xlat18;
  u_xlat18 = ((x_508 * x_510) + -(x_512));
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_515.y, x_515.w, x_515.z, x_515.x) * x_517);
  let x_521 : vec4<f32> = x_20.unity_SHBr;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_521, x_522);
  let x_527 : vec4<f32> = x_20.unity_SHBg;
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_527, x_528);
  let x_533 : vec4<f32> = x_20.unity_SHBb;
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_533, x_534);
  let x_539 : vec4<f32> = x_20.unity_SHC;
  let x_541 : f32 = u_xlat18;
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541, x_541, x_541)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_551 : vec4<f32> = u_xlat0;
  let x_553 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_557 : f32 = u_xlat3.y;
  u_xlat3.w = (x_557 * 0.5f);
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec4<f32> = u_xlat3;
  let x_564 : vec2<f32> = (vec2<f32>(x_560.z, x_560.z) + vec2<f32>(x_562.x, x_562.w));
  let x_565 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
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
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD5);
}

