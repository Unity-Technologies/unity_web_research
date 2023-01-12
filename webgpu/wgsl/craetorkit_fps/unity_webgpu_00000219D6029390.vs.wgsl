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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_38 : UnityInstancing_PerDraw0;

@group(1) @binding(1) var<uniform> x_91 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_93 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_93);
  let x_96 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_96 * vec4<f32>(x_97.x, x_97.x, x_97.x, x_97.x)) + x_100);
  let x_103 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_103 * vec4<f32>(x_104.z, x_104.z, x_104.z, x_104.z)) + x_107);
  let x_110 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_111 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_110 * vec4<f32>(x_111.w, x_111.w, x_111.w, x_111.w)) + x_114);
  let x_121 : vec4<f32> = u_xlat1;
  gl_Position = x_121;
  let x_127 : vec4<f32> = in_TEXCOORD0;
  let x_131 : vec4<f32> = x_91.x_MainTex_ST;
  let x_135 : vec4<f32> = x_91.x_MainTex_ST;
  let x_137 : vec2<f32> = ((vec2<f32>(x_127.x, x_127.y) * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_140 : vec4<f32> = in_TEXCOORD0;
  let x_144 : vec4<f32> = x_91.x_Normal_ST;
  let x_148 : vec4<f32> = x_91.x_Normal_ST;
  let x_150 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(x_144.x, x_144.y)) + vec2<f32>(x_148.z, x_148.w));
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_151.x, x_151.y, x_150.x, x_150.y);
  let x_156 : vec3<f32> = in_NORMAL0;
  let x_157 : i32 = u_xlati0;
  let x_160 : vec4<f32> = x_38.unity_Builtins0Array[(x_157 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.y = dot(x_156, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_166 : i32 = u_xlati0;
  let x_169 : vec4<f32> = x_38.unity_Builtins0Array[(x_166 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.z = dot(x_165, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_175 : i32 = u_xlati0;
  let x_178 : vec4<f32> = x_38.unity_Builtins0Array[(x_175 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.x = dot(x_174, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_184 : vec3<f32> = u_xlat3;
  let x_185 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat21;
  let x_191 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_195 : vec4<f32> = in_TANGENT0;
  let x_197 : i32 = u_xlati0;
  let x_200 : vec4<f32> = x_38.unity_Builtins0Array[(x_197 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat4 = (vec3<f32>(x_195.y, x_195.y, x_195.y) * vec3<f32>(x_200.y, x_200.z, x_200.x));
  let x_203 : i32 = u_xlati0;
  let x_206 : vec4<f32> = x_38.unity_Builtins0Array[(x_203 / 8i)].unity_ObjectToWorldArray[0i];
  let x_208 : vec4<f32> = in_TANGENT0;
  let x_211 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_206.y, x_206.z, x_206.x) * vec3<f32>(x_208.x, x_208.x, x_208.x)) + x_211);
  let x_213 : i32 = u_xlati0;
  let x_216 : vec4<f32> = x_38.unity_Builtins0Array[(x_213 / 8i)].unity_ObjectToWorldArray[2i];
  let x_218 : vec4<f32> = in_TANGENT0;
  let x_221 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_216.y, x_216.z, x_216.x) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + x_221);
  let x_224 : vec3<f32> = u_xlat4;
  let x_225 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_229);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_232.x, x_232.x, x_232.x) * x_234);
  let x_237 : vec3<f32> = u_xlat3;
  let x_238 : vec3<f32> = u_xlat4;
  u_xlat5 = (x_237 * x_238);
  let x_240 : vec3<f32> = u_xlat3;
  let x_242 : vec3<f32> = u_xlat4;
  let x_245 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_240.z, x_240.x, x_240.y) * vec3<f32>(x_242.y, x_242.z, x_242.x)) + -(x_245));
  let x_251 : f32 = in_TANGENT0.w;
  let x_254 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0.x = (x_251 * x_254);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_257.x, x_257.x, x_257.x) * x_259);
  let x_263 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_263;
  let x_267 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_267;
  let x_270 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_270;
  let x_273 : f32 = u_xlat6.x;
  vs_TEXCOORD1.w = x_273;
  let x_277 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_277;
  let x_281 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_281;
  let x_284 : f32 = u_xlat3.z;
  vs_TEXCOORD2.z = x_284;
  let x_287 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = x_287;
  let x_290 : f32 = u_xlat6.y;
  vs_TEXCOORD2.w = x_290;
  let x_293 : f32 = u_xlat6.z;
  vs_TEXCOORD3.w = x_293;
  let x_296 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_296;
  let x_299 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_299;
  let x_303 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_303;
  let x_305 : f32 = u_xlat2.y;
  let x_307 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat0.x = (x_305 * x_307);
  let x_311 : f32 = x_91.unity_MatrixV[0i].z;
  let x_313 : f32 = u_xlat2.x;
  let x_316 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_311 * x_313) + x_316);
  let x_320 : f32 = x_91.unity_MatrixV[2i].z;
  let x_322 : f32 = u_xlat2.z;
  let x_325 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_320 * x_322) + x_325);
  let x_329 : f32 = x_91.unity_MatrixV[3i].z;
  let x_331 : f32 = u_xlat2.w;
  let x_334 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_329 * x_331) + x_334);
  let x_340 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_340);
  let x_344 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = x_91.unity_MatrixVP[1i];
  let x_349 : vec3<f32> = (vec3<f32>(x_344.y, x_344.y, x_344.y) * vec3<f32>(x_347.x, x_347.y, x_347.w));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_355 : vec4<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.w) * vec3<f32>(x_355.x, x_355.x, x_355.x)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_366 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat0;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.w) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_377 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.w) * vec3<f32>(x_377.w, x_377.w, x_377.w)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_386;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_392 : f32 = x_91.x_ProjectionParams.x;
  u_xlat2.y = x_392;
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec4<f32> = u_xlat2;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.w) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = u_xlat0.y;
  u_xlat0.w = (x_409 * 0.5f);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : vec2<f32> = (vec2<f32>(x_412.z, x_412.z) + vec2<f32>(x_414.x, x_414.w));
  let x_417 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_421 : f32 = u_xlat1.z;
  vs_TEXCOORD6 = x_421;
  let x_423 : vec4<f32> = u_xlat1;
  let x_424 : vec2<f32> = vec2<f32>(x_423.z, x_423.w);
  let x_425 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_425.x, x_425.y, x_424.x, x_424.y);
  let x_428 : f32 = u_xlat2.y;
  u_xlat2.w = (x_428 * 0.5f);
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec2<f32> = (vec2<f32>(x_431.z, x_431.z) + vec2<f32>(x_433.x, x_433.w));
  let x_436 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_443 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_443);
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
  @location(5)
  vs_TEXCOORD6_1 : f32,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD6, vs_TEXCOORD7);
}

