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
  var x_201 : vec3<f32>;
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
  let x_279 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_277, x_277));
  u_xlat22 = x_279.x;
  let x_281 : f32 = u_xlat21;
  let x_282 : f32 = u_xlat22;
  u_xlat21 = (x_281 * x_282);
  let x_287 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_287;
  let x_291 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_291;
  let x_294 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_294;
  let x_296 : vec3<f32> = u_xlat4;
  let x_297 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_296, x_297);
  let x_299 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_299);
  let x_301 : f32 = u_xlat22;
  let x_303 : vec3<f32> = u_xlat4;
  let x_304 : vec3<f32> = (vec3<f32>(x_301, x_301, x_301) * x_303);
  let x_305 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : f32 = u_xlat21;
  let x_312 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_308, x_308, x_308) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_317 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_317) + 1.0f);
  let x_320 : vec3<f32> = u_xlat4;
  let x_321 : f32 = u_xlat22;
  let x_324 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_320 * vec3<f32>(x_321, x_321, x_321)) + -(x_324));
  let x_327 : vec3<f32> = u_xlat4;
  let x_328 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_327, x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = max(x_330, 0.001f);
  let x_333 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_333);
  let x_335 : f32 = u_xlat22;
  let x_337 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_335, x_335, x_335) * x_337);
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), -(x_341));
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : f32 = u_xlat23;
  u_xlat23 = clamp(x_350, 0.0f, 1.0f);
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_352.x, x_352.y, x_352.z), x_354);
  let x_358 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_358, 0.0f, 1.0f);
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), x_364);
  let x_366 : f32 = u_xlat9;
  u_xlat9 = clamp(x_366, 0.0f, 1.0f);
  let x_369 : f32 = u_xlat9;
  let x_370 : f32 = u_xlat9;
  u_xlat16 = (x_369 * x_370);
  let x_372 : f32 = u_xlat16;
  let x_374 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_372, x_372), vec2<f32>(x_374, x_374));
  let x_377 : f32 = u_xlat16;
  u_xlat16 = (x_377 + -0.5f);
  let x_380 : f32 = u_xlat23;
  u_xlat3.x = (-(x_380) + 1.0f);
  let x_386 : f32 = u_xlat3.x;
  let x_388 : f32 = u_xlat3.x;
  u_xlat10 = (x_386 * x_388);
  let x_390 : f32 = u_xlat10;
  let x_391 : f32 = u_xlat10;
  u_xlat10 = (x_390 * x_391);
  let x_394 : f32 = u_xlat3.x;
  let x_395 : f32 = u_xlat10;
  u_xlat3.x = (x_394 * x_395);
  let x_398 : f32 = u_xlat16;
  let x_400 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_398 * x_400) + 1.0f);
  let x_404 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_404)) + 1.0f);
  let x_409 : f32 = u_xlat10;
  let x_410 : f32 = u_xlat10;
  u_xlat17 = (x_409 * x_410);
  let x_412 : f32 = u_xlat17;
  let x_413 : f32 = u_xlat17;
  u_xlat17 = (x_412 * x_413);
  let x_415 : f32 = u_xlat10;
  let x_416 : f32 = u_xlat17;
  u_xlat10 = (x_415 * x_416);
  let x_418 : f32 = u_xlat16;
  let x_419 : f32 = u_xlat10;
  u_xlat16 = ((x_418 * x_419) + 1.0f);
  let x_422 : f32 = u_xlat16;
  let x_424 : f32 = u_xlat3.x;
  u_xlat16 = (x_422 * x_424);
  let x_426 : f32 = u_xlat23;
  let x_427 : f32 = u_xlat16;
  u_xlat16 = (x_426 * x_427);
  let x_429 : f32 = u_xlat21;
  let x_430 : f32 = u_xlat21;
  u_xlat21 = (x_429 * x_430);
  let x_432 : f32 = u_xlat21;
  u_xlat21 = max(x_432, 0.002f);
  let x_435 : f32 = u_xlat21;
  u_xlat3.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat22;
  let x_442 : f32 = u_xlat3.x;
  let x_444 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_439) * x_442) + x_444);
  let x_446 : f32 = u_xlat23;
  let x_448 : f32 = u_xlat3.x;
  let x_450 : f32 = u_xlat21;
  u_xlat3.x = ((x_446 * x_448) + x_450);
  let x_453 : f32 = u_xlat22;
  let x_456 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_453) * x_456);
  let x_458 : f32 = u_xlat23;
  let x_459 : f32 = u_xlat10;
  let x_461 : f32 = u_xlat22;
  u_xlat22 = ((x_458 * x_459) + x_461);
  let x_463 : f32 = u_xlat22;
  u_xlat22 = (x_463 + 0.00001f);
  let x_466 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_466);
  let x_468 : f32 = u_xlat21;
  let x_469 : f32 = u_xlat21;
  u_xlat21 = (x_468 * x_469);
  let x_472 : f32 = u_xlat2.x;
  let x_473 : f32 = u_xlat21;
  let x_476 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_472 * x_473) + -(x_476));
  let x_481 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_481 * x_483) + 1.0f);
  let x_487 : f32 = u_xlat21;
  u_xlat21 = (x_487 * 0.318309873f);
  let x_491 : f32 = u_xlat2.x;
  let x_493 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_491 * x_493) + 0.0000001f);
  let x_498 : f32 = u_xlat21;
  let x_500 : f32 = u_xlat2.x;
  u_xlat21 = (x_498 / x_500);
  let x_502 : f32 = u_xlat21;
  let x_503 : f32 = u_xlat22;
  u_xlat21 = (x_502 * x_503);
  let x_505 : f32 = u_xlat23;
  let x_506 : f32 = u_xlat21;
  u_xlat21 = (x_505 * x_506);
  let x_508 : f32 = u_xlat21;
  u_xlat21 = (x_508 * 3.141592741f);
  let x_511 : f32 = u_xlat21;
  u_xlat21 = max(x_511, 0.0f);
  let x_513 : vec3<f32> = u_xlat0;
  let x_514 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_513, x_514);
  let x_517 : f32 = u_xlat22;
  u_xlatb22 = !((x_517 == 0.0f));
  let x_519 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_519);
  let x_521 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat22;
  u_xlat21 = (x_521 * x_522);
  let x_524 : f32 = u_xlat16;
  let x_526 : vec3<f32> = u_xlat6;
  let x_527 : vec3<f32> = (vec3<f32>(x_524, x_524, x_524) * x_526);
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_528.y, x_527.y, x_527.z);
  let x_530 : vec3<f32> = u_xlat6;
  let x_531 : f32 = u_xlat21;
  u_xlat3 = (x_530 * vec3<f32>(x_531, x_531, x_531));
  let x_534 : f32 = u_xlat9;
  u_xlat21 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat21;
  let x_538 : f32 = u_xlat21;
  u_xlat22 = (x_537 * x_538);
  let x_540 : f32 = u_xlat22;
  let x_541 : f32 = u_xlat22;
  u_xlat22 = (x_540 * x_541);
  let x_543 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat22;
  u_xlat21 = (x_543 * x_544);
  let x_546 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_546) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_550 : vec3<f32> = u_xlat4;
  let x_551 : f32 = u_xlat21;
  let x_554 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_550 * vec3<f32>(x_551, x_551, x_551)) + x_554);
  let x_556 : vec3<f32> = u_xlat0;
  let x_557 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_556 * x_557);
  let x_561 : vec3<f32> = u_xlat1;
  let x_562 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = u_xlat0;
  let x_566 : vec3<f32> = ((x_561 * vec3<f32>(x_562.x, x_562.z, x_562.w)) + x_565);
  let x_567 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
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

