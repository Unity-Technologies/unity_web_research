struct VGlobals {
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(6) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_141 : vec4<f32> = x_131.unity_ObjectToWorld[0i];
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_141 * vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x)) + x_145);
  let x_149 : vec4<f32> = x_131.unity_ObjectToWorld[2i];
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_149 * vec4<f32>(x_150.z, x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  u_xlat1 = (x_155 + x_158);
  let x_163 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = x_131.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_171.y, x_171.y, x_171.y, x_171.y) * x_175);
  let x_178 : vec4<f32> = x_131.unity_MatrixVP[0i];
  let x_179 : vec4<f32> = u_xlat1;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_178 * vec4<f32>(x_179.x, x_179.x, x_179.x, x_179.x)) + x_182);
  let x_185 : vec4<f32> = x_131.unity_MatrixVP[2i];
  let x_186 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_185 * vec4<f32>(x_186.z, x_186.z, x_186.z, x_186.z)) + x_189);
  let x_196 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_197 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat0;
  gl_Position = ((x_196 * vec4<f32>(x_197.w, x_197.w, x_197.w, x_197.w)) + x_200);
  let x_206 : vec4<f32> = in_TEXCOORD0;
  let x_210 : vec4<f32> = x_131.x_Gradient_ST;
  let x_214 : vec4<f32> = x_131.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(x_210.x, x_210.y)) + vec2<f32>(x_214.z, x_214.w));
  let x_221 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_221;
  let x_222 : vec3<f32> = in_NORMAL0;
  let x_225 : vec4<f32> = x_131.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_222, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_229 : vec3<f32> = in_NORMAL0;
  let x_231 : vec4<f32> = x_131.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_229, vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_235 : vec3<f32> = in_NORMAL0;
  let x_237 : vec4<f32> = x_131.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_235, vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat6;
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_257.x, x_257.y, x_257.z);
  let x_260 : f32 = u_xlat0.y;
  let x_262 : f32 = u_xlat0.y;
  u_xlat6 = (x_260 * x_262);
  let x_265 : f32 = u_xlat0.x;
  let x_267 : f32 = u_xlat0.x;
  let x_269 : f32 = u_xlat6;
  u_xlat6 = ((x_265 * x_267) + -(x_269));
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_272.y, x_272.z, x_272.z, x_272.x) * vec4<f32>(x_274.x, x_274.y, x_274.z, x_274.z));
  let x_278 : vec4<f32> = x_131.unity_SHBr;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_278, x_279);
  let x_283 : vec4<f32> = x_131.unity_SHBg;
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_283, x_284);
  let x_288 : vec4<f32> = x_131.unity_SHBb;
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_131.unity_SHC;
  let x_296 : f32 = u_xlat6;
  let x_299 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296, x_296, x_296)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD4);
}

