struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlatb21 : bool;
  var u_xlat4 : vec4<f32>;
  var x_205 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = u_xlat21;
  u_xlat24 = (-(x_131) + 1.0f);
  let x_139 : f32 = u_xlat1.w;
  let x_140 : f32 = u_xlat21;
  let x_142 : f32 = u_xlat24;
  SV_Target0.w = ((x_139 * x_140) + x_142);
  let x_151 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_151 == 1.0f);
  let x_153 : bool = u_xlatb21;
  if (x_153) {
    let x_158 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_158 == 1.0f);
    let x_163 : vec3<f32> = vs_TEXCOORD5;
    let x_167 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_169 : vec3<f32> = (vec3<f32>(x_163.y, x_163.y, x_163.y) * vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_174 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_176 : vec3<f32> = vs_TEXCOORD5;
    let x_179 : vec4<f32> = u_xlat4;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.x, x_176.x)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_185 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec3<f32> = vs_TEXCOORD5;
    let x_190 : vec4<f32> = u_xlat4;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.z, x_187.z, x_187.z)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat4;
    let x_199 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : bool = u_xlatb21;
    if (x_204) {
      let x_208 : vec4<f32> = u_xlat4;
      x_205 = vec3<f32>(x_208.x, x_208.y, x_208.z);
    } else {
      let x_211 : vec3<f32> = vs_TEXCOORD5;
      x_205 = x_211;
    }
    let x_212 : vec3<f32> = x_205;
    let x_213 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : vec4<f32> = u_xlat4;
    let x_220 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_222 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + -(x_220));
    let x_223 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_225 : vec4<f32> = u_xlat4;
    let x_228 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) * x_228);
    let x_230 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_230.x, x_229.x, x_229.y, x_229.z);
    let x_233 : f32 = u_xlat4.y;
    u_xlat21 = ((x_233 * 0.25f) + 0.75f);
    let x_241 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_241 * 0.5f) + 0.75f);
    let x_245 : f32 = u_xlat21;
    let x_246 : f32 = u_xlat22;
    u_xlat4.x = max(x_245, x_246);
    let x_257 : vec4<f32> = u_xlat4;
    let x_259 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_257.x, x_257.z, x_257.w));
    u_xlat4 = x_259;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_265 : vec4<f32> = u_xlat4;
  let x_267 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_265, x_267);
  let x_269 : f32 = u_xlat21;
  u_xlat21 = clamp(x_269, 0.0f, 1.0f);
  let x_272 : f32 = u_xlat21;
  let x_276 : vec4<f32> = x_32.x_LightColor0;
  let x_278 : vec3<f32> = (vec3<f32>(x_272, x_272, x_272) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_283 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_283) + 1.0f);
  let x_290 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_290;
  let x_294 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_294;
  let x_297 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_297;
  let x_300 : vec4<f32> = vs_TEXCOORD1;
  let x_303 : f32 = u_xlat23;
  let x_306 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_300.x, x_300.y, x_300.z)) * vec3<f32>(x_303, x_303, x_303)) + x_306);
  let x_308 : vec3<f32> = u_xlat6;
  let x_309 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_308, x_309);
  let x_311 : f32 = u_xlat22;
  u_xlat22 = max(x_311, 0.001f);
  let x_314 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_314);
  let x_316 : f32 = u_xlat22;
  let x_318 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_316, x_316, x_316) * x_318);
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), -(x_322));
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), x_327);
  let x_329 : f32 = u_xlat23;
  u_xlat23 = clamp(x_329, 0.0f, 1.0f);
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), x_333);
  let x_337 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_337, 0.0f, 1.0f);
  let x_341 : vec3<f32> = u_xlat5;
  let x_342 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_341, x_342);
  let x_344 : f32 = u_xlat9;
  u_xlat9 = clamp(x_344, 0.0f, 1.0f);
  let x_347 : f32 = u_xlat9;
  let x_348 : f32 = u_xlat9;
  u_xlat16 = (x_347 * x_348);
  let x_350 : f32 = u_xlat16;
  let x_352 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_350, x_350), vec2<f32>(x_352, x_352));
  let x_355 : f32 = u_xlat16;
  u_xlat16 = (x_355 + -0.5f);
  let x_358 : f32 = u_xlat23;
  u_xlat3.x = (-(x_358) + 1.0f);
  let x_364 : f32 = u_xlat3.x;
  let x_366 : f32 = u_xlat3.x;
  u_xlat10 = (x_364 * x_366);
  let x_368 : f32 = u_xlat10;
  let x_369 : f32 = u_xlat10;
  u_xlat10 = (x_368 * x_369);
  let x_372 : f32 = u_xlat3.x;
  let x_373 : f32 = u_xlat10;
  u_xlat3.x = (x_372 * x_373);
  let x_376 : f32 = u_xlat16;
  let x_378 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_376 * x_378) + 1.0f);
  let x_382 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_382)) + 1.0f);
  let x_387 : f32 = u_xlat10;
  let x_388 : f32 = u_xlat10;
  u_xlat17 = (x_387 * x_388);
  let x_390 : f32 = u_xlat17;
  let x_391 : f32 = u_xlat17;
  u_xlat17 = (x_390 * x_391);
  let x_393 : f32 = u_xlat10;
  let x_394 : f32 = u_xlat17;
  u_xlat10 = (x_393 * x_394);
  let x_396 : f32 = u_xlat16;
  let x_397 : f32 = u_xlat10;
  u_xlat16 = ((x_396 * x_397) + 1.0f);
  let x_400 : f32 = u_xlat16;
  let x_402 : f32 = u_xlat3.x;
  u_xlat16 = (x_400 * x_402);
  let x_404 : f32 = u_xlat23;
  let x_405 : f32 = u_xlat16;
  u_xlat16 = (x_404 * x_405);
  let x_407 : f32 = u_xlat21;
  let x_408 : f32 = u_xlat21;
  u_xlat21 = (x_407 * x_408);
  let x_410 : f32 = u_xlat21;
  u_xlat21 = max(x_410, 0.002f);
  let x_413 : f32 = u_xlat21;
  u_xlat3.x = (-(x_413) + 1.0f);
  let x_417 : f32 = u_xlat22;
  let x_420 : f32 = u_xlat3.x;
  let x_422 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_417) * x_420) + x_422);
  let x_424 : f32 = u_xlat23;
  let x_426 : f32 = u_xlat3.x;
  let x_428 : f32 = u_xlat21;
  u_xlat3.x = ((x_424 * x_426) + x_428);
  let x_431 : f32 = u_xlat22;
  let x_434 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_431) * x_434);
  let x_436 : f32 = u_xlat23;
  let x_437 : f32 = u_xlat10;
  let x_439 : f32 = u_xlat22;
  u_xlat22 = ((x_436 * x_437) + x_439);
  let x_441 : f32 = u_xlat22;
  u_xlat22 = (x_441 + 0.00001f);
  let x_444 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_444);
  let x_446 : f32 = u_xlat21;
  let x_447 : f32 = u_xlat21;
  u_xlat21 = (x_446 * x_447);
  let x_450 : f32 = u_xlat2.x;
  let x_451 : f32 = u_xlat21;
  let x_454 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_450 * x_451) + -(x_454));
  let x_459 : f32 = u_xlat3.x;
  let x_461 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_459 * x_461) + 1.0f);
  let x_465 : f32 = u_xlat21;
  u_xlat21 = (x_465 * 0.318309873f);
  let x_469 : f32 = u_xlat2.x;
  let x_471 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_469 * x_471) + 0.0000001f);
  let x_476 : f32 = u_xlat21;
  let x_478 : f32 = u_xlat2.x;
  u_xlat21 = (x_476 / x_478);
  let x_480 : f32 = u_xlat21;
  let x_481 : f32 = u_xlat22;
  u_xlat21 = (x_480 * x_481);
  let x_483 : f32 = u_xlat23;
  let x_484 : f32 = u_xlat21;
  u_xlat21 = (x_483 * x_484);
  let x_486 : f32 = u_xlat21;
  u_xlat21 = (x_486 * 3.141592741f);
  let x_489 : f32 = u_xlat21;
  u_xlat21 = max(x_489, 0.0f);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_491.x, x_491.y, x_491.z), vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_497 : f32 = u_xlat22;
  u_xlatb22 = !((x_497 == 0.0f));
  let x_499 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_499);
  let x_501 : f32 = u_xlat21;
  let x_502 : f32 = u_xlat22;
  u_xlat21 = (x_501 * x_502);
  let x_504 : f32 = u_xlat16;
  let x_506 : vec4<f32> = u_xlat4;
  let x_508 : vec3<f32> = (vec3<f32>(x_504, x_504, x_504) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_508.z);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_513, x_513, x_513));
  let x_516 : f32 = u_xlat9;
  u_xlat21 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat21;
  u_xlat22 = (x_519 * x_520);
  let x_522 : f32 = u_xlat22;
  let x_523 : f32 = u_xlat22;
  u_xlat22 = (x_522 * x_523);
  let x_525 : f32 = u_xlat21;
  let x_526 : f32 = u_xlat22;
  u_xlat21 = (x_525 * x_526);
  let x_528 : vec4<f32> = u_xlat0;
  let x_532 : vec3<f32> = (-(vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : f32 = u_xlat21;
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_537, x_537, x_537)) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec3<f32> = u_xlat3;
  let x_548 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) * x_547);
  let x_549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat2;
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553.x, x_553.z, x_553.w)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

