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

var<private> vs_TEXCOORD6 : f32;

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
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_103 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_103;
  let x_105 : vec4<f32> = in_TANGENT0;
  let x_108 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_110 : vec3<f32> = (vec3<f32>(x_105.y, x_105.y, x_105.y) * vec3<f32>(x_108.y, x_108.z, x_108.x));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_116 : vec4<f32> = in_TANGENT0;
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : vec3<f32> = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_125 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_127 : vec4<f32> = in_TANGENT0;
  let x_130 : vec4<f32> = u_xlat2;
  let x_132 : vec3<f32> = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.z, x_127.z)) + vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_141);
  let x_143 : f32 = u_xlat15;
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_152;
  let x_158 : f32 = in_TANGENT0.w;
  let x_162 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_158 * x_162);
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_167, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_176 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_174, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec3<f32> = in_NORMAL0;
  let x_182 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_180, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_192);
  let x_194 : f32 = u_xlat17;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_194, x_194, x_194, x_194) * vec4<f32>(x_196.x, x_196.y, x_196.z, x_196.z));
  let x_200 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.w, x_202.x, x_202.y));
  let x_205 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = u_xlat4;
  let x_215 : vec3<f32> = ((vec3<f32>(x_207.y, x_207.w, x_207.x) * vec3<f32>(x_209.y, x_209.z, x_209.x)) + -(vec3<f32>(x_212.x, x_212.y, x_212.z)));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : f32 = u_xlat15;
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = (vec3<f32>(x_218, x_218, x_218) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_226;
  let x_229 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_229;
  let x_232 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_232;
  let x_236 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_236;
  let x_240 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_240;
  let x_243 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_243;
  let x_246 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_246;
  let x_249 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_249;
  let x_252 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_252;
  let x_255 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_255;
  let x_258 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_258;
  let x_262 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_262;
  let x_268 : vec2<f32> = in_TEXCOORD0;
  let x_271 : vec4<f32> = x_20.x_MainTex_ST;
  let x_275 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_268 * vec2<f32>(x_271.x, x_271.y)) + vec2<f32>(x_275.z, x_275.w));
  let x_279 : f32 = u_xlat1.y;
  let x_282 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat15 = (x_279 * x_282);
  let x_285 : f32 = x_20.unity_MatrixV[0i].z;
  let x_287 : f32 = u_xlat1.x;
  let x_289 : f32 = u_xlat15;
  u_xlat15 = ((x_285 * x_287) + x_289);
  let x_292 : f32 = x_20.unity_MatrixV[2i].z;
  let x_294 : f32 = u_xlat1.z;
  let x_296 : f32 = u_xlat15;
  u_xlat15 = ((x_292 * x_294) + x_296);
  let x_299 : f32 = x_20.unity_MatrixV[3i].z;
  let x_301 : f32 = u_xlat1.w;
  let x_303 : f32 = u_xlat15;
  u_xlat15 = ((x_299 * x_301) + x_303);
  let x_307 : f32 = u_xlat15;
  vs_TEXCOORD4.z = -(x_307);
  let x_311 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_316 : vec3<f32> = (vec3<f32>(x_311.y, x_311.y, x_311.y) * vec3<f32>(x_314.x, x_314.y, x_314.w));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_322 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.w) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.w) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_344 : vec4<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.w) * vec3<f32>(x_344.w, x_344.w, x_344.w)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_356 : vec2<f32> = (vec2<f32>(x_352.x, x_352.z) * vec2<f32>(0.5f, 0.5f));
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_356.x, x_357.y, x_356.y, x_357.w);
  let x_360 : f32 = u_xlat1.y;
  let x_362 : f32 = x_20.x_ProjectionParams.x;
  u_xlat15 = (x_360 * x_362);
  let x_365 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_365;
  let x_367 : f32 = u_xlat15;
  u_xlat2.w = (x_367 * 0.5f);
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.z, x_370.z) + vec2<f32>(x_372.x, x_372.w));
  let x_375 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_377.x, x_377.x, x_377.x, x_377.x)) + x_381);
  let x_383 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_383.y, x_383.y, x_383.y, x_383.y)) + x_387);
  let x_389 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_389.z, x_389.z, x_389.z, x_389.z)) + x_393);
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_395.y, x_395.y, x_395.y, x_395.y) * x_397);
  let x_399 : vec4<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_399 * x_400);
  let x_402 : vec4<f32> = u_xlat1;
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_402 * x_403) + x_405);
  let x_407 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_407 * vec4<f32>(x_408.x, x_408.x, x_408.x, x_408.x)) + x_411);
  let x_413 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat3;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_413 * vec4<f32>(x_414.w, x_414.w, x_414.z, x_414.w)) + x_417);
  let x_419 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_419 * x_420) + x_422);
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_424, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_428 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_428);
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_430 * x_433) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_438);
  let x_440 : vec4<f32> = u_xlat1;
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_440 * x_441);
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_443, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_447 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_447 * x_448);
  let x_450 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_456 : vec3<f32> = (vec3<f32>(x_450.y, x_450.y, x_450.y) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_460 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_462 : vec4<f32> = u_xlat0;
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.x, x_462.x, x_462.x)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_473 : vec4<f32> = u_xlat0;
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_473.z, x_473.z, x_473.z)) + vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_482 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_484 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat0;
  let x_489 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(x_484.w, x_484.w, x_484.w)) + vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_493 : f32 = u_xlat3.y;
  let x_495 : f32 = u_xlat3.y;
  u_xlat15 = (x_493 * x_495);
  let x_498 : f32 = u_xlat3.x;
  let x_500 : f32 = u_xlat3.x;
  let x_502 : f32 = u_xlat15;
  u_xlat15 = ((x_498 * x_500) + -(x_502));
  let x_505 : vec4<f32> = u_xlat3;
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_505.y, x_505.w, x_505.z, x_505.x) * x_507);
  let x_511 : vec4<f32> = x_20.unity_SHBr;
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_511, x_512);
  let x_517 : vec4<f32> = x_20.unity_SHBg;
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_517, x_518);
  let x_523 : vec4<f32> = x_20.unity_SHBb;
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_20.unity_SHC;
  let x_531 : f32 = u_xlat15;
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531, x_531, x_531)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_541 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD6_1 : f32,
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
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

