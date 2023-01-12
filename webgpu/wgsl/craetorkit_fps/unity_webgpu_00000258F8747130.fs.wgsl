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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb9 : bool;
  var u_xlat9 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var x_239 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
  var x_592 : f32;
  var x_605 : f32;
  var x_617 : f32;
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
      let x_243 : f32 = u_xlat1.x;
      x_239 = x_243;
    } else {
      let x_246 : f32 = u_xlat4.x;
      x_239 = x_246;
    }
    let x_247 : f32 = x_239;
    u_xlat9 = x_247;
    let x_249 : vec3<f32> = x_52.x_Vignette_Color;
    let x_251 : vec3<f32> = (-(x_249) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_252 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : f32 = u_xlat9;
    let x_256 : vec4<f32> = u_xlat1;
    let x_260 : vec3<f32> = x_52.x_Vignette_Color;
    let x_261 : vec3<f32> = ((vec3<f32>(x_254, x_254, x_254) * vec3<f32>(x_256.x, x_256.y, x_256.z)) + x_260);
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = u_xlat0;
    let x_272 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z)) + -(vec3<f32>(x_269.x, x_269.y, x_269.z)));
    let x_273 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_277 : f32 = x_52.x_Vignette_Opacity;
    let x_279 : vec4<f32> = u_xlat1;
    let x_282 : vec4<f32> = u_xlat0;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277, x_277, x_277) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : f32 = u_xlat1.w;
    u_xlat0.x = (x_288 + -1.0f);
    let x_291 : f32 = u_xlat9;
    let x_293 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_291 * x_293) + 1.0f);
  }
  let x_297 : vec4<f32> = u_xlat2;
  let x_300 : f32 = x_52.x_PostExposure;
  let x_302 : f32 = x_52.x_PostExposure;
  let x_304 : f32 = x_52.x_PostExposure;
  let x_306 : f32 = x_52.x_PostExposure;
  let x_307 : vec4<f32> = vec4<f32>(x_300, x_302, x_304, x_306);
  u_xlat0 = (x_297 * vec4<f32>(x_307.x, x_307.y, x_307.z, x_307.w));
  let x_314 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = log2(vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = clamp(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat0;
  let x_350 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_352 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_350.y, x_350.y, x_350.y));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat1.x = (x_356 * 0.5f);
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + vec3<f32>(x_365.x, x_365.x, x_365.x));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec3<f32> = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec2<f32> = vs_TEXCOORD0;
  let x_387 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_391 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_393 : vec2<f32> = ((x_384 * vec2<f32>(x_387.x, x_387.y)) + vec2<f32>(x_391.z, x_391.w));
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_401.x, x_401.y));
  u_xlat1.x = x_403.w;
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_407 * 2.0f) + -1.0f);
  let x_413 : f32 = u_xlat1.x;
  u_xlat4.x = ((x_413 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_419 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_419, 0.0f, 1.0f);
  let x_423 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_423 * 2.0f) + -1.0f);
  let x_428 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_428)) + 1.0f);
  let x_434 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_434);
  let x_438 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_438) + 1.0f);
  let x_443 : f32 = u_xlat1.x;
  let x_445 : f32 = u_xlat4.x;
  u_xlat1.x = (x_443 * x_445);
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = max(abs(vec3<f32>(x_453.x, x_453.y, x_453.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec3<f32> = log2(vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec3<f32> = exp2(vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_492 : vec4<f32> = u_xlat0;
  let x_495 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_492.x, x_492.y, x_492.z, x_492.x));
  u_xlatb0 = vec3<bool>(x_495.x, x_495.y, x_495.z);
  let x_498 : bool = u_xlatb0.x;
  if (x_498) {
    let x_503 : f32 = u_xlat4.x;
    x_499 = x_503;
  } else {
    let x_506 : f32 = u_xlat2.x;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  u_xlat0.x = x_507;
  let x_510 : bool = u_xlatb0.y;
  if (x_510) {
    let x_515 : f32 = u_xlat4.y;
    x_511 = x_515;
  } else {
    let x_518 : f32 = u_xlat2.y;
    x_511 = x_518;
  }
  let x_519 : f32 = x_511;
  u_xlat0.y = x_519;
  let x_522 : bool = u_xlatb0.z;
  if (x_522) {
    let x_527 : f32 = u_xlat4.z;
    x_523 = x_527;
  } else {
    let x_530 : f32 = u_xlat2.z;
    x_523 = x_530;
  }
  let x_531 : f32 = x_523;
  u_xlat0.z = x_531;
  let x_533 : vec4<f32> = u_xlat1;
  let x_538 : vec4<f32> = u_xlat0;
  let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.x, x_533.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat0;
  let x_546 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_553 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = max(abs(vec3<f32>(x_561.x, x_561.y, x_561.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = log2(vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat2;
  let x_580 : vec3<f32> = exp2(vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec4<f32> = u_xlat0;
  let x_586 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_584.x, x_584.y, x_584.z, x_584.x));
  u_xlatb0 = vec3<bool>(x_586.x, x_586.y, x_586.z);
  let x_591 : bool = u_xlatb0.x;
  if (x_591) {
    let x_596 : f32 = u_xlat1.x;
    x_592 = x_596;
  } else {
    let x_599 : f32 = u_xlat2.x;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  SV_Target0.x = x_600;
  let x_604 : bool = u_xlatb0.y;
  if (x_604) {
    let x_609 : f32 = u_xlat1.y;
    x_605 = x_609;
  } else {
    let x_612 : f32 = u_xlat2.y;
    x_605 = x_612;
  }
  let x_613 : f32 = x_605;
  SV_Target0.y = x_613;
  let x_616 : bool = u_xlatb0.z;
  if (x_616) {
    let x_621 : f32 = u_xlat1.z;
    x_617 = x_621;
  } else {
    let x_624 : f32 = u_xlat2.z;
    x_617 = x_624;
  }
  let x_625 : f32 = x_617;
  SV_Target0.z = x_625;
  let x_628 : f32 = u_xlat0.w;
  SV_Target0.w = x_628;
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

