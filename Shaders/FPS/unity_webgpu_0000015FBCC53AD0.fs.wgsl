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
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_294 : f32;
  var x_306 : f32;
  var x_318 : f32;
  var x_448 : f32;
  var x_460 : f32;
  var x_472 : f32;
  var x_554 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var x_620 : f32;
  var x_633 : f32;
  var x_645 : f32;
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
  let x_106 : i32 = u_xlati21;
  u_xlati21 = min(x_106, 16i);
  let x_109 : i32 = u_xlati21;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat7;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_117.x, x_117.y, x_118.z);
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
  let x_143 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_143;
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
  let x_222 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_222 / x_223);
  let x_225 : vec3<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_230, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_236 : f32 = u_xlat1.w;
  u_xlat22 = x_236;
  let x_237 : f32 = u_xlat22;
  u_xlat22 = clamp(x_237, 0.0f, 1.0f);
  let x_239 : vec3<f32> = u_xlat0;
  let x_243 : vec3<f32> = (vec3<f32>(x_239.z, x_239.x, x_239.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec3<f32> = u_xlat0;
  let x_250 : vec3<f32> = max(vec3<f32>(x_246.z, x_246.x, x_246.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec3<f32> = log2(vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec3<f32> = exp2(vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec3<f32> = u_xlat0;
  let x_288 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_285.z, x_285.x, x_285.y, x_285.z));
  u_xlatb0 = vec3<bool>(x_288.x, x_288.y, x_288.z);
  let x_292 : bool = u_xlatb0.x;
  if (x_292) {
    let x_298 : f32 = u_xlat1.x;
    x_294 = x_298;
  } else {
    let x_301 : f32 = u_xlat3.x;
    x_294 = x_301;
  }
  let x_302 : f32 = x_294;
  u_xlat0.x = x_302;
  let x_305 : bool = u_xlatb0.y;
  if (x_305) {
    let x_310 : f32 = u_xlat1.y;
    x_306 = x_310;
  } else {
    let x_313 : f32 = u_xlat3.y;
    x_306 = x_313;
  }
  let x_314 : f32 = x_306;
  u_xlat0.y = x_314;
  let x_317 : bool = u_xlatb0.z;
  if (x_317) {
    let x_322 : f32 = u_xlat1.z;
    x_318 = x_322;
  } else {
    let x_325 : f32 = u_xlat3.z;
    x_318 = x_325;
  }
  let x_326 : f32 = x_318;
  u_xlat0.z = x_326;
  let x_328 : vec3<f32> = u_xlat0;
  let x_332 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_328 * vec3<f32>(x_332.z, x_332.z, x_332.z));
  let x_336 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_336);
  let x_340 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_342 : vec2<f32> = (vec2<f32>(x_340.x, x_340.y) * vec2<f32>(0.5f, 0.5f));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_345 : vec3<f32> = u_xlat7;
  let x_348 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec2<f32> = ((vec2<f32>(x_345.y, x_345.z) * vec2<f32>(x_348.x, x_348.y)) + vec2<f32>(x_351.x, x_351.y));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_354.w);
  let x_357 : f32 = u_xlat7.x;
  let x_359 : f32 = x_58.x_Lut2D_Params.y;
  let x_362 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_357 * x_359) + x_362);
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_370.x, x_370.z));
  let x_373 : vec3<f32> = vec3<f32>(x_372.x, x_372.y, x_372.z);
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_377;
  let x_380 : vec2<f32> = u_xlat16;
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_380 + vec2<f32>(x_381.x, x_381.z));
  let x_387 : vec2<f32> = u_xlat14;
  let x_388 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_387);
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.z);
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat0.x;
  let x_395 : f32 = x_58.x_Lut2D_Params.z;
  let x_398 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_393 * x_395) + -(x_398));
  let x_402 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_402.x, x_402.y, x_402.z)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat0;
  let x_410 : vec3<f32> = u_xlat7;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_408.x, x_408.x, x_408.x) * x_410) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec3<f32> = u_xlat0;
  let x_418 : vec3<f32> = (x_415 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_421 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_425 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_425 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_429 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_429), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_432 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_432);
  let x_434 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_434 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_438 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_438);
  let x_442 : vec3<f32> = u_xlat0;
  let x_444 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.x));
  u_xlatb0 = vec3<bool>(x_444.x, x_444.y, x_444.z);
  let x_447 : bool = u_xlatb0.x;
  if (x_447) {
    let x_452 : f32 = u_xlat1.x;
    x_448 = x_452;
  } else {
    let x_455 : f32 = u_xlat2.x;
    x_448 = x_455;
  }
  let x_456 : f32 = x_448;
  u_xlat0.x = x_456;
  let x_459 : bool = u_xlatb0.y;
  if (x_459) {
    let x_464 : f32 = u_xlat1.y;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat2.y;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat0.y = x_468;
  let x_471 : bool = u_xlatb0.z;
  if (x_471) {
    let x_476 : f32 = u_xlat1.z;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat2.z;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.z = x_480;
  let x_482 : vec2<f32> = vs_TEXCOORD0;
  let x_484 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_488 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_490 : vec2<f32> = ((x_482 * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_488.z, x_488.w));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_498.x, x_498.y));
  u_xlat21 = x_500.w;
  let x_502 : f32 = u_xlat21;
  u_xlat21 = ((x_502 * 2.0f) + -1.0f);
  let x_505 : f32 = u_xlat21;
  u_xlat1.x = ((x_505 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_511, 0.0f, 1.0f);
  let x_515 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_515 * 2.0f) + -1.0f);
  let x_519 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_519)) + 1.0f);
  let x_523 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_523);
  let x_525 : f32 = u_xlat21;
  u_xlat21 = (-(x_525) + 1.0f);
  let x_528 : f32 = u_xlat21;
  let x_530 : f32 = u_xlat1.x;
  u_xlat21 = (x_528 * x_530);
  let x_532 : vec3<f32> = u_xlat0;
  let x_533 : vec3<f32> = (x_532 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_536), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_539 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_539);
  let x_541 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_541 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_543 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_543);
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_545 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_548 : vec3<f32> = u_xlat0;
  let x_550 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.x));
  u_xlatb0 = vec3<bool>(x_550.x, x_550.y, x_550.z);
  let x_553 : bool = u_xlatb0.x;
  if (x_553) {
    let x_558 : f32 = u_xlat1.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat2.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  u_xlat0.x = x_562;
  let x_565 : bool = u_xlatb0.y;
  if (x_565) {
    let x_570 : f32 = u_xlat1.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat0.y = x_574;
  let x_577 : bool = u_xlatb0.z;
  if (x_577) {
    let x_582 : f32 = u_xlat1.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat0.z = x_586;
  let x_588 : f32 = u_xlat21;
  let x_593 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_588, x_588, x_588) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_593);
  let x_595 : vec3<f32> = u_xlat0;
  let x_596 : vec3<f32> = (x_595 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_599 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_601 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_601 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_603 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_603), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_606 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_606);
  let x_608 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_608 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_610 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_610);
  let x_612 : vec3<f32> = u_xlat0;
  let x_614 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.x));
  u_xlatb0 = vec3<bool>(x_614.x, x_614.y, x_614.z);
  let x_619 : bool = u_xlatb0.x;
  if (x_619) {
    let x_624 : f32 = u_xlat1.x;
    x_620 = x_624;
  } else {
    let x_627 : f32 = u_xlat2.x;
    x_620 = x_627;
  }
  let x_628 : f32 = x_620;
  SV_Target0.x = x_628;
  let x_632 : bool = u_xlatb0.y;
  if (x_632) {
    let x_637 : f32 = u_xlat1.y;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat2.y;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  SV_Target0.y = x_641;
  let x_644 : bool = u_xlatb0.z;
  if (x_644) {
    let x_649 : f32 = u_xlat1.z;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.z;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  SV_Target0.z = x_653;
  let x_655 : f32 = u_xlat22;
  SV_Target0.w = x_655;
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

