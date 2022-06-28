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
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlat23 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_218 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat21;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat21;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat21;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = x_37.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_140 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD5;
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + x_145);
  let x_149 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_151 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec3<f32> = u_xlat4;
  let x_159 : vec4<f32> = x_37.unity_WorldToLight[3i];
  u_xlat4 = (x_156 + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_167 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_167 == 1.0f);
  let x_170 : bool = u_xlatb21;
  if (x_170) {
    let x_175 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_175 == 1.0f);
    let x_178 : vec3<f32> = vs_TEXCOORD5;
    let x_181 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_183 : vec3<f32> = (vec3<f32>(x_178.y, x_178.y, x_178.y) * vec3<f32>(x_181.x, x_181.y, x_181.z));
    let x_184 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
    let x_187 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_189 : vec3<f32> = vs_TEXCOORD5;
    let x_192 : vec4<f32> = u_xlat5;
    let x_194 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.x, x_189.x, x_189.x)) + vec3<f32>(x_192.x, x_192.y, x_192.z));
    let x_195 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_198 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_200 : vec3<f32> = vs_TEXCOORD5;
    let x_203 : vec4<f32> = u_xlat5;
    let x_205 : vec3<f32> = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.z, x_200.z, x_200.z)) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat5;
    let x_211 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_213 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) + vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : bool = u_xlatb21;
    if (x_216) {
      let x_221 : vec4<f32> = u_xlat5;
      x_218 = vec3<f32>(x_221.x, x_221.y, x_221.z);
    } else {
      let x_224 : vec3<f32> = vs_TEXCOORD5;
      x_218 = x_224;
    }
    let x_225 : vec3<f32> = x_218;
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat5;
    let x_233 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_235 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + -(x_233));
    let x_236 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * x_241);
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
    let x_246 : f32 = u_xlat5.y;
    u_xlat21 = ((x_246 * 0.25f) + 0.75f);
    let x_254 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_254 * 0.5f) + 0.75f);
    let x_258 : f32 = u_xlat21;
    let x_259 : f32 = u_xlat22;
    u_xlat5.x = max(x_258, x_259);
    let x_270 : vec4<f32> = u_xlat5;
    let x_272 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_270.x, x_270.z, x_270.w));
    u_xlat5 = x_272;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_278 : vec4<f32> = u_xlat5;
  let x_280 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_278, x_280);
  let x_282 : f32 = u_xlat21;
  u_xlat21 = clamp(x_282, 0.0f, 1.0f);
  let x_285 : vec3<f32> = u_xlat4;
  let x_286 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_285, x_286);
  let x_293 : f32 = u_xlat22;
  let x_295 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_293, x_293));
  u_xlat22 = x_295.x;
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_306);
  u_xlat23 = x_307.w;
  let x_309 : f32 = u_xlat22;
  let x_310 : f32 = u_xlat23;
  u_xlat22 = (x_309 * x_310);
  let x_312 : f32 = u_xlat21;
  let x_313 : f32 = u_xlat22;
  u_xlat21 = (x_312 * x_313);
  let x_318 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_318;
  let x_322 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_322;
  let x_325 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_325;
  let x_327 : vec3<f32> = u_xlat4;
  let x_328 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_327, x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat22;
  let x_334 : vec3<f32> = u_xlat4;
  let x_335 : vec3<f32> = (vec3<f32>(x_332, x_332, x_332) * x_334);
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_339 : f32 = u_xlat21;
  let x_343 : vec4<f32> = x_37.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : f32 = x_37.x_Glossiness;
  u_xlat21 = (-(x_348) + 1.0f);
  let x_351 : vec3<f32> = u_xlat4;
  let x_352 : f32 = u_xlat22;
  let x_355 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_351 * vec3<f32>(x_352, x_352, x_352)) + -(x_355));
  let x_358 : vec3<f32> = u_xlat4;
  let x_359 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_358, x_359);
  let x_361 : f32 = u_xlat22;
  u_xlat22 = max(x_361, 0.001f);
  let x_364 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_364);
  let x_366 : f32 = u_xlat22;
  let x_368 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), -(x_372));
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : f32 = u_xlat23;
  u_xlat23 = clamp(x_380, 0.0f, 1.0f);
  let x_382 : vec4<f32> = u_xlat2;
  let x_384 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), x_384);
  let x_388 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_388, 0.0f, 1.0f);
  let x_392 : vec4<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), x_394);
  let x_396 : f32 = u_xlat9;
  u_xlat9 = clamp(x_396, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat9;
  let x_400 : f32 = u_xlat9;
  u_xlat16 = (x_399 * x_400);
  let x_402 : f32 = u_xlat16;
  let x_404 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_402, x_402), vec2<f32>(x_404, x_404));
  let x_407 : f32 = u_xlat16;
  u_xlat16 = (x_407 + -0.5f);
  let x_410 : f32 = u_xlat23;
  u_xlat3.x = (-(x_410) + 1.0f);
  let x_416 : f32 = u_xlat3.x;
  let x_418 : f32 = u_xlat3.x;
  u_xlat10 = (x_416 * x_418);
  let x_420 : f32 = u_xlat10;
  let x_421 : f32 = u_xlat10;
  u_xlat10 = (x_420 * x_421);
  let x_424 : f32 = u_xlat3.x;
  let x_425 : f32 = u_xlat10;
  u_xlat3.x = (x_424 * x_425);
  let x_428 : f32 = u_xlat16;
  let x_430 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_428 * x_430) + 1.0f);
  let x_434 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_434)) + 1.0f);
  let x_439 : f32 = u_xlat10;
  let x_440 : f32 = u_xlat10;
  u_xlat17 = (x_439 * x_440);
  let x_442 : f32 = u_xlat17;
  let x_443 : f32 = u_xlat17;
  u_xlat17 = (x_442 * x_443);
  let x_445 : f32 = u_xlat10;
  let x_446 : f32 = u_xlat17;
  u_xlat10 = (x_445 * x_446);
  let x_448 : f32 = u_xlat16;
  let x_449 : f32 = u_xlat10;
  u_xlat16 = ((x_448 * x_449) + 1.0f);
  let x_452 : f32 = u_xlat16;
  let x_454 : f32 = u_xlat3.x;
  u_xlat16 = (x_452 * x_454);
  let x_456 : f32 = u_xlat23;
  let x_457 : f32 = u_xlat16;
  u_xlat16 = (x_456 * x_457);
  let x_459 : f32 = u_xlat21;
  let x_460 : f32 = u_xlat21;
  u_xlat21 = (x_459 * x_460);
  let x_462 : f32 = u_xlat21;
  u_xlat21 = max(x_462, 0.002f);
  let x_465 : f32 = u_xlat21;
  u_xlat3.x = (-(x_465) + 1.0f);
  let x_469 : f32 = u_xlat22;
  let x_472 : f32 = u_xlat3.x;
  let x_474 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_469) * x_472) + x_474);
  let x_476 : f32 = u_xlat23;
  let x_478 : f32 = u_xlat3.x;
  let x_480 : f32 = u_xlat21;
  u_xlat3.x = ((x_476 * x_478) + x_480);
  let x_483 : f32 = u_xlat22;
  let x_486 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_483) * x_486);
  let x_488 : f32 = u_xlat23;
  let x_489 : f32 = u_xlat10;
  let x_491 : f32 = u_xlat22;
  u_xlat22 = ((x_488 * x_489) + x_491);
  let x_493 : f32 = u_xlat22;
  u_xlat22 = (x_493 + 0.00001f);
  let x_496 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_496);
  let x_498 : f32 = u_xlat21;
  let x_499 : f32 = u_xlat21;
  u_xlat21 = (x_498 * x_499);
  let x_502 : f32 = u_xlat2.x;
  let x_503 : f32 = u_xlat21;
  let x_506 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_502 * x_503) + -(x_506));
  let x_511 : f32 = u_xlat3.x;
  let x_513 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_511 * x_513) + 1.0f);
  let x_517 : f32 = u_xlat21;
  u_xlat21 = (x_517 * 0.318309873f);
  let x_521 : f32 = u_xlat2.x;
  let x_523 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_521 * x_523) + 0.0000001f);
  let x_528 : f32 = u_xlat21;
  let x_530 : f32 = u_xlat2.x;
  u_xlat21 = (x_528 / x_530);
  let x_532 : f32 = u_xlat21;
  let x_533 : f32 = u_xlat22;
  u_xlat21 = (x_532 * x_533);
  let x_535 : f32 = u_xlat23;
  let x_536 : f32 = u_xlat21;
  u_xlat21 = (x_535 * x_536);
  let x_538 : f32 = u_xlat21;
  u_xlat21 = (x_538 * 3.141592741f);
  let x_541 : f32 = u_xlat21;
  u_xlat21 = max(x_541, 0.0f);
  let x_543 : vec4<f32> = u_xlat0;
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_543.x, x_543.y, x_543.z), vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_549 : f32 = u_xlat22;
  u_xlatb22 = !((x_549 == 0.0f));
  let x_551 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_551);
  let x_553 : f32 = u_xlat21;
  let x_554 : f32 = u_xlat22;
  u_xlat21 = (x_553 * x_554);
  let x_556 : f32 = u_xlat16;
  let x_558 : vec3<f32> = u_xlat6;
  let x_559 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * x_558);
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_559.z);
  let x_562 : vec3<f32> = u_xlat6;
  let x_563 : f32 = u_xlat21;
  u_xlat3 = (x_562 * vec3<f32>(x_563, x_563, x_563));
  let x_566 : f32 = u_xlat9;
  u_xlat21 = (-(x_566) + 1.0f);
  let x_569 : f32 = u_xlat21;
  let x_570 : f32 = u_xlat21;
  u_xlat22 = (x_569 * x_570);
  let x_572 : f32 = u_xlat22;
  let x_573 : f32 = u_xlat22;
  u_xlat22 = (x_572 * x_573);
  let x_575 : f32 = u_xlat21;
  let x_576 : f32 = u_xlat22;
  u_xlat21 = (x_575 * x_576);
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_578.x, x_578.y, x_578.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_583 : vec3<f32> = u_xlat4;
  let x_584 : f32 = u_xlat21;
  let x_587 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = ((x_583 * vec3<f32>(x_584, x_584, x_584)) + vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = u_xlat3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) * x_594);
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec3<f32> = u_xlat1;
  let x_599 : vec4<f32> = u_xlat2;
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = ((x_598 * vec3<f32>(x_599.x, x_599.z, x_599.w)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
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

