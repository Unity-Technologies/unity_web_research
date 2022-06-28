struct PGlobals {
  x_Lut2D_Params : vec4<f32>,
  x_ColorBalance : vec3<f32>,
  @size(4)
  padding : u32,
  x_ColorFilter : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_HueSatCon : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ChannelMixerRed : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_ChannelMixerGreen : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_ChannelMixerBlue : vec3<f32>,
  @size(4)
  padding_5 : u32,
  x_Lift : vec3<f32>,
  @size(4)
  padding_6 : u32,
  x_InvGamma : vec3<f32>,
  @size(4)
  padding_7 : u32,
  x_Gain : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

@group(0) @binding(1) var x_Curves : texture_2d<f32>;

@group(0) @binding(2) var sampler_Curves : sampler;

var<private> u_xlatb4 : bool;

var<private> u_xlat10 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_442 : f32;
  var x_456 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Lut2D_Params;
  let x_25 : vec2<f32> = (x_13 + -(vec2<f32>(x_22.y, x_22.z)));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_25.x, x_25.y, x_26.w);
  let x_33 : f32 = u_xlat0.y;
  let x_37 : f32 = x_17.x_Lut2D_Params.x;
  u_xlat1.x = (x_33 * x_37);
  let x_41 : f32 = u_xlat1.x;
  u_xlat0.x = fract(x_41);
  let x_45 : f32 = u_xlat0.x;
  let x_47 : f32 = x_17.x_Lut2D_Params.x;
  u_xlat1.x = (x_45 / x_47);
  let x_51 : f32 = u_xlat0.y;
  let x_53 : f32 = u_xlat1.x;
  u_xlat0.w = (x_51 + -(x_53));
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_17.x_Lut2D_Params;
  let x_66 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.z, x_58.w) * vec3<f32>(x_61.w, x_61.w, x_61.w)) + vec3<f32>(-0.413588405f, -0.413588405f, -0.413588405f));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = x_17.x_HueSatCon;
  let x_79 : vec3<f32> = ((vec3<f32>(x_69.x, x_69.y, x_69.z) * vec3<f32>(x_74.z, x_74.z, x_74.z)) + vec3<f32>(0.027552396f, 0.027552396f, 0.027552396f));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_86 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) * vec3<f32>(13.605482101f, 13.605482101f, 13.605482101f));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = exp2(vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_94 : vec4<f32> = u_xlat0;
  let x_98 : vec3<f32> = (vec3<f32>(x_94.x, x_94.y, x_94.z) + vec3<f32>(-0.047995999f, -0.047995999f, -0.047995999f));
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat0;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) * vec3<f32>(0.179999992f, 0.179999992f, 0.179999992f));
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec4<f32> = u_xlat1;
  let x_137 : vec3<f32> = x_17.x_ColorBalance;
  let x_138 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) * x_137);
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec4<f32> = u_xlat1;
  let x_169 : vec3<f32> = x_17.x_ColorFilter;
  let x_170 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) * x_169);
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = x_17.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), x_177);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = x_17.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), x_184);
  let x_187 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = x_17.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), x_191);
  let x_194 : vec4<f32> = u_xlat1;
  let x_198 : vec3<f32> = x_17.x_Gain;
  let x_202 : vec3<f32> = x_17.x_Lift;
  let x_203 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * x_198) + x_202);
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = log2(abs(vec3<f32>(x_206.x, x_206.y, x_206.z)));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat0;
  let x_228 : vec3<f32> = clamp(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_229 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = x_17.x_InvGamma;
  let x_246 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) * x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = exp2(vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = max(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_271 : f32 = u_xlat0.y;
  let x_273 : f32 = u_xlat0.z;
  u_xlatb12 = (x_271 >= x_273);
  let x_276 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_276);
  let x_278 : vec4<f32> = u_xlat0;
  let x_279 : vec2<f32> = vec2<f32>(x_278.z, x_278.y);
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat1;
  let x_288 : vec2<f32> = (vec2<f32>(x_283.y, x_283.z) + -(vec2<f32>(x_285.x, x_285.y)));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
  u_xlat1.z = -1.0f;
  u_xlat1.w = 0.666666687f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = -1.0f;
  let x_296 : f32 = u_xlat12;
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_296, x_296, x_296, x_296) * vec4<f32>(x_298.x, x_298.y, x_298.w, x_298.z)) + vec4<f32>(x_301.x, x_301.y, x_301.w, x_301.z));
  let x_305 : f32 = u_xlat0.x;
  let x_307 : f32 = u_xlat1.x;
  u_xlatb12 = (x_305 >= x_307);
  let x_309 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_309);
  let x_312 : f32 = u_xlat1.w;
  u_xlat2.z = x_312;
  let x_315 : f32 = u_xlat0.x;
  u_xlat1.w = x_315;
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_327 : vec4<f32> = u_xlat1;
  let x_328 : vec3<f32> = vec3<f32>(x_327.w, x_327.y, x_327.x);
  let x_329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_328.z);
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_331) + x_333);
  let x_335 : f32 = u_xlat12;
  let x_337 : vec4<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_335, x_335, x_335, x_335) * x_337) + x_339);
  let x_342 : f32 = u_xlat0.y;
  let x_344 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_342, x_344);
  let x_348 : f32 = u_xlat0.x;
  let x_350 : f32 = u_xlat1.x;
  u_xlat1.x = (x_348 + -(x_350));
  let x_356 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_356 * 6.0f) + 0.0001f);
  let x_365 : f32 = u_xlat0.y;
  let x_368 : f32 = u_xlat0.w;
  u_xlat4.x = (-(x_365) + x_368);
  let x_372 : f32 = u_xlat4.x;
  let x_374 : f32 = u_xlat5.x;
  u_xlat4.x = (x_372 / x_374);
  let x_378 : f32 = u_xlat4.x;
  let x_380 : f32 = u_xlat0.z;
  u_xlat4.x = (x_378 + x_380);
  let x_384 : f32 = u_xlat4.x;
  u_xlat2.x = abs(x_384);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = x_17.x_HueSatCon.x;
  u_xlat11.x = (x_389 + x_391);
  u_xlat3.y = 0.25f;
  u_xlat11.y = 0.25f;
  let x_407 : vec2<f32> = u_xlat11;
  let x_408 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_407, 0.0f);
  u_xlat4.x = x_408.x;
  let x_414 : vec3<f32> = u_xlat3;
  let x_416 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_414.x, x_414.y), 0.0f);
  u_xlat4.y = x_416.w;
  let x_419 : vec2<f32> = u_xlat4;
  u_xlat4 = x_419;
  let x_420 : vec2<f32> = u_xlat4;
  u_xlat4 = clamp(x_420, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_425 : f32 = u_xlat11.x;
  let x_427 : f32 = u_xlat4.x;
  u_xlat4.x = (x_425 + x_427);
  let x_430 : vec2<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_430.x, x_430.x, x_430.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_438 : f32 = u_xlat5.x;
  u_xlatb4 = (1.0f < x_438);
  let x_440 : bool = u_xlatb4;
  if (x_440) {
    let x_446 : f32 = u_xlat5.z;
    x_442 = x_446;
  } else {
    let x_449 : f32 = u_xlat5.x;
    x_442 = x_449;
  }
  let x_450 : f32 = x_442;
  u_xlat4.x = x_450;
  let x_453 : f32 = u_xlat5.x;
  u_xlatb12 = (x_453 < 0.0f);
  let x_455 : bool = u_xlatb12;
  if (x_455) {
    let x_460 : f32 = u_xlat5.y;
    x_456 = x_460;
  } else {
    let x_463 : f32 = u_xlat4.x;
    x_456 = x_463;
  }
  let x_464 : f32 = x_456;
  u_xlat4.x = x_464;
  let x_466 : vec2<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_466.x, x_466.x, x_466.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_471 : vec3<f32> = u_xlat5;
  u_xlat5 = fract(x_471);
  let x_473 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_473 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_479 : vec3<f32> = u_xlat5;
  u_xlat5 = (abs(x_479) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_482 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_482, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_486 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_489 : f32 = u_xlat0.x;
  u_xlat4.x = (x_489 + 0.0001f);
  let x_494 : f32 = u_xlat1.x;
  let x_496 : f32 = u_xlat4.x;
  u_xlat10.x = (x_494 / x_496);
  let x_499 : vec2<f32> = u_xlat10;
  let x_501 : vec3<f32> = u_xlat5;
  let x_504 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.x, x_499.x) * x_501) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat0;
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_507.x, x_507.x, x_507.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(x_512, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_515 : vec4<f32> = u_xlat0;
  let x_517 : vec4<f32> = u_xlat1;
  let x_520 : vec2<f32> = u_xlat4;
  let x_523 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.x, x_515.x) * vec3<f32>(x_517.x, x_517.y, x_517.z)) + -(vec3<f32>(x_520.x, x_520.x, x_520.x)));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  u_xlat2.y = 0.25f;
  u_xlat10.y = 0.25f;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_531.x, x_531.y), 0.0f);
  u_xlat0.x = x_533.y;
  let x_539 : vec2<f32> = u_xlat10;
  let x_540 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_539, 0.0f);
  u_xlat0.w = x_540.z;
  let x_543 : vec4<f32> = u_xlat0;
  let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.w);
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_545.y, x_545.z, x_544.y);
  let x_547 : vec4<f32> = u_xlat0;
  let x_551 : vec2<f32> = clamp(vec2<f32>(x_547.x, x_547.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_551.x, x_552.y, x_552.z, x_551.y);
  let x_555 : f32 = u_xlat0.x;
  let x_557 : f32 = u_xlat0.x;
  u_xlat0.x = (x_555 + x_557);
  let x_560 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_560.w, x_560.w), vec2<f32>(x_562.x, x_562.x));
  let x_567 : f32 = u_xlat0.x;
  let x_569 : f32 = u_xlat4.y;
  u_xlat0.x = (x_567 * x_569);
  let x_573 : vec3<f32> = x_17.x_HueSatCon;
  let x_575 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_573.y, x_573.y), vec2<f32>(x_575.x, x_575.x));
  let x_579 : vec4<f32> = u_xlat0;
  let x_581 : vec4<f32> = u_xlat1;
  let x_584 : vec2<f32> = u_xlat4;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.x, x_579.x) * vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584.x, x_584.x, x_584.x));
  let x_587 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = max(vec3<f32>(x_589.x, x_589.y, x_589.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat0;
  let x_601 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_602 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat0;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat0;
  let x_616 : vec3<f32> = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat2;
  let x_621 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621.x, x_621.y, x_621.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec4<f32> = u_xlat1;
  let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631.x, x_631.y, x_631.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat1;
  let x_641 : vec4<f32> = u_xlat0;
  let x_643 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) / vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat0;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_651 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat0;
  let x_655 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = max(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_663 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  SV_Target0.w = 1.0f;
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

