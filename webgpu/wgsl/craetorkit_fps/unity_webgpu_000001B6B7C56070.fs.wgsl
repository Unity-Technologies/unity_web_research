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
  x_GlossMapScale : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat4 : vec4<f32>;
  var x_255 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlat7 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_201 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_201 == 1.0f);
  let x_203 : bool = u_xlatb23;
  if (x_203) {
    let x_208 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_208 == 1.0f);
    let x_213 : vec3<f32> = vs_TEXCOORD5;
    let x_217 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_219 : vec3<f32> = (vec3<f32>(x_213.y, x_213.y, x_213.y) * vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_224 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_226 : vec3<f32> = vs_TEXCOORD5;
    let x_229 : vec4<f32> = u_xlat4;
    let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.x, x_226.x, x_226.x)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_235 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_237 : vec3<f32> = vs_TEXCOORD5;
    let x_240 : vec4<f32> = u_xlat4;
    let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.z, x_237.z, x_237.z)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat4;
    let x_249 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : bool = u_xlatb23;
    if (x_254) {
      let x_258 : vec4<f32> = u_xlat4;
      x_255 = vec3<f32>(x_258.x, x_258.y, x_258.z);
    } else {
      let x_261 : vec3<f32> = vs_TEXCOORD5;
      x_255 = x_261;
    }
    let x_262 : vec3<f32> = x_255;
    let x_263 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat4;
    let x_270 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_272 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_270));
    let x_273 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat4;
    let x_278 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * x_278);
    let x_280 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
    let x_284 : f32 = u_xlat4.y;
    u_xlat23 = ((x_284 * 0.25f) + 0.75f);
    let x_291 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_291 * 0.5f) + 0.75f);
    let x_295 : f32 = u_xlat23;
    let x_296 : f32 = u_xlat24;
    u_xlat4.x = max(x_295, x_296);
    let x_307 : vec4<f32> = u_xlat4;
    let x_309 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_307.x, x_307.z, x_307.w));
    u_xlat4 = x_309;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_316, x_318);
  let x_320 : f32 = u_xlat23;
  u_xlat23 = clamp(x_320, 0.0f, 1.0f);
  let x_323 : f32 = u_xlat23;
  let x_327 : vec4<f32> = x_46.x_LightColor0;
  let x_329 : vec3<f32> = (vec3<f32>(x_323, x_323, x_323) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_334 : f32 = u_xlat0.y;
  let x_338 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_334) * x_338) + 1.0f);
  let x_344 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_344;
  let x_347 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_347;
  let x_350 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_350;
  let x_353 : vec4<f32> = vs_TEXCOORD1;
  let x_356 : f32 = u_xlat22;
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_353.x, x_353.y, x_353.z)) * vec3<f32>(x_356, x_356, x_356)) + x_359);
  let x_361 : vec3<f32> = u_xlat6;
  let x_362 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_361, x_362);
  let x_364 : f32 = u_xlat22;
  u_xlat22 = max(x_364, 0.001f);
  let x_367 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_367);
  let x_369 : f32 = u_xlat22;
  let x_371 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_369, x_369, x_369) * x_371);
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), -(x_375));
  let x_378 : vec4<f32> = u_xlat2;
  let x_380 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), x_380);
  let x_382 : f32 = u_xlat23;
  u_xlat23 = clamp(x_382, 0.0f, 1.0f);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_386);
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_393, x_394);
  let x_398 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_398, 0.0f, 1.0f);
  let x_403 : f32 = u_xlat9.x;
  let x_405 : f32 = u_xlat9.x;
  u_xlat16 = (x_403 * x_405);
  let x_407 : f32 = u_xlat16;
  let x_409 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_407, x_407), vec2<f32>(x_409, x_409));
  let x_412 : f32 = u_xlat16;
  u_xlat16 = (x_412 + -0.5f);
  let x_415 : f32 = u_xlat23;
  u_xlat3.x = (-(x_415) + 1.0f);
  let x_421 : f32 = u_xlat3.x;
  let x_423 : f32 = u_xlat3.x;
  u_xlat10 = (x_421 * x_423);
  let x_425 : f32 = u_xlat10;
  let x_426 : f32 = u_xlat10;
  u_xlat10 = (x_425 * x_426);
  let x_429 : f32 = u_xlat3.x;
  let x_430 : f32 = u_xlat10;
  u_xlat3.x = (x_429 * x_430);
  let x_433 : f32 = u_xlat16;
  let x_435 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_433 * x_435) + 1.0f);
  let x_439 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_439)) + 1.0f);
  let x_444 : f32 = u_xlat10;
  let x_445 : f32 = u_xlat10;
  u_xlat17 = (x_444 * x_445);
  let x_447 : f32 = u_xlat17;
  let x_448 : f32 = u_xlat17;
  u_xlat17 = (x_447 * x_448);
  let x_450 : f32 = u_xlat10;
  let x_451 : f32 = u_xlat17;
  u_xlat10 = (x_450 * x_451);
  let x_453 : f32 = u_xlat16;
  let x_454 : f32 = u_xlat10;
  u_xlat16 = ((x_453 * x_454) + 1.0f);
  let x_457 : f32 = u_xlat16;
  let x_459 : f32 = u_xlat3.x;
  u_xlat16 = (x_457 * x_459);
  let x_461 : f32 = u_xlat23;
  let x_462 : f32 = u_xlat16;
  u_xlat16 = (x_461 * x_462);
  let x_464 : f32 = u_xlat7;
  let x_465 : f32 = u_xlat7;
  u_xlat7 = (x_464 * x_465);
  let x_467 : f32 = u_xlat7;
  u_xlat7 = max(x_467, 0.002f);
  let x_470 : f32 = u_xlat7;
  u_xlat3.x = (-(x_470) + 1.0f);
  let x_474 : f32 = u_xlat22;
  let x_477 : f32 = u_xlat3.x;
  let x_479 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_474) * x_477) + x_479);
  let x_481 : f32 = u_xlat23;
  let x_483 : f32 = u_xlat3.x;
  let x_485 : f32 = u_xlat7;
  u_xlat3.x = ((x_481 * x_483) + x_485);
  let x_488 : f32 = u_xlat22;
  let x_491 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_488) * x_491);
  let x_493 : f32 = u_xlat23;
  let x_494 : f32 = u_xlat10;
  let x_496 : f32 = u_xlat22;
  u_xlat22 = ((x_493 * x_494) + x_496);
  let x_498 : f32 = u_xlat22;
  u_xlat22 = (x_498 + 0.00001f);
  let x_501 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_501);
  let x_503 : f32 = u_xlat7;
  let x_504 : f32 = u_xlat7;
  u_xlat7 = (x_503 * x_504);
  let x_507 : f32 = u_xlat2.x;
  let x_508 : f32 = u_xlat7;
  let x_511 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_507 * x_508) + -(x_511));
  let x_516 : f32 = u_xlat3.x;
  let x_518 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_516 * x_518) + 1.0f);
  let x_522 : f32 = u_xlat7;
  u_xlat7 = (x_522 * 0.318309873f);
  let x_526 : f32 = u_xlat2.x;
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_526 * x_528) + 0.0000001f);
  let x_533 : f32 = u_xlat7;
  let x_535 : f32 = u_xlat2.x;
  u_xlat7 = (x_533 / x_535);
  let x_537 : f32 = u_xlat7;
  let x_538 : f32 = u_xlat22;
  u_xlat7 = (x_537 * x_538);
  let x_540 : f32 = u_xlat23;
  let x_541 : f32 = u_xlat7;
  u_xlat7 = (x_540 * x_541);
  let x_543 : f32 = u_xlat7;
  u_xlat7 = (x_543 * 3.141592741f);
  let x_546 : f32 = u_xlat7;
  u_xlat7 = max(x_546, 0.0f);
  let x_548 : vec3<f32> = u_xlat1;
  let x_549 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_548, x_549);
  let x_552 : f32 = u_xlat22;
  u_xlatb22 = !((x_552 == 0.0f));
  let x_554 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_554);
  let x_556 : f32 = u_xlat7;
  let x_557 : f32 = u_xlat22;
  u_xlat7 = (x_556 * x_557);
  let x_559 : f32 = u_xlat16;
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec3<f32> = (vec3<f32>(x_559, x_559, x_559) * vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_564.y, x_563.y, x_563.z);
  let x_566 : vec4<f32> = u_xlat4;
  let x_568 : f32 = u_xlat7;
  u_xlat3 = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568, x_568, x_568));
  let x_572 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_572) + 1.0f);
  let x_575 : f32 = u_xlat7;
  let x_576 : f32 = u_xlat7;
  u_xlat22 = (x_575 * x_576);
  let x_578 : f32 = u_xlat22;
  let x_579 : f32 = u_xlat22;
  u_xlat22 = (x_578 * x_579);
  let x_581 : f32 = u_xlat7;
  let x_582 : f32 = u_xlat22;
  u_xlat7 = (x_581 * x_582);
  let x_584 : vec3<f32> = u_xlat1;
  let x_587 : vec3<f32> = (-(x_584) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : f32 = u_xlat7;
  let x_595 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592, x_592, x_592)) + x_595);
  let x_597 : vec3<f32> = u_xlat1;
  let x_598 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_597 * x_598);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = u_xlat1;
  let x_608 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.z, x_602.w) * vec3<f32>(x_604.x, x_604.z, x_604.w)) + x_607);
  let x_609 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
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

