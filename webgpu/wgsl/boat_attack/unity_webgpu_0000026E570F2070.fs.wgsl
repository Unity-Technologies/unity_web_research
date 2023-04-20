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

var<private> u_xlat12 : f32;

var<private> u_xlatb18 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(5) var x_CurveHueVsSat : texture_2d<f32>;

@group(0) @binding(6) var x_CurveSatVsSat : texture_2d<f32>;

@group(0) @binding(0) var x_CurveMaster : texture_2d<f32>;

@group(0) @binding(1) var x_CurveRed : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(2) var x_CurveGreen : texture_2d<f32>;

@group(0) @binding(3) var x_CurveBlue : texture_2d<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_894 : f32;
  var x_908 : f32;
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
  let x_64 : vec3<f32> = (vec3<f32>(x_59.x, x_59.z, x_59.w) * vec3<f32>(x_62.w, x_62.w, x_62.w));
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.3904049992561340332f, 0.54994100332260131836f, 0.00892631988972425461f), vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.07084160298109054565f, 0.96317201852798461914f, 0.00135775003582239151f), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.02310819923877716064f, 0.12802100181579589844f, 0.93624502420425415039f), vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : vec3<f32> = u_xlat1;
  let x_95 : vec4<f32> = x_16.x_ColorBalance;
  let x_97 : vec3<f32> = (x_92 * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(2.85846996307373046875f, -1.62879002094268798828f, -0.02489100024104118347f), vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.21018199622631072998f, 1.15820002555847167969f, 0.00032428099075332284f), vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.04181199893355369568f, -0.1181690022349357605f, 1.06867003440856933594f), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = ((x_124 * vec3<f32>(5.55555582046508789062f, 5.55555582046508789062f, 5.55555582046508789062f)) + vec3<f32>(0.04799599945545196533f, 0.04799599945545196533f, 0.04799599945545196533f));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_137 : vec3<f32> = max(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = log2(vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(0.07349978387355804443f, 0.07349978387355804443f, 0.07349978387355804443f)) + vec3<f32>(-0.02755239605903625488f, -0.02755239605903625488f, -0.02755239605903625488f));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_16.x_HueSatCon;
  let x_164 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(0.02755239605903625488f, 0.02755239605903625488f, 0.02755239605903625488f));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(13.6054821014404296875f, 13.6054821014404296875f, 13.6054821014404296875f));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = exp2(vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + vec3<f32>(-0.04799599945545196533f, -0.04799599945545196533f, -0.04799599945545196533f));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat0;
  let x_190 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(0.1799999922513961792f, 0.1799999922513961792f, 0.1799999922513961792f));
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = x_16.x_ColorFilter;
  let x_199 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = max(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = log2(vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(0.45454546809196472168f, 0.45454546809196472168f, 0.45454546809196472168f));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat0;
  let x_221 : vec3<f32> = exp2(vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_236 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = min(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat0;
  let x_245 : vec3<f32> = sqrt(vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_256 : f32 = u_xlat18;
  let x_259 : f32 = x_16.x_SplitShadows.w;
  u_xlat18 = (x_256 + x_259);
  let x_261 : f32 = u_xlat18;
  u_xlat18 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat18;
  u_xlat19 = (-(x_264) + 1.0f);
  let x_268 : vec4<f32> = x_16.x_SplitShadows;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : f32 = u_xlat19;
  let x_277 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_286.x, x_286.y, x_286.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_293 : vec3<f32> = u_xlat2;
  let x_294 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_293 * x_294);
  let x_296 : vec3<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat3;
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_296 * vec3<f32>(x_297.x, x_297.y, x_297.z)) + x_300);
  let x_306 : vec4<f32> = u_xlat3;
  let x_310 : vec4<bool> = (vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_310.x, x_310.y, x_310.z);
  let x_315 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_315);
  let x_319 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_319);
  let x_323 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_323);
  let x_327 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_335);
  let x_338 : vec3<f32> = u_xlat2;
  let x_339 : vec3<f32> = u_xlat5;
  u_xlat2 = (x_338 * x_339);
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_345 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec3<f32> = u_xlat1;
  let x_354 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_353 * x_354);
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat3;
  let x_361 : vec3<f32> = u_xlat1;
  let x_362 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + x_361);
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = u_xlat4;
  let x_369 : vec3<f32> = u_xlat2;
  let x_370 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * x_367) + x_369);
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = sqrt(vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_390 : vec4<f32> = x_16.x_SplitHighlights;
  let x_392 : vec3<f32> = (vec3<f32>(x_390.x, x_390.y, x_390.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : f32 = u_xlat18;
  let x_397 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_397.x, x_397.y, x_397.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat4 = ((-(vec3<f32>(x_403.x, x_403.y, x_403.z)) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_408 : vec3<f32> = u_xlat2;
  let x_409 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_408 * x_409);
  let x_411 : vec3<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat3;
  let x_415 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_411 * vec3<f32>(x_412.x, x_412.y, x_412.z)) + x_415);
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec4<bool> = (vec4<f32>(x_417.x, x_417.y, x_417.z, x_417.x) >= vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
  u_xlatb4 = vec3<bool>(x_419.x, x_419.y, x_419.z);
  let x_422 : bool = u_xlatb4.x;
  u_xlat5.x = select(1.0f, 0.0f, x_422);
  let x_426 : bool = u_xlatb4.y;
  u_xlat5.y = select(1.0f, 0.0f, x_426);
  let x_430 : bool = u_xlatb4.z;
  u_xlat5.z = select(1.0f, 0.0f, x_430);
  let x_434 : bool = u_xlatb4.x;
  u_xlat4.x = select(0.0f, 1.0f, x_434);
  let x_438 : bool = u_xlatb4.y;
  u_xlat4.y = select(0.0f, 1.0f, x_438);
  let x_442 : bool = u_xlatb4.z;
  u_xlat4.z = select(0.0f, 1.0f, x_442);
  let x_445 : vec3<f32> = u_xlat2;
  let x_446 : vec3<f32> = u_xlat5;
  u_xlat2 = (x_445 * x_446);
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec3<f32>(x_448.x, x_448.y, x_448.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_452 : vec4<f32> = u_xlat3;
  let x_455 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec3<f32> = u_xlat1;
  let x_459 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_458 * x_459);
  let x_461 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat3;
  let x_466 : vec3<f32> = u_xlat1;
  let x_467 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.y, x_463.z)) + x_466);
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec3<f32> = u_xlat4;
  let x_474 : vec3<f32> = u_xlat2;
  let x_475 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * x_472) + x_474);
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = log2(abs(vec3<f32>(x_478.x, x_478.y, x_478.z)));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(2.20000004768371582031f, 2.20000004768371582031f, 2.20000004768371582031f));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = exp2(vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = x_16.x_ChannelMixerRed;
  u_xlat1.x = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = x_16.x_ChannelMixerGreen;
  u_xlat1.y = dot(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_512 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = x_16.x_ChannelMixerBlue;
  u_xlat1.z = dot(vec3<f32>(x_512.x, x_512.y, x_512.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : vec3<f32> = u_xlat1;
  let x_523 : vec4<f32> = x_16.x_Midtones;
  let x_525 : vec3<f32> = (x_520 * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_528, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_530 : f32 = u_xlat18;
  let x_534 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_537 : vec2<f32> = (vec2<f32>(x_530, x_530) + -(vec2<f32>(x_534.x, x_534.z)));
  let x_538 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_537.x, x_537.y, x_538.z);
  let x_543 : vec4<f32> = x_16.x_ShaHiLimits;
  let x_547 : vec4<f32> = x_16.x_ShaHiLimits;
  u_xlat14 = (-(vec2<f32>(x_543.x, x_543.z)) + vec2<f32>(x_547.y, x_547.w));
  let x_551 : vec2<f32> = u_xlat14;
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / x_551);
  let x_553 : vec2<f32> = u_xlat14;
  let x_554 : vec3<f32> = u_xlat2;
  let x_556 : vec2<f32> = (x_553 * vec2<f32>(x_554.x, x_554.y));
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_556.x, x_556.y, x_557.z);
  let x_559 : vec3<f32> = u_xlat2;
  let x_563 : vec2<f32> = clamp(vec2<f32>(x_559.x, x_559.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_564 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_563.x, x_563.y, x_564.z);
  let x_566 : vec3<f32> = u_xlat2;
  u_xlat14 = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(-2.0f, -2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_574 : vec3<f32> = u_xlat2;
  let x_576 : vec3<f32> = u_xlat2;
  let x_578 : vec2<f32> = (vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_576.x, x_576.y));
  let x_579 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_578.x, x_578.y, x_579.z);
  let x_582 : f32 = u_xlat14.x;
  let x_585 : f32 = u_xlat2.x;
  u_xlat18 = ((-(x_582) * x_585) + 1.0f);
  let x_588 : f32 = u_xlat18;
  u_xlat19 = (-(x_588) + 1.0f);
  let x_592 : f32 = u_xlat14.y;
  let x_595 : f32 = u_xlat2.y;
  let x_597 : f32 = u_xlat19;
  u_xlat19 = ((-(x_592) * x_595) + x_597);
  let x_600 : f32 = u_xlat2.y;
  let x_602 : f32 = u_xlat14.y;
  u_xlat2.x = (x_600 * x_602);
  let x_605 : vec4<f32> = u_xlat0;
  let x_607 : f32 = u_xlat19;
  let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_607, x_607, x_607));
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : vec3<f32> = u_xlat1;
  let x_616 : vec4<f32> = x_16.x_Shadows;
  u_xlat8 = (x_613 * vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec3<f32> = u_xlat1;
  let x_622 : vec4<f32> = x_16.x_Highlights;
  u_xlat1 = (x_619 * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec3<f32> = u_xlat8;
  let x_626 : f32 = u_xlat18;
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = ((x_625 * vec3<f32>(x_626, x_626, x_626)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec3<f32> = u_xlat1;
  let x_635 : vec3<f32> = u_xlat2;
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : vec3<f32> = ((x_634 * vec3<f32>(x_635.x, x_635.x, x_635.x)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat0;
  let x_647 : vec4<f32> = x_16.x_Gain;
  let x_652 : vec4<f32> = x_16.x_Lift;
  let x_654 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_647.x, x_647.y, x_647.z)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_661.x, x_661.y, x_661.z, x_661.x));
  u_xlati1 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_663.x, x_663.y, x_663.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec4<bool> = (vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlati2 = bitcast<vec3<i32>>((select(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(x_676.x, x_676.y, x_676.z)) * vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
  let x_682 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = log2(abs(vec3<f32>(x_682.x, x_682.y, x_682.z)));
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = x_16.x_Gamma;
  let x_694 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : vec3<f32> = exp2(vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<i32> = u_xlati1;
  let x_704 : vec3<i32> = u_xlati2;
  u_xlati1 = (-(x_702) + x_704);
  let x_706 : vec3<i32> = u_xlati1;
  u_xlat1 = vec3<f32>(x_706);
  let x_708 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_708.x, x_708.y, x_708.z) * x_710);
  let x_712 : vec3<f32> = u_xlat2;
  let x_713 : vec2<f32> = vec2<f32>(x_712.z, x_712.y);
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
  let x_716 : vec3<f32> = u_xlat1;
  let x_718 : vec4<f32> = u_xlat0;
  let x_721 : vec4<f32> = u_xlat3;
  let x_724 : vec2<f32> = ((vec2<f32>(x_716.y, x_716.z) * vec2<f32>(x_718.y, x_718.z)) + -(vec2<f32>(x_721.x, x_721.y)));
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_729 : f32 = u_xlat3.y;
  let x_731 : f32 = u_xlat2.z;
  u_xlatb1 = (x_729 >= x_731);
  let x_733 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_733);
  u_xlat3.z = -1.0f;
  u_xlat3.w = 0.6666666865348815918f;
  u_xlat0.z = 1.0f;
  u_xlat0.w = -1.0f;
  let x_741 : vec3<f32> = u_xlat1;
  let x_743 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec4<f32>(x_741.x, x_741.x, x_741.x, x_741.x) * vec4<f32>(x_743.x, x_743.y, x_743.w, x_743.z)) + vec4<f32>(x_746.x, x_746.y, x_746.w, x_746.z));
  let x_750 : f32 = u_xlat2.x;
  let x_752 : f32 = u_xlat0.x;
  u_xlatb1 = (x_750 >= x_752);
  let x_754 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_754);
  let x_758 : f32 = u_xlat0.w;
  u_xlat3.z = x_758;
  let x_761 : f32 = u_xlat2.x;
  u_xlat0.w = x_761;
  let x_763 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(x_763, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_766 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = vec3<f32>(x_766.w, x_766.y, x_766.x);
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_767.z);
  let x_770 : vec4<f32> = u_xlat0;
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_770) + x_772);
  let x_774 : vec3<f32> = u_xlat1;
  let x_776 : vec4<f32> = u_xlat3;
  let x_778 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_774.x, x_774.x, x_774.x, x_774.x) * x_776) + x_778);
  let x_781 : f32 = u_xlat0.y;
  let x_783 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_781, x_783);
  let x_787 : f32 = u_xlat0.x;
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = (x_787 + -(x_789));
  let x_795 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_795 * 6.0f) + 0.00009999999747378752f);
  let x_803 : f32 = u_xlat0.y;
  let x_806 : f32 = u_xlat0.w;
  u_xlat6.x = (-(x_803) + x_806);
  let x_810 : f32 = u_xlat6.x;
  let x_812 : f32 = u_xlat7.x;
  u_xlat6.x = (x_810 / x_812);
  let x_816 : f32 = u_xlat6.x;
  let x_818 : f32 = u_xlat0.z;
  u_xlat6.x = (x_816 + x_818);
  let x_822 : f32 = u_xlat6.x;
  u_xlat3.x = abs(x_822);
  let x_826 : f32 = u_xlat3.x;
  let x_828 : f32 = x_16.x_HueSatCon.x;
  u_xlat14.x = (x_826 + x_828);
  u_xlat2.y = 0.0f;
  u_xlat14.y = 0.0f;
  let x_843 : vec2<f32> = u_xlat14;
  let x_846 : f32 = x_16.x_GlobalMipBias.x;
  let x_847 : vec4<f32> = textureSampleBias(x_CurveHueVsHue, sampler_LinearClamp, x_843, x_846);
  u_xlat6.x = x_847.x;
  let x_854 : vec3<f32> = u_xlat2;
  let x_857 : f32 = x_16.x_GlobalMipBias.x;
  let x_858 : vec4<f32> = textureSampleBias(x_CurveLumVsSat, sampler_LinearClamp, vec2<f32>(x_854.x, x_854.y), x_857);
  u_xlat6.y = x_858.x;
  let x_861 : vec2<f32> = u_xlat6;
  u_xlat6 = x_861;
  let x_862 : vec2<f32> = u_xlat6;
  u_xlat6 = clamp(x_862, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_868 : f32 = u_xlat6.y;
  let x_870 : f32 = u_xlat6.y;
  u_xlat12 = (x_868 + x_870);
  let x_873 : f32 = u_xlat6.x;
  u_xlat6.x = (x_873 + -0.5f);
  let x_877 : f32 = u_xlat6.x;
  let x_879 : f32 = u_xlat14.x;
  u_xlat6.x = (x_877 + x_879);
  let x_884 : f32 = u_xlat6.x;
  u_xlatb18 = (1.0f < x_884);
  let x_886 : vec2<f32> = u_xlat6;
  let x_889 : vec2<f32> = (vec2<f32>(x_886.x, x_886.x) + vec2<f32>(1.0f, -1.0f));
  let x_890 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_889.x, x_889.y, x_890.z);
  let x_892 : bool = u_xlatb18;
  if (x_892) {
    let x_898 : f32 = u_xlat7.y;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat6.x;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  u_xlat18 = x_902;
  let x_905 : f32 = u_xlat6.x;
  u_xlatb6 = (x_905 < 0.0f);
  let x_907 : bool = u_xlatb6;
  if (x_907) {
    let x_912 : f32 = u_xlat7.x;
    x_908 = x_912;
  } else {
    let x_914 : f32 = u_xlat18;
    x_908 = x_914;
  }
  let x_915 : f32 = x_908;
  u_xlat6.x = x_915;
  let x_917 : vec2<f32> = u_xlat6;
  u_xlat7 = (vec3<f32>(x_917.x, x_917.x, x_917.x) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_922 : vec3<f32> = u_xlat7;
  u_xlat7 = fract(x_922);
  let x_924 : vec3<f32> = u_xlat7;
  u_xlat7 = ((x_924 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_930 : vec3<f32> = u_xlat7;
  u_xlat7 = (abs(x_930) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_933 : vec3<f32> = u_xlat7;
  u_xlat7 = clamp(x_933, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_937 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_937 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_940 : f32 = u_xlat0.x;
  u_xlat6.x = (x_940 + 0.00009999999747378752f);
  let x_945 : f32 = u_xlat1.x;
  let x_947 : f32 = u_xlat6.x;
  u_xlat15.x = (x_945 / x_947);
  let x_950 : vec2<f32> = u_xlat15;
  let x_952 : vec3<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_950.x, x_950.x, x_950.x) * x_952) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_955 : vec4<f32> = u_xlat0;
  let x_957 : vec3<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_955.x, x_955.x, x_955.x) * x_957);
  let x_959 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_959, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_962 : vec4<f32> = u_xlat0;
  let x_964 : vec3<f32> = u_xlat1;
  let x_966 : vec2<f32> = u_xlat6;
  u_xlat1 = ((vec3<f32>(x_962.x, x_962.x, x_962.x) * x_964) + -(vec3<f32>(x_966.x, x_966.x, x_966.x)));
  u_xlat3.y = 0.0f;
  u_xlat15.y = 0.0f;
  let x_976 : vec4<f32> = u_xlat3;
  let x_979 : f32 = x_16.x_GlobalMipBias.x;
  let x_980 : vec4<f32> = textureSampleBias(x_CurveHueVsSat, sampler_LinearClamp, vec2<f32>(x_976.x, x_976.y), x_979);
  u_xlat0.x = x_980.x;
  let x_987 : vec2<f32> = u_xlat15;
  let x_989 : f32 = x_16.x_GlobalMipBias.x;
  let x_990 : vec4<f32> = textureSampleBias(x_CurveSatVsSat, sampler_LinearClamp, x_987, x_989);
  u_xlat0.w = x_990.x;
  let x_993 : vec4<f32> = u_xlat0;
  let x_994 : vec2<f32> = vec2<f32>(x_993.x, x_993.w);
  let x_995 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_994.x, x_995.y, x_995.z, x_994.y);
  let x_997 : vec4<f32> = u_xlat0;
  let x_1001 : vec2<f32> = clamp(vec2<f32>(x_997.x, x_997.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1001.x, x_1002.y, x_1002.z, x_1001.y);
  let x_1004 : vec4<f32> = u_xlat0;
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : vec2<f32> = (vec2<f32>(x_1004.x, x_1004.w) + vec2<f32>(x_1006.x, x_1006.w));
  let x_1009 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1008.x, x_1009.y, x_1009.z, x_1008.y);
  let x_1012 : f32 = u_xlat0.w;
  let x_1014 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1012 * x_1014);
  let x_1017 : f32 = u_xlat12;
  let x_1019 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1017 * x_1019);
  let x_1023 : f32 = u_xlat0.x;
  let x_1025 : f32 = x_16.x_HueSatCon.y;
  u_xlat0.x = (x_1023 * x_1025);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : vec3<f32> = u_xlat1;
  let x_1032 : vec2<f32> = u_xlat6;
  let x_1034 : vec3<f32> = ((vec3<f32>(x_1028.x, x_1028.x, x_1028.x) * x_1030) + vec3<f32>(x_1032.x, x_1032.x, x_1032.x));
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1042 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  u_xlat0.w = 0.0f;
  let x_1049 : vec4<f32> = u_xlat0;
  let x_1052 : f32 = x_16.x_GlobalMipBias.x;
  let x_1053 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1049.x, x_1049.w), x_1052);
  u_xlat1.x = x_1053.x;
  let x_1057 : f32 = u_xlat1.x;
  u_xlat1.x = x_1057;
  let x_1060 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1060, 0.0f, 1.0f);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1069 : f32 = x_16.x_GlobalMipBias.x;
  let x_1070 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1066.y, x_1066.w), x_1069);
  u_xlat7.x = x_1070.x;
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1079 : f32 = x_16.x_GlobalMipBias.x;
  let x_1080 : vec4<f32> = textureSampleBias(x_CurveMaster, sampler_LinearClamp, vec2<f32>(x_1076.z, x_1076.w), x_1079);
  u_xlat7.y = x_1080.x;
  let x_1083 : vec3<f32> = u_xlat7;
  let x_1084 : vec2<f32> = vec2<f32>(x_1083.x, x_1083.y);
  let x_1085 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1085.x, x_1084.x, x_1084.y);
  let x_1087 : vec3<f32> = u_xlat1;
  let x_1091 : vec2<f32> = clamp(vec2<f32>(x_1087.y, x_1087.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1092 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1092.x, x_1091.x, x_1091.y);
  let x_1094 : vec3<f32> = u_xlat1;
  let x_1095 : vec3<f32> = (x_1094 + vec3<f32>(0.00390625f, 0.00390625f, 0.00390625f));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  u_xlat0.w = 0.0f;
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1106 : f32 = x_16.x_GlobalMipBias.x;
  let x_1107 : vec4<f32> = textureSampleBias(x_CurveRed, sampler_LinearClamp, vec2<f32>(x_1103.x, x_1103.w), x_1106);
  u_xlat0.x = x_1107.x;
  let x_1113 : f32 = u_xlat0.x;
  SV_Target0.x = x_1113;
  let x_1117 : f32 = SV_Target0.x;
  SV_Target0.x = clamp(x_1117, 0.0f, 1.0f);
  let x_1124 : vec4<f32> = u_xlat0;
  let x_1127 : f32 = x_16.x_GlobalMipBias.x;
  let x_1128 : vec4<f32> = textureSampleBias(x_CurveGreen, sampler_LinearClamp, vec2<f32>(x_1124.y, x_1124.w), x_1127);
  u_xlat0.x = x_1128.x;
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1138 : f32 = x_16.x_GlobalMipBias.x;
  let x_1139 : vec4<f32> = textureSampleBias(x_CurveBlue, sampler_LinearClamp, vec2<f32>(x_1135.z, x_1135.w), x_1138);
  u_xlat0.y = x_1139.x;
  let x_1142 : vec4<f32> = u_xlat0;
  let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
  let x_1144 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1144.x, x_1143.x, x_1143.y, x_1144.w);
  let x_1146 : vec4<f32> = SV_Target0;
  let x_1150 : vec2<f32> = clamp(vec2<f32>(x_1146.y, x_1146.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1151 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1151.x, x_1150.x, x_1150.y, x_1151.w);
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


