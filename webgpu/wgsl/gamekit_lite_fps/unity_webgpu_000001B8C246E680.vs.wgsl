struct VGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(16) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(20) var<uniform> x_43 : VGlobals;

var<private> u_xlat5 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(15) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

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
  u_xlat5.x = ((x_65 * -2.0f) + 3.0f);
  let x_72 : f32 = u_xlat0.x;
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = (x_72 * x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_80 : f32 = u_xlat5.x;
  u_xlat0.x = (x_78 * x_80);
  let x_84 : vec4<f32> = in_POSITION0;
  let x_90 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_92 : vec2<f32> = (vec2<f32>(x_84.y, x_84.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_92.x, x_92.y, x_93.z);
  let x_97 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_99 : vec4<f32> = in_POSITION0;
  let x_102 : vec3<f32> = u_xlat5;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.x)) + vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_110 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec3<f32> = u_xlat5;
  let x_117 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_112.z, x_112.z)) + vec2<f32>(x_115.x, x_115.y));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_117.x, x_117.y, x_118.w);
  let x_121 : f32 = x_43.x_Time.x;
  let x_126 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_121 * 30.0f) + x_126);
  let x_129 : vec4<f32> = u_xlat1;
  let x_133 : vec2<f32> = (vec2<f32>(x_129.x, x_129.z) * vec2<f32>(0.5f, 0.5f));
  let x_134 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_133.x, x_133.y, x_134.z);
  let x_141 : vec3<f32> = u_xlat5;
  let x_143 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_141.x, x_141.y), 0.0f);
  u_xlat5 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_145 : vec3<f32> = u_xlat5;
  let x_148 : vec3<f32> = in_NORMAL0;
  u_xlat5 = (x_145 * x_148);
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = u_xlat5;
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
  let x_249 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_250 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_249 * vec4<f32>(x_250.w, x_250.w, x_250.w, x_250.w)) + x_253);
  let x_259 : vec4<f32> = u_xlat1;
  gl_Position = x_259;
  let x_263 : vec4<f32> = in_TEXCOORD0;
  let x_267 : vec4<f32> = x_43.x_Noise_ST;
  let x_271 : vec4<f32> = x_43.x_Noise_ST;
  let x_273 : vec2<f32> = ((vec2<f32>(x_263.x, x_263.y) * vec2<f32>(x_267.x, x_267.y)) + vec2<f32>(x_271.z, x_271.w));
  let x_274 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_276 : vec4<f32> = in_TEXCOORD0;
  let x_280 : vec4<f32> = x_43.x_MainTex_ST;
  let x_284 : vec4<f32> = x_43.x_MainTex_ST;
  let x_286 : vec2<f32> = ((vec2<f32>(x_276.x, x_276.y) * vec2<f32>(x_280.x, x_280.y)) + vec2<f32>(x_284.z, x_284.w));
  let x_287 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_287.x, x_287.y, x_286.x, x_286.y);
  let x_291 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_291;
  let x_296 : vec4<f32> = in_TANGENT0;
  let x_299 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_301 : vec3<f32> = (vec3<f32>(x_296.y, x_296.y, x_296.y) * vec3<f32>(x_299.y, x_299.z, x_299.x));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_307 : vec4<f32> = in_TANGENT0;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.y, x_305.z, x_305.x) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_318 : vec4<f32> = in_TANGENT0;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.y, x_316.z, x_316.x) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat2;
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_333);
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_345;
  let x_348 : vec3<f32> = in_NORMAL0;
  let x_351 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_348, vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_355 : vec3<f32> = in_NORMAL0;
  let x_357 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_355, vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_361 : vec3<f32> = in_NORMAL0;
  let x_363 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_361, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_374 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_374);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_377.x, x_377.x, x_377.x, x_377.x) * vec4<f32>(x_379.x, x_379.y, x_379.z, x_379.z));
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385.w, x_385.x, x_385.y));
  let x_388 : vec4<f32> = u_xlat3;
  let x_390 : vec4<f32> = u_xlat2;
  let x_393 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_388.y, x_388.w, x_388.x) * vec3<f32>(x_390.y, x_390.z, x_390.x)) + -(x_393));
  let x_398 : f32 = in_TANGENT0.w;
  let x_401 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat0.x = (x_398 * x_401);
  let x_404 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_404.x, x_404.x, x_404.x) * x_406);
  let x_409 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_409;
  let x_412 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_412;
  let x_416 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_416;
  let x_420 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_420;
  let x_423 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_423;
  let x_426 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_426;
  let x_429 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_429;
  let x_432 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_432;
  let x_435 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_435;
  let x_438 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_438;
  let x_441 : f32 = u_xlat3.y;
  let x_443 : f32 = u_xlat3.y;
  u_xlat0.x = (x_441 * x_443);
  let x_447 : f32 = u_xlat3.x;
  let x_449 : f32 = u_xlat3.x;
  let x_452 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_447 * x_449) + -(x_452));
  let x_456 : vec4<f32> = u_xlat3;
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_456.y, x_456.w, x_456.z, x_456.x) * x_458);
  let x_461 : vec4<f32> = x_43.unity_SHBr;
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_461, x_462);
  let x_466 : vec4<f32> = x_43.unity_SHBg;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_43.unity_SHBb;
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_472, x_473);
  let x_480 : vec4<f32> = x_43.unity_SHC;
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.x, x_482.x, x_482.x)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_489 : f32 = u_xlat1.y;
  let x_491 : f32 = x_43.x_ProjectionParams.x;
  u_xlat0.x = (x_489 * x_491);
  let x_495 : f32 = u_xlat0.x;
  u_xlat0.w = (x_495 * 0.5f);
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : vec2<f32> = (vec2<f32>(x_498.x, x_498.w) * vec2<f32>(0.5f, 0.5f));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_501.y, x_500.y, x_501.w);
  let x_504 : vec4<f32> = u_xlat1;
  let x_505 : vec2<f32> = vec2<f32>(x_504.z, x_504.w);
  let x_506 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_506.x, x_506.y, x_505.x, x_505.y);
  let x_508 : vec4<f32> = u_xlat0;
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : vec2<f32> = (vec2<f32>(x_508.z, x_508.z) + vec2<f32>(x_510.x, x_510.w));
  let x_513 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
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
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

