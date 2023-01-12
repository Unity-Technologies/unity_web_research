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

var<private> vs_TEXCOORD6 : f32;

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

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_129 : f32 = u_xlat1.z;
  vs_TEXCOORD6 = x_129;
  let x_133 : vec4<f32> = in_TEXCOORD0;
  let x_137 : vec4<f32> = x_91.x_MainTex_ST;
  let x_141 : vec4<f32> = x_91.x_MainTex_ST;
  let x_143 : vec2<f32> = ((vec2<f32>(x_133.x, x_133.y) * vec2<f32>(x_137.x, x_137.y)) + vec2<f32>(x_141.z, x_141.w));
  let x_144 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_143.x, x_143.y, x_144.z, x_144.w);
  let x_146 : vec4<f32> = in_TEXCOORD0;
  let x_150 : vec4<f32> = x_91.x_Normal_ST;
  let x_154 : vec4<f32> = x_91.x_Normal_ST;
  let x_156 : vec2<f32> = ((vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_157.x, x_157.y, x_156.x, x_156.y);
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_162 : i32 = u_xlati0;
  let x_165 : vec4<f32> = x_38.unity_Builtins0Array[(x_162 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.y = dot(x_161, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec3<f32> = in_NORMAL0;
  let x_170 : i32 = u_xlati0;
  let x_173 : vec4<f32> = x_38.unity_Builtins0Array[(x_170 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.z = dot(x_169, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec3<f32> = in_NORMAL0;
  let x_178 : i32 = u_xlati0;
  let x_181 : vec4<f32> = x_38.unity_Builtins0Array[(x_178 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.x = dot(x_177, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_192);
  let x_194 : f32 = u_xlat16;
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : vec3<f32> = (vec3<f32>(x_194, x_194, x_194) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_203 : vec4<f32> = in_TANGENT0;
  let x_205 : i32 = u_xlati0;
  let x_208 : vec4<f32> = x_38.unity_Builtins0Array[(x_205 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat3 = (vec3<f32>(x_203.y, x_203.y, x_203.y) * vec3<f32>(x_208.y, x_208.z, x_208.x));
  let x_211 : i32 = u_xlati0;
  let x_214 : vec4<f32> = x_38.unity_Builtins0Array[(x_211 / 8i)].unity_ObjectToWorldArray[0i];
  let x_216 : vec4<f32> = in_TANGENT0;
  let x_219 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_214.y, x_214.z, x_214.x) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + x_219);
  let x_221 : i32 = u_xlati0;
  let x_224 : vec4<f32> = x_38.unity_Builtins0Array[(x_221 / 8i)].unity_ObjectToWorldArray[2i];
  let x_226 : vec4<f32> = in_TANGENT0;
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_224.y, x_224.z, x_224.x) * vec3<f32>(x_226.z, x_226.z, x_226.z)) + x_229);
  let x_232 : vec3<f32> = u_xlat3;
  let x_233 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat0;
  let x_242 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_245.x, x_245.y, x_245.z) * x_247);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = u_xlat3;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_249.z, x_249.x, x_249.y) * vec3<f32>(x_251.y, x_251.z, x_251.x)) + -(x_254));
  let x_260 : f32 = in_TANGENT0.w;
  let x_263 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0.x = (x_260 * x_263);
  let x_266 : vec3<f32> = u_xlat0;
  let x_268 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268);
  let x_272 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_272;
  let x_275 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_275;
  let x_278 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_278;
  let x_281 : f32 = u_xlat5.x;
  vs_TEXCOORD1.w = x_281;
  let x_285 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_285;
  let x_289 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_289;
  let x_292 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_292;
  let x_295 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_295;
  let x_298 : f32 = u_xlat5.y;
  vs_TEXCOORD2.w = x_298;
  let x_301 : f32 = u_xlat5.z;
  vs_TEXCOORD3.w = x_301;
  let x_304 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_304;
  let x_307 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_307;
  let x_311 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_311;
  let x_313 : f32 = u_xlat2.y;
  let x_315 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat0.x = (x_313 * x_315);
  let x_319 : f32 = x_91.unity_MatrixV[0i].z;
  let x_321 : f32 = u_xlat2.x;
  let x_324 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_319 * x_321) + x_324);
  let x_328 : f32 = x_91.unity_MatrixV[2i].z;
  let x_330 : f32 = u_xlat2.z;
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_328 * x_330) + x_333);
  let x_337 : f32 = x_91.unity_MatrixV[3i].z;
  let x_339 : f32 = u_xlat2.w;
  let x_342 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_337 * x_339) + x_342);
  let x_348 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_348);
  let x_352 : vec4<f32> = u_xlat2;
  let x_355 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat0 = (vec3<f32>(x_352.y, x_352.y, x_352.y) * vec3<f32>(x_355.x, x_355.y, x_355.w));
  let x_359 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_361 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_359.x, x_359.y, x_359.w) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + x_364);
  let x_367 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_369 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_367.x, x_367.y, x_367.w) * vec3<f32>(x_369.z, x_369.z, x_369.z)) + x_372);
  let x_375 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_377 : vec4<f32> = u_xlat2;
  let x_380 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_375.x, x_375.y, x_375.w) * vec3<f32>(x_377.w, x_377.w, x_377.w)) + x_380);
  let x_382 : vec3<f32> = u_xlat0;
  let x_386 : vec2<f32> = (vec2<f32>(x_382.x, x_382.z) * vec2<f32>(0.5f, 0.5f));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_387.w);
  let x_390 : f32 = u_xlat0.y;
  let x_392 : f32 = x_91.x_ProjectionParams.x;
  u_xlat0.x = (x_390 * x_392);
  let x_396 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_396;
  let x_399 : f32 = u_xlat0.x;
  u_xlat1.w = (x_399 * 0.5f);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec2<f32> = (vec2<f32>(x_402.z, x_402.z) + vec2<f32>(x_404.x, x_404.w));
  let x_407 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_415 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_415);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
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
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

