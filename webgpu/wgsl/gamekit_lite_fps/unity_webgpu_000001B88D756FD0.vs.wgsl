struct VGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_43 : VGlobals;

var<private> u_xlat5 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

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
  let x_216 : vec4<f32> = u_xlat1;
  let x_220 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_216.y, x_216.y, x_216.y, x_216.y) * x_220);
  let x_223 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_223 * vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x)) + x_227);
  let x_230 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_231 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_237 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_238 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_237 * vec4<f32>(x_238.w, x_238.w, x_238.w, x_238.w)) + x_241);
  let x_247 : vec4<f32> = u_xlat1;
  gl_Position = x_247;
  let x_251 : vec4<f32> = in_TEXCOORD0;
  let x_255 : vec4<f32> = x_43.x_Noise_ST;
  let x_259 : vec4<f32> = x_43.x_Noise_ST;
  let x_261 : vec2<f32> = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_255.x, x_255.y)) + vec2<f32>(x_259.z, x_259.w));
  let x_262 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
  let x_264 : vec4<f32> = in_TEXCOORD0;
  let x_268 : vec4<f32> = x_43.x_MainTex_ST;
  let x_272 : vec4<f32> = x_43.x_MainTex_ST;
  let x_274 : vec2<f32> = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(x_272.z, x_272.w));
  let x_275 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_275.x, x_275.y, x_274.x, x_274.y);
  let x_277 : vec3<f32> = in_NORMAL0;
  let x_279 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_277, vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_283 : vec3<f32> = in_NORMAL0;
  let x_285 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_283, vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_290 : vec3<f32> = in_NORMAL0;
  let x_292 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_290, vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_302);
  let x_304 : f32 = u_xlat17;
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_313 : vec4<f32> = in_TANGENT0;
  let x_316 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_316.y, x_316.z, x_316.x));
  let x_320 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_322 : vec4<f32> = in_TANGENT0;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_320.y, x_320.z, x_320.x) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + x_325);
  let x_328 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_330 : vec4<f32> = in_TANGENT0;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_328.y, x_328.z, x_328.x) * vec3<f32>(x_330.z, x_330.z, x_330.z)) + x_333);
  let x_335 : vec3<f32> = u_xlat3;
  let x_336 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_335, x_336);
  let x_338 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_338);
  let x_340 : f32 = u_xlat17;
  let x_342 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_340, x_340, x_340) * x_342);
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_345.x, x_345.y, x_345.z) * x_347);
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec3<f32> = u_xlat3;
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_349.z, x_349.x, x_349.y) * vec3<f32>(x_351.y, x_351.z, x_351.x)) + -(x_354));
  let x_360 : f32 = in_TANGENT0.w;
  let x_363 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlat17 = (x_360 * x_363);
  let x_365 : f32 = u_xlat17;
  let x_367 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_365, x_365, x_365) * x_367);
  let x_372 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_372;
  let x_376 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_376;
  let x_379 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_379;
  let x_383 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_383;
  let x_387 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_387;
  let x_390 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_390;
  let x_393 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_393;
  let x_396 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_396;
  let x_399 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_399;
  let x_403 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_405 : vec4<f32> = in_POSITION0;
  let x_408 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.w, x_405.w, x_405.w)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_412 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_413 : vec4<f32> = in_POSITION0;
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_412 * vec4<f32>(x_413.w, x_413.w, x_413.w, x_413.w)) + x_416);
  let x_418 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = x_43.unity_WorldToLight[1i];
  let x_424 : vec2<f32> = (vec2<f32>(x_418.y, x_418.y) * vec2<f32>(x_422.x, x_422.y));
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_428 : vec4<f32> = x_43.unity_WorldToLight[0i];
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec2<f32> = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_430.x, x_430.x)) + vec2<f32>(x_433.x, x_433.y));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_439 : vec4<f32> = x_43.unity_WorldToLight[2i];
  let x_441 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = u_xlat0;
  let x_446 : vec2<f32> = ((vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_441.z, x_441.z)) + vec2<f32>(x_444.x, x_444.y));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_452 : vec4<f32> = x_43.unity_WorldToLight[3i];
  let x_454 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.w, x_454.w)) + vec2<f32>(x_457.x, x_457.y));
  let x_461 : f32 = u_xlat1.y;
  let x_463 : f32 = x_43.x_ProjectionParams.x;
  u_xlat0.x = (x_461 * x_463);
  let x_467 : f32 = u_xlat0.x;
  u_xlat0.w = (x_467 * 0.5f);
  let x_470 : vec4<f32> = u_xlat1;
  let x_472 : vec2<f32> = (vec2<f32>(x_470.x, x_470.w) * vec2<f32>(0.5f, 0.5f));
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
  let x_476 : vec4<f32> = u_xlat1;
  let x_477 : vec2<f32> = vec2<f32>(x_476.z, x_476.w);
  let x_478 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_478.x, x_478.y, x_477.x, x_477.y);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = u_xlat0;
  let x_484 : vec2<f32> = (vec2<f32>(x_480.z, x_480.z) + vec2<f32>(x_482.x, x_482.w));
  let x_485 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  return;
}

struct main_out {
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

