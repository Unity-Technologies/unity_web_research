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
  x_Cutoff : f32,
  x_EdgeSize : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_DissolveNoise : texture_2d<f32>;

@group(0) @binding(9) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(8) var sampler_Specular : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat6 : vec4<f32>;
  var x_217 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
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
  let x_52 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_51);
  u_xlat22 = x_52.x;
  let x_61 : f32 = x_18.x_EdgeSize;
  let x_64 : f32 = x_18.x_Cutoff;
  u_xlat2.x = (x_61 + x_64);
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_73);
  u_xlat3 = x_74;
  let x_76 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_76 * x_80);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_89);
  u_xlat9 = vec2<f32>(x_90.x, x_90.w);
  let x_93 : f32 = u_xlat9.x;
  let x_96 : f32 = x_18.x_Metallic;
  u_xlat9.x = (x_93 * x_96);
  let x_105 : vec2<f32> = vs_TEXCOORD0;
  let x_106 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_105);
  u_xlat5 = vec3<f32>(x_106.x, x_106.y, x_106.w);
  let x_110 : f32 = u_xlat5.z;
  let x_112 : f32 = u_xlat5.x;
  u_xlat5.x = (x_110 * x_112);
  let x_115 : vec3<f32> = u_xlat5;
  let x_122 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_123 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_122.x, x_122.y, x_123.z);
  let x_126 : vec3<f32> = u_xlat5;
  let x_128 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_126.x, x_126.y), vec2<f32>(x_128.x, x_128.y));
  let x_131 : f32 = u_xlat23;
  u_xlat23 = min(x_131, 1.0f);
  let x_134 : f32 = u_xlat23;
  u_xlat23 = (-(x_134) + 1.0f);
  let x_137 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_137);
  let x_141 : f32 = x_18.x_Cutoff;
  let x_144 : f32 = u_xlat2.x;
  let x_146 : f32 = u_xlat22;
  u_xlat22 = ((-(x_141) * x_144) + x_146);
  let x_151 : f32 = u_xlat22;
  u_xlatb22 = (x_151 < 0.0f);
  let x_154 : bool = u_xlatb22;
  if (((select(0i, 1i, x_154) * -1i) != 0i)) {
    discard;
  }
  let x_165 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_165 == 1.0f);
  let x_167 : bool = u_xlatb22;
  if (x_167) {
    let x_172 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_172 == 1.0f);
    let x_175 : vec3<f32> = vs_TEXCOORD4;
    let x_179 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_181 : vec3<f32> = (vec3<f32>(x_175.y, x_175.y, x_175.y) * vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_185 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_187 : vec3<f32> = vs_TEXCOORD4;
    let x_190 : vec4<f32> = u_xlat6;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.x, x_187.x)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_197 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_199 : vec3<f32> = vs_TEXCOORD4;
    let x_202 : vec4<f32> = u_xlat6;
    let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.z, x_199.z, x_199.z)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat6;
    let x_211 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_213 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : bool = u_xlatb22;
    if (x_216) {
      let x_220 : vec4<f32> = u_xlat6;
      x_217 = vec3<f32>(x_220.x, x_220.y, x_220.z);
    } else {
      let x_223 : vec3<f32> = vs_TEXCOORD4;
      x_217 = x_223;
    }
    let x_224 : vec3<f32> = x_217;
    let x_225 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat6;
    let x_231 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_233 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + -(x_231));
    let x_234 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat6;
    let x_240 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_241 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) * x_240);
    let x_242 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_241.z);
    let x_245 : f32 = u_xlat6.y;
    u_xlat22 = ((x_245 * 0.25f) + 0.75f);
    let x_251 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat2.x = ((x_251 * 0.5f) + 0.75f);
    let x_256 : f32 = u_xlat22;
    let x_258 : f32 = u_xlat2.x;
    u_xlat6.x = max(x_256, x_258);
    let x_269 : vec4<f32> = u_xlat6;
    let x_271 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_269.x, x_269.z, x_269.w));
    u_xlat6 = x_271;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_278 : vec4<f32> = u_xlat6;
  let x_280 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_278, x_280);
  let x_282 : f32 = u_xlat22;
  u_xlat22 = clamp(x_282, 0.0f, 1.0f);
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_285, x_286);
  let x_290 : vec3<f32> = vs_TEXCOORD2;
  let x_291 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_290, x_291);
  let x_295 : vec3<f32> = vs_TEXCOORD3;
  let x_296 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_295, x_296);
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_306 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_306);
  let x_309 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : f32 = u_xlat22;
  let x_318 : vec4<f32> = x_18.x_LightColor0;
  let x_320 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec4<f32> = x_18.x_Color;
  let x_331 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec2<f32> = u_xlat9;
  let x_336 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.x, x_334.x) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat9.x;
  u_xlat22 = ((-(x_345) * 0.959999979f) + 0.959999979f);
  let x_350 : f32 = u_xlat22;
  let x_352 : vec4<f32> = u_xlat4;
  let x_354 : vec3<f32> = (vec3<f32>(x_350, x_350, x_350) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_355.z, x_354.z);
  let x_358 : f32 = u_xlat9.y;
  let x_362 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_358) * x_362) + 1.0f);
  let x_365 : vec3<f32> = u_xlat0;
  let x_366 : f32 = u_xlat21;
  let x_370 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_365 * vec3<f32>(x_366, x_366, x_366)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec3<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_373, x_374);
  let x_376 : f32 = u_xlat21;
  u_xlat21 = max(x_376, 0.001f);
  let x_379 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_379);
  let x_381 : f32 = u_xlat21;
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_381, x_381, x_381) * x_383);
  let x_385 : vec3<f32> = u_xlat5;
  let x_386 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_385, x_386);
  let x_388 : vec3<f32> = u_xlat5;
  let x_390 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_388, vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_395 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_395, 0.0f, 1.0f);
  let x_399 : vec3<f32> = u_xlat5;
  let x_400 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_399, x_400);
  let x_402 : f32 = u_xlat8;
  u_xlat8 = clamp(x_402, 0.0f, 1.0f);
  let x_405 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_407 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_405.x, x_405.y, x_405.z), x_407);
  let x_411 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_411, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat0.x;
  let x_418 : f32 = u_xlat0.x;
  u_xlat7.x = (x_416 * x_418);
  let x_421 : vec3<f32> = u_xlat7;
  let x_423 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_421.x, x_421.x), vec2<f32>(x_423, x_423));
  let x_428 : f32 = u_xlat7.x;
  u_xlat7.x = (x_428 + -0.5f);
  let x_434 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_434) + 1.0f);
  let x_438 : f32 = u_xlat14;
  let x_439 : f32 = u_xlat14;
  u_xlat15 = (x_438 * x_439);
  let x_441 : f32 = u_xlat15;
  let x_442 : f32 = u_xlat15;
  u_xlat15 = (x_441 * x_442);
  let x_444 : f32 = u_xlat14;
  let x_445 : f32 = u_xlat15;
  u_xlat14 = (x_444 * x_445);
  let x_448 : f32 = u_xlat7.x;
  let x_449 : f32 = u_xlat14;
  u_xlat14 = ((x_448 * x_449) + 1.0f);
  let x_452 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_452)) + 1.0f);
  let x_457 : f32 = u_xlat15;
  let x_458 : f32 = u_xlat15;
  u_xlat16 = (x_457 * x_458);
  let x_460 : f32 = u_xlat16;
  let x_461 : f32 = u_xlat16;
  u_xlat16 = (x_460 * x_461);
  let x_463 : f32 = u_xlat15;
  let x_464 : f32 = u_xlat16;
  u_xlat15 = (x_463 * x_464);
  let x_467 : f32 = u_xlat7.x;
  let x_468 : f32 = u_xlat15;
  u_xlat7.x = ((x_467 * x_468) + 1.0f);
  let x_473 : f32 = u_xlat7.x;
  let x_474 : f32 = u_xlat14;
  u_xlat7.x = (x_473 * x_474);
  let x_477 : f32 = u_xlat22;
  let x_478 : f32 = u_xlat22;
  u_xlat14 = (x_477 * x_478);
  let x_480 : f32 = u_xlat14;
  u_xlat14 = max(x_480, 0.002f);
  let x_483 : f32 = u_xlat14;
  u_xlat15 = (-(x_483) + 1.0f);
  let x_486 : f32 = u_xlat21;
  let x_488 : f32 = u_xlat15;
  let x_490 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_486) * x_488) + x_490);
  let x_493 : f32 = u_xlat1.x;
  let x_494 : f32 = u_xlat15;
  let x_496 : f32 = u_xlat14;
  u_xlat15 = ((x_493 * x_494) + x_496);
  let x_498 : f32 = u_xlat21;
  let x_500 : f32 = u_xlat15;
  u_xlat21 = (abs(x_498) * x_500);
  let x_503 : f32 = u_xlat1.x;
  let x_504 : f32 = u_xlat22;
  let x_506 : f32 = u_xlat21;
  u_xlat21 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat21;
  u_xlat21 = (x_508 + 0.00001f);
  let x_511 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_511);
  let x_513 : f32 = u_xlat14;
  let x_514 : f32 = u_xlat14;
  u_xlat14 = (x_513 * x_514);
  let x_516 : f32 = u_xlat8;
  let x_517 : f32 = u_xlat14;
  let x_519 : f32 = u_xlat8;
  u_xlat15 = ((x_516 * x_517) + -(x_519));
  let x_522 : f32 = u_xlat15;
  let x_523 : f32 = u_xlat8;
  u_xlat8 = ((x_522 * x_523) + 1.0f);
  let x_526 : f32 = u_xlat14;
  u_xlat14 = (x_526 * 0.318309873f);
  let x_529 : f32 = u_xlat8;
  let x_530 : f32 = u_xlat8;
  u_xlat8 = ((x_529 * x_530) + 0.0000001f);
  let x_534 : f32 = u_xlat14;
  let x_535 : f32 = u_xlat8;
  u_xlat14 = (x_534 / x_535);
  let x_537 : f32 = u_xlat14;
  let x_538 : f32 = u_xlat21;
  u_xlat7.y = (x_537 * x_538);
  let x_541 : vec3<f32> = u_xlat1;
  let x_543 : vec3<f32> = u_xlat7;
  let x_545 : vec2<f32> = (vec2<f32>(x_541.x, x_541.x) * vec2<f32>(x_543.x, x_543.y));
  let x_546 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_545.x, x_545.y, x_546.z);
  let x_549 : f32 = u_xlat7.y;
  u_xlat14 = (x_549 * 3.141592741f);
  let x_552 : f32 = u_xlat14;
  u_xlat14 = max(x_552, 0.0f);
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_560 : f32 = u_xlat21;
  u_xlatb21 = !((x_560 == 0.0f));
  let x_562 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_562);
  let x_564 : f32 = u_xlat21;
  let x_565 : f32 = u_xlat14;
  u_xlat14 = (x_564 * x_565);
  let x_567 : vec3<f32> = u_xlat7;
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_567.x, x_567.x, x_567.x) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  let x_574 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_574, x_574, x_574));
  let x_578 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_578) + 1.0f);
  let x_583 : f32 = u_xlat0.x;
  let x_585 : f32 = u_xlat0.x;
  u_xlat22 = (x_583 * x_585);
  let x_587 : f32 = u_xlat22;
  let x_588 : f32 = u_xlat22;
  u_xlat22 = (x_587 * x_588);
  let x_591 : f32 = u_xlat0.x;
  let x_592 : f32 = u_xlat22;
  u_xlat0.x = (x_591 * x_592);
  let x_595 : vec4<f32> = u_xlat3;
  let x_599 : vec3<f32> = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec3<f32> = u_xlat0;
  let x_607 : vec4<f32> = u_xlat3;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604.x, x_604.x, x_604.x)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = u_xlat7;
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_612 * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat2;
  let x_618 : vec3<f32> = u_xlat1;
  let x_620 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_616.x, x_616.y, x_616.w) * x_618) + x_620);
  let x_624 : f32 = vs_TEXCOORD6;
  let x_626 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_624 / x_626);
  let x_628 : f32 = u_xlat21;
  u_xlat21 = (-(x_628) + 1.0f);
  let x_631 : f32 = u_xlat21;
  let x_633 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_631 * x_633);
  let x_635 : f32 = u_xlat21;
  u_xlat21 = max(x_635, 0.0f);
  let x_637 : f32 = u_xlat21;
  let x_640 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_637 * x_640);
  let x_642 : f32 = u_xlat21;
  let x_643 : f32 = u_xlat21;
  u_xlat21 = (x_642 * -(x_643));
  let x_646 : f32 = u_xlat21;
  u_xlat21 = exp2(x_646);
  let x_650 : vec3<f32> = u_xlat0;
  let x_651 : f32 = u_xlat21;
  let x_653 : vec3<f32> = (x_650 * vec3<f32>(x_651, x_651, x_651));
  let x_654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = u_xlat4.w;
  SV_Target0.w = x_657;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

