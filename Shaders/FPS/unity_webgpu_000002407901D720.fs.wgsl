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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat23 : f32;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_173 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_117 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_117 == 1.0f);
  let x_120 : bool = u_xlatb22;
  if (x_120) {
    let x_125 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_125 == 1.0f);
    let x_130 : vec3<f32> = vs_TEXCOORD5;
    let x_134 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_136 : vec3<f32> = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
    let x_137 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
    let x_141 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_143 : vec3<f32> = vs_TEXCOORD5;
    let x_146 : vec4<f32> = u_xlat4;
    let x_148 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + vec3<f32>(x_146.x, x_146.y, x_146.z));
    let x_149 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
    let x_152 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = u_xlat4;
    let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.z, x_154.z, x_154.z)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat4;
    let x_166 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_168 : vec3<f32> = (vec3<f32>(x_162.x, x_162.y, x_162.z) + vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : bool = u_xlatb22;
    if (x_171) {
      let x_176 : vec4<f32> = u_xlat4;
      x_173 = vec3<f32>(x_176.x, x_176.y, x_176.z);
    } else {
      let x_179 : vec3<f32> = vs_TEXCOORD5;
      x_173 = x_179;
    }
    let x_180 : vec3<f32> = x_173;
    let x_181 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat4;
    let x_188 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_190 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_188));
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat4;
    let x_196 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) * x_196);
    let x_198 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_198.x, x_197.x, x_197.y, x_197.z);
    let x_202 : f32 = u_xlat4.y;
    u_xlat22 = ((x_202 * 0.25f) + 0.75f);
    let x_210 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_210 * 0.5f) + 0.75f);
    let x_214 : f32 = u_xlat22;
    let x_215 : f32 = u_xlat23;
    u_xlat4.x = max(x_214, x_215);
    let x_226 : vec4<f32> = u_xlat4;
    let x_228 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_226.x, x_226.z, x_226.w));
    u_xlat4 = x_228;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_235, x_237);
  let x_239 : f32 = u_xlat22;
  u_xlat22 = clamp(x_239, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat22;
  let x_246 : vec4<f32> = x_33.x_LightColor0;
  let x_248 : vec3<f32> = (vec3<f32>(x_242, x_242, x_242) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_253 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_253) + 1.0f);
  let x_260 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_260;
  let x_264 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_264;
  let x_267 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_267;
  let x_270 : vec4<f32> = vs_TEXCOORD1;
  let x_273 : f32 = u_xlat21;
  let x_276 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_270.x, x_270.y, x_270.z)) * vec3<f32>(x_273, x_273, x_273)) + x_276);
  let x_278 : vec3<f32> = u_xlat6;
  let x_279 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_278, x_279);
  let x_281 : f32 = u_xlat21;
  u_xlat21 = max(x_281, 0.001f);
  let x_284 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_284);
  let x_286 : f32 = u_xlat21;
  let x_288 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_286, x_286, x_286) * x_288);
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), -(x_292));
  let x_295 : vec4<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), x_297);
  let x_299 : f32 = u_xlat23;
  u_xlat23 = clamp(x_299, 0.0f, 1.0f);
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_301.x, x_301.y, x_301.z), x_303);
  let x_307 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_307, 0.0f, 1.0f);
  let x_311 : vec3<f32> = u_xlat5;
  let x_312 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_311, x_312);
  let x_314 : f32 = u_xlat9;
  u_xlat9 = clamp(x_314, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat9;
  let x_318 : f32 = u_xlat9;
  u_xlat16 = (x_317 * x_318);
  let x_320 : f32 = u_xlat16;
  let x_322 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_320, x_320), vec2<f32>(x_322, x_322));
  let x_325 : f32 = u_xlat16;
  u_xlat16 = (x_325 + -0.5f);
  let x_328 : f32 = u_xlat23;
  u_xlat3.x = (-(x_328) + 1.0f);
  let x_334 : f32 = u_xlat3.x;
  let x_336 : f32 = u_xlat3.x;
  u_xlat10 = (x_334 * x_336);
  let x_338 : f32 = u_xlat10;
  let x_339 : f32 = u_xlat10;
  u_xlat10 = (x_338 * x_339);
  let x_342 : f32 = u_xlat3.x;
  let x_343 : f32 = u_xlat10;
  u_xlat3.x = (x_342 * x_343);
  let x_346 : f32 = u_xlat16;
  let x_348 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_346 * x_348) + 1.0f);
  let x_352 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_352)) + 1.0f);
  let x_357 : f32 = u_xlat10;
  let x_358 : f32 = u_xlat10;
  u_xlat17 = (x_357 * x_358);
  let x_360 : f32 = u_xlat17;
  let x_361 : f32 = u_xlat17;
  u_xlat17 = (x_360 * x_361);
  let x_363 : f32 = u_xlat10;
  let x_364 : f32 = u_xlat17;
  u_xlat10 = (x_363 * x_364);
  let x_366 : f32 = u_xlat16;
  let x_367 : f32 = u_xlat10;
  u_xlat16 = ((x_366 * x_367) + 1.0f);
  let x_370 : f32 = u_xlat16;
  let x_372 : f32 = u_xlat3.x;
  u_xlat16 = (x_370 * x_372);
  let x_374 : f32 = u_xlat23;
  let x_375 : f32 = u_xlat16;
  u_xlat16 = (x_374 * x_375);
  let x_377 : f32 = u_xlat22;
  let x_378 : f32 = u_xlat22;
  u_xlat22 = (x_377 * x_378);
  let x_380 : f32 = u_xlat22;
  u_xlat22 = max(x_380, 0.002f);
  let x_383 : f32 = u_xlat22;
  u_xlat3.x = (-(x_383) + 1.0f);
  let x_387 : f32 = u_xlat21;
  let x_390 : f32 = u_xlat3.x;
  let x_392 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_387) * x_390) + x_392);
  let x_394 : f32 = u_xlat23;
  let x_396 : f32 = u_xlat3.x;
  let x_398 : f32 = u_xlat22;
  u_xlat3.x = ((x_394 * x_396) + x_398);
  let x_401 : f32 = u_xlat21;
  let x_404 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_401) * x_404);
  let x_406 : f32 = u_xlat23;
  let x_407 : f32 = u_xlat10;
  let x_409 : f32 = u_xlat21;
  u_xlat21 = ((x_406 * x_407) + x_409);
  let x_411 : f32 = u_xlat21;
  u_xlat21 = (x_411 + 0.00001f);
  let x_414 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_414);
  let x_416 : f32 = u_xlat22;
  let x_417 : f32 = u_xlat22;
  u_xlat22 = (x_416 * x_417);
  let x_420 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat22;
  let x_424 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_420 * x_421) + -(x_424));
  let x_429 : f32 = u_xlat3.x;
  let x_431 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_429 * x_431) + 1.0f);
  let x_435 : f32 = u_xlat22;
  u_xlat22 = (x_435 * 0.318309873f);
  let x_439 : f32 = u_xlat2.x;
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_439 * x_441) + 0.0000001f);
  let x_446 : f32 = u_xlat22;
  let x_448 : f32 = u_xlat2.x;
  u_xlat22 = (x_446 / x_448);
  let x_450 : f32 = u_xlat21;
  let x_451 : f32 = u_xlat22;
  u_xlat21 = (x_450 * x_451);
  let x_453 : f32 = u_xlat23;
  let x_454 : f32 = u_xlat21;
  u_xlat21 = (x_453 * x_454);
  let x_456 : f32 = u_xlat21;
  u_xlat21 = (x_456 * 3.141592741f);
  let x_459 : f32 = u_xlat21;
  u_xlat21 = max(x_459, 0.0f);
  let x_461 : vec3<f32> = u_xlat0;
  let x_462 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_461, x_462);
  let x_464 : f32 = u_xlat22;
  u_xlatb22 = !((x_464 == 0.0f));
  let x_466 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_466);
  let x_468 : f32 = u_xlat21;
  let x_469 : f32 = u_xlat22;
  u_xlat21 = (x_468 * x_469);
  let x_471 : f32 = u_xlat16;
  let x_473 : vec4<f32> = u_xlat4;
  let x_475 : vec3<f32> = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_476.y, x_475.y, x_475.z);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480, x_480, x_480));
  let x_483 : f32 = u_xlat9;
  u_xlat21 = (-(x_483) + 1.0f);
  let x_486 : f32 = u_xlat21;
  let x_487 : f32 = u_xlat21;
  u_xlat22 = (x_486 * x_487);
  let x_489 : f32 = u_xlat22;
  let x_490 : f32 = u_xlat22;
  u_xlat22 = (x_489 * x_490);
  let x_492 : f32 = u_xlat21;
  let x_493 : f32 = u_xlat22;
  u_xlat21 = (x_492 * x_493);
  let x_495 : vec3<f32> = u_xlat0;
  let x_498 : vec3<f32> = (-(x_495) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : f32 = u_xlat21;
  let x_506 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503, x_503, x_503)) + x_506);
  let x_508 : vec3<f32> = u_xlat0;
  let x_509 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_508 * x_509);
  let x_513 : vec3<f32> = u_xlat1;
  let x_514 : vec4<f32> = u_xlat2;
  let x_517 : vec3<f32> = u_xlat0;
  let x_518 : vec3<f32> = ((x_513 * vec3<f32>(x_514.x, x_514.z, x_514.w)) + x_517);
  let x_519 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  SV_Target0.w = 1.0f;
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

