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
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_202 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + x_128);
  let x_132 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_151 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_151 == 1.0f);
  let x_154 : bool = u_xlatb21;
  if (x_154) {
    let x_159 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_159 == 1.0f);
    let x_162 : vec3<f32> = vs_TEXCOORD5;
    let x_166 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_168 : vec3<f32> = (vec3<f32>(x_162.y, x_162.y, x_162.y) * vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_172 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_174 : vec3<f32> = vs_TEXCOORD5;
    let x_177 : vec4<f32> = u_xlat5;
    let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.x, x_174.x, x_174.x)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_185 : vec3<f32> = vs_TEXCOORD5;
    let x_188 : vec4<f32> = u_xlat5;
    let x_190 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.z, x_185.z, x_185.z)) + vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat5;
    let x_196 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_198 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) + vec3<f32>(x_196.x, x_196.y, x_196.z));
    let x_199 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : bool = u_xlatb21;
    if (x_201) {
      let x_205 : vec4<f32> = u_xlat5;
      x_202 = vec3<f32>(x_205.x, x_205.y, x_205.z);
    } else {
      let x_208 : vec3<f32> = vs_TEXCOORD5;
      x_202 = x_208;
    }
    let x_209 : vec3<f32> = x_202;
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat5;
    let x_217 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_219 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + -(x_217));
    let x_220 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat5;
    let x_226 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_227 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * x_226);
    let x_228 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_228.x, x_227.x, x_227.y, x_227.z);
    let x_231 : f32 = u_xlat5.y;
    u_xlat21 = ((x_231 * 0.25f) + 0.75f);
    let x_239 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_239 * 0.5f) + 0.75f);
    let x_243 : f32 = u_xlat21;
    let x_244 : f32 = u_xlat22;
    u_xlat5.x = max(x_243, x_244);
    let x_255 : vec4<f32> = u_xlat5;
    let x_257 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_255.x, x_255.z, x_255.w));
    u_xlat5 = x_257;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_264, x_266);
  let x_268 : f32 = u_xlat21;
  u_xlat21 = clamp(x_268, 0.0f, 1.0f);
  let x_271 : vec3<f32> = u_xlat4;
  let x_272 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_271, x_272);
  let x_279 : f32 = u_xlat22;
  let x_281 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_279, x_279));
  u_xlat22 = x_281.x;
  let x_283 : f32 = u_xlat21;
  let x_284 : f32 = u_xlat22;
  u_xlat21 = (x_283 * x_284);
  let x_289 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_289;
  let x_293 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_293;
  let x_296 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_296;
  let x_298 : vec3<f32> = u_xlat4;
  let x_299 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_298, x_299);
  let x_301 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_301);
  let x_303 : f32 = u_xlat22;
  let x_305 : vec3<f32> = u_xlat4;
  let x_306 : vec3<f32> = (vec3<f32>(x_303, x_303, x_303) * x_305);
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : f32 = u_xlat21;
  let x_314 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_319 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_319) + 1.0f);
  let x_322 : vec3<f32> = u_xlat4;
  let x_323 : f32 = u_xlat22;
  let x_326 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_322 * vec3<f32>(x_323, x_323, x_323)) + -(x_326));
  let x_329 : vec3<f32> = u_xlat4;
  let x_330 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_329, x_330);
  let x_332 : f32 = u_xlat22;
  u_xlat22 = max(x_332, 0.001f);
  let x_335 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat22;
  let x_339 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_337, x_337, x_337) * x_339);
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), -(x_343));
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat23;
  u_xlat23 = clamp(x_352, 0.0f, 1.0f);
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), x_356);
  let x_360 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_360, 0.0f, 1.0f);
  let x_364 : vec4<f32> = u_xlat5;
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), x_366);
  let x_368 : f32 = u_xlat9;
  u_xlat9 = clamp(x_368, 0.0f, 1.0f);
  let x_371 : f32 = u_xlat9;
  let x_372 : f32 = u_xlat9;
  u_xlat16 = (x_371 * x_372);
  let x_374 : f32 = u_xlat16;
  let x_376 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_374, x_374), vec2<f32>(x_376, x_376));
  let x_379 : f32 = u_xlat16;
  u_xlat16 = (x_379 + -0.5f);
  let x_382 : f32 = u_xlat23;
  u_xlat3.x = (-(x_382) + 1.0f);
  let x_388 : f32 = u_xlat3.x;
  let x_390 : f32 = u_xlat3.x;
  u_xlat10 = (x_388 * x_390);
  let x_392 : f32 = u_xlat10;
  let x_393 : f32 = u_xlat10;
  u_xlat10 = (x_392 * x_393);
  let x_396 : f32 = u_xlat3.x;
  let x_397 : f32 = u_xlat10;
  u_xlat3.x = (x_396 * x_397);
  let x_400 : f32 = u_xlat16;
  let x_402 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_400 * x_402) + 1.0f);
  let x_406 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_406)) + 1.0f);
  let x_411 : f32 = u_xlat10;
  let x_412 : f32 = u_xlat10;
  u_xlat17 = (x_411 * x_412);
  let x_414 : f32 = u_xlat17;
  let x_415 : f32 = u_xlat17;
  u_xlat17 = (x_414 * x_415);
  let x_417 : f32 = u_xlat10;
  let x_418 : f32 = u_xlat17;
  u_xlat10 = (x_417 * x_418);
  let x_420 : f32 = u_xlat16;
  let x_421 : f32 = u_xlat10;
  u_xlat16 = ((x_420 * x_421) + 1.0f);
  let x_424 : f32 = u_xlat16;
  let x_426 : f32 = u_xlat3.x;
  u_xlat16 = (x_424 * x_426);
  let x_428 : f32 = u_xlat23;
  let x_429 : f32 = u_xlat16;
  u_xlat16 = (x_428 * x_429);
  let x_431 : f32 = u_xlat21;
  let x_432 : f32 = u_xlat21;
  u_xlat21 = (x_431 * x_432);
  let x_434 : f32 = u_xlat21;
  u_xlat21 = max(x_434, 0.002f);
  let x_437 : f32 = u_xlat21;
  u_xlat3.x = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat22;
  let x_444 : f32 = u_xlat3.x;
  let x_446 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_441) * x_444) + x_446);
  let x_448 : f32 = u_xlat23;
  let x_450 : f32 = u_xlat3.x;
  let x_452 : f32 = u_xlat21;
  u_xlat3.x = ((x_448 * x_450) + x_452);
  let x_455 : f32 = u_xlat22;
  let x_458 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_455) * x_458);
  let x_460 : f32 = u_xlat23;
  let x_461 : f32 = u_xlat10;
  let x_463 : f32 = u_xlat22;
  u_xlat22 = ((x_460 * x_461) + x_463);
  let x_465 : f32 = u_xlat22;
  u_xlat22 = (x_465 + 0.00001f);
  let x_468 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_468);
  let x_470 : f32 = u_xlat21;
  let x_471 : f32 = u_xlat21;
  u_xlat21 = (x_470 * x_471);
  let x_474 : f32 = u_xlat2.x;
  let x_475 : f32 = u_xlat21;
  let x_478 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_474 * x_475) + -(x_478));
  let x_483 : f32 = u_xlat3.x;
  let x_485 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_483 * x_485) + 1.0f);
  let x_489 : f32 = u_xlat21;
  u_xlat21 = (x_489 * 0.318309873f);
  let x_493 : f32 = u_xlat2.x;
  let x_495 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_493 * x_495) + 0.0000001f);
  let x_500 : f32 = u_xlat21;
  let x_502 : f32 = u_xlat2.x;
  u_xlat21 = (x_500 / x_502);
  let x_504 : f32 = u_xlat21;
  let x_505 : f32 = u_xlat22;
  u_xlat21 = (x_504 * x_505);
  let x_507 : f32 = u_xlat23;
  let x_508 : f32 = u_xlat21;
  u_xlat21 = (x_507 * x_508);
  let x_510 : f32 = u_xlat21;
  u_xlat21 = (x_510 * 3.141592741f);
  let x_513 : f32 = u_xlat21;
  u_xlat21 = max(x_513, 0.0f);
  let x_515 : vec3<f32> = u_xlat0;
  let x_516 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_515, x_516);
  let x_519 : f32 = u_xlat22;
  u_xlatb22 = !((x_519 == 0.0f));
  let x_521 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_521);
  let x_523 : f32 = u_xlat21;
  let x_524 : f32 = u_xlat22;
  u_xlat21 = (x_523 * x_524);
  let x_526 : f32 = u_xlat16;
  let x_528 : vec3<f32> = u_xlat6;
  let x_529 : vec3<f32> = (vec3<f32>(x_526, x_526, x_526) * x_528);
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_530.y, x_529.y, x_529.z);
  let x_532 : vec3<f32> = u_xlat6;
  let x_533 : f32 = u_xlat21;
  u_xlat3 = (x_532 * vec3<f32>(x_533, x_533, x_533));
  let x_536 : f32 = u_xlat9;
  u_xlat21 = (-(x_536) + 1.0f);
  let x_539 : f32 = u_xlat21;
  let x_540 : f32 = u_xlat21;
  u_xlat22 = (x_539 * x_540);
  let x_542 : f32 = u_xlat22;
  let x_543 : f32 = u_xlat22;
  u_xlat22 = (x_542 * x_543);
  let x_545 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat22;
  u_xlat21 = (x_545 * x_546);
  let x_548 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_548) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_552 : vec3<f32> = u_xlat4;
  let x_553 : f32 = u_xlat21;
  let x_556 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_552 * vec3<f32>(x_553, x_553, x_553)) + x_556);
  let x_558 : vec3<f32> = u_xlat0;
  let x_559 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_558 * x_559);
  let x_561 : vec3<f32> = u_xlat1;
  let x_562 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_561 * vec3<f32>(x_562.x, x_562.z, x_562.w)) + x_565);
  let x_568 : f32 = vs_TEXCOORD1.w;
  let x_570 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_568 / x_570);
  let x_572 : f32 = u_xlat21;
  u_xlat21 = (-(x_572) + 1.0f);
  let x_575 : f32 = u_xlat21;
  let x_577 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_575 * x_577);
  let x_579 : f32 = u_xlat21;
  u_xlat21 = max(x_579, 0.0f);
  let x_581 : f32 = u_xlat21;
  let x_583 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_581 * x_583);
  let x_585 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat21;
  u_xlat21 = (x_585 * -(x_586));
  let x_589 : f32 = u_xlat21;
  u_xlat21 = exp2(x_589);
  let x_593 : vec3<f32> = u_xlat0;
  let x_594 : f32 = u_xlat21;
  let x_596 : vec3<f32> = (x_593 * vec3<f32>(x_594, x_594, x_594));
  let x_597 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
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

