struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb24 : bool;

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
  u_xlat24 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat24;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat24 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_71);
  let x_75 : f32 = u_xlat24;
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
  let x_139 : f32 = u_xlat24;
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_137) * x_139) + x_142);
  let x_147 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_149 : f32 = u_xlat0.x;
  let x_152 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_147 * x_149) + x_152);
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = x_14.x_LightPos;
  u_xlat8 = (vec3<f32>(x_156.x, x_156.y, x_156.w) + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_165 : vec3<f32> = u_xlat8;
  let x_166 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_165, x_166);
  let x_169 : f32 = u_xlat17;
  u_xlat25 = inverseSqrt(x_169);
  let x_171 : vec3<f32> = u_xlat8;
  let x_172 : f32 = u_xlat25;
  u_xlat3 = (x_171 * vec3<f32>(x_172, x_172, x_172));
  let x_175 : f32 = u_xlat17;
  let x_177 : f32 = x_14.x_LightPos.w;
  u_xlat17 = (x_175 * x_177);
  let x_184 : f32 = u_xlat17;
  let x_186 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_184, x_184));
  u_xlat17 = x_186.x;
  let x_189 : f32 = u_xlat0.x;
  let x_192 : f32 = x_14.x_LightShadowData.z;
  let x_195 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_189 * x_192) + x_195);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_199, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat0.x;
  u_xlatb18 = (x_207 < 0.99000001f);
  let x_210 : bool = u_xlatb18;
  if (x_210) {
    let x_215 : f32 = u_xlat8.y;
    let x_218 : f32 = u_xlat8.x;
    u_xlat18 = max(abs(x_215), abs(x_218));
    let x_222 : f32 = u_xlat8.z;
    let x_224 : f32 = u_xlat18;
    u_xlat18 = max(abs(x_222), x_224);
    let x_226 : f32 = u_xlat18;
    let x_229 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat18 = (x_226 + -(x_229));
    let x_232 : f32 = u_xlat18;
    u_xlat18 = max(x_232, 0.00001f);
    let x_235 : f32 = u_xlat18;
    let x_237 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat18 = (x_235 * x_237);
    let x_240 : f32 = x_14.x_LightProjectionParams.y;
    let x_241 : f32 = u_xlat18;
    u_xlat18 = (x_240 / x_241);
    let x_243 : f32 = u_xlat18;
    let x_245 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat18 = (x_243 + -(x_245));
    let x_248 : f32 = u_xlat18;
    u_xlat18 = (-(x_248) + 1.0f);
    let x_252 : vec3<f32> = u_xlat8;
    let x_255 : vec3<f32> = (x_252 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_256 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_260 : vec4<f32> = u_xlat4;
    let x_261 : vec3<f32> = vec3<f32>(x_260.x, x_260.y, x_260.z);
    let x_262 : f32 = u_xlat18;
    txVec0 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262);
    let x_275 : vec4<f32> = txVec0;
    let x_277 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_275.xyz, x_275.w);
    u_xlat4.x = x_277;
    let x_280 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_280 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_285 : vec3<f32> = u_xlat5;
    let x_286 : f32 = u_xlat18;
    txVec1 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286);
    let x_294 : vec4<f32> = txVec1;
    let x_296 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_294.xyz, x_294.w);
    u_xlat4.y = x_296;
    let x_298 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_298 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_302 : vec3<f32> = u_xlat5;
    let x_303 : f32 = u_xlat18;
    txVec2 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303);
    let x_311 : vec4<f32> = txVec2;
    let x_313 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_311.xyz, x_311.w);
    u_xlat4.z = x_313;
    let x_315 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_315 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_319 : vec3<f32> = u_xlat5;
    let x_320 : f32 = u_xlat18;
    txVec3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320);
    let x_328 : vec4<f32> = txVec3;
    let x_330 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_328.xyz, x_328.w);
    u_xlat4.w = x_330;
    let x_332 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(x_332, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_338 : f32 = x_14.x_LightShadowData.x;
    u_xlat27 = (-(x_338) + 1.0f);
    let x_341 : f32 = u_xlat18;
    let x_342 : f32 = u_xlat27;
    let x_345 : f32 = x_14.x_LightShadowData.x;
    u_xlat18 = ((x_341 * x_342) + x_345);
  } else {
    u_xlat18 = 1.0f;
  }
  let x_348 : f32 = u_xlat18;
  u_xlat27 = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat0.x;
  let x_353 : f32 = u_xlat27;
  let x_355 : f32 = u_xlat18;
  u_xlat0.x = ((x_352 * x_353) + x_355);
  let x_359 : f32 = u_xlat0.x;
  let x_360 : f32 = u_xlat17;
  u_xlat0.x = (x_359 * x_360);
  let x_363 : vec3<f32> = u_xlat0;
  let x_367 : vec4<f32> = x_14.x_LightColor;
  let x_369 : vec3<f32> = (vec3<f32>(x_363.x, x_363.x, x_363.x) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_377 : vec3<f32> = u_xlat1;
  let x_379 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_377.x, x_377.y));
  u_xlat5 = vec3<f32>(x_379.x, x_379.y, x_379.z);
  let x_387 : vec3<f32> = u_xlat1;
  let x_389 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_387.x, x_387.y));
  u_xlat6 = x_389;
  let x_395 : vec3<f32> = u_xlat1;
  let x_397 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_395.x, x_395.y));
  u_xlat1 = vec3<f32>(x_397.x, x_397.y, x_397.z);
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_399 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_406 : vec3<f32> = u_xlat1;
  let x_407 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_406, x_407);
  let x_411 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_411);
  let x_414 : vec3<f32> = u_xlat0;
  let x_416 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_414.x, x_414.x, x_414.x) * x_416);
  let x_418 : vec4<f32> = u_xlat2;
  let x_422 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_424 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.w) + -(x_422));
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_434 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_434);
  let x_437 : vec3<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.x, x_437.x) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_445.w, x_445.x, x_445.y, x_445.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_450 : vec3<f32> = u_xlat8;
  let x_452 : f32 = u_xlat25;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat0 = ((-(x_450) * vec3<f32>(x_452, x_452, x_452)) + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
  let x_459 : vec3<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_459, x_460);
  let x_462 : f32 = u_xlat24;
  u_xlat24 = max(x_462, 0.001f);
  let x_465 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_465);
  let x_467 : f32 = u_xlat24;
  let x_469 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_467, x_467, x_467) * x_469);
  let x_471 : vec3<f32> = u_xlat1;
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(x_471, -(vec3<f32>(x_472.x, x_472.y, x_472.z)));
  let x_476 : vec3<f32> = u_xlat1;
  let x_477 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_476, -(x_477));
  let x_480 : f32 = u_xlat25;
  u_xlat25 = clamp(x_480, 0.0f, 1.0f);
  let x_482 : vec3<f32> = u_xlat1;
  let x_483 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_482, x_483);
  let x_487 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_487, 0.0f, 1.0f);
  let x_490 : vec3<f32> = u_xlat3;
  let x_492 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_490), x_492);
  let x_496 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_496, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat0.x;
  let x_502 : f32 = u_xlat0.x;
  u_xlat8.x = (x_500 * x_502);
  let x_505 : vec3<f32> = u_xlat8;
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec2<f32>(x_505.x, x_505.x), vec2<f32>(x_507.x, x_507.x));
  let x_512 : f32 = u_xlat8.x;
  u_xlat8.x = (x_512 + -0.5f);
  let x_517 : f32 = u_xlat25;
  u_xlat16 = (-(x_517) + 1.0f);
  let x_521 : f32 = u_xlat16;
  let x_522 : f32 = u_xlat16;
  u_xlat9 = (x_521 * x_522);
  let x_524 : f32 = u_xlat9;
  let x_525 : f32 = u_xlat9;
  u_xlat9 = (x_524 * x_525);
  let x_527 : f32 = u_xlat16;
  let x_528 : f32 = u_xlat9;
  u_xlat16 = (x_527 * x_528);
  let x_531 : f32 = u_xlat8.x;
  let x_532 : f32 = u_xlat16;
  u_xlat16 = ((x_531 * x_532) + 1.0f);
  let x_535 : f32 = u_xlat24;
  u_xlat9 = (-(abs(x_535)) + 1.0f);
  let x_539 : f32 = u_xlat9;
  let x_540 : f32 = u_xlat9;
  u_xlat17 = (x_539 * x_540);
  let x_542 : f32 = u_xlat17;
  let x_543 : f32 = u_xlat17;
  u_xlat17 = (x_542 * x_543);
  let x_545 : f32 = u_xlat9;
  let x_546 : f32 = u_xlat17;
  u_xlat9 = (x_545 * x_546);
  let x_549 : f32 = u_xlat8.x;
  let x_550 : f32 = u_xlat9;
  u_xlat8.x = ((x_549 * x_550) + 1.0f);
  let x_555 : f32 = u_xlat8.x;
  let x_556 : f32 = u_xlat16;
  u_xlat8.x = (x_555 * x_556);
  let x_560 : f32 = u_xlat7.x;
  let x_562 : f32 = u_xlat7.x;
  u_xlat16 = (x_560 * x_562);
  let x_564 : f32 = u_xlat16;
  u_xlat16 = max(x_564, 0.002f);
  let x_567 : f32 = u_xlat16;
  u_xlat9 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat24;
  let x_572 : f32 = u_xlat9;
  let x_574 : f32 = u_xlat16;
  u_xlat17 = ((abs(x_570) * x_572) + x_574);
  let x_576 : f32 = u_xlat25;
  let x_577 : f32 = u_xlat9;
  let x_579 : f32 = u_xlat16;
  u_xlat9 = ((x_576 * x_577) + x_579);
  let x_581 : f32 = u_xlat24;
  let x_583 : f32 = u_xlat9;
  u_xlat24 = (abs(x_581) * x_583);
  let x_585 : f32 = u_xlat25;
  let x_586 : f32 = u_xlat17;
  let x_588 : f32 = u_xlat24;
  u_xlat24 = ((x_585 * x_586) + x_588);
  let x_590 : f32 = u_xlat24;
  u_xlat24 = (x_590 + 0.00001f);
  let x_593 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_593);
  let x_595 : f32 = u_xlat16;
  let x_596 : f32 = u_xlat16;
  u_xlat16 = (x_595 * x_596);
  let x_599 : f32 = u_xlat1.x;
  let x_600 : f32 = u_xlat16;
  let x_603 : f32 = u_xlat1.x;
  u_xlat9 = ((x_599 * x_600) + -(x_603));
  let x_606 : f32 = u_xlat9;
  let x_608 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_606 * x_608) + 1.0f);
  let x_612 : f32 = u_xlat16;
  u_xlat16 = (x_612 * 0.318309873f);
  let x_616 : f32 = u_xlat1.x;
  let x_618 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_616 * x_618) + 0.0000001f);
  let x_623 : f32 = u_xlat16;
  let x_625 : f32 = u_xlat1.x;
  u_xlat16 = (x_623 / x_625);
  let x_627 : f32 = u_xlat16;
  let x_628 : f32 = u_xlat24;
  u_xlat8.y = (x_627 * x_628);
  let x_631 : f32 = u_xlat25;
  let x_633 : vec3<f32> = u_xlat8;
  let x_635 : vec2<f32> = (vec2<f32>(x_631, x_631) * vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_635.x, x_635.y, x_636.z);
  let x_639 : f32 = u_xlat8.y;
  u_xlat16 = (x_639 * 3.141592741f);
  let x_642 : f32 = u_xlat16;
  u_xlat16 = max(x_642, 0.0f);
  let x_644 : vec4<f32> = u_xlat6;
  let x_646 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_650 : f32 = u_xlat24;
  u_xlatb24 = !((x_650 == 0.0f));
  let x_652 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_652);
  let x_654 : f32 = u_xlat24;
  let x_655 : f32 = u_xlat16;
  u_xlat16 = (x_654 * x_655);
  let x_657 : vec3<f32> = u_xlat8;
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_657.x, x_657.x, x_657.x) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat4;
  let x_664 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_662.x, x_662.y, x_662.z) * vec3<f32>(x_664, x_664, x_664));
  let x_668 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_668) + 1.0f);
  let x_673 : f32 = u_xlat0.x;
  let x_675 : f32 = u_xlat0.x;
  u_xlat25 = (x_673 * x_675);
  let x_677 : f32 = u_xlat25;
  let x_678 : f32 = u_xlat25;
  u_xlat25 = (x_677 * x_678);
  let x_681 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat25;
  u_xlat0.x = (x_681 * x_682);
  let x_685 : vec4<f32> = u_xlat7;
  let x_687 : vec3<f32> = u_xlat0;
  let x_690 : vec4<f32> = u_xlat6;
  let x_692 : vec3<f32> = ((vec3<f32>(x_685.y, x_685.z, x_685.w) * vec3<f32>(x_687.x, x_687.x, x_687.x)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat8;
  let x_696 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_695 * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_701 : vec3<f32> = u_xlat5;
  let x_702 : vec3<f32> = u_xlat1;
  let x_704 : vec3<f32> = u_xlat0;
  let x_705 : vec3<f32> = ((x_701 * x_702) + x_704);
  let x_706 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
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

