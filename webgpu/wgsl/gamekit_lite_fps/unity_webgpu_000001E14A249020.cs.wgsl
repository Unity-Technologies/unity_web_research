struct Params {
  x_Size : vec4<f32>,
  x_ColorBalance : vec4<f32>,
  x_ColorFilter : vec4<f32>,
  x_HueSatCon : vec4<f32>,
  x_ChannelMixerRed : vec4<f32>,
  x_ChannelMixerGreen : vec4<f32>,
  x_ChannelMixerBlue : vec4<f32>,
  x_Lift : vec4<f32>,
  x_InvGamma : vec4<f32>,
  x_Gain : vec4<f32>,
  x_CustomToneCurve : vec4<f32>,
  x_ToeSegmentA : vec4<f32>,
  x_ToeSegmentB : vec4<f32>,
  x_MidSegmentA : vec4<f32>,
  x_MidSegmentB : vec4<f32>,
  x_ShoSegmentA : vec4<f32>,
  x_ShoSegmentB : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var<uniform> x_27 : Params;

var<private> u_xlatb12 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(1) var x_Curves : texture_2d<f32>;

@group(0) @binding(3) var sampler_Curves : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb9 : bool;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlatb4 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlatb8 : bool;

@group(0) @binding(2) var x_Output_origX0X : texture_storage_3d<rgba32float, write>;

fn main_1() {
  var x_502 : f32;
  var x_513 : f32;
  var x_714 : f32;
  var x_835 : f32;
  var x_950 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec3<u32> = gl_GlobalInvocationID;
  let x_16 : vec3<f32> = vec3<f32>(x_14);
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_16.z, x_17.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = x_27.x_Size;
  let x_35 : vec4<bool> = (vec4<f32>(x_23.x, x_23.y, x_23.z, x_23.x) < vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  u_xlatb1 = vec3<bool>(x_35.x, x_35.y, x_35.z);
  let x_41 : bool = u_xlatb1.y;
  let x_44 : bool = u_xlatb1.x;
  u_xlatb12 = (x_41 & x_44);
  let x_48 : bool = u_xlatb1.z;
  let x_49 : bool = u_xlatb12;
  u_xlatb12 = (x_48 & x_49);
  let x_51 : bool = u_xlatb12;
  if (x_51) {
    let x_54 : vec4<f32> = u_xlat0;
    let x_57 : vec4<f32> = x_27.x_Size;
    let x_62 : vec3<f32> = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_57.y, x_57.y, x_57.y)) + vec3<f32>(-0.413588405f, -0.413588405f, -0.413588405f));
    let x_63 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
    let x_65 : vec4<f32> = u_xlat0;
    let x_69 : vec4<f32> = x_27.x_HueSatCon;
    let x_74 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_69.z, x_69.z, x_69.z)) + vec3<f32>(0.027552396f, 0.027552396f, 0.027552396f));
    let x_75 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
    let x_77 : vec4<f32> = u_xlat0;
    let x_81 : vec3<f32> = (vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(13.605482101f, 13.605482101f, 13.605482101f));
    let x_82 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
    let x_84 : vec4<f32> = u_xlat0;
    let x_86 : vec3<f32> = exp2(vec3<f32>(x_84.x, x_84.y, x_84.z));
    let x_87 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
    let x_89 : vec4<f32> = u_xlat0;
    let x_93 : vec3<f32> = (vec3<f32>(x_89.x, x_89.y, x_89.z) + vec3<f32>(-0.047995999f, -0.047995999f, -0.047995999f));
    let x_94 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
    let x_96 : vec4<f32> = u_xlat0;
    let x_100 : vec3<f32> = (vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(0.179999992f, 0.179999992f, 0.179999992f));
    let x_101 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
    let x_108 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_108.x, x_108.y, x_108.z));
    let x_117 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_117.x, x_117.y, x_117.z));
    let x_125 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_125.x, x_125.y, x_125.z));
    let x_129 : vec4<f32> = u_xlat1;
    let x_133 : vec4<f32> = x_27.x_ColorBalance;
    let x_135 : vec3<f32> = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_133.x, x_133.y, x_133.z));
    let x_136 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
    let x_142 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_150 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_150.x, x_150.y, x_150.z));
    let x_158 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_162 : vec4<f32> = u_xlat1;
    let x_166 : vec4<f32> = x_27.x_ColorFilter;
    let x_168 : vec3<f32> = (vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : vec4<f32> = u_xlat0;
    let x_175 : vec4<f32> = x_27.x_ChannelMixerRed;
    u_xlat1.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_175.x, x_175.y, x_175.z));
    let x_179 : vec4<f32> = u_xlat0;
    let x_183 : vec4<f32> = x_27.x_ChannelMixerGreen;
    u_xlat1.y = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_187 : vec4<f32> = u_xlat0;
    let x_191 : vec4<f32> = x_27.x_ChannelMixerBlue;
    u_xlat1.z = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_195 : vec4<f32> = u_xlat1;
    let x_199 : vec4<f32> = x_27.x_Gain;
    let x_204 : vec4<f32> = x_27.x_Lift;
    let x_206 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat0;
    let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
    let x_217 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat1;
    let x_225 : vec3<f32> = clamp(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_226 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat1;
    let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_236 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat0;
    let x_241 : vec3<f32> = log2(abs(vec3<f32>(x_238.x, x_238.y, x_238.z)));
    let x_242 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_244 : vec4<f32> = u_xlat0;
    let x_248 : vec4<f32> = x_27.x_InvGamma;
    let x_250 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_248.x, x_248.y, x_248.z));
    let x_251 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : vec4<f32> = u_xlat0;
    let x_255 : vec3<f32> = exp2(vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = u_xlat1;
    let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat0;
    let x_268 : vec3<f32> = max(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_269 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_272 : f32 = u_xlat0.y;
    let x_274 : f32 = u_xlat0.z;
    u_xlatb12 = (x_272 >= x_274);
    let x_277 : bool = u_xlatb12;
    u_xlat12 = select(0.0f, 1.0f, x_277);
    let x_280 : vec4<f32> = u_xlat0;
    let x_281 : vec2<f32> = vec2<f32>(x_280.z, x_280.y);
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
    u_xlat1.z = -1.0f;
    u_xlat1.w = 0.666666687f;
    let x_289 : vec4<f32> = u_xlat0;
    let x_291 : vec4<f32> = u_xlat1;
    let x_294 : vec2<f32> = (vec2<f32>(x_289.y, x_289.z) + -(vec2<f32>(x_291.x, x_291.y)));
    let x_295 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_295.w);
    u_xlat2.z = 1.0f;
    u_xlat2.w = -1.0f;
    let x_299 : f32 = u_xlat12;
    let x_301 : vec4<f32> = u_xlat2;
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = ((vec4<f32>(x_299, x_299, x_299, x_299) * x_301) + x_303);
    let x_306 : f32 = u_xlat0.x;
    let x_308 : f32 = u_xlat1.x;
    u_xlatb12 = (x_306 >= x_308);
    let x_310 : bool = u_xlatb12;
    u_xlat12 = select(0.0f, 1.0f, x_310);
    let x_312 : vec4<f32> = u_xlat1;
    let x_313 : vec3<f32> = vec3<f32>(x_312.x, x_312.y, x_312.w);
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_317 : f32 = u_xlat0.x;
    u_xlat2.w = x_317;
    let x_319 : vec4<f32> = u_xlat2;
    let x_320 : vec3<f32> = vec3<f32>(x_319.w, x_319.y, x_319.x);
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_321.z, x_320.z);
    let x_323 : vec4<f32> = u_xlat2;
    let x_325 : vec4<f32> = u_xlat1;
    u_xlat1 = (-(x_323) + x_325);
    let x_327 : f32 = u_xlat12;
    let x_329 : vec4<f32> = u_xlat1;
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat1 = ((vec4<f32>(x_327, x_327, x_327, x_327) * x_329) + x_331);
    let x_334 : f32 = u_xlat1.y;
    let x_336 : f32 = u_xlat1.w;
    u_xlat12 = min(x_334, x_336);
    let x_338 : f32 = u_xlat12;
    let x_341 : f32 = u_xlat1.x;
    u_xlat12 = (-(x_338) + x_341);
    let x_346 : f32 = u_xlat1.y;
    let x_349 : f32 = u_xlat1.w;
    u_xlat5.x = (-(x_346) + x_349);
    let x_353 : f32 = u_xlat12;
    u_xlat13 = ((x_353 * 6.0f) + 0.0001f);
    let x_359 : f32 = u_xlat5.x;
    let x_360 : f32 = u_xlat13;
    u_xlat5.x = (x_359 / x_360);
    let x_364 : f32 = u_xlat5.x;
    let x_366 : f32 = u_xlat1.z;
    u_xlat5.x = (x_364 + x_366);
    let x_370 : f32 = u_xlat5.x;
    u_xlat2.x = abs(x_370);
    let x_374 : f32 = u_xlat1.x;
    u_xlat5.x = (x_374 + 0.0001f);
    let x_379 : f32 = u_xlat12;
    let x_381 : f32 = u_xlat5.x;
    u_xlat10.x = (x_379 / x_381);
    u_xlat2.y = 0.25f;
    u_xlat10.y = 0.25f;
    let x_397 : vec4<f32> = u_xlat2;
    let x_399 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_397.x, x_397.y), 0.0f);
    u_xlat12 = x_399.y;
    let x_401 : f32 = u_xlat12;
    u_xlat12 = x_401;
    let x_402 : f32 = u_xlat12;
    u_xlat12 = clamp(x_402, 0.0f, 1.0f);
    let x_404 : f32 = u_xlat12;
    let x_405 : f32 = u_xlat12;
    u_xlat12 = (x_404 + x_405);
    let x_410 : vec2<f32> = u_xlat10;
    let x_411 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_410, 0.0f);
    u_xlat5.x = x_411.z;
    let x_415 : f32 = u_xlat5.x;
    u_xlat5.x = x_415;
    let x_418 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_418, 0.0f, 1.0f);
    let x_421 : vec3<f32> = u_xlat5;
    let x_423 : f32 = u_xlat12;
    u_xlat12 = dot(vec2<f32>(x_421.x, x_421.x), vec2<f32>(x_423, x_423));
    let x_427 : vec4<f32> = u_xlat0;
    u_xlat3.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    u_xlat3.y = 0.25f;
    u_xlat11.y = 0.25f;
    let x_441 : vec3<f32> = u_xlat3;
    let x_443 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_441.x, x_441.y), 0.0f);
    u_xlat0.x = x_443.w;
    let x_447 : f32 = u_xlat0.x;
    u_xlat0.x = x_447;
    let x_450 : f32 = u_xlat0.x;
    u_xlat0.x = clamp(x_450, 0.0f, 1.0f);
    let x_453 : f32 = u_xlat12;
    let x_455 : f32 = u_xlat0.x;
    u_xlat0.x = (x_453 * x_455);
    let x_459 : f32 = u_xlat2.x;
    let x_462 : f32 = x_27.x_HueSatCon.x;
    u_xlat11.x = (x_459 + x_462);
    let x_469 : vec2<f32> = u_xlat11;
    let x_470 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_469, 0.0f);
    u_xlat4.x = x_470.x;
    let x_474 : f32 = u_xlat4.x;
    u_xlat4.x = x_474;
    let x_477 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_477, 0.0f, 1.0f);
    let x_481 : f32 = u_xlat11.x;
    let x_483 : f32 = u_xlat4.x;
    u_xlat4.x = (x_481 + x_483);
    let x_486 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_486.x, x_486.x, x_486.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
    let x_494 : f32 = u_xlat4.x;
    u_xlatb5 = (x_494 < 0.0f);
    let x_498 : f32 = u_xlat4.x;
    u_xlatb9 = (1.0f < x_498);
    let x_500 : bool = u_xlatb9;
    if (x_500) {
      let x_506 : f32 = u_xlat4.z;
      x_502 = x_506;
    } else {
      let x_509 : f32 = u_xlat4.x;
      x_502 = x_509;
    }
    let x_510 : f32 = x_502;
    u_xlat4.x = x_510;
    let x_512 : bool = u_xlatb5;
    if (x_512) {
      let x_517 : f32 = u_xlat4.y;
      x_513 = x_517;
    } else {
      let x_520 : f32 = u_xlat4.x;
      x_513 = x_520;
    }
    let x_521 : f32 = x_513;
    u_xlat4.x = x_521;
    let x_523 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_523.x, x_523.x, x_523.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
    let x_528 : vec3<f32> = u_xlat4;
    u_xlat4 = fract(x_528);
    let x_530 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_530 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
    let x_536 : vec3<f32> = u_xlat4;
    u_xlat4 = (abs(x_536) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_539 : vec3<f32> = u_xlat4;
    u_xlat4 = clamp(x_539, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_543 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_543 + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_545 : vec2<f32> = u_xlat10;
    let x_547 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_545.x, x_545.x, x_545.x) * x_547) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_551 : vec3<f32> = u_xlat4;
    let x_552 : vec4<f32> = u_xlat1;
    u_xlat5 = (x_551 * vec3<f32>(x_552.x, x_552.x, x_552.x));
    let x_556 : vec4<f32> = x_27.x_HueSatCon;
    let x_558 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_556.y, x_556.y), vec2<f32>(x_558.x, x_558.x));
    let x_562 : vec3<f32> = u_xlat5;
    u_xlat5.x = dot(x_562, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    let x_565 : vec4<f32> = u_xlat1;
    let x_567 : vec3<f32> = u_xlat4;
    let x_569 : vec3<f32> = u_xlat5;
    u_xlat4 = ((vec3<f32>(x_565.x, x_565.x, x_565.x) * x_567) + -(vec3<f32>(x_569.x, x_569.x, x_569.x)));
    let x_573 : vec4<f32> = u_xlat0;
    let x_575 : vec3<f32> = u_xlat4;
    let x_577 : vec3<f32> = u_xlat5;
    let x_579 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.x, x_573.x) * x_575) + vec3<f32>(x_577.x, x_577.x, x_577.x));
    let x_580 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : vec4<f32> = u_xlat0;
    let x_584 : vec3<f32> = max(vec3<f32>(x_582.x, x_582.y, x_582.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_585 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_587 : vec4<f32> = u_xlat0;
    let x_591 : vec4<f32> = x_27.x_CustomToneCurve;
    let x_593 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_591.x, x_591.x, x_591.x));
    let x_594 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
    let x_597 : vec4<f32> = u_xlat1;
    let x_600 : vec4<f32> = x_27.x_CustomToneCurve;
    let x_602 : vec4<bool> = (vec4<f32>(x_597.x, x_597.y, x_597.z, x_597.x) < vec4<f32>(x_600.y, x_600.y, x_600.y, x_600.y));
    u_xlatb2 = vec3<bool>(x_602.x, x_602.y, x_602.z);
    let x_605 : bool = u_xlatb2.x;
    if (x_605) {
      let x_610 : vec4<f32> = x_27.x_ToeSegmentA;
      let x_611 : vec2<f32> = vec2<f32>(x_610.z, x_610.w);
      let x_612 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_611.x, x_612.y, x_612.z, x_611.y);
      let x_615 : f32 = x_27.x_ToeSegmentA.x;
      u_xlat12 = x_615;
      let x_617 : f32 = x_27.x_ToeSegmentA.y;
      u_xlat13 = x_617;
      let x_620 : vec4<f32> = x_27.x_ToeSegmentB;
      let x_621 : vec2<f32> = vec2<f32>(x_620.x, x_620.y);
      let x_622 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_621.x, x_621.y, x_622.z);
    } else {
      let x_626 : f32 = u_xlat1.x;
      let x_628 : f32 = x_27.x_CustomToneCurve.z;
      u_xlatb1.x = (x_626 < x_628);
      let x_632 : bool = u_xlatb1.x;
      if (x_632) {
        let x_637 : vec4<f32> = x_27.x_MidSegmentA;
        let x_638 : vec2<f32> = vec2<f32>(x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_638.x, x_639.y, x_639.z, x_638.y);
        let x_642 : f32 = x_27.x_MidSegmentA.x;
        u_xlat12 = x_642;
        let x_644 : f32 = x_27.x_MidSegmentA.y;
        u_xlat13 = x_644;
        let x_647 : vec4<f32> = x_27.x_MidSegmentB;
        let x_648 : vec2<f32> = vec2<f32>(x_647.x, x_647.y);
        let x_649 : vec3<f32> = u_xlat3;
        u_xlat3 = vec3<f32>(x_648.x, x_648.y, x_649.z);
      } else {
        let x_654 : vec4<f32> = x_27.x_ShoSegmentA;
        let x_655 : vec2<f32> = vec2<f32>(x_654.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_655.x, x_656.y, x_656.z, x_655.y);
        let x_659 : f32 = x_27.x_ShoSegmentA.x;
        u_xlat12 = x_659;
        let x_661 : f32 = x_27.x_ShoSegmentA.y;
        u_xlat13 = x_661;
        let x_664 : vec4<f32> = x_27.x_ShoSegmentB;
        let x_665 : vec2<f32> = vec2<f32>(x_664.x, x_664.y);
        let x_666 : vec3<f32> = u_xlat3;
        u_xlat3 = vec3<f32>(x_665.x, x_665.y, x_666.z);
      }
    }
    let x_669 : f32 = u_xlat0.x;
    let x_671 : f32 = x_27.x_CustomToneCurve.x;
    let x_673 : f32 = u_xlat12;
    u_xlat0.x = ((x_669 * x_671) + -(x_673));
    let x_678 : f32 = u_xlat2.x;
    let x_680 : f32 = u_xlat0.x;
    u_xlat0.x = (x_678 * x_680);
    let x_684 : f32 = u_xlat0.x;
    u_xlatb12 = (0.0f < x_684);
    let x_687 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_687);
    let x_691 : f32 = u_xlat0.x;
    let x_693 : f32 = u_xlat3.y;
    u_xlat0.x = (x_691 * x_693);
    let x_697 : f32 = u_xlat0.x;
    let x_701 : f32 = u_xlat3.x;
    u_xlat0.x = ((x_697 * 0.693147182f) + x_701);
    let x_705 : f32 = u_xlat0.x;
    u_xlat0.x = (x_705 * 1.442695022f);
    let x_710 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_710);
    let x_713 : bool = u_xlatb12;
    if (x_713) {
      let x_718 : f32 = u_xlat0.x;
      x_714 = x_718;
    } else {
      x_714 = 0.0f;
    }
    let x_720 : f32 = x_714;
    u_xlat0.x = x_720;
    let x_723 : f32 = u_xlat0.x;
    let x_725 : f32 = u_xlat2.w;
    let x_727 : f32 = u_xlat13;
    u_xlat3.x = ((x_723 * x_725) + x_727);
    let x_731 : bool = u_xlatb2.y;
    if (x_731) {
      let x_735 : vec4<f32> = x_27.x_ToeSegmentA;
      let x_736 : vec2<f32> = vec2<f32>(x_735.z, x_735.w);
      let x_737 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_736.x, x_737.y, x_737.z, x_736.y);
      let x_740 : vec4<f32> = x_27.x_ToeSegmentA;
      let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
      let x_742 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_741.x, x_742.y, x_742.z, x_741.y);
      let x_745 : vec4<f32> = x_27.x_ToeSegmentB;
      let x_746 : vec2<f32> = vec2<f32>(x_745.x, x_745.y);
      let x_747 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
    } else {
      let x_751 : f32 = u_xlat1.y;
      let x_753 : f32 = x_27.x_CustomToneCurve.z;
      u_xlatb5 = (x_751 < x_753);
      let x_755 : bool = u_xlatb5;
      if (x_755) {
        let x_759 : vec4<f32> = x_27.x_MidSegmentA;
        let x_760 : vec2<f32> = vec2<f32>(x_759.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_760.x, x_761.y, x_761.z, x_760.y);
        let x_764 : vec4<f32> = x_27.x_MidSegmentA;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_766 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_765.x, x_766.y, x_766.z, x_765.y);
        let x_769 : vec4<f32> = x_27.x_MidSegmentB;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_771 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
      } else {
        let x_775 : vec4<f32> = x_27.x_ShoSegmentA;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_776.x, x_777.y, x_777.z, x_776.y);
        let x_780 : vec4<f32> = x_27.x_ShoSegmentA;
        let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
        let x_782 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_781.x, x_782.y, x_782.z, x_781.y);
        let x_785 : vec4<f32> = x_27.x_ShoSegmentB;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_787 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
      }
    }
    let x_790 : f32 = u_xlat0.y;
    let x_792 : f32 = x_27.x_CustomToneCurve.x;
    let x_795 : f32 = u_xlat1.x;
    u_xlat4.x = ((x_790 * x_792) + -(x_795));
    let x_800 : f32 = u_xlat0.x;
    let x_802 : f32 = u_xlat4.x;
    u_xlat0.x = (x_800 * x_802);
    let x_807 : f32 = u_xlat0.x;
    u_xlatb4 = (0.0f < x_807);
    let x_810 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_810);
    let x_814 : f32 = u_xlat0.x;
    let x_816 : f32 = u_xlat2.y;
    u_xlat0.x = (x_814 * x_816);
    let x_820 : f32 = u_xlat0.x;
    let x_823 : f32 = u_xlat2.x;
    u_xlat0.x = ((x_820 * 0.693147182f) + x_823);
    let x_827 : f32 = u_xlat0.x;
    u_xlat0.x = (x_827 * 1.442695022f);
    let x_831 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_831);
    let x_834 : bool = u_xlatb4;
    if (x_834) {
      let x_839 : f32 = u_xlat0.x;
      x_835 = x_839;
    } else {
      x_835 = 0.0f;
    }
    let x_841 : f32 = x_835;
    u_xlat0.x = x_841;
    let x_844 : f32 = u_xlat0.x;
    let x_846 : f32 = u_xlat0.w;
    let x_849 : f32 = u_xlat1.w;
    u_xlat3.y = ((x_844 * x_846) + x_849);
    let x_853 : bool = u_xlatb2.z;
    if (x_853) {
      let x_857 : vec4<f32> = x_27.x_ToeSegmentA;
      let x_858 : vec3<f32> = vec3<f32>(x_857.z, x_857.w, x_857.x);
      let x_859 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_858.z);
      let x_862 : f32 = x_27.x_ToeSegmentA.y;
      u_xlat1.x = x_862;
      let x_865 : vec4<f32> = x_27.x_ToeSegmentB;
      let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
      let x_867 : vec3<f32> = u_xlat5;
      u_xlat5 = vec3<f32>(x_866.x, x_867.y, x_866.y);
    } else {
      let x_871 : f32 = u_xlat1.z;
      let x_873 : f32 = x_27.x_CustomToneCurve.z;
      u_xlatb9 = (x_871 < x_873);
      let x_875 : bool = u_xlatb9;
      if (x_875) {
        let x_879 : vec4<f32> = x_27.x_MidSegmentA;
        let x_880 : vec3<f32> = vec3<f32>(x_879.z, x_879.w, x_879.x);
        let x_881 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_880.z);
        let x_884 : f32 = x_27.x_MidSegmentA.y;
        u_xlat1.x = x_884;
        let x_887 : vec4<f32> = x_27.x_MidSegmentB;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_889 : vec3<f32> = u_xlat5;
        u_xlat5 = vec3<f32>(x_888.x, x_889.y, x_888.y);
      } else {
        let x_893 : vec4<f32> = x_27.x_ShoSegmentA;
        let x_894 : vec3<f32> = vec3<f32>(x_893.z, x_893.w, x_893.x);
        let x_895 : vec4<f32> = u_xlat0;
        u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_894.z);
        let x_898 : f32 = x_27.x_ShoSegmentA.y;
        u_xlat1.x = x_898;
        let x_901 : vec4<f32> = x_27.x_ShoSegmentB;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_903 : vec3<f32> = u_xlat5;
        u_xlat5 = vec3<f32>(x_902.x, x_903.y, x_902.y);
      }
    }
    let x_907 : f32 = u_xlat0.z;
    let x_909 : f32 = x_27.x_CustomToneCurve.x;
    let x_912 : f32 = u_xlat0.w;
    u_xlat8 = ((x_907 * x_909) + -(x_912));
    let x_916 : f32 = u_xlat0.x;
    let x_917 : f32 = u_xlat8;
    u_xlat0.x = (x_916 * x_917);
    let x_922 : f32 = u_xlat0.x;
    u_xlatb8 = (0.0f < x_922);
    let x_925 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_925);
    let x_929 : f32 = u_xlat0.x;
    let x_931 : f32 = u_xlat5.z;
    u_xlat0.x = (x_929 * x_931);
    let x_935 : f32 = u_xlat0.x;
    let x_938 : f32 = u_xlat5.x;
    u_xlat0.x = ((x_935 * 0.693147182f) + x_938);
    let x_942 : f32 = u_xlat0.x;
    u_xlat0.x = (x_942 * 1.442695022f);
    let x_946 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_946);
    let x_949 : bool = u_xlatb8;
    if (x_949) {
      let x_954 : f32 = u_xlat0.x;
      x_950 = x_954;
    } else {
      x_950 = 0.0f;
    }
    let x_956 : f32 = x_950;
    u_xlat0.x = x_956;
    let x_959 : f32 = u_xlat0.x;
    let x_961 : f32 = u_xlat0.y;
    let x_964 : f32 = u_xlat1.x;
    u_xlat3.z = ((x_959 * x_961) + x_964);
    let x_967 : vec3<f32> = u_xlat3;
    let x_968 : vec3<f32> = max(x_967, vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_969 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
    u_xlat0.w = 1.0f;
    let x_976 : vec3<u32> = gl_GlobalInvocationID;
    let x_979 : vec4<f32> = u_xlat0;
    textureStore(x_Output_origX0X, bitcast<vec3<i32>>(x_976), x_979);
  }
  return;
}

@compute @workgroup_size(4i, 4i, 4i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

