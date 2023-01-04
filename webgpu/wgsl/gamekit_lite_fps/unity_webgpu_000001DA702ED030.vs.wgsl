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

@group(0) @binding(13) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(12) var<uniform> x_91 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

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
  let x_116 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = u_xlat1;
  gl_Position = ((x_116 * vec4<f32>(x_117.w, x_117.w, x_117.w, x_117.w)) + x_120);
  let x_125 : vec4<f32> = in_TANGENT0;
  let x_127 : i32 = u_xlati0;
  let x_130 : vec4<f32> = x_38.unity_Builtins0Array[(x_127 / 8i)].unity_ObjectToWorldArray[1i];
  let x_132 : vec3<f32> = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_130.y, x_130.z, x_130.x));
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : i32 = u_xlati0;
  let x_138 : vec4<f32> = x_38.unity_Builtins0Array[(x_135 / 8i)].unity_ObjectToWorldArray[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.y, x_138.z, x_138.x) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : i32 = u_xlati0;
  let x_151 : vec4<f32> = x_38.unity_Builtins0Array[(x_148 / 8i)].unity_ObjectToWorldArray[2i];
  let x_153 : vec4<f32> = in_TANGENT0;
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.y, x_151.z, x_151.x) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_168);
  let x_170 : f32 = u_xlat16;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_180 : vec3<f32> = in_NORMAL0;
  let x_181 : i32 = u_xlati0;
  let x_184 : vec4<f32> = x_38.unity_Builtins0Array[(x_181 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_180, vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_189 : vec3<f32> = in_NORMAL0;
  let x_190 : i32 = u_xlati0;
  let x_193 : vec4<f32> = x_38.unity_Builtins0Array[(x_190 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_189, vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec3<f32> = in_NORMAL0;
  let x_198 : i32 = u_xlati0;
  let x_201 : vec4<f32> = x_38.unity_Builtins0Array[(x_198 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_197, vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_214 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_214);
  let x_217 : vec3<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_217.x, x_217.x, x_217.x, x_217.x) * vec4<f32>(x_219.x, x_219.y, x_219.z, x_219.z));
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.y, x_228.w, x_228.x) * vec3<f32>(x_230.y, x_230.z, x_230.x)) + -(x_233));
  let x_239 : f32 = in_TANGENT0.w;
  let x_243 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0.x = (x_239 * x_243);
  let x_246 : vec3<f32> = u_xlat0;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_246.x, x_246.x, x_246.x) * x_248);
  let x_252 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_252;
  let x_256 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_256;
  let x_259 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_259;
  let x_262 : f32 = u_xlat5.x;
  vs_TEXCOORD0.w = x_262;
  let x_266 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_266;
  let x_270 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_270;
  let x_273 : f32 = u_xlat5.y;
  vs_TEXCOORD1.w = x_273;
  let x_276 : f32 = u_xlat5.z;
  vs_TEXCOORD2.w = x_276;
  let x_279 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_279;
  let x_282 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_282;
  let x_285 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_285;
  let x_288 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_288;
  let x_292 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_292;
  let x_298 : vec2<f32> = in_TEXCOORD0;
  let x_300 : vec4<f32> = x_91.x_MainTex_ST;
  let x_304 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_298 * vec2<f32>(x_300.x, x_300.y)) + vec2<f32>(x_304.z, x_304.w));
  let x_308 : f32 = u_xlat2.y;
  let x_311 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat0.x = (x_308 * x_311);
  let x_315 : f32 = x_91.unity_MatrixV[0i].z;
  let x_317 : f32 = u_xlat2.x;
  let x_320 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_315 * x_317) + x_320);
  let x_324 : f32 = x_91.unity_MatrixV[2i].z;
  let x_326 : f32 = u_xlat2.z;
  let x_329 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_324 * x_326) + x_329);
  let x_333 : f32 = x_91.unity_MatrixV[3i].z;
  let x_335 : f32 = u_xlat2.w;
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_333 * x_335) + x_338);
  let x_343 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_343);
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat0 = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_349.x, x_349.y, x_349.w));
  let x_353 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_355 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_353.x, x_353.y, x_353.w) * vec3<f32>(x_355.x, x_355.x, x_355.x)) + x_358);
  let x_361 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_361.x, x_361.y, x_361.w) * vec3<f32>(x_363.z, x_363.z, x_363.z)) + x_366);
  let x_369 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_371 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_369.x, x_369.y, x_369.w) * vec3<f32>(x_371.w, x_371.w, x_371.w)) + x_374);
  let x_376 : vec3<f32> = u_xlat0;
  let x_380 : vec2<f32> = (vec2<f32>(x_376.x, x_376.z) * vec2<f32>(0.5f, 0.5f));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_381.y, x_380.y, x_381.w);
  let x_384 : f32 = u_xlat0.y;
  let x_386 : f32 = x_91.x_ProjectionParams.x;
  u_xlat0.x = (x_384 * x_386);
  let x_390 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_390;
  let x_393 : f32 = u_xlat0.x;
  u_xlat1.w = (x_393 * 0.5f);
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec2<f32> = (vec2<f32>(x_396.z, x_396.z) + vec2<f32>(x_398.x, x_398.w));
  let x_401 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_404 : f32 = u_xlat3.y;
  let x_406 : f32 = u_xlat3.y;
  u_xlat0.x = (x_404 * x_406);
  let x_410 : f32 = u_xlat3.x;
  let x_412 : f32 = u_xlat3.x;
  let x_415 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_410 * x_412) + -(x_415));
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_419.y, x_419.w, x_419.z, x_419.x) * x_421);
  let x_424 : vec4<f32> = x_91.unity_SHBr;
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_424, x_425);
  let x_429 : vec4<f32> = x_91.unity_SHBg;
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_429, x_430);
  let x_434 : vec4<f32> = x_91.unity_SHBb;
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_434, x_435);
  let x_442 : vec4<f32> = x_91.unity_SHC;
  let x_444 : vec3<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444.x, x_444.x, x_444.x)) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_455 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_455);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

