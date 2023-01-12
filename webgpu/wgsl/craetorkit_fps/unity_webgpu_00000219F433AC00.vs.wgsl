struct VGlobals {
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat0;
  gl_Position = ((x_86 * vec4<f32>(x_87.w, x_87.w, x_87.w, x_87.w)) + x_90);
  let x_96 : vec3<f32> = in_NORMAL0;
  let x_99 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_96, vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat6;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_134 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_134.x, x_134.y, x_134.z);
  let x_138 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_138;
  let x_144 : vec2<f32> = in_TEXCOORD0;
  let x_147 : vec4<f32> = x_17.x_MainTex_ST;
  let x_151 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_144 * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_159 : f32 = u_xlat0.y;
  let x_161 : f32 = u_xlat0.y;
  u_xlat6 = (x_159 * x_161);
  let x_164 : f32 = u_xlat0.x;
  let x_166 : f32 = u_xlat0.x;
  let x_168 : f32 = u_xlat6;
  u_xlat6 = ((x_164 * x_166) + -(x_168));
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_177 : vec4<f32> = x_17.unity_SHBr;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_177, x_178);
  let x_182 : vec4<f32> = x_17.unity_SHBg;
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_182, x_183);
  let x_187 : vec4<f32> = x_17.unity_SHBb;
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_17.unity_SHC;
  let x_195 : f32 = u_xlat6;
  let x_198 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195, x_195, x_195)) + vec3<f32>(x_198.x, x_198.y, x_198.z));
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD5);
}

