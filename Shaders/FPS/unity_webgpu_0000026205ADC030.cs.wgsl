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

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb9 : bool;

@group(0) @binding(2) var x_Output_origX0X : texture_storage_3d<rgba32float, write>;

fn main_1() {
  var x_501 : f32;
  var x_512 : f32;
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
    let x_441 : vec2<f32> = u_xlat3;
    let x_442 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_441, 0.0f);
    u_xlat0.x = x_442.w;
    let x_446 : f32 = u_xlat0.x;
    u_xlat0.x = x_446;
    let x_449 : f32 = u_xlat0.x;
    u_xlat0.x = clamp(x_449, 0.0f, 1.0f);
    let x_452 : f32 = u_xlat12;
    let x_454 : f32 = u_xlat0.x;
    u_xlat0.x = (x_452 * x_454);
    let x_458 : f32 = u_xlat2.x;
    let x_461 : f32 = x_27.x_HueSatCon.x;
    u_xlat11.x = (x_458 + x_461);
    let x_468 : vec2<f32> = u_xlat11;
    let x_469 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_468, 0.0f);
    u_xlat4.x = x_469.x;
    let x_473 : f32 = u_xlat4.x;
    u_xlat4.x = x_473;
    let x_476 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_476, 0.0f, 1.0f);
    let x_480 : f32 = u_xlat11.x;
    let x_482 : f32 = u_xlat4.x;
    u_xlat4.x = (x_480 + x_482);
    let x_485 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_485.x, x_485.x, x_485.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
    let x_493 : f32 = u_xlat4.x;
    u_xlatb5 = (x_493 < 0.0f);
    let x_497 : f32 = u_xlat4.x;
    u_xlatb9 = (1.0f < x_497);
    let x_499 : bool = u_xlatb9;
    if (x_499) {
      let x_505 : f32 = u_xlat4.z;
      x_501 = x_505;
    } else {
      let x_508 : f32 = u_xlat4.x;
      x_501 = x_508;
    }
    let x_509 : f32 = x_501;
    u_xlat4.x = x_509;
    let x_511 : bool = u_xlatb5;
    if (x_511) {
      let x_516 : f32 = u_xlat4.y;
      x_512 = x_516;
    } else {
      let x_519 : f32 = u_xlat4.x;
      x_512 = x_519;
    }
    let x_520 : f32 = x_512;
    u_xlat4.x = x_520;
    let x_522 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_522.x, x_522.x, x_522.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
    let x_527 : vec3<f32> = u_xlat4;
    u_xlat4 = fract(x_527);
    let x_529 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_529 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
    let x_535 : vec3<f32> = u_xlat4;
    u_xlat4 = (abs(x_535) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_538 : vec3<f32> = u_xlat4;
    u_xlat4 = clamp(x_538, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_542 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_542 + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_544 : vec2<f32> = u_xlat10;
    let x_546 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_544.x, x_544.x, x_544.x) * x_546) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_550 : vec3<f32> = u_xlat4;
    let x_551 : vec4<f32> = u_xlat1;
    u_xlat5 = (x_550 * vec3<f32>(x_551.x, x_551.x, x_551.x));
    let x_555 : vec4<f32> = x_27.x_HueSatCon;
    let x_557 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_555.y, x_555.y), vec2<f32>(x_557.x, x_557.x));
    let x_561 : vec3<f32> = u_xlat5;
    u_xlat5.x = dot(x_561, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    let x_564 : vec4<f32> = u_xlat1;
    let x_566 : vec3<f32> = u_xlat4;
    let x_568 : vec3<f32> = u_xlat5;
    u_xlat4 = ((vec3<f32>(x_564.x, x_564.x, x_564.x) * x_566) + -(vec3<f32>(x_568.x, x_568.x, x_568.x)));
    let x_572 : vec4<f32> = u_xlat0;
    let x_574 : vec3<f32> = u_xlat4;
    let x_576 : vec3<f32> = u_xlat5;
    let x_578 : vec3<f32> = ((vec3<f32>(x_572.x, x_572.x, x_572.x) * x_574) + vec3<f32>(x_576.x, x_576.x, x_576.x));
    let x_579 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
    let x_581 : vec4<f32> = u_xlat0;
    let x_583 : vec3<f32> = max(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_584 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    u_xlat0.w = 1.0f;
    let x_591 : vec3<u32> = gl_GlobalInvocationID;
    let x_594 : vec4<f32> = u_xlat0;
    textureStore(x_Output_origX0X, bitcast<vec3<i32>>(x_591), x_594);
  }
  return;
}

@compute @workgroup_size(4i, 4i, 4i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

