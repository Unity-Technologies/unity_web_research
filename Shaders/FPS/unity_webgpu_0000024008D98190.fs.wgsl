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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlatb12 : bool;

var<private> u_xlat12 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

@group(0) @binding(1) var x_Curves : texture_2d<f32>;

@group(0) @binding(2) var sampler_Curves : sampler;

var<private> u_xlatb4 : bool;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlatb13 : bool;

var<private> u_xlatb5 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_194 : f32;
  var x_206 : f32;
  var x_218 : f32;
  var x_283 : f32;
  var x_293 : f32;
  var x_311 : f32;
  var x_327 : f32;
  var x_339 : f32;
  var x_351 : f32;
  var x_713 : f32;
  var x_727 : f32;
  var x_1050 : f32;
  var x_1060 : f32;
  var x_1249 : f32;
  var x_1279 : f32;
  var x_1296 : f32;
  var x_1318 : f32;
  var x_1334 : f32;
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
  let x_66 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.z, x_58.w) * vec3<f32>(x_61.w, x_61.w, x_61.w)) + vec3<f32>(-0.386036009f, -0.386036009f, -0.386036009f));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat0;
  let x_73 : vec3<f32> = (vec3<f32>(x_69.x, x_69.y, x_69.z) * vec3<f32>(13.605482101f, 13.605482101f, 13.605482101f));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat0;
  let x_78 : vec3<f32> = exp2(vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.y, x_81.z) + vec3<f32>(-0.047995999f, -0.047995999f, -0.047995999f));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.179999992f, 0.179999992f, 0.179999992f));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_120 : vec4<f32> = u_xlat1;
  let x_124 : vec3<f32> = max(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec3<f32> = min(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(65504.0f, 65504.0f, 65504.0f));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_141 : vec3<f32> = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(1.525878e-05f, 1.525878e-05f, 1.525878e-05f));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = log2(vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = log2(vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_178 : vec4<bool> = (vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.x) < vec4<f32>(3.05175708e-05f, 3.05175708e-05f, 3.05175708e-05f, 0.0f));
  u_xlatb0 = vec3<bool>(x_178.x, x_178.y, x_178.z);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + vec3<f32>(9.720000267f, 9.720000267f, 9.720000267f));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(0.057077624f, 0.057077624f, 0.057077624f));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : bool = u_xlatb0.x;
  if (x_192) {
    let x_198 : f32 = u_xlat1.x;
    x_194 = x_198;
  } else {
    let x_201 : f32 = u_xlat2.x;
    x_194 = x_201;
  }
  let x_202 : f32 = x_194;
  u_xlat0.x = x_202;
  let x_205 : bool = u_xlatb0.y;
  if (x_205) {
    let x_210 : f32 = u_xlat1.y;
    x_206 = x_210;
  } else {
    let x_213 : f32 = u_xlat2.y;
    x_206 = x_213;
  }
  let x_214 : f32 = x_206;
  u_xlat0.y = x_214;
  let x_217 : bool = u_xlatb0.z;
  if (x_217) {
    let x_222 : f32 = u_xlat1.z;
    x_218 = x_222;
  } else {
    let x_225 : f32 = u_xlat2.z;
    x_218 = x_225;
  }
  let x_226 : f32 = x_218;
  u_xlat0.z = x_226;
  let x_228 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + vec3<f32>(-0.413588405f, -0.413588405f, -0.413588405f));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = x_17.x_HueSatCon;
  let x_245 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_240.z, x_240.z, x_240.z)) + vec3<f32>(0.413588405f, 0.413588405f, 0.413588405f));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_250 : vec4<f32> = u_xlat0;
  u_xlatb1 = (vec4<f32>(x_250.x, x_250.x, x_250.y, x_250.y) < vec4<f32>(-0.301369876f, 1.467996359f, -0.301369876f, 1.467996359f));
  let x_256 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(17.520000458f, 17.520000458f, 17.520000458f)) + vec3<f32>(-9.720000267f, -9.720000267f, -9.720000267f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_263.z);
  let x_269 : vec4<f32> = u_xlat0;
  let x_272 : vec4<bool> = (vec4<f32>(x_269.z, x_269.z, x_269.z, x_269.z) < vec4<f32>(-0.301369876f, 1.467996359f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_272.x, x_272.y);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = exp2(vec3<f32>(x_274.x, x_274.y, x_274.w));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_282 : bool = u_xlatb1.y;
  if (x_282) {
    let x_287 : f32 = u_xlat0.x;
    x_283 = x_287;
  } else {
    x_283 = 65504.0f;
  }
  let x_289 : f32 = x_283;
  u_xlat5.x = x_289;
  let x_292 : bool = u_xlatb1.w;
  if (x_292) {
    let x_297 : f32 = u_xlat0.y;
    x_293 = x_297;
  } else {
    x_293 = 65504.0f;
  }
  let x_299 : f32 = x_293;
  u_xlat5.z = x_299;
  let x_301 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) + vec3<f32>(-1.52587891e-05f, -1.52587891e-05f, -1.52587891e-05f));
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_305.z);
  let x_310 : bool = u_xlatb2.y;
  if (x_310) {
    let x_315 : f32 = u_xlat0.z;
    x_311 = x_315;
  } else {
    x_311 = 65504.0f;
  }
  let x_317 : f32 = x_311;
  u_xlat8 = x_317;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.w) + vec3<f32>(x_320.x, x_320.y, x_320.w));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_322.z);
  let x_326 : bool = u_xlatb1.x;
  if (x_326) {
    let x_331 : f32 = u_xlat0.x;
    x_327 = x_331;
  } else {
    let x_334 : f32 = u_xlat5.x;
    x_327 = x_334;
  }
  let x_335 : f32 = x_327;
  u_xlat1.x = x_335;
  let x_338 : bool = u_xlatb1.z;
  if (x_338) {
    let x_343 : f32 = u_xlat0.y;
    x_339 = x_343;
  } else {
    let x_346 : f32 = u_xlat5.z;
    x_339 = x_346;
  }
  let x_347 : f32 = x_339;
  u_xlat1.y = x_347;
  let x_350 : bool = u_xlatb2.x;
  if (x_350) {
    let x_355 : f32 = u_xlat0.w;
    x_351 = x_355;
  } else {
    let x_357 : f32 = u_xlat8;
    x_351 = x_357;
  }
  let x_358 : f32 = x_351;
  u_xlat1.z = x_358;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.390404999f, 0.549941003f, 0.00892632f), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.070841603f, 0.963172019f, 0.00135775f), vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.023108199f, 0.128021002f, 0.936245024f), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_408 : vec4<f32> = u_xlat1;
  let x_412 : vec3<f32> = x_17.x_ColorBalance;
  let x_413 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * x_412);
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.858469963f, -1.628790021f, -0.024891f), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_428 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.210181996f, 1.158200026f, 0.000324281f), vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.041811999f, -0.118169002f, 1.068670034f), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_440 : vec4<f32> = u_xlat1;
  let x_444 : vec3<f32> = x_17.x_ColorFilter;
  let x_445 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * x_444);
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = x_17.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), x_452);
  let x_455 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = x_17.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), x_459);
  let x_462 : vec4<f32> = u_xlat0;
  let x_466 : vec3<f32> = x_17.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), x_466);
  let x_469 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = x_17.x_Gain;
  let x_477 : vec3<f32> = x_17.x_Lift;
  let x_478 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * x_473) + x_477);
  let x_479 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = log2(abs(vec3<f32>(x_481.x, x_481.y, x_481.z)));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f, 340282346638528859811704183484516925440.0f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat0;
  let x_500 : vec3<f32> = clamp(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = x_17.x_InvGamma;
  let x_518 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * x_517);
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec3<f32> = exp2(vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_540 : f32 = u_xlat0.y;
  let x_542 : f32 = u_xlat0.z;
  u_xlatb12 = (x_540 >= x_542);
  let x_545 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_545);
  let x_547 : vec4<f32> = u_xlat0;
  let x_548 : vec2<f32> = vec2<f32>(x_547.z, x_547.y);
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat0;
  let x_553 : vec4<f32> = u_xlat1;
  let x_556 : vec2<f32> = (vec2<f32>(x_551.y, x_551.z) + -(vec2<f32>(x_553.x, x_553.y)));
  let x_557 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
  u_xlat1.z = -1.0f;
  u_xlat1.w = 0.666666687f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = -1.0f;
  let x_564 : f32 = u_xlat12;
  let x_566 : vec4<f32> = u_xlat2;
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_564, x_564, x_564, x_564) * vec4<f32>(x_566.x, x_566.y, x_566.w, x_566.z)) + vec4<f32>(x_569.x, x_569.y, x_569.w, x_569.z));
  let x_573 : f32 = u_xlat0.x;
  let x_575 : f32 = u_xlat1.x;
  u_xlatb12 = (x_573 >= x_575);
  let x_577 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_577);
  let x_580 : f32 = u_xlat1.w;
  u_xlat2.z = x_580;
  let x_583 : f32 = u_xlat0.x;
  u_xlat1.w = x_583;
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_594 : vec4<f32> = u_xlat1;
  let x_595 : vec3<f32> = vec3<f32>(x_594.w, x_594.y, x_594.x);
  let x_596 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_595.z);
  let x_598 : vec4<f32> = u_xlat1;
  let x_600 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_598) + x_600);
  let x_602 : f32 = u_xlat12;
  let x_604 : vec4<f32> = u_xlat2;
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_602, x_602, x_602, x_602) * x_604) + x_606);
  let x_609 : f32 = u_xlat0.y;
  let x_611 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_609, x_611);
  let x_615 : f32 = u_xlat0.x;
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = (x_615 + -(x_617));
  let x_622 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_622 * 6.0f) + 0.0001f);
  let x_630 : f32 = u_xlat0.y;
  let x_633 : f32 = u_xlat0.w;
  u_xlat4.x = (-(x_630) + x_633);
  let x_637 : f32 = u_xlat4.x;
  let x_639 : f32 = u_xlat5.x;
  u_xlat4.x = (x_637 / x_639);
  let x_643 : f32 = u_xlat4.x;
  let x_645 : f32 = u_xlat0.z;
  u_xlat4.x = (x_643 + x_645);
  let x_649 : f32 = u_xlat4.x;
  u_xlat2.x = abs(x_649);
  let x_655 : f32 = u_xlat2.x;
  let x_657 : f32 = x_17.x_HueSatCon.x;
  u_xlat11.x = (x_655 + x_657);
  u_xlat3.y = 0.25f;
  u_xlat11.y = 0.25f;
  let x_673 : vec2<f32> = u_xlat11;
  let x_674 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_673, 0.0f);
  u_xlat4.x = x_674.x;
  let x_680 : vec3<f32> = u_xlat3;
  let x_682 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_680.x, x_680.y), 0.0f);
  u_xlat4.y = x_682.w;
  let x_685 : vec3<f32> = u_xlat4;
  let x_686 : vec2<f32> = vec2<f32>(x_685.x, x_685.y);
  let x_687 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_686.x, x_686.y, x_687.z);
  let x_689 : vec3<f32> = u_xlat4;
  let x_693 : vec2<f32> = clamp(vec2<f32>(x_689.x, x_689.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_694 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_697 : f32 = u_xlat11.x;
  let x_699 : f32 = u_xlat4.x;
  u_xlat4.x = (x_697 + x_699);
  let x_702 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_702.x, x_702.x, x_702.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_710 : f32 = u_xlat5.x;
  u_xlatb4 = (1.0f < x_710);
  let x_712 : bool = u_xlatb4;
  if (x_712) {
    let x_717 : f32 = u_xlat5.z;
    x_713 = x_717;
  } else {
    let x_720 : f32 = u_xlat5.x;
    x_713 = x_720;
  }
  let x_721 : f32 = x_713;
  u_xlat4.x = x_721;
  let x_724 : f32 = u_xlat5.x;
  u_xlatb12 = (x_724 < 0.0f);
  let x_726 : bool = u_xlatb12;
  if (x_726) {
    let x_731 : f32 = u_xlat5.y;
    x_727 = x_731;
  } else {
    let x_734 : f32 = u_xlat4.x;
    x_727 = x_734;
  }
  let x_735 : f32 = x_727;
  u_xlat4.x = x_735;
  let x_737 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_737.x, x_737.x, x_737.x) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_742 : vec3<f32> = u_xlat5;
  u_xlat5 = fract(x_742);
  let x_744 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_744 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_750 : vec3<f32> = u_xlat5;
  u_xlat5 = (abs(x_750) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_753 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_753, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_757 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_757 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_760 : f32 = u_xlat0.x;
  u_xlat4.x = (x_760 + 0.0001f);
  let x_765 : f32 = u_xlat1.x;
  let x_767 : f32 = u_xlat4.x;
  u_xlat10.x = (x_765 / x_767);
  let x_770 : vec2<f32> = u_xlat10;
  let x_772 : vec3<f32> = u_xlat5;
  let x_775 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.x, x_770.x) * x_772) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_778.x, x_778.x, x_778.x) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(x_783, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_786 : vec4<f32> = u_xlat0;
  let x_788 : vec4<f32> = u_xlat1;
  let x_791 : vec3<f32> = u_xlat4;
  let x_794 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * vec3<f32>(x_788.x, x_788.y, x_788.z)) + -(vec3<f32>(x_791.x, x_791.x, x_791.x)));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  u_xlat2.y = 0.25f;
  u_xlat10.y = 0.25f;
  let x_802 : vec4<f32> = u_xlat2;
  let x_804 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, vec2<f32>(x_802.x, x_802.y), 0.0f);
  u_xlat0.x = x_804.y;
  let x_810 : vec2<f32> = u_xlat10;
  let x_811 : vec4<f32> = textureSampleLevel(x_Curves, sampler_Curves, x_810, 0.0f);
  u_xlat0.w = x_811.z;
  let x_814 : vec4<f32> = u_xlat0;
  let x_815 : vec2<f32> = vec2<f32>(x_814.x, x_814.w);
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_816.y, x_816.z, x_815.y);
  let x_818 : vec4<f32> = u_xlat0;
  let x_822 : vec2<f32> = clamp(vec2<f32>(x_818.x, x_818.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_823 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_822.x, x_823.y, x_823.z, x_822.y);
  let x_826 : f32 = u_xlat0.x;
  let x_828 : f32 = u_xlat0.x;
  u_xlat0.x = (x_826 + x_828);
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_831.w, x_831.w), vec2<f32>(x_833.x, x_833.x));
  let x_838 : f32 = u_xlat0.x;
  let x_840 : f32 = u_xlat4.y;
  u_xlat0.x = (x_838 * x_840);
  let x_844 : vec3<f32> = x_17.x_HueSatCon;
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_844.y, x_844.y), vec2<f32>(x_846.x, x_846.x));
  let x_850 : vec4<f32> = u_xlat0;
  let x_852 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = u_xlat4;
  let x_857 : vec3<f32> = ((vec3<f32>(x_850.x, x_850.x, x_850.x) * vec3<f32>(x_852.x, x_852.y, x_852.z)) + vec3<f32>(x_855.x, x_855.x, x_855.x));
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat5.x = dot(vec3<f32>(0.695452213f, 0.140678704f, 0.163869068f), vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat5.y = dot(vec3<f32>(0.044794563f, 0.859671116f, 0.095534317f), vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_880 : vec4<f32> = u_xlat0;
  u_xlat5.z = dot(vec3<f32>(-0.005525883f, 0.00402521f, 1.001500726f), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_884 : vec3<f32> = u_xlat5;
  let x_887 : vec3<f32> = u_xlat5;
  let x_889 : vec3<f32> = (-(vec3<f32>(x_884.y, x_884.x, x_884.z)) + vec3<f32>(x_887.z, x_887.y, x_887.x));
  let x_890 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = u_xlat5;
  let x_896 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) * vec2<f32>(x_894.z, x_894.y));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
  let x_900 : f32 = u_xlat0.y;
  let x_902 : f32 = u_xlat0.x;
  u_xlat0.x = (x_900 + x_902);
  let x_906 : f32 = u_xlat5.x;
  let x_908 : f32 = u_xlat0.z;
  let x_911 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_906 * x_908) + x_911);
  let x_915 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_915);
  let x_919 : f32 = u_xlat5.y;
  let x_921 : f32 = u_xlat5.z;
  u_xlat4.x = (x_919 + x_921);
  let x_925 : f32 = u_xlat5.x;
  let x_927 : f32 = u_xlat4.x;
  u_xlat4.x = (x_925 + x_927);
  let x_931 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_931 * 1.75f) + x_935);
  let x_939 : f32 = u_xlat0.x;
  u_xlat4.x = (x_939 * 0.333333343f);
  let x_944 : f32 = u_xlat4.x;
  u_xlat4.x = (0.079999998f / x_944);
  let x_948 : f32 = u_xlat5.y;
  let x_950 : f32 = u_xlat5.x;
  u_xlat8 = min(x_948, x_950);
  let x_953 : f32 = u_xlat5.z;
  let x_954 : f32 = u_xlat8;
  u_xlat8 = min(x_953, x_954);
  let x_956 : f32 = u_xlat8;
  u_xlat8 = max(x_956, 0.0001f);
  let x_959 : f32 = u_xlat5.y;
  let x_961 : f32 = u_xlat5.x;
  u_xlat12 = max(x_959, x_961);
  let x_964 : f32 = u_xlat5.z;
  let x_965 : f32 = u_xlat12;
  u_xlat12 = max(x_964, x_965);
  let x_967 : f32 = u_xlat12;
  let x_971 : vec2<f32> = max(vec2<f32>(x_967, x_967), vec2<f32>(0.0001f, 0.01f));
  let x_972 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
  let x_974 : f32 = u_xlat8;
  let x_977 : f32 = u_xlat2.x;
  u_xlat8 = (-(x_974) + x_977);
  let x_979 : f32 = u_xlat8;
  let x_981 : f32 = u_xlat2.y;
  u_xlat4.y = (x_979 / x_981);
  let x_984 : vec3<f32> = u_xlat4;
  let x_988 : vec2<f32> = (vec2<f32>(x_984.x, x_984.y) + vec2<f32>(-0.5f, -0.400000006f));
  let x_989 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_988.x, x_989.y, x_988.y);
  let x_992 : f32 = u_xlat4.z;
  u_xlat1.x = (x_992 * 2.5f);
  let x_997 : f32 = u_xlat4.z;
  u_xlat12 = ((x_997 * bitcast<f32>(2139095040i)) + 0.5f);
  let x_1002 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1002, 0.0f, 1.0f);
  let x_1004 : f32 = u_xlat12;
  u_xlat12 = ((x_1004 * 2.0f) + -1.0f);
  let x_1008 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1008)) + 1.0f);
  let x_1014 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1014, 0.0f);
  let x_1018 : f32 = u_xlat1.x;
  let x_1021 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1018) * x_1021) + 1.0f);
  let x_1025 : f32 = u_xlat12;
  let x_1027 : f32 = u_xlat1.x;
  u_xlat12 = ((x_1025 * x_1027) + 1.0f);
  let x_1030 : f32 = u_xlat12;
  u_xlat12 = (x_1030 * 0.025f);
  let x_1034 : f32 = u_xlat4.x;
  let x_1035 : f32 = u_xlat12;
  u_xlat4.x = (x_1034 * x_1035);
  let x_1039 : f32 = u_xlat0.x;
  u_xlatb1.x = (x_1039 >= 0.479999989f);
  let x_1045 : f32 = u_xlat0.x;
  u_xlatb0.x = (0.159999996f >= x_1045);
  let x_1049 : bool = u_xlatb1.x;
  if (x_1049) {
    x_1050 = 0.0f;
  } else {
    let x_1055 : f32 = u_xlat4.x;
    x_1050 = x_1055;
  }
  let x_1056 : f32 = x_1050;
  u_xlat4.x = x_1056;
  let x_1059 : bool = u_xlatb0.x;
  if (x_1059) {
    let x_1063 : f32 = u_xlat12;
    x_1060 = x_1063;
  } else {
    let x_1066 : f32 = u_xlat4.x;
    x_1060 = x_1066;
  }
  let x_1067 : f32 = x_1060;
  u_xlat0.x = x_1067;
  let x_1070 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1070 + 1.0f);
  let x_1073 : vec4<f32> = u_xlat0;
  let x_1075 : vec3<f32> = u_xlat5;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.x, x_1073.x) * x_1075);
  let x_1077 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1077.x, x_1076.x, x_1076.y, x_1076.z);
  let x_1080 : f32 = u_xlat5.x;
  let x_1083 : f32 = u_xlat0.x;
  u_xlat4.x = ((-(x_1080) * x_1083) + 0.029999999f);
  let x_1089 : f32 = u_xlat5.y;
  let x_1091 : f32 = u_xlat0.x;
  let x_1094 : f32 = u_xlat2.w;
  u_xlat12 = ((x_1089 * x_1091) + -(x_1094));
  let x_1097 : f32 = u_xlat12;
  u_xlat12 = (x_1097 * 1.732050776f);
  let x_1101 : f32 = u_xlat2.y;
  let x_1104 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1101 * 2.0f) + -(x_1104));
  let x_1109 : f32 = u_xlat5.z;
  let x_1112 : f32 = u_xlat0.x;
  let x_1115 : f32 = u_xlat1.x;
  u_xlat0.x = ((-(x_1109) * x_1112) + x_1115);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat12;
  u_xlat1.x = max(abs(x_1119), abs(x_1121));
  let x_1126 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_1126);
  let x_1130 : f32 = u_xlat0.x;
  let x_1132 : f32 = u_xlat12;
  u_xlat5.x = min(abs(x_1130), abs(x_1132));
  let x_1137 : f32 = u_xlat1.x;
  let x_1139 : f32 = u_xlat5.x;
  u_xlat1.x = (x_1137 * x_1139);
  let x_1143 : f32 = u_xlat1.x;
  let x_1145 : f32 = u_xlat1.x;
  u_xlat5.x = (x_1143 * x_1145);
  let x_1150 : f32 = u_xlat5.x;
  u_xlat9 = ((x_1150 * 0.0208351f) + -0.085133001f);
  let x_1156 : f32 = u_xlat5.x;
  let x_1157 : f32 = u_xlat9;
  u_xlat9 = ((x_1156 * x_1157) + 0.180141002f);
  let x_1162 : f32 = u_xlat5.x;
  let x_1163 : f32 = u_xlat9;
  u_xlat9 = ((x_1162 * x_1163) + -0.330299497f);
  let x_1168 : f32 = u_xlat5.x;
  let x_1169 : f32 = u_xlat9;
  u_xlat5.x = ((x_1168 * x_1169) + 0.999866009f);
  let x_1175 : f32 = u_xlat5.x;
  let x_1177 : f32 = u_xlat1.x;
  u_xlat9 = (x_1175 * x_1177);
  let x_1179 : f32 = u_xlat9;
  u_xlat9 = ((x_1179 * -2.0f) + 1.570796371f);
  let x_1186 : f32 = u_xlat0.x;
  let x_1188 : f32 = u_xlat12;
  u_xlatb13 = (abs(x_1186) < abs(x_1188));
  let x_1191 : bool = u_xlatb13;
  let x_1192 : f32 = u_xlat9;
  u_xlat9 = select(0.0f, x_1192, x_1191);
  let x_1195 : f32 = u_xlat1.x;
  let x_1197 : f32 = u_xlat5.x;
  let x_1199 : f32 = u_xlat9;
  u_xlat1.x = ((x_1195 * x_1197) + x_1199);
  let x_1204 : f32 = u_xlat0.x;
  let x_1206 : f32 = u_xlat0.x;
  u_xlatb5 = (x_1204 < -(x_1206));
  let x_1209 : bool = u_xlatb5;
  u_xlat5.x = select(0.0f, -3.141592741f, x_1209);
  let x_1214 : f32 = u_xlat5.x;
  let x_1216 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1214 + x_1216);
  let x_1220 : f32 = u_xlat0.x;
  let x_1221 : f32 = u_xlat12;
  u_xlat5.x = min(x_1220, x_1221);
  let x_1225 : f32 = u_xlat0.x;
  let x_1226 : f32 = u_xlat12;
  u_xlat0.x = max(x_1225, x_1226);
  let x_1230 : f32 = u_xlat0.x;
  let x_1232 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1230 >= -(x_1232));
  let x_1237 : f32 = u_xlat5.x;
  let x_1239 : f32 = u_xlat5.x;
  u_xlatb12 = (x_1237 < -(x_1239));
  let x_1243 : bool = u_xlatb0.x;
  let x_1244 : bool = u_xlatb12;
  u_xlatb0.x = (x_1243 & x_1244);
  let x_1248 : bool = u_xlatb0.x;
  if (x_1248) {
    let x_1253 : f32 = u_xlat1.x;
    x_1249 = -(x_1253);
  } else {
    let x_1257 : f32 = u_xlat1.x;
    x_1249 = x_1257;
  }
  let x_1258 : f32 = x_1249;
  u_xlat0.x = x_1258;
  let x_1261 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1261 * 57.295780182f);
  let x_1265 : vec4<f32> = u_xlat2;
  let x_1267 : vec4<f32> = u_xlat2;
  let x_1269 : vec4<bool> = (vec4<f32>(x_1265.z, x_1265.w, x_1265.z, x_1265.z) == vec4<f32>(x_1267.y, x_1267.z, x_1267.y, x_1267.y));
  let x_1270 : vec2<bool> = vec2<bool>(x_1269.x, x_1269.y);
  let x_1271 : vec4<bool> = u_xlatb1;
  u_xlatb1 = vec4<bool>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
  let x_1274 : bool = u_xlatb1.y;
  let x_1276 : bool = u_xlatb1.x;
  u_xlatb12 = (x_1274 & x_1276);
  let x_1278 : bool = u_xlatb12;
  if (x_1278) {
    x_1279 = 0.0f;
  } else {
    let x_1284 : f32 = u_xlat0.x;
    x_1279 = x_1284;
  }
  let x_1285 : f32 = x_1279;
  u_xlat0.x = x_1285;
  let x_1288 : f32 = u_xlat0.x;
  u_xlatb12 = (x_1288 < 0.0f);
  let x_1291 : f32 = u_xlat0.x;
  u_xlat1.x = (x_1291 + 360.0f);
  let x_1295 : bool = u_xlatb12;
  if (x_1295) {
    let x_1300 : f32 = u_xlat1.x;
    x_1296 = x_1300;
  } else {
    let x_1303 : f32 = u_xlat0.x;
    x_1296 = x_1303;
  }
  let x_1304 : f32 = x_1296;
  u_xlat0.x = x_1304;
  let x_1308 : f32 = u_xlat0.x;
  u_xlatb12 = (180.0f < x_1308);
  let x_1310 : vec4<f32> = u_xlat0;
  let x_1314 : vec2<f32> = (vec2<f32>(x_1310.x, x_1310.x) + vec2<f32>(360.0f, -360.0f));
  let x_1315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
  let x_1317 : bool = u_xlatb12;
  if (x_1317) {
    let x_1322 : f32 = u_xlat1.y;
    x_1318 = x_1322;
  } else {
    let x_1325 : f32 = u_xlat0.x;
    x_1318 = x_1325;
  }
  let x_1326 : f32 = x_1318;
  u_xlat12 = x_1326;
  let x_1328 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1328 < -180.0f);
  let x_1333 : bool = u_xlatb0.x;
  if (x_1333) {
    let x_1338 : f32 = u_xlat1.x;
    x_1334 = x_1338;
  } else {
    let x_1340 : f32 = u_xlat12;
    x_1334 = x_1340;
  }
  let x_1341 : f32 = x_1334;
  u_xlat0.x = x_1341;
  let x_1344 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1344 * 0.014814815f);
  let x_1349 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1349)) + 1.0f);
  let x_1355 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1355, 0.0f);
  let x_1359 : f32 = u_xlat0.x;
  u_xlat12 = ((x_1359 * -2.0f) + 3.0f);
  let x_1364 : f32 = u_xlat0.x;
  let x_1366 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1364 * x_1366);
  let x_1370 : f32 = u_xlat0.x;
  let x_1371 : f32 = u_xlat12;
  u_xlat0.x = (x_1370 * x_1371);
  let x_1375 : f32 = u_xlat0.x;
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1375 * x_1377);
  let x_1381 : f32 = u_xlat4.y;
  let x_1383 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1381 * x_1383);
  let x_1387 : f32 = u_xlat4.x;
  let x_1389 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1387 * x_1389);
  let x_1393 : f32 = u_xlat0.x;
  let x_1397 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1393 * 0.180000007f) + x_1397);
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_1400.x, x_1400.z, x_1400.w));
  let x_1404 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_1404.x, x_1404.z, x_1404.w));
  let x_1408 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_1408.x, x_1408.z, x_1408.w));
  let x_1412 : vec4<f32> = u_xlat0;
  let x_1414 : vec3<f32> = max(vec3<f32>(x_1412.x, x_1412.y, x_1412.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1417 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1417.x, x_1417.y, x_1417.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1424 : f32 = u_xlat12;
  let x_1427 : vec4<f32> = u_xlat0;
  let x_1429 : vec3<f32> = (-(vec3<f32>(x_1424, x_1424, x_1424)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat0;
  let x_1437 : f32 = u_xlat12;
  let x_1439 : vec3<f32> = ((vec3<f32>(x_1432.x, x_1432.y, x_1432.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_1437, x_1437, x_1437));
  let x_1440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : vec4<f32> = u_xlat0;
  let x_1449 : vec3<f32> = ((vec3<f32>(x_1442.x, x_1442.y, x_1442.z) * vec3<f32>(278.508514404f, 278.508514404f, 278.508514404f)) + vec3<f32>(10.777199745f, 10.777199745f, 10.777199745f));
  let x_1450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec4<f32> = u_xlat0;
  let x_1454 : vec4<f32> = u_xlat1;
  let x_1456 : vec3<f32> = (vec3<f32>(x_1452.x, x_1452.y, x_1452.z) * vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
  let x_1459 : vec4<f32> = u_xlat0;
  let x_1466 : vec3<f32> = ((vec3<f32>(x_1459.x, x_1459.y, x_1459.z) * vec3<f32>(293.604492188f, 293.604492188f, 293.604492188f)) + vec3<f32>(88.71219635f, 88.71219635f, 88.71219635f));
  let x_1467 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : vec4<f32> = u_xlat0;
  let x_1471 : vec4<f32> = u_xlat2;
  let x_1476 : vec3<f32> = ((vec3<f32>(x_1469.x, x_1469.y, x_1469.z) * vec3<f32>(x_1471.x, x_1471.y, x_1471.z)) + vec3<f32>(80.688903809f, 80.688903809f, 80.688903809f));
  let x_1477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1479 : vec4<f32> = u_xlat1;
  let x_1481 : vec4<f32> = u_xlat0;
  let x_1483 : vec3<f32> = (vec3<f32>(x_1479.x, x_1479.y, x_1479.z) / vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
  let x_1484 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
  let x_1490 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
  let x_1498 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
  let x_1506 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
  let x_1510 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1510.x, x_1510.y, x_1510.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1515 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1515, 0.0001f);
  let x_1518 : vec4<f32> = u_xlat1;
  let x_1520 : vec4<f32> = u_xlat0;
  let x_1522 : vec2<f32> = (vec2<f32>(x_1518.x, x_1518.y) / vec2<f32>(x_1520.x, x_1520.x));
  let x_1523 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
  let x_1526 : f32 = u_xlat1.y;
  u_xlat12 = max(x_1526, 0.0f);
  let x_1528 : f32 = u_xlat12;
  u_xlat12 = min(x_1528, 65504.0f);
  let x_1530 : f32 = u_xlat12;
  u_xlat12 = log2(x_1530);
  let x_1532 : f32 = u_xlat12;
  u_xlat12 = (x_1532 * 0.981100023f);
  let x_1535 : f32 = u_xlat12;
  u_xlat1.y = exp2(x_1535);
  let x_1539 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_1539) + 1.0f);
  let x_1543 : f32 = u_xlat0.y;
  let x_1545 : f32 = u_xlat12;
  u_xlat0.z = (-(x_1543) + x_1545);
  let x_1549 : f32 = u_xlat0.y;
  u_xlat4.x = max(x_1549, 0.0001f);
  let x_1553 : f32 = u_xlat1.y;
  let x_1555 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1553 / x_1555);
  let x_1558 : vec3<f32> = u_xlat4;
  let x_1560 : vec4<f32> = u_xlat0;
  let x_1562 : vec2<f32> = (vec2<f32>(x_1558.x, x_1558.x) * vec2<f32>(x_1560.x, x_1560.z));
  let x_1563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1562.x, x_1563.y, x_1562.y, x_1563.w);
  let x_1569 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1577 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
  let x_1585 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1589 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1589.x, x_1589.y, x_1589.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1592 : f32 = u_xlat12;
  let x_1595 : vec4<f32> = u_xlat0;
  let x_1597 : vec3<f32> = (-(vec3<f32>(x_1592, x_1592, x_1592)) + vec3<f32>(x_1595.x, x_1595.y, x_1595.z));
  let x_1598 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
  let x_1600 : vec4<f32> = u_xlat0;
  let x_1605 : f32 = u_xlat12;
  let x_1607 : vec3<f32> = ((vec3<f32>(x_1600.x, x_1600.y, x_1600.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1605, x_1605, x_1605));
  let x_1608 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1610 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1614 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1618 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
  let x_1626 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1634 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1642 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1650 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1658 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
  let x_1666 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1672 : vec4<f32> = u_xlat1;
  let x_1674 : vec3<f32> = max(vec3<f32>(x_1672.x, x_1672.y, x_1672.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1675 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
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

