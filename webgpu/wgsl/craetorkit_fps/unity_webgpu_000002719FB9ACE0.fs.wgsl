struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_469 : f32;
  var x_481 : f32;
  var x_493 : f32;
  var x_550 : f32;
  var x_563 : f32;
  var x_575 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_129 : vec2<f32> = vs_TEXCOORD0;
  let x_130 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_139 : i32 = u_xlati_loop_1;
    let x_140 : i32 = u_xlati21;
    if ((x_139 < x_140)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_144);
    let x_148 : f32 = u_xlat6.x;
    u_xlat6.x = (x_148 + 0.5f);
    let x_152 : f32 = u_xlat6.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_157 : vec3<f32> = u_xlat8;
    let x_158 : vec2<f32> = vec2<f32>(x_157.x, x_157.y);
    let x_159 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat6;
    let x_165 : vec2<f32> = clamp(vec2<f32>(x_161.x, x_161.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_166 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
    let x_168 : vec4<f32> = u_xlat6;
    let x_171 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_173 : vec2<f32> = (vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_171, x_171));
    let x_174 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
    let x_181 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_181.x, x_181.y), 0.0f);
    u_xlat6 = x_183;
    let x_189 : vec3<f32> = u_xlat2;
    let x_191 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_189.x, x_189.y), 0.0f);
    let x_192 : vec3<f32> = vec3<f32>(x_191.x, x_191.y, x_191.z);
    let x_193 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = u_xlat3;
    let x_198 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_195 * x_196) + x_198);
    let x_200 : vec4<f32> = u_xlat3;
    let x_201 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_200 + x_201);
    let x_203 : vec2<f32> = u_xlat7;
    let x_204 : vec3<f32> = u_xlat8;
    let x_206 : vec2<f32> = (x_203 + vec2<f32>(x_204.x, x_204.y));
    let x_207 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_206.x, x_206.y, x_207.z);

    continuing {
      let x_209 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_209 + 1i);
    }
  }
  let x_212 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_212 / x_213);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_225 : f32 = x_51.x_PostExposure;
  let x_227 : f32 = x_51.x_PostExposure;
  let x_229 : f32 = x_51.x_PostExposure;
  let x_231 : f32 = x_51.x_PostExposure;
  let x_232 : vec4<f32> = vec4<f32>(x_225, x_227, x_229, x_231);
  u_xlat0 = (x_222 * vec4<f32>(x_232.x, x_232.y, x_232.z, x_232.w));
  let x_239 : vec4<f32> = u_xlat0;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.z, x_239.x, x_239.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = log2(vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = clamp(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_278 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_276.z, x_276.z, x_276.z));
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_282);
  let x_286 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_288 : vec2<f32> = (vec2<f32>(x_286.x, x_286.y) * vec2<f32>(0.5f, 0.5f));
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_288.x, x_289.y, x_289.z, x_288.y);
  let x_291 : vec4<f32> = u_xlat1;
  let x_294 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec2<f32> = ((vec2<f32>(x_291.y, x_291.z) * vec2<f32>(x_294.x, x_294.y)) + vec2<f32>(x_297.x, x_297.w));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_299.x, x_299.y, x_300.w);
  let x_303 : f32 = u_xlat7.x;
  let x_305 : f32 = x_51.x_Lut2D_Params.y;
  let x_308 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_303 * x_305) + x_308);
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_316.x, x_316.z));
  let x_319 : vec3<f32> = vec3<f32>(x_318.x, x_318.y, x_318.z);
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_323;
  let x_325 : vec2<f32> = u_xlat16;
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec2<f32> = (x_325 + vec2<f32>(x_326.x, x_326.z));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_334.x, x_334.y));
  let x_337 : vec3<f32> = vec3<f32>(x_336.x, x_336.y, x_336.z);
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat0.x;
  let x_343 : f32 = x_51.x_Lut2D_Params.z;
  let x_346 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_341 * x_343) + -(x_346));
  let x_350 : vec4<f32> = u_xlat3;
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = (-(vec3<f32>(x_350.x, x_350.y, x_350.z)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat3;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.x, x_358.x) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec2<f32> = vs_TEXCOORD0;
  let x_370 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_374 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_376 : vec2<f32> = ((x_368 * vec2<f32>(x_370.x, x_370.y)) + vec2<f32>(x_374.z, x_374.w));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_384.x, x_384.y));
  u_xlat1.x = x_386.w;
  let x_390 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_390 * 2.0f) + -1.0f);
  let x_395 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_395 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_401 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_401, 0.0f, 1.0f);
  let x_405 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_405 * 2.0f) + -1.0f);
  let x_410 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_410)) + 1.0f);
  let x_416 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_416);
  let x_420 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_420) + 1.0f);
  let x_425 : f32 = u_xlat1.x;
  let x_427 : f32 = u_xlat8.x;
  u_xlat1.x = (x_425 * x_427);
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_435.x, x_435.y, x_435.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_441);
  let x_443 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_443 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_447 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_447);
  let x_449 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_449 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_461 : vec4<f32> = u_xlat0;
  let x_464 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_461.x, x_461.y, x_461.z, x_461.x));
  u_xlatb0 = vec3<bool>(x_464.x, x_464.y, x_464.z);
  let x_468 : bool = u_xlatb0.x;
  if (x_468) {
    let x_473 : f32 = u_xlat8.x;
    x_469 = x_473;
  } else {
    let x_476 : f32 = u_xlat2.x;
    x_469 = x_476;
  }
  let x_477 : f32 = x_469;
  u_xlat0.x = x_477;
  let x_480 : bool = u_xlatb0.y;
  if (x_480) {
    let x_485 : f32 = u_xlat8.y;
    x_481 = x_485;
  } else {
    let x_488 : f32 = u_xlat2.y;
    x_481 = x_488;
  }
  let x_489 : f32 = x_481;
  u_xlat0.y = x_489;
  let x_492 : bool = u_xlatb0.z;
  if (x_492) {
    let x_497 : f32 = u_xlat8.z;
    x_493 = x_497;
  } else {
    let x_500 : f32 = u_xlat2.z;
    x_493 = x_500;
  }
  let x_501 : f32 = x_493;
  u_xlat0.z = x_501;
  let x_503 : vec4<f32> = u_xlat1;
  let x_508 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.x, x_503.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_520.x, x_520.y, x_520.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_525 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_525 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_529 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_529), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_532);
  let x_534 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_534 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_538 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_538);
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_542.x, x_542.y, x_542.z, x_542.x));
  u_xlatb0 = vec3<bool>(x_544.x, x_544.y, x_544.z);
  let x_549 : bool = u_xlatb0.x;
  if (x_549) {
    let x_554 : f32 = u_xlat1.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = u_xlat2.x;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  SV_Target0.x = x_558;
  let x_562 : bool = u_xlatb0.y;
  if (x_562) {
    let x_567 : f32 = u_xlat1.y;
    x_563 = x_567;
  } else {
    let x_570 : f32 = u_xlat2.y;
    x_563 = x_570;
  }
  let x_571 : f32 = x_563;
  SV_Target0.y = x_571;
  let x_574 : bool = u_xlatb0.z;
  if (x_574) {
    let x_579 : f32 = u_xlat1.z;
    x_575 = x_579;
  } else {
    let x_582 : f32 = u_xlat2.z;
    x_575 = x_582;
  }
  let x_583 : f32 = x_575;
  SV_Target0.z = x_583;
  let x_586 : f32 = u_xlat0.w;
  SV_Target0.w = x_586;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

