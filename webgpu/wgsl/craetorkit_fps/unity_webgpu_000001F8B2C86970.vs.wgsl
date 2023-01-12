struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(3) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.y;
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(x_38.x, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(0.02f, 0.02f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_52 : vec4<f32> = in_TEXCOORD0;
  u_xlat4 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat4;
  u_xlat4 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat4;
  u_xlat4 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat4;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat4.x;
  let x_85 : f32 = in_TEXCOORD0.y;
  u_xlat0.y = (-(x_81) + x_85);
  let x_89 : f32 = in_TEXCOORD0.x;
  u_xlat0.x = x_89;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0.x = x_96.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x) * vec4<f32>(x_101.x, x_101.y, x_101.z, x_101.x));
  let x_105 : f32 = in_POSITION0.y;
  u_xlat1.y = x_105;
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(0.449999988f, 0.449999988f, 0.449999988f)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_120 : f32 = u_xlat0.w;
  let x_124 : f32 = u_xlat0.y;
  u_xlat2 = ((x_120 * 0.25f) + x_124);
  let x_126 : f32 = u_xlat2;
  let x_137 : vec4<f32> = x_131.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_126, x_126, x_126, x_126) * x_137);
  let x_140 : vec4<f32> = x_131.unity_ObjectToWorld[0i];
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + x_144);
  let x_148 : vec4<f32> = x_131.unity_ObjectToWorld[2i];
  let x_149 : vec4<f32> = u_xlat0;
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_148 * vec4<f32>(x_149.z, x_149.z, x_149.z, x_149.z)) + x_152);
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  u_xlat1 = (x_154 + x_157);
  let x_162 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.w, x_164.w, x_164.w)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = x_131.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_170.y, x_170.y, x_170.y, x_170.y) * x_173);
  let x_176 : vec4<f32> = x_131.unity_MatrixVP[0i];
  let x_177 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_176 * vec4<f32>(x_177.x, x_177.x, x_177.x, x_177.x)) + x_180);
  let x_183 : vec4<f32> = x_131.unity_MatrixVP[2i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_183 * vec4<f32>(x_184.z, x_184.z, x_184.z, x_184.z)) + x_187);
  let x_194 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_195 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat0;
  gl_Position = ((x_194 * vec4<f32>(x_195.w, x_195.w, x_195.w, x_195.w)) + x_198);
  let x_204 : vec4<f32> = in_TEXCOORD0;
  let x_207 : vec4<f32> = x_131.x_Gradient_ST;
  let x_211 : vec4<f32> = x_131.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_207.x, x_207.y)) + vec2<f32>(x_211.z, x_211.w));
  let x_218 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_218;
  let x_219 : vec3<f32> = in_NORMAL0;
  let x_221 : vec4<f32> = x_131.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_219, vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec3<f32> = in_NORMAL0;
  let x_227 : vec4<f32> = x_131.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_225, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_131.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_231, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_243);
  let x_246 : f32 = u_xlat6;
  let x_248 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_246, x_246, x_246) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1);
}

