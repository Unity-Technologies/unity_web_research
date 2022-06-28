struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(7) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_82 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.w, x_83.w, x_83.w, x_83.w)) + x_86);
  let x_92 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_94 : vec4<f32> = in_POSITION0;
  let x_97 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.w, x_94.w, x_94.w)) + vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_101 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_106 : vec2<f32> = (vec2<f32>(x_101.y, x_101.y) * vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_110 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_112 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_112.x, x_112.x)) + vec2<f32>(x_115.x, x_115.y));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_121 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_123 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.z, x_123.z)) + vec2<f32>(x_126.x, x_126.y));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_134 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_136 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(x_136.w, x_136.w)) + vec2<f32>(x_139.x, x_139.y));
  let x_145 : vec4<f32> = in_TEXCOORD0;
  let x_149 : vec4<f32> = x_17.x_MainTex_ST;
  let x_153 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_160 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_158, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_180 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_185);
  let x_188 : f32 = u_xlat9;
  let x_190 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_195;
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0);
}

