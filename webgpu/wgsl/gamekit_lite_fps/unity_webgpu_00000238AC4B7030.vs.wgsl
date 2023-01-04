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
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr_2 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_2,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlati6 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_98 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_433 : UnityInstancing_PerDraw2;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_21 : i32 = u_xlati0;
  u_xlati6 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati6;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati6;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati6;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati6;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati6;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_100);
  let x_103 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_103 * vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x)) + x_107);
  let x_110 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_111 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_110 * vec4<f32>(x_111.z, x_111.z, x_111.z, x_111.z)) + x_114);
  let x_122 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_123 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat3;
  gl_Position = ((x_122 * vec4<f32>(x_123.w, x_123.w, x_123.w, x_123.w)) + x_126);
  let x_131 : vec4<f32> = in_TANGENT0;
  let x_133 : i32 = u_xlati6;
  let x_136 : vec4<f32> = x_42.unity_Builtins0Array[(x_133 / 8i)].unity_ObjectToWorldArray[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_136.y, x_136.z, x_136.x));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : i32 = u_xlati6;
  let x_144 : vec4<f32> = x_42.unity_Builtins0Array[(x_141 / 8i)].unity_ObjectToWorldArray[0i];
  let x_146 : vec4<f32> = in_TANGENT0;
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.y, x_144.z, x_144.x) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : i32 = u_xlati6;
  let x_157 : vec4<f32> = x_42.unity_Builtins0Array[(x_154 / 8i)].unity_ObjectToWorldArray[2i];
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec4<f32> = u_xlat3;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.y, x_157.z, x_157.x) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_169 : vec4<f32> = u_xlat3;
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat12;
  let x_178 : vec4<f32> = u_xlat3;
  let x_180 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_187 : i32 = u_xlati6;
  let x_190 : vec4<f32> = x_42.unity_Builtins0Array[(x_187 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_186, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : vec3<f32> = in_NORMAL0;
  let x_196 : i32 = u_xlati6;
  let x_199 : vec4<f32> = x_42.unity_Builtins0Array[(x_196 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_195, vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_203 : vec3<f32> = in_NORMAL0;
  let x_204 : i32 = u_xlati6;
  let x_207 : vec4<f32> = x_42.unity_Builtins0Array[(x_204 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_203, vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_214 : vec4<f32> = u_xlat4;
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_221 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_221);
  let x_224 : vec3<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x) * vec4<f32>(x_226.x, x_226.y, x_226.z, x_226.z));
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.w, x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_234.y, x_234.w, x_234.x) * vec3<f32>(x_236.y, x_236.z, x_236.x)) + -(x_239));
  let x_246 : f32 = in_TANGENT0.w;
  let x_250 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat19 = (x_246 * x_250);
  let x_252 : vec3<f32> = u_xlat6;
  let x_253 : f32 = u_xlat19;
  u_xlat6 = (x_252 * vec3<f32>(x_253, x_253, x_253));
  let x_258 : f32 = u_xlat6.x;
  vs_TEXCOORD0.y = x_258;
  let x_262 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_262;
  let x_265 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_265;
  let x_268 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_268;
  let x_272 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_272;
  let x_276 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_276;
  let x_279 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_279;
  let x_282 : f32 = u_xlat6.y;
  vs_TEXCOORD1.y = x_282;
  let x_285 : f32 = u_xlat6.z;
  vs_TEXCOORD2.y = x_285;
  let x_288 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_288;
  let x_291 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_291;
  let x_294 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_294;
  let x_298 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_298;
  let x_304 : vec2<f32> = in_TEXCOORD0;
  let x_307 : vec4<f32> = x_98.x_MainTex_ST;
  let x_311 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_304 * vec2<f32>(x_307.x, x_307.y)) + vec2<f32>(x_311.z, x_311.w));
  let x_315 : f32 = u_xlat2.y;
  let x_317 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat6.x = (x_315 * x_317);
  let x_321 : f32 = x_98.unity_MatrixV[0i].z;
  let x_323 : f32 = u_xlat2.x;
  let x_326 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_321 * x_323) + x_326);
  let x_330 : f32 = x_98.unity_MatrixV[2i].z;
  let x_332 : f32 = u_xlat2.z;
  let x_335 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_330 * x_332) + x_335);
  let x_339 : f32 = x_98.unity_MatrixV[3i].z;
  let x_341 : f32 = u_xlat2.w;
  let x_344 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_339 * x_341) + x_344);
  let x_349 : f32 = u_xlat6.x;
  vs_TEXCOORD4.z = -(x_349);
  let x_352 : vec4<f32> = u_xlat2;
  let x_355 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat6 = (vec3<f32>(x_352.y, x_352.y, x_352.y) * vec3<f32>(x_355.x, x_355.y, x_355.w));
  let x_359 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_361 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_359.x, x_359.y, x_359.w) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + x_364);
  let x_367 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_369 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_367.x, x_367.y, x_367.w) * vec3<f32>(x_369.z, x_369.z, x_369.z)) + x_372);
  let x_375 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_377 : vec4<f32> = u_xlat2;
  let x_380 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_375.x, x_375.y, x_375.w) * vec3<f32>(x_377.w, x_377.w, x_377.w)) + x_380);
  let x_382 : vec3<f32> = u_xlat6;
  let x_386 : vec2<f32> = (vec2<f32>(x_382.x, x_382.z) * vec2<f32>(0.5f, 0.5f));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_387.w);
  let x_390 : f32 = u_xlat6.y;
  let x_392 : f32 = x_98.x_ProjectionParams.x;
  u_xlat6.x = (x_390 * x_392);
  let x_396 : f32 = u_xlat6.z;
  vs_TEXCOORD4.w = x_396;
  let x_399 : f32 = u_xlat6.x;
  u_xlat2.w = (x_399 * 0.5f);
  let x_402 : vec4<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec2<f32> = (vec2<f32>(x_402.z, x_402.z) + vec2<f32>(x_404.x, x_404.w));
  let x_407 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_410 : f32 = u_xlat4.y;
  let x_412 : f32 = u_xlat4.y;
  u_xlat6.x = (x_410 * x_412);
  let x_416 : f32 = u_xlat4.x;
  let x_418 : f32 = u_xlat4.x;
  let x_421 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_416 * x_418) + -(x_421));
  let x_425 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_425.y, x_425.w, x_425.z, x_425.x) * x_427);
  let x_434 : i32 = u_xlati0;
  let x_437 : vec4<f32> = x_433.unity_Builtins2Array[(x_434 / 7i)].unity_SHBrArray;
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_437, x_438);
  let x_441 : i32 = u_xlati0;
  let x_445 : vec4<f32> = x_433.unity_Builtins2Array[(x_441 / 7i)].unity_SHBgArray;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_445, x_446);
  let x_449 : i32 = u_xlati0;
  let x_453 : vec4<f32> = x_433.unity_Builtins2Array[(x_449 / 7i)].unity_SHBbArray;
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_453, x_454);
  let x_458 : i32 = u_xlati0;
  let x_461 : vec4<f32> = x_433.unity_Builtins2Array[(x_458 / 7i)].unity_SHCArray;
  let x_463 : vec3<f32> = u_xlat6;
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat1;
  let x_473 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_469.y, x_469.y, x_469.y, x_469.y)) + x_473);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_475.y, x_475.y, x_475.y, x_475.y) * x_477);
  let x_479 : vec4<f32> = u_xlat2;
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_479 * x_480);
  let x_483 : vec4<f32> = u_xlat1;
  let x_487 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_483.x, x_483.x, x_483.x, x_483.x)) + x_487);
  let x_489 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_489.z, x_489.z, x_489.z, x_489.z)) + x_493);
  let x_495 : vec4<f32> = u_xlat5;
  let x_496 : vec4<f32> = u_xlat4;
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_495 * vec4<f32>(x_496.x, x_496.x, x_496.x, x_496.x)) + x_499);
  let x_501 : vec4<f32> = u_xlat1;
  let x_502 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_501 * vec4<f32>(x_502.w, x_502.w, x_502.z, x_502.w)) + x_505);
  let x_507 : vec4<f32> = u_xlat5;
  let x_508 : vec4<f32> = u_xlat5;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_507 * x_508) + x_510);
  let x_512 : vec4<f32> = u_xlat1;
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_512 * x_513) + x_515);
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_517, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat2 = inverseSqrt(x_521);
  let x_523 : vec4<f32> = u_xlat1;
  let x_525 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_523 * x_525) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_530);
  let x_532 : vec4<f32> = u_xlat2;
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_532 * x_533);
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_535, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_539 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_539 * x_540);
  let x_542 : vec4<f32> = u_xlat1;
  let x_545 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_547 : vec3<f32> = (vec3<f32>(x_542.y, x_542.y, x_542.y) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_553 : vec4<f32> = u_xlat1;
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553.x, x_553.x, x_553.x)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_564 : vec4<f32> = u_xlat1;
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_564.z, x_564.z, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_575 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = u_xlat1;
  let x_580 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_575.w, x_575.w, x_575.w)) + vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_585 : vec3<f32> = u_xlat0;
  let x_586 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (x_585 + vec3<f32>(x_586.x, x_586.y, x_586.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_592 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_592);
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
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5, vs_SV_InstanceID0);
}

