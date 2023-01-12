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

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat21 : f32;
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
  let x_305 : f32 = u_xlat18;
  vs_TEXCOORD4.z = -(x_305);
  let x_309 : vec4<f32> = u_xlat1;
  let x_312 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_314 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_312.x, x_312.y, x_312.w));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.w) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_331 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.w) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_342 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.w) * vec3<f32>(x_342.w, x_342.w, x_342.w)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_351;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_357 : f32 = x_20.x_ProjectionParams.x;
  u_xlat3.y = x_357;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat3;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec4<f32> = u_xlat3;
  let x_370 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.w) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = u_xlat2;
  let x_375 : vec2<f32> = vec2<f32>(x_374.z, x_374.w);
  let x_376 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_376.x, x_376.y, x_375.x, x_375.y);
  let x_379 : f32 = u_xlat1.y;
  u_xlat1.w = (x_379 * 0.5f);
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec2<f32> = (vec2<f32>(x_382.z, x_382.z) + vec2<f32>(x_384.x, x_384.w));
  let x_387 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_389.x, x_389.x, x_389.x, x_389.x)) + x_393);
  let x_395 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_395.y, x_395.y, x_395.y, x_395.y)) + x_399);
  let x_401 : vec4<f32> = u_xlat0;
  let x_405 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_401.z, x_401.z, x_401.z, x_401.z)) + x_405);
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_407.y, x_407.y, x_407.y, x_407.y) * x_409);
  let x_411 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_411 * x_412);
  let x_414 : vec4<f32> = u_xlat1;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_414 * x_415) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  let x_420 : vec4<f32> = u_xlat4;
  let x_423 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_419 * vec4<f32>(x_420.x, x_420.x, x_420.x, x_420.x)) + x_423);
  let x_425 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_425 * vec4<f32>(x_426.w, x_426.w, x_426.z, x_426.w)) + x_429);
  let x_431 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_431 * x_432) + x_434);
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_436, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_440);
  let x_442 : vec4<f32> = u_xlat0;
  let x_445 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_442 * x_445) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_450 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_450);
  let x_452 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_452 * x_453);
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_455, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_459 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_459 * x_460);
  let x_462 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_468 : vec3<f32> = (vec3<f32>(x_462.y, x_462.y, x_462.y) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_474 : vec4<f32> = u_xlat0;
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.x, x_474.x, x_474.x)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_485 : vec4<f32> = u_xlat0;
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.z, x_485.z, x_485.z)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_496 : vec4<f32> = u_xlat0;
  let x_499 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496.w, x_496.w, x_496.w)) + vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = u_xlat4.y;
  let x_507 : f32 = u_xlat4.y;
  u_xlat18 = (x_505 * x_507);
  let x_510 : f32 = u_xlat4.x;
  let x_512 : f32 = u_xlat4.x;
  let x_514 : f32 = u_xlat18;
  u_xlat18 = ((x_510 * x_512) + -(x_514));
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_517.y, x_517.w, x_517.z, x_517.x) * x_519);
  let x_523 : vec4<f32> = x_20.unity_SHBr;
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_20.unity_SHBg;
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_20.unity_SHBb;
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_20.unity_SHC;
  let x_543 : f32 = u_xlat18;
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_543, x_543, x_543)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : vec4<f32> = u_xlat0;
  let x_555 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_553.x, x_553.y, x_553.z) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_559 : f32 = u_xlat3.y;
  u_xlat3.w = (x_559 * 0.5f);
  let x_562 : vec4<f32> = u_xlat3;
  let x_564 : vec4<f32> = u_xlat3;
  let x_566 : vec2<f32> = (vec2<f32>(x_562.z, x_562.z) + vec2<f32>(x_564.x, x_564.w));
  let x_567 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
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

