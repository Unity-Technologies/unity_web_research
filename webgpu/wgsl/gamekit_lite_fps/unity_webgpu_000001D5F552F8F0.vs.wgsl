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

@group(0) @binding(19) var x_Gradient : texture_2d<f32>;

@group(0) @binding(20) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(18) var<uniform> x_43 : VGlobals;

var<private> u_xlat5 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_109 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_111 : vec4<f32> = in_POSITION0;
  let x_114 : vec3<f32> = u_xlat5;
  let x_116 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_111.z, x_111.z)) + vec2<f32>(x_114.x, x_114.y));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_116.x, x_116.y, x_117.w);
  let x_120 : f32 = x_43.x_Time.x;
  let x_125 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_120 * 30.0f) + x_125);
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec2<f32> = (vec2<f32>(x_128.x, x_128.z) * vec2<f32>(0.5f, 0.5f));
  let x_133 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_140 : vec3<f32> = u_xlat5;
  let x_142 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_140.x, x_140.y), 0.0f);
  u_xlat5 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat5;
  let x_147 : vec3<f32> = in_NORMAL0;
  u_xlat5 = (x_144 * x_147);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat5;
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
  let x_216 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_218 : vec4<f32> = in_POSITION0;
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.w, x_218.w, x_218.w)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_227.y, x_227.y, x_227.y, x_227.y) * x_231);
  let x_234 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_241 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_241 * vec4<f32>(x_242.z, x_242.z, x_242.z, x_242.z)) + x_245);
  let x_248 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_249 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_248 * vec4<f32>(x_249.w, x_249.w, x_249.w, x_249.w)) + x_252);
  let x_258 : vec4<f32> = u_xlat1;
  gl_Position = x_258;
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
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_296 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_294, vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : vec3<f32> = in_NORMAL0;
  let x_302 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_300, vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : vec3<f32> = in_NORMAL0;
  let x_309 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_307, vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat2;
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_320 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_320);
  let x_323 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_332 : vec4<f32> = in_TANGENT0;
  let x_335 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_332.y, x_332.y, x_332.y) * vec3<f32>(x_335.y, x_335.z, x_335.x));
  let x_339 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_341 : vec4<f32> = in_TANGENT0;
  let x_344 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_339.y, x_339.z, x_339.x) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + x_344);
  let x_347 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_349 : vec4<f32> = in_TANGENT0;
  let x_352 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_347.y, x_347.z, x_347.x) * vec3<f32>(x_349.z, x_349.z, x_349.z)) + x_352);
  let x_354 : vec3<f32> = u_xlat3;
  let x_355 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_359);
  let x_362 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_367.x, x_367.y, x_367.z) * x_369);
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec3<f32> = u_xlat3;
  let x_376 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_371.z, x_371.x, x_371.y) * vec3<f32>(x_373.y, x_373.z, x_373.x)) + -(x_376));
  let x_381 : f32 = in_TANGENT0.w;
  let x_384 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat0.x = (x_381 * x_384);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_387.x, x_387.x, x_387.x) * x_389);
  let x_392 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_392;
  let x_395 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_395;
  let x_398 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_398;
  let x_402 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_402;
  let x_406 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_406;
  let x_409 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_409;
  let x_412 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_412;
  let x_415 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_415;
  let x_418 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_418;
  let x_421 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_421;
  let x_424 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_424;
  let x_427 : f32 = u_xlat1.y;
  let x_429 : f32 = x_43.x_ProjectionParams.x;
  u_xlat0.x = (x_427 * x_429);
  let x_433 : f32 = u_xlat0.x;
  u_xlat0.w = (x_433 * 0.5f);
  let x_436 : vec4<f32> = u_xlat1;
  let x_438 : vec2<f32> = (vec2<f32>(x_436.x, x_436.w) * vec2<f32>(0.5f, 0.5f));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_439.y, x_438.y, x_439.w);
  let x_442 : vec4<f32> = u_xlat1;
  let x_443 : vec2<f32> = vec2<f32>(x_442.z, x_442.w);
  let x_444 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_444.x, x_444.y, x_443.x, x_443.y);
  let x_446 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec2<f32> = (vec2<f32>(x_446.z, x_446.z) + vec2<f32>(x_448.x, x_448.w));
  let x_451 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
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
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

