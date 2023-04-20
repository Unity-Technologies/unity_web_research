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

var<private> u_xlat2 : vec3<f32>;

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

var<private> u_xlatb1 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat6 : vec2<f32>;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_906 : f32;
  var x_921 : f32;
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
  let x_153 : vec3<f32> = u_xlat1;
  let x_159 : vec3<f32> = ((x_153 * vec3<f32>(5.55555582046508789062f, 5.55555582046508789062f, 5.55555582046508789062f)) + vec3<f32>(0.04799599945545196533f, 0.04799599945545196533f, 0.04799599945545196533f));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = max(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = log2(vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(0.07349978387355804443f, 0.07349978387355804443f, 0.07349978387355804443f)) + vec3<f32>(-0.02755239605903625488f, -0.02755239605903625488f, -0.02755239605903625488f));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = x_16.x_HueSatCon;
  let x_193 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_188.z, x_188.z, x_188.z)) + vec3<f32>(0.02755239605903625488f, 0.02755239605903625488f, 0.02755239605903625488f));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(13.6054821014404296875f, 13.6054821014404296875f, 13.6054821014404296875f));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = exp2(vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + vec3<f32>(-0.04799599945545196533f, -0.04799599945545196533f, -0.04799599945545196533f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat0;
  let x_215 : vec4<f32> = x_16.x_ColorFilter;
  let x_217 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(0.1799999922513961792f, 0.1799999922513961792f, 0.1799999922513961792f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = max(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = log2(vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(0.45454546809196472168f, 0.45454546809196472168f, 0.45454546809196472168f));
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec3<f32> = exp2(vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_247.x, x_247.y, x_247.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_259 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = min(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = sqrt(vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_279 : f32 = u_xlat18;
  let x_282 : f32 = x_16.x_SplitShadows.w;
  u_xlat18 = (x_279 + x_282);
  let x_284 : f32 = u_xlat18;
  u_xlat18 = clamp(x_284, 0.0f, 1.0f);
  let x_287 : f32 = u_xlat18;
  u_xlat19 = (-(x_287) + 1.0f);
  let x_291 : vec4<f32> = x_16.x_SplitShadows;
  let x_295 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : f32 = u_xlat19;
  let x_300 : vec4<f32> = u_xlat3;
  let x_305 : vec3<f32> = ((vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_309.x, x_309.y, x_309.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_316 : vec3<f32> = u_xlat2;
  let x_317 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_316 * x_317);
  let x_319 : vec3<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_319 * vec3<f32>(x_320.x, x_320.y, x_320.z)) + x_323);
  let x_329 : vec4<f32> = u_xlat3;
  let x_333 : vec4<bool> = (vec4<f32>(x_329.x, x_329.y, x_329.z, x_329.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_333.x, x_333.y, x_333.z);
  let x_338 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_338);
  let x_342 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_342);
  let x_346 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_346);
  let x_350 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_358);
  let x_361 : vec3<f32> = u_xlat2;
  let x_362 : vec3<f32> = u_xlat5;
  u_xlat2 = (x_361 * x_362);
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_368 : vec4<f32> = u_xlat3;
  let x_373 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = u_xlat1;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_376 * x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = u_xlat1;
  let x_385 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + x_384);
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = u_xlat4;
  let x_392 : vec3<f32> = u_xlat2;
  let x_393 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * x_390) + x_392);
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = sqrt(vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_413 : vec4<f32> = x_16.x_SplitHighlights;
  let x_415 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : f32 = u_xlat18;
  let x_420 : vec4<f32> = u_xlat3;
  let x_423 : vec3<f32> = ((vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_426.x, x_426.y, x_426.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_431 : vec3<f32> = u_xlat2;
  let x_432 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_431 * x_432);
  let x_434 : vec3<f32> = u_xlat1;
  let x_435 : vec4<f32> = u_xlat3;
  let x_438 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_434 * vec3<f32>(x_435.x, x_435.y, x_435.z)) + x_438);
  let x_440 : vec4<f32> = u_xlat3;
  let x_442 : vec4<bool> = (vec4<f32>(x_440.x, x_440.y, x_440.z, x_440.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_442.x, x_442.y, x_442.z);
  let x_445 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_445);
  let x_449 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_449);
  let x_453 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_453);
  let x_457 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_457);
  let x_461 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_461);
  let x_465 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_465);
  let x_468 : vec3<f32> = u_xlat2;
  let x_469 : vec3<f32> = u_xlat5;
  u_xlat2 = (x_468 * x_469);
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_471.x, x_471.y, x_471.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_475 : vec4<f32> = u_xlat3;
  let x_478 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec3<f32> = u_xlat1;
  let x_482 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_481 * x_482);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat3;
  let x_489 : vec3<f32> = u_xlat1;
  let x_490 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_486.x, x_486.y, x_486.z)) + x_489);
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec3<f32> = u_xlat4;
  let x_497 : vec3<f32> = u_xlat2;
  let x_498 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * x_495) + x_497);
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = log2(abs(vec3<f32>(x_501.x, x_501.y, x_501.z)));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(2.20000004768371582031f, 2.20000004768371582031f, 2.20000004768371582031f));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : vec3<f32> = exp2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = x_16.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_519.x, x_519.y, x_519.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_527 : vec4<f32> = u_xlat0;
  let x_531 : vec4<f32> = x_16.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_535 : vec4<f32> = u_xlat0;
  let x_539 : vec4<f32> = x_16.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_535.x, x_535.y, x_535.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : vec3<f32> = u_xlat1;
  let x_546 : vec4<f32> = x_16.x_Midtones;
  let x_548 : vec3<f32> = (x_543 * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_551, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_553 : f32 = u_xlat18;
  let x_557 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_560 : vec2<f32> = (vec2<f32>(x_553, x_553) + -(vec2<f32>(x_557.x, x_557.z)));
  let x_561 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_560.x, x_560.y, x_561.z);
  let x_566 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_570 : vec4<f32> = x_16.x_ShaHiLimits;
  u_xlat14 = (-(vec2<f32>(x_566.x, x_566.z)) + vec2<f32>(x_570.y, x_570.w));
  let x_574 : vec2<f32> = u_xlat14;
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / x_574);
  let x_576 : vec2<f32> = u_xlat14;
  let x_577 : vec3<f32> = u_xlat2;
  let x_579 : vec2<f32> = (x_576 * vec2<f32>(x_577.x, x_577.y));
  let x_580 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_579.x, x_579.y, x_580.z);
  let x_582 : vec3<f32> = u_xlat2;
  let x_586 : vec2<f32> = clamp(vec2<f32>(x_582.x, x_582.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_586.x, x_586.y, x_587.z);
  let x_589 : vec3<f32> = u_xlat2;
  u_xlat14 = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(-2.0f, -2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_597 : vec3<f32> = u_xlat2;
  let x_599 : vec3<f32> = u_xlat2;
  let x_601 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_599.x, x_599.y));
  let x_602 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_601.x, x_601.y, x_602.z);
  let x_605 : f32 = u_xlat14.x;
  let x_608 : f32 = u_xlat2.x;
  u_xlat18 = ((-(x_605) * x_608) + 1.0f);
  let x_611 : f32 = u_xlat18;
  u_xlat19 = (-(x_611) + 1.0f);
  let x_615 : f32 = u_xlat14.y;
  let x_618 : f32 = u_xlat2.y;
  let x_620 : f32 = u_xlat19;
  u_xlat19 = ((-(x_615) * x_618) + x_620);
  let x_623 : f32 = u_xlat2.y;
  let x_625 : f32 = u_xlat14.y;
  u_xlat2.x = (x_623 * x_625);
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : f32 = u_xlat19;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630, x_630, x_630));
  let x_633 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : vec3<f32> = u_xlat1;
  let x_639 : vec4<f32> = x_16.x_Shadows;
  u_xlat8 = (x_636 * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec3<f32> = u_xlat1;
  let x_645 : vec4<f32> = x_16.x_Highlights;
  u_xlat1 = (x_642 * vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec3<f32> = u_xlat8;
  let x_649 : f32 = u_xlat18;
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = ((x_648 * vec3<f32>(x_649, x_649, x_649)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat1;
  let x_658 : vec3<f32> = u_xlat2;
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = ((x_657 * vec3<f32>(x_658.x, x_658.x, x_658.x)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_670 : vec4<f32> = x_16.x_Gain;
  let x_675 : vec4<f32> = x_16.x_Lift;
  let x_677 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_670.x, x_670.y, x_670.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_684.x, x_684.y, x_684.z, x_684.x));
  u_xlati1 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_686.x, x_686.y, x_686.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : vec4<bool> = (vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlati2 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_699.x, x_699.y, x_699.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_705 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = log2(abs(vec3<f32>(x_705.x, x_705.y, x_705.z)));
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_715 : vec4<f32> = x_16.x_Gamma;
  let x_717 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec3<f32> = exp2(vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<i32> = u_xlati1;
  let x_727 : vec3<i32> = u_xlati2;
  u_xlati1 = (-(x_725) + x_727);
  let x_729 : vec3<i32> = u_xlati1;
  u_xlat1 = vec3<f32>(x_729);
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec3<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_731.x, x_731.y, x_731.z) * x_733);
  let x_735 : vec3<f32> = u_xlat2;
  let x_736 : vec2<f32> = vec2<f32>(x_735.z, x_735.y);
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
  let x_739 : vec3<f32> = u_xlat1;
  let x_741 : vec4<f32> = u_xlat0;
  let x_744 : vec4<f32> = u_xlat3;
  let x_747 : vec2<f32> = ((vec2<f32>(x_739.y, x_739.z) * vec2<f32>(x_741.y, x_741.z)) + -(vec2<f32>(x_744.x, x_744.y)));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_752 : f32 = u_xlat3.y;
  let x_754 : f32 = u_xlat2.z;
  u_xlatb1 = (x_752 >= x_754);
  let x_756 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_756);
  u_xlat3.z = -1.0f;
  u_xlat3.w = 0.6666666865348815918f;
  u_xlat0.z = 1.0f;
  u_xlat0.w = -1.0f;
  let x_764 : vec3<f32> = u_xlat1;
  let x_766 : vec4<f32> = u_xlat0;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec4<f32>(x_764.x, x_764.x, x_764.x, x_764.x) * vec4<f32>(x_766.x, x_766.y, x_766.w, x_766.z)) + vec4<f32>(x_769.x, x_769.y, x_769.w, x_769.z));
  let x_773 : f32 = u_xlat2.x;
  let x_775 : f32 = u_xlat0.x;
  u_xlatb1 = (x_773 >= x_775);
  let x_777 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_777);
  let x_781 : f32 = u_xlat0.w;
  u_xlat3.z = x_781;
  let x_784 : f32 = u_xlat2.x;
  u_xlat0.w = x_784;
  let x_786 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(x_786, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_789 : vec4<f32> = u_xlat0;
  let x_790 : vec3<f32> = vec3<f32>(x_789.w, x_789.y, x_789.x);
  let x_791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_790.z);
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_793) + x_795);
  let x_797 : vec3<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat3;
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_797.x, x_797.x, x_797.x, x_797.x) * x_799) + x_801);
  let x_804 : f32 = u_xlat0.y;
  let x_806 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_804, x_806);
  let x_810 : f32 = u_xlat0.x;
  let x_812 : f32 = u_xlat1.x;
  u_xlat1.x = (x_810 + -(x_812));
  let x_818 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_818 * 6.0f) + 0.00009999999747378752f);
  let x_826 : f32 = u_xlat0.y;
  let x_829 : f32 = u_xlat0.w;
  u_xlat6.x = (-(x_826) + x_829);
  let x_833 : f32 = u_xlat6.x;
  let x_835 : f32 = u_xlat7.x;
  u_xlat6.x = (x_833 / x_835);
  let x_839 : f32 = u_xlat6.x;
  let x_841 : f32 = u_xlat0.z;
  u_xlat6.x = (x_839 + x_841);
  let x_845 : f32 = u_xlat6.x;
  u_xlat3.x = abs(x_845);
  let x_849 : f32 = u_xlat3.x;
  let x_851 : f32 = x_16.x_HueSatCon.x;
  u_xlat14.x = (x_849 + x_851);
  u_xlat2.y = 0.0f;
  u_xlat14.y = 0.0f;
  let x_866 : vec2<f32> = u_xlat14;
  let x_869 : f32 = x_16.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(x_CurveHueVsHue, sampler_LinearClamp, x_866, x_869);
  u_xlat6.x = x_870.x;
  let x_877 : vec3<f32> = u_xlat2;
  let x_880 : f32 = x_16.x_GlobalMipBias.x;
  let x_881 : vec4<f32> = textureSampleBias(x_CurveLumVsSat, sampler_LinearClamp, vec2<f32>(x_877.x, x_877.y), x_880);
  u_xlat6.y = x_881.x;
  let x_884 : vec2<f32> = u_xlat6;
  u_xlat6 = x_884;
  let x_885 : vec2<f32> = u_xlat6;
  u_xlat6 = clamp(x_885, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_890 : f32 = u_xlat14.x;
  let x_892 : f32 = u_xlat6.x;
  u_xlat6.x = (x_890 + x_892);
  let x_895 : vec2<f32> = u_xlat6;
  u_xlat7 = (vec3<f32>(x_895.x, x_895.x, x_895.x) + vec3<f32>(-0.5f, 0.5f, -1.5f));
  let x_902 : f32 = u_xlat7.x;
  u_xlatb6 = (1.0f < x_902);
  let x_904 : bool = u_xlatb6;
  if (x_904) {
    let x_910 : f32 = u_xlat7.z;
    x_906 = x_910;
  } else {
    let x_913 : f32 = u_xlat7.x;
    x_906 = x_913;
  }
  let x_914 : f32 = x_906;
  u_xlat6.x = x_914;
  let x_918 : f32 = u_xlat7.x;
  u_xlatb18 = (x_918 < 0.0f);
  let x_920 : bool = u_xlatb18;
  if (x_920) {
    let x_925 : f32 = u_xlat7.y;
    x_921 = x_925;
  } else {
    let x_928 : f32 = u_xlat6.x;
    x_921 = x_928;
  }
  let x_929 : f32 = x_921;
  u_xlat6.x = x_929;
  let x_931 : vec2<f32> = u_xlat6;
  u_xlat7 = (vec3<f32>(x_931.x, x_931.x, x_931.x) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_936 : vec3<f32> = u_xlat7;
  u_xlat7 = fract(x_936);
  let x_938 : vec3<f32> = u_xlat7;
  u_xlat7 = ((x_938 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_944 : vec3<f32> = u_xlat7;
  u_xlat7 = (abs(x_944) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_947 : vec3<f32> = u_xlat7;
  u_xlat7 = clamp(x_947, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_951 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_951 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_954 : f32 = u_xlat0.x;
  u_xlat6.x = (x_954 + 0.00009999999747378752f);
  let x_959 : f32 = u_xlat1.x;
  let x_961 : f32 = u_xlat6.x;
  u_xlat15.x = (x_959 / x_961);
  let x_964 : vec2<f32> = u_xlat15;
  let x_966 : vec3<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_964.x, x_964.x, x_964.x) * x_966) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_969.x, x_969.x, x_969.x) * x_971);
  let x_973 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_973, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_976 : vec4<f32> = u_xlat0;
  let x_978 : vec3<f32> = u_xlat1;
  let x_980 : vec2<f32> = u_xlat6;
  u_xlat1 = ((vec3<f32>(x_976.x, x_976.x, x_976.x) * x_978) + -(vec3<f32>(x_980.x, x_980.x, x_980.x)));
  u_xlat3.y = 0.0f;
  u_xlat15.y = 0.0f;
  let x_990 : vec4<f32> = u_xlat3;
  let x_993 : f32 = x_16.x_GlobalMipBias.x;
  let x_994 : vec4<f32> = textureSampleBias(x_CurveHueVsSat, sampler_LinearClamp, vec2<f32>(x_990.x, x_990.y), x_993);
  u_xlat0.x = x_994.x;
  let x_1001 : vec2<f32> = u_xlat15;
  let x_1003 : f32 = x_16.x_GlobalMipBias.x;
  let x_1004 : vec4<f32> = textureSampleBias(x_CurveSatVsSat, sampler_LinearClamp, x_1001, x_1003);
  u_xlat0.w = x_1004.x;
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1008.x, x_1009.y, x_1009.z, x_1008.y);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1015 : vec2<f32> = clamp(vec2<f32>(x_1011.x, x_1011.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1016 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1015.x, x_1016.y, x_1016.z, x_1015.y);
  let x_1019 : f32 = u_xlat0.x;
  let x_1021 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1019 + x_1021);
  let x_1024 : vec4<f32> = u_xlat0;
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_1024.w, x_1024.w), vec2<f32>(x_1026.x, x_1026.x));
  let x_1031 : f32 = u_xlat0.x;
  let x_1033 : f32 = u_xlat6.y;
  u_xlat0.x = (x_1031 * x_1033);
  let x_1037 : vec4<f32> = x_16.x_HueSatCon;
  let x_1039 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_1037.y, x_1037.y), vec2<f32>(x_1039.x, x_1039.x));
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1045 : vec3<f32> = u_xlat1;
  let x_1047 : vec2<f32> = u_xlat6;
  let x_1049 : vec3<f32> = ((vec3<f32>(x_1043.x, x_1043.x, x_1043.x) * x_1045) + vec3<f32>(x_1047.x, x_1047.x, x_1047.x));
  let x_1050 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1053 : f32 = u_xlat0.y;
  let x_1055 : f32 = u_xlat0.x;
  u_xlat18 = max(x_1053, x_1055);
  let x_1058 : f32 = u_xlat0.z;
  let x_1059 : f32 = u_xlat18;
  u_xlat18 = max(x_1058, x_1059);
  let x_1061 : f32 = u_xlat18;
  u_xlat18 = (x_1061 + 1.0f);
  let x_1063 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_1063);
  let x_1065 : vec4<f32> = u_xlat0;
  let x_1067 : f32 = u_xlat18;
  let x_1072 : vec3<f32> = ((vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(x_1067, x_1067, x_1067)) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  u_xlat0.w = 0.0f;
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1083 : f32 = x_16.x_GlobalMipBias.x;
  let x_1084 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1080.x, x_1080.w), x_1083);
  u_xlat1.x = x_1084.x;
  let x_1088 : f32 = u_xlat1.x;
  u_xlat1.x = x_1088;
  let x_1091 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1091, 0.0f, 1.0f);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1100 : f32 = x_16.x_GlobalMipBias.x;
  let x_1101 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1097.y, x_1097.w), x_1100);
  u_xlat7.x = x_1101.x;
  let x_1107 : vec4<f32> = u_xlat0;
  let x_1110 : f32 = x_16.x_GlobalMipBias.x;
  let x_1111 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1107.z, x_1107.w), x_1110);
  u_xlat7.y = x_1111.x;
  let x_1114 : vec3<f32> = u_xlat7;
  let x_1115 : vec2<f32> = vec2<f32>(x_1114.x, x_1114.y);
  let x_1116 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1116.x, x_1115.x, x_1115.y);
  let x_1118 : vec3<f32> = u_xlat1;
  let x_1122 : vec2<f32> = clamp(vec2<f32>(x_1118.y, x_1118.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1123 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1123.x, x_1122.x, x_1122.y);
  let x_1125 : vec3<f32> = u_xlat1;
  let x_1126 : vec3<f32> = (x_1125 + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  u_xlat0.w = 0.0f;
  let x_1134 : vec4<f32> = u_xlat0;
  let x_1137 : f32 = x_16.x_GlobalMipBias.x;
  let x_1138 : vec4<f32> = textureSampleBias(x_CurveRed, sampler_LinearClamp, vec2<f32>(x_1134.x, x_1134.w), x_1137);
  u_xlat1.x = x_1138.x;
  let x_1142 : f32 = u_xlat1.x;
  u_xlat1.x = x_1142;
  let x_1145 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1145, 0.0f, 1.0f);
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1155 : f32 = x_16.x_GlobalMipBias.x;
  let x_1156 : vec4<f32> = textureSampleBias(x_CurveGreen, sampler_LinearClamp, vec2<f32>(x_1152.y, x_1152.w), x_1155);
  u_xlat7.x = x_1156.x;
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1166 : f32 = x_16.x_GlobalMipBias.x;
  let x_1167 : vec4<f32> = textureSampleBias(x_CurveBlue, sampler_LinearClamp, vec2<f32>(x_1163.z, x_1163.w), x_1166);
  u_xlat7.y = x_1167.x;
  let x_1170 : vec3<f32> = u_xlat7;
  let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
  let x_1172 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1172.x, x_1171.x, x_1171.y);
  let x_1174 : vec3<f32> = u_xlat1;
  let x_1178 : vec2<f32> = clamp(vec2<f32>(x_1174.y, x_1174.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1179 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1179.x, x_1178.x, x_1178.y);
  let x_1182 : f32 = u_xlat1.y;
  let x_1184 : f32 = u_xlat1.x;
  u_xlat0.x = max(x_1182, x_1184);
  let x_1188 : f32 = u_xlat1.z;
  let x_1190 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1188, x_1190);
  let x_1194 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1194) + 1.0f);
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_1199);
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1204 : vec3<f32> = u_xlat1;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.x, x_1202.x) * x_1204);
  let x_1206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1210 : vec4<f32> = u_xlat0;
  let x_1212 : vec3<f32> = max(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1213 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
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


