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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_212 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_80);
  u_xlat4 = vec2<f32>(x_81.x, x_81.w);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_89);
  u_xlat5 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_95 : f32 = u_xlat5.z;
  let x_98 : f32 = u_xlat5.x;
  u_xlat5.x = (x_95 * x_98);
  let x_101 : vec3<f32> = u_xlat5;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat25;
  u_xlat25 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat25;
  u_xlat25 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat25;
  u_xlat5.z = sqrt(x_122);
  let x_126 : vec3<f32> = vs_TEXCOORD4;
  let x_130 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_134 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_136 : vec3<f32> = vs_TEXCOORD4;
  let x_139 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136.x, x_136.x, x_136.x)) + x_139);
  let x_143 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_145 : vec3<f32> = vs_TEXCOORD4;
  let x_148 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.z, x_145.z, x_145.z)) + x_148);
  let x_150 : vec3<f32> = u_xlat6;
  let x_153 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_150 + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_161 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_161 == 1.0f);
  let x_163 : bool = u_xlatb25;
  if (x_163) {
    let x_168 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_168 == 1.0f);
    let x_172 : vec3<f32> = vs_TEXCOORD4;
    let x_176 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_178 : vec3<f32> = (vec3<f32>(x_172.y, x_172.y, x_172.y) * vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_182 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_184 : vec3<f32> = vs_TEXCOORD4;
    let x_187 : vec4<f32> = u_xlat7;
    let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.x, x_184.x)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_193 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_195 : vec3<f32> = vs_TEXCOORD4;
    let x_198 : vec4<f32> = u_xlat7;
    let x_200 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195.z, x_195.z, x_195.z)) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : vec4<f32> = u_xlat7;
    let x_206 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_208 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) + vec3<f32>(x_206.x, x_206.y, x_206.z));
    let x_209 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : bool = u_xlatb25;
    if (x_211) {
      let x_215 : vec4<f32> = u_xlat7;
      x_212 = vec3<f32>(x_215.x, x_215.y, x_215.z);
    } else {
      let x_218 : vec3<f32> = vs_TEXCOORD4;
      x_212 = x_218;
    }
    let x_219 : vec3<f32> = x_212;
    let x_220 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat7;
    let x_226 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_228 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + -(x_226));
    let x_229 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_231 : vec4<f32> = u_xlat7;
    let x_235 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_236 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * x_235);
    let x_237 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_237.x, x_236.x, x_236.y, x_236.z);
    let x_240 : f32 = u_xlat7.y;
    u_xlat25 = ((x_240 * 0.25f) + 0.75f);
    let x_247 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_247 * 0.5f) + 0.75f);
    let x_251 : f32 = u_xlat25;
    let x_252 : f32 = u_xlat26;
    u_xlat7.x = max(x_251, x_252);
    let x_263 : vec4<f32> = u_xlat7;
    let x_265 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_263.x, x_263.z, x_263.w));
    u_xlat7 = x_265;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_272 : vec4<f32> = u_xlat7;
  let x_274 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_272, x_274);
  let x_276 : f32 = u_xlat25;
  u_xlat25 = clamp(x_276, 0.0f, 1.0f);
  let x_279 : vec3<f32> = u_xlat6;
  let x_280 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_279, x_280);
  let x_287 : f32 = u_xlat26;
  let x_289 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_287, x_287));
  u_xlat26 = x_289.x;
  let x_300 : vec3<f32> = u_xlat6;
  let x_301 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_300);
  u_xlat27 = x_301.w;
  let x_303 : f32 = u_xlat26;
  let x_304 : f32 = u_xlat27;
  u_xlat26 = (x_303 * x_304);
  let x_306 : f32 = u_xlat25;
  let x_307 : f32 = u_xlat26;
  u_xlat25 = (x_306 * x_307);
  let x_310 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_310, x_311);
  let x_315 : vec3<f32> = vs_TEXCOORD2;
  let x_316 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_315, x_316);
  let x_320 : vec3<f32> = vs_TEXCOORD3;
  let x_321 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_320, x_321);
  let x_324 : vec3<f32> = u_xlat6;
  let x_325 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_324, x_325);
  let x_327 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_327);
  let x_329 : f32 = u_xlat26;
  let x_331 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_329, x_329, x_329) * x_331);
  let x_333 : f32 = u_xlat25;
  let x_337 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec3<f32> = u_xlat3;
  let x_343 : vec3<f32> = (x_340 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_344 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec2<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat7;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.x, x_348.y, x_348.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat4.x;
  u_xlat25 = ((-(x_357) * 0.959999979f) + 0.959999979f);
  let x_362 : f32 = u_xlat25;
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_362, x_362, x_362) * x_364);
  let x_367 : f32 = u_xlat4.y;
  u_xlat25 = (-(x_367) + 1.0f);
  let x_370 : vec3<f32> = u_xlat0;
  let x_371 : f32 = u_xlat24;
  let x_374 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_370 * vec3<f32>(x_371, x_371, x_371)) + x_374);
  let x_376 : vec3<f32> = u_xlat0;
  let x_377 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_376, x_377);
  let x_379 : f32 = u_xlat24;
  u_xlat24 = max(x_379, 0.001f);
  let x_382 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_382);
  let x_384 : f32 = u_xlat24;
  let x_386 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_384, x_384, x_384) * x_386);
  let x_388 : vec3<f32> = u_xlat5;
  let x_389 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_388, x_389);
  let x_391 : vec3<f32> = u_xlat5;
  let x_392 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_391, x_392);
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : vec3<f32> = u_xlat5;
  let x_401 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_400, x_401);
  let x_403 : f32 = u_xlat10;
  u_xlat10 = clamp(x_403, 0.0f, 1.0f);
  let x_405 : vec3<f32> = u_xlat1;
  let x_406 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_405, x_406);
  let x_410 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_410, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat0.x;
  let x_417 : f32 = u_xlat0.x;
  u_xlat8.x = (x_415 * x_417);
  let x_420 : vec3<f32> = u_xlat8;
  let x_422 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_420.x, x_420.x), vec2<f32>(x_422, x_422));
  let x_427 : f32 = u_xlat8.x;
  u_xlat8.x = (x_427 + -0.5f);
  let x_433 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_433) + 1.0f);
  let x_436 : f32 = u_xlat16;
  let x_437 : f32 = u_xlat16;
  u_xlat1.x = (x_436 * x_437);
  let x_441 : f32 = u_xlat1.x;
  let x_443 : f32 = u_xlat1.x;
  u_xlat1.x = (x_441 * x_443);
  let x_446 : f32 = u_xlat16;
  let x_448 : f32 = u_xlat1.x;
  u_xlat16 = (x_446 * x_448);
  let x_451 : f32 = u_xlat8.x;
  let x_452 : f32 = u_xlat16;
  u_xlat16 = ((x_451 * x_452) + 1.0f);
  let x_455 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_455)) + 1.0f);
  let x_462 : f32 = u_xlat1.x;
  let x_464 : f32 = u_xlat1.x;
  u_xlat9 = (x_462 * x_464);
  let x_466 : f32 = u_xlat9;
  let x_467 : f32 = u_xlat9;
  u_xlat9 = (x_466 * x_467);
  let x_470 : f32 = u_xlat1.x;
  let x_471 : f32 = u_xlat9;
  u_xlat1.x = (x_470 * x_471);
  let x_475 : f32 = u_xlat8.x;
  let x_477 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_475 * x_477) + 1.0f);
  let x_482 : f32 = u_xlat8.x;
  let x_483 : f32 = u_xlat16;
  u_xlat8.x = (x_482 * x_483);
  let x_486 : f32 = u_xlat25;
  let x_487 : f32 = u_xlat25;
  u_xlat16 = (x_486 * x_487);
  let x_489 : f32 = u_xlat16;
  u_xlat16 = max(x_489, 0.002f);
  let x_492 : f32 = u_xlat16;
  u_xlat1.x = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat24;
  let x_499 : f32 = u_xlat1.x;
  let x_501 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_496) * x_499) + x_501);
  let x_504 : f32 = u_xlat2.x;
  let x_506 : f32 = u_xlat1.x;
  let x_508 : f32 = u_xlat16;
  u_xlat1.x = ((x_504 * x_506) + x_508);
  let x_511 : f32 = u_xlat24;
  let x_514 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_511) * x_514);
  let x_517 : f32 = u_xlat2.x;
  let x_518 : f32 = u_xlat9;
  let x_520 : f32 = u_xlat24;
  u_xlat24 = ((x_517 * x_518) + x_520);
  let x_522 : f32 = u_xlat24;
  u_xlat24 = (x_522 + 0.00001f);
  let x_525 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_525);
  let x_527 : f32 = u_xlat16;
  let x_528 : f32 = u_xlat16;
  u_xlat16 = (x_527 * x_528);
  let x_530 : f32 = u_xlat10;
  let x_531 : f32 = u_xlat16;
  let x_533 : f32 = u_xlat10;
  u_xlat1.x = ((x_530 * x_531) + -(x_533));
  let x_538 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat10;
  u_xlat1.x = ((x_538 * x_539) + 1.0f);
  let x_543 : f32 = u_xlat16;
  u_xlat16 = (x_543 * 0.318309873f);
  let x_547 : f32 = u_xlat1.x;
  let x_549 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_547 * x_549) + 0.0000001f);
  let x_554 : f32 = u_xlat16;
  let x_556 : f32 = u_xlat1.x;
  u_xlat16 = (x_554 / x_556);
  let x_558 : f32 = u_xlat16;
  let x_559 : f32 = u_xlat24;
  u_xlat8.y = (x_558 * x_559);
  let x_562 : vec3<f32> = u_xlat2;
  let x_564 : vec3<f32> = u_xlat8;
  let x_566 : vec2<f32> = (vec2<f32>(x_562.x, x_562.x) * vec2<f32>(x_564.x, x_564.y));
  let x_567 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_566.x, x_566.y, x_567.z);
  let x_570 : f32 = u_xlat8.y;
  u_xlat16 = (x_570 * 3.141592741f);
  let x_573 : f32 = u_xlat16;
  u_xlat16 = max(x_573, 0.0f);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat24 = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_581 : f32 = u_xlat24;
  u_xlatb24 = !((x_581 == 0.0f));
  let x_583 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_583);
  let x_585 : f32 = u_xlat24;
  let x_586 : f32 = u_xlat16;
  u_xlat16 = (x_585 * x_586);
  let x_588 : vec3<f32> = u_xlat8;
  let x_590 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_588.x, x_588.x, x_588.x) * x_590);
  let x_592 : vec3<f32> = u_xlat6;
  let x_593 : f32 = u_xlat16;
  u_xlat8 = (x_592 * vec3<f32>(x_593, x_593, x_593));
  let x_597 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_597) + 1.0f);
  let x_602 : f32 = u_xlat0.x;
  let x_604 : f32 = u_xlat0.x;
  u_xlat25 = (x_602 * x_604);
  let x_606 : f32 = u_xlat25;
  let x_607 : f32 = u_xlat25;
  u_xlat25 = (x_606 * x_607);
  let x_610 : f32 = u_xlat0.x;
  let x_611 : f32 = u_xlat25;
  u_xlat0.x = (x_610 * x_611);
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat2 = (-(vec3<f32>(x_614.x, x_614.y, x_614.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_619 : vec3<f32> = u_xlat2;
  let x_620 : vec3<f32> = u_xlat0;
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_619 * vec3<f32>(x_620.x, x_620.x, x_620.x)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec3<f32> = u_xlat8;
  let x_627 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_626 * x_627);
  let x_631 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = u_xlat1;
  let x_634 : vec3<f32> = u_xlat0;
  let x_635 : vec3<f32> = ((x_631 * x_632) + x_634);
  let x_636 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

