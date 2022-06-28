struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_371 : f32;
  var x_383 : f32;
  var x_395 : f32;
  var x_536 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat7;
  let x_44 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat21;
  let x_49 : vec3<f32> = u_xlat7;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat7;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat7;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_107 : i32 = u_xlati21;
  u_xlati21 = min(x_107, 16i);
  let x_110 : i32 = u_xlati21;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat7;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_144;
  u_xlati_loop_1 = 0i;
  loop {
    let x_153 : i32 = u_xlati_loop_1;
    let x_154 : i32 = u_xlati21;
    if ((x_153 < x_154)) {
    } else {
      break;
    }
    let x_158 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_158);
    let x_162 : f32 = u_xlat6.x;
    u_xlat6.x = (x_162 + 0.5f);
    let x_166 : f32 = u_xlat6.x;
    let x_168 : f32 = u_xlat1.x;
    u_xlat2.x = (x_166 / x_168);
    let x_171 : vec2<f32> = u_xlat8;
    let x_172 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat6;
    let x_178 : vec2<f32> = clamp(vec2<f32>(x_174.x, x_174.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_179 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
    let x_181 : vec4<f32> = u_xlat6;
    let x_184 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_186 : vec2<f32> = (vec2<f32>(x_181.x, x_181.y) * vec2<f32>(x_184, x_184));
    let x_187 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_194.x, x_194.y), 0.0f);
    u_xlat6 = x_196;
    let x_202 : vec3<f32> = u_xlat2;
    let x_204 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_202.x, x_202.y), 0.0f);
    let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
    let x_206 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat6;
    let x_209 : vec4<f32> = u_xlat3;
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_208 * x_209) + x_211);
    let x_213 : vec4<f32> = u_xlat3;
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_213 + x_214);
    let x_216 : vec3<f32> = u_xlat7;
    let x_218 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_216.x, x_216.y) + x_218);

    continuing {
      let x_220 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_220 + 1i);
    }
  }
  let x_222 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_222 / x_223);
  let x_225 : vec3<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec2<f32> = vs_TEXCOORD1;
  let x_234 : vec4<f32> = x_58.x_Grain_Params2;
  let x_238 : vec4<f32> = x_58.x_Grain_Params2;
  let x_240 : vec2<f32> = ((x_231 * vec2<f32>(x_234.x, x_234.y)) + vec2<f32>(x_238.z, x_238.w));
  let x_241 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_240.x, x_240.y, x_241.z);
  let x_248 : vec3<f32> = u_xlat2;
  let x_250 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_248.x, x_248.y));
  let x_251 : vec3<f32> = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = clamp(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_271 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_271);
  let x_275 : f32 = x_58.x_Grain_Params1.x;
  let x_276 : f32 = u_xlat21;
  u_xlat21 = ((x_275 * -(x_276)) + 1.0f);
  let x_280 : vec3<f32> = u_xlat0;
  let x_281 : vec4<f32> = u_xlat3;
  let x_283 : vec3<f32> = (x_280 * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat3;
  let x_289 : f32 = x_58.x_Grain_Params1.y;
  let x_291 : f32 = x_58.x_Grain_Params1.y;
  let x_293 : f32 = x_58.x_Grain_Params1.y;
  let x_295 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(x_289, x_291, x_293));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : f32 = u_xlat21;
  let x_303 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300, x_300, x_300)) + x_303);
  let x_305 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_305, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_310 : f32 = u_xlat1.w;
  u_xlat1.w = x_310;
  let x_313 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_313, 0.0f, 1.0f);
  let x_316 : vec3<f32> = u_xlat0;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.z, x_316.x, x_316.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat0;
  let x_327 : vec3<f32> = max(vec3<f32>(x_323.z, x_323.x, x_323.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec3<f32> = log2(vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec3<f32> = exp2(vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_354 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_362 : vec3<f32> = u_xlat0;
  let x_365 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_362.z, x_362.x, x_362.y, x_362.z));
  u_xlatb0 = vec3<bool>(x_365.x, x_365.y, x_365.z);
  let x_369 : bool = u_xlatb0.x;
  if (x_369) {
    let x_375 : f32 = u_xlat3.x;
    x_371 = x_375;
  } else {
    let x_378 : f32 = u_xlat4.x;
    x_371 = x_378;
  }
  let x_379 : f32 = x_371;
  u_xlat0.x = x_379;
  let x_382 : bool = u_xlatb0.y;
  if (x_382) {
    let x_387 : f32 = u_xlat3.y;
    x_383 = x_387;
  } else {
    let x_390 : f32 = u_xlat4.y;
    x_383 = x_390;
  }
  let x_391 : f32 = x_383;
  u_xlat0.y = x_391;
  let x_394 : bool = u_xlatb0.z;
  if (x_394) {
    let x_399 : f32 = u_xlat3.z;
    x_395 = x_399;
  } else {
    let x_402 : f32 = u_xlat4.z;
    x_395 = x_402;
  }
  let x_403 : f32 = x_395;
  u_xlat0.z = x_403;
  let x_405 : vec3<f32> = u_xlat0;
  let x_408 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_405 * vec3<f32>(x_408.z, x_408.z, x_408.z));
  let x_412 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_412);
  let x_416 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_418 : vec2<f32> = (vec2<f32>(x_416.x, x_416.y) * vec2<f32>(0.5f, 0.5f));
  let x_419 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_418.x, x_418.y, x_419.z);
  let x_421 : vec3<f32> = u_xlat7;
  let x_424 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_427 : vec3<f32> = u_xlat2;
  let x_429 : vec2<f32> = ((vec2<f32>(x_421.y, x_421.z) * vec2<f32>(x_424.x, x_424.y)) + vec2<f32>(x_427.x, x_427.y));
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_429.x, x_429.y, x_430.w);
  let x_433 : f32 = u_xlat7.x;
  let x_435 : f32 = x_58.x_Lut2D_Params.y;
  let x_438 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_433 * x_435) + x_438);
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_446.x, x_446.z));
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_453;
  let x_456 : vec2<f32> = u_xlat16;
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_456 + vec2<f32>(x_457.x, x_457.z));
  let x_463 : vec2<f32> = u_xlat14;
  let x_464 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_463);
  u_xlat2 = vec3<f32>(x_464.x, x_464.y, x_464.z);
  let x_467 : f32 = u_xlat0.x;
  let x_469 : f32 = x_58.x_Lut2D_Params.z;
  let x_472 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_467 * x_469) + -(x_472));
  let x_476 : vec4<f32> = u_xlat4;
  let x_479 : vec3<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_476.x, x_476.y, x_476.z)) + x_479);
  let x_481 : vec3<f32> = u_xlat0;
  let x_483 : vec3<f32> = u_xlat7;
  let x_485 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_481.x, x_481.x, x_481.x) * x_483) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_488 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_492 : vec3<f32> = u_xlat0;
  let x_495 : vec3<f32> = (x_492 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat3;
  let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat3;
  let x_508 : vec3<f32> = max(abs(vec3<f32>(x_505.x, x_505.y, x_505.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec3<f32> = log2(vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat3;
  let x_520 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = exp2(vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_530 : vec3<f32> = u_xlat0;
  let x_532 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.x));
  u_xlatb0 = vec3<bool>(x_532.x, x_532.y, x_532.z);
  let x_535 : bool = u_xlatb0.x;
  if (x_535) {
    let x_540 : f32 = u_xlat2.x;
    x_536 = x_540;
  } else {
    let x_543 : f32 = u_xlat3.x;
    x_536 = x_543;
  }
  let x_544 : f32 = x_536;
  u_xlat1.x = x_544;
  let x_547 : bool = u_xlatb0.y;
  if (x_547) {
    let x_552 : f32 = u_xlat2.y;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat3.y;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat1.y = x_556;
  let x_559 : bool = u_xlatb0.z;
  if (x_559) {
    let x_564 : f32 = u_xlat2.z;
    x_560 = x_564;
  } else {
    let x_567 : f32 = u_xlat3.z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat1.z = x_568;
  let x_572 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_572);
  let x_576 : bool = u_xlatb0.x;
  if (x_576) {
    let x_579 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_579.x, x_579.y, x_579.z);
    let x_581 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_581, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_585 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_585, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_590 : vec4<f32> = u_xlat1;
  SV_Target0 = x_590;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

