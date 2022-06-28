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
  @size(4)
  padding_8 : u32,
  x_CustomToneCurve : vec4<f32>,
  x_ToeSegmentA : vec4<f32>,
  x_ToeSegmentB : vec4<f32>,
  x_MidSegmentA : vec4<f32>,
  x_MidSegmentB : vec4<f32>,
  x_ShoSegmentA : vec4<f32>,
  x_ShoSegmentB : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(1) var x_Curves : texture_2d<f32>;

@group(0) @binding(2) var sampler_Curves : sampler;

var<private> u_xlatb5 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlatb11 : vec2<bool>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat10 : f32;

var<private> u_xlatb10 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_442 : f32;
  var x_456 : f32;
  var x_628 : vec4<f32>;
  var x_641 : vec4<f32>;
  var x_672 : vec2<f32>;
  var x_689 : vec2<f32>;
  var x_730 : vec4<f32>;
  var x_741 : vec4<f32>;
  var x_775 : f32;
  var x_787 : f32;
  var x_799 : f32;
  var x_811 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_825 : f32;
  var x_837 : f32;
  var x_849 : f32;
  var x_861 : f32;
  var x_900 : vec4<f32>;
  var x_911 : vec4<f32>;
  var x_964 : f32;
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
  u_xlatb15 = (x_271 >= x_273);
  let x_276 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_276);
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
  let x_296 : f32 = u_xlat15;
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_296, x_296, x_296, x_296) * vec4<f32>(x_298.x, x_298.y, x_298.w, x_298.z)) + vec4<f32>(x_301.x, x_301.y, x_301.w, x_301.z));
  let x_305 : f32 = u_xlat0.x;
  let x_307 : f32 = u_xlat1.x;
  u_xlatb15 = (x_305 >= x_307);
  let x_309 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_309);
  let x_312 : f32 = u_xlat1.w;
  u_xlat2.z = x_312;
  let x_315 : f32 = u_xlat0.x;
  u_xlat1.w = x_315;
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_326 : vec4<f32> = u_xlat1;
  let x_327 : vec3<f32> = vec3<f32>(x_326.w, x_326.y, x_326.x);
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_327.z);
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_330) + x_332);
  let x_334 : f32 = u_xlat15;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_334, x_334, x_334, x_334) * x_336) + x_338);
  let x_341 : f32 = u_xlat0.y;
  let x_343 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_341, x_343);
  let x_347 : f32 = u_xlat0.x;
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = (x_347 + -(x_349));
  let x_356 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_356 * 6.0f) + 0.0001f);
  let x_365 : f32 = u_xlat0.y;
  let x_368 : f32 = u_xlat0.w;
  u_xlat5.x = (-(x_365) + x_368);
  let x_372 : f32 = u_xlat5.x;
  let x_374 : f32 = u_xlat6.x;
  u_xlat5.x = (x_372 / x_374);
  let x_378 : f32 = u_xlat5.x;
  let x_380 : f32 = u_xlat0.z;
  u_xlat5.x = (x_378 + x_380);
  let x_384 : f32 = u_xlat5.x;
  u_xlat2.x = abs(x_384);
  let x_389 : f32 = u_xlat2.x;
  let x_391 : f32 = x_17.x_HueSatCon.x;
  u_xlat13.x = (x_389 + x_391);
  u_xlat3.y = 0.25f;
  u_xlat13.y = 0.25f;
  let x_407 : vec2<f32> = u_xlat13;
  let x_408 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_407, 0.0f);
  u_xlat5.x = x_408.x;
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_414.x, x_414.y), 0.0f);
  u_xlat5.y = x_416.w;
  let x_419 : vec2<f32> = u_xlat5;
  u_xlat5 = x_419;
  let x_420 : vec2<f32> = u_xlat5;
  u_xlat5 = clamp(x_420, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_425 : f32 = u_xlat13.x;
  let x_427 : f32 = u_xlat5.x;
  u_xlat5.x = (x_425 + x_427);
  let x_430 : vec2<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_430.x, x_430.x, x_430.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_438 : f32 = u_xlat6.x;
  u_xlatb5 = (1.0f < x_438);
  let x_440 : bool = u_xlatb5;
  if (x_440) {
    let x_446 : f32 = u_xlat6.z;
    x_442 = x_446;
  } else {
    let x_449 : f32 = u_xlat6.x;
    x_442 = x_449;
  }
  let x_450 : f32 = x_442;
  u_xlat5.x = x_450;
  let x_453 : f32 = u_xlat6.x;
  u_xlatb15 = (x_453 < 0.0f);
  let x_455 : bool = u_xlatb15;
  if (x_455) {
    let x_460 : f32 = u_xlat6.y;
    x_456 = x_460;
  } else {
    let x_463 : f32 = u_xlat5.x;
    x_456 = x_463;
  }
  let x_464 : f32 = x_456;
  u_xlat5.x = x_464;
  let x_466 : vec2<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_466.x, x_466.x, x_466.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_471 : vec3<f32> = u_xlat6;
  u_xlat6 = fract(x_471);
  let x_473 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_473 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_479 : vec3<f32> = u_xlat6;
  u_xlat6 = (abs(x_479) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_482 : vec3<f32> = u_xlat6;
  u_xlat6 = clamp(x_482, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_486 : vec3<f32> = u_xlat6;
  u_xlat6 = (x_486 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_489 : f32 = u_xlat0.x;
  u_xlat5.x = (x_489 + 0.0001f);
  let x_494 : f32 = u_xlat1.x;
  let x_496 : f32 = u_xlat5.x;
  u_xlat12.x = (x_494 / x_496);
  let x_499 : vec2<f32> = u_xlat12;
  let x_501 : vec3<f32> = u_xlat6;
  let x_504 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.x, x_499.x) * x_501) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat0;
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.x, x_507.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat1;
  let x_523 : vec2<f32> = u_xlat5;
  let x_526 : vec3<f32> = ((vec3<f32>(x_518.x, x_518.x, x_518.x) * vec3<f32>(x_520.x, x_520.y, x_520.z)) + -(vec3<f32>(x_523.x, x_523.x, x_523.x)));
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  u_xlat2.y = 0.25f;
  u_xlat12.y = 0.25f;
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_534.x, x_534.y), 0.0f);
  u_xlat0.x = x_536.y;
  let x_542 : vec2<f32> = u_xlat12;
  let x_543 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_542, 0.0f);
  u_xlat0.w = x_543.z;
  let x_546 : vec4<f32> = u_xlat0;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.w);
  let x_548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_547.x, x_548.y, x_548.z, x_547.y);
  let x_550 : vec4<f32> = u_xlat0;
  let x_554 : vec2<f32> = clamp(vec2<f32>(x_550.x, x_550.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_555.y, x_555.z, x_554.y);
  let x_558 : f32 = u_xlat0.x;
  let x_560 : f32 = u_xlat0.x;
  u_xlat0.x = (x_558 + x_560);
  let x_563 : vec4<f32> = u_xlat0;
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_563.w, x_563.w), vec2<f32>(x_565.x, x_565.x));
  let x_570 : f32 = u_xlat0.x;
  let x_572 : f32 = u_xlat5.y;
  u_xlat0.x = (x_570 * x_572);
  let x_576 : vec3<f32> = x_17.x_HueSatCon;
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_576.y, x_576.y), vec2<f32>(x_578.x, x_578.x));
  let x_582 : vec4<f32> = u_xlat0;
  let x_584 : vec4<f32> = u_xlat1;
  let x_587 : vec2<f32> = u_xlat5;
  let x_589 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.x, x_582.x) * vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_587.x, x_587.x, x_587.x));
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = max(vec3<f32>(x_592.x, x_592.y, x_592.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = x_17.x_CustomToneCurve;
  let x_603 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_601.x, x_601.x, x_601.x));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_609 : vec4<f32> = u_xlat1;
  let x_612 : vec4<f32> = x_17.x_CustomToneCurve;
  let x_615 : vec4<bool> = (vec4<f32>(x_609.z, x_609.z, x_609.z, x_609.z) < vec4<f32>(x_612.y, x_612.z, x_612.y, x_612.z));
  u_xlatb11 = vec2<bool>(x_615.x, x_615.y);
  let x_619 : vec4<f32> = u_xlat1;
  let x_622 : vec4<f32> = x_17.x_CustomToneCurve;
  u_xlatb2 = (vec4<f32>(x_619.x, x_619.x, x_619.y, x_619.y) < vec4<f32>(x_622.y, x_622.z, x_622.y, x_622.z));
  let x_626 : bool = u_xlatb11.y;
  if (x_626) {
    let x_633 : vec4<f32> = x_17.x_MidSegmentA;
    x_628 = x_633;
  } else {
    let x_637 : vec4<f32> = x_17.x_ShoSegmentA;
    x_628 = x_637;
  }
  let x_638 : vec4<f32> = x_628;
  u_xlat3 = x_638;
  let x_640 : bool = u_xlatb11.x;
  if (x_640) {
    let x_646 : vec4<f32> = x_17.x_ToeSegmentA;
    x_641 = x_646;
  } else {
    let x_648 : vec4<f32> = u_xlat3;
    x_641 = x_648;
  }
  let x_649 : vec4<f32> = x_641;
  u_xlat3 = x_649;
  let x_652 : f32 = u_xlat0.z;
  let x_654 : f32 = x_17.x_CustomToneCurve.x;
  let x_657 : f32 = u_xlat3.x;
  u_xlat10 = ((x_652 * x_654) + -(x_657));
  let x_661 : f32 = u_xlat3.z;
  let x_662 : f32 = u_xlat10;
  u_xlat10 = (x_661 * x_662);
  let x_664 : f32 = u_xlat10;
  u_xlat15 = log2(x_664);
  let x_667 : f32 = u_xlat10;
  u_xlatb10 = (0.0f < x_667);
  let x_670 : bool = u_xlatb11.y;
  if (x_670) {
    let x_677 : vec4<f32> = x_17.x_MidSegmentB;
    x_672 = vec2<f32>(x_677.x, x_677.y);
  } else {
    let x_682 : vec4<f32> = x_17.x_ShoSegmentB;
    x_672 = vec2<f32>(x_682.x, x_682.y);
  }
  let x_684 : vec2<f32> = x_672;
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
  let x_688 : bool = u_xlatb11.x;
  if (x_688) {
    let x_694 : vec4<f32> = x_17.x_ToeSegmentB;
    x_689 = vec2<f32>(x_694.x, x_694.y);
  } else {
    let x_697 : vec4<f32> = u_xlat1;
    x_689 = vec2<f32>(x_697.x, x_697.y);
  }
  let x_699 : vec2<f32> = x_689;
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
  let x_702 : f32 = u_xlat15;
  let x_704 : f32 = u_xlat1.y;
  u_xlat15 = (x_702 * x_704);
  let x_706 : f32 = u_xlat15;
  let x_710 : f32 = u_xlat1.x;
  u_xlat15 = ((x_706 * 0.693147182f) + x_710);
  let x_712 : f32 = u_xlat15;
  u_xlat15 = (x_712 * 1.442695022f);
  let x_715 : f32 = u_xlat15;
  u_xlat15 = exp2(x_715);
  let x_717 : bool = u_xlatb10;
  let x_718 : f32 = u_xlat15;
  u_xlat10 = select(0.0f, x_718, x_717);
  let x_720 : f32 = u_xlat10;
  let x_722 : f32 = u_xlat3.w;
  let x_725 : f32 = u_xlat3.y;
  u_xlat1.z = ((x_720 * x_722) + x_725);
  let x_729 : bool = u_xlatb2.y;
  if (x_729) {
    let x_734 : vec4<f32> = x_17.x_MidSegmentA;
    x_730 = x_734;
  } else {
    let x_737 : vec4<f32> = x_17.x_ShoSegmentA;
    x_730 = x_737;
  }
  let x_738 : vec4<f32> = x_730;
  u_xlat3 = x_738;
  let x_740 : bool = u_xlatb2.x;
  if (x_740) {
    let x_745 : vec4<f32> = x_17.x_ToeSegmentA;
    x_741 = x_745;
  } else {
    let x_747 : vec4<f32> = u_xlat3;
    x_741 = x_747;
  }
  let x_748 : vec4<f32> = x_741;
  u_xlat3 = x_748;
  let x_750 : f32 = u_xlat0.x;
  let x_752 : f32 = x_17.x_CustomToneCurve.x;
  let x_755 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_750 * x_752) + -(x_755));
  let x_760 : f32 = u_xlat3.z;
  let x_762 : f32 = u_xlat0.x;
  u_xlat0.x = (x_760 * x_762);
  let x_766 : f32 = u_xlat0.x;
  u_xlat10 = log2(x_766);
  let x_770 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_770);
  let x_774 : bool = u_xlatb2.y;
  if (x_774) {
    let x_779 : f32 = x_17.x_MidSegmentB.x;
    x_775 = x_779;
  } else {
    let x_782 : f32 = x_17.x_ShoSegmentB.x;
    x_775 = x_782;
  }
  let x_783 : f32 = x_775;
  u_xlat4.x = x_783;
  let x_786 : bool = u_xlatb2.y;
  if (x_786) {
    let x_791 : f32 = x_17.x_MidSegmentB.y;
    x_787 = x_791;
  } else {
    let x_794 : f32 = x_17.x_ShoSegmentB.y;
    x_787 = x_794;
  }
  let x_795 : f32 = x_787;
  u_xlat4.y = x_795;
  let x_798 : bool = u_xlatb2.w;
  if (x_798) {
    let x_803 : f32 = x_17.x_MidSegmentB.x;
    x_799 = x_803;
  } else {
    let x_806 : f32 = x_17.x_ShoSegmentB.x;
    x_799 = x_806;
  }
  let x_807 : f32 = x_799;
  u_xlat4.z = x_807;
  let x_810 : bool = u_xlatb2.w;
  if (x_810) {
    let x_815 : f32 = x_17.x_MidSegmentB.y;
    x_811 = x_815;
  } else {
    let x_818 : f32 = x_17.x_ShoSegmentB.y;
    x_811 = x_818;
  }
  let x_819 : f32 = x_811;
  u_xlat4.w = x_819;
  let x_822 : vec4<f32> = u_xlat4;
  hlslcc_movcTemp = x_822;
  let x_824 : bool = u_xlatb2.x;
  if (x_824) {
    let x_829 : f32 = x_17.x_ToeSegmentB.x;
    x_825 = x_829;
  } else {
    let x_832 : f32 = u_xlat4.x;
    x_825 = x_832;
  }
  let x_833 : f32 = x_825;
  hlslcc_movcTemp.x = x_833;
  let x_836 : bool = u_xlatb2.x;
  if (x_836) {
    let x_841 : f32 = x_17.x_ToeSegmentB.y;
    x_837 = x_841;
  } else {
    let x_844 : f32 = u_xlat4.y;
    x_837 = x_844;
  }
  let x_845 : f32 = x_837;
  hlslcc_movcTemp.y = x_845;
  let x_848 : bool = u_xlatb2.z;
  if (x_848) {
    let x_853 : f32 = x_17.x_ToeSegmentB.x;
    x_849 = x_853;
  } else {
    let x_856 : f32 = u_xlat4.z;
    x_849 = x_856;
  }
  let x_857 : f32 = x_849;
  hlslcc_movcTemp.z = x_857;
  let x_860 : bool = u_xlatb2.z;
  if (x_860) {
    let x_865 : f32 = x_17.x_ToeSegmentB.y;
    x_861 = x_865;
  } else {
    let x_868 : f32 = u_xlat4.w;
    x_861 = x_868;
  }
  let x_869 : f32 = x_861;
  hlslcc_movcTemp.w = x_869;
  let x_871 : vec4<f32> = hlslcc_movcTemp;
  u_xlat4 = x_871;
  let x_872 : f32 = u_xlat10;
  let x_874 : f32 = u_xlat4.y;
  u_xlat10 = (x_872 * x_874);
  let x_876 : f32 = u_xlat10;
  let x_879 : f32 = u_xlat4.x;
  u_xlat10 = ((x_876 * 0.693147182f) + x_879);
  let x_881 : f32 = u_xlat10;
  u_xlat10 = (x_881 * 1.442695022f);
  let x_883 : f32 = u_xlat10;
  u_xlat10 = exp2(x_883);
  let x_885 : bool = u_xlatb0;
  let x_886 : f32 = u_xlat10;
  u_xlat0.x = select(0.0f, x_886, x_885);
  let x_890 : f32 = u_xlat0.x;
  let x_892 : f32 = u_xlat3.w;
  let x_895 : f32 = u_xlat3.y;
  u_xlat1.x = ((x_890 * x_892) + x_895);
  let x_899 : bool = u_xlatb2.w;
  if (x_899) {
    let x_904 : vec4<f32> = x_17.x_MidSegmentA;
    x_900 = x_904;
  } else {
    let x_907 : vec4<f32> = x_17.x_ShoSegmentA;
    x_900 = x_907;
  }
  let x_908 : vec4<f32> = x_900;
  u_xlat3 = x_908;
  let x_910 : bool = u_xlatb2.z;
  if (x_910) {
    let x_915 : vec4<f32> = x_17.x_ToeSegmentA;
    x_911 = x_915;
  } else {
    let x_917 : vec4<f32> = u_xlat3;
    x_911 = x_917;
  }
  let x_918 : vec4<f32> = x_911;
  u_xlat2 = x_918;
  let x_920 : f32 = u_xlat0.y;
  let x_922 : f32 = x_17.x_CustomToneCurve.x;
  let x_925 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_920 * x_922) + -(x_925));
  let x_930 : f32 = u_xlat2.z;
  let x_932 : f32 = u_xlat0.x;
  u_xlat0.x = (x_930 * x_932);
  let x_936 : f32 = u_xlat0.x;
  u_xlat5.x = log2(x_936);
  let x_940 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_940);
  let x_943 : f32 = u_xlat5.x;
  let x_945 : f32 = u_xlat4.w;
  u_xlat5.x = (x_943 * x_945);
  let x_949 : f32 = u_xlat5.x;
  let x_952 : f32 = u_xlat4.z;
  u_xlat5.x = ((x_949 * 0.693147182f) + x_952);
  let x_956 : f32 = u_xlat5.x;
  u_xlat5.x = (x_956 * 1.442695022f);
  let x_960 : f32 = u_xlat5.x;
  u_xlat5.x = exp2(x_960);
  let x_963 : bool = u_xlatb0;
  if (x_963) {
    let x_968 : f32 = u_xlat5.x;
    x_964 = x_968;
  } else {
    x_964 = 0.0f;
  }
  let x_970 : f32 = x_964;
  u_xlat0.x = x_970;
  let x_973 : f32 = u_xlat0.x;
  let x_975 : f32 = u_xlat2.w;
  let x_978 : f32 = u_xlat2.y;
  u_xlat1.y = ((x_973 * x_975) + x_978);
  let x_983 : vec4<f32> = u_xlat1;
  let x_985 : vec3<f32> = max(vec3<f32>(x_983.x, x_983.y, x_983.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_986 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
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

