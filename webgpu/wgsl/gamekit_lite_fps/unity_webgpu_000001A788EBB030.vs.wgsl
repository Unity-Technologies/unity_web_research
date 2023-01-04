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

var<private> u_xlati7 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_98 : VGlobals;

var<private> u_xlat4 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_446 : UnityInstancing_PerDraw2;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

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
  let x_21 : i32 = u_xlati0;
  u_xlati7 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati7;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati7;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati7;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati7;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati7;
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
  let x_117 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_118 : vec4<f32> = u_xlat2;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_117 * vec4<f32>(x_118.w, x_118.w, x_118.w, x_118.w)) + x_121);
  let x_128 : vec4<f32> = u_xlat3;
  gl_Position = x_128;
  let x_133 : vec4<f32> = in_TANGENT0;
  let x_135 : i32 = u_xlati7;
  let x_138 : vec4<f32> = x_42.unity_Builtins0Array[(x_135 / 8i)].unity_ObjectToWorldArray[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_138.y, x_138.z, x_138.x));
  let x_141 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : i32 = u_xlati7;
  let x_146 : vec4<f32> = x_42.unity_Builtins0Array[(x_143 / 8i)].unity_ObjectToWorldArray[0i];
  let x_148 : vec4<f32> = in_TANGENT0;
  let x_151 : vec4<f32> = u_xlat4;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.y, x_146.z, x_146.x) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : i32 = u_xlati7;
  let x_159 : vec4<f32> = x_42.unity_Builtins0Array[(x_156 / 8i)].unity_ObjectToWorldArray[2i];
  let x_161 : vec4<f32> = in_TANGENT0;
  let x_164 : vec4<f32> = u_xlat4;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.y, x_159.z, x_159.x) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_171 : vec4<f32> = u_xlat4;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat14 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat14;
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_188 : vec3<f32> = in_NORMAL0;
  let x_189 : i32 = u_xlati7;
  let x_192 : vec4<f32> = x_42.unity_Builtins0Array[(x_189 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat5.x = dot(x_188, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : vec3<f32> = in_NORMAL0;
  let x_198 : i32 = u_xlati7;
  let x_201 : vec4<f32> = x_42.unity_Builtins0Array[(x_198 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat5.y = dot(x_197, vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec3<f32> = in_NORMAL0;
  let x_206 : i32 = u_xlati7;
  let x_209 : vec4<f32> = x_42.unity_Builtins0Array[(x_206 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat5.z = dot(x_205, vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_223);
  let x_226 : vec3<f32> = u_xlat7;
  let x_228 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_226.x, x_226.x, x_226.x, x_226.x) * vec4<f32>(x_228.x, x_228.y, x_228.z, x_228.z));
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.w, x_233.x, x_233.y));
  let x_236 : vec4<f32> = u_xlat5;
  let x_238 : vec4<f32> = u_xlat4;
  let x_241 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_236.y, x_236.w, x_236.x) * vec3<f32>(x_238.y, x_238.z, x_238.x)) + -(x_241));
  let x_248 : f32 = in_TANGENT0.w;
  let x_252 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat22 = (x_248 * x_252);
  let x_254 : vec3<f32> = u_xlat7;
  let x_255 : f32 = u_xlat22;
  u_xlat7 = (x_254 * vec3<f32>(x_255, x_255, x_255));
  let x_260 : f32 = u_xlat7.x;
  vs_TEXCOORD0.y = x_260;
  let x_264 : f32 = u_xlat4.z;
  vs_TEXCOORD0.x = x_264;
  let x_267 : f32 = u_xlat5.x;
  vs_TEXCOORD0.z = x_267;
  let x_270 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_270;
  let x_274 : f32 = u_xlat4.x;
  vs_TEXCOORD1.x = x_274;
  let x_278 : f32 = u_xlat4.y;
  vs_TEXCOORD2.x = x_278;
  let x_281 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_281;
  let x_284 : f32 = u_xlat7.y;
  vs_TEXCOORD1.y = x_284;
  let x_287 : f32 = u_xlat7.z;
  vs_TEXCOORD2.y = x_287;
  let x_290 : f32 = u_xlat5.y;
  vs_TEXCOORD1.z = x_290;
  let x_293 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_293;
  let x_296 : f32 = u_xlat5.w;
  vs_TEXCOORD2.z = x_296;
  let x_300 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_300;
  let x_306 : vec2<f32> = in_TEXCOORD0;
  let x_309 : vec4<f32> = x_98.x_MainTex_ST;
  let x_313 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_306 * vec2<f32>(x_309.x, x_309.y)) + vec2<f32>(x_313.z, x_313.w));
  let x_317 : f32 = u_xlat2.y;
  let x_319 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat7.x = (x_317 * x_319);
  let x_323 : f32 = x_98.unity_MatrixV[0i].z;
  let x_325 : f32 = u_xlat2.x;
  let x_328 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_323 * x_325) + x_328);
  let x_332 : f32 = x_98.unity_MatrixV[2i].z;
  let x_334 : f32 = u_xlat2.z;
  let x_337 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_332 * x_334) + x_337);
  let x_341 : f32 = x_98.unity_MatrixV[3i].z;
  let x_343 : f32 = u_xlat2.w;
  let x_346 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_341 * x_343) + x_346);
  let x_351 : f32 = u_xlat7.x;
  vs_TEXCOORD4.z = -(x_351);
  let x_354 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat7 = (vec3<f32>(x_354.y, x_354.y, x_354.y) * vec3<f32>(x_357.x, x_357.y, x_357.w));
  let x_361 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_361.x, x_361.y, x_361.w) * vec3<f32>(x_363.x, x_363.x, x_363.x)) + x_366);
  let x_369 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_371 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_369.x, x_369.y, x_369.w) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + x_374);
  let x_377 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_379 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_377.x, x_377.y, x_377.w) * vec3<f32>(x_379.w, x_379.w, x_379.w)) + x_382);
  let x_385 : f32 = u_xlat7.z;
  vs_TEXCOORD4.w = x_385;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_391 : f32 = x_98.x_ProjectionParams.x;
  u_xlat2.y = x_391;
  let x_393 : vec3<f32> = u_xlat7;
  let x_394 : vec4<f32> = u_xlat2;
  let x_396 : vec3<f32> = (x_393 * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat3;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.x, x_401.y, x_401.w));
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : vec4<f32> = u_xlat3;
  let x_408 : vec2<f32> = vec2<f32>(x_407.z, x_407.w);
  let x_409 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_409.x, x_409.y, x_408.x, x_408.y);
  let x_412 : f32 = u_xlat4.y;
  u_xlat4.w = (x_412 * 0.5f);
  let x_415 : vec4<f32> = u_xlat4;
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.z, x_415.z) + vec2<f32>(x_417.x, x_417.w));
  let x_420 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_423 : f32 = u_xlat5.y;
  let x_425 : f32 = u_xlat5.y;
  u_xlat7.x = (x_423 * x_425);
  let x_429 : f32 = u_xlat5.x;
  let x_431 : f32 = u_xlat5.x;
  let x_434 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_429 * x_431) + -(x_434));
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat3 = (vec4<f32>(x_438.y, x_438.w, x_438.z, x_438.x) * x_440);
  let x_447 : i32 = u_xlati0;
  let x_450 : vec4<f32> = x_446.unity_Builtins2Array[(x_447 / 7i)].unity_SHBrArray;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_450, x_451);
  let x_454 : i32 = u_xlati0;
  let x_458 : vec4<f32> = x_446.unity_Builtins2Array[(x_454 / 7i)].unity_SHBgArray;
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_458, x_459);
  let x_462 : i32 = u_xlati0;
  let x_466 : vec4<f32> = x_446.unity_Builtins2Array[(x_462 / 7i)].unity_SHBbArray;
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_466, x_467);
  let x_471 : i32 = u_xlati0;
  let x_474 : vec4<f32> = x_446.unity_Builtins2Array[(x_471 / 7i)].unity_SHCArray;
  let x_476 : vec3<f32> = u_xlat7;
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.x, x_476.x, x_476.x)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat1;
  let x_486 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_482.y, x_482.y, x_482.y, x_482.y)) + x_486);
  let x_488 : vec4<f32> = u_xlat5;
  let x_490 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_488.y, x_488.y, x_488.y, x_488.y) * x_490);
  let x_492 : vec4<f32> = u_xlat3;
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_492 * x_493);
  let x_496 : vec4<f32> = u_xlat1;
  let x_500 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_496.x, x_496.x, x_496.x, x_496.x)) + x_500);
  let x_502 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_502.z, x_502.z, x_502.z, x_502.z)) + x_506);
  let x_508 : vec4<f32> = u_xlat6;
  let x_509 : vec4<f32> = u_xlat5;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_508 * vec4<f32>(x_509.x, x_509.x, x_509.x, x_509.x)) + x_512);
  let x_514 : vec4<f32> = u_xlat1;
  let x_515 : vec4<f32> = u_xlat5;
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_514 * vec4<f32>(x_515.w, x_515.w, x_515.z, x_515.w)) + x_518);
  let x_520 : vec4<f32> = u_xlat6;
  let x_521 : vec4<f32> = u_xlat6;
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_520 * x_521) + x_523);
  let x_525 : vec4<f32> = u_xlat1;
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_525 * x_526) + x_528);
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_530, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_534);
  let x_536 : vec4<f32> = u_xlat1;
  let x_538 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_536 * x_538) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_543 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_543);
  let x_545 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_545 * x_546);
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_548, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_552 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_552 * x_553);
  let x_555 : vec4<f32> = u_xlat1;
  let x_558 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_560 : vec3<f32> = (vec3<f32>(x_555.y, x_555.y, x_555.y) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_566 : vec4<f32> = u_xlat1;
  let x_569 : vec4<f32> = u_xlat3;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566.x, x_566.x, x_566.x)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_577 : vec4<f32> = u_xlat1;
  let x_580 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = ((vec3<f32>(x_575.x, x_575.y, x_575.z) * vec3<f32>(x_577.z, x_577.z, x_577.z)) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_588 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588.w, x_588.w, x_588.w)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : vec3<f32> = u_xlat0;
  let x_599 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (x_598 + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_603 : f32 = u_xlat2.y;
  u_xlat2.w = (x_603 * 0.5f);
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec2<f32> = (vec2<f32>(x_606.z, x_606.z) + vec2<f32>(x_608.x, x_608.w));
  let x_611 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_615 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_615);
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
  @location(7) @interpolate(flat)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD5, vs_SV_InstanceID0);
}

