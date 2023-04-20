diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  unity_MatrixInvV : mat4x4<f32>,
  /* @offset(272) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_84 : f32 = u_xlat0.y;
  let x_88 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2 = (x_84 * x_88);
  let x_91 : f32 = x_17.unity_MatrixV[0i].z;
  let x_94 : f32 = u_xlat0.x;
  let x_96 : f32 = u_xlat2;
  u_xlat0.x = ((x_91 * x_94) + x_96);
  let x_100 : f32 = x_17.unity_MatrixV[2i].z;
  let x_102 : f32 = u_xlat0.z;
  let x_105 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_100 * x_102) + x_105);
  let x_109 : f32 = x_17.unity_MatrixV[3i].z;
  let x_112 : f32 = u_xlat0.w;
  let x_115 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_109 * x_112) + x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_121 : f32 = x_17.x_ProjectionParams.w;
  u_xlat0.x = (x_119 * x_121);
  let x_126 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = -(x_126);
  let x_132 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_136 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_138 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_136.y, x_136.y, x_136.y));
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_145 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_148 : vec4<f32> = u_xlat0;
  let x_150 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_157 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_169 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_169.w, x_169.w, x_169.w)) + vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), x_181);
  let x_185 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_188 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_190 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_188.y, x_188.y, x_188.y));
  let x_191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_197 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_197.x, x_197.x, x_197.x)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_209 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_209.z, x_209.z, x_209.z)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_221 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), x_231);
  let x_235 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_238 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_240 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_238.y, x_238.y, x_238.y));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_247 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_259 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_262 : vec4<f32> = u_xlat1;
  let x_264 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_271 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_271.w, x_271.w, x_271.w)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_290);
  let x_292 : f32 = u_xlat6;
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = (vec3<f32>(x_292, x_292, x_292) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}


