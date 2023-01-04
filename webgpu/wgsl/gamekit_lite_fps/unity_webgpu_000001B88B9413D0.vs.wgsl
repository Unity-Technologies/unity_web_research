struct VGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
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

@group(0) @binding(12) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_43 : VGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  let x_109 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_111 : vec4<f32> = in_POSITION0;
  let x_114 : vec3<f32> = u_xlat4;
  let x_116 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_111.z, x_111.z)) + vec2<f32>(x_114.x, x_114.y));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_116.x, x_116.y, x_117.w);
  let x_120 : f32 = x_43.x_Time.x;
  let x_125 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_120 * 30.0f) + x_125);
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec2<f32> = (vec2<f32>(x_128.x, x_128.z) * vec2<f32>(0.5f, 0.5f));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_140 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_140.x, x_140.y), 0.0f);
  u_xlat4 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat4;
  let x_147 : vec3<f32> = in_NORMAL0;
  u_xlat4 = (x_144 * x_147);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat4;
  let x_152 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * x_151);
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : f32 = x_43.x_Cutoff;
  let x_160 : f32 = x_43.x_Cutoff;
  let x_162 : f32 = x_43.x_Cutoff;
  let x_163 : vec3<f32> = vec3<f32>(x_158, x_160, x_162);
  let x_168 : vec3<f32> = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec4<f32> = u_xlat0;
  let x_175 : f32 = x_43.x_DisplaceAmount;
  let x_177 : f32 = x_43.x_DisplaceAmount;
  let x_179 : f32 = x_43.x_DisplaceAmount;
  let x_180 : vec3<f32> = vec3<f32>(x_175, x_177, x_179);
  let x_186 : vec4<f32> = in_POSITION0;
  let x_188 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_191.y, x_191.y, x_191.y, x_191.y) * x_194);
  let x_197 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_198 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_197 * vec4<f32>(x_198.x, x_198.x, x_198.x, x_198.x)) + x_201);
  let x_204 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_205 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat1 = (x_210 + x_213);
  let x_218 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_220 : vec4<f32> = in_POSITION0;
  let x_223 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat1;
  let x_230 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_226.y, x_226.y, x_226.y, x_226.y) * x_230);
  let x_233 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_234 : vec4<f32> = u_xlat1;
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_240 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_241 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_240 * vec4<f32>(x_241.z, x_241.z, x_241.z, x_241.z)) + x_244);
  let x_247 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_248 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_247 * vec4<f32>(x_248.w, x_248.w, x_248.w, x_248.w)) + x_251);
  let x_257 : vec4<f32> = u_xlat0;
  gl_Position = x_257;
  let x_261 : vec4<f32> = in_TEXCOORD0;
  let x_265 : vec4<f32> = x_43.x_Noise_ST;
  let x_269 : vec4<f32> = x_43.x_Noise_ST;
  let x_271 : vec2<f32> = ((vec2<f32>(x_261.x, x_261.y) * vec2<f32>(x_265.x, x_265.y)) + vec2<f32>(x_269.z, x_269.w));
  let x_272 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_274 : vec4<f32> = in_TEXCOORD0;
  let x_278 : vec4<f32> = x_43.x_MainTex_ST;
  let x_282 : vec4<f32> = x_43.x_MainTex_ST;
  let x_284 : vec2<f32> = ((vec2<f32>(x_274.x, x_274.y) * vec2<f32>(x_278.x, x_278.y)) + vec2<f32>(x_282.z, x_282.w));
  let x_285 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_285.x, x_285.y, x_284.x, x_284.y);
  let x_287 : vec3<f32> = in_NORMAL0;
  let x_289 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_287, vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_295 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_293, vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_300 : vec3<f32> = in_NORMAL0;
  let x_302 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_300, vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_312);
  let x_314 : f32 = u_xlat13;
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : vec4<f32> = in_TANGENT0;
  let x_326 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_323.y, x_323.y, x_323.y) * vec3<f32>(x_326.y, x_326.z, x_326.x));
  let x_330 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_332 : vec4<f32> = in_TANGENT0;
  let x_335 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_330.y, x_330.z, x_330.x) * vec3<f32>(x_332.x, x_332.x, x_332.x)) + x_335);
  let x_338 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_340 : vec4<f32> = in_TANGENT0;
  let x_343 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_338.y, x_338.z, x_338.x) * vec3<f32>(x_340.z, x_340.z, x_340.z)) + x_343);
  let x_345 : vec3<f32> = u_xlat2;
  let x_346 : vec3<f32> = u_xlat2;
  u_xlat13 = dot(x_345, x_346);
  let x_348 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_348);
  let x_350 : f32 = u_xlat13;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_350, x_350, x_350) * x_352);
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_355.x, x_355.y, x_355.z) * x_357);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = u_xlat2;
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_359.z, x_359.x, x_359.y) * vec3<f32>(x_361.y, x_361.z, x_361.x)) + -(x_364));
  let x_370 : f32 = in_TANGENT0.w;
  let x_373 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat13 = (x_370 * x_373);
  let x_375 : f32 = u_xlat13;
  let x_377 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_375, x_375, x_375) * x_377);
  let x_381 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_381;
  let x_385 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_385;
  let x_388 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_388;
  let x_392 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_392;
  let x_396 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_396;
  let x_399 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_399;
  let x_402 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_402;
  let x_405 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_405;
  let x_408 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_408;
  let x_411 : f32 = u_xlat0.y;
  let x_413 : f32 = x_43.x_ProjectionParams.x;
  u_xlat0.y = (x_411 * x_413);
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = (vec3<f32>(x_416.x, x_416.w, x_416.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_419.x, x_420.y, x_419.y, x_419.z);
  let x_423 : vec4<f32> = u_xlat0;
  let x_424 : vec2<f32> = vec2<f32>(x_423.z, x_423.w);
  let x_425 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_425.x, x_425.y, x_424.x, x_424.y);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec2<f32> = (vec2<f32>(x_427.z, x_427.z) + vec2<f32>(x_429.x, x_429.w));
  let x_432 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

