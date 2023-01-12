struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(5) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb19 : bool;
  var u_xlatb2 : bool;
  var u_xlat8 : vec3<f32>;
  var x_211 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
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
  let x_52 : f32 = u_xlat19;
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : vec2<f32> = (-(vec2<f32>(x_52, x_52)) + x_58);
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_59.x, x_59.y, x_60.z, x_60.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_72.x, x_72.y));
  u_xlat19 = x_74.x;
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_81);
  u_xlat2.x = x_82.z;
  let x_86 : f32 = u_xlat19;
  u_xlat19 = ((x_86 * -2.0f) + 1.0f);
  let x_91 : f32 = u_xlat2.x;
  let x_93 : f32 = u_xlat19;
  u_xlat19 = (-(x_91) + x_93);
  let x_98 : f32 = u_xlat19;
  u_xlatb19 = (x_98 < 0.0f);
  let x_100 : bool = u_xlatb19;
  if (((select(0i, 1i, x_100) * -1i) != 0i)) {
    discard;
  }
  let x_112 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat2.x = x_112;
  let x_115 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2.y = x_115;
  let x_120 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat2.z = x_120;
  let x_122 : vec3<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(x_122, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_133 : vec3<f32> = (x_126 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_143 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_143);
  let x_146 : f32 = u_xlat19;
  let x_149 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_146) + x_149);
  let x_154 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_156 : f32 = u_xlat2.x;
  let x_158 : f32 = u_xlat19;
  u_xlat19 = ((x_154 * x_156) + x_158);
  let x_160 : f32 = u_xlat19;
  let x_163 : f32 = x_18.x_LightShadowData.z;
  let x_166 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_160 * x_163) + x_166);
  let x_168 : f32 = u_xlat19;
  u_xlat19 = clamp(x_168, 0.0f, 1.0f);
  let x_173 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_173 == 1.0f);
  let x_175 : bool = u_xlatb2;
  if (x_175) {
    let x_179 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_179 == 1.0f);
    let x_182 : vec3<f32> = vs_TEXCOORD2;
    let x_186 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat8 = (vec3<f32>(x_182.y, x_182.y, x_182.y) * vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_190 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_192 : vec3<f32> = vs_TEXCOORD2;
    let x_195 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.x, x_192.x, x_192.x)) + x_195);
    let x_198 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_200 : vec3<f32> = vs_TEXCOORD2;
    let x_203 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.z, x_200.z, x_200.z)) + x_203);
    let x_205 : vec3<f32> = u_xlat8;
    let x_207 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat8 = (x_205 + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : bool = u_xlatb2;
    if (x_210) {
      let x_214 : vec3<f32> = u_xlat8;
      x_211 = x_214;
    } else {
      let x_216 : vec3<f32> = vs_TEXCOORD2;
      x_211 = x_216;
    }
    let x_217 : vec3<f32> = x_211;
    let x_218 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat2;
    let x_224 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_226 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + -(x_224));
    let x_227 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat2;
    let x_233 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_234 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) * x_233);
    let x_235 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
    let x_238 : f32 = u_xlat2.y;
    u_xlat8.x = ((x_238 * 0.25f) + 0.75f);
    let x_246 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((x_246 * 0.5f) + 0.75f);
    let x_252 : f32 = u_xlat8.x;
    let x_254 : f32 = u_xlat3.x;
    u_xlat2.x = max(x_252, x_254);
    let x_265 : vec4<f32> = u_xlat2;
    let x_267 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_265.x, x_265.z, x_265.w));
    u_xlat2 = x_267;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_273, x_275);
  let x_279 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_279, 0.0f, 1.0f);
  let x_284 : vec4<f32> = vs_TEXCOORD5;
  let x_286 : vec4<f32> = vs_TEXCOORD5;
  let x_288 : vec2<f32> = (vec2<f32>(x_284.x, x_284.y) / vec2<f32>(x_286.w, x_286.w));
  let x_289 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_288.x, x_288.y, x_289.z);
  let x_296 : vec3<f32> = u_xlat8;
  let x_298 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_296.x, x_296.y));
  u_xlat8.x = x_298.x;
  let x_302 : f32 = u_xlat8.x;
  let x_305 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_302) + x_305);
  let x_308 : f32 = u_xlat19;
  let x_310 : f32 = u_xlat2.x;
  let x_313 : f32 = u_xlat8.x;
  u_xlat19 = ((x_308 * x_310) + x_313);
  let x_315 : f32 = u_xlat19;
  let x_319 : vec4<f32> = x_18.x_LightColor0;
  let x_321 : vec3<f32> = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat19;
  let x_332 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_337 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_344 : f32 = x_18.x_Metallic;
  let x_346 : f32 = x_18.x_Metallic;
  let x_348 : f32 = x_18.x_Metallic;
  let x_349 : vec3<f32> = vec3<f32>(x_344, x_346, x_348);
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * x_354) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_360 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_360) * 0.959999979f) + 0.959999979f);
  let x_366 : f32 = u_xlat19;
  let x_369 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_374 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_374) + 1.0f);
  let x_377 : vec3<f32> = u_xlat0;
  let x_378 : f32 = u_xlat18;
  let x_382 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_377 * vec3<f32>(x_378, x_378, x_378)) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec3<f32> = u_xlat0;
  let x_386 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_385, x_386);
  let x_388 : f32 = u_xlat18;
  u_xlat18 = max(x_388, 0.001f);
  let x_391 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_391);
  let x_393 : f32 = u_xlat18;
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_393, x_393, x_393) * x_395);
  let x_397 : vec3<f32> = u_xlat3;
  let x_398 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_397, x_398);
  let x_400 : vec3<f32> = u_xlat3;
  let x_402 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_400, vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_407, 0.0f, 1.0f);
  let x_411 : vec3<f32> = u_xlat3;
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_411, x_412);
  let x_414 : f32 = u_xlat7;
  u_xlat7 = clamp(x_414, 0.0f, 1.0f);
  let x_417 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_419 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), x_419);
  let x_423 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_423, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat0.x;
  let x_430 : f32 = u_xlat0.x;
  u_xlat6.x = (x_428 * x_430);
  let x_433 : vec3<f32> = u_xlat6;
  let x_435 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_433.x, x_433.x), vec2<f32>(x_435, x_435));
  let x_440 : f32 = u_xlat6.x;
  u_xlat6.x = (x_440 + -0.5f);
  let x_446 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_446) + 1.0f);
  let x_450 : f32 = u_xlat12;
  let x_451 : f32 = u_xlat12;
  u_xlat13 = (x_450 * x_451);
  let x_453 : f32 = u_xlat13;
  let x_454 : f32 = u_xlat13;
  u_xlat13 = (x_453 * x_454);
  let x_456 : f32 = u_xlat12;
  let x_457 : f32 = u_xlat13;
  u_xlat12 = (x_456 * x_457);
  let x_460 : f32 = u_xlat6.x;
  let x_461 : f32 = u_xlat12;
  u_xlat12 = ((x_460 * x_461) + 1.0f);
  let x_464 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_464)) + 1.0f);
  let x_469 : f32 = u_xlat13;
  let x_470 : f32 = u_xlat13;
  u_xlat20 = (x_469 * x_470);
  let x_472 : f32 = u_xlat20;
  let x_473 : f32 = u_xlat20;
  u_xlat20 = (x_472 * x_473);
  let x_475 : f32 = u_xlat13;
  let x_476 : f32 = u_xlat20;
  u_xlat13 = (x_475 * x_476);
  let x_479 : f32 = u_xlat6.x;
  let x_480 : f32 = u_xlat13;
  u_xlat6.x = ((x_479 * x_480) + 1.0f);
  let x_485 : f32 = u_xlat6.x;
  let x_486 : f32 = u_xlat12;
  u_xlat6.x = (x_485 * x_486);
  let x_489 : f32 = u_xlat19;
  let x_490 : f32 = u_xlat19;
  u_xlat12 = (x_489 * x_490);
  let x_492 : f32 = u_xlat12;
  u_xlat12 = max(x_492, 0.002f);
  let x_495 : f32 = u_xlat12;
  u_xlat13 = (-(x_495) + 1.0f);
  let x_498 : f32 = u_xlat18;
  let x_500 : f32 = u_xlat13;
  let x_502 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_498) * x_500) + x_502);
  let x_505 : f32 = u_xlat1.x;
  let x_506 : f32 = u_xlat13;
  let x_508 : f32 = u_xlat12;
  u_xlat13 = ((x_505 * x_506) + x_508);
  let x_510 : f32 = u_xlat18;
  let x_512 : f32 = u_xlat13;
  u_xlat18 = (abs(x_510) * x_512);
  let x_515 : f32 = u_xlat1.x;
  let x_516 : f32 = u_xlat19;
  let x_518 : f32 = u_xlat18;
  u_xlat18 = ((x_515 * x_516) + x_518);
  let x_520 : f32 = u_xlat18;
  u_xlat18 = (x_520 + 0.00001f);
  let x_523 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_523);
  let x_525 : f32 = u_xlat12;
  let x_526 : f32 = u_xlat12;
  u_xlat12 = (x_525 * x_526);
  let x_528 : f32 = u_xlat7;
  let x_529 : f32 = u_xlat12;
  let x_531 : f32 = u_xlat7;
  u_xlat13 = ((x_528 * x_529) + -(x_531));
  let x_534 : f32 = u_xlat13;
  let x_535 : f32 = u_xlat7;
  u_xlat7 = ((x_534 * x_535) + 1.0f);
  let x_538 : f32 = u_xlat12;
  u_xlat12 = (x_538 * 0.318309873f);
  let x_541 : f32 = u_xlat7;
  let x_542 : f32 = u_xlat7;
  u_xlat7 = ((x_541 * x_542) + 0.0000001f);
  let x_546 : f32 = u_xlat12;
  let x_547 : f32 = u_xlat7;
  u_xlat12 = (x_546 / x_547);
  let x_549 : f32 = u_xlat12;
  let x_550 : f32 = u_xlat18;
  u_xlat6.y = (x_549 * x_550);
  let x_553 : vec3<f32> = u_xlat1;
  let x_555 : vec3<f32> = u_xlat6;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.x) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_557.x, x_557.y, x_558.z);
  let x_561 : f32 = u_xlat6.y;
  u_xlat12 = (x_561 * 3.141592741f);
  let x_564 : f32 = u_xlat12;
  u_xlat12 = max(x_564, 0.0f);
  let x_566 : vec3<f32> = u_xlat4;
  let x_567 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_566, x_567);
  let x_570 : f32 = u_xlat18;
  u_xlatb18 = !((x_570 == 0.0f));
  let x_572 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_572);
  let x_574 : f32 = u_xlat18;
  let x_575 : f32 = u_xlat12;
  u_xlat12 = (x_574 * x_575);
  let x_577 : vec3<f32> = u_xlat6;
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat2;
  let x_584 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584, x_584, x_584));
  let x_588 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_588) + 1.0f);
  let x_593 : f32 = u_xlat0.x;
  let x_595 : f32 = u_xlat0.x;
  u_xlat19 = (x_593 * x_595);
  let x_597 : f32 = u_xlat19;
  let x_598 : f32 = u_xlat19;
  u_xlat19 = (x_597 * x_598);
  let x_601 : f32 = u_xlat0.x;
  let x_602 : f32 = u_xlat19;
  u_xlat0.x = (x_601 * x_602);
  let x_605 : vec3<f32> = u_xlat4;
  let x_608 : vec3<f32> = (-(x_605) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat2;
  let x_613 : vec3<f32> = u_xlat0;
  let x_616 : vec3<f32> = u_xlat4;
  let x_617 : vec3<f32> = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.x, x_613.x, x_613.x)) + x_616);
  let x_618 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_620 * vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : vec3<f32> = u_xlat5;
  let x_627 : vec3<f32> = u_xlat1;
  let x_629 : vec3<f32> = u_xlat0;
  let x_630 : vec3<f32> = ((x_626 * x_627) + x_629);
  let x_631 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

