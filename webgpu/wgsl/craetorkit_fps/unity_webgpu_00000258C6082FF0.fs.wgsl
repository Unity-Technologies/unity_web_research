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
  var x_216 : vec3<f32>;
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
    let x_210 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_212 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + vec3<f32>(x_210.x, x_210.y, x_210.z));
    let x_213 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : bool = u_xlatb22;
    if (x_215) {
      let x_219 : vec4<f32> = u_xlat6;
      x_216 = vec3<f32>(x_219.x, x_219.y, x_219.z);
    } else {
      let x_222 : vec3<f32> = vs_TEXCOORD4;
      x_216 = x_222;
    }
    let x_223 : vec3<f32> = x_216;
    let x_224 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat6;
    let x_230 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_232 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + -(x_230));
    let x_233 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat6;
    let x_239 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_240 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) * x_239);
    let x_241 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_241.x, x_240.x, x_240.y, x_240.z);
    let x_244 : f32 = u_xlat6.y;
    u_xlat22 = ((x_244 * 0.25f) + 0.75f);
    let x_250 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat2.x = ((x_250 * 0.5f) + 0.75f);
    let x_255 : f32 = u_xlat22;
    let x_257 : f32 = u_xlat2.x;
    u_xlat6.x = max(x_255, x_257);
    let x_268 : vec4<f32> = u_xlat6;
    let x_270 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_268.x, x_268.z, x_268.w));
    u_xlat6 = x_270;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_277 : vec4<f32> = u_xlat6;
  let x_279 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_277, x_279);
  let x_281 : f32 = u_xlat22;
  u_xlat22 = clamp(x_281, 0.0f, 1.0f);
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_285 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_284, x_285);
  let x_289 : vec3<f32> = vs_TEXCOORD2;
  let x_290 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_289, x_290);
  let x_294 : vec3<f32> = vs_TEXCOORD3;
  let x_295 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_294, x_295);
  let x_298 : vec4<f32> = u_xlat6;
  let x_300 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_305);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_308.x, x_308.x, x_308.x) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : f32 = u_xlat22;
  let x_317 : vec4<f32> = x_18.x_LightColor0;
  let x_319 : vec3<f32> = (vec3<f32>(x_313, x_313, x_313) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat3;
  let x_325 : vec4<f32> = x_18.x_Color;
  let x_330 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_325.x, x_325.y, x_325.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec2<f32> = u_xlat9;
  let x_335 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.x, x_333.x) * vec3<f32>(x_335.x, x_335.y, x_335.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : f32 = u_xlat9.x;
  u_xlat22 = ((-(x_344) * 0.959999979f) + 0.959999979f);
  let x_349 : f32 = u_xlat22;
  let x_351 : vec4<f32> = u_xlat4;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_353.z);
  let x_357 : f32 = u_xlat9.y;
  let x_361 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_357) * x_361) + 1.0f);
  let x_364 : vec3<f32> = u_xlat0;
  let x_365 : f32 = u_xlat21;
  let x_369 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_364 * vec3<f32>(x_365, x_365, x_365)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec3<f32> = u_xlat0;
  let x_373 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_372, x_373);
  let x_375 : f32 = u_xlat21;
  u_xlat21 = max(x_375, 0.001f);
  let x_378 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat21;
  let x_382 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec3<f32> = u_xlat5;
  let x_385 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_384, x_385);
  let x_387 : vec3<f32> = u_xlat5;
  let x_389 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_387, vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_394 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_394, 0.0f, 1.0f);
  let x_398 : vec3<f32> = u_xlat5;
  let x_399 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_398, x_399);
  let x_401 : f32 = u_xlat8;
  u_xlat8 = clamp(x_401, 0.0f, 1.0f);
  let x_404 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_406 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), x_406);
  let x_410 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_410, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat0.x;
  let x_417 : f32 = u_xlat0.x;
  u_xlat7.x = (x_415 * x_417);
  let x_420 : vec3<f32> = u_xlat7;
  let x_422 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_420.x, x_420.x), vec2<f32>(x_422, x_422));
  let x_427 : f32 = u_xlat7.x;
  u_xlat7.x = (x_427 + -0.5f);
  let x_433 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_433) + 1.0f);
  let x_437 : f32 = u_xlat14;
  let x_438 : f32 = u_xlat14;
  u_xlat15 = (x_437 * x_438);
  let x_440 : f32 = u_xlat15;
  let x_441 : f32 = u_xlat15;
  u_xlat15 = (x_440 * x_441);
  let x_443 : f32 = u_xlat14;
  let x_444 : f32 = u_xlat15;
  u_xlat14 = (x_443 * x_444);
  let x_447 : f32 = u_xlat7.x;
  let x_448 : f32 = u_xlat14;
  u_xlat14 = ((x_447 * x_448) + 1.0f);
  let x_451 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_451)) + 1.0f);
  let x_456 : f32 = u_xlat15;
  let x_457 : f32 = u_xlat15;
  u_xlat16 = (x_456 * x_457);
  let x_459 : f32 = u_xlat16;
  let x_460 : f32 = u_xlat16;
  u_xlat16 = (x_459 * x_460);
  let x_462 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat16;
  u_xlat15 = (x_462 * x_463);
  let x_466 : f32 = u_xlat7.x;
  let x_467 : f32 = u_xlat15;
  u_xlat7.x = ((x_466 * x_467) + 1.0f);
  let x_472 : f32 = u_xlat7.x;
  let x_473 : f32 = u_xlat14;
  u_xlat7.x = (x_472 * x_473);
  let x_476 : f32 = u_xlat22;
  let x_477 : f32 = u_xlat22;
  u_xlat14 = (x_476 * x_477);
  let x_479 : f32 = u_xlat14;
  u_xlat14 = max(x_479, 0.002f);
  let x_482 : f32 = u_xlat14;
  u_xlat15 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat21;
  let x_487 : f32 = u_xlat15;
  let x_489 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_485) * x_487) + x_489);
  let x_492 : f32 = u_xlat1.x;
  let x_493 : f32 = u_xlat15;
  let x_495 : f32 = u_xlat14;
  u_xlat15 = ((x_492 * x_493) + x_495);
  let x_497 : f32 = u_xlat21;
  let x_499 : f32 = u_xlat15;
  u_xlat21 = (abs(x_497) * x_499);
  let x_502 : f32 = u_xlat1.x;
  let x_503 : f32 = u_xlat22;
  let x_505 : f32 = u_xlat21;
  u_xlat21 = ((x_502 * x_503) + x_505);
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (x_507 + 0.00001f);
  let x_510 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_510);
  let x_512 : f32 = u_xlat14;
  let x_513 : f32 = u_xlat14;
  u_xlat14 = (x_512 * x_513);
  let x_515 : f32 = u_xlat8;
  let x_516 : f32 = u_xlat14;
  let x_518 : f32 = u_xlat8;
  u_xlat15 = ((x_515 * x_516) + -(x_518));
  let x_521 : f32 = u_xlat15;
  let x_522 : f32 = u_xlat8;
  u_xlat8 = ((x_521 * x_522) + 1.0f);
  let x_525 : f32 = u_xlat14;
  u_xlat14 = (x_525 * 0.318309873f);
  let x_528 : f32 = u_xlat8;
  let x_529 : f32 = u_xlat8;
  u_xlat8 = ((x_528 * x_529) + 0.0000001f);
  let x_533 : f32 = u_xlat14;
  let x_534 : f32 = u_xlat8;
  u_xlat14 = (x_533 / x_534);
  let x_536 : f32 = u_xlat14;
  let x_537 : f32 = u_xlat21;
  u_xlat7.y = (x_536 * x_537);
  let x_540 : vec3<f32> = u_xlat1;
  let x_542 : vec3<f32> = u_xlat7;
  let x_544 : vec2<f32> = (vec2<f32>(x_540.x, x_540.x) * vec2<f32>(x_542.x, x_542.y));
  let x_545 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_544.x, x_544.y, x_545.z);
  let x_548 : f32 = u_xlat7.y;
  u_xlat14 = (x_548 * 3.141592741f);
  let x_551 : f32 = u_xlat14;
  u_xlat14 = max(x_551, 0.0f);
  let x_553 : vec4<f32> = u_xlat3;
  let x_555 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_559 : f32 = u_xlat21;
  u_xlatb21 = !((x_559 == 0.0f));
  let x_561 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_561);
  let x_563 : f32 = u_xlat21;
  let x_564 : f32 = u_xlat14;
  u_xlat14 = (x_563 * x_564);
  let x_566 : vec3<f32> = u_xlat7;
  let x_568 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_566.x, x_566.x, x_566.x) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  let x_573 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573, x_573, x_573));
  let x_577 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_577) + 1.0f);
  let x_582 : f32 = u_xlat0.x;
  let x_584 : f32 = u_xlat0.x;
  u_xlat22 = (x_582 * x_584);
  let x_586 : f32 = u_xlat22;
  let x_587 : f32 = u_xlat22;
  u_xlat22 = (x_586 * x_587);
  let x_590 : f32 = u_xlat0.x;
  let x_591 : f32 = u_xlat22;
  u_xlat0.x = (x_590 * x_591);
  let x_594 : vec4<f32> = u_xlat3;
  let x_598 : vec3<f32> = (-(vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec3<f32> = u_xlat0;
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_603.x, x_603.x, x_603.x)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec3<f32> = u_xlat7;
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_611 * vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_617 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = u_xlat1;
  let x_621 : vec3<f32> = u_xlat0;
  let x_622 : vec3<f32> = ((vec3<f32>(x_617.x, x_617.y, x_617.w) * x_619) + x_621);
  let x_623 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat4.w;
  SV_Target0.w = x_626;
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

