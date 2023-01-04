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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

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
  let x_85 : vec4<f32> = in_TEXCOORD0;
  let x_89 : vec4<f32> = x_17.x_MainTex_ST;
  let x_93 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_85.x, x_85.y) * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_121.x, x_121.y, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_126);
  let x_130 : f32 = u_xlat10;
  let x_132 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139.w, x_139.w, x_139.w)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_147 : vec4<f32> = in_POSITION0;
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_146 * vec4<f32>(x_147.w, x_147.w, x_147.w, x_147.w)) + x_150);
  let x_154 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_154;
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_160 : vec3<f32> = (vec3<f32>(x_155.y, x_155.y, x_155.y) * vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_177 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.z, x_177.z, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_188 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.w, x_190.w, x_190.w)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0);
}

