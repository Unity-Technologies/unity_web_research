struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_403 : f32;
  var x_415 : f32;
  var x_427 : f32;
  var x_484 : f32;
  var x_497 : f32;
  var x_509 : f32;
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
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat7 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat7;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_86);
  let x_90 : f32 = u_xlat21;
  u_xlati21 = i32(x_90);
  let x_92 : i32 = u_xlati21;
  u_xlati21 = max(x_92, 3i);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = min(x_94, 16i);
  let x_97 : i32 = u_xlati21;
  u_xlat1.x = f32(x_97);
  let x_100 : vec2<f32> = u_xlat7;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_100) / vec2<f32>(x_102.x, x_102.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_138 : i32 = u_xlati_loop_1;
    let x_139 : i32 = u_xlati21;
    if ((x_138 < x_139)) {
    } else {
      break;
    }
    let x_143 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_143);
    let x_147 : f32 = u_xlat16.x;
    u_xlat16.x = (x_147 + 0.5f);
    let x_151 : f32 = u_xlat16.x;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_156 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_156.x, x_156.y);
    let x_158 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_158, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_162 : vec2<f32> = u_xlat16;
    let x_164 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_162 * vec2<f32>(x_164, x_164));
    let x_173 : vec2<f32> = u_xlat16;
    let x_174 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_173, 0.0f);
    u_xlat6 = x_174;
    let x_180 : vec3<f32> = u_xlat2;
    let x_182 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_180.x, x_180.y), 0.0f);
    let x_183 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
    let x_184 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_186 * x_187) + x_189);
    let x_191 : vec4<f32> = u_xlat3;
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_191 + x_192);
    let x_194 : vec2<f32> = u_xlat7;
    let x_195 : vec3<f32> = u_xlat8;
    let x_197 : vec2<f32> = (x_194 + vec2<f32>(x_195.x, x_195.y));
    let x_198 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_197.x, x_197.y, x_198.z);

    continuing {
      let x_200 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_200 + 1i);
    }
  }
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_203 / x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : f32 = x_50.x_PostExposure;
  let x_218 : f32 = x_50.x_PostExposure;
  let x_220 : f32 = x_50.x_PostExposure;
  let x_222 : f32 = x_50.x_PostExposure;
  let x_223 : vec4<f32> = vec4<f32>(x_216, x_218, x_220, x_222);
  u_xlat0 = (x_213 * vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.w));
  let x_230 : vec4<f32> = u_xlat0;
  let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = log2(vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_253 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat0;
  let x_259 : vec3<f32> = clamp(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat0;
  let x_267 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_269 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_267.y, x_267.y, x_267.y));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat1.x = (x_273 * 0.5f);
  let x_276 : vec4<f32> = u_xlat0;
  let x_279 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_279.x, x_279.x, x_279.x)) + vec3<f32>(x_282.x, x_282.x, x_282.x));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_295 : vec4<f32> = u_xlat0;
  let x_297 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec3<f32> = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec2<f32> = vs_TEXCOORD0;
  let x_303 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_307 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_309 : vec2<f32> = ((x_301 * vec2<f32>(x_303.x, x_303.y)) + vec2<f32>(x_307.z, x_307.w));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_310.z, x_310.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_317.x, x_317.y));
  u_xlat1.x = x_319.w;
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_323 * 2.0f) + -1.0f);
  let x_328 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_328 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_334 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_334, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_338 * 2.0f) + -1.0f);
  let x_343 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_343)) + 1.0f);
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_349);
  let x_353 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_353) + 1.0f);
  let x_358 : f32 = u_xlat1.x;
  let x_360 : f32 = u_xlat8.x;
  u_xlat1.x = (x_358 * x_360);
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_368.x, x_368.y, x_368.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_374 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_374);
  let x_376 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_376 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_380 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_380);
  let x_382 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_382 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_394 : vec4<f32> = u_xlat0;
  let x_397 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_394.x, x_394.y, x_394.z, x_394.x));
  u_xlatb0 = vec3<bool>(x_397.x, x_397.y, x_397.z);
  let x_401 : bool = u_xlatb0.x;
  if (x_401) {
    let x_407 : f32 = u_xlat8.x;
    x_403 = x_407;
  } else {
    let x_410 : f32 = u_xlat2.x;
    x_403 = x_410;
  }
  let x_411 : f32 = x_403;
  u_xlat0.x = x_411;
  let x_414 : bool = u_xlatb0.y;
  if (x_414) {
    let x_419 : f32 = u_xlat8.y;
    x_415 = x_419;
  } else {
    let x_422 : f32 = u_xlat2.y;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  u_xlat0.y = x_423;
  let x_426 : bool = u_xlatb0.z;
  if (x_426) {
    let x_431 : f32 = u_xlat8.z;
    x_427 = x_431;
  } else {
    let x_434 : f32 = u_xlat2.z;
    x_427 = x_434;
  }
  let x_435 : f32 = x_427;
  u_xlat0.z = x_435;
  let x_437 : vec4<f32> = u_xlat1;
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = ((vec3<f32>(x_437.x, x_437.x, x_437.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_459 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_459 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_463 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_463), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_466 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_466);
  let x_468 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_468 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_472 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_472);
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_476.x, x_476.y, x_476.z, x_476.x));
  u_xlatb0 = vec3<bool>(x_478.x, x_478.y, x_478.z);
  let x_483 : bool = u_xlatb0.x;
  if (x_483) {
    let x_488 : f32 = u_xlat1.x;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat2.x;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  SV_Target0.x = x_492;
  let x_496 : bool = u_xlatb0.y;
  if (x_496) {
    let x_501 : f32 = u_xlat1.y;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat2.y;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  SV_Target0.y = x_505;
  let x_508 : bool = u_xlatb0.z;
  if (x_508) {
    let x_513 : f32 = u_xlat1.z;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat2.z;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  SV_Target0.z = x_517;
  let x_520 : f32 = u_xlat0.w;
  SV_Target0.w = x_520;
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

