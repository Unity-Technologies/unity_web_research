let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins0Array_Type {
  unity_ObjectToWorldArray : mat4x4<f32>,
  unity_WorldToObjectArray : mat4x4<f32>,
}

type Arr = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  unity_Builtins0Array : Arr,
}

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(15) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(14) var<uniform> x_93 : VGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_20 : i32 = u_xlati0;
  u_xlati0 = (x_20 << bitcast<u32>(3i));
  let x_29 : vec4<f32> = in_POSITION0;
  let x_39 : i32 = u_xlati0;
  let x_45 : vec4<f32> = x_38.unity_Builtins0Array[(x_39 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * x_45);
  let x_47 : i32 = u_xlati0;
  let x_50 : vec4<f32> = x_38.unity_Builtins0Array[(x_47 / 8i)].unity_ObjectToWorldArray[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_56 : i32 = u_xlati0;
  let x_60 : vec4<f32> = x_38.unity_Builtins0Array[(x_56 / 8i)].unity_ObjectToWorldArray[2i];
  let x_61 : vec4<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = u_xlat1;
  let x_68 : i32 = u_xlati0;
  let x_71 : vec4<f32> = x_38.unity_Builtins0Array[(x_68 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_67 + x_71);
  let x_76 : i32 = u_xlati0;
  let x_79 : vec4<f32> = x_38.unity_Builtins0Array[(x_76 / 8i)].unity_ObjectToWorldArray[3i];
  let x_81 : vec4<f32> = in_POSITION0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = x_93.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_96);
  let x_99 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_100 : vec4<f32> = u_xlat2;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_99 * vec4<f32>(x_100.x, x_100.x, x_100.x, x_100.x)) + x_103);
  let x_106 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_106 * vec4<f32>(x_107.z, x_107.z, x_107.z, x_107.z)) + x_110);
  let x_113 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_114 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_113 * vec4<f32>(x_114.w, x_114.w, x_114.w, x_114.w)) + x_117);
  let x_124 : vec4<f32> = u_xlat1;
  gl_Position = x_124;
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_131 : i32 = u_xlati0;
  let x_134 : vec4<f32> = x_38.unity_Builtins0Array[(x_131 / 8i)].unity_ObjectToWorldArray[1i];
  let x_136 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_134.y, x_134.z, x_134.x));
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : i32 = u_xlati0;
  let x_142 : vec4<f32> = x_38.unity_Builtins0Array[(x_139 / 8i)].unity_ObjectToWorldArray[0i];
  let x_144 : vec4<f32> = in_TANGENT0;
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.y, x_142.z, x_142.x) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : i32 = u_xlati0;
  let x_155 : vec4<f32> = x_38.unity_Builtins0Array[(x_152 / 8i)].unity_ObjectToWorldArray[2i];
  let x_157 : vec4<f32> = in_TANGENT0;
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.y, x_155.z, x_155.x) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_172);
  let x_174 : f32 = u_xlat21;
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec3<f32> = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_184 : vec3<f32> = in_NORMAL0;
  let x_185 : i32 = u_xlati0;
  let x_188 : vec4<f32> = x_38.unity_Builtins0Array[(x_185 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_184, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_193 : vec3<f32> = in_NORMAL0;
  let x_194 : i32 = u_xlati0;
  let x_197 : vec4<f32> = x_38.unity_Builtins0Array[(x_194 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_193, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = in_NORMAL0;
  let x_202 : i32 = u_xlati0;
  let x_205 : vec4<f32> = x_38.unity_Builtins0Array[(x_202 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_201, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_211 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_218);
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_221.x, x_221.x, x_221.x, x_221.x) * vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.z));
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec4<f32> = u_xlat5;
  let x_242 : vec3<f32> = ((vec3<f32>(x_234.y, x_234.w, x_234.x) * vec3<f32>(x_236.y, x_236.z, x_236.x)) + -(vec3<f32>(x_239.x, x_239.y, x_239.z)));
  let x_243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_248 : f32 = in_TANGENT0.w;
  let x_252 : f32 = x_93.unity_WorldTransformParams.w;
  u_xlat0.x = (x_248 * x_252);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_264 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_264;
  let x_268 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_268;
  let x_271 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_271;
  let x_274 : f32 = u_xlat6.x;
  vs_TEXCOORD0.w = x_274;
  let x_278 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_278;
  let x_282 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_282;
  let x_285 : f32 = u_xlat6.y;
  vs_TEXCOORD1.w = x_285;
  let x_288 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_288;
  let x_291 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_291;
  let x_294 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_294;
  let x_297 : f32 = u_xlat6.z;
  vs_TEXCOORD2.w = x_297;
  let x_300 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_300;
  let x_304 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_304;
  let x_310 : vec2<f32> = in_TEXCOORD0;
  let x_313 : vec4<f32> = x_93.x_MainTex_ST;
  let x_317 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_310 * vec2<f32>(x_313.x, x_313.y)) + vec2<f32>(x_317.z, x_317.w));
  let x_321 : f32 = u_xlat2.y;
  let x_324 : f32 = x_93.unity_MatrixV[1i].z;
  u_xlat0.x = (x_321 * x_324);
  let x_328 : f32 = x_93.unity_MatrixV[0i].z;
  let x_330 : f32 = u_xlat2.x;
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_328 * x_330) + x_333);
  let x_337 : f32 = x_93.unity_MatrixV[2i].z;
  let x_339 : f32 = u_xlat2.z;
  let x_342 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_337 * x_339) + x_342);
  let x_346 : f32 = x_93.unity_MatrixV[3i].z;
  let x_348 : f32 = u_xlat2.w;
  let x_351 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_346 * x_348) + x_351);
  let x_356 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_356);
  let x_359 : vec4<f32> = u_xlat2;
  let x_362 : vec4<f32> = x_93.unity_MatrixVP[1i];
  let x_364 : vec3<f32> = (vec3<f32>(x_359.y, x_359.y, x_359.y) * vec3<f32>(x_362.x, x_362.y, x_362.w));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_370 : vec4<f32> = u_xlat2;
  let x_373 : vec4<f32> = u_xlat3;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.w) * vec3<f32>(x_370.x, x_370.x, x_370.x)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_381 : vec4<f32> = u_xlat2;
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.w) * vec3<f32>(x_381.z, x_381.z, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_392 : vec4<f32> = u_xlat2;
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = ((vec3<f32>(x_390.x, x_390.y, x_390.w) * vec3<f32>(x_392.w, x_392.w, x_392.w)) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : f32 = u_xlat2.z;
  vs_TEXCOORD4.w = x_401;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_407 : f32 = x_93.x_ProjectionParams.x;
  u_xlat3.y = x_407;
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec4<f32> = u_xlat3;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat3;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.w) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : vec4<f32> = u_xlat1;
  let x_425 : vec2<f32> = vec2<f32>(x_424.z, x_424.w);
  let x_426 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_426.x, x_426.y, x_425.x, x_425.y);
  let x_429 : f32 = u_xlat2.y;
  u_xlat2.w = (x_429 * 0.5f);
  let x_432 : vec4<f32> = u_xlat2;
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec2<f32> = (vec2<f32>(x_432.z, x_432.z) + vec2<f32>(x_434.x, x_434.w));
  let x_437 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_439 : vec3<f32> = u_xlat6;
  let x_443 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_439.x, x_439.x, x_439.x, x_439.x)) + x_443);
  let x_445 : vec3<f32> = u_xlat6;
  let x_449 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_445.y, x_445.y, x_445.y, x_445.y)) + x_449);
  let x_451 : vec3<f32> = u_xlat6;
  let x_455 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_451.z, x_451.z, x_451.z, x_451.z)) + x_455);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_457.y, x_457.y, x_457.y, x_457.y) * x_459);
  let x_461 : vec4<f32> = u_xlat2;
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_461 * x_462);
  let x_464 : vec4<f32> = u_xlat1;
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_464 * x_465) + x_467);
  let x_469 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_469 * vec4<f32>(x_470.x, x_470.x, x_470.x, x_470.x)) + x_473);
  let x_475 : vec4<f32> = u_xlat0;
  let x_476 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_475 * vec4<f32>(x_476.w, x_476.w, x_476.z, x_476.w)) + x_479);
  let x_481 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_481 * x_482) + x_484);
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_486, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_490);
  let x_492 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_492 * x_495) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_500);
  let x_502 : vec4<f32> = u_xlat1;
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_502 * x_503);
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_505, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_509 : vec4<f32> = u_xlat0;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_509 * x_510);
  let x_512 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_518 : vec3<f32> = (vec3<f32>(x_512.y, x_512.y, x_512.y) * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_524 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec3<f32> = ((vec3<f32>(x_522.x, x_522.y, x_522.z) * vec3<f32>(x_524.x, x_524.x, x_524.x)) + vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_535 : vec4<f32> = u_xlat0;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_535.z, x_535.z, x_535.z)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_544 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_546 : vec4<f32> = u_xlat0;
  let x_549 : vec4<f32> = u_xlat0;
  let x_551 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(x_546.w, x_546.w, x_546.w)) + vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_556 : f32 = u_xlat4.y;
  let x_558 : f32 = u_xlat4.y;
  u_xlat18 = (x_556 * x_558);
  let x_561 : f32 = u_xlat4.x;
  let x_563 : f32 = u_xlat4.x;
  let x_565 : f32 = u_xlat18;
  u_xlat18 = ((x_561 * x_563) + -(x_565));
  let x_568 : vec4<f32> = u_xlat4;
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_568.y, x_568.w, x_568.z, x_568.x) * x_570);
  let x_574 : vec4<f32> = x_93.unity_SHBr;
  let x_575 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_574, x_575);
  let x_580 : vec4<f32> = x_93.unity_SHBg;
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_580, x_581);
  let x_585 : vec4<f32> = x_93.unity_SHBb;
  let x_586 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_585, x_586);
  let x_591 : vec4<f32> = x_93.unity_SHC;
  let x_593 : f32 = u_xlat18;
  let x_596 : vec4<f32> = u_xlat2;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593, x_593, x_593)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_603 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_603.x, x_603.y, x_603.z) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_609 : f32 = u_xlat3.y;
  u_xlat3.w = (x_609 * 0.5f);
  let x_612 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = u_xlat3;
  let x_616 : vec2<f32> = (vec2<f32>(x_612.z, x_612.z) + vec2<f32>(x_614.x, x_614.w));
  let x_617 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
  let x_621 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_621);
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
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD5);
}

