struct PGlobals {
  x_Time : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb24 : bool;

var<private> u_xlat25 : f32;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_185 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD1;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_57 : vec3<f32> = vs_TEXCOORD0;
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_57, x_58);
  let x_60 : f32 = u_xlat22;
  u_xlat22 = log2(x_60);
  let x_62 : f32 = u_xlat22;
  u_xlat22 = (x_62 * 0.100000001f);
  let x_65 : f32 = u_xlat22;
  u_xlat22 = exp2(x_65);
  let x_67 : f32 = u_xlat22;
  u_xlat22 = (-(x_67) + 1.0f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = max(x_71, 0.0f);
  let x_75 : f32 = u_xlat22;
  let x_79 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_87 : f32 = x_18.x_Time.x;
  u_xlat22 = (x_87 * 200.0f);
  let x_90 : f32 = u_xlat22;
  u_xlat22 = sin(x_90);
  let x_92 : f32 = u_xlat22;
  u_xlat22 = (x_92 + 1.0f);
  let x_94 : f32 = u_xlat22;
  u_xlat22 = (x_94 * 0.5f);
  let x_98 : f32 = u_xlat22;
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_104 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec4<f32>(x_104.y, x_104.y, x_104.y, x_104.y) * x_108);
  let x_111 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_112 : vec3<f32> = vs_TEXCOORD1;
  let x_115 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_111 * vec4<f32>(x_112.x, x_112.x, x_112.x, x_112.x)) + x_115);
  let x_118 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_119 : vec3<f32> = vs_TEXCOORD1;
  let x_122 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_118 * vec4<f32>(x_119.z, x_119.z, x_119.z, x_119.z)) + x_122);
  let x_124 : vec4<f32> = u_xlat5;
  let x_127 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_124 + x_127);
  let x_134 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_134 == 1.0f);
  let x_136 : bool = u_xlatb23;
  if (x_136) {
    let x_141 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_141 == 1.0f);
    let x_144 : vec3<f32> = vs_TEXCOORD1;
    let x_148 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_150 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_154 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_156 : vec3<f32> = vs_TEXCOORD1;
    let x_159 : vec4<f32> = u_xlat6;
    let x_161 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.x, x_156.x, x_156.x)) + vec3<f32>(x_159.x, x_159.y, x_159.z));
    let x_162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_165 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_167 : vec3<f32> = vs_TEXCOORD1;
    let x_170 : vec4<f32> = u_xlat6;
    let x_172 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_173 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_175 : vec4<f32> = u_xlat6;
    let x_178 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_180 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : bool = u_xlatb23;
    if (x_183) {
      let x_188 : vec4<f32> = u_xlat6;
      x_185 = vec3<f32>(x_188.x, x_188.y, x_188.z);
    } else {
      let x_191 : vec3<f32> = vs_TEXCOORD1;
      x_185 = x_191;
    }
    let x_192 : vec3<f32> = x_185;
    let x_193 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat6;
    let x_199 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(x_199));
    let x_202 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat6;
    let x_208 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_209 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) * x_208);
    let x_210 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_210.x, x_209.x, x_209.y, x_209.z);
    let x_214 : f32 = u_xlat6.y;
    u_xlat23 = ((x_214 * 0.25f) + 0.75f);
    let x_222 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_222 * 0.5f) + 0.75f);
    let x_225 : f32 = u_xlat23;
    let x_226 : f32 = u_xlat24;
    u_xlat6.x = max(x_225, x_226);
    let x_239 : vec4<f32> = u_xlat6;
    let x_241 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_239.x, x_239.z, x_239.w));
    u_xlat6 = x_241;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_248 : vec4<f32> = u_xlat6;
  let x_250 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_248, x_250);
  let x_252 : f32 = u_xlat23;
  u_xlat23 = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat5.z;
  u_xlatb24 = (0.0f < x_256);
  let x_258 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_258);
  let x_261 : vec4<f32> = u_xlat5;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec2<f32> = (vec2<f32>(x_261.x, x_261.y) / vec2<f32>(x_263.w, x_263.w));
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat6;
  let x_271 : vec2<f32> = (vec2<f32>(x_268.x, x_268.y) + vec2<f32>(0.5f, 0.5f));
  let x_272 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_283 : vec4<f32> = u_xlat6;
  let x_285 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_283.x, x_283.y));
  u_xlat25 = x_285.w;
  let x_287 : f32 = u_xlat24;
  let x_288 : f32 = u_xlat25;
  u_xlat24 = (x_287 * x_288);
  let x_290 : vec4<f32> = u_xlat5;
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_300 : f32 = u_xlat25;
  let x_302 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_300, x_300));
  u_xlat25 = x_302.x;
  let x_304 : f32 = u_xlat24;
  let x_305 : f32 = u_xlat25;
  u_xlat24 = (x_304 * x_305);
  let x_307 : f32 = u_xlat23;
  let x_308 : f32 = u_xlat24;
  u_xlat23 = (x_307 * x_308);
  let x_310 : f32 = u_xlat23;
  let x_314 : vec4<f32> = x_18.x_LightColor0;
  let x_316 : vec3<f32> = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec3<f32> = vs_TEXCOORD0;
  let x_320 : vec3<f32> = vs_TEXCOORD0;
  u_xlat23 = dot(x_319, x_320);
  let x_322 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_322);
  let x_324 : f32 = u_xlat23;
  let x_326 : vec3<f32> = vs_TEXCOORD0;
  let x_327 : vec3<f32> = (vec3<f32>(x_324, x_324, x_324) * x_326);
  let x_328 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec3<f32> = u_xlat3;
  let x_331 : f32 = u_xlat22;
  u_xlat3 = ((x_330 * vec3<f32>(x_331, x_331, x_331)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_339 : f32 = x_18.x_Metallic;
  let x_341 : f32 = x_18.x_Metallic;
  let x_343 : f32 = x_18.x_Metallic;
  let x_344 : vec3<f32> = vec3<f32>(x_339, x_341, x_343);
  let x_349 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * x_349) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_355 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_355) * 0.959999979f) + 0.959999979f);
  let x_360 : f32 = u_xlat22;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_360, x_360, x_360) * x_362);
  let x_366 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_366) + 1.0f);
  let x_369 : vec3<f32> = u_xlat0;
  let x_370 : f32 = u_xlat21;
  let x_373 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_369 * vec3<f32>(x_370, x_370, x_370)) + x_373);
  let x_375 : vec3<f32> = u_xlat0;
  let x_376 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_375, x_376);
  let x_378 : f32 = u_xlat21;
  u_xlat21 = max(x_378, 0.001f);
  let x_381 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_381);
  let x_383 : f32 = u_xlat21;
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_383, x_383, x_383) * x_385);
  let x_387 : vec4<f32> = u_xlat6;
  let x_389 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), x_389);
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), x_393);
  let x_397 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_397, 0.0f, 1.0f);
  let x_401 : vec4<f32> = u_xlat6;
  let x_403 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), x_403);
  let x_405 : f32 = u_xlat9;
  u_xlat9 = clamp(x_405, 0.0f, 1.0f);
  let x_407 : vec3<f32> = u_xlat1;
  let x_408 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_407, x_408);
  let x_412 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_412, 0.0f, 1.0f);
  let x_417 : f32 = u_xlat0.x;
  let x_419 : f32 = u_xlat0.x;
  u_xlat7.x = (x_417 * x_419);
  let x_422 : vec3<f32> = u_xlat7;
  let x_424 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_422.x, x_422.x), vec2<f32>(x_424, x_424));
  let x_429 : f32 = u_xlat7.x;
  u_xlat7.x = (x_429 + -0.5f);
  let x_435 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat14;
  let x_439 : f32 = u_xlat14;
  u_xlat1.x = (x_438 * x_439);
  let x_443 : f32 = u_xlat1.x;
  let x_445 : f32 = u_xlat1.x;
  u_xlat1.x = (x_443 * x_445);
  let x_448 : f32 = u_xlat14;
  let x_450 : f32 = u_xlat1.x;
  u_xlat14 = (x_448 * x_450);
  let x_453 : f32 = u_xlat7.x;
  let x_454 : f32 = u_xlat14;
  u_xlat14 = ((x_453 * x_454) + 1.0f);
  let x_457 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_457)) + 1.0f);
  let x_464 : f32 = u_xlat1.x;
  let x_466 : f32 = u_xlat1.x;
  u_xlat8 = (x_464 * x_466);
  let x_468 : f32 = u_xlat8;
  let x_469 : f32 = u_xlat8;
  u_xlat8 = (x_468 * x_469);
  let x_472 : f32 = u_xlat1.x;
  let x_473 : f32 = u_xlat8;
  u_xlat1.x = (x_472 * x_473);
  let x_477 : f32 = u_xlat7.x;
  let x_479 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_477 * x_479) + 1.0f);
  let x_484 : f32 = u_xlat7.x;
  let x_485 : f32 = u_xlat14;
  u_xlat7.x = (x_484 * x_485);
  let x_488 : f32 = u_xlat22;
  let x_489 : f32 = u_xlat22;
  u_xlat14 = (x_488 * x_489);
  let x_491 : f32 = u_xlat14;
  u_xlat14 = max(x_491, 0.002f);
  let x_494 : f32 = u_xlat14;
  u_xlat1.x = (-(x_494) + 1.0f);
  let x_498 : f32 = u_xlat21;
  let x_501 : f32 = u_xlat1.x;
  let x_503 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_498) * x_501) + x_503);
  let x_506 : f32 = u_xlat2.x;
  let x_508 : f32 = u_xlat1.x;
  let x_510 : f32 = u_xlat14;
  u_xlat1.x = ((x_506 * x_508) + x_510);
  let x_513 : f32 = u_xlat21;
  let x_516 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_513) * x_516);
  let x_519 : f32 = u_xlat2.x;
  let x_520 : f32 = u_xlat8;
  let x_522 : f32 = u_xlat21;
  u_xlat21 = ((x_519 * x_520) + x_522);
  let x_524 : f32 = u_xlat21;
  u_xlat21 = (x_524 + 0.00001f);
  let x_527 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_527);
  let x_529 : f32 = u_xlat14;
  let x_530 : f32 = u_xlat14;
  u_xlat14 = (x_529 * x_530);
  let x_532 : f32 = u_xlat9;
  let x_533 : f32 = u_xlat14;
  let x_535 : f32 = u_xlat9;
  u_xlat1.x = ((x_532 * x_533) + -(x_535));
  let x_540 : f32 = u_xlat1.x;
  let x_541 : f32 = u_xlat9;
  u_xlat1.x = ((x_540 * x_541) + 1.0f);
  let x_545 : f32 = u_xlat14;
  u_xlat14 = (x_545 * 0.318309873f);
  let x_549 : f32 = u_xlat1.x;
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_549 * x_551) + 0.0000001f);
  let x_556 : f32 = u_xlat14;
  let x_558 : f32 = u_xlat1.x;
  u_xlat14 = (x_556 / x_558);
  let x_560 : f32 = u_xlat14;
  let x_561 : f32 = u_xlat21;
  u_xlat7.y = (x_560 * x_561);
  let x_564 : vec3<f32> = u_xlat2;
  let x_566 : vec3<f32> = u_xlat7;
  let x_568 : vec2<f32> = (vec2<f32>(x_564.x, x_564.x) * vec2<f32>(x_566.x, x_566.y));
  let x_569 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_572 : f32 = u_xlat7.y;
  u_xlat14 = (x_572 * 3.141592741f);
  let x_575 : f32 = u_xlat14;
  u_xlat14 = max(x_575, 0.0f);
  let x_577 : vec3<f32> = u_xlat3;
  let x_578 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_577, x_578);
  let x_581 : f32 = u_xlat21;
  u_xlatb21 = !((x_581 == 0.0f));
  let x_583 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_583);
  let x_585 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat14;
  u_xlat14 = (x_585 * x_586);
  let x_588 : vec3<f32> = u_xlat7;
  let x_590 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_588.x, x_588.x, x_588.x) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat5;
  let x_595 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_595, x_595, x_595));
  let x_599 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_599) + 1.0f);
  let x_604 : f32 = u_xlat0.x;
  let x_606 : f32 = u_xlat0.x;
  u_xlat22 = (x_604 * x_606);
  let x_608 : f32 = u_xlat22;
  let x_609 : f32 = u_xlat22;
  u_xlat22 = (x_608 * x_609);
  let x_612 : f32 = u_xlat0.x;
  let x_613 : f32 = u_xlat22;
  u_xlat0.x = (x_612 * x_613);
  let x_616 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_616) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_620 : vec3<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat0;
  let x_624 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x)) + x_624);
  let x_626 : vec3<f32> = u_xlat7;
  let x_627 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_626 * x_627);
  let x_631 : vec3<f32> = u_xlat4;
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
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

