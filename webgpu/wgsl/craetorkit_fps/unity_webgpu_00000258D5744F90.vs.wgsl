struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_131 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat11 : f32;
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
  let x_136 : vec4<f32> = x_131.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_126, x_126, x_126, x_126) * x_136);
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
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = x_131.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_160.y, x_160.y, x_160.y, x_160.y) * x_163);
  let x_166 : vec4<f32> = x_131.unity_MatrixVP[0i];
  let x_167 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_166 * vec4<f32>(x_167.x, x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_131.unity_MatrixVP[2i];
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_180 : vec4<f32> = x_131.unity_MatrixVP[3i];
  let x_181 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_180 * vec4<f32>(x_181.w, x_181.w, x_181.w, x_181.w)) + x_184);
  let x_190 : vec4<f32> = u_xlat1;
  gl_Position = x_190;
  let x_195 : vec4<f32> = in_TEXCOORD0;
  let x_199 : vec4<f32> = x_131.x_Gradient_ST;
  let x_203 : vec4<f32> = x_131.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_195.x, x_195.y) * vec2<f32>(x_199.x, x_199.y)) + vec2<f32>(x_203.z, x_203.w));
  let x_210 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_210;
  let x_211 : vec3<f32> = in_NORMAL0;
  let x_213 : vec4<f32> = x_131.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_211, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec3<f32> = in_NORMAL0;
  let x_219 : vec4<f32> = x_131.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_217, vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_223 : vec3<f32> = in_NORMAL0;
  let x_225 : vec4<f32> = x_131.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_223, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat11 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_235);
  let x_239 : f32 = u_xlat11;
  let x_241 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_248 : vec4<f32> = in_POSITION0;
  let x_251 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.w, x_248.w, x_248.w)) + vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_255 : vec4<f32> = x_131.unity_ObjectToWorld[3i];
  let x_256 : vec4<f32> = in_POSITION0;
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_255 * vec4<f32>(x_256.w, x_256.w, x_256.w, x_256.w)) + x_259);
  let x_261 : vec4<f32> = u_xlat0;
  let x_265 : vec4<f32> = x_131.unity_WorldToLight[1i];
  let x_267 : vec2<f32> = (vec2<f32>(x_261.y, x_261.y) * vec2<f32>(x_265.x, x_265.y));
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_271 : vec4<f32> = x_131.unity_WorldToLight[0i];
  let x_273 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = ((vec2<f32>(x_271.x, x_271.y) * vec2<f32>(x_273.x, x_273.x)) + vec2<f32>(x_276.x, x_276.y));
  let x_279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
  let x_282 : vec4<f32> = x_131.unity_WorldToLight[2i];
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec2<f32> = ((vec2<f32>(x_282.x, x_282.y) * vec2<f32>(x_284.z, x_284.z)) + vec2<f32>(x_287.x, x_287.y));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_290.z, x_290.w);
  let x_295 : vec4<f32> = x_131.unity_WorldToLight[3i];
  let x_297 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec2<f32>(x_295.x, x_295.y) * vec2<f32>(x_297.w, x_297.w)) + vec2<f32>(x_300.x, x_300.y));
  let x_304 : f32 = u_xlat1.y;
  let x_307 : f32 = x_131.x_ProjectionParams.x;
  u_xlat0.x = (x_304 * x_307);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.w = (x_311 * 0.5f);
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec2<f32> = (vec2<f32>(x_315.x, x_315.w) * vec2<f32>(0.5f, 0.5f));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_319.y, x_318.y, x_319.w);
  let x_322 : vec4<f32> = u_xlat1;
  let x_323 : vec2<f32> = vec2<f32>(x_322.z, x_322.w);
  let x_324 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_324.x, x_324.y, x_323.x, x_323.y);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec2<f32> = (vec2<f32>(x_326.z, x_326.z) + vec2<f32>(x_328.x, x_328.w));
  let x_331 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5);
}

