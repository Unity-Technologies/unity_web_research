struct VGlobals {
  x_Time : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(17) var x_Gradient : texture_2d<f32>;

@group(0) @binding(18) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_43 : VGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.x;
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + 1.0f);
  let x_39 : f32 = u_xlat0.x;
  let x_48 : f32 = x_43.x_Cutoff;
  u_xlat0.x = (x_39 + -(x_48));
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * -3.333333254f);
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_58, 0.0f, 1.0f);
  let x_65 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_65 * -2.0f) + 3.0f);
  let x_72 : f32 = u_xlat0.x;
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = (x_72 * x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_80 : f32 = u_xlat4.x;
  u_xlat0.x = (x_78 * x_80);
  let x_84 : vec4<f32> = in_POSITION0;
  let x_90 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_92 : vec2<f32> = (vec2<f32>(x_84.y, x_84.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_92.x, x_92.y, x_93.z);
  let x_97 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_99 : vec4<f32> = in_POSITION0;
  let x_102 : vec3<f32> = u_xlat4;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.x)) + vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_110 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec3<f32> = u_xlat4;
  let x_117 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_112.z, x_112.z)) + vec2<f32>(x_115.x, x_115.y));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_117.x, x_117.y, x_118.w);
  let x_121 : f32 = x_43.x_Time.x;
  let x_126 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_121 * 30.0f) + x_126);
  let x_129 : vec4<f32> = u_xlat1;
  let x_133 : vec2<f32> = (vec2<f32>(x_129.x, x_129.z) * vec2<f32>(0.5f, 0.5f));
  let x_134 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_133.x, x_133.y, x_134.z);
  let x_141 : vec3<f32> = u_xlat4;
  let x_143 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_141.x, x_141.y), 0.0f);
  u_xlat4 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_145 : vec3<f32> = u_xlat4;
  let x_148 : vec3<f32> = in_NORMAL0;
  u_xlat4 = (x_145 * x_148);
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = u_xlat4;
  let x_153 : vec3<f32> = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : f32 = x_43.x_Cutoff;
  let x_161 : f32 = x_43.x_Cutoff;
  let x_163 : f32 = x_43.x_Cutoff;
  let x_164 : vec3<f32> = vec3<f32>(x_159, x_161, x_163);
  let x_169 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : f32 = x_43.x_DisplaceAmount;
  let x_178 : f32 = x_43.x_DisplaceAmount;
  let x_180 : f32 = x_43.x_DisplaceAmount;
  let x_181 : vec3<f32> = vec3<f32>(x_176, x_178, x_180);
  let x_187 : vec4<f32> = in_POSITION0;
  let x_189 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_181.x, x_181.y, x_181.z)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_192.y, x_192.y, x_192.y, x_192.y) * x_195);
  let x_198 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_199 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_198 * vec4<f32>(x_199.x, x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_205 * vec4<f32>(x_206.z, x_206.z, x_206.z, x_206.z)) + x_209);
  let x_211 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat1 = (x_211 + x_214);
  let x_217 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_219 : vec4<f32> = in_POSITION0;
  let x_222 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.w, x_219.w, x_219.w)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_232 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_228.y, x_228.y, x_228.y, x_228.y) * x_232);
  let x_235 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_235 * vec4<f32>(x_236.x, x_236.x, x_236.x, x_236.x)) + x_239);
  let x_242 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_243 : vec4<f32> = u_xlat1;
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_242 * vec4<f32>(x_243.z, x_243.z, x_243.z, x_243.z)) + x_246);
  let x_253 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_254 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = u_xlat2;
  gl_Position = ((x_253 * vec4<f32>(x_254.w, x_254.w, x_254.w, x_254.w)) + x_257);
  let x_262 : vec4<f32> = in_TEXCOORD0;
  let x_266 : vec4<f32> = x_43.x_Noise_ST;
  let x_270 : vec4<f32> = x_43.x_Noise_ST;
  let x_272 : vec2<f32> = ((vec2<f32>(x_262.x, x_262.y) * vec2<f32>(x_266.x, x_266.y)) + vec2<f32>(x_270.z, x_270.w));
  let x_273 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_273.w);
  let x_275 : vec4<f32> = in_TEXCOORD0;
  let x_279 : vec4<f32> = x_43.x_MainTex_ST;
  let x_283 : vec4<f32> = x_43.x_MainTex_ST;
  let x_285 : vec2<f32> = ((vec2<f32>(x_275.x, x_275.y) * vec2<f32>(x_279.x, x_279.y)) + vec2<f32>(x_283.z, x_283.w));
  let x_286 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_286.x, x_286.y, x_285.x, x_285.y);
  let x_290 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_290;
  let x_295 : vec4<f32> = in_TANGENT0;
  let x_298 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_300 : vec3<f32> = (vec3<f32>(x_295.y, x_295.y, x_295.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_306 : vec4<f32> = in_TANGENT0;
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.y, x_304.z, x_304.x) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_317 : vec4<f32> = in_TANGENT0;
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.y, x_315.z, x_315.x) * vec3<f32>(x_317.z, x_317.z, x_317.z)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_332 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_332);
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.x, x_335.x) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_344;
  let x_346 : vec3<f32> = in_NORMAL0;
  let x_349 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_346, vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec3<f32> = in_NORMAL0;
  let x_355 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_353, vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec3<f32> = in_NORMAL0;
  let x_361 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_359, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec4<f32> = u_xlat2;
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_372 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_372);
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_375.x, x_375.x, x_375.x, x_375.x) * vec4<f32>(x_377.x, x_377.y, x_377.z, x_377.z));
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.w, x_383.x, x_383.y));
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_386.y, x_386.w, x_386.x) * vec3<f32>(x_388.y, x_388.z, x_388.x)) + -(x_391));
  let x_396 : f32 = in_TANGENT0.w;
  let x_399 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat0.x = (x_396 * x_399);
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_402.x, x_402.x, x_402.x) * x_404);
  let x_407 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_407;
  let x_410 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_410;
  let x_414 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_414;
  let x_418 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_418;
  let x_421 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_421;
  let x_424 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_424;
  let x_427 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_427;
  let x_430 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_430;
  let x_433 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_433;
  let x_436 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_436;
  let x_439 : f32 = u_xlat2.y;
  let x_441 : f32 = u_xlat2.y;
  u_xlat0.x = (x_439 * x_441);
  let x_445 : f32 = u_xlat2.x;
  let x_447 : f32 = u_xlat2.x;
  let x_450 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_445 * x_447) + -(x_450));
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_454.y, x_454.w, x_454.z, x_454.x) * x_456);
  let x_459 : vec4<f32> = x_43.unity_SHBr;
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_459, x_460);
  let x_464 : vec4<f32> = x_43.unity_SHBg;
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_464, x_465);
  let x_469 : vec4<f32> = x_43.unity_SHBb;
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_469, x_470);
  let x_477 : vec4<f32> = x_43.unity_SHC;
  let x_479 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.x, x_479.x)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

