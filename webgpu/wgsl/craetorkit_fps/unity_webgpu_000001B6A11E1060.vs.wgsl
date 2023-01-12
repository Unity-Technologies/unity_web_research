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

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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

type Arr_1 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_1,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

@group(1) @binding(3) var<uniform> x_96 : VGlobals;

var<private> vs_TEXCOORD6 : f32;

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

@group(1) @binding(2) var<uniform> x_450 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati5 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati5 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati5;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati5;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati5;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati5;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati5;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_98 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_98);
  let x_101 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_102 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_101 * vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x)) + x_105);
  let x_108 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_108 * vec4<f32>(x_109.z, x_109.z, x_109.z, x_109.z)) + x_112);
  let x_115 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_116 : vec4<f32> = u_xlat2;
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_115 * vec4<f32>(x_116.w, x_116.w, x_116.w, x_116.w)) + x_119);
  let x_126 : vec4<f32> = u_xlat3;
  gl_Position = x_126;
  let x_134 : f32 = u_xlat3.z;
  vs_TEXCOORD6 = x_134;
  let x_138 : vec4<f32> = in_TEXCOORD0;
  let x_142 : vec4<f32> = x_96.x_MainTex_ST;
  let x_146 : vec4<f32> = x_96.x_MainTex_ST;
  let x_148 : vec2<f32> = ((vec2<f32>(x_138.x, x_138.y) * vec2<f32>(x_142.x, x_142.y)) + vec2<f32>(x_146.z, x_146.w));
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_148.x, x_148.y, x_149.z, x_149.w);
  let x_151 : vec4<f32> = in_TEXCOORD0;
  let x_155 : vec4<f32> = x_96.x_Normal_ST;
  let x_159 : vec4<f32> = x_96.x_Normal_ST;
  let x_161 : vec2<f32> = ((vec2<f32>(x_151.x, x_151.y) * vec2<f32>(x_155.x, x_155.y)) + vec2<f32>(x_159.z, x_159.w));
  let x_162 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_162.x, x_162.y, x_161.x, x_161.y);
  let x_165 : vec4<f32> = in_TANGENT0;
  let x_167 : i32 = u_xlati5;
  let x_170 : vec4<f32> = x_42.unity_Builtins0Array[(x_167 / 8i)].unity_ObjectToWorldArray[1i];
  let x_172 : vec3<f32> = (vec3<f32>(x_165.y, x_165.y, x_165.y) * vec3<f32>(x_170.y, x_170.z, x_170.x));
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : i32 = u_xlati5;
  let x_178 : vec4<f32> = x_42.unity_Builtins0Array[(x_175 / 8i)].unity_ObjectToWorldArray[0i];
  let x_180 : vec4<f32> = in_TANGENT0;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = ((vec3<f32>(x_178.y, x_178.z, x_178.x) * vec3<f32>(x_180.x, x_180.x, x_180.x)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : i32 = u_xlati5;
  let x_191 : vec4<f32> = x_42.unity_Builtins0Array[(x_188 / 8i)].unity_ObjectToWorldArray[2i];
  let x_193 : vec4<f32> = in_TANGENT0;
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec3<f32> = ((vec3<f32>(x_191.y, x_191.z, x_191.x) * vec3<f32>(x_193.z, x_193.z, x_193.z)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_207);
  let x_209 : f32 = u_xlat10;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec3<f32> = (vec3<f32>(x_209, x_209, x_209) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_219 : vec3<f32> = in_NORMAL0;
  let x_220 : i32 = u_xlati5;
  let x_223 : vec4<f32> = x_42.unity_Builtins0Array[(x_220 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_219, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec3<f32> = in_NORMAL0;
  let x_229 : i32 = u_xlati5;
  let x_232 : vec4<f32> = x_42.unity_Builtins0Array[(x_229 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_228, vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_237 : i32 = u_xlati5;
  let x_240 : vec4<f32> = x_42.unity_Builtins0Array[(x_237 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_236, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_253 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_253);
  let x_256 : vec3<f32> = u_xlat5;
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_256.x, x_256.x, x_256.x, x_256.x) * vec4<f32>(x_258.x, x_258.y, x_258.z, x_258.z));
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.w, x_263.x, x_263.y));
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = u_xlat3;
  let x_271 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_266.y, x_266.w, x_266.x) * vec3<f32>(x_268.y, x_268.z, x_268.x)) + -(x_271));
  let x_278 : f32 = in_TANGENT0.w;
  let x_281 : f32 = x_96.unity_WorldTransformParams.w;
  u_xlat16 = (x_278 * x_281);
  let x_283 : vec3<f32> = u_xlat5;
  let x_284 : f32 = u_xlat16;
  u_xlat5 = (x_283 * vec3<f32>(x_284, x_284, x_284));
  let x_289 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_289;
  let x_292 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_292;
  let x_295 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_295;
  let x_298 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = x_298;
  let x_302 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_302;
  let x_306 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_306;
  let x_309 : f32 = u_xlat1.y;
  vs_TEXCOORD2.w = x_309;
  let x_312 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_312;
  let x_315 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_315;
  let x_318 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_318;
  let x_321 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_321;
  let x_324 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_324;
  let x_328 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_328;
  let x_330 : f32 = u_xlat2.y;
  let x_332 : f32 = x_96.unity_MatrixV[1i].z;
  u_xlat5.x = (x_330 * x_332);
  let x_336 : f32 = x_96.unity_MatrixV[0i].z;
  let x_338 : f32 = u_xlat2.x;
  let x_341 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_336 * x_338) + x_341);
  let x_345 : f32 = x_96.unity_MatrixV[2i].z;
  let x_347 : f32 = u_xlat2.z;
  let x_350 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_345 * x_347) + x_350);
  let x_354 : f32 = x_96.unity_MatrixV[3i].z;
  let x_356 : f32 = u_xlat2.w;
  let x_359 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_354 * x_356) + x_359);
  let x_365 : f32 = u_xlat5.x;
  vs_TEXCOORD4.z = -(x_365);
  let x_369 : vec4<f32> = u_xlat2;
  let x_372 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat5 = (vec3<f32>(x_369.y, x_369.y, x_369.y) * vec3<f32>(x_372.x, x_372.y, x_372.w));
  let x_376 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_378 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_376.x, x_376.y, x_376.w) * vec3<f32>(x_378.x, x_378.x, x_378.x)) + x_381);
  let x_384 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_384.x, x_384.y, x_384.w) * vec3<f32>(x_386.z, x_386.z, x_386.z)) + x_389);
  let x_392 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_392.x, x_392.y, x_392.w) * vec3<f32>(x_394.w, x_394.w, x_394.w)) + x_397);
  let x_399 : vec3<f32> = u_xlat5;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.z) * vec2<f32>(0.5f, 0.5f));
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_404.y, x_403.y, x_404.w);
  let x_407 : f32 = u_xlat5.y;
  let x_409 : f32 = x_96.x_ProjectionParams.x;
  u_xlat5.x = (x_407 * x_409);
  let x_413 : f32 = u_xlat5.z;
  vs_TEXCOORD4.w = x_413;
  let x_416 : f32 = u_xlat5.x;
  u_xlat1.w = (x_416 * 0.5f);
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec4<f32> = u_xlat1;
  let x_423 : vec2<f32> = (vec2<f32>(x_419.z, x_419.z) + vec2<f32>(x_421.x, x_421.w));
  let x_424 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  let x_427 : f32 = u_xlat4.y;
  let x_429 : f32 = u_xlat4.y;
  u_xlat5.x = (x_427 * x_429);
  let x_433 : f32 = u_xlat4.x;
  let x_435 : f32 = u_xlat4.x;
  let x_438 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_433 * x_435) + -(x_438));
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_442.y, x_442.w, x_442.z, x_442.x) * x_444);
  let x_451 : i32 = u_xlati0;
  let x_454 : vec4<f32> = x_450.unity_Builtins2Array[(x_451 / 7i)].unity_SHBrArray;
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_454, x_455);
  let x_458 : i32 = u_xlati0;
  let x_461 : vec4<f32> = x_450.unity_Builtins2Array[(x_458 / 7i)].unity_SHBgArray;
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_461, x_462);
  let x_465 : i32 = u_xlati0;
  let x_468 : vec4<f32> = x_450.unity_Builtins2Array[(x_465 / 7i)].unity_SHBbArray;
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_468, x_469);
  let x_474 : i32 = u_xlati0;
  let x_478 : vec4<f32> = x_450.unity_Builtins2Array[(x_474 / 7i)].unity_SHCArray;
  let x_480 : vec3<f32> = u_xlat5;
  let x_483 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.x, x_480.x, x_480.x)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_492 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_492);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(6)
  vs_TEXCOORD6_1 : f32,
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
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5, vs_SV_InstanceID0);
}

