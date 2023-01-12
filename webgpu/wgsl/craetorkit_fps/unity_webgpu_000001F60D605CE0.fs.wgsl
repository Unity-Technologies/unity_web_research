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

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(8) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_198 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_110 : vec3<f32> = vs_TEXCOORD4;
  let x_116 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat17 = (vec2<f32>(x_110.y, x_110.y) * vec2<f32>(x_116.x, x_116.y));
  let x_120 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_122 : vec3<f32> = vs_TEXCOORD4;
  let x_125 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD4;
  let x_134 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_131.z, x_131.z)) + x_134);
  let x_136 : vec2<f32> = u_xlat17;
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat17 = (x_136 + vec2<f32>(x_139.x, x_139.y));
  let x_147 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_147 == 1.0f);
  let x_149 : bool = u_xlatb22;
  if (x_149) {
    let x_154 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_154 == 1.0f);
    let x_158 : vec3<f32> = vs_TEXCOORD4;
    let x_162 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_164 : vec3<f32> = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_168 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_170 : vec3<f32> = vs_TEXCOORD4;
    let x_173 : vec4<f32> = u_xlat5;
    let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_179 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_181 : vec3<f32> = vs_TEXCOORD4;
    let x_184 : vec4<f32> = u_xlat5;
    let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.z, x_181.z, x_181.z)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_189 : vec4<f32> = u_xlat5;
    let x_192 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_194 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_192.x, x_192.y, x_192.z));
    let x_195 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : bool = u_xlatb22;
    if (x_197) {
      let x_201 : vec4<f32> = u_xlat5;
      x_198 = vec3<f32>(x_201.x, x_201.y, x_201.z);
    } else {
      let x_204 : vec3<f32> = vs_TEXCOORD4;
      x_198 = x_204;
    }
    let x_205 : vec3<f32> = x_198;
    let x_206 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat5;
    let x_212 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_214 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) + -(x_212));
    let x_215 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat5;
    let x_221 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_222 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) * x_221);
    let x_223 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_223.x, x_222.x, x_222.y, x_222.z);
    let x_226 : f32 = u_xlat5.y;
    u_xlat22 = ((x_226 * 0.25f) + 0.75f);
    let x_233 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_233 * 0.5f) + 0.75f);
    let x_237 : f32 = u_xlat22;
    let x_238 : f32 = u_xlat23;
    u_xlat5.x = max(x_237, x_238);
    let x_249 : vec4<f32> = u_xlat5;
    let x_251 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_249.x, x_249.z, x_249.w));
    u_xlat5 = x_251;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_258 : vec4<f32> = u_xlat5;
  let x_260 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_258, x_260);
  let x_262 : f32 = u_xlat22;
  u_xlat22 = clamp(x_262, 0.0f, 1.0f);
  let x_270 : vec2<f32> = u_xlat17;
  let x_271 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_270);
  u_xlat23 = x_271.w;
  let x_273 : f32 = u_xlat22;
  let x_274 : f32 = u_xlat23;
  u_xlat22 = (x_273 * x_274);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_278 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_277, x_278);
  let x_282 : vec3<f32> = vs_TEXCOORD2;
  let x_283 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_282, x_283);
  let x_287 : vec3<f32> = vs_TEXCOORD3;
  let x_288 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_287, x_288);
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_296);
  let x_298 : f32 = u_xlat23;
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat22;
  let x_307 : vec4<f32> = x_18.x_LightColor0;
  let x_309 : vec3<f32> = (vec3<f32>(x_303, x_303, x_303) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_313 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_317 : vec3<f32> = u_xlat3;
  let x_319 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * x_319) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_325 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_325) * 0.959999979f) + 0.959999979f);
  let x_330 : f32 = u_xlat22;
  let x_332 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_335 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_335) + 1.0f);
  let x_338 : vec3<f32> = u_xlat0;
  let x_339 : f32 = u_xlat21;
  let x_343 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_338 * vec3<f32>(x_339, x_339, x_339)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec3<f32> = u_xlat0;
  let x_347 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_346, x_347);
  let x_349 : f32 = u_xlat21;
  u_xlat21 = max(x_349, 0.001f);
  let x_352 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat21;
  let x_356 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_358 : vec3<f32> = u_xlat4;
  let x_359 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_358, x_359);
  let x_361 : vec3<f32> = u_xlat4;
  let x_363 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_361, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_368 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_368, 0.0f, 1.0f);
  let x_372 : vec3<f32> = u_xlat4;
  let x_373 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_372, x_373);
  let x_375 : f32 = u_xlat8;
  u_xlat8 = clamp(x_375, 0.0f, 1.0f);
  let x_378 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_380 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), x_380);
  let x_384 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_384, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat0.x;
  let x_391 : f32 = u_xlat0.x;
  u_xlat7.x = (x_389 * x_391);
  let x_394 : vec3<f32> = u_xlat7;
  let x_396 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_394.x, x_394.x), vec2<f32>(x_396, x_396));
  let x_401 : f32 = u_xlat7.x;
  u_xlat7.x = (x_401 + -0.5f);
  let x_407 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_407) + 1.0f);
  let x_411 : f32 = u_xlat14;
  let x_412 : f32 = u_xlat14;
  u_xlat15 = (x_411 * x_412);
  let x_414 : f32 = u_xlat15;
  let x_415 : f32 = u_xlat15;
  u_xlat15 = (x_414 * x_415);
  let x_417 : f32 = u_xlat14;
  let x_418 : f32 = u_xlat15;
  u_xlat14 = (x_417 * x_418);
  let x_421 : f32 = u_xlat7.x;
  let x_422 : f32 = u_xlat14;
  u_xlat14 = ((x_421 * x_422) + 1.0f);
  let x_425 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_425)) + 1.0f);
  let x_429 : f32 = u_xlat15;
  let x_430 : f32 = u_xlat15;
  u_xlat23 = (x_429 * x_430);
  let x_432 : f32 = u_xlat23;
  let x_433 : f32 = u_xlat23;
  u_xlat23 = (x_432 * x_433);
  let x_435 : f32 = u_xlat15;
  let x_436 : f32 = u_xlat23;
  u_xlat15 = (x_435 * x_436);
  let x_439 : f32 = u_xlat7.x;
  let x_440 : f32 = u_xlat15;
  u_xlat7.x = ((x_439 * x_440) + 1.0f);
  let x_445 : f32 = u_xlat7.x;
  let x_446 : f32 = u_xlat14;
  u_xlat7.x = (x_445 * x_446);
  let x_449 : f32 = u_xlat22;
  let x_450 : f32 = u_xlat22;
  u_xlat14 = (x_449 * x_450);
  let x_452 : f32 = u_xlat14;
  u_xlat14 = max(x_452, 0.002f);
  let x_455 : f32 = u_xlat14;
  u_xlat15 = (-(x_455) + 1.0f);
  let x_458 : f32 = u_xlat21;
  let x_460 : f32 = u_xlat15;
  let x_462 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_458) * x_460) + x_462);
  let x_465 : f32 = u_xlat1.x;
  let x_466 : f32 = u_xlat15;
  let x_468 : f32 = u_xlat14;
  u_xlat15 = ((x_465 * x_466) + x_468);
  let x_470 : f32 = u_xlat21;
  let x_472 : f32 = u_xlat15;
  u_xlat21 = (abs(x_470) * x_472);
  let x_475 : f32 = u_xlat1.x;
  let x_476 : f32 = u_xlat22;
  let x_478 : f32 = u_xlat21;
  u_xlat21 = ((x_475 * x_476) + x_478);
  let x_480 : f32 = u_xlat21;
  u_xlat21 = (x_480 + 0.00001f);
  let x_483 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_483);
  let x_485 : f32 = u_xlat14;
  let x_486 : f32 = u_xlat14;
  u_xlat14 = (x_485 * x_486);
  let x_488 : f32 = u_xlat8;
  let x_489 : f32 = u_xlat14;
  let x_491 : f32 = u_xlat8;
  u_xlat15 = ((x_488 * x_489) + -(x_491));
  let x_494 : f32 = u_xlat15;
  let x_495 : f32 = u_xlat8;
  u_xlat8 = ((x_494 * x_495) + 1.0f);
  let x_498 : f32 = u_xlat14;
  u_xlat14 = (x_498 * 0.318309873f);
  let x_501 : f32 = u_xlat8;
  let x_502 : f32 = u_xlat8;
  u_xlat8 = ((x_501 * x_502) + 0.0000001f);
  let x_506 : f32 = u_xlat14;
  let x_507 : f32 = u_xlat8;
  u_xlat14 = (x_506 / x_507);
  let x_509 : f32 = u_xlat14;
  let x_510 : f32 = u_xlat21;
  u_xlat7.y = (x_509 * x_510);
  let x_513 : vec3<f32> = u_xlat1;
  let x_515 : vec3<f32> = u_xlat7;
  let x_517 : vec2<f32> = (vec2<f32>(x_513.x, x_513.x) * vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_517.x, x_517.y, x_518.z);
  let x_521 : f32 = u_xlat7.y;
  u_xlat14 = (x_521 * 3.141592741f);
  let x_524 : f32 = u_xlat14;
  u_xlat14 = max(x_524, 0.0f);
  let x_526 : vec3<f32> = u_xlat6;
  let x_527 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_526, x_527);
  let x_530 : f32 = u_xlat21;
  u_xlatb21 = !((x_530 == 0.0f));
  let x_532 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_532);
  let x_534 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat14;
  u_xlat14 = (x_534 * x_535);
  let x_537 : vec3<f32> = u_xlat7;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_537.x, x_537.x, x_537.x) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat5;
  let x_544 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_544, x_544, x_544));
  let x_548 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_548) + 1.0f);
  let x_553 : f32 = u_xlat0.x;
  let x_555 : f32 = u_xlat0.x;
  u_xlat22 = (x_553 * x_555);
  let x_557 : f32 = u_xlat22;
  let x_558 : f32 = u_xlat22;
  u_xlat22 = (x_557 * x_558);
  let x_561 : f32 = u_xlat0.x;
  let x_562 : f32 = u_xlat22;
  u_xlat0.x = (x_561 * x_562);
  let x_565 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_565) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_569 : vec3<f32> = u_xlat3;
  let x_570 : vec3<f32> = u_xlat0;
  let x_573 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x)) + x_573);
  let x_575 : vec3<f32> = u_xlat7;
  let x_576 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_575 * x_576);
  let x_580 : vec3<f32> = u_xlat2;
  let x_581 : vec3<f32> = u_xlat1;
  let x_583 : vec3<f32> = u_xlat0;
  let x_584 : vec3<f32> = ((x_580 * x_581) + x_583);
  let x_585 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
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

