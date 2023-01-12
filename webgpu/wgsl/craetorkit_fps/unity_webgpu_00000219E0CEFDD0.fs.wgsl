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

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat25 : f32;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
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
    let x_259 : vec4<f32> = u_xlat4;
    let x_260 : vec3<f32> = vec3<f32>(x_259.x, x_259.y, x_259.z);
    let x_261 : f32 = u_xlat18;
    txVec0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261);
    let x_274 : vec4<f32> = txVec0;
    let x_276 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_274.xyz, x_274.w);
    u_xlat4.x = x_276;
    let x_279 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_279 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_284 : vec3<f32> = u_xlat5;
    let x_285 : f32 = u_xlat18;
    txVec1 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285);
    let x_293 : vec4<f32> = txVec1;
    let x_295 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_293.xyz, x_293.w);
    u_xlat4.y = x_295;
    let x_297 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_297 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_301 : vec3<f32> = u_xlat5;
    let x_302 : f32 = u_xlat18;
    txVec2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302);
    let x_310 : vec4<f32> = txVec2;
    let x_312 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_310.xyz, x_310.w);
    u_xlat4.z = x_312;
    let x_314 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_314 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_318 : vec3<f32> = u_xlat5;
    let x_319 : f32 = u_xlat18;
    txVec3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319);
    let x_327 : vec4<f32> = txVec3;
    let x_329 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_327.xyz, x_327.w);
    u_xlat4.w = x_329;
    let x_331 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(x_331, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_337 : f32 = x_14.x_LightShadowData.x;
    u_xlat27 = (-(x_337) + 1.0f);
    let x_340 : f32 = u_xlat18;
    let x_341 : f32 = u_xlat27;
    let x_344 : f32 = x_14.x_LightShadowData.x;
    u_xlat18 = ((x_340 * x_341) + x_344);
  } else {
    u_xlat18 = 1.0f;
  }
  let x_347 : f32 = u_xlat18;
  u_xlat27 = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat0.x;
  let x_352 : f32 = u_xlat27;
  let x_354 : f32 = u_xlat18;
  u_xlat0.x = ((x_351 * x_352) + x_354);
  let x_358 : f32 = u_xlat0.x;
  let x_359 : f32 = u_xlat17;
  u_xlat0.x = (x_358 * x_359);
  let x_362 : vec3<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_14.x_LightColor;
  let x_368 : vec3<f32> = (vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_376 : vec3<f32> = u_xlat1;
  let x_378 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_376.x, x_376.y));
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_386 : vec3<f32> = u_xlat1;
  let x_388 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_386.x, x_386.y));
  u_xlat6 = x_388;
  let x_394 : vec3<f32> = u_xlat1;
  let x_396 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_394.x, x_394.y));
  u_xlat1 = vec3<f32>(x_396.x, x_396.y, x_396.z);
  let x_398 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_398 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_405 : vec3<f32> = u_xlat1;
  let x_406 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_405, x_406);
  let x_410 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_410);
  let x_413 : vec3<f32> = u_xlat0;
  let x_415 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_413.x, x_413.x, x_413.x) * x_415);
  let x_417 : vec4<f32> = u_xlat2;
  let x_421 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_423 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.w) + -(x_421));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_433 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_433);
  let x_436 : vec3<f32> = u_xlat0;
  let x_438 : vec4<f32> = u_xlat2;
  let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.x, x_436.x) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_444.w, x_444.x, x_444.y, x_444.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_449 : vec3<f32> = u_xlat8;
  let x_451 : f32 = u_xlat25;
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat0 = ((-(x_449) * vec3<f32>(x_451, x_451, x_451)) + -(vec3<f32>(x_454.x, x_454.y, x_454.z)));
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_458, x_459);
  let x_461 : f32 = u_xlat24;
  u_xlat24 = max(x_461, 0.001f);
  let x_464 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat24;
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_466, x_466, x_466) * x_468);
  let x_470 : vec3<f32> = u_xlat1;
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(x_470, -(vec3<f32>(x_471.x, x_471.y, x_471.z)));
  let x_475 : vec3<f32> = u_xlat1;
  let x_476 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_475, -(x_476));
  let x_479 : f32 = u_xlat25;
  u_xlat25 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : vec3<f32> = u_xlat1;
  let x_482 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_481, x_482);
  let x_486 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_486, 0.0f, 1.0f);
  let x_489 : vec3<f32> = u_xlat3;
  let x_491 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_489), x_491);
  let x_495 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_495, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat0.x;
  let x_501 : f32 = u_xlat0.x;
  u_xlat8.x = (x_499 * x_501);
  let x_504 : vec3<f32> = u_xlat8;
  let x_506 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec2<f32>(x_504.x, x_504.x), vec2<f32>(x_506.x, x_506.x));
  let x_511 : f32 = u_xlat8.x;
  u_xlat8.x = (x_511 + -0.5f);
  let x_516 : f32 = u_xlat25;
  u_xlat16 = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat16;
  let x_521 : f32 = u_xlat16;
  u_xlat9 = (x_520 * x_521);
  let x_523 : f32 = u_xlat9;
  let x_524 : f32 = u_xlat9;
  u_xlat9 = (x_523 * x_524);
  let x_526 : f32 = u_xlat16;
  let x_527 : f32 = u_xlat9;
  u_xlat16 = (x_526 * x_527);
  let x_530 : f32 = u_xlat8.x;
  let x_531 : f32 = u_xlat16;
  u_xlat16 = ((x_530 * x_531) + 1.0f);
  let x_534 : f32 = u_xlat24;
  u_xlat9 = (-(abs(x_534)) + 1.0f);
  let x_538 : f32 = u_xlat9;
  let x_539 : f32 = u_xlat9;
  u_xlat17 = (x_538 * x_539);
  let x_541 : f32 = u_xlat17;
  let x_542 : f32 = u_xlat17;
  u_xlat17 = (x_541 * x_542);
  let x_544 : f32 = u_xlat9;
  let x_545 : f32 = u_xlat17;
  u_xlat9 = (x_544 * x_545);
  let x_548 : f32 = u_xlat8.x;
  let x_549 : f32 = u_xlat9;
  u_xlat8.x = ((x_548 * x_549) + 1.0f);
  let x_554 : f32 = u_xlat8.x;
  let x_555 : f32 = u_xlat16;
  u_xlat8.x = (x_554 * x_555);
  let x_559 : f32 = u_xlat7.x;
  let x_561 : f32 = u_xlat7.x;
  u_xlat16 = (x_559 * x_561);
  let x_563 : f32 = u_xlat16;
  u_xlat16 = max(x_563, 0.002f);
  let x_566 : f32 = u_xlat16;
  u_xlat9 = (-(x_566) + 1.0f);
  let x_569 : f32 = u_xlat24;
  let x_571 : f32 = u_xlat9;
  let x_573 : f32 = u_xlat16;
  u_xlat17 = ((abs(x_569) * x_571) + x_573);
  let x_575 : f32 = u_xlat25;
  let x_576 : f32 = u_xlat9;
  let x_578 : f32 = u_xlat16;
  u_xlat9 = ((x_575 * x_576) + x_578);
  let x_580 : f32 = u_xlat24;
  let x_582 : f32 = u_xlat9;
  u_xlat24 = (abs(x_580) * x_582);
  let x_584 : f32 = u_xlat25;
  let x_585 : f32 = u_xlat17;
  let x_587 : f32 = u_xlat24;
  u_xlat24 = ((x_584 * x_585) + x_587);
  let x_589 : f32 = u_xlat24;
  u_xlat24 = (x_589 + 0.00001f);
  let x_592 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_592);
  let x_594 : f32 = u_xlat16;
  let x_595 : f32 = u_xlat16;
  u_xlat16 = (x_594 * x_595);
  let x_598 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat16;
  let x_602 : f32 = u_xlat1.x;
  u_xlat9 = ((x_598 * x_599) + -(x_602));
  let x_605 : f32 = u_xlat9;
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_605 * x_607) + 1.0f);
  let x_611 : f32 = u_xlat16;
  u_xlat16 = (x_611 * 0.318309873f);
  let x_615 : f32 = u_xlat1.x;
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_615 * x_617) + 0.0000001f);
  let x_622 : f32 = u_xlat16;
  let x_624 : f32 = u_xlat1.x;
  u_xlat16 = (x_622 / x_624);
  let x_626 : f32 = u_xlat16;
  let x_627 : f32 = u_xlat24;
  u_xlat8.y = (x_626 * x_627);
  let x_630 : f32 = u_xlat25;
  let x_632 : vec3<f32> = u_xlat8;
  let x_634 : vec2<f32> = (vec2<f32>(x_630, x_630) * vec2<f32>(x_632.x, x_632.y));
  let x_635 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_634.x, x_634.y, x_635.z);
  let x_638 : f32 = u_xlat8.y;
  u_xlat16 = (x_638 * 3.141592741f);
  let x_641 : f32 = u_xlat16;
  u_xlat16 = max(x_641, 0.0f);
  let x_643 : vec4<f32> = u_xlat6;
  let x_645 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_649 : f32 = u_xlat24;
  u_xlatb24 = !((x_649 == 0.0f));
  let x_651 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_651);
  let x_653 : f32 = u_xlat24;
  let x_654 : f32 = u_xlat16;
  u_xlat16 = (x_653 * x_654);
  let x_656 : vec3<f32> = u_xlat8;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_656.x, x_656.x, x_656.x) * vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663));
  let x_667 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_667) + 1.0f);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = u_xlat0.x;
  u_xlat25 = (x_672 * x_674);
  let x_676 : f32 = u_xlat25;
  let x_677 : f32 = u_xlat25;
  u_xlat25 = (x_676 * x_677);
  let x_680 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat25;
  u_xlat0.x = (x_680 * x_681);
  let x_684 : vec4<f32> = u_xlat7;
  let x_686 : vec3<f32> = u_xlat0;
  let x_689 : vec4<f32> = u_xlat6;
  let x_691 : vec3<f32> = ((vec3<f32>(x_684.y, x_684.z, x_684.w) * vec3<f32>(x_686.x, x_686.x, x_686.x)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec3<f32> = u_xlat8;
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_694 * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_700 : vec3<f32> = u_xlat5;
  let x_701 : vec3<f32> = u_xlat1;
  let x_703 : vec3<f32> = u_xlat0;
  let x_704 : vec3<f32> = ((x_700 * x_701) + x_703);
  let x_705 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
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

