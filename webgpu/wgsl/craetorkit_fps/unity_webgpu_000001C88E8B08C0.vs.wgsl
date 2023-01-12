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

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  let x_115 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_116 : vec4<f32> = u_xlat2;
  let x_119 : vec4<f32> = u_xlat1;
  gl_Position = ((x_115 * vec4<f32>(x_116.w, x_116.w, x_116.w, x_116.w)) + x_119);
  let x_126 : vec4<f32> = in_TEXCOORD0;
  let x_130 : vec4<f32> = x_91.x_MainTex_ST;
  let x_134 : vec4<f32> = x_91.x_MainTex_ST;
  let x_136 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_130.x, x_130.y)) + vec2<f32>(x_134.z, x_134.w));
  let x_137 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_139 : vec4<f32> = in_TEXCOORD0;
  let x_143 : vec4<f32> = x_91.x_Normal_ST;
  let x_147 : vec4<f32> = x_91.x_Normal_ST;
  let x_149 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143.x, x_143.y)) + vec2<f32>(x_147.z, x_147.w));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_150.x, x_150.y, x_149.x, x_149.y);
  let x_154 : vec3<f32> = in_NORMAL0;
  let x_155 : i32 = u_xlati0;
  let x_158 : vec4<f32> = x_38.unity_Builtins0Array[(x_155 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.y = dot(x_154, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : vec3<f32> = in_NORMAL0;
  let x_164 : i32 = u_xlati0;
  let x_167 : vec4<f32> = x_38.unity_Builtins0Array[(x_164 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.z = dot(x_163, vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_173 : i32 = u_xlati0;
  let x_176 : vec4<f32> = x_38.unity_Builtins0Array[(x_173 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.x = dot(x_172, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat16;
  let x_191 : vec4<f32> = u_xlat1;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_198 : vec4<f32> = in_TANGENT0;
  let x_200 : i32 = u_xlati0;
  let x_203 : vec4<f32> = x_38.unity_Builtins0Array[(x_200 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat3 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_203.y, x_203.z, x_203.x));
  let x_206 : i32 = u_xlati0;
  let x_209 : vec4<f32> = x_38.unity_Builtins0Array[(x_206 / 8i)].unity_ObjectToWorldArray[0i];
  let x_211 : vec4<f32> = in_TANGENT0;
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_209.y, x_209.z, x_209.x) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + x_214);
  let x_216 : i32 = u_xlati0;
  let x_219 : vec4<f32> = x_38.unity_Builtins0Array[(x_216 / 8i)].unity_ObjectToWorldArray[2i];
  let x_221 : vec4<f32> = in_TANGENT0;
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_219.y, x_219.z, x_219.x) * vec3<f32>(x_221.z, x_221.z, x_221.z)) + x_224);
  let x_227 : vec3<f32> = u_xlat3;
  let x_228 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_227, x_228);
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_232);
  let x_235 : vec3<f32> = u_xlat0;
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_235.x, x_235.x, x_235.x) * x_237);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_240.x, x_240.y, x_240.z) * x_242);
  let x_244 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = u_xlat3;
  let x_249 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_244.z, x_244.x, x_244.y) * vec3<f32>(x_246.y, x_246.z, x_246.x)) + -(x_249));
  let x_255 : f32 = in_TANGENT0.w;
  let x_258 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0.x = (x_255 * x_258);
  let x_261 : vec3<f32> = u_xlat0;
  let x_263 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_261.x, x_261.x, x_261.x) * x_263);
  let x_267 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_267;
  let x_271 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_271;
  let x_274 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_274;
  let x_277 : f32 = u_xlat5.x;
  vs_TEXCOORD1.w = x_277;
  let x_281 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_281;
  let x_285 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_285;
  let x_288 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_288;
  let x_291 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_291;
  let x_294 : f32 = u_xlat5.y;
  vs_TEXCOORD2.w = x_294;
  let x_297 : f32 = u_xlat5.z;
  vs_TEXCOORD3.w = x_297;
  let x_300 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_300;
  let x_303 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_303;
  let x_307 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_307;
  let x_309 : f32 = u_xlat2.y;
  let x_311 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat0.x = (x_309 * x_311);
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
  let x_344 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_344);
  let x_348 : vec4<f32> = u_xlat2;
  let x_351 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat0 = (vec3<f32>(x_348.y, x_348.y, x_348.y) * vec3<f32>(x_351.x, x_351.y, x_351.w));
  let x_355 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_357 : vec4<f32> = u_xlat2;
  let x_360 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_355.x, x_355.y, x_355.w) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
  let x_363 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_363.x, x_363.y, x_363.w) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + x_368);
  let x_371 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_373 : vec4<f32> = u_xlat2;
  let x_376 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_371.x, x_371.y, x_371.w) * vec3<f32>(x_373.w, x_373.w, x_373.w)) + x_376);
  let x_378 : vec3<f32> = u_xlat0;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.z) * vec2<f32>(0.5f, 0.5f));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_383.y, x_382.y, x_383.w);
  let x_386 : f32 = u_xlat0.y;
  let x_388 : f32 = x_91.x_ProjectionParams.x;
  u_xlat0.x = (x_386 * x_388);
  let x_392 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_392;
  let x_395 : f32 = u_xlat0.x;
  u_xlat1.w = (x_395 * 0.5f);
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec2<f32> = (vec2<f32>(x_398.z, x_398.z) + vec2<f32>(x_400.x, x_400.w));
  let x_403 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_410 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_410);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

