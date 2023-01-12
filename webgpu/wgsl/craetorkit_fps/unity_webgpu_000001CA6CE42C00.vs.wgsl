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

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_220 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati4 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati4 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati4;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati4;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati4;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati4;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_80 : i32 = u_xlati4;
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
  let x_133 : f32 = u_xlat1.z;
  vs_TEXCOORD4 = x_133;
  let x_138 : vec4<f32> = in_TEXCOORD0;
  let x_141 : vec4<f32> = x_95.x_MainTex_ST;
  let x_145 : vec4<f32> = x_95.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_138.x, x_138.y) * vec2<f32>(x_141.x, x_141.y)) + vec2<f32>(x_145.z, x_145.w));
  let x_150 : vec3<f32> = in_NORMAL0;
  let x_151 : i32 = u_xlati4;
  let x_154 : vec4<f32> = x_42.unity_Builtins0Array[(x_151 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.x = dot(x_150, vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_159 : vec3<f32> = in_NORMAL0;
  let x_160 : i32 = u_xlati4;
  let x_163 : vec4<f32> = x_42.unity_Builtins0Array[(x_160 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.y = dot(x_159, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_168 : i32 = u_xlati4;
  let x_171 : vec4<f32> = x_42.unity_Builtins0Array[(x_168 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.z = dot(x_167, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_184);
  let x_187 : vec3<f32> = u_xlat4;
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec3<f32> = u_xlat4;
  vs_TEXCOORD1 = x_193;
  let x_195 : f32 = u_xlat4.y;
  let x_197 : f32 = u_xlat4.y;
  u_xlat1.x = (x_195 * x_197);
  let x_201 : f32 = u_xlat4.x;
  let x_203 : f32 = u_xlat4.x;
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_201 * x_203) + -(x_206));
  let x_210 : vec3<f32> = u_xlat4;
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_210.y, x_210.z, x_210.z, x_210.x) * vec4<f32>(x_212.x, x_212.y, x_212.z, x_212.z));
  let x_221 : i32 = u_xlati0;
  let x_224 : vec4<f32> = x_220.unity_Builtins2Array[(x_221 / 7i)].unity_SHBrArray;
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_224, x_225);
  let x_228 : i32 = u_xlati0;
  let x_232 : vec4<f32> = x_220.unity_Builtins2Array[(x_228 / 7i)].unity_SHBgArray;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_232, x_233);
  let x_236 : i32 = u_xlati0;
  let x_240 : vec4<f32> = x_220.unity_Builtins2Array[(x_236 / 7i)].unity_SHBbArray;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_240, x_241);
  let x_245 : i32 = u_xlati0;
  let x_249 : vec4<f32> = x_220.unity_Builtins2Array[(x_245 / 7i)].unity_SHCArray;
  let x_251 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = u_xlat3;
  vs_TEXCOORD3 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.x, x_251.x, x_251.x)) + x_254);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_263 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_263);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, vs_SV_InstanceID0);
}

