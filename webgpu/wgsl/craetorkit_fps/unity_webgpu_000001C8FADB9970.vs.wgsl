struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(8) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat10 : f32;
  var u_xlat2 : vec4<f32>;
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
  u_xlat6 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat6;
  u_xlat6 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat6;
  u_xlat6 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat6;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat6.x;
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
  u_xlat3 = ((x_120 * 0.25f) + x_124);
  let x_126 : f32 = u_xlat3;
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
  let x_192 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_193 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_192 * vec4<f32>(x_193.w, x_193.w, x_193.w, x_193.w)) + x_196);
  let x_202 : vec4<f32> = u_xlat0;
  gl_Position = x_202;
  let x_209 : f32 = u_xlat0.z;
  vs_TEXCOORD5 = x_209;
  let x_212 : vec4<f32> = in_TEXCOORD0;
  let x_216 : vec4<f32> = x_131.x_Gradient_ST;
  let x_220 : vec4<f32> = x_131.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_216.x, x_216.y)) + vec2<f32>(x_220.z, x_220.w));
  let x_225 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_225;
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_131.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_226, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_131.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_241 : vec4<f32> = x_131.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_239, vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_251);
  let x_253 : f32 = u_xlat10;
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = (vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_261 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_261.x, x_261.y, x_261.z);
  let x_264 : f32 = u_xlat1.y;
  let x_266 : f32 = u_xlat1.y;
  u_xlat10 = (x_264 * x_266);
  let x_269 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat1.x;
  let x_273 : f32 = u_xlat10;
  u_xlat10 = ((x_269 * x_271) + -(x_273));
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_277.y, x_277.z, x_277.z, x_277.x) * vec4<f32>(x_279.x, x_279.y, x_279.z, x_279.z));
  let x_283 : vec4<f32> = x_131.unity_SHBr;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_283, x_284);
  let x_288 : vec4<f32> = x_131.unity_SHBg;
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_288, x_289);
  let x_293 : vec4<f32> = x_131.unity_SHBb;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_293, x_294);
  let x_300 : vec4<f32> = x_131.unity_SHC;
  let x_302 : f32 = u_xlat10;
  let x_305 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302, x_302, x_302)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_309 : f32 = u_xlat0.y;
  let x_312 : f32 = x_131.x_ProjectionParams.x;
  u_xlat0.y = (x_309 * x_312);
  let x_315 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.w, x_315.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_319.z);
  let x_323 : vec4<f32> = u_xlat0;
  let x_324 : vec2<f32> = vec2<f32>(x_323.z, x_323.w);
  let x_325 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_325.x, x_325.y, x_324.x, x_324.y);
  let x_327 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec2<f32> = (vec2<f32>(x_327.z, x_327.z) + vec2<f32>(x_329.x, x_329.w));
  let x_332 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(3)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD4, vs_TEXCOORD6);
}

