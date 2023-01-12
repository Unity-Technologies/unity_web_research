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

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_233 : vec3<f32>;
  var u_xlat22 : f32;
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
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat21;
  u_xlat23 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat21;
  let x_141 : f32 = u_xlat23;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_169 : vec3<f32> = vs_TEXCOORD5;
  let x_172 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec3<f32> = u_xlat4;
  let x_177 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_174 + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_184 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_184 == 1.0f);
  let x_186 : bool = u_xlatb21;
  if (x_186) {
    let x_191 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_191 == 1.0f);
    let x_194 : vec3<f32> = vs_TEXCOORD5;
    let x_197 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_203 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_205 : vec3<f32> = vs_TEXCOORD5;
    let x_208 : vec4<f32> = u_xlat5;
    let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_205.x, x_205.x, x_205.x)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_214 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_216 : vec3<f32> = vs_TEXCOORD5;
    let x_219 : vec4<f32> = u_xlat5;
    let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.z, x_216.z, x_216.z)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : vec4<f32> = u_xlat5;
    let x_227 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_229 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : bool = u_xlatb21;
    if (x_232) {
      let x_236 : vec4<f32> = u_xlat5;
      x_233 = vec3<f32>(x_236.x, x_236.y, x_236.z);
    } else {
      let x_239 : vec3<f32> = vs_TEXCOORD5;
      x_233 = x_239;
    }
    let x_240 : vec3<f32> = x_233;
    let x_241 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_243 : vec4<f32> = u_xlat5;
    let x_248 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_250 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) + -(x_248));
    let x_251 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : vec4<f32> = u_xlat5;
    let x_256 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) * x_256);
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
    let x_261 : f32 = u_xlat5.y;
    u_xlat21 = ((x_261 * 0.25f) + 0.75f);
    let x_269 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_269 * 0.5f) + 0.75f);
    let x_273 : f32 = u_xlat21;
    let x_274 : f32 = u_xlat22;
    u_xlat5.x = max(x_273, x_274);
    let x_285 : vec4<f32> = u_xlat5;
    let x_287 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_285.x, x_285.z, x_285.w));
    u_xlat5 = x_287;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_293, x_295);
  let x_297 : f32 = u_xlat21;
  u_xlat21 = clamp(x_297, 0.0f, 1.0f);
  let x_300 : vec3<f32> = u_xlat4;
  let x_301 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_300, x_301);
  let x_308 : f32 = u_xlat22;
  let x_310 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_308, x_308));
  u_xlat22 = x_310.x;
  let x_320 : vec3<f32> = u_xlat4;
  let x_321 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_320);
  u_xlat23 = x_321.w;
  let x_323 : f32 = u_xlat22;
  let x_324 : f32 = u_xlat23;
  u_xlat22 = (x_323 * x_324);
  let x_326 : f32 = u_xlat21;
  let x_327 : f32 = u_xlat22;
  u_xlat21 = (x_326 * x_327);
  let x_332 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_332;
  let x_336 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_336;
  let x_339 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_339;
  let x_341 : vec3<f32> = u_xlat4;
  let x_342 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_341, x_342);
  let x_344 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_344);
  let x_346 : f32 = u_xlat22;
  let x_348 : vec3<f32> = u_xlat4;
  let x_349 : vec3<f32> = (vec3<f32>(x_346, x_346, x_346) * x_348);
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : f32 = u_xlat21;
  let x_357 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_362 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_362) + 1.0f);
  let x_365 : vec3<f32> = u_xlat4;
  let x_366 : f32 = u_xlat22;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_365 * vec3<f32>(x_366, x_366, x_366)) + -(x_369));
  let x_372 : vec3<f32> = u_xlat4;
  let x_373 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_372, x_373);
  let x_375 : f32 = u_xlat22;
  u_xlat22 = max(x_375, 0.001f);
  let x_378 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat22;
  let x_382 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), -(x_386));
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat23;
  u_xlat23 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), x_398);
  let x_402 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_402, 0.0f, 1.0f);
  let x_406 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), x_408);
  let x_410 : f32 = u_xlat9;
  u_xlat9 = clamp(x_410, 0.0f, 1.0f);
  let x_413 : f32 = u_xlat9;
  let x_414 : f32 = u_xlat9;
  u_xlat16 = (x_413 * x_414);
  let x_416 : f32 = u_xlat16;
  let x_418 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_416, x_416), vec2<f32>(x_418, x_418));
  let x_421 : f32 = u_xlat16;
  u_xlat16 = (x_421 + -0.5f);
  let x_424 : f32 = u_xlat23;
  u_xlat3.x = (-(x_424) + 1.0f);
  let x_430 : f32 = u_xlat3.x;
  let x_432 : f32 = u_xlat3.x;
  u_xlat10 = (x_430 * x_432);
  let x_434 : f32 = u_xlat10;
  let x_435 : f32 = u_xlat10;
  u_xlat10 = (x_434 * x_435);
  let x_438 : f32 = u_xlat3.x;
  let x_439 : f32 = u_xlat10;
  u_xlat3.x = (x_438 * x_439);
  let x_442 : f32 = u_xlat16;
  let x_444 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_442 * x_444) + 1.0f);
  let x_448 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_448)) + 1.0f);
  let x_453 : f32 = u_xlat10;
  let x_454 : f32 = u_xlat10;
  u_xlat17 = (x_453 * x_454);
  let x_456 : f32 = u_xlat17;
  let x_457 : f32 = u_xlat17;
  u_xlat17 = (x_456 * x_457);
  let x_459 : f32 = u_xlat10;
  let x_460 : f32 = u_xlat17;
  u_xlat10 = (x_459 * x_460);
  let x_462 : f32 = u_xlat16;
  let x_463 : f32 = u_xlat10;
  u_xlat16 = ((x_462 * x_463) + 1.0f);
  let x_466 : f32 = u_xlat16;
  let x_468 : f32 = u_xlat3.x;
  u_xlat16 = (x_466 * x_468);
  let x_470 : f32 = u_xlat23;
  let x_471 : f32 = u_xlat16;
  u_xlat16 = (x_470 * x_471);
  let x_473 : f32 = u_xlat21;
  let x_474 : f32 = u_xlat21;
  u_xlat21 = (x_473 * x_474);
  let x_476 : f32 = u_xlat21;
  u_xlat21 = max(x_476, 0.002f);
  let x_479 : f32 = u_xlat21;
  u_xlat3.x = (-(x_479) + 1.0f);
  let x_483 : f32 = u_xlat22;
  let x_486 : f32 = u_xlat3.x;
  let x_488 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_483) * x_486) + x_488);
  let x_490 : f32 = u_xlat23;
  let x_492 : f32 = u_xlat3.x;
  let x_494 : f32 = u_xlat21;
  u_xlat3.x = ((x_490 * x_492) + x_494);
  let x_497 : f32 = u_xlat22;
  let x_500 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_497) * x_500);
  let x_502 : f32 = u_xlat23;
  let x_503 : f32 = u_xlat10;
  let x_505 : f32 = u_xlat22;
  u_xlat22 = ((x_502 * x_503) + x_505);
  let x_507 : f32 = u_xlat22;
  u_xlat22 = (x_507 + 0.00001f);
  let x_510 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_510);
  let x_512 : f32 = u_xlat21;
  let x_513 : f32 = u_xlat21;
  u_xlat21 = (x_512 * x_513);
  let x_516 : f32 = u_xlat2.x;
  let x_517 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_516 * x_517) + -(x_520));
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_525 * x_527) + 1.0f);
  let x_531 : f32 = u_xlat21;
  u_xlat21 = (x_531 * 0.318309873f);
  let x_535 : f32 = u_xlat2.x;
  let x_537 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_535 * x_537) + 0.0000001f);
  let x_542 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat2.x;
  u_xlat21 = (x_542 / x_544);
  let x_546 : f32 = u_xlat21;
  let x_547 : f32 = u_xlat22;
  u_xlat21 = (x_546 * x_547);
  let x_549 : f32 = u_xlat23;
  let x_550 : f32 = u_xlat21;
  u_xlat21 = (x_549 * x_550);
  let x_552 : f32 = u_xlat21;
  u_xlat21 = (x_552 * 3.141592741f);
  let x_555 : f32 = u_xlat21;
  u_xlat21 = max(x_555, 0.0f);
  let x_557 : vec4<f32> = u_xlat0;
  let x_559 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_563 : f32 = u_xlat22;
  u_xlatb22 = !((x_563 == 0.0f));
  let x_565 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_565);
  let x_567 : f32 = u_xlat21;
  let x_568 : f32 = u_xlat22;
  u_xlat21 = (x_567 * x_568);
  let x_570 : f32 = u_xlat16;
  let x_572 : vec3<f32> = u_xlat6;
  let x_573 : vec3<f32> = (vec3<f32>(x_570, x_570, x_570) * x_572);
  let x_574 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_573.x, x_574.y, x_573.y, x_573.z);
  let x_576 : vec3<f32> = u_xlat6;
  let x_577 : f32 = u_xlat21;
  u_xlat3 = (x_576 * vec3<f32>(x_577, x_577, x_577));
  let x_580 : f32 = u_xlat9;
  u_xlat21 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat21;
  let x_584 : f32 = u_xlat21;
  u_xlat22 = (x_583 * x_584);
  let x_586 : f32 = u_xlat22;
  let x_587 : f32 = u_xlat22;
  u_xlat22 = (x_586 * x_587);
  let x_589 : f32 = u_xlat21;
  let x_590 : f32 = u_xlat22;
  u_xlat21 = (x_589 * x_590);
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_597 : vec3<f32> = u_xlat4;
  let x_598 : f32 = u_xlat21;
  let x_601 : vec4<f32> = u_xlat0;
  let x_603 : vec3<f32> = ((x_597 * vec3<f32>(x_598, x_598, x_598)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec3<f32> = u_xlat3;
  let x_609 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * x_608);
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat1;
  let x_614 : vec4<f32> = u_xlat2;
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614.x, x_614.z, x_614.w)) + vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
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

