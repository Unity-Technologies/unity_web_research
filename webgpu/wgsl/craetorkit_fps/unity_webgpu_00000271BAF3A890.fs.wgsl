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

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_369 : f32;
  var x_381 : f32;
  var x_393 : f32;
  var u_xlat14 : vec2<f32>;
  var x_534 : f32;
  var x_546 : f32;
  var x_558 : f32;
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
    let x_152 : i32 = u_xlati_loop_1;
    let x_153 : i32 = u_xlati21;
    if ((x_152 < x_153)) {
    } else {
      break;
    }
    let x_157 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_157);
    let x_161 : f32 = u_xlat6.x;
    u_xlat6.x = (x_161 + 0.5f);
    let x_165 : f32 = u_xlat6.x;
    let x_167 : f32 = u_xlat1.x;
    u_xlat2.x = (x_165 / x_167);
    let x_170 : vec2<f32> = u_xlat8;
    let x_171 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat6;
    let x_177 : vec2<f32> = clamp(vec2<f32>(x_173.x, x_173.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_178 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat6;
    let x_183 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_185 : vec2<f32> = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_183, x_183));
    let x_186 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
    let x_193 : vec4<f32> = u_xlat6;
    let x_195 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_193.x, x_193.y), 0.0f);
    u_xlat6 = x_195;
    let x_201 : vec3<f32> = u_xlat2;
    let x_203 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_201.x, x_201.y), 0.0f);
    let x_204 : vec3<f32> = vec3<f32>(x_203.x, x_203.y, x_203.z);
    let x_205 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat6;
    let x_208 : vec4<f32> = u_xlat3;
    let x_210 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_207 * x_208) + x_210);
    let x_212 : vec4<f32> = u_xlat3;
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_212 + x_213);
    let x_215 : vec3<f32> = u_xlat7;
    let x_217 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_215.x, x_215.y) + x_217);

    continuing {
      let x_219 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_219 + 1i);
    }
  }
  let x_221 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_221 / x_222);
  let x_224 : vec3<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec2<f32> = vs_TEXCOORD1;
  let x_233 : vec4<f32> = x_58.x_Grain_Params2;
  let x_237 : vec4<f32> = x_58.x_Grain_Params2;
  let x_239 : vec2<f32> = ((x_230 * vec2<f32>(x_233.x, x_233.y)) + vec2<f32>(x_237.z, x_237.w));
  let x_240 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_247 : vec3<f32> = u_xlat2;
  let x_249 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_247.x, x_247.y));
  let x_250 : vec3<f32> = vec3<f32>(x_249.x, x_249.y, x_249.z);
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec3<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat4;
  let x_260 : vec3<f32> = clamp(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_270 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_270);
  let x_274 : f32 = x_58.x_Grain_Params1.x;
  let x_275 : f32 = u_xlat21;
  u_xlat21 = ((x_274 * -(x_275)) + 1.0f);
  let x_279 : vec3<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = (x_279 * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat3;
  let x_288 : f32 = x_58.x_Grain_Params1.y;
  let x_290 : f32 = x_58.x_Grain_Params1.y;
  let x_292 : f32 = x_58.x_Grain_Params1.y;
  let x_294 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_288, x_290, x_292));
  let x_295 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : f32 = u_xlat21;
  let x_302 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299, x_299, x_299)) + x_302);
  let x_304 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_304, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_309 : f32 = u_xlat1.w;
  u_xlat1.w = x_309;
  let x_312 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_312, 0.0f, 1.0f);
  let x_315 : vec3<f32> = u_xlat0;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.z, x_315.x, x_315.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat0;
  let x_326 : vec3<f32> = max(vec3<f32>(x_322.z, x_322.x, x_322.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec3<f32> = log2(vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = exp2(vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat4;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_361 : vec3<f32> = u_xlat0;
  let x_364 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_361.z, x_361.x, x_361.y, x_361.z));
  u_xlatb0 = vec3<bool>(x_364.x, x_364.y, x_364.z);
  let x_368 : bool = u_xlatb0.x;
  if (x_368) {
    let x_373 : f32 = u_xlat3.x;
    x_369 = x_373;
  } else {
    let x_376 : f32 = u_xlat4.x;
    x_369 = x_376;
  }
  let x_377 : f32 = x_369;
  u_xlat0.x = x_377;
  let x_380 : bool = u_xlatb0.y;
  if (x_380) {
    let x_385 : f32 = u_xlat3.y;
    x_381 = x_385;
  } else {
    let x_388 : f32 = u_xlat4.y;
    x_381 = x_388;
  }
  let x_389 : f32 = x_381;
  u_xlat0.y = x_389;
  let x_392 : bool = u_xlatb0.z;
  if (x_392) {
    let x_397 : f32 = u_xlat3.z;
    x_393 = x_397;
  } else {
    let x_400 : f32 = u_xlat4.z;
    x_393 = x_400;
  }
  let x_401 : f32 = x_393;
  u_xlat0.z = x_401;
  let x_403 : vec3<f32> = u_xlat0;
  let x_406 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_403 * vec3<f32>(x_406.z, x_406.z, x_406.z));
  let x_410 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_410);
  let x_414 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_416 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(0.5f, 0.5f));
  let x_417 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_416.x, x_416.y, x_417.z);
  let x_419 : vec3<f32> = u_xlat7;
  let x_422 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_425 : vec3<f32> = u_xlat2;
  let x_427 : vec2<f32> = ((vec2<f32>(x_419.y, x_419.z) * vec2<f32>(x_422.x, x_422.y)) + vec2<f32>(x_425.x, x_425.y));
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_428.x, x_427.x, x_427.y, x_428.w);
  let x_431 : f32 = u_xlat7.x;
  let x_433 : f32 = x_58.x_Lut2D_Params.y;
  let x_436 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_431 * x_433) + x_436);
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_444.x, x_444.z));
  let x_447 : vec3<f32> = vec3<f32>(x_446.x, x_446.y, x_446.z);
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_451;
  let x_454 : vec2<f32> = u_xlat16;
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_454 + vec2<f32>(x_455.x, x_455.z));
  let x_461 : vec2<f32> = u_xlat14;
  let x_462 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_461);
  u_xlat2 = vec3<f32>(x_462.x, x_462.y, x_462.z);
  let x_465 : f32 = u_xlat0.x;
  let x_467 : f32 = x_58.x_Lut2D_Params.z;
  let x_470 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_465 * x_467) + -(x_470));
  let x_474 : vec4<f32> = u_xlat4;
  let x_477 : vec3<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_474.x, x_474.y, x_474.z)) + x_477);
  let x_479 : vec3<f32> = u_xlat0;
  let x_481 : vec3<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_479.x, x_479.x, x_479.x) * x_481) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_486 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_490 : vec3<f32> = u_xlat0;
  let x_493 : vec3<f32> = (x_490 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_494 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat3;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_501 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat3;
  let x_506 : vec3<f32> = max(abs(vec3<f32>(x_503.x, x_503.y, x_503.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat3;
  let x_511 : vec3<f32> = log2(vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat3;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_519 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat3;
  let x_523 : vec3<f32> = exp2(vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_528 : vec3<f32> = u_xlat0;
  let x_530 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_528.x, x_528.y, x_528.z, x_528.x));
  u_xlatb0 = vec3<bool>(x_530.x, x_530.y, x_530.z);
  let x_533 : bool = u_xlatb0.x;
  if (x_533) {
    let x_538 : f32 = u_xlat2.x;
    x_534 = x_538;
  } else {
    let x_541 : f32 = u_xlat3.x;
    x_534 = x_541;
  }
  let x_542 : f32 = x_534;
  u_xlat1.x = x_542;
  let x_545 : bool = u_xlatb0.y;
  if (x_545) {
    let x_550 : f32 = u_xlat2.y;
    x_546 = x_550;
  } else {
    let x_553 : f32 = u_xlat3.y;
    x_546 = x_553;
  }
  let x_554 : f32 = x_546;
  u_xlat1.y = x_554;
  let x_557 : bool = u_xlatb0.z;
  if (x_557) {
    let x_562 : f32 = u_xlat2.z;
    x_558 = x_562;
  } else {
    let x_565 : f32 = u_xlat3.z;
    x_558 = x_565;
  }
  let x_566 : f32 = x_558;
  u_xlat1.z = x_566;
  let x_570 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_570);
  let x_574 : bool = u_xlatb0.x;
  if (x_574) {
    let x_577 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_577.x, x_577.y, x_577.z);
    let x_579 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_579, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_583 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_583, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_588 : vec4<f32> = u_xlat1;
  SV_Target0 = x_588;
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

