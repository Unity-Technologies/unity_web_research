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
  unity_WorldToLight : mat4x4<f32>,
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

@group(0) @binding(5) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat3 : vec4<f32>;
  var x_204 : vec3<f32>;
  var u_xlat14 : f32;
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
  let x_51 : f32 = u_xlat19;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  let x_58 : vec2<f32> = (-(vec2<f32>(x_51, x_51)) + x_57);
  let x_59 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_58.x, x_58.y, x_59.z);
  let x_71 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_71.x, x_71.y));
  u_xlat19 = x_73.x;
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_80);
  u_xlat2.x = x_81.z;
  let x_85 : f32 = u_xlat19;
  u_xlat19 = ((x_85 * -2.0f) + 1.0f);
  let x_90 : f32 = u_xlat2.x;
  let x_92 : f32 = u_xlat19;
  u_xlat19 = (-(x_90) + x_92);
  let x_97 : f32 = u_xlat19;
  u_xlatb19 = (x_97 < 0.0f);
  let x_99 : bool = u_xlatb19;
  if (((select(0i, 1i, x_99) * -1i) != 0i)) {
    discard;
  }
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_113 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_115 : vec2<f32> = (vec2<f32>(x_108.y, x_108.y) * vec2<f32>(x_113.x, x_113.y));
  let x_116 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_119 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_124 : vec3<f32> = u_xlat2;
  let x_126 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_121.x, x_121.x)) + vec2<f32>(x_124.x, x_124.y));
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_126.x, x_126.y, x_127.z);
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = u_xlat2;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_133.z, x_133.z)) + vec2<f32>(x_136.x, x_136.y));
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_138.x, x_138.y, x_139.z);
  let x_141 : vec3<f32> = u_xlat2;
  let x_145 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) + vec2<f32>(x_145.x, x_145.y));
  let x_148 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_153 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_153 == 1.0f);
  let x_155 : bool = u_xlatb19;
  if (x_155) {
    let x_160 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_160 == 1.0f);
    let x_164 : vec3<f32> = vs_TEXCOORD2;
    let x_168 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_170 : vec3<f32> = (vec3<f32>(x_164.y, x_164.y, x_164.y) * vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_176 : vec3<f32> = vs_TEXCOORD2;
    let x_179 : vec4<f32> = u_xlat3;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.x, x_176.x)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_185 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec3<f32> = vs_TEXCOORD2;
    let x_190 : vec4<f32> = u_xlat3;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.z, x_187.z, x_187.z)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat3;
    let x_198 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_200 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : bool = u_xlatb19;
    if (x_203) {
      let x_207 : vec4<f32> = u_xlat3;
      x_204 = vec3<f32>(x_207.x, x_207.y, x_207.z);
    } else {
      let x_210 : vec3<f32> = vs_TEXCOORD2;
      x_204 = x_210;
    }
    let x_211 : vec3<f32> = x_204;
    let x_212 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat3;
    let x_218 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_220 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + -(x_218));
    let x_221 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat3;
    let x_227 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_228 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) * x_227);
    let x_229 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_229.x, x_228.x, x_228.y, x_228.z);
    let x_232 : f32 = u_xlat3.y;
    u_xlat19 = ((x_232 * 0.25f) + 0.75f);
    let x_239 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat14 = ((x_239 * 0.5f) + 0.75f);
    let x_243 : f32 = u_xlat19;
    let x_244 : f32 = u_xlat14;
    u_xlat3.x = max(x_243, x_244);
    let x_255 : vec4<f32> = u_xlat3;
    let x_257 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_255.x, x_255.z, x_255.w));
    u_xlat3 = x_257;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_264, x_266);
  let x_268 : f32 = u_xlat19;
  u_xlat19 = clamp(x_268, 0.0f, 1.0f);
  let x_275 : vec3<f32> = u_xlat2;
  let x_277 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_275.x, x_275.y));
  u_xlat2.x = x_277.w;
  let x_280 : f32 = u_xlat19;
  let x_282 : f32 = u_xlat2.x;
  u_xlat19 = (x_280 * x_282);
  let x_284 : f32 = u_xlat19;
  let x_288 : vec4<f32> = x_18.x_LightColor0;
  u_xlat2 = (vec3<f32>(x_284, x_284, x_284) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_292, x_293);
  let x_295 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_295);
  let x_297 : f32 = u_xlat19;
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_300 : vec3<f32> = (vec3<f32>(x_297, x_297, x_297) * x_299);
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_306 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_313 : f32 = x_18.x_Metallic;
  let x_315 : f32 = x_18.x_Metallic;
  let x_317 : f32 = x_18.x_Metallic;
  let x_318 : vec3<f32> = vec3<f32>(x_313, x_315, x_317);
  let x_323 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * x_323) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_329 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_335 : f32 = u_xlat19;
  let x_338 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_343 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_343) + 1.0f);
  let x_346 : vec3<f32> = u_xlat0;
  let x_347 : f32 = u_xlat18;
  let x_351 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_346 * vec3<f32>(x_347, x_347, x_347)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat0;
  let x_355 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_354, x_355);
  let x_357 : f32 = u_xlat18;
  u_xlat18 = max(x_357, 0.001f);
  let x_360 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_360);
  let x_362 : f32 = u_xlat18;
  let x_364 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_362, x_362, x_362) * x_364);
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), x_368);
  let x_370 : vec4<f32> = u_xlat3;
  let x_373 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_378 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_378, 0.0f, 1.0f);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), x_384);
  let x_386 : f32 = u_xlat7;
  u_xlat7 = clamp(x_386, 0.0f, 1.0f);
  let x_389 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), x_391);
  let x_395 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_395, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat0.x;
  let x_402 : f32 = u_xlat0.x;
  u_xlat6.x = (x_400 * x_402);
  let x_405 : vec3<f32> = u_xlat6;
  let x_407 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_405.x, x_405.x), vec2<f32>(x_407, x_407));
  let x_412 : f32 = u_xlat6.x;
  u_xlat6.x = (x_412 + -0.5f);
  let x_418 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_418) + 1.0f);
  let x_422 : f32 = u_xlat12;
  let x_423 : f32 = u_xlat12;
  u_xlat13 = (x_422 * x_423);
  let x_425 : f32 = u_xlat13;
  let x_426 : f32 = u_xlat13;
  u_xlat13 = (x_425 * x_426);
  let x_428 : f32 = u_xlat12;
  let x_429 : f32 = u_xlat13;
  u_xlat12 = (x_428 * x_429);
  let x_432 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat12;
  u_xlat12 = ((x_432 * x_433) + 1.0f);
  let x_436 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_436)) + 1.0f);
  let x_441 : f32 = u_xlat13;
  let x_442 : f32 = u_xlat13;
  u_xlat20 = (x_441 * x_442);
  let x_444 : f32 = u_xlat20;
  let x_445 : f32 = u_xlat20;
  u_xlat20 = (x_444 * x_445);
  let x_447 : f32 = u_xlat13;
  let x_448 : f32 = u_xlat20;
  u_xlat13 = (x_447 * x_448);
  let x_451 : f32 = u_xlat6.x;
  let x_452 : f32 = u_xlat13;
  u_xlat6.x = ((x_451 * x_452) + 1.0f);
  let x_457 : f32 = u_xlat6.x;
  let x_458 : f32 = u_xlat12;
  u_xlat6.x = (x_457 * x_458);
  let x_461 : f32 = u_xlat19;
  let x_462 : f32 = u_xlat19;
  u_xlat12 = (x_461 * x_462);
  let x_464 : f32 = u_xlat12;
  u_xlat12 = max(x_464, 0.002f);
  let x_467 : f32 = u_xlat12;
  u_xlat13 = (-(x_467) + 1.0f);
  let x_470 : f32 = u_xlat18;
  let x_472 : f32 = u_xlat13;
  let x_474 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_470) * x_472) + x_474);
  let x_477 : f32 = u_xlat1.x;
  let x_478 : f32 = u_xlat13;
  let x_480 : f32 = u_xlat12;
  u_xlat13 = ((x_477 * x_478) + x_480);
  let x_482 : f32 = u_xlat18;
  let x_484 : f32 = u_xlat13;
  u_xlat18 = (abs(x_482) * x_484);
  let x_487 : f32 = u_xlat1.x;
  let x_488 : f32 = u_xlat19;
  let x_490 : f32 = u_xlat18;
  u_xlat18 = ((x_487 * x_488) + x_490);
  let x_492 : f32 = u_xlat18;
  u_xlat18 = (x_492 + 0.00001f);
  let x_495 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_495);
  let x_497 : f32 = u_xlat12;
  let x_498 : f32 = u_xlat12;
  u_xlat12 = (x_497 * x_498);
  let x_500 : f32 = u_xlat7;
  let x_501 : f32 = u_xlat12;
  let x_503 : f32 = u_xlat7;
  u_xlat13 = ((x_500 * x_501) + -(x_503));
  let x_506 : f32 = u_xlat13;
  let x_507 : f32 = u_xlat7;
  u_xlat7 = ((x_506 * x_507) + 1.0f);
  let x_510 : f32 = u_xlat12;
  u_xlat12 = (x_510 * 0.318309873f);
  let x_513 : f32 = u_xlat7;
  let x_514 : f32 = u_xlat7;
  u_xlat7 = ((x_513 * x_514) + 0.0000001f);
  let x_518 : f32 = u_xlat12;
  let x_519 : f32 = u_xlat7;
  u_xlat12 = (x_518 / x_519);
  let x_521 : f32 = u_xlat12;
  let x_522 : f32 = u_xlat18;
  u_xlat6.y = (x_521 * x_522);
  let x_525 : vec3<f32> = u_xlat1;
  let x_527 : vec3<f32> = u_xlat6;
  let x_529 : vec2<f32> = (vec2<f32>(x_525.x, x_525.x) * vec2<f32>(x_527.x, x_527.y));
  let x_530 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_529.x, x_529.y, x_530.z);
  let x_533 : f32 = u_xlat6.y;
  u_xlat12 = (x_533 * 3.141592741f);
  let x_536 : f32 = u_xlat12;
  u_xlat12 = max(x_536, 0.0f);
  let x_538 : vec3<f32> = u_xlat4;
  let x_539 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_538, x_539);
  let x_542 : f32 = u_xlat18;
  u_xlatb18 = !((x_542 == 0.0f));
  let x_544 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_544);
  let x_546 : f32 = u_xlat18;
  let x_547 : f32 = u_xlat12;
  u_xlat12 = (x_546 * x_547);
  let x_549 : vec3<f32> = u_xlat6;
  let x_551 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_549.x, x_549.x, x_549.x) * x_551);
  let x_553 : vec3<f32> = u_xlat2;
  let x_554 : f32 = u_xlat12;
  u_xlat6 = (x_553 * vec3<f32>(x_554, x_554, x_554));
  let x_558 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_558) + 1.0f);
  let x_563 : f32 = u_xlat0.x;
  let x_565 : f32 = u_xlat0.x;
  u_xlat19 = (x_563 * x_565);
  let x_567 : f32 = u_xlat19;
  let x_568 : f32 = u_xlat19;
  u_xlat19 = (x_567 * x_568);
  let x_571 : f32 = u_xlat0.x;
  let x_572 : f32 = u_xlat19;
  u_xlat0.x = (x_571 * x_572);
  let x_575 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_575) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_579 : vec3<f32> = u_xlat2;
  let x_580 : vec3<f32> = u_xlat0;
  let x_583 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_579 * vec3<f32>(x_580.x, x_580.x, x_580.x)) + x_583);
  let x_585 : vec3<f32> = u_xlat6;
  let x_586 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_585 * x_586);
  let x_588 : vec3<f32> = u_xlat5;
  let x_589 : vec3<f32> = u_xlat1;
  let x_591 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_588 * x_589) + x_591);
  let x_594 : f32 = vs_TEXCOORD6;
  let x_596 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_594 / x_596);
  let x_598 : f32 = u_xlat18;
  u_xlat18 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat18;
  let x_603 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_601 * x_603);
  let x_605 : f32 = u_xlat18;
  u_xlat18 = max(x_605, 0.0f);
  let x_607 : f32 = u_xlat18;
  let x_610 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_607 * x_610);
  let x_612 : f32 = u_xlat18;
  let x_613 : f32 = u_xlat18;
  u_xlat18 = (x_612 * -(x_613));
  let x_616 : f32 = u_xlat18;
  u_xlat18 = exp2(x_616);
  let x_620 : vec3<f32> = u_xlat0;
  let x_621 : f32 = u_xlat18;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

