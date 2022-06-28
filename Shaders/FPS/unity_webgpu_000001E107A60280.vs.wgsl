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

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(12) var<uniform> x_91 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  u_xlat4 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
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
  u_xlat13 = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_168);
  let x_170 : f32 = u_xlat13;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_180 : i32 = u_xlati0;
  let x_183 : vec4<f32> = x_38.unity_Builtins0Array[(x_180 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_179, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : vec3<f32> = in_NORMAL0;
  let x_189 : i32 = u_xlati0;
  let x_192 : vec4<f32> = x_38.unity_Builtins0Array[(x_189 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_188, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec3<f32> = in_NORMAL0;
  let x_197 : i32 = u_xlati0;
  let x_200 : vec4<f32> = x_38.unity_Builtins0Array[(x_197 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_196, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat0 = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_211);
  let x_213 : f32 = u_xlat0;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_213, x_213, x_213, x_213) * vec4<f32>(x_215.x, x_215.y, x_215.z, x_215.z));
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.x, x_221.y));
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_224.y, x_224.w, x_224.x) * vec3<f32>(x_226.y, x_226.z, x_226.x)) + -(x_229));
  let x_235 : f32 = in_TANGENT0.w;
  let x_239 : f32 = x_91.unity_WorldTransformParams.w;
  u_xlat0 = (x_235 * x_239);
  let x_241 : f32 = u_xlat0;
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_241, x_241, x_241) * x_243);
  let x_247 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_247;
  let x_251 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_251;
  let x_254 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_254;
  let x_257 : f32 = u_xlat4.x;
  vs_TEXCOORD0.w = x_257;
  let x_261 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_261;
  let x_265 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_265;
  let x_268 : f32 = u_xlat4.y;
  vs_TEXCOORD1.w = x_268;
  let x_271 : f32 = u_xlat4.z;
  vs_TEXCOORD2.w = x_271;
  let x_274 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_274;
  let x_277 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_277;
  let x_280 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_280;
  let x_283 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_283;
  let x_287 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_287;
  let x_293 : vec2<f32> = in_TEXCOORD0;
  let x_296 : vec4<f32> = x_91.x_MainTex_ST;
  let x_300 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_293 * vec2<f32>(x_296.x, x_296.y)) + vec2<f32>(x_300.z, x_300.w));
  let x_304 : f32 = u_xlat2.y;
  let x_306 : f32 = u_xlat2.y;
  u_xlat0 = (x_304 * x_306);
  let x_309 : f32 = u_xlat2.x;
  let x_311 : f32 = u_xlat2.x;
  let x_313 : f32 = u_xlat0;
  u_xlat0 = ((x_309 * x_311) + -(x_313));
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_316.y, x_316.w, x_316.z, x_316.x) * x_318);
  let x_321 : vec4<f32> = x_91.unity_SHBr;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_321, x_322);
  let x_326 : vec4<f32> = x_91.unity_SHBg;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_326, x_327);
  let x_331 : vec4<f32> = x_91.unity_SHBb;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_331, x_332);
  let x_338 : vec4<f32> = x_91.unity_SHC;
  let x_340 : f32 = u_xlat0;
  let x_343 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340, x_340, x_340)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_351 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_351);
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

