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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

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
  let x_363 : vec4<f32> = u_xlat2;
  let x_367 : vec4<f32> = x_14.unity_WorldToLight[1i];
  let x_369 : vec3<f32> = (vec3<f32>(x_363.y, x_363.y, x_363.y) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_375 : vec4<f32> = u_xlat2;
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.x, x_375.x, x_375.x)) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = u_xlat4;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.w, x_386.w, x_386.w)) + vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat4;
  let x_397 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_399 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_410 : vec4<f32> = u_xlat4;
  let x_413 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_410.x, x_410.y, x_410.z), -8.0f);
  u_xlat17 = x_413.w;
  let x_416 : f32 = u_xlat0.x;
  let x_417 : f32 = u_xlat17;
  u_xlat0.x = (x_416 * x_417);
  let x_420 : vec3<f32> = u_xlat0;
  let x_424 : vec4<f32> = x_14.x_LightColor;
  let x_426 : vec3<f32> = (vec3<f32>(x_420.x, x_420.x, x_420.x) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_434 : vec3<f32> = u_xlat1;
  let x_436 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_434.x, x_434.y));
  u_xlat5 = vec3<f32>(x_436.x, x_436.y, x_436.z);
  let x_444 : vec3<f32> = u_xlat1;
  let x_446 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_444.x, x_444.y));
  u_xlat6 = x_446;
  let x_452 : vec3<f32> = u_xlat1;
  let x_454 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_452.x, x_452.y));
  u_xlat1 = vec3<f32>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_456 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_463 : vec3<f32> = u_xlat1;
  let x_464 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_463, x_464);
  let x_468 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_468);
  let x_471 : vec3<f32> = u_xlat0;
  let x_473 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_471.x, x_471.x, x_471.x) * x_473);
  let x_475 : vec4<f32> = u_xlat2;
  let x_479 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_481 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.w) + -(x_479));
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_491);
  let x_494 : vec3<f32> = u_xlat0;
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.x, x_494.x) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_502.w, x_502.x, x_502.y, x_502.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_507 : vec3<f32> = u_xlat8;
  let x_509 : f32 = u_xlat25;
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat0 = ((-(x_507) * vec3<f32>(x_509, x_509, x_509)) + -(vec3<f32>(x_512.x, x_512.y, x_512.z)));
  let x_516 : vec3<f32> = u_xlat0;
  let x_517 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_516, x_517);
  let x_519 : f32 = u_xlat24;
  u_xlat24 = max(x_519, 0.001f);
  let x_522 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_522);
  let x_524 : f32 = u_xlat24;
  let x_526 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_524, x_524, x_524) * x_526);
  let x_528 : vec3<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(x_528, -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_533 : vec3<f32> = u_xlat1;
  let x_534 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_533, -(x_534));
  let x_537 : f32 = u_xlat25;
  u_xlat25 = clamp(x_537, 0.0f, 1.0f);
  let x_539 : vec3<f32> = u_xlat1;
  let x_540 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_539, x_540);
  let x_544 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_544, 0.0f, 1.0f);
  let x_547 : vec3<f32> = u_xlat3;
  let x_549 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_547), x_549);
  let x_553 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_553, 0.0f, 1.0f);
  let x_557 : f32 = u_xlat0.x;
  let x_559 : f32 = u_xlat0.x;
  u_xlat8.x = (x_557 * x_559);
  let x_562 : vec3<f32> = u_xlat8;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec2<f32>(x_562.x, x_562.x), vec2<f32>(x_564.x, x_564.x));
  let x_569 : f32 = u_xlat8.x;
  u_xlat8.x = (x_569 + -0.5f);
  let x_574 : f32 = u_xlat25;
  u_xlat16 = (-(x_574) + 1.0f);
  let x_578 : f32 = u_xlat16;
  let x_579 : f32 = u_xlat16;
  u_xlat9 = (x_578 * x_579);
  let x_581 : f32 = u_xlat9;
  let x_582 : f32 = u_xlat9;
  u_xlat9 = (x_581 * x_582);
  let x_584 : f32 = u_xlat16;
  let x_585 : f32 = u_xlat9;
  u_xlat16 = (x_584 * x_585);
  let x_588 : f32 = u_xlat8.x;
  let x_589 : f32 = u_xlat16;
  u_xlat16 = ((x_588 * x_589) + 1.0f);
  let x_592 : f32 = u_xlat24;
  u_xlat9 = (-(abs(x_592)) + 1.0f);
  let x_596 : f32 = u_xlat9;
  let x_597 : f32 = u_xlat9;
  u_xlat17 = (x_596 * x_597);
  let x_599 : f32 = u_xlat17;
  let x_600 : f32 = u_xlat17;
  u_xlat17 = (x_599 * x_600);
  let x_602 : f32 = u_xlat9;
  let x_603 : f32 = u_xlat17;
  u_xlat9 = (x_602 * x_603);
  let x_606 : f32 = u_xlat8.x;
  let x_607 : f32 = u_xlat9;
  u_xlat8.x = ((x_606 * x_607) + 1.0f);
  let x_612 : f32 = u_xlat8.x;
  let x_613 : f32 = u_xlat16;
  u_xlat8.x = (x_612 * x_613);
  let x_617 : f32 = u_xlat7.x;
  let x_619 : f32 = u_xlat7.x;
  u_xlat16 = (x_617 * x_619);
  let x_621 : f32 = u_xlat16;
  u_xlat16 = max(x_621, 0.002f);
  let x_624 : f32 = u_xlat16;
  u_xlat9 = (-(x_624) + 1.0f);
  let x_627 : f32 = u_xlat24;
  let x_629 : f32 = u_xlat9;
  let x_631 : f32 = u_xlat16;
  u_xlat17 = ((abs(x_627) * x_629) + x_631);
  let x_633 : f32 = u_xlat25;
  let x_634 : f32 = u_xlat9;
  let x_636 : f32 = u_xlat16;
  u_xlat9 = ((x_633 * x_634) + x_636);
  let x_638 : f32 = u_xlat24;
  let x_640 : f32 = u_xlat9;
  u_xlat24 = (abs(x_638) * x_640);
  let x_642 : f32 = u_xlat25;
  let x_643 : f32 = u_xlat17;
  let x_645 : f32 = u_xlat24;
  u_xlat24 = ((x_642 * x_643) + x_645);
  let x_647 : f32 = u_xlat24;
  u_xlat24 = (x_647 + 0.00001f);
  let x_650 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_650);
  let x_652 : f32 = u_xlat16;
  let x_653 : f32 = u_xlat16;
  u_xlat16 = (x_652 * x_653);
  let x_656 : f32 = u_xlat1.x;
  let x_657 : f32 = u_xlat16;
  let x_660 : f32 = u_xlat1.x;
  u_xlat9 = ((x_656 * x_657) + -(x_660));
  let x_663 : f32 = u_xlat9;
  let x_665 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_663 * x_665) + 1.0f);
  let x_669 : f32 = u_xlat16;
  u_xlat16 = (x_669 * 0.318309873f);
  let x_673 : f32 = u_xlat1.x;
  let x_675 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_673 * x_675) + 0.0000001f);
  let x_680 : f32 = u_xlat16;
  let x_682 : f32 = u_xlat1.x;
  u_xlat16 = (x_680 / x_682);
  let x_684 : f32 = u_xlat16;
  let x_685 : f32 = u_xlat24;
  u_xlat8.y = (x_684 * x_685);
  let x_688 : f32 = u_xlat25;
  let x_690 : vec3<f32> = u_xlat8;
  let x_692 : vec2<f32> = (vec2<f32>(x_688, x_688) * vec2<f32>(x_690.x, x_690.y));
  let x_693 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_692.x, x_692.y, x_693.z);
  let x_696 : f32 = u_xlat8.y;
  u_xlat16 = (x_696 * 3.141592741f);
  let x_699 : f32 = u_xlat16;
  u_xlat16 = max(x_699, 0.0f);
  let x_701 : vec4<f32> = u_xlat6;
  let x_703 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_707 : f32 = u_xlat24;
  u_xlatb24 = !((x_707 == 0.0f));
  let x_709 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_709);
  let x_711 : f32 = u_xlat24;
  let x_712 : f32 = u_xlat16;
  u_xlat16 = (x_711 * x_712);
  let x_714 : vec3<f32> = u_xlat8;
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_714.x, x_714.x, x_714.x) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat4;
  let x_721 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721, x_721, x_721));
  let x_725 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_725) + 1.0f);
  let x_730 : f32 = u_xlat0.x;
  let x_732 : f32 = u_xlat0.x;
  u_xlat25 = (x_730 * x_732);
  let x_734 : f32 = u_xlat25;
  let x_735 : f32 = u_xlat25;
  u_xlat25 = (x_734 * x_735);
  let x_738 : f32 = u_xlat0.x;
  let x_739 : f32 = u_xlat25;
  u_xlat0.x = (x_738 * x_739);
  let x_742 : vec4<f32> = u_xlat7;
  let x_744 : vec3<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat6;
  let x_749 : vec3<f32> = ((vec3<f32>(x_742.y, x_742.z, x_742.w) * vec3<f32>(x_744.x, x_744.x, x_744.x)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat8;
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_752 * vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_758 : vec3<f32> = u_xlat5;
  let x_759 : vec3<f32> = u_xlat1;
  let x_761 : vec3<f32> = u_xlat0;
  let x_762 : vec3<f32> = ((x_758 * x_759) + x_761);
  let x_763 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
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

