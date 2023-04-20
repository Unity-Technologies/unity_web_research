diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Lut_Params : vec4<f32>,
  /* @offset(32) */
  x_ColorBalance : vec4<f32>,
  /* @offset(48) */
  x_ColorFilter : vec4<f32>,
  /* @offset(64) */
  x_ChannelMixerRed : vec4<f32>,
  /* @offset(80) */
  x_ChannelMixerGreen : vec4<f32>,
  /* @offset(96) */
  x_ChannelMixerBlue : vec4<f32>,
  /* @offset(112) */
  x_HueSatCon : vec4<f32>,
  /* @offset(128) */
  x_Lift : vec4<f32>,
  /* @offset(144) */
  x_Gamma : vec4<f32>,
  /* @offset(160) */
  x_Gain : vec4<f32>,
  /* @offset(176) */
  x_Shadows : vec4<f32>,
  /* @offset(192) */
  x_Midtones : vec4<f32>,
  /* @offset(208) */
  x_Highlights : vec4<f32>,
  /* @offset(224) */
  x_ShaHiLimits : vec4<f32>,
  /* @offset(240) */
  x_SplitShadows : vec4<f32>,
  /* @offset(256) */
  x_SplitHighlights : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlati1 : vec3<i32>;

var<private> u_xlati2 : vec3<i32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_CurveHueVsHue : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

@group(0) @binding(7) var x_CurveLumVsSat : texture_2d<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(5) var x_CurveHueVsSat : texture_2d<f32>;

@group(0) @binding(6) var x_CurveSatVsSat : texture_2d<f32>;

@group(0) @binding(0) var x_CurveMaster : texture_2d<f32>;

@group(0) @binding(1) var x_CurveRed : texture_2d<f32>;

@group(0) @binding(2) var x_CurveGreen : texture_2d<f32>;

@group(0) @binding(3) var x_CurveBlue : texture_2d<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb19 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_249 : f32;
  var x_261 : f32;
  var x_324 : f32;
  var x_334 : f32;
  var x_352 : f32;
  var x_368 : f32;
  var x_380 : f32;
  var x_392 : f32;
  var x_1142 : f32;
  var x_1157 : f32;
  var x_1640 : f32;
  var x_1650 : f32;
  var x_1829 : f32;
  var x_1859 : f32;
  var x_1876 : f32;
  var x_1898 : f32;
  var x_1914 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_Lut_Params;
  let x_24 : vec2<f32> = (x_13 + -(vec2<f32>(x_21.y, x_21.z)));
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_24.x, x_24.y, x_25.w);
  let x_34 : f32 = u_xlat0.y;
  let x_38 : f32 = x_16.x_Lut_Params.x;
  u_xlat1.x = (x_34 * x_38);
  let x_42 : f32 = u_xlat1.x;
  u_xlat0.x = fract(x_42);
  let x_46 : f32 = u_xlat0.x;
  let x_48 : f32 = x_16.x_Lut_Params.x;
  u_xlat1.x = (x_46 / x_48);
  let x_52 : f32 = u_xlat0.y;
  let x_54 : f32 = u_xlat1.x;
  u_xlat0.w = (x_52 + -(x_54));
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_16.x_Lut_Params;
  let x_67 : vec3<f32> = ((vec3<f32>(x_59.x, x_59.z, x_59.w) * vec3<f32>(x_62.w, x_62.w, x_62.w)) + vec3<f32>(-0.38603600859642028809f, -0.38603600859642028809f, -0.38603600859642028809f));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = (vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(13.6054821014404296875f, 13.6054821014404296875f, 13.6054821014404296875f));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec3<f32> = exp2(vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_86 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) + vec3<f32>(-0.04799599945545196533f, -0.04799599945545196533f, -0.04799599945545196533f));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_89 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = (vec3<f32>(x_89.x, x_89.y, x_89.z) * vec3<f32>(0.1799999922513961792f, 0.1799999922513961792f, 0.1799999922513961792f));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.3904049992561340332f, 0.54994100332260131836f, 0.00892631988972425461f), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.07084160298109054565f, 0.96317201852798461914f, 0.00135775003582239151f), vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.02310819923877716064f, 0.12802100181579589844f, 0.93624502420425415039f), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_121 : vec3<f32> = u_xlat1;
  let x_124 : vec4<f32> = x_16.x_ColorBalance;
  let x_126 : vec3<f32> = (x_121 * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.85846996307373046875f, -1.62879002094268798828f, -0.02489100024104118347f), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.21018199622631072998f, 1.15820002555847167969f, 0.00032428099075332284f), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.04181199893355369568f, -0.1181690022349357605f, 1.06867003440856933594f), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_157 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_157);
  let x_164 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_164);
  let x_171 : vec3<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_171);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = max(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = min(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(65504.0f, 65504.0f, 65504.0f));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.00001525877996755298f, 0.00001525877996755298f, 0.00001525877996755298f));
  let x_196 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_196);
  let x_198 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_198 + vec3<f32>(9.72000026702880859375f, 9.72000026702880859375f, 9.72000026702880859375f));
  let x_202 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_202 * vec3<f32>(0.05707762390375137329f, 0.05707762390375137329f, 0.05707762390375137329f));
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = log2(vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_216 : vec4<f32> = u_xlat0;
  let x_221 : vec4<bool> = (vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.x) < vec4<f32>(0.00003051757084904239f, 0.00003051757084904239f, 0.00003051757084904239f, 0.0f));
  u_xlatb0 = vec3<bool>(x_221.x, x_221.y, x_221.z);
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + vec3<f32>(9.72000026702880859375f, 9.72000026702880859375f, 9.72000026702880859375f));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(0.05707762390375137329f, 0.05707762390375137329f, 0.05707762390375137329f));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_235 : bool = u_xlatb0.x;
  if (x_235) {
    let x_241 : f32 = u_xlat1.x;
    x_237 = x_241;
  } else {
    let x_244 : f32 = u_xlat2.x;
    x_237 = x_244;
  }
  let x_245 : f32 = x_237;
  u_xlat0.x = x_245;
  let x_248 : bool = u_xlatb0.y;
  if (x_248) {
    let x_253 : f32 = u_xlat1.y;
    x_249 = x_253;
  } else {
    let x_256 : f32 = u_xlat2.y;
    x_249 = x_256;
  }
  let x_257 : f32 = x_249;
  u_xlat0.y = x_257;
  let x_260 : bool = u_xlatb0.z;
  if (x_260) {
    let x_265 : f32 = u_xlat1.z;
    x_261 = x_265;
  } else {
    let x_268 : f32 = u_xlat2.z;
    x_261 = x_268;
  }
  let x_269 : f32 = x_261;
  u_xlat0.z = x_269;
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(-0.41358840465545654297f, -0.41358840465545654297f, -0.41358840465545654297f));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_16.x_HueSatCon;
  let x_287 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_282.z, x_282.z, x_282.z)) + vec3<f32>(0.41358840465545654297f, 0.41358840465545654297f, 0.41358840465545654297f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_292 : vec4<f32> = u_xlat0;
  u_xlatb1 = (vec4<f32>(x_292.x, x_292.x, x_292.y, x_292.y) < vec4<f32>(-0.30136987566947937012f, 1.46799635887145996094f, -0.30136987566947937012f, 1.46799635887145996094f));
  let x_298 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(17.520000457763671875f, 17.520000457763671875f, 17.520000457763671875f)) + vec3<f32>(-9.72000026702880859375f, -9.72000026702880859375f, -9.72000026702880859375f));
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_305.z);
  let x_311 : vec4<f32> = u_xlat0;
  let x_314 : vec4<bool> = (vec4<f32>(x_311.z, x_311.z, x_311.z, x_311.z) < vec4<f32>(-0.30136987566947937012f, 1.46799635887145996094f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_314.x, x_314.y);
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = exp2(vec3<f32>(x_316.x, x_316.y, x_316.w));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : bool = u_xlatb1.y;
  if (x_323) {
    let x_328 : f32 = u_xlat0.x;
    x_324 = x_328;
  } else {
    x_324 = 65504.0f;
  }
  let x_330 : f32 = x_324;
  u_xlat7.x = x_330;
  let x_333 : bool = u_xlatb1.w;
  if (x_333) {
    let x_338 : f32 = u_xlat0.y;
    x_334 = x_338;
  } else {
    x_334 = 65504.0f;
  }
  let x_340 : f32 = x_334;
  u_xlat7.z = x_340;
  let x_342 : vec4<f32> = u_xlat0;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(-0.0000152587890625f, -0.0000152587890625f, -0.0000152587890625f));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_346.z);
  let x_351 : bool = u_xlatb2.y;
  if (x_351) {
    let x_356 : f32 = u_xlat0.z;
    x_352 = x_356;
  } else {
    x_352 = 65504.0f;
  }
  let x_358 : f32 = x_352;
  u_xlat12 = x_358;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.w) + vec3<f32>(x_361.x, x_361.y, x_361.w));
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_363.z);
  let x_367 : bool = u_xlatb1.x;
  if (x_367) {
    let x_372 : f32 = u_xlat0.x;
    x_368 = x_372;
  } else {
    let x_375 : f32 = u_xlat7.x;
    x_368 = x_375;
  }
  let x_376 : f32 = x_368;
  u_xlat1.x = x_376;
  let x_379 : bool = u_xlatb1.z;
  if (x_379) {
    let x_384 : f32 = u_xlat0.y;
    x_380 = x_384;
  } else {
    let x_387 : f32 = u_xlat7.z;
    x_380 = x_387;
  }
  let x_388 : f32 = x_380;
  u_xlat1.y = x_388;
  let x_391 : bool = u_xlatb2.x;
  if (x_391) {
    let x_396 : f32 = u_xlat0.w;
    x_392 = x_396;
  } else {
    let x_398 : f32 = u_xlat12;
    x_392 = x_398;
  }
  let x_399 : f32 = x_392;
  u_xlat1.z = x_399;
  let x_405 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), x_405);
  let x_412 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), x_412);
  let x_419 : vec3<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), x_419);
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = x_16.x_ColorFilter;
  let x_428 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = max(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = log2(vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat0;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(0.45454546809196472168f, 0.45454546809196472168f, 0.45454546809196472168f));
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = exp2(vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_453.x, x_453.y, x_453.z) + vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : vec4<f32> = u_xlat0;
  let x_470 : vec3<f32> = min(vec3<f32>(x_466.x, x_466.y, x_466.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = sqrt(vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_486 : f32 = u_xlat18;
  let x_489 : f32 = x_16.x_SplitShadows.w;
  u_xlat18 = (x_486 + x_489);
  let x_491 : f32 = u_xlat18;
  u_xlat18 = clamp(x_491, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat18;
  u_xlat19 = (-(x_494) + 1.0f);
  let x_498 : vec4<f32> = x_16.x_SplitShadows;
  let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : f32 = u_xlat19;
  let x_507 : vec4<f32> = u_xlat3;
  let x_510 : vec3<f32> = ((vec3<f32>(x_505, x_505, x_505) * vec3<f32>(x_507.x, x_507.y, x_507.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_511 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_514.x, x_514.y, x_514.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_521 : vec4<f32> = u_xlat2;
  let x_523 : vec3<f32> = u_xlat4;
  let x_524 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * x_523);
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec3<f32> = u_xlat1;
  let x_528 : vec4<f32> = u_xlat3;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec3<f32> = ((x_527 * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_537 : vec4<f32> = u_xlat3;
  let x_540 : vec4<bool> = (vec4<f32>(x_537.x, x_537.y, x_537.z, x_537.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_540.x, x_540.y, x_540.z);
  let x_544 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_544);
  let x_548 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_548);
  let x_552 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_552);
  let x_556 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_556);
  let x_560 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_560);
  let x_564 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_564);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = u_xlat5;
  let x_570 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * x_569);
  let x_571 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_577 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec3<f32> = u_xlat1;
  let x_586 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_585 * x_586);
  let x_588 : vec4<f32> = u_xlat0;
  let x_590 : vec4<f32> = u_xlat3;
  let x_593 : vec3<f32> = u_xlat1;
  let x_594 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + x_593);
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = u_xlat4;
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec3<f32> = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * x_599) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = u_xlat0;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat0;
  let x_620 : vec3<f32> = sqrt(vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_625 : vec4<f32> = x_16.x_SplitHighlights;
  let x_627 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : f32 = u_xlat18;
  let x_632 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = ((vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_632.x, x_632.y, x_632.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_638.x, x_638.y, x_638.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec3<f32> = u_xlat4;
  let x_646 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * x_645);
  let x_647 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat1;
  let x_650 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = ((x_649 * vec3<f32>(x_650.x, x_650.y, x_650.z)) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec4<bool> = (vec4<f32>(x_658.x, x_658.y, x_658.z, x_658.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_660.x, x_660.y, x_660.z);
  let x_663 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_663);
  let x_667 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_667);
  let x_671 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_671);
  let x_675 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_675);
  let x_679 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_679);
  let x_683 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat2;
  let x_688 : vec3<f32> = u_xlat5;
  let x_689 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * x_688);
  let x_690 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_692.x, x_692.y, x_692.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_696 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<f32> = u_xlat1;
  let x_703 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_702 * x_703);
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : vec4<f32> = u_xlat3;
  let x_710 : vec3<f32> = u_xlat1;
  let x_711 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + x_710);
  let x_712 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat0;
  let x_716 : vec3<f32> = u_xlat4;
  let x_718 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = ((vec3<f32>(x_714.x, x_714.y, x_714.z) * x_716) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = log2(abs(vec3<f32>(x_723.x, x_723.y, x_723.z)));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_733 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(2.20000004768371582031f, 2.20000004768371582031f, 2.20000004768371582031f));
  let x_734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec3<f32> = exp2(vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat0;
  let x_745 : vec4<f32> = x_16.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_741.x, x_741.y, x_741.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_749 : vec4<f32> = u_xlat0;
  let x_753 : vec4<f32> = x_16.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_749.x, x_749.y, x_749.z), vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_757 : vec4<f32> = u_xlat0;
  let x_761 : vec4<f32> = x_16.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_765 : vec3<f32> = u_xlat1;
  let x_768 : vec4<f32> = x_16.x_Midtones;
  let x_770 : vec3<f32> = (x_765 * vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_773, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_775 : f32 = u_xlat18;
  let x_779 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_782 : vec2<f32> = (vec2<f32>(x_775, x_775) + -(vec2<f32>(x_779.x, x_779.z)));
  let x_783 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_788 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_792 : vec4<f32> = x_16.x_ShaHiLimits;
  u_xlat14 = (-(vec2<f32>(x_788.x, x_788.z)) + vec2<f32>(x_792.y, x_792.w));
  let x_796 : vec2<f32> = u_xlat14;
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / x_796);
  let x_798 : vec2<f32> = u_xlat14;
  let x_799 : vec4<f32> = u_xlat2;
  let x_801 : vec2<f32> = (x_798 * vec2<f32>(x_799.x, x_799.y));
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = clamp(vec2<f32>(x_804.x, x_804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat2;
  u_xlat14 = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(-2.0f, -2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_819 : vec4<f32> = u_xlat2;
  let x_821 : vec4<f32> = u_xlat2;
  let x_823 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(x_821.x, x_821.y));
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
  let x_827 : f32 = u_xlat14.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat18 = ((-(x_827) * x_830) + 1.0f);
  let x_833 : f32 = u_xlat18;
  u_xlat19 = (-(x_833) + 1.0f);
  let x_837 : f32 = u_xlat14.y;
  let x_840 : f32 = u_xlat2.y;
  let x_842 : f32 = u_xlat19;
  u_xlat19 = ((-(x_837) * x_840) + x_842);
  let x_845 : f32 = u_xlat2.y;
  let x_847 : f32 = u_xlat14.y;
  u_xlat2.x = (x_845 * x_847);
  let x_850 : vec4<f32> = u_xlat0;
  let x_852 : f32 = u_xlat19;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_852, x_852, x_852));
  let x_855 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_858 : vec3<f32> = u_xlat1;
  let x_861 : vec4<f32> = x_16.x_Shadows;
  u_xlat8 = (x_858 * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec3<f32> = u_xlat1;
  let x_867 : vec4<f32> = x_16.x_Highlights;
  u_xlat1 = (x_864 * vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec3<f32> = u_xlat8;
  let x_871 : f32 = u_xlat18;
  let x_874 : vec4<f32> = u_xlat0;
  let x_876 : vec3<f32> = ((x_870 * vec3<f32>(x_871, x_871, x_871)) + vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec3<f32> = u_xlat1;
  let x_880 : vec4<f32> = u_xlat2;
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec3<f32> = ((x_879 * vec3<f32>(x_880.x, x_880.x, x_880.x)) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat0;
  let x_892 : vec4<f32> = x_16.x_Gain;
  let x_897 : vec4<f32> = x_16.x_Lift;
  let x_899 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_906 : vec4<f32> = u_xlat0;
  let x_908 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.x));
  u_xlati1 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_908.x, x_908.y, x_908.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : vec4<bool> = (vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlati2 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_921.x, x_921.y, x_921.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_927 : vec4<f32> = u_xlat0;
  let x_930 : vec3<f32> = log2(abs(vec3<f32>(x_927.x, x_927.y, x_927.z)));
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat0;
  let x_937 : vec4<f32> = x_16.x_Gamma;
  let x_939 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_944 : vec3<f32> = exp2(vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec3<i32> = u_xlati1;
  let x_949 : vec3<i32> = u_xlati2;
  u_xlati1 = (-(x_947) + x_949);
  let x_951 : vec3<i32> = u_xlati1;
  u_xlat1 = vec3<f32>(x_951);
  let x_953 : vec4<f32> = u_xlat0;
  let x_955 : vec3<f32> = u_xlat1;
  let x_956 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * x_955);
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat2;
  let x_960 : vec2<f32> = vec2<f32>(x_959.z, x_959.y);
  let x_961 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
  let x_963 : vec3<f32> = u_xlat1;
  let x_965 : vec4<f32> = u_xlat0;
  let x_968 : vec4<f32> = u_xlat3;
  let x_971 : vec2<f32> = ((vec2<f32>(x_963.y, x_963.z) * vec2<f32>(x_965.y, x_965.z)) + -(vec2<f32>(x_968.x, x_968.y)));
  let x_972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
  let x_975 : f32 = u_xlat3.y;
  let x_977 : f32 = u_xlat2.z;
  u_xlatb1.x = (x_975 >= x_977);
  let x_981 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_981);
  u_xlat3.z = -1.0f;
  u_xlat3.w = 0.6666666865348815918f;
  u_xlat0.z = 1.0f;
  u_xlat0.w = -1.0f;
  let x_989 : vec3<f32> = u_xlat1;
  let x_991 : vec4<f32> = u_xlat0;
  let x_994 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec4<f32>(x_989.x, x_989.x, x_989.x, x_989.x) * vec4<f32>(x_991.x, x_991.y, x_991.w, x_991.z)) + vec4<f32>(x_994.x, x_994.y, x_994.w, x_994.z));
  let x_998 : f32 = u_xlat2.x;
  let x_1000 : f32 = u_xlat0.x;
  u_xlatb1.x = (x_998 >= x_1000);
  let x_1004 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_1004);
  let x_1008 : f32 = u_xlat0.w;
  u_xlat3.z = x_1008;
  let x_1011 : f32 = u_xlat2.x;
  u_xlat0.w = x_1011;
  let x_1013 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1022 : vec3<f32> = vec3<f32>(x_1021.w, x_1021.y, x_1021.x);
  let x_1023 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1022.z);
  let x_1025 : vec4<f32> = u_xlat0;
  let x_1027 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_1025) + x_1027);
  let x_1029 : vec3<f32> = u_xlat1;
  let x_1031 : vec4<f32> = u_xlat3;
  let x_1033 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.x) * x_1031) + x_1033);
  let x_1036 : f32 = u_xlat0.y;
  let x_1038 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_1036, x_1038);
  let x_1042 : f32 = u_xlat0.x;
  let x_1044 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1042 + -(x_1044));
  let x_1049 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1049 * 6.0f) + 0.00009999999747378752f);
  let x_1057 : f32 = u_xlat0.y;
  let x_1060 : f32 = u_xlat0.w;
  u_xlat6.x = (-(x_1057) + x_1060);
  let x_1064 : f32 = u_xlat6.x;
  let x_1066 : f32 = u_xlat7.x;
  u_xlat6.x = (x_1064 / x_1066);
  let x_1070 : f32 = u_xlat6.x;
  let x_1072 : f32 = u_xlat0.z;
  u_xlat6.x = (x_1070 + x_1072);
  let x_1076 : f32 = u_xlat6.x;
  u_xlat3.x = abs(x_1076);
  let x_1080 : f32 = u_xlat3.x;
  let x_1082 : f32 = x_16.x_HueSatCon.x;
  u_xlat14.x = (x_1080 + x_1082);
  u_xlat2.y = 0.0f;
  u_xlat14.y = 0.0f;
  let x_1097 : vec2<f32> = u_xlat14;
  let x_1100 : f32 = x_16.x_GlobalMipBias.x;
  let x_1101 : vec4<f32> = textureSampleBias(x_CurveHueVsHue, sampler_LinearClamp, x_1097, x_1100);
  u_xlat6.x = x_1101.x;
  let x_1108 : vec4<f32> = u_xlat2;
  let x_1111 : f32 = x_16.x_GlobalMipBias.x;
  let x_1112 : vec4<f32> = textureSampleBias(x_CurveLumVsSat, sampler_LinearClamp, vec2<f32>(x_1108.x, x_1108.y), x_1111);
  u_xlat6.y = x_1112.x;
  let x_1115 : vec3<f32> = u_xlat6;
  let x_1116 : vec2<f32> = vec2<f32>(x_1115.x, x_1115.y);
  let x_1117 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1116.x, x_1116.y, x_1117.z);
  let x_1119 : vec3<f32> = u_xlat6;
  let x_1123 : vec2<f32> = clamp(vec2<f32>(x_1119.x, x_1119.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1124 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1123.x, x_1123.y, x_1124.z);
  let x_1127 : f32 = u_xlat14.x;
  let x_1129 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1127 + x_1129);
  let x_1132 : vec3<f32> = u_xlat6;
  u_xlat7 = (vec3<f32>(x_1132.x, x_1132.x, x_1132.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_1139 : f32 = u_xlat7.x;
  u_xlatb6 = (1.0f < x_1139);
  let x_1141 : bool = u_xlatb6;
  if (x_1141) {
    let x_1146 : f32 = u_xlat7.z;
    x_1142 = x_1146;
  } else {
    let x_1149 : f32 = u_xlat7.x;
    x_1142 = x_1149;
  }
  let x_1150 : f32 = x_1142;
  u_xlat6.x = x_1150;
  let x_1154 : f32 = u_xlat7.x;
  u_xlatb18 = (x_1154 < 0.0f);
  let x_1156 : bool = u_xlatb18;
  if (x_1156) {
    let x_1161 : f32 = u_xlat7.y;
    x_1157 = x_1161;
  } else {
    let x_1164 : f32 = u_xlat6.x;
    x_1157 = x_1164;
  }
  let x_1165 : f32 = x_1157;
  u_xlat6.x = x_1165;
  let x_1167 : vec3<f32> = u_xlat6;
  u_xlat7 = (vec3<f32>(x_1167.x, x_1167.x, x_1167.x) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_1172 : vec3<f32> = u_xlat7;
  u_xlat7 = fract(x_1172);
  let x_1174 : vec3<f32> = u_xlat7;
  u_xlat7 = ((x_1174 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_1180 : vec3<f32> = u_xlat7;
  u_xlat7 = (abs(x_1180) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_1183 : vec3<f32> = u_xlat7;
  u_xlat7 = clamp(x_1183, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1187 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_1187 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_1190 : f32 = u_xlat0.x;
  u_xlat6.x = (x_1190 + 0.00009999999747378752f);
  let x_1195 : f32 = u_xlat1.x;
  let x_1197 : f32 = u_xlat6.x;
  u_xlat15.x = (x_1195 / x_1197);
  let x_1200 : vec2<f32> = u_xlat15;
  let x_1202 : vec3<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_1200.x, x_1200.x, x_1200.x) * x_1202) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1205 : vec4<f32> = u_xlat0;
  let x_1207 : vec3<f32> = u_xlat1;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.x, x_1205.x) * x_1207);
  let x_1209 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1217 : vec3<f32> = u_xlat1;
  let x_1219 : vec3<f32> = u_xlat6;
  u_xlat1 = ((vec3<f32>(x_1215.x, x_1215.x, x_1215.x) * x_1217) + -(vec3<f32>(x_1219.x, x_1219.x, x_1219.x)));
  u_xlat3.y = 0.0f;
  u_xlat15.y = 0.0f;
  let x_1229 : vec4<f32> = u_xlat3;
  let x_1232 : f32 = x_16.x_GlobalMipBias.x;
  let x_1233 : vec4<f32> = textureSampleBias(x_CurveHueVsSat, sampler_LinearClamp, vec2<f32>(x_1229.x, x_1229.y), x_1232);
  u_xlat0.x = x_1233.x;
  let x_1240 : vec2<f32> = u_xlat15;
  let x_1242 : f32 = x_16.x_GlobalMipBias.x;
  let x_1243 : vec4<f32> = textureSampleBias(x_CurveSatVsSat, sampler_LinearClamp, x_1240, x_1242);
  u_xlat0.w = x_1243.x;
  let x_1246 : vec4<f32> = u_xlat0;
  let x_1247 : vec2<f32> = vec2<f32>(x_1246.x, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1247.x, x_1248.y, x_1248.z, x_1247.y);
  let x_1250 : vec4<f32> = u_xlat0;
  let x_1254 : vec2<f32> = clamp(vec2<f32>(x_1250.x, x_1250.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1254.x, x_1255.y, x_1255.z, x_1254.y);
  let x_1258 : f32 = u_xlat0.x;
  let x_1260 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1258 + x_1260);
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1265 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_1263.w, x_1263.w), vec2<f32>(x_1265.x, x_1265.x));
  let x_1270 : f32 = u_xlat0.x;
  let x_1272 : f32 = u_xlat6.y;
  u_xlat0.x = (x_1270 * x_1272);
  let x_1276 : vec4<f32> = x_16.x_HueSatCon;
  let x_1278 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_1276.y, x_1276.y), vec2<f32>(x_1278.x, x_1278.x));
  let x_1282 : vec4<f32> = u_xlat0;
  let x_1284 : vec3<f32> = u_xlat1;
  let x_1286 : vec3<f32> = u_xlat6;
  let x_1288 : vec3<f32> = ((vec3<f32>(x_1282.x, x_1282.x, x_1282.x) * x_1284) + vec3<f32>(x_1286.x, x_1286.x, x_1286.x));
  let x_1289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1292 : f32 = u_xlat0.y;
  let x_1294 : f32 = u_xlat0.x;
  u_xlat18 = max(x_1292, x_1294);
  let x_1297 : f32 = u_xlat0.z;
  let x_1298 : f32 = u_xlat18;
  u_xlat18 = max(x_1297, x_1298);
  let x_1300 : f32 = u_xlat18;
  u_xlat18 = (x_1300 + 1.0f);
  let x_1302 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_1302);
  let x_1304 : vec4<f32> = u_xlat0;
  let x_1306 : f32 = u_xlat18;
  let x_1311 : vec3<f32> = ((vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * vec3<f32>(x_1306, x_1306, x_1306)) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  u_xlat0.w = 0.0f;
  let x_1319 : vec4<f32> = u_xlat0;
  let x_1322 : f32 = x_16.x_GlobalMipBias.x;
  let x_1323 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1319.x, x_1319.w), x_1322);
  u_xlat1.x = x_1323.x;
  let x_1327 : f32 = u_xlat1.x;
  u_xlat1.x = x_1327;
  let x_1330 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1330, 0.0f, 1.0f);
  let x_1336 : vec4<f32> = u_xlat0;
  let x_1339 : f32 = x_16.x_GlobalMipBias.x;
  let x_1340 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1336.y, x_1336.w), x_1339);
  u_xlat7.x = x_1340.x;
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1349 : f32 = x_16.x_GlobalMipBias.x;
  let x_1350 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1346.z, x_1346.w), x_1349);
  u_xlat7.y = x_1350.x;
  let x_1353 : vec3<f32> = u_xlat7;
  let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
  let x_1355 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1355.x, x_1354.x, x_1354.y);
  let x_1357 : vec3<f32> = u_xlat1;
  let x_1361 : vec2<f32> = clamp(vec2<f32>(x_1357.y, x_1357.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1362 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1362.x, x_1361.x, x_1361.y);
  let x_1364 : vec3<f32> = u_xlat1;
  let x_1365 : vec3<f32> = (x_1364 + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  u_xlat0.w = 0.0f;
  let x_1373 : vec4<f32> = u_xlat0;
  let x_1376 : f32 = x_16.x_GlobalMipBias.x;
  let x_1377 : vec4<f32> = textureSampleBias(x_CurveRed, sampler_LinearClamp, vec2<f32>(x_1373.x, x_1373.w), x_1376);
  u_xlat1.x = x_1377.x;
  let x_1381 : f32 = u_xlat1.x;
  u_xlat1.x = x_1381;
  let x_1384 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1384, 0.0f, 1.0f);
  let x_1391 : vec4<f32> = u_xlat0;
  let x_1394 : f32 = x_16.x_GlobalMipBias.x;
  let x_1395 : vec4<f32> = textureSampleBias(x_CurveGreen, sampler_LinearClamp, vec2<f32>(x_1391.y, x_1391.w), x_1394);
  u_xlat7.x = x_1395.x;
  let x_1402 : vec4<f32> = u_xlat0;
  let x_1405 : f32 = x_16.x_GlobalMipBias.x;
  let x_1406 : vec4<f32> = textureSampleBias(x_CurveBlue, sampler_LinearClamp, vec2<f32>(x_1402.z, x_1402.w), x_1405);
  u_xlat7.y = x_1406.x;
  let x_1409 : vec3<f32> = u_xlat7;
  let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
  let x_1411 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1411.x, x_1410.x, x_1410.y);
  let x_1413 : vec3<f32> = u_xlat1;
  let x_1417 : vec2<f32> = clamp(vec2<f32>(x_1413.y, x_1413.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1418 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1418.x, x_1417.x, x_1417.y);
  let x_1421 : f32 = u_xlat1.y;
  let x_1423 : f32 = u_xlat1.x;
  u_xlat0.x = max(x_1421, x_1423);
  let x_1427 : f32 = u_xlat1.z;
  let x_1429 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1427, x_1429);
  let x_1433 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1433) + 1.0f);
  let x_1438 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_1438);
  let x_1441 : vec4<f32> = u_xlat0;
  let x_1443 : vec3<f32> = u_xlat1;
  let x_1444 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.x, x_1441.x) * x_1443);
  let x_1445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1447 : vec4<f32> = u_xlat0;
  let x_1449 : vec3<f32> = max(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1450 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1456 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(vec3<f32>(0.69545221328735351562f, 0.14067870378494262695f, 0.16386906802654266357f), vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
  let x_1464 : vec4<f32> = u_xlat0;
  u_xlat7.y = dot(vec3<f32>(0.04479456320405006409f, 0.85967111587524414062f, 0.09553431719541549683f), vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1472 : vec4<f32> = u_xlat0;
  u_xlat7.z = dot(vec3<f32>(-0.00552588282153010368f, 0.00402521016076207161f, 1.00150072574615478516f), vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
  let x_1476 : vec3<f32> = u_xlat7;
  let x_1479 : vec3<f32> = u_xlat7;
  let x_1481 : vec3<f32> = (-(vec3<f32>(x_1476.y, x_1476.x, x_1476.z)) + vec3<f32>(x_1479.z, x_1479.y, x_1479.x));
  let x_1482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1482.w);
  let x_1484 : vec4<f32> = u_xlat0;
  let x_1486 : vec3<f32> = u_xlat7;
  let x_1488 : vec2<f32> = (vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1486.z, x_1486.y));
  let x_1489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1488.x, x_1488.y, x_1489.z, x_1489.w);
  let x_1492 : f32 = u_xlat0.y;
  let x_1494 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1492 + x_1494);
  let x_1498 : f32 = u_xlat7.x;
  let x_1500 : f32 = u_xlat0.z;
  let x_1503 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1498 * x_1500) + x_1503);
  let x_1507 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1507, 0.0f);
  let x_1511 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_1511);
  let x_1515 : f32 = u_xlat7.y;
  let x_1517 : f32 = u_xlat7.z;
  u_xlat6.x = (x_1515 + x_1517);
  let x_1521 : f32 = u_xlat7.x;
  let x_1523 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1521 + x_1523);
  let x_1527 : f32 = u_xlat0.x;
  let x_1531 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1527 * 1.75f) + x_1531);
  let x_1535 : f32 = u_xlat0.x;
  u_xlat6.x = (x_1535 * 0.3333333432674407959f);
  let x_1540 : f32 = u_xlat6.x;
  u_xlat6.x = (0.07999999821186065674f / x_1540);
  let x_1544 : f32 = u_xlat7.y;
  let x_1546 : f32 = u_xlat7.x;
  u_xlat12 = min(x_1544, x_1546);
  let x_1549 : f32 = u_xlat7.z;
  let x_1550 : f32 = u_xlat12;
  u_xlat12 = min(x_1549, x_1550);
  let x_1552 : f32 = u_xlat12;
  u_xlat12 = max(x_1552, 0.00009999999747378752f);
  let x_1555 : f32 = u_xlat7.y;
  let x_1557 : f32 = u_xlat7.x;
  u_xlat18 = max(x_1555, x_1557);
  let x_1560 : f32 = u_xlat7.z;
  let x_1561 : f32 = u_xlat18;
  u_xlat18 = max(x_1560, x_1561);
  let x_1563 : f32 = u_xlat18;
  let x_1567 : vec2<f32> = max(vec2<f32>(x_1563, x_1563), vec2<f32>(0.00009999999747378752f, 0.00999999977648258209f));
  let x_1568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
  let x_1570 : f32 = u_xlat12;
  let x_1573 : f32 = u_xlat2.x;
  u_xlat12 = (-(x_1570) + x_1573);
  let x_1575 : f32 = u_xlat12;
  let x_1577 : f32 = u_xlat2.y;
  u_xlat6.y = (x_1575 / x_1577);
  let x_1580 : vec3<f32> = u_xlat6;
  let x_1584 : vec2<f32> = (vec2<f32>(x_1580.x, x_1580.y) + vec2<f32>(-0.5f, -0.40000000596046447754f));
  let x_1585 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1584.x, x_1585.y, x_1584.y);
  let x_1588 : f32 = u_xlat6.z;
  u_xlat1.x = (x_1588 * 2.5f);
  let x_1593 : f32 = u_xlat6.z;
  u_xlatb18 = (x_1593 >= 0.0f);
  let x_1595 : bool = u_xlatb18;
  u_xlat18 = select(-1.0f, 1.0f, x_1595);
  let x_1598 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1598)) + 1.0f);
  let x_1604 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1604, 0.0f);
  let x_1608 : f32 = u_xlat1.x;
  let x_1611 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1608) * x_1611) + 1.0f);
  let x_1615 : f32 = u_xlat18;
  let x_1617 : f32 = u_xlat1.x;
  u_xlat18 = ((x_1615 * x_1617) + 1.0f);
  let x_1620 : f32 = u_xlat18;
  u_xlat18 = (x_1620 * 0.02500000037252902985f);
  let x_1624 : f32 = u_xlat6.x;
  let x_1625 : f32 = u_xlat18;
  u_xlat6.x = (x_1624 * x_1625);
  let x_1629 : f32 = u_xlat0.x;
  u_xlatb1.x = (x_1629 >= 0.47999998927116394043f);
  let x_1635 : f32 = u_xlat0.x;
  u_xlatb0.x = (0.15999999642372131348f >= x_1635);
  let x_1639 : bool = u_xlatb1.x;
  if (x_1639) {
    x_1640 = 0.0f;
  } else {
    let x_1645 : f32 = u_xlat6.x;
    x_1640 = x_1645;
  }
  let x_1646 : f32 = x_1640;
  u_xlat6.x = x_1646;
  let x_1649 : bool = u_xlatb0.x;
  if (x_1649) {
    let x_1653 : f32 = u_xlat18;
    x_1650 = x_1653;
  } else {
    let x_1656 : f32 = u_xlat6.x;
    x_1650 = x_1656;
  }
  let x_1657 : f32 = x_1650;
  u_xlat0.x = x_1657;
  let x_1660 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1660 + 1.0f);
  let x_1663 : vec4<f32> = u_xlat0;
  let x_1665 : vec3<f32> = u_xlat7;
  let x_1666 : vec3<f32> = (vec3<f32>(x_1663.x, x_1663.x, x_1663.x) * x_1665);
  let x_1667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1667.x, x_1666.x, x_1666.y, x_1666.z);
  let x_1670 : f32 = u_xlat7.x;
  let x_1673 : f32 = u_xlat0.x;
  u_xlat6.x = ((-(x_1670) * x_1673) + 0.02999999932944774628f);
  let x_1679 : f32 = u_xlat7.y;
  let x_1681 : f32 = u_xlat0.x;
  let x_1684 : f32 = u_xlat2.w;
  u_xlat18 = ((x_1679 * x_1681) + -(x_1684));
  let x_1687 : f32 = u_xlat18;
  u_xlat18 = (x_1687 * 1.73205077648162841797f);
  let x_1691 : f32 = u_xlat2.y;
  let x_1694 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1691 * 2.0f) + -(x_1694));
  let x_1699 : f32 = u_xlat7.z;
  let x_1702 : f32 = u_xlat0.x;
  let x_1705 : f32 = u_xlat1.x;
  u_xlat0.x = ((-(x_1699) * x_1702) + x_1705);
  let x_1709 : f32 = u_xlat0.x;
  let x_1711 : f32 = u_xlat18;
  u_xlat1.x = max(abs(x_1709), abs(x_1711));
  let x_1716 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_1716);
  let x_1720 : f32 = u_xlat0.x;
  let x_1722 : f32 = u_xlat18;
  u_xlat7.x = min(abs(x_1720), abs(x_1722));
  let x_1727 : f32 = u_xlat1.x;
  let x_1729 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1727 * x_1729);
  let x_1733 : f32 = u_xlat1.x;
  let x_1735 : f32 = u_xlat1.x;
  u_xlat7.x = (x_1733 * x_1735);
  let x_1740 : f32 = u_xlat7.x;
  u_xlat13 = ((x_1740 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_1746 : f32 = u_xlat7.x;
  let x_1747 : f32 = u_xlat13;
  u_xlat13 = ((x_1746 * x_1747) + 0.18014100193977355957f);
  let x_1752 : f32 = u_xlat7.x;
  let x_1753 : f32 = u_xlat13;
  u_xlat13 = ((x_1752 * x_1753) + -0.33029949665069580078f);
  let x_1758 : f32 = u_xlat7.x;
  let x_1759 : f32 = u_xlat13;
  u_xlat7.x = ((x_1758 * x_1759) + 0.99986600875854492188f);
  let x_1765 : f32 = u_xlat7.x;
  let x_1767 : f32 = u_xlat1.x;
  u_xlat13 = (x_1765 * x_1767);
  let x_1769 : f32 = u_xlat13;
  u_xlat13 = ((x_1769 * -2.0f) + 1.57079637050628662109f);
  let x_1775 : f32 = u_xlat0.x;
  let x_1777 : f32 = u_xlat18;
  u_xlatb19 = (abs(x_1775) < abs(x_1777));
  let x_1780 : bool = u_xlatb19;
  let x_1781 : f32 = u_xlat13;
  u_xlat13 = select(0.0f, x_1781, x_1780);
  let x_1784 : f32 = u_xlat0.x;
  let x_1785 : f32 = u_xlat18;
  u_xlat19 = min(x_1784, x_1785);
  let x_1788 : f32 = u_xlat0.x;
  let x_1789 : f32 = u_xlat18;
  u_xlat18 = max(x_1788, x_1789);
  let x_1792 : f32 = u_xlat0.x;
  let x_1794 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1792 < -(x_1794));
  let x_1799 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, -3.14159274101257324219f, x_1799);
  let x_1803 : f32 = u_xlat18;
  let x_1804 : f32 = u_xlat18;
  u_xlatb18 = (x_1803 >= -(x_1804));
  let x_1807 : f32 = u_xlat19;
  let x_1808 : f32 = u_xlat19;
  u_xlatb19 = (x_1807 < -(x_1808));
  let x_1811 : bool = u_xlatb18;
  let x_1812 : bool = u_xlatb19;
  u_xlatb18 = (x_1811 & x_1812);
  let x_1815 : f32 = u_xlat1.x;
  let x_1817 : f32 = u_xlat7.x;
  let x_1819 : f32 = u_xlat13;
  u_xlat1.x = ((x_1815 * x_1817) + x_1819);
  let x_1823 : f32 = u_xlat0.x;
  let x_1825 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1823 + x_1825);
  let x_1828 : bool = u_xlatb18;
  if (x_1828) {
    let x_1833 : f32 = u_xlat0.x;
    x_1829 = -(x_1833);
  } else {
    let x_1837 : f32 = u_xlat0.x;
    x_1829 = x_1837;
  }
  let x_1838 : f32 = x_1829;
  u_xlat0.x = x_1838;
  let x_1840 : vec4<f32> = u_xlat2;
  let x_1842 : vec4<f32> = u_xlat2;
  let x_1844 : vec4<bool> = (vec4<f32>(x_1840.z, x_1840.w, x_1840.z, x_1840.z) == vec4<f32>(x_1842.y, x_1842.z, x_1842.y, x_1842.y));
  let x_1845 : vec2<bool> = vec2<bool>(x_1844.x, x_1844.y);
  let x_1846 : vec4<bool> = u_xlatb1;
  u_xlatb1 = vec4<bool>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
  let x_1849 : bool = u_xlatb1.y;
  let x_1851 : bool = u_xlatb1.x;
  u_xlatb18 = (x_1849 & x_1851);
  let x_1854 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1854 * 57.295780181884765625f);
  let x_1858 : bool = u_xlatb18;
  if (x_1858) {
    x_1859 = 0.0f;
  } else {
    let x_1864 : f32 = u_xlat0.x;
    x_1859 = x_1864;
  }
  let x_1865 : f32 = x_1859;
  u_xlat0.x = x_1865;
  let x_1868 : f32 = u_xlat0.x;
  u_xlatb18 = (x_1868 < 0.0f);
  let x_1871 : f32 = u_xlat0.x;
  u_xlat1.x = (x_1871 + 360.0f);
  let x_1875 : bool = u_xlatb18;
  if (x_1875) {
    let x_1880 : f32 = u_xlat1.x;
    x_1876 = x_1880;
  } else {
    let x_1883 : f32 = u_xlat0.x;
    x_1876 = x_1883;
  }
  let x_1884 : f32 = x_1876;
  u_xlat0.x = x_1884;
  let x_1888 : f32 = u_xlat0.x;
  u_xlatb18 = (180.0f < x_1888);
  let x_1890 : vec4<f32> = u_xlat0;
  let x_1894 : vec2<f32> = (vec2<f32>(x_1890.x, x_1890.x) + vec2<f32>(360.0f, -360.0f));
  let x_1895 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1894.x, x_1894.y, x_1895.z);
  let x_1897 : bool = u_xlatb18;
  if (x_1897) {
    let x_1902 : f32 = u_xlat1.y;
    x_1898 = x_1902;
  } else {
    let x_1905 : f32 = u_xlat0.x;
    x_1898 = x_1905;
  }
  let x_1906 : f32 = x_1898;
  u_xlat18 = x_1906;
  let x_1908 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_1908 < -180.0f);
  let x_1913 : bool = u_xlatb0.x;
  if (x_1913) {
    let x_1918 : f32 = u_xlat1.x;
    x_1914 = x_1918;
  } else {
    let x_1920 : f32 = u_xlat18;
    x_1914 = x_1920;
  }
  let x_1921 : f32 = x_1914;
  u_xlat0.x = x_1921;
  let x_1924 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1924 * 0.01481481455266475677f);
  let x_1929 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1929)) + 1.0f);
  let x_1935 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1935, 0.0f);
  let x_1939 : f32 = u_xlat0.x;
  u_xlat18 = ((x_1939 * -2.0f) + 3.0f);
  let x_1943 : f32 = u_xlat0.x;
  let x_1945 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1943 * x_1945);
  let x_1949 : f32 = u_xlat0.x;
  let x_1950 : f32 = u_xlat18;
  u_xlat0.x = (x_1949 * x_1950);
  let x_1954 : f32 = u_xlat0.x;
  let x_1956 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1954 * x_1956);
  let x_1960 : f32 = u_xlat6.y;
  let x_1962 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1960 * x_1962);
  let x_1966 : f32 = u_xlat6.x;
  let x_1968 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1966 * x_1968);
  let x_1972 : f32 = u_xlat0.x;
  let x_1976 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1972 * 0.18000000715255737305f) + x_1976);
  let x_1979 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1979.x, x_1979.z, x_1979.w));
  let x_1983 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1983.x, x_1983.z, x_1983.w));
  let x_1987 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1987.x, x_1987.z, x_1987.w));
  let x_1991 : vec4<f32> = u_xlat0;
  let x_1993 : vec3<f32> = max(vec3<f32>(x_1991.x, x_1991.y, x_1991.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1994 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1999 : f32 = u_xlat18;
  let x_2002 : vec4<f32> = u_xlat0;
  let x_2004 : vec3<f32> = (-(vec3<f32>(x_1999, x_1999, x_1999)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : vec4<f32> = u_xlat0;
  let x_2012 : f32 = u_xlat18;
  let x_2014 : vec3<f32> = ((vec3<f32>(x_2007.x, x_2007.y, x_2007.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_2012, x_2012, x_2012));
  let x_2015 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2017 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_2017.x, x_2017.y, x_2017.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_2022 : vec4<f32> = u_xlat0;
  let x_2024 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * x_2024) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_2029 : vec4<f32> = u_xlat0;
  let x_2036 : vec3<f32> = ((vec3<f32>(x_2029.x, x_2029.y, x_2029.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_2037 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
  let x_2039 : vec4<f32> = u_xlat0;
  let x_2041 : vec4<f32> = u_xlat2;
  let x_2046 : vec3<f32> = ((vec3<f32>(x_2039.x, x_2039.y, x_2039.z) * vec3<f32>(x_2041.x, x_2041.y, x_2041.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_2047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec3<f32> = u_xlat1;
  let x_2050 : vec4<f32> = u_xlat0;
  let x_2052 : vec3<f32> = (x_2049 / vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
  let x_2059 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
  let x_2067 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2075 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2079 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_2079, vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_2083 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2083, 0.00009999999747378752f);
  let x_2086 : vec3<f32> = u_xlat1;
  let x_2088 : vec4<f32> = u_xlat0;
  let x_2090 : vec2<f32> = (vec2<f32>(x_2086.x, x_2086.y) / vec2<f32>(x_2088.x, x_2088.x));
  let x_2091 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2090.x, x_2090.y, x_2091.z, x_2091.w);
  let x_2094 : f32 = u_xlat1.y;
  u_xlat18 = max(x_2094, 0.0f);
  let x_2096 : f32 = u_xlat18;
  u_xlat18 = min(x_2096, 65504.0f);
  let x_2098 : f32 = u_xlat18;
  u_xlat18 = log2(x_2098);
  let x_2100 : f32 = u_xlat18;
  u_xlat18 = (x_2100 * 0.98110002279281616211f);
  let x_2103 : f32 = u_xlat18;
  u_xlat1.y = exp2(x_2103);
  let x_2107 : f32 = u_xlat0.x;
  u_xlat18 = (-(x_2107) + 1.0f);
  let x_2111 : f32 = u_xlat0.y;
  let x_2113 : f32 = u_xlat18;
  u_xlat0.z = (-(x_2111) + x_2113);
  let x_2117 : f32 = u_xlat0.y;
  u_xlat6.x = max(x_2117, 0.00009999999747378752f);
  let x_2121 : f32 = u_xlat1.y;
  let x_2123 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2121 / x_2123);
  let x_2126 : vec3<f32> = u_xlat6;
  let x_2128 : vec4<f32> = u_xlat0;
  let x_2130 : vec2<f32> = (vec2<f32>(x_2126.x, x_2126.x) * vec2<f32>(x_2128.x, x_2128.z));
  let x_2131 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_2130.x, x_2131.y, x_2130.y);
  let x_2137 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), x_2137);
  let x_2144 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), x_2144);
  let x_2151 : vec3<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), x_2151);
  let x_2154 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_2157 : f32 = u_xlat18;
  let x_2160 : vec4<f32> = u_xlat0;
  let x_2162 : vec3<f32> = (-(vec3<f32>(x_2157, x_2157, x_2157)) + vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec4<f32> = u_xlat0;
  let x_2170 : f32 = u_xlat18;
  let x_2172 : vec3<f32> = ((vec3<f32>(x_2165.x, x_2165.y, x_2165.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_2170, x_2170, x_2170));
  let x_2173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
  let x_2179 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2183 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2191 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), x_2191);
  let x_2198 : vec3<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), x_2198);
  let x_2205 : vec3<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), x_2205);
  let x_2214 : vec4<f32> = u_xlat0;
  SV_Target0.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2223 : vec4<f32> = u_xlat0;
  SV_Target0.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2231 : vec4<f32> = u_xlat0;
  SV_Target0.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
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


