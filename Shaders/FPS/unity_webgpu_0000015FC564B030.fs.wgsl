struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb12 : bool;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_227 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_394 : f32;
  var x_406 : f32;
  var x_418 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var x_590 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var x_712 : f32;
  var x_771 : f32;
  var x_784 : f32;
  var x_796 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_56 : f32 = x_51.x_Vignette_Mode;
  u_xlatb12 = (x_56 < 0.5f);
  let x_59 : bool = u_xlatb12;
  if (x_59) {
    let x_62 : vec2<f32> = vs_TEXCOORD0;
    let x_66 : vec2<f32> = x_51.x_Vignette_Center;
    let x_68 : vec2<f32> = (x_62 + -(x_66));
    let x_69 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
    let x_71 : vec4<f32> = u_xlat1;
    let x_77 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_79 : vec2<f32> = (abs(vec2<f32>(x_71.y, x_71.x)) * vec2<f32>(x_77.x, x_77.x));
    let x_80 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_80.x, x_79.x, x_79.y, x_80.w);
    let x_85 : f32 = x_51.x_ScreenParams.x;
    let x_88 : f32 = x_51.x_ScreenParams.y;
    u_xlat12 = (x_85 / x_88);
    let x_90 : f32 = u_xlat12;
    u_xlat12 = (x_90 + -1.0f);
    let x_95 : f32 = x_51.x_Vignette_Settings.w;
    let x_96 : f32 = u_xlat12;
    u_xlat12 = ((x_95 * x_96) + 1.0f);
    let x_100 : f32 = u_xlat12;
    let x_103 : f32 = u_xlat1.z;
    u_xlat1.x = (x_100 * x_103);
    let x_106 : vec4<f32> = u_xlat1;
    let x_107 : vec2<f32> = vec2<f32>(x_106.x, x_106.y);
    let x_108 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
    let x_110 : vec4<f32> = u_xlat1;
    let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_116 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
    let x_118 : vec4<f32> = u_xlat1;
    let x_120 : vec2<f32> = log2(vec2<f32>(x_118.x, x_118.y));
    let x_121 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
    let x_123 : vec4<f32> = u_xlat1;
    let x_126 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_128 : vec2<f32> = (vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_126.z, x_126.z));
    let x_129 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
    let x_131 : vec4<f32> = u_xlat1;
    let x_133 : vec2<f32> = exp2(vec2<f32>(x_131.x, x_131.y));
    let x_134 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_134.z, x_134.w);
    let x_136 : vec4<f32> = u_xlat1;
    let x_138 : vec4<f32> = u_xlat1;
    u_xlat12 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
    let x_141 : f32 = u_xlat12;
    u_xlat12 = (-(x_141) + 1.0f);
    let x_144 : f32 = u_xlat12;
    u_xlat12 = max(x_144, 0.0f);
    let x_146 : f32 = u_xlat12;
    u_xlat12 = log2(x_146);
    let x_148 : f32 = u_xlat12;
    let x_150 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat12 = (x_148 * x_150);
    let x_152 : f32 = u_xlat12;
    u_xlat12 = exp2(x_152);
    let x_157 : vec3<f32> = x_51.x_Vignette_Color;
    let x_160 : vec3<f32> = (-(x_157) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_161 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : f32 = u_xlat12;
    let x_165 : vec4<f32> = u_xlat1;
    let x_169 : vec3<f32> = x_51.x_Vignette_Color;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163, x_163, x_163) * vec3<f32>(x_165.x, x_165.y, x_165.z)) + x_169);
    let x_171 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec3<f32> = u_xlat0;
    let x_174 : vec4<f32> = u_xlat1;
    let x_176 : vec3<f32> = (x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_181 : f32 = u_xlat1.w;
    u_xlat2.x = (x_181 + -1.0f);
    let x_184 : f32 = u_xlat12;
    let x_186 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_184 * x_186) + 1.0f);
  } else {
    let x_196 : vec2<f32> = vs_TEXCOORD0;
    let x_197 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_196);
    u_xlat12 = x_197.w;
    let x_200 : f32 = u_xlat12;
    u_xlat3.x = (x_200 * 0.077399381f);
    let x_205 : f32 = u_xlat12;
    u_xlat7 = (x_205 + 0.055f);
    let x_208 : f32 = u_xlat7;
    u_xlat7 = (x_208 * 0.947867334f);
    let x_211 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_211), 1.1920929e-07f);
    let x_215 : f32 = u_xlat7;
    u_xlat7 = log2(x_215);
    let x_217 : f32 = u_xlat7;
    u_xlat7 = (x_217 * 2.400000095f);
    let x_220 : f32 = u_xlat7;
    u_xlat7 = exp2(x_220);
    let x_223 : f32 = u_xlat12;
    u_xlatb12 = (0.040449999f >= x_223);
    let x_225 : bool = u_xlatb12;
    if (x_225) {
      let x_231 : f32 = u_xlat3.x;
      x_227 = x_231;
    } else {
      let x_233 : f32 = u_xlat7;
      x_227 = x_233;
    }
    let x_234 : f32 = x_227;
    u_xlat12 = x_234;
    let x_236 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = (-(x_236) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_239 : f32 = u_xlat12;
    let x_241 : vec3<f32> = u_xlat3;
    let x_244 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = ((vec3<f32>(x_239, x_239, x_239) * x_241) + x_244);
    let x_246 : vec3<f32> = u_xlat0;
    let x_247 : vec3<f32> = u_xlat3;
    let x_249 : vec3<f32> = u_xlat0;
    u_xlat3 = ((x_246 * x_247) + -(x_249));
    let x_254 : f32 = x_51.x_Vignette_Opacity;
    let x_256 : vec3<f32> = u_xlat3;
    let x_258 : vec3<f32> = u_xlat0;
    let x_259 : vec3<f32> = ((vec3<f32>(x_254, x_254, x_254) * x_256) + x_258);
    let x_260 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : f32 = u_xlat1.w;
    u_xlat0.x = (x_263 + -1.0f);
    let x_266 : f32 = u_xlat12;
    let x_268 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_266 * x_268) + 1.0f);
  }
  let x_272 : vec2<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = x_51.x_Grain_Params2;
  let x_279 : vec4<f32> = x_51.x_Grain_Params2;
  let x_281 : vec2<f32> = ((x_272 * vec2<f32>(x_275.x, x_275.y)) + vec2<f32>(x_279.z, x_279.w));
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_281.x, x_281.y, x_282.z);
  let x_289 : vec3<f32> = u_xlat0;
  let x_291 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_289.x, x_289.y));
  u_xlat0 = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat3 = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_295, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_299, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_305 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_305);
  let x_309 : f32 = x_51.x_Grain_Params1.x;
  let x_310 : f32 = u_xlat12;
  u_xlat12 = ((x_309 * -(x_310)) + 1.0f);
  let x_314 : vec3<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_314 * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec3<f32> = u_xlat0;
  let x_320 : f32 = x_51.x_Grain_Params1.y;
  let x_322 : f32 = x_51.x_Grain_Params1.y;
  let x_324 : f32 = x_51.x_Grain_Params1.y;
  u_xlat0 = (x_318 * vec3<f32>(x_320, x_322, x_324));
  let x_327 : vec3<f32> = u_xlat0;
  let x_328 : f32 = u_xlat12;
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec3<f32> = ((x_327 * vec3<f32>(x_328, x_328, x_328)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = x_336;
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_337, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_341.z, x_341.x, x_341.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = max(vec3<f32>(x_346.z, x_346.x, x_346.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = log2(vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec3<f32> = exp2(vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat1;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_387 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_384.z, x_384.x, x_384.y, x_384.z));
  u_xlatb2 = vec3<bool>(x_387.x, x_387.y, x_387.z);
  let x_391 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_391;
  let x_393 : bool = u_xlatb2.x;
  if (x_393) {
    let x_398 : f32 = u_xlat0.x;
    x_394 = x_398;
  } else {
    let x_401 : f32 = u_xlat1.x;
    x_394 = x_401;
  }
  let x_402 : f32 = x_394;
  hlslcc_movcTemp.x = x_402;
  let x_405 : bool = u_xlatb2.y;
  if (x_405) {
    let x_410 : f32 = u_xlat0.y;
    x_406 = x_410;
  } else {
    let x_413 : f32 = u_xlat1.y;
    x_406 = x_413;
  }
  let x_414 : f32 = x_406;
  hlslcc_movcTemp.y = x_414;
  let x_417 : bool = u_xlatb2.z;
  if (x_417) {
    let x_422 : f32 = u_xlat0.z;
    x_418 = x_422;
  } else {
    let x_425 : f32 = u_xlat1.z;
    x_418 = x_425;
  }
  let x_426 : f32 = x_418;
  hlslcc_movcTemp.z = x_426;
  let x_428 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_428;
  let x_430 : vec3<f32> = u_xlat0;
  let x_433 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat4 = (x_430 * vec3<f32>(x_433.z, x_433.z, x_433.z));
  let x_437 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_437);
  let x_441 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_444 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) * vec2<f32>(0.5f, 0.5f));
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
  let x_447 : vec3<f32> = u_xlat4;
  let x_450 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec2<f32> = ((vec2<f32>(x_447.y, x_447.z) * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_453.x, x_453.y));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_455.x, x_455.y, x_456.w);
  let x_459 : f32 = u_xlat4.x;
  let x_461 : f32 = x_51.x_Lut2D_Params.y;
  let x_464 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_459 * x_461) + x_464);
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_472.x, x_472.z));
  let x_475 : vec3<f32> = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_479 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat3.x = x_479;
  u_xlat3.y = 0.0f;
  let x_484 : vec4<f32> = u_xlat1;
  let x_486 : vec3<f32> = u_xlat3;
  u_xlat8 = (vec2<f32>(x_484.x, x_484.z) + vec2<f32>(x_486.x, x_486.y));
  let x_492 : vec2<f32> = u_xlat8;
  let x_493 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.z);
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat0.x;
  let x_500 : f32 = x_51.x_Lut2D_Params.z;
  let x_503 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_498 * x_500) + -(x_503));
  let x_507 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat4 = (-(vec3<f32>(x_507.x, x_507.y, x_507.z)) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec3<f32> = u_xlat0;
  let x_515 : vec3<f32> = u_xlat4;
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_513.x, x_513.x, x_513.x) * x_515) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec3<f32> = u_xlat0;
  let x_522 : vec3<f32> = (x_520 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec3<f32> = u_xlat0;
  let x_527 : vec3<f32> = (x_525 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat2;
  let x_533 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat2;
  let x_539 : vec3<f32> = max(abs(vec3<f32>(x_536.x, x_536.y, x_536.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat2;
  let x_544 : vec3<f32> = log2(vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat2;
  let x_550 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_551 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat2;
  let x_555 : vec3<f32> = exp2(vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : vec3<f32> = u_xlat0;
  let x_562 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_560.x, x_560.y, x_560.z, x_560.x));
  u_xlatb0 = vec3<bool>(x_562.x, x_562.y, x_562.z);
  let x_565 : bool = u_xlatb0.x;
  if (x_565) {
    let x_570 : f32 = u_xlat1.x;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.x;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat0.x = x_574;
  let x_577 : bool = u_xlatb0.y;
  if (x_577) {
    let x_582 : f32 = u_xlat1.y;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.y;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat0.y = x_586;
  let x_589 : bool = u_xlatb0.z;
  if (x_589) {
    let x_594 : f32 = u_xlat1.z;
    x_590 = x_594;
  } else {
    let x_597 : f32 = u_xlat2.z;
    x_590 = x_597;
  }
  let x_598 : f32 = x_590;
  u_xlat0.z = x_598;
  let x_600 : vec2<f32> = vs_TEXCOORD0;
  let x_603 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_607 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_609 : vec2<f32> = ((x_600 * vec2<f32>(x_603.x, x_603.y)) + vec2<f32>(x_607.z, x_607.w));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_617.x, x_617.y));
  u_xlat12 = x_619.w;
  let x_621 : f32 = u_xlat12;
  u_xlat12 = ((x_621 * 2.0f) + -1.0f);
  let x_625 : f32 = u_xlat12;
  u_xlat1.x = ((x_625 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_631 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_631, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_635 * 2.0f) + -1.0f);
  let x_639 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_639)) + 1.0f);
  let x_643 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_643);
  let x_645 : f32 = u_xlat12;
  u_xlat12 = (-(x_645) + 1.0f);
  let x_648 : f32 = u_xlat12;
  let x_650 : f32 = u_xlat1.x;
  u_xlat12 = (x_648 * x_650);
  let x_652 : vec3<f32> = u_xlat0;
  let x_653 : vec3<f32> = (x_652 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec3<f32> = u_xlat0;
  let x_658 : vec3<f32> = max(abs(x_656), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_659 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat2;
  let x_663 : vec3<f32> = log2(vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat2;
  let x_668 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat2;
  let x_673 : vec3<f32> = exp2(vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_682.x, x_682.y, x_682.z, x_682.x));
  u_xlatb0 = vec3<bool>(x_684.x, x_684.y, x_684.z);
  let x_687 : bool = u_xlatb0.x;
  if (x_687) {
    let x_692 : f32 = u_xlat1.x;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat2.x;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat0.x = x_696;
  let x_699 : bool = u_xlatb0.y;
  if (x_699) {
    let x_704 : f32 = u_xlat1.y;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.y;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat0.y = x_708;
  let x_711 : bool = u_xlatb0.z;
  if (x_711) {
    let x_716 : f32 = u_xlat1.z;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.z;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat0.z = x_720;
  let x_722 : f32 = u_xlat12;
  let x_727 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_722, x_722, x_722) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_727);
  let x_729 : vec3<f32> = u_xlat0;
  let x_730 : vec3<f32> = (x_729 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec3<f32> = u_xlat0;
  let x_734 : vec3<f32> = (x_733 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat2;
  let x_739 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_740 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_745 : vec3<f32> = max(abs(vec3<f32>(x_742.x, x_742.y, x_742.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_746 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat2;
  let x_750 : vec3<f32> = log2(vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat2;
  let x_755 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat2;
  let x_760 : vec3<f32> = exp2(vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec3<f32> = u_xlat0;
  let x_765 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.x));
  u_xlatb0 = vec3<bool>(x_765.x, x_765.y, x_765.z);
  let x_770 : bool = u_xlatb0.x;
  if (x_770) {
    let x_775 : f32 = u_xlat1.x;
    x_771 = x_775;
  } else {
    let x_778 : f32 = u_xlat2.x;
    x_771 = x_778;
  }
  let x_779 : f32 = x_771;
  SV_Target0.x = x_779;
  let x_783 : bool = u_xlatb0.y;
  if (x_783) {
    let x_788 : f32 = u_xlat1.y;
    x_784 = x_788;
  } else {
    let x_791 : f32 = u_xlat2.y;
    x_784 = x_791;
  }
  let x_792 : f32 = x_784;
  SV_Target0.y = x_792;
  let x_795 : bool = u_xlatb0.z;
  if (x_795) {
    let x_800 : f32 = u_xlat1.z;
    x_796 = x_800;
  } else {
    let x_803 : f32 = u_xlat2.z;
    x_796 = x_803;
  }
  let x_804 : f32 = x_796;
  SV_Target0.z = x_804;
  let x_807 : f32 = u_xlat2.w;
  SV_Target0.w = x_807;
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

