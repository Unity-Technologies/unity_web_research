struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb9 : bool;

@group(0) @binding(0) var<uniform> x_52 : PGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_240 : f32;
  var x_500 : f32;
  var x_512 : f32;
  var x_524 : f32;
  var x_593 : f32;
  var x_606 : f32;
  var x_618 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_57 : f32 = x_52.x_Vignette_Mode;
  u_xlatb9 = (x_57 < 0.5f);
  let x_60 : bool = u_xlatb9;
  if (x_60) {
    let x_63 : vec2<f32> = vs_TEXCOORD0;
    let x_67 : vec2<f32> = x_52.x_Vignette_Center;
    let x_69 : vec2<f32> = (x_63 + -(x_67));
    let x_70 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
    let x_72 : vec4<f32> = u_xlat1;
    let x_78 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_80 : vec2<f32> = (abs(vec2<f32>(x_72.y, x_72.x)) * vec2<f32>(x_78.x, x_78.x));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_81.x, x_80.x, x_80.y, x_81.w);
    let x_86 : f32 = x_52.x_ScreenParams.x;
    let x_89 : f32 = x_52.x_ScreenParams.y;
    u_xlat9 = (x_86 / x_89);
    let x_91 : f32 = u_xlat9;
    u_xlat9 = (x_91 + -1.0f);
    let x_96 : f32 = x_52.x_Vignette_Settings.w;
    let x_97 : f32 = u_xlat9;
    u_xlat9 = ((x_96 * x_97) + 1.0f);
    let x_101 : f32 = u_xlat9;
    let x_104 : f32 = u_xlat1.z;
    u_xlat1.x = (x_101 * x_104);
    let x_107 : vec4<f32> = u_xlat1;
    let x_108 : vec2<f32> = vec2<f32>(x_107.x, x_107.y);
    let x_109 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
    let x_111 : vec4<f32> = u_xlat1;
    let x_116 : vec2<f32> = clamp(vec2<f32>(x_111.x, x_111.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_117 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat1;
    let x_121 : vec2<f32> = log2(vec2<f32>(x_119.x, x_119.y));
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat1;
    let x_127 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127.z, x_127.z));
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
    let x_132 : vec4<f32> = u_xlat1;
    let x_134 : vec2<f32> = exp2(vec2<f32>(x_132.x, x_132.y));
    let x_135 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat1;
    let x_139 : vec4<f32> = u_xlat1;
    u_xlat9 = dot(vec2<f32>(x_137.x, x_137.y), vec2<f32>(x_139.x, x_139.y));
    let x_142 : f32 = u_xlat9;
    u_xlat9 = (-(x_142) + 1.0f);
    let x_145 : f32 = u_xlat9;
    u_xlat9 = max(x_145, 0.0f);
    let x_147 : f32 = u_xlat9;
    u_xlat9 = log2(x_147);
    let x_149 : f32 = u_xlat9;
    let x_151 : f32 = x_52.x_Vignette_Settings.y;
    u_xlat9 = (x_149 * x_151);
    let x_153 : f32 = u_xlat9;
    u_xlat9 = exp2(x_153);
    let x_158 : vec3<f32> = x_52.x_Vignette_Color;
    let x_161 : vec3<f32> = (-(x_158) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_162 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : f32 = u_xlat9;
    let x_166 : vec4<f32> = u_xlat1;
    let x_170 : vec3<f32> = x_52.x_Vignette_Color;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_170);
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = u_xlat0;
    let x_177 : vec4<f32> = u_xlat1;
    let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : f32 = u_xlat1.w;
    u_xlat1.x = (x_183 + -1.0f);
    let x_186 : f32 = u_xlat9;
    let x_188 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_198 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_198);
    u_xlat9 = x_199.w;
    let x_201 : f32 = u_xlat9;
    u_xlat1.x = (x_201 * 0.077399381f);
    let x_207 : f32 = u_xlat9;
    u_xlat4.x = (x_207 + 0.055f);
    let x_212 : f32 = u_xlat4.x;
    u_xlat4.x = (x_212 * 0.947867334f);
    let x_217 : f32 = u_xlat4.x;
    u_xlat4.x = max(abs(x_217), 1.1920929e-07f);
    let x_223 : f32 = u_xlat4.x;
    u_xlat4.x = log2(x_223);
    let x_227 : f32 = u_xlat4.x;
    u_xlat4.x = (x_227 * 2.400000095f);
    let x_232 : f32 = u_xlat4.x;
    u_xlat4.x = exp2(x_232);
    let x_236 : f32 = u_xlat9;
    u_xlatb9 = (0.040449999f >= x_236);
    let x_238 : bool = u_xlatb9;
    if (x_238) {
      let x_244 : f32 = u_xlat1.x;
      x_240 = x_244;
    } else {
      let x_247 : f32 = u_xlat4.x;
      x_240 = x_247;
    }
    let x_248 : f32 = x_240;
    u_xlat9 = x_248;
    let x_250 : vec3<f32> = x_52.x_Vignette_Color;
    let x_252 : vec3<f32> = (-(x_250) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_253 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : f32 = u_xlat9;
    let x_257 : vec4<f32> = u_xlat1;
    let x_261 : vec3<f32> = x_52.x_Vignette_Color;
    let x_262 : vec3<f32> = ((vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z)) + x_261);
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat0;
    let x_267 : vec4<f32> = u_xlat1;
    let x_270 : vec4<f32> = u_xlat0;
    let x_273 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.x, x_267.y, x_267.z)) + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
    let x_274 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_278 : f32 = x_52.x_Vignette_Opacity;
    let x_280 : vec4<f32> = u_xlat1;
    let x_283 : vec4<f32> = u_xlat0;
    let x_285 : vec3<f32> = ((vec3<f32>(x_278, x_278, x_278) * vec3<f32>(x_280.x, x_280.y, x_280.z)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_289 : f32 = u_xlat1.w;
    u_xlat0.x = (x_289 + -1.0f);
    let x_292 : f32 = u_xlat9;
    let x_294 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_292 * x_294) + 1.0f);
  }
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : f32 = x_52.x_PostExposure;
  let x_303 : f32 = x_52.x_PostExposure;
  let x_305 : f32 = x_52.x_PostExposure;
  let x_307 : f32 = x_52.x_PostExposure;
  let x_308 : vec4<f32> = vec4<f32>(x_301, x_303, x_305, x_307);
  u_xlat0 = (x_298 * vec4<f32>(x_308.x, x_308.y, x_308.z, x_308.w));
  let x_315 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = log2(vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = clamp(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_353 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_351.y, x_351.y, x_351.y));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat1.x = (x_357 * 0.5f);
  let x_360 : vec4<f32> = u_xlat0;
  let x_363 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_366 : vec4<f32> = u_xlat1;
  let x_368 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_363.x, x_363.x, x_363.x)) + vec3<f32>(x_366.x, x_366.x, x_366.x));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec3<f32> = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec2<f32> = vs_TEXCOORD0;
  let x_388 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_392 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_394 : vec2<f32> = ((x_385 * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_392.z, x_392.w));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_402.x, x_402.y));
  u_xlat1.x = x_404.w;
  let x_408 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_408 * 2.0f) + -1.0f);
  let x_414 : f32 = u_xlat1.x;
  u_xlat4.x = ((x_414 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_420 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_420, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_424 * 2.0f) + -1.0f);
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_429)) + 1.0f);
  let x_435 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_435);
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_439) + 1.0f);
  let x_444 : f32 = u_xlat1.x;
  let x_446 : f32 = u_xlat4.x;
  u_xlat1.x = (x_444 * x_446);
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_454 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = max(abs(vec3<f32>(x_454.x, x_454.y, x_454.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec3<f32> = log2(vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat2;
  let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec3<f32> = exp2(vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat2;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_496 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.x));
  u_xlatb0 = vec3<bool>(x_496.x, x_496.y, x_496.z);
  let x_499 : bool = u_xlatb0.x;
  if (x_499) {
    let x_504 : f32 = u_xlat4.x;
    x_500 = x_504;
  } else {
    let x_507 : f32 = u_xlat2.x;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat0.x = x_508;
  let x_511 : bool = u_xlatb0.y;
  if (x_511) {
    let x_516 : f32 = u_xlat4.y;
    x_512 = x_516;
  } else {
    let x_519 : f32 = u_xlat2.y;
    x_512 = x_519;
  }
  let x_520 : f32 = x_512;
  u_xlat0.y = x_520;
  let x_523 : bool = u_xlatb0.z;
  if (x_523) {
    let x_528 : f32 = u_xlat4.z;
    x_524 = x_528;
  } else {
    let x_531 : f32 = u_xlat2.z;
    x_524 = x_531;
  }
  let x_532 : f32 = x_524;
  u_xlat0.z = x_532;
  let x_534 : vec4<f32> = u_xlat1;
  let x_539 : vec4<f32> = u_xlat0;
  let x_541 : vec3<f32> = ((vec3<f32>(x_534.x, x_534.x, x_534.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat0;
  let x_547 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat0;
  let x_553 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat2;
  let x_559 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = max(abs(vec3<f32>(x_562.x, x_562.y, x_562.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = log2(vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_577 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = exp2(vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_585.x, x_585.y, x_585.z, x_585.x));
  u_xlatb0 = vec3<bool>(x_587.x, x_587.y, x_587.z);
  let x_592 : bool = u_xlatb0.x;
  if (x_592) {
    let x_597 : f32 = u_xlat1.x;
    x_593 = x_597;
  } else {
    let x_600 : f32 = u_xlat2.x;
    x_593 = x_600;
  }
  let x_601 : f32 = x_593;
  SV_Target0.x = x_601;
  let x_605 : bool = u_xlatb0.y;
  if (x_605) {
    let x_610 : f32 = u_xlat1.y;
    x_606 = x_610;
  } else {
    let x_613 : f32 = u_xlat2.y;
    x_606 = x_613;
  }
  let x_614 : f32 = x_606;
  SV_Target0.y = x_614;
  let x_617 : bool = u_xlatb0.z;
  if (x_617) {
    let x_622 : f32 = u_xlat1.z;
    x_618 = x_622;
  } else {
    let x_625 : f32 = u_xlat2.z;
    x_618 = x_625;
  }
  let x_626 : f32 = x_618;
  SV_Target0.z = x_626;
  let x_629 : f32 = u_xlat0.w;
  SV_Target0.w = x_629;
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

