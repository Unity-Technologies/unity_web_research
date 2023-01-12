struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_267 : f32;
  var x_280 : f32;
  var x_293 : f32;
  var u_xlat15 : f32;
  var x_418 : f32;
  var x_430 : f32;
  var x_442 : f32;
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
    let x_271 : f32 = u_xlat2.x;
    x_267 = x_271;
  } else {
    let x_274 : f32 = u_xlat1.x;
    x_267 = x_274;
  }
  let x_275 : f32 = x_267;
  u_xlat0.x = x_275;
  let x_279 : bool = u_xlatb0.y;
  if (x_279) {
    let x_284 : f32 = u_xlat2.y;
    x_280 = x_284;
  } else {
    let x_287 : f32 = u_xlat1.y;
    x_280 = x_287;
  }
  let x_288 : f32 = x_280;
  u_xlat0.y = x_288;
  let x_292 : bool = u_xlatb0.z;
  if (x_292) {
    let x_297 : f32 = u_xlat2.z;
    x_293 = x_297;
  } else {
    let x_300 : f32 = u_xlat1.z;
    x_293 = x_300;
  }
  let x_301 : f32 = x_293;
  u_xlat0.z = x_301;
  let x_303 : vec2<f32> = vs_TEXCOORD0;
  let x_307 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_311 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_313 : vec2<f32> = ((x_303 * vec2<f32>(x_307.x, x_307.y)) + vec2<f32>(x_311.z, x_311.w));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_314.z, x_314.w);
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_322.x, x_322.y));
  u_xlat15 = x_324.w;
  let x_326 : f32 = u_xlat15;
  u_xlat15 = ((x_326 * 2.0f) + -1.0f);
  let x_329 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_329)) + 1.0f);
  let x_334 : f32 = u_xlat15;
  u_xlat15 = ((x_334 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_338 : f32 = u_xlat15;
  u_xlat15 = clamp(x_338, 0.0f, 1.0f);
  let x_340 : f32 = u_xlat15;
  u_xlat15 = ((x_340 * 2.0f) + -1.0f);
  let x_344 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_344);
  let x_348 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat15;
  let x_354 : f32 = u_xlat1.x;
  u_xlat15 = (x_352 * x_354);
  let x_356 : f32 = u_xlat15;
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356, x_356, x_356) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat1;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = max(abs(vec3<f32>(x_380.x, x_380.y, x_380.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = log2(vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec3<f32> = exp2(vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.x));
  u_xlatb0 = vec3<bool>(x_414.x, x_414.y, x_414.z);
  let x_417 : bool = u_xlatb0.x;
  if (x_417) {
    let x_422 : f32 = u_xlat2.x;
    x_418 = x_422;
  } else {
    let x_425 : f32 = u_xlat1.x;
    x_418 = x_425;
  }
  let x_426 : f32 = x_418;
  SV_Target0.x = x_426;
  let x_429 : bool = u_xlatb0.y;
  if (x_429) {
    let x_434 : f32 = u_xlat2.y;
    x_430 = x_434;
  } else {
    let x_437 : f32 = u_xlat1.y;
    x_430 = x_437;
  }
  let x_438 : f32 = x_430;
  SV_Target0.y = x_438;
  let x_441 : bool = u_xlatb0.z;
  if (x_441) {
    let x_446 : f32 = u_xlat2.z;
    x_442 = x_446;
  } else {
    let x_449 : f32 = u_xlat1.z;
    x_442 = x_449;
  }
  let x_450 : f32 = x_442;
  SV_Target0.z = x_450;
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

