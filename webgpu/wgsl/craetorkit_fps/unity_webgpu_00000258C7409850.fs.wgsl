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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

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
  var x_201 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
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
    let x_165 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_167 : vec3<f32> = (vec3<f32>(x_162.y, x_162.y, x_162.y) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_168 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_171 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_173 : vec3<f32> = vs_TEXCOORD5;
    let x_176 : vec4<f32> = u_xlat5;
    let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.x, x_173.x, x_173.x)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_182 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_184 : vec3<f32> = vs_TEXCOORD5;
    let x_187 : vec4<f32> = u_xlat5;
    let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat5;
    let x_195 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : bool = u_xlatb21;
    if (x_200) {
      let x_204 : vec4<f32> = u_xlat5;
      x_201 = vec3<f32>(x_204.x, x_204.y, x_204.z);
    } else {
      let x_207 : vec3<f32> = vs_TEXCOORD5;
      x_201 = x_207;
    }
    let x_208 : vec3<f32> = x_201;
    let x_209 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : vec4<f32> = u_xlat5;
    let x_216 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_218 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) + -(x_216));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat5;
    let x_224 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * x_224);
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_226.x, x_225.x, x_225.y, x_225.z);
    let x_229 : f32 = u_xlat5.y;
    u_xlat21 = ((x_229 * 0.25f) + 0.75f);
    let x_237 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_237 * 0.5f) + 0.75f);
    let x_241 : f32 = u_xlat21;
    let x_242 : f32 = u_xlat22;
    u_xlat5.x = max(x_241, x_242);
    let x_253 : vec4<f32> = u_xlat5;
    let x_255 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_253.x, x_253.z, x_253.w));
    u_xlat5 = x_255;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_262 : vec4<f32> = u_xlat5;
  let x_264 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_262, x_264);
  let x_266 : f32 = u_xlat21;
  u_xlat21 = clamp(x_266, 0.0f, 1.0f);
  let x_269 : vec3<f32> = u_xlat4;
  let x_270 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_269, x_270);
  let x_277 : f32 = u_xlat22;
  let x_279 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_277, x_277));
  u_xlat22 = x_279.x;
  let x_290 : vec3<f32> = u_xlat4;
  let x_291 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_290);
  u_xlat23 = x_291.w;
  let x_293 : f32 = u_xlat22;
  let x_294 : f32 = u_xlat23;
  u_xlat22 = (x_293 * x_294);
  let x_296 : f32 = u_xlat21;
  let x_297 : f32 = u_xlat22;
  u_xlat21 = (x_296 * x_297);
  let x_302 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_302;
  let x_306 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_306;
  let x_309 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_309;
  let x_311 : vec3<f32> = u_xlat4;
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_311, x_312);
  let x_314 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_314);
  let x_316 : f32 = u_xlat22;
  let x_318 : vec3<f32> = u_xlat4;
  let x_319 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * x_318);
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = u_xlat21;
  let x_327 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_323, x_323, x_323) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_332 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_332) + 1.0f);
  let x_335 : vec3<f32> = u_xlat4;
  let x_336 : f32 = u_xlat22;
  let x_339 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_335 * vec3<f32>(x_336, x_336, x_336)) + -(x_339));
  let x_342 : vec3<f32> = u_xlat4;
  let x_343 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_342, x_343);
  let x_345 : f32 = u_xlat22;
  u_xlat22 = max(x_345, 0.001f);
  let x_348 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_348);
  let x_350 : f32 = u_xlat22;
  let x_352 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_350, x_350, x_350) * x_352);
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), -(x_356));
  let x_359 : vec4<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat23;
  u_xlat23 = clamp(x_364, 0.0f, 1.0f);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), x_368);
  let x_372 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_372, 0.0f, 1.0f);
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), x_378);
  let x_380 : f32 = u_xlat9;
  u_xlat9 = clamp(x_380, 0.0f, 1.0f);
  let x_383 : f32 = u_xlat9;
  let x_384 : f32 = u_xlat9;
  u_xlat16 = (x_383 * x_384);
  let x_386 : f32 = u_xlat16;
  let x_388 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_386, x_386), vec2<f32>(x_388, x_388));
  let x_391 : f32 = u_xlat16;
  u_xlat16 = (x_391 + -0.5f);
  let x_394 : f32 = u_xlat23;
  u_xlat3.x = (-(x_394) + 1.0f);
  let x_400 : f32 = u_xlat3.x;
  let x_402 : f32 = u_xlat3.x;
  u_xlat10 = (x_400 * x_402);
  let x_404 : f32 = u_xlat10;
  let x_405 : f32 = u_xlat10;
  u_xlat10 = (x_404 * x_405);
  let x_408 : f32 = u_xlat3.x;
  let x_409 : f32 = u_xlat10;
  u_xlat3.x = (x_408 * x_409);
  let x_412 : f32 = u_xlat16;
  let x_414 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_412 * x_414) + 1.0f);
  let x_418 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_418)) + 1.0f);
  let x_423 : f32 = u_xlat10;
  let x_424 : f32 = u_xlat10;
  u_xlat17 = (x_423 * x_424);
  let x_426 : f32 = u_xlat17;
  let x_427 : f32 = u_xlat17;
  u_xlat17 = (x_426 * x_427);
  let x_429 : f32 = u_xlat10;
  let x_430 : f32 = u_xlat17;
  u_xlat10 = (x_429 * x_430);
  let x_432 : f32 = u_xlat16;
  let x_433 : f32 = u_xlat10;
  u_xlat16 = ((x_432 * x_433) + 1.0f);
  let x_436 : f32 = u_xlat16;
  let x_438 : f32 = u_xlat3.x;
  u_xlat16 = (x_436 * x_438);
  let x_440 : f32 = u_xlat23;
  let x_441 : f32 = u_xlat16;
  u_xlat16 = (x_440 * x_441);
  let x_443 : f32 = u_xlat21;
  let x_444 : f32 = u_xlat21;
  u_xlat21 = (x_443 * x_444);
  let x_446 : f32 = u_xlat21;
  u_xlat21 = max(x_446, 0.002f);
  let x_449 : f32 = u_xlat21;
  u_xlat3.x = (-(x_449) + 1.0f);
  let x_453 : f32 = u_xlat22;
  let x_456 : f32 = u_xlat3.x;
  let x_458 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_453) * x_456) + x_458);
  let x_460 : f32 = u_xlat23;
  let x_462 : f32 = u_xlat3.x;
  let x_464 : f32 = u_xlat21;
  u_xlat3.x = ((x_460 * x_462) + x_464);
  let x_467 : f32 = u_xlat22;
  let x_470 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_467) * x_470);
  let x_472 : f32 = u_xlat23;
  let x_473 : f32 = u_xlat10;
  let x_475 : f32 = u_xlat22;
  u_xlat22 = ((x_472 * x_473) + x_475);
  let x_477 : f32 = u_xlat22;
  u_xlat22 = (x_477 + 0.00001f);
  let x_480 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_480);
  let x_482 : f32 = u_xlat21;
  let x_483 : f32 = u_xlat21;
  u_xlat21 = (x_482 * x_483);
  let x_486 : f32 = u_xlat2.x;
  let x_487 : f32 = u_xlat21;
  let x_490 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_486 * x_487) + -(x_490));
  let x_495 : f32 = u_xlat3.x;
  let x_497 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_495 * x_497) + 1.0f);
  let x_501 : f32 = u_xlat21;
  u_xlat21 = (x_501 * 0.318309873f);
  let x_505 : f32 = u_xlat2.x;
  let x_507 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_505 * x_507) + 0.0000001f);
  let x_512 : f32 = u_xlat21;
  let x_514 : f32 = u_xlat2.x;
  u_xlat21 = (x_512 / x_514);
  let x_516 : f32 = u_xlat21;
  let x_517 : f32 = u_xlat22;
  u_xlat21 = (x_516 * x_517);
  let x_519 : f32 = u_xlat23;
  let x_520 : f32 = u_xlat21;
  u_xlat21 = (x_519 * x_520);
  let x_522 : f32 = u_xlat21;
  u_xlat21 = (x_522 * 3.141592741f);
  let x_525 : f32 = u_xlat21;
  u_xlat21 = max(x_525, 0.0f);
  let x_527 : vec3<f32> = u_xlat0;
  let x_528 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_527, x_528);
  let x_531 : f32 = u_xlat22;
  u_xlatb22 = !((x_531 == 0.0f));
  let x_533 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_533);
  let x_535 : f32 = u_xlat21;
  let x_536 : f32 = u_xlat22;
  u_xlat21 = (x_535 * x_536);
  let x_538 : f32 = u_xlat16;
  let x_540 : vec3<f32> = u_xlat6;
  let x_541 : vec3<f32> = (vec3<f32>(x_538, x_538, x_538) * x_540);
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_541.x, x_542.y, x_541.y, x_541.z);
  let x_544 : vec3<f32> = u_xlat6;
  let x_545 : f32 = u_xlat21;
  u_xlat3 = (x_544 * vec3<f32>(x_545, x_545, x_545));
  let x_548 : f32 = u_xlat9;
  u_xlat21 = (-(x_548) + 1.0f);
  let x_551 : f32 = u_xlat21;
  let x_552 : f32 = u_xlat21;
  u_xlat22 = (x_551 * x_552);
  let x_554 : f32 = u_xlat22;
  let x_555 : f32 = u_xlat22;
  u_xlat22 = (x_554 * x_555);
  let x_557 : f32 = u_xlat21;
  let x_558 : f32 = u_xlat22;
  u_xlat21 = (x_557 * x_558);
  let x_560 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_560) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_564 : vec3<f32> = u_xlat4;
  let x_565 : f32 = u_xlat21;
  let x_568 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_564 * vec3<f32>(x_565, x_565, x_565)) + x_568);
  let x_570 : vec3<f32> = u_xlat0;
  let x_571 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_570 * x_571);
  let x_575 : vec3<f32> = u_xlat1;
  let x_576 : vec4<f32> = u_xlat2;
  let x_579 : vec3<f32> = u_xlat0;
  let x_580 : vec3<f32> = ((x_575 * vec3<f32>(x_576.x, x_576.z, x_576.w)) + x_579);
  let x_581 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
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

