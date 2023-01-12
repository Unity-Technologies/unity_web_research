struct PGlobals {
  x_Lut2D_Params : vec4<f32>,
  x_ColorBalance : vec3<f32>,
  @size(4)
  padding : u32,
  x_ColorFilter : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_HueSatCon : vec3<f32>,
  x_Brightness : f32,
  x_ChannelMixerRed : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ChannelMixerGreen : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_ChannelMixerBlue : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Lift : vec3<f32>,
  @size(4)
  padding_5 : u32,
  x_InvGamma : vec3<f32>,
  @size(4)
  padding_6 : u32,
  x_Gain : vec3<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_Curves : texture_2d<f32>;

@group(0) @binding(1) var sampler_Curves : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb4 : bool;
  var x_432 : f32;
  var x_446 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
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
  let x_63 : vec3<f32> = (vec3<f32>(x_58.x, x_58.z, x_58.w) * vec3<f32>(x_61.w, x_61.w, x_61.w));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_70 : f32 = x_17.x_Brightness;
  let x_72 : f32 = x_17.x_Brightness;
  let x_74 : f32 = x_17.x_Brightness;
  let x_75 : vec3<f32> = vec3<f32>(x_70, x_72, x_74);
  let x_83 : vec3<f32> = ((vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_75.x, x_75.y, x_75.z)) + vec3<f32>(-0.217637643f, -0.217637643f, -0.217637643f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = x_17.x_HueSatCon;
  let x_96 : vec3<f32> = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_91.z, x_91.z, x_91.z)) + vec3<f32>(0.217637643f, 0.217637643f, 0.217637643f));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_124 : vec4<f32> = u_xlat1;
  let x_128 : vec3<f32> = x_17.x_ColorBalance;
  let x_129 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) * x_128);
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_156 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = x_17.x_ColorFilter;
  let x_161 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * x_160);
  let x_162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_164 : vec4<f32> = u_xlat0;
  let x_168 : vec3<f32> = x_17.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), x_168);
  let x_171 : vec4<f32> = u_xlat0;
  let x_175 : vec3<f32> = x_17.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), x_175);
  let x_178 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = x_17.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), x_182);
  let x_185 : vec4<f32> = u_xlat1;
  let x_189 : vec3<f32> = x_17.x_Gain;
  let x_193 : vec3<f32> = x_17.x_Lift;
  let x_194 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * x_189) + x_193);
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : vec4<f32> = u_xlat0;
  let x_200 : vec3<f32> = log2(abs(vec3<f32>(x_197.x, x_197.y, x_197.z)));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = clamp(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = x_17.x_InvGamma;
  let x_237 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) * x_236);
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = exp2(vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = max(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_262 : f32 = u_xlat0.y;
  let x_264 : f32 = u_xlat0.z;
  u_xlatb12 = (x_262 >= x_264);
  let x_267 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_267);
  let x_269 : vec4<f32> = u_xlat0;
  let x_270 : vec2<f32> = vec2<f32>(x_269.z, x_269.y);
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat1;
  let x_279 : vec2<f32> = (vec2<f32>(x_274.y, x_274.z) + -(vec2<f32>(x_276.x, x_276.y)));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  u_xlat1.z = -1.0f;
  u_xlat1.w = 0.666666687f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = -1.0f;
  let x_287 : f32 = u_xlat12;
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_287, x_287, x_287, x_287) * vec4<f32>(x_289.x, x_289.y, x_289.w, x_289.z)) + vec4<f32>(x_292.x, x_292.y, x_292.w, x_292.z));
  let x_296 : f32 = u_xlat0.x;
  let x_298 : f32 = u_xlat1.x;
  u_xlatb12 = (x_296 >= x_298);
  let x_300 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_300);
  let x_303 : f32 = u_xlat1.w;
  u_xlat2.z = x_303;
  let x_306 : f32 = u_xlat0.x;
  u_xlat1.w = x_306;
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_318 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = vec3<f32>(x_318.w, x_318.y, x_318.x);
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_320.z, x_319.z);
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_322) + x_324);
  let x_326 : f32 = u_xlat12;
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_326, x_326, x_326, x_326) * x_328) + x_330);
  let x_333 : f32 = u_xlat0.y;
  let x_335 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_333, x_335);
  let x_339 : f32 = u_xlat0.x;
  let x_341 : f32 = u_xlat1.x;
  u_xlat1.x = (x_339 + -(x_341));
  let x_347 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_347 * 6.0f) + 0.0001f);
  let x_356 : f32 = u_xlat0.y;
  let x_359 : f32 = u_xlat0.w;
  u_xlat4.x = (-(x_356) + x_359);
  let x_363 : f32 = u_xlat4.x;
  let x_365 : f32 = u_xlat5.x;
  u_xlat4.x = (x_363 / x_365);
  let x_369 : f32 = u_xlat4.x;
  let x_371 : f32 = u_xlat0.z;
  u_xlat4.x = (x_369 + x_371);
  let x_375 : f32 = u_xlat4.x;
  u_xlat2.x = abs(x_375);
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = x_17.x_HueSatCon.x;
  u_xlat11.x = (x_380 + x_382);
  u_xlat3.y = 0.25f;
  u_xlat11.y = 0.25f;
  let x_398 : vec2<f32> = u_xlat11;
  let x_399 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_398, 0.0f);
  u_xlat4.x = x_399.x;
  let x_405 : vec3<f32> = u_xlat3;
  let x_407 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_405.x, x_405.y), 0.0f);
  u_xlat4.y = x_407.w;
  let x_410 : vec2<f32> = u_xlat4;
  u_xlat4 = x_410;
  let x_411 : vec2<f32> = u_xlat4;
  u_xlat4 = clamp(x_411, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_416 : f32 = u_xlat11.x;
  let x_418 : f32 = u_xlat4.x;
  u_xlat4.x = (x_416 + x_418);
  let x_421 : vec2<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_421.x, x_421.x, x_421.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_429 : f32 = u_xlat5.x;
  u_xlatb4 = (1.0f < x_429);
  let x_431 : bool = u_xlatb4;
  if (x_431) {
    let x_436 : f32 = u_xlat5.z;
    x_432 = x_436;
  } else {
    let x_439 : f32 = u_xlat5.x;
    x_432 = x_439;
  }
  let x_440 : f32 = x_432;
  u_xlat4.x = x_440;
  let x_443 : f32 = u_xlat5.x;
  u_xlatb12 = (x_443 < 0.0f);
  let x_445 : bool = u_xlatb12;
  if (x_445) {
    let x_450 : f32 = u_xlat5.y;
    x_446 = x_450;
  } else {
    let x_453 : f32 = u_xlat4.x;
    x_446 = x_453;
  }
  let x_454 : f32 = x_446;
  u_xlat4.x = x_454;
  let x_456 : vec2<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_456.x, x_456.x, x_456.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_461 : vec3<f32> = u_xlat5;
  u_xlat5 = fract(x_461);
  let x_463 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_463 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_469 : vec3<f32> = u_xlat5;
  u_xlat5 = (abs(x_469) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_472 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_472, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_476 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_476 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_479 : f32 = u_xlat0.x;
  u_xlat4.x = (x_479 + 0.0001f);
  let x_484 : f32 = u_xlat1.x;
  let x_486 : f32 = u_xlat4.x;
  u_xlat10.x = (x_484 / x_486);
  let x_489 : vec2<f32> = u_xlat10;
  let x_491 : vec3<f32> = u_xlat5;
  let x_494 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.x, x_489.x) * x_491) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_499 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_497.x, x_497.x, x_497.x) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(x_502, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_505 : vec4<f32> = u_xlat0;
  let x_507 : vec4<f32> = u_xlat1;
  let x_510 : vec2<f32> = u_xlat4;
  let x_513 : vec3<f32> = ((vec3<f32>(x_505.x, x_505.x, x_505.x) * vec3<f32>(x_507.x, x_507.y, x_507.z)) + -(vec3<f32>(x_510.x, x_510.x, x_510.x)));
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  u_xlat2.y = 0.25f;
  u_xlat10.y = 0.25f;
  let x_521 : vec4<f32> = u_xlat2;
  let x_523 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_521.x, x_521.y), 0.0f);
  u_xlat0.x = x_523.y;
  let x_529 : vec2<f32> = u_xlat10;
  let x_530 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_529, 0.0f);
  u_xlat0.w = x_530.z;
  let x_533 : vec4<f32> = u_xlat0;
  let x_534 : vec2<f32> = vec2<f32>(x_533.x, x_533.w);
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_534.x, x_535.y, x_535.z, x_534.y);
  let x_537 : vec4<f32> = u_xlat0;
  let x_541 : vec2<f32> = clamp(vec2<f32>(x_537.x, x_537.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_541.x, x_542.y, x_542.z, x_541.y);
  let x_545 : f32 = u_xlat0.x;
  let x_547 : f32 = u_xlat0.x;
  u_xlat0.x = (x_545 + x_547);
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_550.w, x_550.w), vec2<f32>(x_552.x, x_552.x));
  let x_557 : f32 = u_xlat0.x;
  let x_559 : f32 = u_xlat4.y;
  u_xlat0.x = (x_557 * x_559);
  let x_563 : vec3<f32> = x_17.x_HueSatCon;
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_563.y, x_563.y), vec2<f32>(x_565.x, x_565.x));
  let x_569 : vec4<f32> = u_xlat0;
  let x_571 : vec4<f32> = u_xlat1;
  let x_574 : vec2<f32> = u_xlat4;
  let x_576 : vec3<f32> = ((vec3<f32>(x_569.x, x_569.x, x_569.x) * vec3<f32>(x_571.x, x_571.y, x_571.z)) + vec3<f32>(x_574.x, x_574.x, x_574.x));
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = clamp(vec3<f32>(x_579.x, x_579.y, x_579.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  u_xlat0.w = 0.75f;
  let x_598 : vec4<f32> = u_xlat0;
  let x_600 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_598.x, x_598.w));
  u_xlat1.x = x_600.w;
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = x_604;
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_607, 0.0f, 1.0f);
  let x_613 : vec4<f32> = u_xlat0;
  let x_615 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_613.y, x_613.w));
  u_xlat5.x = x_615.w;
  let x_621 : vec4<f32> = u_xlat0;
  let x_623 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_621.z, x_621.w));
  u_xlat5.y = x_623.w;
  let x_626 : vec3<f32> = u_xlat5;
  let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_628.x, x_627.x, x_627.y, x_628.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_634 : vec2<f32> = clamp(vec2<f32>(x_630.y, x_630.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_635.x, x_634.x, x_634.y, x_635.w);
  let x_637 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  u_xlat0.w = 0.75f;
  let x_646 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_646.x, x_646.w));
  u_xlat0.x = x_648.x;
  let x_654 : f32 = u_xlat0.x;
  SV_Target0.x = x_654;
  let x_658 : f32 = SV_Target0.x;
  SV_Target0.x = clamp(x_658, 0.0f, 1.0f);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_664.y, x_664.w));
  u_xlat0.x = x_666.y;
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = textureSample(x_Curves, sampler_Curves, vec2<f32>(x_672.z, x_672.w));
  u_xlat0.y = x_674.z;
  let x_677 : vec4<f32> = u_xlat0;
  let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
  let x_679 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_679.x, x_678.x, x_678.y, x_679.w);
  let x_681 : vec4<f32> = SV_Target0;
  let x_685 : vec2<f32> = clamp(vec2<f32>(x_681.y, x_681.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_686.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

