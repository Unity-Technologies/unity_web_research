const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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
  x_Normal_ST : vec4<f32>,
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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

@group(1) @binding(3) var<uniform> x_98 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_462 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati7 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
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
  let x_134 : vec4<f32> = in_TEXCOORD0;
  let x_138 : vec4<f32> = x_98.x_MainTex_ST;
  let x_142 : vec4<f32> = x_98.x_MainTex_ST;
  let x_144 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(x_138.x, x_138.y)) + vec2<f32>(x_142.z, x_142.w));
  let x_145 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_147 : vec4<f32> = in_TEXCOORD0;
  let x_151 : vec4<f32> = x_98.x_Normal_ST;
  let x_155 : vec4<f32> = x_98.x_Normal_ST;
  let x_157 : vec2<f32> = ((vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151.x, x_151.y)) + vec2<f32>(x_155.z, x_155.w));
  let x_158 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_158.x, x_158.y, x_157.x, x_157.y);
  let x_162 : vec4<f32> = in_TANGENT0;
  let x_164 : i32 = u_xlati7;
  let x_167 : vec4<f32> = x_42.unity_Builtins0Array[(x_164 / 8i)].unity_ObjectToWorldArray[1i];
  let x_169 : vec3<f32> = (vec3<f32>(x_162.y, x_162.y, x_162.y) * vec3<f32>(x_167.y, x_167.z, x_167.x));
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : i32 = u_xlati7;
  let x_175 : vec4<f32> = x_42.unity_Builtins0Array[(x_172 / 8i)].unity_ObjectToWorldArray[0i];
  let x_177 : vec4<f32> = in_TANGENT0;
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.y, x_175.z, x_175.x) * vec3<f32>(x_177.x, x_177.x, x_177.x)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : i32 = u_xlati7;
  let x_188 : vec4<f32> = x_42.unity_Builtins0Array[(x_185 / 8i)].unity_ObjectToWorldArray[2i];
  let x_190 : vec4<f32> = in_TANGENT0;
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.z, x_190.z)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : vec4<f32> = u_xlat4;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat14 = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_205);
  let x_207 : f32 = u_xlat14;
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec3<f32> = (vec3<f32>(x_207, x_207, x_207) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_217 : vec3<f32> = in_NORMAL0;
  let x_218 : i32 = u_xlati7;
  let x_221 : vec4<f32> = x_42.unity_Builtins0Array[(x_218 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat5.x = dot(x_217, vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_227 : i32 = u_xlati7;
  let x_230 : vec4<f32> = x_42.unity_Builtins0Array[(x_227 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat5.y = dot(x_226, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_234 : vec3<f32> = in_NORMAL0;
  let x_235 : i32 = u_xlati7;
  let x_238 : vec4<f32> = x_42.unity_Builtins0Array[(x_235 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat5.z = dot(x_234, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_252 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_252);
  let x_255 : vec3<f32> = u_xlat7;
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_255.x, x_255.x, x_255.x, x_255.x) * vec4<f32>(x_257.x, x_257.y, x_257.z, x_257.z));
  let x_260 : vec4<f32> = u_xlat4;
  let x_262 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_262.w, x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat5;
  let x_267 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_265.y, x_265.w, x_265.x) * vec3<f32>(x_267.y, x_267.z, x_267.x)) + -(x_270));
  let x_277 : f32 = in_TANGENT0.w;
  let x_281 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat22 = (x_277 * x_281);
  let x_283 : vec3<f32> = u_xlat7;
  let x_284 : f32 = u_xlat22;
  u_xlat7 = (x_283 * vec3<f32>(x_284, x_284, x_284));
  let x_289 : f32 = u_xlat7.x;
  vs_TEXCOORD1.y = x_289;
  let x_293 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_293;
  let x_296 : f32 = u_xlat5.x;
  vs_TEXCOORD1.z = x_296;
  let x_299 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = x_299;
  let x_303 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_303;
  let x_307 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_307;
  let x_310 : f32 = u_xlat1.y;
  vs_TEXCOORD2.w = x_310;
  let x_313 : f32 = u_xlat7.y;
  vs_TEXCOORD2.y = x_313;
  let x_316 : f32 = u_xlat7.z;
  vs_TEXCOORD3.y = x_316;
  let x_319 : f32 = u_xlat5.y;
  vs_TEXCOORD2.z = x_319;
  let x_322 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_322;
  let x_325 : f32 = u_xlat5.w;
  vs_TEXCOORD3.z = x_325;
  let x_329 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_329;
  let x_331 : f32 = u_xlat2.y;
  let x_333 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat7.x = (x_331 * x_333);
  let x_337 : f32 = x_98.unity_MatrixV[0i].z;
  let x_339 : f32 = u_xlat2.x;
  let x_342 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_337 * x_339) + x_342);
  let x_346 : f32 = x_98.unity_MatrixV[2i].z;
  let x_348 : f32 = u_xlat2.z;
  let x_351 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_346 * x_348) + x_351);
  let x_355 : f32 = x_98.unity_MatrixV[3i].z;
  let x_357 : f32 = u_xlat2.w;
  let x_360 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_355 * x_357) + x_360);
  let x_366 : f32 = u_xlat7.x;
  vs_TEXCOORD4.z = -(x_366);
  let x_370 : vec4<f32> = u_xlat2;
  let x_373 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat7 = (vec3<f32>(x_370.y, x_370.y, x_370.y) * vec3<f32>(x_373.x, x_373.y, x_373.w));
  let x_377 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_379 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_377.x, x_377.y, x_377.w) * vec3<f32>(x_379.x, x_379.x, x_379.x)) + x_382);
  let x_385 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_387 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_385.x, x_385.y, x_385.w) * vec3<f32>(x_387.z, x_387.z, x_387.z)) + x_390);
  let x_393 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_393.x, x_393.y, x_393.w) * vec3<f32>(x_395.w, x_395.w, x_395.w)) + x_398);
  let x_401 : f32 = u_xlat7.z;
  vs_TEXCOORD4.w = x_401;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_407 : f32 = x_98.x_ProjectionParams.x;
  u_xlat2.y = x_407;
  let x_409 : vec3<f32> = u_xlat7;
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec3<f32> = (x_409 * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.y, x_417.w));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_423 : vec4<f32> = u_xlat3;
  let x_424 : vec2<f32> = vec2<f32>(x_423.z, x_423.w);
  let x_425 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_425.x, x_425.y, x_424.x, x_424.y);
  let x_428 : f32 = u_xlat4.y;
  u_xlat4.w = (x_428 * 0.5f);
  let x_431 : vec4<f32> = u_xlat4;
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec2<f32> = (vec2<f32>(x_431.z, x_431.z) + vec2<f32>(x_433.x, x_433.w));
  let x_436 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_439 : f32 = u_xlat5.y;
  let x_441 : f32 = u_xlat5.y;
  u_xlat7.x = (x_439 * x_441);
  let x_445 : f32 = u_xlat5.x;
  let x_447 : f32 = u_xlat5.x;
  let x_450 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_445 * x_447) + -(x_450));
  let x_454 : vec4<f32> = u_xlat5;
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat3 = (vec4<f32>(x_454.y, x_454.w, x_454.z, x_454.x) * x_456);
  let x_463 : i32 = u_xlati0;
  let x_466 : vec4<f32> = x_462.unity_Builtins2Array[(x_463 / 7i)].unity_SHBrArray;
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_466, x_467);
  let x_470 : i32 = u_xlati0;
  let x_474 : vec4<f32> = x_462.unity_Builtins2Array[(x_470 / 7i)].unity_SHBgArray;
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_474, x_475);
  let x_478 : i32 = u_xlati0;
  let x_482 : vec4<f32> = x_462.unity_Builtins2Array[(x_478 / 7i)].unity_SHBbArray;
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_482, x_483);
  let x_487 : i32 = u_xlati0;
  let x_490 : vec4<f32> = x_462.unity_Builtins2Array[(x_487 / 7i)].unity_SHCArray;
  let x_492 : vec3<f32> = u_xlat7;
  let x_495 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492.x, x_492.x, x_492.x)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat1;
  let x_502 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_498.y, x_498.y, x_498.y, x_498.y)) + x_502);
  let x_504 : vec4<f32> = u_xlat5;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_504.y, x_504.y, x_504.y, x_504.y) * x_506);
  let x_508 : vec4<f32> = u_xlat3;
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_508 * x_509);
  let x_512 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_512.x, x_512.x, x_512.x, x_512.x)) + x_516);
  let x_518 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_518.z, x_518.z, x_518.z, x_518.z)) + x_522);
  let x_524 : vec4<f32> = u_xlat6;
  let x_525 : vec4<f32> = u_xlat5;
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_524 * vec4<f32>(x_525.x, x_525.x, x_525.x, x_525.x)) + x_528);
  let x_530 : vec4<f32> = u_xlat1;
  let x_531 : vec4<f32> = u_xlat5;
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_530 * vec4<f32>(x_531.w, x_531.w, x_531.z, x_531.w)) + x_534);
  let x_536 : vec4<f32> = u_xlat6;
  let x_537 : vec4<f32> = u_xlat6;
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_536 * x_537) + x_539);
  let x_541 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat1;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_541 * x_542) + x_544);
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_546, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_550 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_550);
  let x_552 : vec4<f32> = u_xlat1;
  let x_554 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_552 * x_554) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_559);
  let x_561 : vec4<f32> = u_xlat3;
  let x_562 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_561 * x_562);
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_564, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_568 : vec4<f32> = u_xlat1;
  let x_569 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_568 * x_569);
  let x_571 : vec4<f32> = u_xlat1;
  let x_574 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_576 : vec3<f32> = (vec3<f32>(x_571.y, x_571.y, x_571.y) * vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_580 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_582 : vec4<f32> = u_xlat1;
  let x_585 : vec4<f32> = u_xlat3;
  let x_587 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582.x, x_582.x, x_582.x)) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_591 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_593 : vec4<f32> = u_xlat1;
  let x_596 : vec4<f32> = u_xlat3;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593.z, x_593.z, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_604 : vec4<f32> = u_xlat1;
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604.w, x_604.w, x_604.w)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_614 : vec3<f32> = u_xlat0;
  let x_615 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (x_614 + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_619 : f32 = u_xlat2.y;
  u_xlat2.w = (x_619 * 0.5f);
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec2<f32> = (vec2<f32>(x_622.z, x_622.z) + vec2<f32>(x_624.x, x_624.w));
  let x_627 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_632 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_632);
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
  vs_COLOR0_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(7) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7, vs_TEXCOORD5, vs_SV_InstanceID0);
}

