struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_1 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_2 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_Bevel : f32,
  x_BevelOffset : f32,
  x_BevelWidth : f32,
  x_BevelClamp : f32,
  x_BevelRoundness : f32,
  x_BumpOutline : f32,
  x_BumpFace : f32,
  x_ShaderFlags : f32,
  x_ScaleRatioA : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_FaceShininess : f32,
  x_OutlineShininess : f32,
}

var<private> vs_TEXCOORD6 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_FaceTex : sampler;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat5 : f32;
  var u_xlatb9 : bool;
  var x_182 : f32;
  var u_xlatb5 : bool;
  var u_xlat12 : f32;
  var u_xlat7 : f32;
  var u_xlat11 : f32;
  var u_xlat6 : f32;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD6.x;
  let x_26 : f32 = x_21.x_BevelOffset;
  u_xlat0.x = (x_17 + x_26);
  let x_35 : f32 = x_21.x_TextureWidth;
  let x_38 : f32 = x_21.x_TextureHeight;
  let x_40 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_35, x_38));
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  u_xlat1.z = 0.0f;
  let x_47 : vec4<f32> = u_xlat1;
  let x_52 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (-(vec4<f32>(x_47.x, x_47.z, x_47.z, x_47.y)) + vec4<f32>(x_52.x, x_52.y, x_52.x, x_52.y));
  let x_55 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec4<f32>(x_55.x, x_55.z, x_55.z, x_55.y) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_71 : vec4<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3.x = x_73.w;
  let x_80 : vec4<f32> = u_xlat2;
  let x_82 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_80.z, x_80.w));
  u_xlat3.z = x_82.w;
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_88.x, x_88.y));
  u_xlat3.y = x_90.w;
  let x_97 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_97.z, x_97.w));
  u_xlat3.w = x_99.w;
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x) + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_106 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_112 : f32 = x_21.x_BevelWidth;
  let x_115 : f32 = x_21.x_OutlineWidth;
  u_xlat1.x = (x_112 + x_115);
  let x_119 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_119, 0.01f);
  let x_123 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_123 / vec4<f32>(x_124.x, x_124.x, x_124.x, x_124.x));
  let x_128 : f32 = u_xlat1.x;
  let x_131 : f32 = x_21.x_Bevel;
  u_xlat1.x = (x_128 * x_131);
  let x_135 : f32 = u_xlat1.x;
  let x_138 : f32 = x_21.x_GradientScale;
  u_xlat1.x = (x_135 * x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = (x_142 * -2.0f);
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_146 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_150, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_154 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(abs(x_161)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_169 : f32 = x_21.x_ShaderFlags;
  u_xlat5 = (x_169 * 0.5f);
  let x_174 : f32 = u_xlat5;
  let x_175 : f32 = u_xlat5;
  u_xlatb9 = (x_174 >= -(x_175));
  let x_178 : f32 = u_xlat5;
  u_xlat5 = fract(abs(x_178));
  let x_181 : bool = u_xlatb9;
  if (x_181) {
    let x_185 : f32 = u_xlat5;
    x_182 = x_185;
  } else {
    let x_187 : f32 = u_xlat5;
    x_182 = -(x_187);
  }
  let x_189 : f32 = x_182;
  u_xlat5 = x_189;
  let x_191 : f32 = u_xlat5;
  u_xlatb5 = (x_191 >= 0.5f);
  let x_193 : bool = u_xlatb5;
  let x_194 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = select(x_195, x_194, vec4<bool>(x_193, x_193, x_193, x_193));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat2 = (x_199 * vec4<f32>(1.570796013f, 1.570796013f, 1.570796013f, 1.570796013f));
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = sin(x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_205) + x_207);
  let x_211 : f32 = x_21.x_BevelRoundness;
  let x_213 : f32 = x_21.x_BevelRoundness;
  let x_215 : f32 = x_21.x_BevelRoundness;
  let x_217 : f32 = x_21.x_BevelRoundness;
  let x_218 : vec4<f32> = vec4<f32>(x_211, x_213, x_215, x_217);
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_218.x, x_218.y, x_218.z, x_218.w) * x_224) + x_226);
  let x_230 : f32 = x_21.x_BevelClamp;
  u_xlat5 = (-(x_230) + 1.0f);
  let x_233 : vec4<f32> = u_xlat0;
  let x_234 : f32 = u_xlat5;
  u_xlat0 = min(x_233, vec4<f32>(x_234, x_234, x_234, x_234));
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec2<f32> = (vec2<f32>(x_237.x, x_237.x) * vec2<f32>(x_239.x, x_239.z));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_242.y, x_241.y, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat1;
  let x_249 : vec4<f32> = u_xlat0;
  let x_252 : vec2<f32> = ((vec2<f32>(x_244.w, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + -(vec2<f32>(x_249.z, x_249.x)));
  let x_253 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_252.x, x_252.y, x_253.w);
  u_xlat0.x = -1.0f;
  u_xlat0.w = 1.0f;
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_257.x, x_257.y), vec2<f32>(x_259.x, x_259.y));
  let x_264 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_264);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec2<f32>(x_268.z, x_268.w), vec2<f32>(x_270.z, x_270.w));
  let x_273 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_273);
  let x_275 : f32 = u_xlat12;
  let x_277 : f32 = u_xlat0.z;
  u_xlat2.x = (x_275 * x_277);
  let x_280 : f32 = u_xlat12;
  let x_283 : vec2<f32> = (vec2<f32>(x_280, x_280) * vec2<f32>(1.0f, 0.0f));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_284.x, x_283.x, x_283.y, x_284.w);
  u_xlat0.z = 0.0f;
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.x, x_287.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = ((vec3<f32>(x_301.z, x_301.x, x_301.y) * vec3<f32>(x_303.y, x_303.z, x_303.x)) + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_314 : f32 = x_21.x_OutlineUVSpeedX;
  let x_317 : f32 = x_21.x_OutlineUVSpeedY;
  let x_322 : vec4<f32> = x_21.x_Time;
  let x_326 : vec2<f32> = vs_TEXCOORD1;
  let x_327 : vec2<f32> = ((vec2<f32>(x_314, x_317) * vec2<f32>(x_322.y, x_322.y)) + x_326);
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_335.x, x_335.y));
  u_xlat1 = x_337;
  let x_338 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = x_21.x_OutlineColor;
  let x_344 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_349 : f32 = vs_COLOR0.w;
  let x_351 : f32 = x_21.x_OutlineColor.w;
  u_xlat12 = (x_349 * x_351);
  let x_354 : f32 = u_xlat1.w;
  let x_355 : f32 = u_xlat12;
  u_xlat2.w = (x_354 * x_355);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat2;
  let x_362 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.w, x_360.w, x_360.w));
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : f32 = x_21.x_FaceUVSpeedX;
  let x_370 : f32 = x_21.x_FaceUVSpeedY;
  let x_373 : vec4<f32> = x_21.x_Time;
  let x_376 : vec4<f32> = vs_TEXCOORD0;
  let x_378 : vec2<f32> = ((vec2<f32>(x_367, x_370) * vec2<f32>(x_373.y, x_373.y)) + vec2<f32>(x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_386.x, x_386.y));
  u_xlat1 = x_388;
  let x_389 : vec4<f32> = vs_COLOR0;
  let x_392 : vec4<f32> = x_21.x_FaceColor;
  u_xlat3 = (x_389 * x_392);
  let x_394 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_394 * x_395);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.w, x_397.w, x_397.w) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_404) + x_406);
  let x_409 : f32 = x_21.x_OutlineWidth;
  let x_412 : f32 = x_21.x_ScaleRatioA;
  u_xlat12 = (x_409 * x_412);
  let x_414 : f32 = u_xlat12;
  let x_416 : f32 = vs_TEXCOORD6.y;
  u_xlat12 = (x_414 * x_416);
  let x_418 : f32 = u_xlat12;
  u_xlat3.x = min(x_418, 1.0f);
  let x_422 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_422);
  let x_429 : vec4<f32> = vs_TEXCOORD0;
  let x_431 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_429.x, x_429.y));
  u_xlat7 = x_431.w;
  let x_433 : f32 = u_xlat7;
  u_xlat7 = (-(x_433) + 0.5f);
  let x_436 : f32 = u_xlat7;
  let x_438 : f32 = vs_TEXCOORD6.x;
  u_xlat7 = (x_436 + -(x_438));
  let x_441 : f32 = u_xlat7;
  let x_443 : f32 = vs_TEXCOORD6.y;
  u_xlat7 = ((x_441 * x_443) + 0.5f);
  let x_447 : f32 = u_xlat12;
  let x_449 : f32 = u_xlat7;
  u_xlat11 = ((x_447 * 0.5f) + x_449);
  let x_451 : f32 = u_xlat11;
  u_xlat11 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat12;
  let x_456 : f32 = u_xlat7;
  u_xlat12 = ((-(x_453) * 0.5f) + x_456);
  let x_459 : f32 = u_xlat3.x;
  let x_460 : f32 = u_xlat11;
  u_xlat3.x = (x_459 * x_460);
  let x_463 : vec4<f32> = u_xlat3;
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_463.x, x_463.x, x_463.x, x_463.x) * x_465) + x_467);
  let x_471 : f32 = x_21.x_OutlineSoftness;
  let x_473 : f32 = x_21.x_ScaleRatioA;
  u_xlat2.x = (x_471 * x_473);
  let x_478 : f32 = u_xlat2.x;
  let x_480 : f32 = vs_TEXCOORD6.y;
  u_xlat6 = (x_478 * x_480);
  let x_483 : f32 = u_xlat2.x;
  let x_485 : f32 = vs_TEXCOORD6.y;
  u_xlat2.x = ((x_483 * x_485) + 1.0f);
  let x_489 : f32 = u_xlat6;
  let x_491 : f32 = u_xlat12;
  u_xlat12 = ((x_489 * 0.5f) + x_491);
  let x_493 : f32 = u_xlat12;
  let x_495 : f32 = u_xlat2.x;
  u_xlat12 = (x_493 / x_495);
  let x_497 : f32 = u_xlat12;
  u_xlat12 = clamp(x_497, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat12;
  u_xlat12 = (-(x_499) + 1.0f);
  let x_502 : f32 = u_xlat12;
  let x_504 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_502, x_502, x_502, x_502) * x_504);
  let x_508 : f32 = x_21.x_BumpFace;
  let x_512 : f32 = x_21.x_BumpOutline;
  u_xlat12 = (-(x_508) + x_512);
  let x_514 : f32 = u_xlat11;
  let x_515 : f32 = u_xlat12;
  let x_518 : f32 = x_21.x_BumpFace;
  u_xlat12 = ((x_514 * x_515) + x_518);
  let x_525 : vec4<f32> = vs_TEXCOORD0;
  let x_527 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_525.z, x_525.w));
  let x_528 : vec3<f32> = vec3<f32>(x_527.x, x_527.y, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_532 : f32 = u_xlat2.z;
  let x_534 : f32 = u_xlat2.x;
  u_xlat2.x = (x_532 * x_534);
  let x_537 : vec4<f32> = u_xlat2;
  let x_542 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec2<f32>(x_546.x, x_546.y), vec2<f32>(x_548.x, x_548.y));
  let x_551 : f32 = u_xlat14;
  u_xlat14 = min(x_551, 1.0f);
  let x_553 : f32 = u_xlat14;
  u_xlat14 = (-(x_553) + 1.0f);
  let x_556 : f32 = u_xlat14;
  u_xlat2.z = sqrt(x_556);
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : f32 = u_xlat12;
  let x_566 : vec3<f32> = ((vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_561, x_561, x_561)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_567 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat1;
  let x_571 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = ((vec3<f32>(x_569.w, x_569.w, x_569.w) * vec3<f32>(x_571.x, x_571.y, x_571.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat0;
  let x_580 : vec4<f32> = u_xlat2;
  let x_583 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + -(vec3<f32>(x_580.x, x_580.y, x_580.z)));
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_591);
  let x_593 : f32 = u_xlat12;
  let x_595 : vec4<f32> = u_xlat0;
  let x_597 : vec3<f32> = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_602 : vec3<f32> = vs_TEXCOORD2;
  let x_603 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_602, -(vec3<f32>(x_603.x, x_603.y, x_603.z)));
  let x_609 : vec3<f32> = vs_TEXCOORD3;
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_609, -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_616 : vec3<f32> = vs_TEXCOORD4;
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_616, -(vec3<f32>(x_617.x, x_617.y, x_617.z)));
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_629 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_629);
  let x_632 : vec4<f32> = u_xlat0;
  let x_634 : vec4<f32> = u_xlat2;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_640 : vec3<f32> = vs_TEXCOORD5;
  let x_645 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_646 : vec3<f32> = (-(x_640) + x_645);
  let x_647 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat2;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_654);
  let x_656 : vec4<f32> = u_xlat2;
  let x_658 : f32 = u_xlat12;
  let x_663 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  let x_665 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658, x_658, x_658)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_673);
  let x_675 : f32 = u_xlat12;
  let x_677 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat0.w = dot(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_688 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(vec3<f32>(x_688.x, x_688.y, x_688.z), vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_695 : vec4<f32> = u_xlat0;
  let x_698 : vec2<f32> = max(vec2<f32>(x_695.x, x_695.w), vec2<f32>(0.0f, 0.0f));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
  let x_704 : f32 = u_xlat0.y;
  u_xlat4.x = log2(x_704);
  let x_710 : f32 = x_21.x_FaceShininess;
  let x_714 : f32 = x_21.x_OutlineShininess;
  u_xlat8 = (-(x_710) + x_714);
  let x_716 : f32 = u_xlat11;
  let x_717 : f32 = u_xlat8;
  let x_720 : f32 = x_21.x_FaceShininess;
  u_xlat8 = ((x_716 * x_717) + x_720);
  let x_722 : f32 = u_xlat8;
  u_xlat8 = (x_722 * 128.0f);
  let x_726 : f32 = u_xlat4.x;
  let x_727 : f32 = u_xlat8;
  u_xlat4.x = (x_726 * x_727);
  let x_731 : f32 = u_xlat4.x;
  u_xlat4.x = exp2(x_731);
  let x_736 : vec4<f32> = x_21.x_LightColor0;
  let x_740 : vec4<f32> = x_21.x_SpecColor;
  let x_742 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat4;
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_745.x, x_745.x, x_745.x) * vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_751 : f32 = u_xlat1.w;
  u_xlat2.x = max(x_751, 0.0001f);
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : vec4<f32> = u_xlat2;
  let x_759 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) / vec3<f32>(x_757.x, x_757.x, x_757.x));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_765 : f32 = u_xlat1.w;
  SV_Target0.w = x_765;
  let x_768 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = x_21.x_LightColor0;
  let x_773 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat1;
  let x_778 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = u_xlat4;
  let x_782 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778.x, x_778.x, x_778.x)) + x_781);
  let x_783 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD6_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(7) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

