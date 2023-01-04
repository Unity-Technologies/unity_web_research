struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat20 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_171 : vec3<f32>;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat2;
  let x_58 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_54 * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_62 : vec3<f32> = u_xlat2;
  let x_65 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_62 * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_69 : vec3<f32> = vs_TEXCOORD2;
  let x_74 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_76 : vec2<f32> = (vec2<f32>(x_69.y, x_69.y) * vec2<f32>(x_74.x, x_74.y));
  let x_77 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_76.x, x_76.y, x_77.z);
  let x_80 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_82 : vec3<f32> = vs_TEXCOORD2;
  let x_85 : vec3<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_80.x, x_80.y) * vec2<f32>(x_82.x, x_82.x)) + vec2<f32>(x_85.x, x_85.y));
  let x_88 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_87.x, x_87.y, x_88.z);
  let x_92 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_94 : vec3<f32> = vs_TEXCOORD2;
  let x_97 : vec3<f32> = u_xlat4;
  let x_99 : vec2<f32> = ((vec2<f32>(x_92.x, x_92.y) * vec2<f32>(x_94.z, x_94.z)) + vec2<f32>(x_97.x, x_97.y));
  let x_100 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_108 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) + vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_118 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_118 == 1.0f);
  let x_121 : bool = u_xlatb19;
  if (x_121) {
    let x_126 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_126 == 1.0f);
    let x_130 : vec3<f32> = vs_TEXCOORD2;
    let x_134 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_136 : vec3<f32> = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
    let x_137 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
    let x_140 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_142 : vec3<f32> = vs_TEXCOORD2;
    let x_145 : vec4<f32> = u_xlat5;
    let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
    let x_148 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
    let x_151 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_153 : vec3<f32> = vs_TEXCOORD2;
    let x_156 : vec4<f32> = u_xlat5;
    let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
    let x_159 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat5;
    let x_164 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_166 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : bool = u_xlatb19;
    if (x_169) {
      let x_174 : vec4<f32> = u_xlat5;
      x_171 = vec3<f32>(x_174.x, x_174.y, x_174.z);
    } else {
      let x_177 : vec3<f32> = vs_TEXCOORD2;
      x_171 = x_177;
    }
    let x_178 : vec3<f32> = x_171;
    let x_179 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_181 : vec4<f32> = u_xlat5;
    let x_185 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(x_185));
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat5;
    let x_194 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_195 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) * x_194);
    let x_196 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
    let x_200 : f32 = u_xlat5.y;
    u_xlat19 = ((x_200 * 0.25f) + 0.75f);
    let x_208 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_208 * 0.5f) + 0.75f);
    let x_212 : f32 = u_xlat19;
    let x_213 : f32 = u_xlat20;
    u_xlat5.x = max(x_212, x_213);
    let x_224 : vec4<f32> = u_xlat5;
    let x_226 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_224.x, x_224.z, x_224.w));
    u_xlat5 = x_226;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_233, x_235);
  let x_237 : f32 = u_xlat19;
  u_xlat19 = clamp(x_237, 0.0f, 1.0f);
  let x_245 : vec3<f32> = u_xlat4;
  let x_247 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_245.x, x_245.y));
  u_xlat20 = x_247.w;
  let x_249 : f32 = u_xlat19;
  let x_250 : f32 = u_xlat20;
  u_xlat19 = (x_249 * x_250);
  let x_252 : f32 = u_xlat19;
  let x_256 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_261 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_260, x_261);
  let x_263 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_263);
  let x_265 : f32 = u_xlat19;
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : vec3<f32> = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec3<f32> = u_xlat2;
  let x_272 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_271 * vec3<f32>(x_272.x, x_272.y, x_272.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_280 : f32 = x_18.x_Metallic;
  let x_282 : f32 = x_18.x_Metallic;
  let x_284 : f32 = x_18.x_Metallic;
  let x_285 : vec3<f32> = vec3<f32>(x_280, x_282, x_284);
  let x_290 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * x_290) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_296 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_296) * 0.959999979f) + 0.959999979f);
  let x_301 : f32 = u_xlat19;
  let x_303 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_301, x_301, x_301) * x_303);
  let x_307 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_307) + 1.0f);
  let x_310 : vec3<f32> = u_xlat0;
  let x_311 : f32 = u_xlat18;
  let x_315 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_310 * vec3<f32>(x_311, x_311, x_311)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec3<f32> = u_xlat0;
  let x_319 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_318, x_319);
  let x_321 : f32 = u_xlat18;
  u_xlat18 = max(x_321, 0.001f);
  let x_324 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_324);
  let x_326 : f32 = u_xlat18;
  let x_328 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_326, x_326, x_326) * x_328);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), x_332);
  let x_334 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_342 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_342, 0.0f, 1.0f);
  let x_346 : vec4<f32> = u_xlat5;
  let x_348 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), x_348);
  let x_350 : f32 = u_xlat7;
  u_xlat7 = clamp(x_350, 0.0f, 1.0f);
  let x_353 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_355 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), x_355);
  let x_359 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_359, 0.0f, 1.0f);
  let x_364 : f32 = u_xlat0.x;
  let x_366 : f32 = u_xlat0.x;
  u_xlat6.x = (x_364 * x_366);
  let x_369 : vec3<f32> = u_xlat6;
  let x_371 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_369.x, x_369.x), vec2<f32>(x_371, x_371));
  let x_376 : f32 = u_xlat6.x;
  u_xlat6.x = (x_376 + -0.5f);
  let x_382 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_382) + 1.0f);
  let x_386 : f32 = u_xlat12;
  let x_387 : f32 = u_xlat12;
  u_xlat13 = (x_386 * x_387);
  let x_389 : f32 = u_xlat13;
  let x_390 : f32 = u_xlat13;
  u_xlat13 = (x_389 * x_390);
  let x_392 : f32 = u_xlat12;
  let x_393 : f32 = u_xlat13;
  u_xlat12 = (x_392 * x_393);
  let x_396 : f32 = u_xlat6.x;
  let x_397 : f32 = u_xlat12;
  u_xlat12 = ((x_396 * x_397) + 1.0f);
  let x_400 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_400)) + 1.0f);
  let x_404 : f32 = u_xlat13;
  let x_405 : f32 = u_xlat13;
  u_xlat20 = (x_404 * x_405);
  let x_407 : f32 = u_xlat20;
  let x_408 : f32 = u_xlat20;
  u_xlat20 = (x_407 * x_408);
  let x_410 : f32 = u_xlat13;
  let x_411 : f32 = u_xlat20;
  u_xlat13 = (x_410 * x_411);
  let x_414 : f32 = u_xlat6.x;
  let x_415 : f32 = u_xlat13;
  u_xlat6.x = ((x_414 * x_415) + 1.0f);
  let x_420 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat12;
  u_xlat6.x = (x_420 * x_421);
  let x_424 : f32 = u_xlat19;
  let x_425 : f32 = u_xlat19;
  u_xlat12 = (x_424 * x_425);
  let x_427 : f32 = u_xlat12;
  u_xlat12 = max(x_427, 0.002f);
  let x_430 : f32 = u_xlat12;
  u_xlat13 = (-(x_430) + 1.0f);
  let x_433 : f32 = u_xlat18;
  let x_435 : f32 = u_xlat13;
  let x_437 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_433) * x_435) + x_437);
  let x_440 : f32 = u_xlat1.x;
  let x_441 : f32 = u_xlat13;
  let x_443 : f32 = u_xlat12;
  u_xlat13 = ((x_440 * x_441) + x_443);
  let x_445 : f32 = u_xlat18;
  let x_447 : f32 = u_xlat13;
  u_xlat18 = (abs(x_445) * x_447);
  let x_450 : f32 = u_xlat1.x;
  let x_451 : f32 = u_xlat19;
  let x_453 : f32 = u_xlat18;
  u_xlat18 = ((x_450 * x_451) + x_453);
  let x_455 : f32 = u_xlat18;
  u_xlat18 = (x_455 + 0.00001f);
  let x_458 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_458);
  let x_460 : f32 = u_xlat12;
  let x_461 : f32 = u_xlat12;
  u_xlat12 = (x_460 * x_461);
  let x_463 : f32 = u_xlat7;
  let x_464 : f32 = u_xlat12;
  let x_466 : f32 = u_xlat7;
  u_xlat13 = ((x_463 * x_464) + -(x_466));
  let x_469 : f32 = u_xlat13;
  let x_470 : f32 = u_xlat7;
  u_xlat7 = ((x_469 * x_470) + 1.0f);
  let x_473 : f32 = u_xlat12;
  u_xlat12 = (x_473 * 0.318309873f);
  let x_476 : f32 = u_xlat7;
  let x_477 : f32 = u_xlat7;
  u_xlat7 = ((x_476 * x_477) + 0.0000001f);
  let x_481 : f32 = u_xlat12;
  let x_482 : f32 = u_xlat7;
  u_xlat12 = (x_481 / x_482);
  let x_484 : f32 = u_xlat12;
  let x_485 : f32 = u_xlat18;
  u_xlat6.y = (x_484 * x_485);
  let x_488 : vec3<f32> = u_xlat1;
  let x_490 : vec3<f32> = u_xlat6;
  let x_492 : vec2<f32> = (vec2<f32>(x_488.x, x_488.x) * vec2<f32>(x_490.x, x_490.y));
  let x_493 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_492.x, x_492.y, x_493.z);
  let x_496 : f32 = u_xlat6.y;
  u_xlat12 = (x_496 * 3.141592741f);
  let x_499 : f32 = u_xlat12;
  u_xlat12 = max(x_499, 0.0f);
  let x_501 : vec3<f32> = u_xlat2;
  let x_502 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_501, x_502);
  let x_505 : f32 = u_xlat18;
  u_xlatb18 = !((x_505 == 0.0f));
  let x_507 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_507);
  let x_509 : f32 = u_xlat18;
  let x_510 : f32 = u_xlat12;
  u_xlat12 = (x_509 * x_510);
  let x_512 : vec3<f32> = u_xlat6;
  let x_514 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_512.x, x_512.x, x_512.x) * x_514);
  let x_516 : vec3<f32> = u_xlat4;
  let x_517 : f32 = u_xlat12;
  u_xlat6 = (x_516 * vec3<f32>(x_517, x_517, x_517));
  let x_521 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_521) + 1.0f);
  let x_526 : f32 = u_xlat0.x;
  let x_528 : f32 = u_xlat0.x;
  u_xlat19 = (x_526 * x_528);
  let x_530 : f32 = u_xlat19;
  let x_531 : f32 = u_xlat19;
  u_xlat19 = (x_530 * x_531);
  let x_534 : f32 = u_xlat0.x;
  let x_535 : f32 = u_xlat19;
  u_xlat0.x = (x_534 * x_535);
  let x_538 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_538) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_542 : vec3<f32> = u_xlat4;
  let x_543 : vec3<f32> = u_xlat0;
  let x_546 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_542 * vec3<f32>(x_543.x, x_543.x, x_543.x)) + x_546);
  let x_548 : vec3<f32> = u_xlat6;
  let x_549 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_548 * x_549);
  let x_553 : vec3<f32> = u_xlat3;
  let x_554 : vec3<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat0;
  let x_557 : vec3<f32> = ((x_553 * x_554) + x_556);
  let x_558 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

