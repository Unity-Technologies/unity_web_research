struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(3) var sampler_Gradient : sampler;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_164 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat20 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_40 : f32 = vs_TEXCOORD3;
  u_xlat19 = (x_40 + -1.0f);
  let x_43 : f32 = u_xlat19;
  u_xlat19 = (x_43 * -9.999998093f);
  let x_46 : f32 = u_xlat19;
  u_xlat19 = clamp(x_46, 0.0f, 1.0f);
  let x_52 : f32 = u_xlat19;
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : vec2<f32> = (-(vec2<f32>(x_52, x_52)) + x_58);
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_59.x, x_59.y, x_60.z, x_60.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_72.x, x_72.y));
  u_xlat19 = x_74.x;
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_81);
  u_xlat2.x = x_82.z;
  let x_86 : f32 = u_xlat19;
  u_xlat19 = ((x_86 * -2.0f) + 1.0f);
  let x_91 : f32 = u_xlat2.x;
  let x_93 : f32 = u_xlat19;
  u_xlat19 = (-(x_91) + x_93);
  let x_98 : f32 = u_xlat19;
  u_xlatb19 = (x_98 < 0.0f);
  let x_100 : bool = u_xlatb19;
  if (((select(0i, 1i, x_100) * -1i) != 0i)) {
    discard;
  }
  let x_112 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_112 == 1.0f);
  let x_114 : bool = u_xlatb19;
  if (x_114) {
    let x_119 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_119 == 1.0f);
    let x_121 : vec3<f32> = vs_TEXCOORD2;
    let x_126 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_128 : vec3<f32> = (vec3<f32>(x_121.y, x_121.y, x_121.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
    let x_129 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
    let x_132 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_134 : vec3<f32> = vs_TEXCOORD2;
    let x_137 : vec4<f32> = u_xlat2;
    let x_139 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + vec3<f32>(x_137.x, x_137.y, x_137.z));
    let x_140 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
    let x_144 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_146 : vec3<f32> = vs_TEXCOORD2;
    let x_149 : vec4<f32> = u_xlat2;
    let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.z, x_146.z, x_146.z)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
    let x_152 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat2;
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_160 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) + vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : bool = u_xlatb19;
    if (x_163) {
      let x_167 : vec4<f32> = u_xlat2;
      x_164 = vec3<f32>(x_167.x, x_167.y, x_167.z);
    } else {
      let x_170 : vec3<f32> = vs_TEXCOORD2;
      x_164 = x_170;
    }
    let x_171 : vec3<f32> = x_164;
    let x_172 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat2;
    let x_178 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_180 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
    let x_181 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat2;
    let x_187 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_188 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) * x_187);
    let x_189 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_189.x, x_188.x, x_188.y, x_188.z);
    let x_192 : f32 = u_xlat2.y;
    u_xlat19 = ((x_192 * 0.25f) + 0.75f);
    let x_199 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat8 = ((x_199 * 0.5f) + 0.75f);
    let x_203 : f32 = u_xlat19;
    let x_204 : f32 = u_xlat8;
    u_xlat2.x = max(x_203, x_204);
    let x_215 : vec4<f32> = u_xlat2;
    let x_217 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_215.x, x_215.z, x_215.w));
    u_xlat2 = x_217;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_224, x_226);
  let x_228 : f32 = u_xlat19;
  u_xlat19 = clamp(x_228, 0.0f, 1.0f);
  let x_230 : f32 = u_xlat19;
  let x_234 : vec4<f32> = x_18.x_LightColor0;
  let x_236 : vec3<f32> = (vec3<f32>(x_230, x_230, x_230) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_243);
  let x_246 : f32 = u_xlat19;
  let x_248 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_253 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_260 : f32 = x_18.x_Metallic;
  let x_262 : f32 = x_18.x_Metallic;
  let x_264 : f32 = x_18.x_Metallic;
  let x_265 : vec3<f32> = vec3<f32>(x_260, x_262, x_264);
  let x_270 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * x_270) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_276 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_276) * 0.959999979f) + 0.959999979f);
  let x_282 : f32 = u_xlat19;
  let x_285 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_290 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_290) + 1.0f);
  let x_293 : vec3<f32> = u_xlat0;
  let x_294 : f32 = u_xlat18;
  let x_298 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_293 * vec3<f32>(x_294, x_294, x_294)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec3<f32> = u_xlat0;
  let x_302 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_301, x_302);
  let x_304 : f32 = u_xlat18;
  u_xlat18 = max(x_304, 0.001f);
  let x_307 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_307);
  let x_309 : f32 = u_xlat18;
  let x_311 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_309, x_309, x_309) * x_311);
  let x_313 : vec3<f32> = u_xlat3;
  let x_314 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_313, x_314);
  let x_316 : vec3<f32> = u_xlat3;
  let x_318 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_316, vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_323, 0.0f, 1.0f);
  let x_327 : vec3<f32> = u_xlat3;
  let x_328 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_327, x_328);
  let x_330 : f32 = u_xlat7;
  u_xlat7 = clamp(x_330, 0.0f, 1.0f);
  let x_333 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_335 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), x_335);
  let x_339 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_339, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat0.x;
  let x_346 : f32 = u_xlat0.x;
  u_xlat6.x = (x_344 * x_346);
  let x_349 : vec3<f32> = u_xlat6;
  let x_351 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_349.x, x_349.x), vec2<f32>(x_351, x_351));
  let x_356 : f32 = u_xlat6.x;
  u_xlat6.x = (x_356 + -0.5f);
  let x_362 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_362) + 1.0f);
  let x_366 : f32 = u_xlat12;
  let x_367 : f32 = u_xlat12;
  u_xlat13 = (x_366 * x_367);
  let x_369 : f32 = u_xlat13;
  let x_370 : f32 = u_xlat13;
  u_xlat13 = (x_369 * x_370);
  let x_372 : f32 = u_xlat12;
  let x_373 : f32 = u_xlat13;
  u_xlat12 = (x_372 * x_373);
  let x_376 : f32 = u_xlat6.x;
  let x_377 : f32 = u_xlat12;
  u_xlat12 = ((x_376 * x_377) + 1.0f);
  let x_380 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_380)) + 1.0f);
  let x_385 : f32 = u_xlat13;
  let x_386 : f32 = u_xlat13;
  u_xlat20 = (x_385 * x_386);
  let x_388 : f32 = u_xlat20;
  let x_389 : f32 = u_xlat20;
  u_xlat20 = (x_388 * x_389);
  let x_391 : f32 = u_xlat13;
  let x_392 : f32 = u_xlat20;
  u_xlat13 = (x_391 * x_392);
  let x_395 : f32 = u_xlat6.x;
  let x_396 : f32 = u_xlat13;
  u_xlat6.x = ((x_395 * x_396) + 1.0f);
  let x_401 : f32 = u_xlat6.x;
  let x_402 : f32 = u_xlat12;
  u_xlat6.x = (x_401 * x_402);
  let x_405 : f32 = u_xlat19;
  let x_406 : f32 = u_xlat19;
  u_xlat12 = (x_405 * x_406);
  let x_408 : f32 = u_xlat12;
  u_xlat12 = max(x_408, 0.002f);
  let x_411 : f32 = u_xlat12;
  u_xlat13 = (-(x_411) + 1.0f);
  let x_414 : f32 = u_xlat18;
  let x_416 : f32 = u_xlat13;
  let x_418 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_414) * x_416) + x_418);
  let x_421 : f32 = u_xlat1.x;
  let x_422 : f32 = u_xlat13;
  let x_424 : f32 = u_xlat12;
  u_xlat13 = ((x_421 * x_422) + x_424);
  let x_426 : f32 = u_xlat18;
  let x_428 : f32 = u_xlat13;
  u_xlat18 = (abs(x_426) * x_428);
  let x_431 : f32 = u_xlat1.x;
  let x_432 : f32 = u_xlat19;
  let x_434 : f32 = u_xlat18;
  u_xlat18 = ((x_431 * x_432) + x_434);
  let x_436 : f32 = u_xlat18;
  u_xlat18 = (x_436 + 0.00001f);
  let x_439 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_439);
  let x_441 : f32 = u_xlat12;
  let x_442 : f32 = u_xlat12;
  u_xlat12 = (x_441 * x_442);
  let x_444 : f32 = u_xlat7;
  let x_445 : f32 = u_xlat12;
  let x_447 : f32 = u_xlat7;
  u_xlat13 = ((x_444 * x_445) + -(x_447));
  let x_450 : f32 = u_xlat13;
  let x_451 : f32 = u_xlat7;
  u_xlat7 = ((x_450 * x_451) + 1.0f);
  let x_454 : f32 = u_xlat12;
  u_xlat12 = (x_454 * 0.318309873f);
  let x_457 : f32 = u_xlat7;
  let x_458 : f32 = u_xlat7;
  u_xlat7 = ((x_457 * x_458) + 0.0000001f);
  let x_462 : f32 = u_xlat12;
  let x_463 : f32 = u_xlat7;
  u_xlat12 = (x_462 / x_463);
  let x_465 : f32 = u_xlat12;
  let x_466 : f32 = u_xlat18;
  u_xlat6.y = (x_465 * x_466);
  let x_469 : vec3<f32> = u_xlat1;
  let x_471 : vec3<f32> = u_xlat6;
  let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.x) * vec2<f32>(x_471.x, x_471.y));
  let x_474 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_473.x, x_473.y, x_474.z);
  let x_477 : f32 = u_xlat6.y;
  u_xlat12 = (x_477 * 3.141592741f);
  let x_480 : f32 = u_xlat12;
  u_xlat12 = max(x_480, 0.0f);
  let x_482 : vec3<f32> = u_xlat4;
  let x_483 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_482, x_483);
  let x_486 : f32 = u_xlat18;
  u_xlatb18 = !((x_486 == 0.0f));
  let x_488 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_488);
  let x_490 : f32 = u_xlat18;
  let x_491 : f32 = u_xlat12;
  u_xlat12 = (x_490 * x_491);
  let x_493 : vec3<f32> = u_xlat6;
  let x_495 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_493.x, x_493.x, x_493.x) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat2;
  let x_500 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500, x_500, x_500));
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_504) + 1.0f);
  let x_509 : f32 = u_xlat0.x;
  let x_511 : f32 = u_xlat0.x;
  u_xlat19 = (x_509 * x_511);
  let x_513 : f32 = u_xlat19;
  let x_514 : f32 = u_xlat19;
  u_xlat19 = (x_513 * x_514);
  let x_517 : f32 = u_xlat0.x;
  let x_518 : f32 = u_xlat19;
  u_xlat0.x = (x_517 * x_518);
  let x_521 : vec3<f32> = u_xlat4;
  let x_524 : vec3<f32> = (-(x_521) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = u_xlat0;
  let x_532 : vec3<f32> = u_xlat4;
  let x_533 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_529.x, x_529.x, x_529.x)) + x_532);
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat6;
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_536 * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec3<f32> = u_xlat5;
  let x_541 : vec3<f32> = u_xlat1;
  let x_543 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_540 * x_541) + x_543);
  let x_546 : f32 = vs_TEXCOORD6;
  let x_548 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_546 / x_548);
  let x_550 : f32 = u_xlat18;
  u_xlat18 = (-(x_550) + 1.0f);
  let x_553 : f32 = u_xlat18;
  let x_555 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_553 * x_555);
  let x_557 : f32 = u_xlat18;
  u_xlat18 = max(x_557, 0.0f);
  let x_559 : f32 = u_xlat18;
  let x_562 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_559 * x_562);
  let x_564 : f32 = u_xlat18;
  let x_565 : f32 = u_xlat18;
  u_xlat18 = (x_564 * -(x_565));
  let x_568 : f32 = u_xlat18;
  u_xlat18 = exp2(x_568);
  let x_572 : vec3<f32> = u_xlat0;
  let x_573 : f32 = u_xlat18;
  let x_575 : vec3<f32> = (x_572 * vec3<f32>(x_573, x_573, x_573));
  let x_576 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

