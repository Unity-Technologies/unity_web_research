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

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(14) var<uniform> x_91 : VGlobals;

var<private> u_xlat3 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_94 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_94);
  let x_97 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_97 * vec4<f32>(x_98.x, x_98.x, x_98.x, x_98.x)) + x_101);
  let x_104 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_104 * vec4<f32>(x_105.z, x_105.z, x_105.z, x_105.z)) + x_108);
  let x_111 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_111 * vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w)) + x_115);
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = x_122;
  let x_127 : vec4<f32> = in_TANGENT0;
  let x_129 : i32 = u_xlati0;
  let x_132 : vec4<f32> = x_38.unity_Builtins0Array[(x_129 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat3 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_132.y, x_132.z, x_132.x));
  let x_135 : i32 = u_xlati0;
  let x_138 : vec4<f32> = x_38.unity_Builtins0Array[(x_135 / 8i)].unity_ObjectToWorldArray[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_138.y, x_138.z, x_138.x) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + x_143);
  let x_145 : i32 = u_xlati0;
  let x_148 : vec4<f32> = x_38.unity_Builtins0Array[(x_145 / 8i)].unity_ObjectToWorldArray[2i];
  let x_150 : vec4<f32> = in_TANGENT0;
  let x_153 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_148.y, x_148.z, x_148.x) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
  let x_157 : vec3<f32> = u_xlat3;
  let x_158 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_157, x_158);
  let x_160 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat21;
  let x_164 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_162, x_162, x_162) * x_164);
  let x_169 : vec3<f32> = in_NORMAL0;
  let x_170 : i32 = u_xlati0;
  let x_173 : vec4<f32> = x_38.unity_Builtins0Array[(x_170 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_169, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_179 : i32 = u_xlati0;
  let x_182 : vec4<f32> = x_38.unity_Builtins0Array[(x_179 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_178, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_187 : i32 = u_xlati0;
  let x_190 : vec4<f32> = x_38.unity_Builtins0Array[(x_187 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_186, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_203);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_206.x, x_206.x, x_206.x, x_206.x) * vec4<f32>(x_208.x, x_208.y, x_208.z, x_208.z));
  let x_212 : vec3<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_212 * vec3<f32>(x_213.w, x_213.x, x_213.y));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = u_xlat3;
  let x_221 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_216.y, x_216.w, x_216.x) * vec3<f32>(x_218.y, x_218.z, x_218.x)) + -(x_221));
  let x_227 : f32 = in_TANGENT0.w;
  let x_231 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0.x = (x_227 * x_231);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_234.x, x_234.x, x_234.x) * x_236);
  let x_240 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_240;
  let x_244 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_244;
  let x_247 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_247;
  let x_250 : f32 = u_xlat6.x;
  vs_TEXCOORD0.w = x_250;
  let x_254 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_254;
  let x_258 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_258;
  let x_261 : f32 = u_xlat6.y;
  vs_TEXCOORD1.w = x_261;
  let x_264 : f32 = u_xlat6.z;
  vs_TEXCOORD2.w = x_264;
  let x_267 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_267;
  let x_270 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_270;
  let x_273 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_273;
  let x_276 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_276;
  let x_280 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_280;
  let x_286 : vec2<f32> = in_TEXCOORD0;
  let x_288 : vec4<f32> = x_91.x_MainTex_ST;
  let x_292 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_286 * vec2<f32>(x_288.x, x_288.y)) + vec2<f32>(x_292.z, x_292.w));
  let x_296 : f32 = u_xlat2.y;
  let x_299 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat0.x = (x_296 * x_299);
  let x_303 : f32 = x_91.unity_MatrixV[0i].z;
  let x_305 : f32 = u_xlat2.x;
  let x_308 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_303 * x_305) + x_308);
  let x_312 : f32 = x_91.unity_MatrixV[2i].z;
  let x_314 : f32 = u_xlat2.z;
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_312 * x_314) + x_317);
  let x_321 : f32 = x_91.unity_MatrixV[3i].z;
  let x_323 : f32 = u_xlat2.w;
  let x_326 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_321 * x_323) + x_326);
  let x_331 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_331);
  let x_334 : vec4<f32> = u_xlat2;
  let x_337 : vec4<f32> = x_91.unity_MatrixVP[1i];
  let x_339 : vec3<f32> = (vec3<f32>(x_334.y, x_334.y, x_334.y) * vec3<f32>(x_337.x, x_337.y, x_337.w));
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_345 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.w) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_356 : vec4<f32> = u_xlat2;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.w) * vec3<f32>(x_356.z, x_356.z, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_367 : vec4<f32> = u_xlat2;
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.w) * vec3<f32>(x_367.w, x_367.w, x_367.w)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_376;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_382 : f32 = x_91.x_ProjectionParams.x;
  u_xlat2.y = x_382;
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat2;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.w) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_400 : vec2<f32> = vec2<f32>(x_399.z, x_399.w);
  let x_401 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_401.x, x_401.y, x_400.x, x_400.y);
  let x_404 : f32 = u_xlat0.y;
  u_xlat0.w = (x_404 * 0.5f);
  let x_407 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec2<f32> = (vec2<f32>(x_407.z, x_407.z) + vec2<f32>(x_409.x, x_409.w));
  let x_412 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_415 : f32 = u_xlat4.y;
  let x_417 : f32 = u_xlat4.y;
  u_xlat0.x = (x_415 * x_417);
  let x_421 : f32 = u_xlat4.x;
  let x_423 : f32 = u_xlat4.x;
  let x_426 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_421 * x_423) + -(x_426));
  let x_430 : vec4<f32> = u_xlat4;
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_430.y, x_430.w, x_430.z, x_430.x) * x_432);
  let x_435 : vec4<f32> = x_91.unity_SHBr;
  let x_436 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_435, x_436);
  let x_440 : vec4<f32> = x_91.unity_SHBg;
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_440, x_441);
  let x_445 : vec4<f32> = x_91.unity_SHBb;
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_445, x_446);
  let x_453 : vec4<f32> = x_91.unity_SHC;
  let x_455 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_455.x, x_455.x, x_455.x)) + x_458);
  let x_461 : f32 = u_xlat2.y;
  u_xlat2.w = (x_461 * 0.5f);
  let x_464 : vec4<f32> = u_xlat2;
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec2<f32> = (vec2<f32>(x_464.z, x_464.z) + vec2<f32>(x_466.x, x_466.w));
  let x_469 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_473 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_473);
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

