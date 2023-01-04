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

@group(0) @binding(5) var sampler_MainTex : sampler;

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

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat23 : f32;

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
  let x_295 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_293, x_293));
  u_xlat22 = x_295.x;
  let x_297 : f32 = u_xlat21;
  let x_298 : f32 = u_xlat22;
  u_xlat21 = (x_297 * x_298);
  let x_303 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_303;
  let x_307 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_307;
  let x_310 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_310;
  let x_312 : vec3<f32> = u_xlat4;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_312, x_313);
  let x_315 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_315);
  let x_317 : f32 = u_xlat22;
  let x_319 : vec3<f32> = u_xlat4;
  let x_320 : vec3<f32> = (vec3<f32>(x_317, x_317, x_317) * x_319);
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = u_xlat21;
  let x_328 : vec4<f32> = x_37.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_333 : f32 = x_37.x_Glossiness;
  u_xlat21 = (-(x_333) + 1.0f);
  let x_336 : vec3<f32> = u_xlat4;
  let x_337 : f32 = u_xlat22;
  let x_340 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_336 * vec3<f32>(x_337, x_337, x_337)) + -(x_340));
  let x_343 : vec3<f32> = u_xlat4;
  let x_344 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_343, x_344);
  let x_346 : f32 = u_xlat22;
  u_xlat22 = max(x_346, 0.001f);
  let x_349 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_349);
  let x_351 : f32 = u_xlat22;
  let x_353 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_351, x_351, x_351) * x_353);
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), -(x_357));
  let x_361 : vec4<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat23;
  u_xlat23 = clamp(x_366, 0.0f, 1.0f);
  let x_368 : vec4<f32> = u_xlat2;
  let x_370 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), x_370);
  let x_374 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_374, 0.0f, 1.0f);
  let x_378 : vec4<f32> = u_xlat5;
  let x_380 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), x_380);
  let x_382 : f32 = u_xlat9;
  u_xlat9 = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat9;
  let x_386 : f32 = u_xlat9;
  u_xlat16 = (x_385 * x_386);
  let x_388 : f32 = u_xlat16;
  let x_390 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_388, x_388), vec2<f32>(x_390, x_390));
  let x_393 : f32 = u_xlat16;
  u_xlat16 = (x_393 + -0.5f);
  let x_396 : f32 = u_xlat23;
  u_xlat3.x = (-(x_396) + 1.0f);
  let x_402 : f32 = u_xlat3.x;
  let x_404 : f32 = u_xlat3.x;
  u_xlat10 = (x_402 * x_404);
  let x_406 : f32 = u_xlat10;
  let x_407 : f32 = u_xlat10;
  u_xlat10 = (x_406 * x_407);
  let x_410 : f32 = u_xlat3.x;
  let x_411 : f32 = u_xlat10;
  u_xlat3.x = (x_410 * x_411);
  let x_414 : f32 = u_xlat16;
  let x_416 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_414 * x_416) + 1.0f);
  let x_420 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_420)) + 1.0f);
  let x_425 : f32 = u_xlat10;
  let x_426 : f32 = u_xlat10;
  u_xlat17 = (x_425 * x_426);
  let x_428 : f32 = u_xlat17;
  let x_429 : f32 = u_xlat17;
  u_xlat17 = (x_428 * x_429);
  let x_431 : f32 = u_xlat10;
  let x_432 : f32 = u_xlat17;
  u_xlat10 = (x_431 * x_432);
  let x_434 : f32 = u_xlat16;
  let x_435 : f32 = u_xlat10;
  u_xlat16 = ((x_434 * x_435) + 1.0f);
  let x_438 : f32 = u_xlat16;
  let x_440 : f32 = u_xlat3.x;
  u_xlat16 = (x_438 * x_440);
  let x_442 : f32 = u_xlat23;
  let x_443 : f32 = u_xlat16;
  u_xlat16 = (x_442 * x_443);
  let x_445 : f32 = u_xlat21;
  let x_446 : f32 = u_xlat21;
  u_xlat21 = (x_445 * x_446);
  let x_448 : f32 = u_xlat21;
  u_xlat21 = max(x_448, 0.002f);
  let x_451 : f32 = u_xlat21;
  u_xlat3.x = (-(x_451) + 1.0f);
  let x_455 : f32 = u_xlat22;
  let x_458 : f32 = u_xlat3.x;
  let x_460 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_455) * x_458) + x_460);
  let x_462 : f32 = u_xlat23;
  let x_464 : f32 = u_xlat3.x;
  let x_466 : f32 = u_xlat21;
  u_xlat3.x = ((x_462 * x_464) + x_466);
  let x_469 : f32 = u_xlat22;
  let x_472 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_469) * x_472);
  let x_474 : f32 = u_xlat23;
  let x_475 : f32 = u_xlat10;
  let x_477 : f32 = u_xlat22;
  u_xlat22 = ((x_474 * x_475) + x_477);
  let x_479 : f32 = u_xlat22;
  u_xlat22 = (x_479 + 0.00001f);
  let x_482 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_482);
  let x_484 : f32 = u_xlat21;
  let x_485 : f32 = u_xlat21;
  u_xlat21 = (x_484 * x_485);
  let x_488 : f32 = u_xlat2.x;
  let x_489 : f32 = u_xlat21;
  let x_492 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_488 * x_489) + -(x_492));
  let x_497 : f32 = u_xlat3.x;
  let x_499 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_497 * x_499) + 1.0f);
  let x_503 : f32 = u_xlat21;
  u_xlat21 = (x_503 * 0.318309873f);
  let x_507 : f32 = u_xlat2.x;
  let x_509 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_507 * x_509) + 0.0000001f);
  let x_514 : f32 = u_xlat21;
  let x_516 : f32 = u_xlat2.x;
  u_xlat21 = (x_514 / x_516);
  let x_518 : f32 = u_xlat21;
  let x_519 : f32 = u_xlat22;
  u_xlat21 = (x_518 * x_519);
  let x_521 : f32 = u_xlat23;
  let x_522 : f32 = u_xlat21;
  u_xlat21 = (x_521 * x_522);
  let x_524 : f32 = u_xlat21;
  u_xlat21 = (x_524 * 3.141592741f);
  let x_527 : f32 = u_xlat21;
  u_xlat21 = max(x_527, 0.0f);
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_535 : f32 = u_xlat22;
  u_xlatb22 = !((x_535 == 0.0f));
  let x_537 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_537);
  let x_539 : f32 = u_xlat21;
  let x_540 : f32 = u_xlat22;
  u_xlat21 = (x_539 * x_540);
  let x_542 : f32 = u_xlat16;
  let x_544 : vec3<f32> = u_xlat6;
  let x_545 : vec3<f32> = (vec3<f32>(x_542, x_542, x_542) * x_544);
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_546.y, x_545.y, x_545.z);
  let x_548 : vec3<f32> = u_xlat6;
  let x_549 : f32 = u_xlat21;
  u_xlat3 = (x_548 * vec3<f32>(x_549, x_549, x_549));
  let x_552 : f32 = u_xlat9;
  u_xlat21 = (-(x_552) + 1.0f);
  let x_555 : f32 = u_xlat21;
  let x_556 : f32 = u_xlat21;
  u_xlat22 = (x_555 * x_556);
  let x_558 : f32 = u_xlat22;
  let x_559 : f32 = u_xlat22;
  u_xlat22 = (x_558 * x_559);
  let x_561 : f32 = u_xlat21;
  let x_562 : f32 = u_xlat22;
  u_xlat21 = (x_561 * x_562);
  let x_564 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_569 : vec3<f32> = u_xlat4;
  let x_570 : f32 = u_xlat21;
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = ((x_569 * vec3<f32>(x_570, x_570, x_570)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat0;
  let x_580 : vec3<f32> = u_xlat3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) * x_580);
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec3<f32> = u_xlat1;
  let x_585 : vec4<f32> = u_xlat2;
  let x_588 : vec4<f32> = u_xlat0;
  let x_590 : vec3<f32> = ((x_584 * vec3<f32>(x_585.x, x_585.z, x_585.w)) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
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

