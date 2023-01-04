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

var<private> u_xlat0 : vec4<f32>;

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
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec2<f32> = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_46.x, x_46.y, x_47.z);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_60.x, x_60.y));
  u_xlat24 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat24;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat24 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_74);
  let x_77 : f32 = u_xlat24;
  let x_79 : vec4<f32> = u_xlat0;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_85.y, x_85.y, x_85.y) * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_95 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec3<f32> = u_xlat3;
  let x_101 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + x_100);
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_101.z);
  let x_105 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat2;
  let x_112 : vec3<f32> = ((vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_107.z, x_107.z, x_107.z)) + vec3<f32>(x_110.x, x_110.y, x_110.w));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_112.z);
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_120 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.w) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_120.z);
  let x_123 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_123.x, x_123.y, x_123.w) + -(vec3<f32>(x_127.x, x_127.y, x_127.z)));
  let x_131 : vec3<f32> = u_xlat3;
  let x_132 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_136);
  let x_140 : f32 = u_xlat0.z;
  let x_142 : f32 = u_xlat24;
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_140) * x_142) + x_145);
  let x_150 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_152 : f32 = u_xlat0.x;
  let x_155 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_150 * x_152) + x_155);
  let x_159 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = x_14.x_LightPos;
  u_xlat8 = (vec3<f32>(x_159.x, x_159.y, x_159.w) + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_168 : vec3<f32> = u_xlat8;
  let x_169 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_168, x_169);
  let x_172 : f32 = u_xlat17;
  u_xlat25 = inverseSqrt(x_172);
  let x_174 : vec3<f32> = u_xlat8;
  let x_175 : f32 = u_xlat25;
  u_xlat3 = (x_174 * vec3<f32>(x_175, x_175, x_175));
  let x_178 : f32 = u_xlat17;
  let x_180 : f32 = x_14.x_LightPos.w;
  u_xlat17 = (x_178 * x_180);
  let x_187 : f32 = u_xlat17;
  let x_189 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_187, x_187));
  u_xlat17 = x_189.x;
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_14.x_LightShadowData.z;
  let x_198 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_192 * x_195) + x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_202, 0.0f, 1.0f);
  let x_210 : f32 = u_xlat0.x;
  u_xlatb18 = (x_210 < 0.99000001f);
  let x_213 : bool = u_xlatb18;
  if (x_213) {
    let x_218 : f32 = u_xlat8.y;
    let x_221 : f32 = u_xlat8.x;
    u_xlat18 = max(abs(x_218), abs(x_221));
    let x_225 : f32 = u_xlat8.z;
    let x_227 : f32 = u_xlat18;
    u_xlat18 = max(abs(x_225), x_227);
    let x_229 : f32 = u_xlat18;
    let x_232 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat18 = (x_229 + -(x_232));
    let x_235 : f32 = u_xlat18;
    u_xlat18 = max(x_235, 0.00001f);
    let x_238 : f32 = u_xlat18;
    let x_240 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat18 = (x_238 * x_240);
    let x_243 : f32 = x_14.x_LightProjectionParams.y;
    let x_244 : f32 = u_xlat18;
    u_xlat18 = (x_243 / x_244);
    let x_246 : f32 = u_xlat18;
    let x_248 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat18 = (x_246 + -(x_248));
    let x_251 : f32 = u_xlat18;
    u_xlat18 = (-(x_251) + 1.0f);
    let x_255 : vec3<f32> = u_xlat8;
    let x_258 : vec3<f32> = (x_255 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_259 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_263 : vec4<f32> = u_xlat4;
    let x_264 : vec3<f32> = vec3<f32>(x_263.x, x_263.y, x_263.z);
    let x_265 : f32 = u_xlat18;
    txVec0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265);
    let x_278 : vec4<f32> = txVec0;
    let x_280 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_278.xyz, x_278.w);
    u_xlat4.x = x_280;
    let x_283 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_283 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_288 : vec3<f32> = u_xlat5;
    let x_289 : f32 = u_xlat18;
    txVec1 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289);
    let x_297 : vec4<f32> = txVec1;
    let x_299 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_297.xyz, x_297.w);
    u_xlat4.y = x_299;
    let x_301 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_301 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_305 : vec3<f32> = u_xlat5;
    let x_306 : f32 = u_xlat18;
    txVec2 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306);
    let x_314 : vec4<f32> = txVec2;
    let x_316 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_314.xyz, x_314.w);
    u_xlat4.z = x_316;
    let x_318 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_318 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_322 : vec3<f32> = u_xlat5;
    let x_323 : f32 = u_xlat18;
    txVec3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323);
    let x_331 : vec4<f32> = txVec3;
    let x_333 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_331.xyz, x_331.w);
    u_xlat4.w = x_333;
    let x_335 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(x_335, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_341 : f32 = x_14.x_LightShadowData.x;
    u_xlat27 = (-(x_341) + 1.0f);
    let x_344 : f32 = u_xlat18;
    let x_345 : f32 = u_xlat27;
    let x_348 : f32 = x_14.x_LightShadowData.x;
    u_xlat18 = ((x_344 * x_345) + x_348);
  } else {
    u_xlat18 = 1.0f;
  }
  let x_351 : f32 = u_xlat18;
  u_xlat27 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat0.x;
  let x_356 : f32 = u_xlat27;
  let x_358 : f32 = u_xlat18;
  u_xlat0.x = ((x_355 * x_356) + x_358);
  let x_362 : f32 = u_xlat0.x;
  let x_363 : f32 = u_xlat17;
  u_xlat0.x = (x_362 * x_363);
  let x_366 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = x_14.x_LightColor;
  let x_372 : vec3<f32> = (vec3<f32>(x_366.x, x_366.x, x_366.x) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_380 : vec3<f32> = u_xlat1;
  let x_382 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_380.x, x_380.y));
  u_xlat5 = vec3<f32>(x_382.x, x_382.y, x_382.z);
  let x_390 : vec3<f32> = u_xlat1;
  let x_392 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_390.x, x_390.y));
  u_xlat6 = x_392;
  let x_398 : vec3<f32> = u_xlat1;
  let x_400 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_398.x, x_398.y));
  u_xlat1 = vec3<f32>(x_400.x, x_400.y, x_400.z);
  let x_402 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_402 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_409 : vec3<f32> = u_xlat1;
  let x_410 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_409, x_410);
  let x_414 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_414);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_417.x, x_417.x, x_417.x) * x_419);
  let x_421 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_427 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.w) + -(x_425));
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_437 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_437);
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.x, x_440.x) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_448 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_448.w, x_448.x, x_448.y, x_448.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_453 : vec3<f32> = u_xlat8;
  let x_455 : f32 = u_xlat25;
  let x_458 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = ((-(x_453) * vec3<f32>(x_455, x_455, x_455)) + -(vec3<f32>(x_458.x, x_458.y, x_458.z)));
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat24 = dot(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : f32 = u_xlat24;
  u_xlat24 = max(x_469, 0.001f);
  let x_472 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_472);
  let x_474 : f32 = u_xlat24;
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec3<f32> = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec3<f32> = u_xlat1;
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(x_481, -(vec3<f32>(x_482.x, x_482.y, x_482.z)));
  let x_486 : vec3<f32> = u_xlat1;
  let x_487 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_486, -(x_487));
  let x_490 : f32 = u_xlat25;
  u_xlat25 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : vec3<f32> = u_xlat1;
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_492, vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_498 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_498, 0.0f, 1.0f);
  let x_501 : vec3<f32> = u_xlat3;
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_501), vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_508, 0.0f, 1.0f);
  let x_512 : f32 = u_xlat0.x;
  let x_514 : f32 = u_xlat0.x;
  u_xlat8.x = (x_512 * x_514);
  let x_517 : vec3<f32> = u_xlat8;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec2<f32>(x_517.x, x_517.x), vec2<f32>(x_519.x, x_519.x));
  let x_524 : f32 = u_xlat8.x;
  u_xlat8.x = (x_524 + -0.5f);
  let x_529 : f32 = u_xlat25;
  u_xlat16 = (-(x_529) + 1.0f);
  let x_533 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat16;
  u_xlat9 = (x_533 * x_534);
  let x_536 : f32 = u_xlat9;
  let x_537 : f32 = u_xlat9;
  u_xlat9 = (x_536 * x_537);
  let x_539 : f32 = u_xlat16;
  let x_540 : f32 = u_xlat9;
  u_xlat16 = (x_539 * x_540);
  let x_543 : f32 = u_xlat8.x;
  let x_544 : f32 = u_xlat16;
  u_xlat16 = ((x_543 * x_544) + 1.0f);
  let x_547 : f32 = u_xlat24;
  u_xlat9 = (-(abs(x_547)) + 1.0f);
  let x_551 : f32 = u_xlat9;
  let x_552 : f32 = u_xlat9;
  u_xlat17 = (x_551 * x_552);
  let x_554 : f32 = u_xlat17;
  let x_555 : f32 = u_xlat17;
  u_xlat17 = (x_554 * x_555);
  let x_557 : f32 = u_xlat9;
  let x_558 : f32 = u_xlat17;
  u_xlat9 = (x_557 * x_558);
  let x_561 : f32 = u_xlat8.x;
  let x_562 : f32 = u_xlat9;
  u_xlat8.x = ((x_561 * x_562) + 1.0f);
  let x_567 : f32 = u_xlat8.x;
  let x_568 : f32 = u_xlat16;
  u_xlat8.x = (x_567 * x_568);
  let x_572 : f32 = u_xlat7.x;
  let x_574 : f32 = u_xlat7.x;
  u_xlat16 = (x_572 * x_574);
  let x_576 : f32 = u_xlat16;
  u_xlat16 = max(x_576, 0.002f);
  let x_579 : f32 = u_xlat16;
  u_xlat9 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat24;
  let x_584 : f32 = u_xlat9;
  let x_586 : f32 = u_xlat16;
  u_xlat17 = ((abs(x_582) * x_584) + x_586);
  let x_588 : f32 = u_xlat25;
  let x_589 : f32 = u_xlat9;
  let x_591 : f32 = u_xlat16;
  u_xlat9 = ((x_588 * x_589) + x_591);
  let x_593 : f32 = u_xlat24;
  let x_595 : f32 = u_xlat9;
  u_xlat24 = (abs(x_593) * x_595);
  let x_597 : f32 = u_xlat25;
  let x_598 : f32 = u_xlat17;
  let x_600 : f32 = u_xlat24;
  u_xlat24 = ((x_597 * x_598) + x_600);
  let x_602 : f32 = u_xlat24;
  u_xlat24 = (x_602 + 0.00001f);
  let x_605 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_605);
  let x_607 : f32 = u_xlat16;
  let x_608 : f32 = u_xlat16;
  u_xlat16 = (x_607 * x_608);
  let x_611 : f32 = u_xlat1.x;
  let x_612 : f32 = u_xlat16;
  let x_615 : f32 = u_xlat1.x;
  u_xlat9 = ((x_611 * x_612) + -(x_615));
  let x_618 : f32 = u_xlat9;
  let x_620 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_618 * x_620) + 1.0f);
  let x_624 : f32 = u_xlat16;
  u_xlat16 = (x_624 * 0.318309873f);
  let x_628 : f32 = u_xlat1.x;
  let x_630 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_628 * x_630) + 0.0000001f);
  let x_635 : f32 = u_xlat16;
  let x_637 : f32 = u_xlat1.x;
  u_xlat16 = (x_635 / x_637);
  let x_639 : f32 = u_xlat16;
  let x_640 : f32 = u_xlat24;
  u_xlat8.y = (x_639 * x_640);
  let x_643 : f32 = u_xlat25;
  let x_645 : vec3<f32> = u_xlat8;
  let x_647 : vec2<f32> = (vec2<f32>(x_643, x_643) * vec2<f32>(x_645.x, x_645.y));
  let x_648 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_647.x, x_647.y, x_648.z);
  let x_651 : f32 = u_xlat8.y;
  u_xlat16 = (x_651 * 3.141592741f);
  let x_654 : f32 = u_xlat16;
  u_xlat16 = max(x_654, 0.0f);
  let x_656 : vec4<f32> = u_xlat6;
  let x_658 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_656.x, x_656.y, x_656.z), vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_662 : f32 = u_xlat24;
  u_xlatb24 = !((x_662 == 0.0f));
  let x_664 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_664);
  let x_666 : f32 = u_xlat24;
  let x_667 : f32 = u_xlat16;
  u_xlat16 = (x_666 * x_667);
  let x_669 : vec3<f32> = u_xlat8;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_669.x, x_669.x, x_669.x) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_676, x_676, x_676));
  let x_680 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_680) + 1.0f);
  let x_685 : f32 = u_xlat0.x;
  let x_687 : f32 = u_xlat0.x;
  u_xlat25 = (x_685 * x_687);
  let x_689 : f32 = u_xlat25;
  let x_690 : f32 = u_xlat25;
  u_xlat25 = (x_689 * x_690);
  let x_693 : f32 = u_xlat0.x;
  let x_694 : f32 = u_xlat25;
  u_xlat0.x = (x_693 * x_694);
  let x_697 : vec4<f32> = u_xlat7;
  let x_699 : vec4<f32> = u_xlat0;
  let x_702 : vec4<f32> = u_xlat6;
  let x_704 : vec3<f32> = ((vec3<f32>(x_697.y, x_697.z, x_697.w) * vec3<f32>(x_699.x, x_699.x, x_699.x)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec3<f32> = u_xlat8;
  let x_708 : vec4<f32> = u_xlat2;
  let x_710 : vec3<f32> = (x_707 * vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat5;
  let x_714 : vec3<f32> = u_xlat1;
  let x_716 : vec4<f32> = u_xlat0;
  let x_718 : vec3<f32> = ((x_713 * x_714) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  u_xlat0.w = 1.0f;
  let x_724 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_724));
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

