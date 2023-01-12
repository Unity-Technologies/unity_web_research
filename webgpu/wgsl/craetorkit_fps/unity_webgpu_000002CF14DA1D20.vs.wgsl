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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_91 : VGlobals;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat0 : f32;
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
  vs_TEXCOORD2 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
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
  vs_TEXCOORD4 = x_129;
  let x_132 : vec4<f32> = u_xlat1;
  let x_133 : vec2<f32> = vec2<f32>(x_132.z, x_132.w);
  let x_134 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_134.x, x_134.y, x_133.x, x_133.y);
  let x_139 : vec4<f32> = in_TEXCOORD0;
  let x_142 : vec4<f32> = x_91.x_MainTex_ST;
  let x_146 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_142.x, x_142.y)) + vec2<f32>(x_146.z, x_146.w));
  let x_151 : vec3<f32> = in_NORMAL0;
  let x_152 : i32 = u_xlati0;
  let x_155 : vec4<f32> = x_38.unity_Builtins0Array[(x_152 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_151, vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_160 : vec3<f32> = in_NORMAL0;
  let x_161 : i32 = u_xlati0;
  let x_164 : vec4<f32> = x_38.unity_Builtins0Array[(x_161 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_160, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_169 : i32 = u_xlati0;
  let x_172 : vec4<f32> = x_38.unity_Builtins0Array[(x_169 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_168, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat0 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_182);
  let x_185 : f32 = u_xlat0;
  let x_187 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : f32 = u_xlat1.y;
  let x_194 : f32 = x_91.x_ProjectionParams.x;
  u_xlat0 = (x_191 * x_194);
  let x_196 : vec4<f32> = u_xlat1;
  let x_200 : vec2<f32> = (vec2<f32>(x_196.x, x_196.w) * vec2<f32>(0.5f, 0.5f));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_200.x, x_201.y, x_200.y, x_201.w);
  let x_203 : f32 = u_xlat0;
  u_xlat1.w = (x_203 * 0.5f);
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec2<f32> = (vec2<f32>(x_207.z, x_207.z) + vec2<f32>(x_209.x, x_209.w));
  let x_212 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_211.x, x_211.y, x_212.z, x_212.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_220 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_220);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1);
}

