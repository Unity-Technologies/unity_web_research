type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = in_POSITION0;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_40 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat1 = (x_46 + x_49);
  let x_52 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_101 : vec4<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_21.x_MainTex_ST;
  let x_109 : vec4<f32> = x_21.x_MainTex_ST;
  let x_111 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_112 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = in_TEXCOORD0;
  let x_118 : vec4<f32> = x_21.x_Normal_ST;
  let x_122 : vec4<f32> = x_21.x_Normal_ST;
  let x_124 : vec2<f32> = ((vec2<f32>(x_114.x, x_114.y) * vec2<f32>(x_118.x, x_118.y)) + vec2<f32>(x_122.z, x_122.w));
  let x_125 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_125.x, x_125.y, x_124.x, x_124.y);
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_132 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_134 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_132.y, x_132.z, x_132.x));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec4<f32> = u_xlat3;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.y, x_138.z, x_138.x) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = in_TANGENT0;
  let x_154 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.y, x_149.z, x_149.x) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat18;
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_178 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_178;
  let x_185 : f32 = in_TANGENT0.w;
  let x_189 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat18 = (x_185 * x_189);
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_197 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_194, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = in_NORMAL0;
  let x_203 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_201, vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = in_NORMAL0;
  let x_209 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_207, vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_214 : vec4<f32> = u_xlat4;
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_219);
  let x_221 : f32 = u_xlat21;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_221, x_221, x_221, x_221) * vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.z));
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.w, x_230.x, x_230.y));
  let x_233 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat3;
  let x_238 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_233.y, x_233.w, x_233.x) * vec3<f32>(x_235.y, x_235.z, x_235.x)) + -(x_238));
  let x_241 : f32 = u_xlat18;
  let x_243 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_241, x_241, x_241) * x_243);
  let x_246 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_246;
  let x_249 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_249;
  let x_252 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_252;
  let x_256 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_256;
  let x_260 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_260;
  let x_263 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_263;
  let x_266 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_266;
  let x_269 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_269;
  let x_272 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_272;
  let x_275 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_275;
  let x_278 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_278;
  let x_281 : f32 = u_xlat1.y;
  let x_284 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat18 = (x_281 * x_284);
  let x_287 : f32 = x_21.unity_MatrixV[0i].z;
  let x_289 : f32 = u_xlat1.x;
  let x_291 : f32 = u_xlat18;
  u_xlat18 = ((x_287 * x_289) + x_291);
  let x_294 : f32 = x_21.unity_MatrixV[2i].z;
  let x_296 : f32 = u_xlat1.z;
  let x_298 : f32 = u_xlat18;
  u_xlat18 = ((x_294 * x_296) + x_298);
  let x_301 : f32 = x_21.unity_MatrixV[3i].z;
  let x_303 : f32 = u_xlat1.w;
  let x_305 : f32 = u_xlat18;
  u_xlat18 = ((x_301 * x_303) + x_305);
  let x_308 : f32 = u_xlat18;
  vs_TEXCOORD4.z = -(x_308);
  let x_312 : f32 = u_xlat2.y;
  let x_314 : f32 = x_21.x_ProjectionParams.x;
  u_xlat18 = (x_312 * x_314);
  let x_316 : f32 = u_xlat18;
  u_xlat1.w = (x_316 * 0.5f);
  let x_320 : vec4<f32> = u_xlat2;
  let x_323 : vec2<f32> = (vec2<f32>(x_320.x, x_320.w) * vec2<f32>(0.5f, 0.5f));
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_323.x, x_324.y, x_323.y, x_324.w);
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = u_xlat1;
  let x_330 : vec2<f32> = (vec2<f32>(x_326.z, x_326.z) + vec2<f32>(x_328.x, x_328.w));
  let x_331 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
  let x_335 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec2<f32> = ((vec2<f32>(x_335.x, x_335.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(x_340.z, x_340.z));
  let x_343 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_346 : f32 = u_xlat2.w;
  vs_TEXCOORD4.w = x_346;
  let x_348 : vec4<f32> = u_xlat2;
  let x_349 : vec2<f32> = vec2<f32>(x_348.z, x_348.w);
  let x_350 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_350.x, x_350.y, x_349.x, x_349.y);
  let x_354 : f32 = u_xlat2.z;
  vs_TEXCOORD8 = x_354;
  let x_355 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_361 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + -(x_359));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_371 : f32 = u_xlat18;
  vs_TEXCOORD6.z = sqrt(x_371);
  let x_375 : vec4<f32> = in_POSITION0;
  let x_376 : vec2<f32> = vec2<f32>(x_375.x, x_375.z);
  let x_377 : vec3<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec3<f32>(x_376.x, x_376.y, x_377.z);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_379.x, x_379.x, x_379.x, x_379.x)) + x_383);
  let x_385 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_385.y, x_385.y, x_385.y, x_385.y)) + x_389);
  let x_391 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_391.z, x_391.z, x_391.z, x_391.z)) + x_396);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_398.y, x_398.y, x_398.y, x_398.y) * x_400);
  let x_402 : vec4<f32> = u_xlat2;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_402 * x_403);
  let x_405 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_405 * x_406) + x_408);
  let x_410 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_410 * vec4<f32>(x_411.x, x_411.x, x_411.x, x_411.x)) + x_414);
  let x_416 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_416 * vec4<f32>(x_417.w, x_417.w, x_417.z, x_417.w)) + x_420);
  let x_422 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_422 * x_423) + x_425);
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_427, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_431);
  let x_433 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_433 * x_436) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_441 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_441);
  let x_443 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_443 * x_444);
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_446, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_450 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_450 * x_451);
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_459 : vec3<f32> = (vec3<f32>(x_453.y, x_453.y, x_453.y) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_465 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465.x, x_465.x, x_465.x)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_476 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.z, x_476.z, x_476.z)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487.w, x_487.w, x_487.w)) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_496 : f32 = u_xlat4.y;
  let x_498 : f32 = u_xlat4.y;
  u_xlat18 = (x_496 * x_498);
  let x_501 : f32 = u_xlat4.x;
  let x_503 : f32 = u_xlat4.x;
  let x_505 : f32 = u_xlat18;
  u_xlat18 = ((x_501 * x_503) + -(x_505));
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_508.y, x_508.w, x_508.z, x_508.x) * x_510);
  let x_514 : vec4<f32> = x_21.unity_SHBr;
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_514, x_515);
  let x_520 : vec4<f32> = x_21.unity_SHBg;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_21.unity_SHBb;
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_21.unity_SHC;
  let x_534 : f32 = u_xlat18;
  let x_537 : vec4<f32> = u_xlat2;
  let x_539 : vec3<f32> = ((vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_534, x_534, x_534)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_544 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = u_xlat1;
  vs_TEXCOORD7 = (vec3<f32>(x_544.x, x_544.y, x_544.z) + vec3<f32>(x_546.x, x_546.y, x_546.z));
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
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD8_1 : f32,
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD8, vs_TEXCOORD7);
}

