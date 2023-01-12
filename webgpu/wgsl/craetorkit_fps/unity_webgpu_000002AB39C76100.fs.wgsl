struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  var x_206 : vec3<f32>;
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
    let x_168 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_170 : vec3<f32> = (vec3<f32>(x_163.y, x_163.y, x_163.y) * vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_175 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_177 : vec3<f32> = vs_TEXCOORD5;
    let x_180 : vec4<f32> = u_xlat4;
    let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.x, x_177.x)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_187 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_189 : vec3<f32> = vs_TEXCOORD5;
    let x_192 : vec4<f32> = u_xlat4;
    let x_194 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.z, x_189.z, x_189.z)) + vec3<f32>(x_192.x, x_192.y, x_192.z));
    let x_195 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat4;
    let x_200 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_202 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : bool = u_xlatb21;
    if (x_205) {
      let x_209 : vec4<f32> = u_xlat4;
      x_206 = vec3<f32>(x_209.x, x_209.y, x_209.z);
    } else {
      let x_212 : vec3<f32> = vs_TEXCOORD5;
      x_206 = x_212;
    }
    let x_213 : vec3<f32> = x_206;
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : vec4<f32> = u_xlat4;
    let x_221 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_223 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) + -(x_221));
    let x_224 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat4;
    let x_230 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_231 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * x_230);
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_231.x, x_231.y, x_231.z);
    let x_235 : f32 = u_xlat4.y;
    u_xlat21 = ((x_235 * 0.25f) + 0.75f);
    let x_243 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_243 * 0.5f) + 0.75f);
    let x_247 : f32 = u_xlat21;
    let x_248 : f32 = u_xlat22;
    u_xlat4.x = max(x_247, x_248);
    let x_259 : vec4<f32> = u_xlat4;
    let x_261 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_259.x, x_259.z, x_259.w));
    u_xlat4 = x_261;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_267, x_269);
  let x_271 : f32 = u_xlat21;
  u_xlat21 = clamp(x_271, 0.0f, 1.0f);
  let x_274 : f32 = u_xlat21;
  let x_278 : vec4<f32> = x_32.x_LightColor0;
  let x_280 : vec3<f32> = (vec3<f32>(x_274, x_274, x_274) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_285 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_285) + 1.0f);
  let x_292 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_292;
  let x_296 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_296;
  let x_299 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_299;
  let x_302 : vec4<f32> = vs_TEXCOORD1;
  let x_305 : f32 = u_xlat23;
  let x_308 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_302.x, x_302.y, x_302.z)) * vec3<f32>(x_305, x_305, x_305)) + x_308);
  let x_310 : vec3<f32> = u_xlat6;
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_310, x_311);
  let x_313 : f32 = u_xlat22;
  u_xlat22 = max(x_313, 0.001f);
  let x_316 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_316);
  let x_318 : f32 = u_xlat22;
  let x_320 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_318, x_318, x_318) * x_320);
  let x_322 : vec4<f32> = u_xlat2;
  let x_324 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), -(x_324));
  let x_327 : vec4<f32> = u_xlat2;
  let x_329 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), x_329);
  let x_331 : f32 = u_xlat23;
  u_xlat23 = clamp(x_331, 0.0f, 1.0f);
  let x_333 : vec4<f32> = u_xlat2;
  let x_335 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), x_335);
  let x_339 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_339, 0.0f, 1.0f);
  let x_343 : vec3<f32> = u_xlat5;
  let x_344 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_343, x_344);
  let x_346 : f32 = u_xlat9;
  u_xlat9 = clamp(x_346, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat9;
  let x_350 : f32 = u_xlat9;
  u_xlat16 = (x_349 * x_350);
  let x_352 : f32 = u_xlat16;
  let x_354 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_352, x_352), vec2<f32>(x_354, x_354));
  let x_357 : f32 = u_xlat16;
  u_xlat16 = (x_357 + -0.5f);
  let x_360 : f32 = u_xlat23;
  u_xlat3.x = (-(x_360) + 1.0f);
  let x_366 : f32 = u_xlat3.x;
  let x_368 : f32 = u_xlat3.x;
  u_xlat10 = (x_366 * x_368);
  let x_370 : f32 = u_xlat10;
  let x_371 : f32 = u_xlat10;
  u_xlat10 = (x_370 * x_371);
  let x_374 : f32 = u_xlat3.x;
  let x_375 : f32 = u_xlat10;
  u_xlat3.x = (x_374 * x_375);
  let x_378 : f32 = u_xlat16;
  let x_380 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_378 * x_380) + 1.0f);
  let x_384 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_384)) + 1.0f);
  let x_389 : f32 = u_xlat10;
  let x_390 : f32 = u_xlat10;
  u_xlat17 = (x_389 * x_390);
  let x_392 : f32 = u_xlat17;
  let x_393 : f32 = u_xlat17;
  u_xlat17 = (x_392 * x_393);
  let x_395 : f32 = u_xlat10;
  let x_396 : f32 = u_xlat17;
  u_xlat10 = (x_395 * x_396);
  let x_398 : f32 = u_xlat16;
  let x_399 : f32 = u_xlat10;
  u_xlat16 = ((x_398 * x_399) + 1.0f);
  let x_402 : f32 = u_xlat16;
  let x_404 : f32 = u_xlat3.x;
  u_xlat16 = (x_402 * x_404);
  let x_406 : f32 = u_xlat23;
  let x_407 : f32 = u_xlat16;
  u_xlat16 = (x_406 * x_407);
  let x_409 : f32 = u_xlat21;
  let x_410 : f32 = u_xlat21;
  u_xlat21 = (x_409 * x_410);
  let x_412 : f32 = u_xlat21;
  u_xlat21 = max(x_412, 0.002f);
  let x_415 : f32 = u_xlat21;
  u_xlat3.x = (-(x_415) + 1.0f);
  let x_419 : f32 = u_xlat22;
  let x_422 : f32 = u_xlat3.x;
  let x_424 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_419) * x_422) + x_424);
  let x_426 : f32 = u_xlat23;
  let x_428 : f32 = u_xlat3.x;
  let x_430 : f32 = u_xlat21;
  u_xlat3.x = ((x_426 * x_428) + x_430);
  let x_433 : f32 = u_xlat22;
  let x_436 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_433) * x_436);
  let x_438 : f32 = u_xlat23;
  let x_439 : f32 = u_xlat10;
  let x_441 : f32 = u_xlat22;
  u_xlat22 = ((x_438 * x_439) + x_441);
  let x_443 : f32 = u_xlat22;
  u_xlat22 = (x_443 + 0.00001f);
  let x_446 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_446);
  let x_448 : f32 = u_xlat21;
  let x_449 : f32 = u_xlat21;
  u_xlat21 = (x_448 * x_449);
  let x_452 : f32 = u_xlat2.x;
  let x_453 : f32 = u_xlat21;
  let x_456 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_452 * x_453) + -(x_456));
  let x_461 : f32 = u_xlat3.x;
  let x_463 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_461 * x_463) + 1.0f);
  let x_467 : f32 = u_xlat21;
  u_xlat21 = (x_467 * 0.318309873f);
  let x_471 : f32 = u_xlat2.x;
  let x_473 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_471 * x_473) + 0.0000001f);
  let x_478 : f32 = u_xlat21;
  let x_480 : f32 = u_xlat2.x;
  u_xlat21 = (x_478 / x_480);
  let x_482 : f32 = u_xlat21;
  let x_483 : f32 = u_xlat22;
  u_xlat21 = (x_482 * x_483);
  let x_485 : f32 = u_xlat23;
  let x_486 : f32 = u_xlat21;
  u_xlat21 = (x_485 * x_486);
  let x_488 : f32 = u_xlat21;
  u_xlat21 = (x_488 * 3.141592741f);
  let x_491 : f32 = u_xlat21;
  u_xlat21 = max(x_491, 0.0f);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_493.x, x_493.y, x_493.z), vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_499 : f32 = u_xlat22;
  u_xlatb22 = !((x_499 == 0.0f));
  let x_501 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_501);
  let x_503 : f32 = u_xlat21;
  let x_504 : f32 = u_xlat22;
  u_xlat21 = (x_503 * x_504);
  let x_506 : f32 = u_xlat16;
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec3<f32> = (vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_510.x, x_511.y, x_510.y, x_510.z);
  let x_513 : vec4<f32> = u_xlat4;
  let x_515 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515, x_515, x_515));
  let x_518 : f32 = u_xlat9;
  u_xlat21 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat21;
  u_xlat22 = (x_521 * x_522);
  let x_524 : f32 = u_xlat22;
  let x_525 : f32 = u_xlat22;
  u_xlat22 = (x_524 * x_525);
  let x_527 : f32 = u_xlat21;
  let x_528 : f32 = u_xlat22;
  u_xlat21 = (x_527 * x_528);
  let x_530 : vec4<f32> = u_xlat0;
  let x_534 : vec3<f32> = (-(vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : f32 = u_xlat21;
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_539, x_539, x_539)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat0;
  let x_549 : vec3<f32> = u_xlat3;
  let x_550 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) * x_549);
  let x_551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat1;
  let x_555 : vec4<f32> = u_xlat2;
  let x_558 : vec4<f32> = u_xlat0;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_555.x, x_555.z, x_555.w)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = vs_TEXCOORD1.w;
  let x_566 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_564 / x_566);
  let x_568 : f32 = u_xlat21;
  u_xlat21 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat21;
  let x_573 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_571 * x_573);
  let x_575 : f32 = u_xlat21;
  u_xlat21 = max(x_575, 0.0f);
  let x_577 : f32 = u_xlat21;
  let x_579 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_577 * x_579);
  let x_581 : f32 = u_xlat21;
  let x_582 : f32 = u_xlat21;
  u_xlat21 = (x_581 * -(x_582));
  let x_585 : f32 = u_xlat21;
  u_xlat21 = exp2(x_585);
  let x_587 : vec4<f32> = u_xlat0;
  let x_589 : f32 = u_xlat21;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589, x_589, x_589));
  let x_592 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
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

