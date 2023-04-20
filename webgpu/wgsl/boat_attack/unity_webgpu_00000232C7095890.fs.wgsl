diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(48) */
  unity_CameraToWorld : mat4x4<f32>,
  /* @offset(112) */
  x_LightProjectionParams : vec4<f32>,
  /* @offset(128) */
  x_LightShadowData : vec4<f32>,
  /* @offset(144) */
  unity_ShadowFadeCenterAndType : vec4<f32>,
  /* @offset(160) */
  x_LightPos : vec4<f32>,
  /* @offset(176) */
  x_LightColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec2<f32> = (vec2<f32>(x_39.x, x_39.y) / vec2<f32>(x_41.w, x_41.w));
  let x_44 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_43.x, x_43.y, x_44.z);
  let x_57 : vec3<f32> = u_xlat1;
  let x_59 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_57.x, x_57.y));
  u_xlat18 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat18;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_71);
  let x_75 : f32 = u_xlat18;
  let x_77 : vec3<f32> = u_xlat0;
  let x_78 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_94 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = u_xlat3;
  let x_98 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.x, x_94.x, x_94.x)) + x_97);
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_98.z);
  let x_102 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.w));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.x, x_112.y, x_112.w) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_117.z);
  let x_120 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_120.x, x_120.y, x_120.w) + -(vec3<f32>(x_124.x, x_124.y, x_124.z)));
  let x_128 : vec3<f32> = u_xlat3;
  let x_129 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_128, x_129);
  let x_133 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_133);
  let x_137 : f32 = u_xlat0.z;
  let x_139 : f32 = u_xlat18;
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_137) * x_139) + x_142);
  let x_147 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_149 : f32 = u_xlat0.x;
  let x_152 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_147 * x_149) + x_152);
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = x_14.x_LightPos;
  u_xlat6 = (vec3<f32>(x_156.x, x_156.y, x_156.w) + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_165 : vec3<f32> = u_xlat6;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_165, x_166);
  let x_169 : f32 = u_xlat13;
  u_xlat19 = inverseSqrt(x_169);
  let x_171 : vec3<f32> = u_xlat6;
  let x_172 : f32 = u_xlat19;
  u_xlat3 = (x_171 * vec3<f32>(x_172, x_172, x_172));
  let x_175 : f32 = u_xlat13;
  let x_177 : f32 = x_14.x_LightPos.w;
  u_xlat13 = (x_175 * x_177);
  let x_184 : f32 = u_xlat13;
  let x_186 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_184, x_184));
  u_xlat13 = x_186.x;
  let x_189 : f32 = u_xlat0.x;
  let x_192 : f32 = x_14.x_LightShadowData.z;
  let x_195 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_189 * x_192) + x_195);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_199, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat0.x;
  u_xlatb19 = (x_207 < 0.99000000953674316406f);
  let x_210 : bool = u_xlatb19;
  if (x_210) {
    let x_214 : f32 = u_xlat6.y;
    let x_217 : f32 = u_xlat6.x;
    u_xlat19 = max(abs(x_214), abs(x_217));
    let x_221 : f32 = u_xlat6.z;
    let x_223 : f32 = u_xlat19;
    u_xlat19 = max(abs(x_221), x_223);
    let x_225 : f32 = u_xlat19;
    let x_228 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat19 = (x_225 + -(x_228));
    let x_231 : f32 = u_xlat19;
    u_xlat19 = max(x_231, 0.00000999999974737875f);
    let x_234 : f32 = u_xlat19;
    let x_236 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat19 = (x_234 * x_236);
    let x_239 : f32 = x_14.x_LightProjectionParams.y;
    let x_240 : f32 = u_xlat19;
    u_xlat19 = (x_239 / x_240);
    let x_242 : f32 = u_xlat19;
    let x_244 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat19 = (x_242 + -(x_244));
    let x_247 : f32 = u_xlat19;
    u_xlat19 = (-(x_247) + 1.0f);
    let x_251 : vec3<f32> = u_xlat6;
    let x_254 : vec3<f32> = (x_251 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_255 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_259 : vec4<f32> = u_xlat4;
    let x_260 : vec3<f32> = vec3<f32>(x_259.x, x_259.y, x_259.z);
    let x_261 : f32 = u_xlat19;
    txVec0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261);
    let x_274 : vec4<f32> = txVec0;
    let x_276 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_274.xyz, x_274.w);
    u_xlat4.x = x_276;
    let x_279 : vec3<f32> = u_xlat6;
    let x_282 : vec3<f32> = (x_279 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_283 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_286 : vec4<f32> = u_xlat5;
    let x_287 : vec3<f32> = vec3<f32>(x_286.x, x_286.y, x_286.z);
    let x_288 : f32 = u_xlat19;
    txVec1 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288);
    let x_296 : vec4<f32> = txVec1;
    let x_298 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_296.xyz, x_296.w);
    u_xlat4.y = x_298;
    let x_300 : vec3<f32> = u_xlat6;
    let x_302 : vec3<f32> = (x_300 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_303 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
    let x_306 : vec4<f32> = u_xlat5;
    let x_307 : vec3<f32> = vec3<f32>(x_306.x, x_306.y, x_306.z);
    let x_308 : f32 = u_xlat19;
    txVec2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308);
    let x_316 : vec4<f32> = txVec2;
    let x_318 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_316.xyz, x_316.w);
    u_xlat4.z = x_318;
    let x_320 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_320 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_324 : vec3<f32> = u_xlat6;
    let x_325 : f32 = u_xlat19;
    txVec3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325);
    let x_333 : vec4<f32> = txVec3;
    let x_335 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_333.xyz, x_333.w);
    u_xlat4.w = x_335;
    let x_337 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_337, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_344 : f32 = x_14.x_LightShadowData.x;
    u_xlat12 = (-(x_344) + 1.0f);
    let x_348 : f32 = u_xlat6.x;
    let x_349 : f32 = u_xlat12;
    let x_352 : f32 = x_14.x_LightShadowData.x;
    u_xlat6.x = ((x_348 * x_349) + x_352);
  } else {
    u_xlat6.x = 1.0f;
  }
  let x_358 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_358) + 1.0f);
  let x_362 : f32 = u_xlat0.x;
  let x_363 : f32 = u_xlat12;
  let x_366 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_362 * x_363) + x_366);
  let x_370 : f32 = u_xlat0.x;
  let x_371 : f32 = u_xlat13;
  u_xlat0.x = (x_370 * x_371);
  let x_374 : vec3<f32> = u_xlat0;
  let x_378 : vec4<f32> = x_14.x_LightColor;
  u_xlat0 = (vec3<f32>(x_374.x, x_374.x, x_374.x) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_386 : vec3<f32> = u_xlat1;
  let x_388 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_386.x, x_386.y));
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.z);
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_397 : vec3<f32> = u_xlat1;
  let x_399 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_397.x, x_397.y));
  u_xlat5 = x_399;
  let x_405 : vec3<f32> = u_xlat1;
  let x_407 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_405.x, x_405.y));
  u_xlat1 = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_409 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_416 : vec3<f32> = u_xlat1;
  let x_417 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_416, x_417);
  let x_419 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_419);
  let x_421 : f32 = u_xlat18;
  let x_423 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_421, x_421, x_421) * x_423);
  let x_425 : vec4<f32> = u_xlat2;
  let x_429 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_431 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.w) + -(x_429));
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_439);
  let x_441 : f32 = u_xlat18;
  let x_443 : vec4<f32> = u_xlat2;
  let x_445 : vec3<f32> = (vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat2;
  let x_451 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_448.x, x_448.y, x_448.z)), x_451);
  let x_453 : f32 = u_xlat18;
  let x_454 : f32 = u_xlat18;
  u_xlat18 = (x_453 + x_454);
  let x_456 : vec3<f32> = u_xlat1;
  let x_457 : f32 = u_xlat18;
  let x_461 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = ((x_456 * -(vec3<f32>(x_457, x_457, x_457))) + -(vec3<f32>(x_461.x, x_461.y, x_461.z)));
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec3<f32> = u_xlat1;
  let x_468 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_467, -(x_468));
  let x_471 : f32 = u_xlat18;
  u_xlat18 = clamp(x_471, 0.0f, 1.0f);
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_473.x, x_473.y, x_473.z), -(x_475));
  let x_480 : f32 = u_xlat1.x;
  let x_482 : f32 = u_xlat1.x;
  u_xlat1.x = (x_480 * x_482);
  let x_486 : f32 = u_xlat1.x;
  let x_488 : f32 = u_xlat1.x;
  u_xlat1.x = (x_486 * x_488);
  let x_492 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_492) + 1.0f);
  let x_501 : vec3<f32> = u_xlat1;
  let x_503 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_501.x, x_501.y));
  u_xlat1.x = x_503.x;
  let x_507 : f32 = u_xlat1.x;
  u_xlat1.x = (x_507 * 16.0f);
  let x_511 : vec3<f32> = u_xlat1;
  let x_513 : vec4<f32> = u_xlat5;
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_511.x, x_511.x, x_511.x) * vec3<f32>(x_513.x, x_513.y, x_513.z)) + vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : f32 = u_xlat18;
  let x_521 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_519, x_519, x_519) * x_521);
  let x_525 : vec3<f32> = u_xlat0;
  let x_526 : vec3<f32> = u_xlat1;
  let x_527 : vec3<f32> = (x_525 * x_526);
  let x_528 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


