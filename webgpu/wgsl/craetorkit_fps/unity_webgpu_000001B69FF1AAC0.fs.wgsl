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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_248 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_194 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_194 == 1.0f);
  let x_196 : bool = u_xlatb22;
  if (x_196) {
    let x_201 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_201 == 1.0f);
    let x_206 : vec3<f32> = vs_TEXCOORD5;
    let x_210 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_212 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
    let x_213 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_217 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_219 : vec3<f32> = vs_TEXCOORD5;
    let x_222 : vec4<f32> = u_xlat4;
    let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.x, x_219.x, x_219.x)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_228 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_230 : vec3<f32> = vs_TEXCOORD5;
    let x_233 : vec4<f32> = u_xlat4;
    let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.z, x_230.z, x_230.z)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat4;
    let x_242 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_244 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_247 : bool = u_xlatb22;
    if (x_247) {
      let x_251 : vec4<f32> = u_xlat4;
      x_248 = vec3<f32>(x_251.x, x_251.y, x_251.z);
    } else {
      let x_254 : vec3<f32> = vs_TEXCOORD5;
      x_248 = x_254;
    }
    let x_255 : vec3<f32> = x_248;
    let x_256 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat4;
    let x_263 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_265 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + -(x_263));
    let x_266 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat4;
    let x_271 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) * x_271);
    let x_273 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_273.x, x_272.x, x_272.y, x_272.z);
    let x_277 : f32 = u_xlat4.y;
    u_xlat22 = ((x_277 * 0.25f) + 0.75f);
    let x_284 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_284 * 0.5f) + 0.75f);
    let x_288 : f32 = u_xlat22;
    let x_289 : f32 = u_xlat23;
    u_xlat4.x = max(x_288, x_289);
    let x_300 : vec4<f32> = u_xlat4;
    let x_302 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_300.x, x_300.z, x_300.w));
    u_xlat4 = x_302;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_309, x_311);
  let x_313 : f32 = u_xlat22;
  u_xlat22 = clamp(x_313, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat22;
  let x_320 : vec4<f32> = x_33.x_LightColor0;
  let x_322 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_327 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_327) + 1.0f);
  let x_333 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_333;
  let x_336 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_336;
  let x_339 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_339;
  let x_342 : vec4<f32> = vs_TEXCOORD1;
  let x_345 : f32 = u_xlat21;
  let x_348 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_342.x, x_342.y, x_342.z)) * vec3<f32>(x_345, x_345, x_345)) + x_348);
  let x_350 : vec3<f32> = u_xlat6;
  let x_351 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_350, x_351);
  let x_353 : f32 = u_xlat21;
  u_xlat21 = max(x_353, 0.001f);
  let x_356 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_356);
  let x_358 : f32 = u_xlat21;
  let x_360 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_358, x_358, x_358) * x_360);
  let x_362 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), -(x_364));
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), x_369);
  let x_371 : f32 = u_xlat23;
  u_xlat23 = clamp(x_371, 0.0f, 1.0f);
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), x_375);
  let x_379 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_379, 0.0f, 1.0f);
  let x_382 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_382, x_383);
  let x_387 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_387, 0.0f, 1.0f);
  let x_392 : f32 = u_xlat9.x;
  let x_394 : f32 = u_xlat9.x;
  u_xlat16 = (x_392 * x_394);
  let x_396 : f32 = u_xlat16;
  let x_398 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_396, x_396), vec2<f32>(x_398, x_398));
  let x_401 : f32 = u_xlat16;
  u_xlat16 = (x_401 + -0.5f);
  let x_404 : f32 = u_xlat23;
  u_xlat3.x = (-(x_404) + 1.0f);
  let x_410 : f32 = u_xlat3.x;
  let x_412 : f32 = u_xlat3.x;
  u_xlat10 = (x_410 * x_412);
  let x_414 : f32 = u_xlat10;
  let x_415 : f32 = u_xlat10;
  u_xlat10 = (x_414 * x_415);
  let x_418 : f32 = u_xlat3.x;
  let x_419 : f32 = u_xlat10;
  u_xlat3.x = (x_418 * x_419);
  let x_422 : f32 = u_xlat16;
  let x_424 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_422 * x_424) + 1.0f);
  let x_428 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_428)) + 1.0f);
  let x_433 : f32 = u_xlat10;
  let x_434 : f32 = u_xlat10;
  u_xlat17 = (x_433 * x_434);
  let x_436 : f32 = u_xlat17;
  let x_437 : f32 = u_xlat17;
  u_xlat17 = (x_436 * x_437);
  let x_439 : f32 = u_xlat10;
  let x_440 : f32 = u_xlat17;
  u_xlat10 = (x_439 * x_440);
  let x_442 : f32 = u_xlat16;
  let x_443 : f32 = u_xlat10;
  u_xlat16 = ((x_442 * x_443) + 1.0f);
  let x_446 : f32 = u_xlat16;
  let x_448 : f32 = u_xlat3.x;
  u_xlat16 = (x_446 * x_448);
  let x_450 : f32 = u_xlat23;
  let x_451 : f32 = u_xlat16;
  u_xlat16 = (x_450 * x_451);
  let x_453 : f32 = u_xlat22;
  let x_454 : f32 = u_xlat22;
  u_xlat22 = (x_453 * x_454);
  let x_456 : f32 = u_xlat22;
  u_xlat22 = max(x_456, 0.002f);
  let x_459 : f32 = u_xlat22;
  u_xlat3.x = (-(x_459) + 1.0f);
  let x_463 : f32 = u_xlat21;
  let x_466 : f32 = u_xlat3.x;
  let x_468 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_463) * x_466) + x_468);
  let x_470 : f32 = u_xlat23;
  let x_472 : f32 = u_xlat3.x;
  let x_474 : f32 = u_xlat22;
  u_xlat3.x = ((x_470 * x_472) + x_474);
  let x_477 : f32 = u_xlat21;
  let x_480 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_477) * x_480);
  let x_482 : f32 = u_xlat23;
  let x_483 : f32 = u_xlat10;
  let x_485 : f32 = u_xlat21;
  u_xlat21 = ((x_482 * x_483) + x_485);
  let x_487 : f32 = u_xlat21;
  u_xlat21 = (x_487 + 0.00001f);
  let x_490 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_490);
  let x_492 : f32 = u_xlat22;
  let x_493 : f32 = u_xlat22;
  u_xlat22 = (x_492 * x_493);
  let x_496 : f32 = u_xlat2.x;
  let x_497 : f32 = u_xlat22;
  let x_500 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_496 * x_497) + -(x_500));
  let x_505 : f32 = u_xlat3.x;
  let x_507 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_505 * x_507) + 1.0f);
  let x_511 : f32 = u_xlat22;
  u_xlat22 = (x_511 * 0.318309873f);
  let x_515 : f32 = u_xlat2.x;
  let x_517 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_515 * x_517) + 0.0000001f);
  let x_522 : f32 = u_xlat22;
  let x_524 : f32 = u_xlat2.x;
  u_xlat22 = (x_522 / x_524);
  let x_526 : f32 = u_xlat21;
  let x_527 : f32 = u_xlat22;
  u_xlat21 = (x_526 * x_527);
  let x_529 : f32 = u_xlat23;
  let x_530 : f32 = u_xlat21;
  u_xlat21 = (x_529 * x_530);
  let x_532 : f32 = u_xlat21;
  u_xlat21 = (x_532 * 3.141592741f);
  let x_535 : f32 = u_xlat21;
  u_xlat21 = max(x_535, 0.0f);
  let x_537 : vec3<f32> = u_xlat0;
  let x_538 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_537, x_538);
  let x_540 : f32 = u_xlat22;
  u_xlatb22 = !((x_540 == 0.0f));
  let x_542 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_542);
  let x_544 : f32 = u_xlat21;
  let x_545 : f32 = u_xlat22;
  u_xlat21 = (x_544 * x_545);
  let x_547 : f32 = u_xlat16;
  let x_549 : vec4<f32> = u_xlat4;
  let x_551 : vec3<f32> = (vec3<f32>(x_547, x_547, x_547) * vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_552.y, x_551.y, x_551.z);
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_556, x_556, x_556));
  let x_560 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_560) + 1.0f);
  let x_563 : f32 = u_xlat21;
  let x_564 : f32 = u_xlat21;
  u_xlat22 = (x_563 * x_564);
  let x_566 : f32 = u_xlat22;
  let x_567 : f32 = u_xlat22;
  u_xlat22 = (x_566 * x_567);
  let x_569 : f32 = u_xlat21;
  let x_570 : f32 = u_xlat22;
  u_xlat21 = (x_569 * x_570);
  let x_572 : vec3<f32> = u_xlat0;
  let x_575 : vec3<f32> = (-(x_572) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_576 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat4;
  let x_580 : f32 = u_xlat21;
  let x_583 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(x_580, x_580, x_580)) + x_583);
  let x_585 : vec3<f32> = u_xlat0;
  let x_586 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_585 * x_586);
  let x_590 : vec3<f32> = u_xlat1;
  let x_591 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = u_xlat0;
  let x_595 : vec3<f32> = ((x_590 * vec3<f32>(x_591.x, x_591.z, x_591.w)) + x_594);
  let x_596 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

