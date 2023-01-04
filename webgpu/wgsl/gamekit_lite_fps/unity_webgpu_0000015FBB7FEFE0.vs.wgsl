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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(13) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(12) var<uniform> x_93 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  u_xlat5 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
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
  let x_118 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_119 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = ((x_118 * vec4<f32>(x_119.w, x_119.w, x_119.w, x_119.w)) + x_122);
  let x_127 : vec4<f32> = in_TANGENT0;
  let x_129 : i32 = u_xlati0;
  let x_132 : vec4<f32> = x_38.unity_Builtins0Array[(x_129 / 8i)].unity_ObjectToWorldArray[1i];
  let x_134 : vec3<f32> = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_132.y, x_132.z, x_132.x));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : i32 = u_xlati0;
  let x_140 : vec4<f32> = x_38.unity_Builtins0Array[(x_137 / 8i)].unity_ObjectToWorldArray[0i];
  let x_142 : vec4<f32> = in_TANGENT0;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.y, x_140.z, x_140.x) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : i32 = u_xlati0;
  let x_153 : vec4<f32> = x_38.unity_Builtins0Array[(x_150 / 8i)].unity_ObjectToWorldArray[2i];
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.y, x_153.z, x_153.x) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_170);
  let x_172 : f32 = u_xlat16;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = (vec3<f32>(x_172, x_172, x_172) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_181 : vec3<f32> = in_NORMAL0;
  let x_182 : i32 = u_xlati0;
  let x_185 : vec4<f32> = x_38.unity_Builtins0Array[(x_182 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_181, vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_190 : vec3<f32> = in_NORMAL0;
  let x_191 : i32 = u_xlati0;
  let x_194 : vec4<f32> = x_38.unity_Builtins0Array[(x_191 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_190, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec3<f32> = in_NORMAL0;
  let x_199 : i32 = u_xlati0;
  let x_202 : vec4<f32> = x_38.unity_Builtins0Array[(x_199 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_198, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_208 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_215);
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.w, x_226.x, x_226.y));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = ((vec3<f32>(x_231.y, x_231.w, x_231.x) * vec3<f32>(x_233.y, x_233.z, x_233.x)) + -(vec3<f32>(x_236.x, x_236.y, x_236.z)));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_245 : f32 = in_TANGENT0.w;
  let x_249 : f32 = x_93.unity_WorldTransformParams.w;
  u_xlat0.x = (x_245 * x_249);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_261 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_261;
  let x_265 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_265;
  let x_268 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_268;
  let x_271 : f32 = u_xlat5.x;
  vs_TEXCOORD0.w = x_271;
  let x_275 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_275;
  let x_279 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_279;
  let x_282 : f32 = u_xlat5.y;
  vs_TEXCOORD1.w = x_282;
  let x_285 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_285;
  let x_288 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_288;
  let x_291 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_291;
  let x_294 : f32 = u_xlat5.z;
  vs_TEXCOORD2.w = x_294;
  let x_297 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_297;
  let x_301 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_301;
  let x_307 : vec2<f32> = in_TEXCOORD0;
  let x_310 : vec4<f32> = x_93.x_MainTex_ST;
  let x_314 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_307 * vec2<f32>(x_310.x, x_310.y)) + vec2<f32>(x_314.z, x_314.w));
  let x_317 : vec3<f32> = u_xlat5;
  let x_321 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_317.x, x_317.x, x_317.x, x_317.x)) + x_321);
  let x_323 : vec3<f32> = u_xlat5;
  let x_327 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_323.y, x_323.y, x_323.y, x_323.y)) + x_327);
  let x_329 : vec3<f32> = u_xlat5;
  let x_333 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_329.z, x_329.z, x_329.z, x_329.z)) + x_333);
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_336.y, x_336.y, x_336.y, x_336.y) * x_338);
  let x_340 : vec4<f32> = u_xlat3;
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_340 * x_341);
  let x_343 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_343 * x_344) + x_346);
  let x_348 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_348 * vec4<f32>(x_349.x, x_349.x, x_349.x, x_349.x)) + x_352);
  let x_354 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_354 * vec4<f32>(x_355.w, x_355.w, x_355.z, x_355.w)) + x_358);
  let x_360 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_360 * x_361) + x_363);
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_365, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_369);
  let x_371 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_371 * x_373) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_378);
  let x_380 : vec4<f32> = u_xlat1;
  let x_381 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_380 * x_381);
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_383, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_387 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_387 * x_388);
  let x_390 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_396 : vec3<f32> = (vec3<f32>(x_390.y, x_390.y, x_390.y) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_402 : vec4<f32> = u_xlat0;
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.x, x_402.x)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_411 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.z, x_413.z, x_413.z)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_422 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424.w, x_424.w, x_424.w)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_434 : f32 = u_xlat2.y;
  let x_436 : f32 = u_xlat2.y;
  u_xlat15 = (x_434 * x_436);
  let x_439 : f32 = u_xlat2.x;
  let x_441 : f32 = u_xlat2.x;
  let x_443 : f32 = u_xlat15;
  u_xlat15 = ((x_439 * x_441) + -(x_443));
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_446.y, x_446.w, x_446.z, x_446.x) * x_448);
  let x_452 : vec4<f32> = x_93.unity_SHBr;
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_452, x_453);
  let x_458 : vec4<f32> = x_93.unity_SHBg;
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_458, x_459);
  let x_464 : vec4<f32> = x_93.unity_SHBb;
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_464, x_465);
  let x_469 : vec4<f32> = x_93.unity_SHC;
  let x_471 : f32 = u_xlat15;
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471, x_471, x_471)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_481 : vec4<f32> = u_xlat0;
  let x_483 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_481.x, x_481.y, x_481.z) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_489 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_489);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

