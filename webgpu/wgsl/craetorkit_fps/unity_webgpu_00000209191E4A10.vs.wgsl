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

type Arr_1 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_1,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_95 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_217 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati5 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
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
  let x_80 : i32 = u_xlati5;
  let x_83 : vec4<f32> = x_42.unity_Builtins0Array[(x_80 / 8i)].unity_ObjectToWorldArray[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_85.w, x_85.w, x_85.w)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  let x_97 : vec4<f32> = x_95.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_91.y, x_91.y, x_91.y, x_91.y) * x_97);
  let x_100 : vec4<f32> = x_95.unity_MatrixVP[0i];
  let x_101 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_100 * vec4<f32>(x_101.x, x_101.x, x_101.x, x_101.x)) + x_104);
  let x_107 : vec4<f32> = x_95.unity_MatrixVP[2i];
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_107 * vec4<f32>(x_108.z, x_108.z, x_108.z, x_108.z)) + x_111);
  let x_114 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_114 * vec4<f32>(x_115.w, x_115.w, x_115.w, x_115.w)) + x_118);
  let x_125 : vec4<f32> = u_xlat1;
  gl_Position = x_125;
  let x_132 : vec4<f32> = in_TEXCOORD0;
  let x_135 : vec4<f32> = x_95.x_MainTex_ST;
  let x_139 : vec4<f32> = x_95.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y)) + vec2<f32>(x_139.z, x_139.w));
  let x_144 : vec3<f32> = in_NORMAL0;
  let x_145 : i32 = u_xlati5;
  let x_148 : vec4<f32> = x_42.unity_Builtins0Array[(x_145 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_144, vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_154 : vec3<f32> = in_NORMAL0;
  let x_155 : i32 = u_xlati5;
  let x_158 : vec4<f32> = x_42.unity_Builtins0Array[(x_155 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_154, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_163 : i32 = u_xlati5;
  let x_166 : vec4<f32> = x_42.unity_Builtins0Array[(x_163 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_162, vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_180 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_180);
  let x_183 : vec3<f32> = u_xlat5;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_183.x, x_183.x, x_183.x) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec3<f32> = u_xlat5;
  vs_TEXCOORD1 = x_189;
  let x_191 : f32 = u_xlat5.y;
  let x_193 : f32 = u_xlat5.y;
  u_xlat2.x = (x_191 * x_193);
  let x_197 : f32 = u_xlat5.x;
  let x_199 : f32 = u_xlat5.x;
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_197 * x_199) + -(x_202));
  let x_207 : vec3<f32> = u_xlat5;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat3 = (vec4<f32>(x_207.y, x_207.z, x_207.z, x_207.x) * vec4<f32>(x_209.x, x_209.y, x_209.z, x_209.z));
  let x_218 : i32 = u_xlati0;
  let x_221 : vec4<f32> = x_217.unity_Builtins2Array[(x_218 / 7i)].unity_SHBrArray;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_221, x_222);
  let x_225 : i32 = u_xlati0;
  let x_229 : vec4<f32> = x_217.unity_Builtins2Array[(x_225 / 7i)].unity_SHBgArray;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_229, x_230);
  let x_233 : i32 = u_xlati0;
  let x_237 : vec4<f32> = x_217.unity_Builtins2Array[(x_233 / 7i)].unity_SHBbArray;
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_237, x_238);
  let x_242 : i32 = u_xlati0;
  let x_246 : vec4<f32> = x_217.unity_Builtins2Array[(x_242 / 7i)].unity_SHCArray;
  let x_248 : vec4<f32> = u_xlat2;
  let x_251 : vec3<f32> = u_xlat4;
  vs_TEXCOORD3 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.x, x_248.x, x_248.x)) + x_251);
  let x_255 : f32 = u_xlat1.y;
  let x_258 : f32 = x_95.x_ProjectionParams.x;
  u_xlat0.x = (x_255 * x_258);
  let x_262 : f32 = u_xlat0.x;
  u_xlat0.w = (x_262 * 0.5f);
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec2<f32> = (vec2<f32>(x_267.x, x_267.w) * vec2<f32>(0.5f, 0.5f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_271.y, x_270.y, x_271.w);
  let x_274 : vec4<f32> = u_xlat1;
  let x_275 : vec2<f32> = vec2<f32>(x_274.z, x_274.w);
  let x_276 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_276.x, x_276.y, x_275.x, x_275.y);
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : vec2<f32> = (vec2<f32>(x_278.z, x_278.z) + vec2<f32>(x_280.x, x_280.w));
  let x_283 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_291 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_291);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(5) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, vs_TEXCOORD5, vs_SV_InstanceID0);
}

