struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicSmooth : sampler;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(11) var sampler_Gradient : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_71 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat3 : f32;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(14) var sampler_AO : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(12) var sampler_Normal : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_370 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_40 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_38.z, x_38.w));
  u_xlat8 = vec2<f32>(x_40.x, x_40.w);
  let x_48 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_48.z, x_48.w));
  u_xlat24 = x_50.x;
  let x_55 : f32 = u_xlat24;
  u_xlat1.x = (-(x_55) + 1.0f);
  let x_61 : f32 = u_xlat0.x;
  let x_63 : f32 = u_xlat1.x;
  u_xlat0.x = (x_61 * x_63);
  let x_67 : f32 = u_xlat0.x;
  let x_76 : f32 = x_71.x_NoiseStrength;
  let x_78 : f32 = u_xlat24;
  u_xlat0.x = ((x_67 * x_76) + x_78);
  let x_82 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_82) + 1.0f);
  let x_87 : f32 = u_xlat0.x;
  let x_90 : f32 = x_71.x_Cutoff;
  u_xlat0.x = (x_87 + -(x_90));
  let x_96 : f32 = x_71.x_EdgeSize;
  u_xlat24 = (1.0f / -(x_96));
  let x_99 : f32 = u_xlat24;
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = (x_99 * x_101);
  let x_105 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_105, 0.0f, 1.0f);
  let x_110 : f32 = u_xlat0.x;
  u_xlat24 = ((x_110 * -2.0f) + 3.0f);
  let x_116 : f32 = u_xlat0.x;
  let x_118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_116 * x_118);
  let x_122 : f32 = u_xlat0.x;
  let x_123 : f32 = u_xlat24;
  u_xlat1.x = (x_122 * x_123);
  let x_132 : vec4<f32> = vs_TEXCOORD0;
  let x_134 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_132.z, x_132.w));
  u_xlat2 = x_134;
  let x_136 : vec4<f32> = u_xlat2;
  let x_141 : vec4<f32> = x_71.x_Color;
  u_xlat9 = (vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_150.z, x_150.w));
  u_xlat3 = x_152.x;
  let x_155 : vec3<f32> = u_xlat1;
  let x_159 : vec4<f32> = x_71.x_EdgeColor1;
  u_xlat11 = (vec3<f32>(x_155.x, x_155.x, x_155.x) * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = x_71.x_Emission;
  let x_169 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_162.w, x_162.w, x_162.w) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_169);
  let x_177 : vec4<f32> = vs_TEXCOORD0;
  let x_179 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_177.z, x_177.w));
  let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.w);
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : f32 = u_xlat4.z;
  let x_187 : f32 = u_xlat4.x;
  u_xlat4.x = (x_185 * x_187);
  let x_190 : vec4<f32> = u_xlat4;
  let x_197 : vec2<f32> = ((vec2<f32>(x_190.x, x_190.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_200 : vec4<f32> = u_xlat4;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_200.x, x_200.y), vec2<f32>(x_202.x, x_202.y));
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_207, 1.0f);
  let x_211 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_211) + 1.0f);
  let x_216 : f32 = u_xlat1.x;
  u_xlat4.z = sqrt(x_216);
  let x_220 : f32 = u_xlat8.x;
  let x_223 : f32 = x_71.x_Metallic;
  u_xlat8.x = (x_220 * x_223);
  let x_230 : f32 = u_xlat8.y;
  let x_233 : f32 = x_71.x_Glossiness;
  SV_Target1.w = (x_230 * x_233);
  let x_238 : f32 = u_xlat24;
  let x_241 : f32 = u_xlat0.x;
  let x_244 : f32 = x_71.x_Cutoff;
  u_xlat0.x = ((-(x_238) * x_241) + -(x_244));
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_249 + 1.0f);
  let x_256 : f32 = u_xlat0.x;
  u_xlatb0 = (x_256 < 0.0f);
  let x_258 : bool = u_xlatb0;
  if (((select(0i, 1i, x_258) * -1i) != 0i)) {
    discard;
  }
  let x_270 : vec4<f32> = vs_TEXCOORD1;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_277 : vec4<f32> = vs_TEXCOORD2;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_284 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec4<f32> = u_xlat5;
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_297 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_297);
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = u_xlat5;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.x, x_300.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_309 : f32 = x_71.unity_ProbeVolumeParams.x;
  u_xlatb0 = (x_309 == 1.0f);
  let x_311 : bool = u_xlatb0;
  if (x_311) {
    let x_315 : f32 = x_71.unity_ProbeVolumeParams.y;
    u_xlatb0 = (x_315 == 1.0f);
    let x_317 : vec4<f32> = vs_TEXCOORD2;
    let x_321 : vec4<f32> = x_71.unity_ProbeVolumeWorldToObject[1i];
    let x_323 : vec3<f32> = (vec3<f32>(x_317.w, x_317.w, x_317.w) * vec3<f32>(x_321.x, x_321.y, x_321.z));
    let x_324 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
    let x_327 : vec4<f32> = x_71.unity_ProbeVolumeWorldToObject[0i];
    let x_329 : vec4<f32> = vs_TEXCOORD1;
    let x_332 : vec4<f32> = u_xlat5;
    let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.w, x_329.w, x_329.w)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
    let x_335 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_339 : vec4<f32> = x_71.unity_ProbeVolumeWorldToObject[2i];
    let x_341 : vec4<f32> = vs_TEXCOORD3;
    let x_344 : vec4<f32> = u_xlat5;
    let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.w, x_341.w, x_341.w)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
    let x_347 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
    let x_349 : vec4<f32> = u_xlat5;
    let x_352 : vec4<f32> = x_71.unity_ProbeVolumeWorldToObject[3i];
    let x_354 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_352.x, x_352.y, x_352.z));
    let x_355 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_360 : f32 = vs_TEXCOORD1.w;
    u_xlat14.x = x_360;
    let x_363 : f32 = vs_TEXCOORD2.w;
    u_xlat14.y = x_363;
    let x_366 : f32 = vs_TEXCOORD3.w;
    u_xlat14.z = x_366;
    let x_368 : bool = u_xlatb0;
    if (x_368) {
      let x_373 : vec4<f32> = u_xlat5;
      x_370 = vec3<f32>(x_373.x, x_373.y, x_373.z);
    } else {
      let x_376 : vec3<f32> = u_xlat14;
      x_370 = x_376;
    }
    let x_377 : vec3<f32> = x_370;
    let x_378 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_377.x, x_378.y, x_377.y, x_377.z);
    let x_380 : vec4<f32> = u_xlat0;
    let x_385 : vec3<f32> = x_71.unity_ProbeVolumeMin;
    let x_387 : vec3<f32> = (vec3<f32>(x_380.x, x_380.z, x_380.w) + -(x_385));
    let x_388 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_387.x, x_388.y, x_387.y, x_387.z);
    let x_390 : vec4<f32> = u_xlat0;
    let x_394 : vec3<f32> = x_71.unity_ProbeVolumeSizeInv;
    let x_395 : vec3<f32> = (vec3<f32>(x_390.x, x_390.z, x_390.w) * x_394);
    let x_396 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_396.x, x_395.x, x_395.y, x_395.z);
    let x_399 : f32 = u_xlat5.y;
    u_xlat0.x = (x_399 * 0.25f);
    let x_405 : f32 = x_71.unity_ProbeVolumeParams.z;
    u_xlat16 = (x_405 * 0.5f);
    let x_409 : f32 = x_71.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_409) * 0.5f) + 0.25f);
    let x_413 : f32 = u_xlat16;
    let x_415 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_413, x_415);
    let x_418 : f32 = u_xlat24;
    let x_420 : f32 = u_xlat0.x;
    u_xlat5.x = min(x_418, x_420);
    let x_432 : vec4<f32> = u_xlat5;
    let x_434 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_432.x, x_432.z, x_432.w));
    u_xlat6 = x_434;
    let x_435 : vec4<f32> = u_xlat5;
    let x_438 : vec3<f32> = (vec3<f32>(x_435.x, x_435.z, x_435.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_439 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_438.x, x_439.y, x_438.y, x_438.z);
    let x_445 : vec4<f32> = u_xlat0;
    let x_447 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_445.x, x_445.z, x_445.w));
    u_xlat7 = x_447;
    let x_448 : vec4<f32> = u_xlat5;
    let x_451 : vec3<f32> = (vec3<f32>(x_448.x, x_448.z, x_448.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_452 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_451.x, x_452.y, x_451.y, x_451.z);
    let x_457 : vec4<f32> = u_xlat0;
    let x_459 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_457.x, x_457.z, x_457.w));
    u_xlat5 = x_459;
    u_xlat4.w = 1.0f;
    let x_461 : vec4<f32> = u_xlat6;
    let x_462 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_461, x_462);
    let x_465 : vec4<f32> = u_xlat7;
    let x_466 : vec4<f32> = u_xlat4;
    u_xlat6.y = dot(x_465, x_466);
    let x_469 : vec4<f32> = u_xlat5;
    let x_470 : vec4<f32> = u_xlat4;
    u_xlat6.z = dot(x_469, x_470);
  } else {
    u_xlat4.w = 1.0f;
    let x_476 : vec4<f32> = x_71.unity_SHAr;
    let x_477 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_476, x_477);
    let x_481 : vec4<f32> = x_71.unity_SHAg;
    let x_482 : vec4<f32> = u_xlat4;
    u_xlat6.y = dot(x_481, x_482);
    let x_486 : vec4<f32> = x_71.unity_SHAb;
    let x_487 : vec4<f32> = u_xlat4;
    u_xlat6.z = dot(x_486, x_487);
  }
  let x_490 : vec4<f32> = u_xlat6;
  let x_494 : vec3<f32> = vs_TEXCOORD6;
  let x_495 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + x_494);
  let x_496 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_495.x, x_496.y, x_495.y, x_495.z);
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = max(vec3<f32>(x_498.x, x_498.z, x_498.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_502.y, x_501.y, x_501.z);
  let x_504 : f32 = u_xlat3;
  let x_506 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = (vec3<f32>(x_504, x_504, x_504) * vec3<f32>(x_506.x, x_506.z, x_506.w));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_508.z);
  let x_511 : vec4<f32> = u_xlat2;
  let x_514 : vec4<f32> = x_71.x_Color;
  let x_519 : vec3<f32> = ((vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_514.x, x_514.y, x_514.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec2<f32> = u_xlat8;
  let x_524 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = ((vec3<f32>(x_522.x, x_522.x, x_522.x) * vec3<f32>(x_524.x, x_524.y, x_524.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_530 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : f32 = u_xlat8.x;
  u_xlat8.x = ((-(x_533) * 0.959999979f) + 0.959999979f);
  let x_539 : vec2<f32> = u_xlat8;
  let x_541 : vec3<f32> = u_xlat9;
  u_xlat1 = (vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541);
  let x_544 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_549 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : vec3<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = u_xlat11;
  let x_557 : vec3<f32> = ((x_552 * vec3<f32>(x_553.x, x_553.z, x_553.w)) + x_556);
  let x_558 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat3;
  SV_Target0.w = x_561;
  let x_563 : vec3<f32> = u_xlat1;
  let x_564 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

