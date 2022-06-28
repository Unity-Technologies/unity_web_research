struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat15 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_268 : f32;
  var x_281 : f32;
  var x_294 : f32;
  var x_419 : f32;
  var x_431 : f32;
  var x_443 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_36 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_34, x_34));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_49.x, x_49.y), 0.0f);
  u_xlat0 = x_51;
  let x_53 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec2<f32>(x_62.z, x_62.w), vec2<f32>(x_64.z, x_64.w));
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x));
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_80 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_82 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_84 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_85 : vec4<f32> = vec4<f32>(x_78, x_80, x_82, x_84);
  u_xlat1 = (x_75 * vec4<f32>(x_85.x, x_85.y, x_85.z, x_85.w));
  let x_92 : vec4<f32> = u_xlat1;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_92 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_97.x, x_97.y, x_97.x, x_97.y));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_100, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat1 = (x_104 * vec4<f32>(x_106, x_106, x_106, x_106));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_112.x, x_112.y), 0.0f);
  u_xlat2 = x_114;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_118.z, x_118.w), 0.0f);
  u_xlat1 = x_120;
  u_xlat3.w = 1.0f;
  let x_131 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_133 : vec3<f32> = vec3<f32>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_136 * x_137);
  u_xlat4.w = 1.0f;
  let x_146 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : vec4<f32> = u_xlat4;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_157 * x_158) + x_160);
  u_xlat2.w = 1.0f;
  let x_168 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat3;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * x_180) + x_182);
  u_xlat3.w = 3.0f;
  let x_186 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_186 / x_187);
  let x_194 : vec2<f32> = vs_TEXCOORD0;
  let x_195 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_194);
  u_xlat1.x = x_195.x;
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.x, x_200.x, x_200.x));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_208 : f32 = u_xlat0.w;
  SV_Target0.w = x_208;
  let x_211 : vec4<f32> = u_xlat0;
  let x_216 : vec3<f32> = max(abs(vec3<f32>(x_211.x, x_211.y, x_211.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = log2(vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = exp2(vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_259.x, x_259.y, x_259.z, x_259.x));
  u_xlatb0 = vec3<bool>(x_262.x, x_262.y, x_262.z);
  let x_266 : bool = u_xlatb0.x;
  if (x_266) {
    let x_272 : f32 = u_xlat2.x;
    x_268 = x_272;
  } else {
    let x_275 : f32 = u_xlat1.x;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  u_xlat0.x = x_276;
  let x_280 : bool = u_xlatb0.y;
  if (x_280) {
    let x_285 : f32 = u_xlat2.y;
    x_281 = x_285;
  } else {
    let x_288 : f32 = u_xlat1.y;
    x_281 = x_288;
  }
  let x_289 : f32 = x_281;
  u_xlat0.y = x_289;
  let x_293 : bool = u_xlatb0.z;
  if (x_293) {
    let x_298 : f32 = u_xlat2.z;
    x_294 = x_298;
  } else {
    let x_301 : f32 = u_xlat1.z;
    x_294 = x_301;
  }
  let x_302 : f32 = x_294;
  u_xlat0.z = x_302;
  let x_304 : vec2<f32> = vs_TEXCOORD0;
  let x_308 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_312 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_314 : vec2<f32> = ((x_304 * vec2<f32>(x_308.x, x_308.y)) + vec2<f32>(x_312.z, x_312.w));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_323.x, x_323.y));
  u_xlat15 = x_325.w;
  let x_327 : f32 = u_xlat15;
  u_xlat15 = ((x_327 * 2.0f) + -1.0f);
  let x_330 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_330)) + 1.0f);
  let x_335 : f32 = u_xlat15;
  u_xlat15 = ((x_335 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_339 : f32 = u_xlat15;
  u_xlat15 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat15;
  u_xlat15 = ((x_341 * 2.0f) + -1.0f);
  let x_345 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_345);
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_349) + 1.0f);
  let x_353 : f32 = u_xlat15;
  let x_355 : f32 = u_xlat1.x;
  u_xlat15 = (x_353 * x_355);
  let x_357 : f32 = u_xlat15;
  let x_362 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357, x_357, x_357) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat0;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : vec3<f32> = max(abs(vec3<f32>(x_381.x, x_381.y, x_381.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = log2(vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat1;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = exp2(vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_413.x, x_413.y, x_413.z, x_413.x));
  u_xlatb0 = vec3<bool>(x_415.x, x_415.y, x_415.z);
  let x_418 : bool = u_xlatb0.x;
  if (x_418) {
    let x_423 : f32 = u_xlat2.x;
    x_419 = x_423;
  } else {
    let x_426 : f32 = u_xlat1.x;
    x_419 = x_426;
  }
  let x_427 : f32 = x_419;
  SV_Target0.x = x_427;
  let x_430 : bool = u_xlatb0.y;
  if (x_430) {
    let x_435 : f32 = u_xlat2.y;
    x_431 = x_435;
  } else {
    let x_438 : f32 = u_xlat1.y;
    x_431 = x_438;
  }
  let x_439 : f32 = x_431;
  SV_Target0.y = x_439;
  let x_442 : bool = u_xlatb0.z;
  if (x_442) {
    let x_447 : f32 = u_xlat2.z;
    x_443 = x_447;
  } else {
    let x_450 : f32 = u_xlat1.z;
    x_443 = x_450;
  }
  let x_451 : f32 = x_443;
  SV_Target0.z = x_451;
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

