struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

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
  var u_xlat24 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_267 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  let x_131 : f32 = u_xlat21;
  u_xlat24 = (-(x_131) + 1.0f);
  let x_139 : f32 = u_xlat1.w;
  let x_140 : f32 = u_xlat21;
  let x_142 : f32 = u_xlat24;
  SV_Target0.w = ((x_139 * x_140) + x_142);
  let x_149 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_155 : vec3<f32> = (-(x_149) + x_154);
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_162 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat5.x = x_162;
  let x_166 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat5.y = x_166;
  let x_171 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat5.z = x_171;
  let x_173 : vec4<f32> = u_xlat4;
  let x_175 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), x_175);
  let x_177 : vec3<f32> = vs_TEXCOORD5;
  let x_180 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_192);
  let x_194 : f32 = u_xlat21;
  let x_196 : f32 = u_xlat22;
  u_xlat22 = (-(x_194) + x_196);
  let x_199 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_200 : f32 = u_xlat22;
  let x_202 : f32 = u_xlat21;
  u_xlat21 = ((x_199 * x_200) + x_202);
  let x_204 : f32 = u_xlat21;
  let x_206 : f32 = x_32.x_LightShadowData.z;
  let x_209 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_204 * x_206) + x_209);
  let x_211 : f32 = u_xlat21;
  u_xlat21 = clamp(x_211, 0.0f, 1.0f);
  let x_219 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_219 == 1.0f);
  let x_221 : bool = u_xlatb22;
  if (x_221) {
    let x_225 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_225 == 1.0f);
    let x_227 : vec3<f32> = vs_TEXCOORD5;
    let x_231 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_233 : vec3<f32> = (vec3<f32>(x_227.y, x_227.y, x_227.y) * vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_237 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_239 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = u_xlat4;
    let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_250 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = u_xlat4;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat4;
    let x_261 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_263 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : bool = u_xlatb22;
    if (x_266) {
      let x_270 : vec4<f32> = u_xlat4;
      x_267 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    } else {
      let x_273 : vec3<f32> = vs_TEXCOORD5;
      x_267 = x_273;
    }
    let x_274 : vec3<f32> = x_267;
    let x_275 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat4;
    let x_281 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_283 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_281));
    let x_284 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat4;
    let x_290 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_290);
    let x_292 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
    let x_295 : f32 = u_xlat4.y;
    u_xlat22 = ((x_295 * 0.25f) + 0.75f);
    let x_301 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_301 * 0.5f) + 0.75f);
    let x_305 : f32 = u_xlat22;
    let x_306 : f32 = u_xlat24;
    u_xlat4.x = max(x_305, x_306);
    let x_317 : vec4<f32> = u_xlat4;
    let x_319 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_317.x, x_317.z, x_317.w));
    u_xlat4 = x_319;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_325, x_327);
  let x_329 : f32 = u_xlat22;
  u_xlat22 = clamp(x_329, 0.0f, 1.0f);
  let x_332 : vec4<f32> = vs_TEXCOORD7;
  let x_334 : vec4<f32> = vs_TEXCOORD7;
  let x_336 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) / vec2<f32>(x_334.w, x_334.w));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_346 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_344.x, x_344.y));
  u_xlat24 = x_346.x;
  let x_348 : f32 = u_xlat22;
  let x_349 : f32 = u_xlat24;
  u_xlat22 = (x_348 + -(x_349));
  let x_352 : f32 = u_xlat21;
  let x_353 : f32 = u_xlat22;
  let x_355 : f32 = u_xlat24;
  u_xlat21 = ((x_352 * x_353) + x_355);
  let x_357 : f32 = u_xlat21;
  let x_361 : vec4<f32> = x_32.x_LightColor0;
  let x_363 : vec3<f32> = (vec3<f32>(x_357, x_357, x_357) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_368 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_368) + 1.0f);
  let x_374 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_374;
  let x_378 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_378;
  let x_381 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_381;
  let x_384 : vec4<f32> = vs_TEXCOORD1;
  let x_387 : f32 = u_xlat23;
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_384.x, x_384.y, x_384.z)) * vec3<f32>(x_387, x_387, x_387)) + x_390);
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_392, x_393);
  let x_395 : f32 = u_xlat22;
  u_xlat22 = max(x_395, 0.001f);
  let x_398 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_398);
  let x_400 : f32 = u_xlat22;
  let x_402 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_400, x_400, x_400) * x_402);
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), -(x_406));
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), x_411);
  let x_413 : f32 = u_xlat23;
  u_xlat23 = clamp(x_413, 0.0f, 1.0f);
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), x_417);
  let x_421 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_421, 0.0f, 1.0f);
  let x_425 : vec3<f32> = u_xlat5;
  let x_426 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_425, x_426);
  let x_428 : f32 = u_xlat9;
  u_xlat9 = clamp(x_428, 0.0f, 1.0f);
  let x_431 : f32 = u_xlat9;
  let x_432 : f32 = u_xlat9;
  u_xlat16 = (x_431 * x_432);
  let x_434 : f32 = u_xlat16;
  let x_436 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_434, x_434), vec2<f32>(x_436, x_436));
  let x_439 : f32 = u_xlat16;
  u_xlat16 = (x_439 + -0.5f);
  let x_442 : f32 = u_xlat23;
  u_xlat3.x = (-(x_442) + 1.0f);
  let x_448 : f32 = u_xlat3.x;
  let x_450 : f32 = u_xlat3.x;
  u_xlat10 = (x_448 * x_450);
  let x_452 : f32 = u_xlat10;
  let x_453 : f32 = u_xlat10;
  u_xlat10 = (x_452 * x_453);
  let x_456 : f32 = u_xlat3.x;
  let x_457 : f32 = u_xlat10;
  u_xlat3.x = (x_456 * x_457);
  let x_460 : f32 = u_xlat16;
  let x_462 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_460 * x_462) + 1.0f);
  let x_466 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_466)) + 1.0f);
  let x_471 : f32 = u_xlat10;
  let x_472 : f32 = u_xlat10;
  u_xlat17 = (x_471 * x_472);
  let x_474 : f32 = u_xlat17;
  let x_475 : f32 = u_xlat17;
  u_xlat17 = (x_474 * x_475);
  let x_477 : f32 = u_xlat10;
  let x_478 : f32 = u_xlat17;
  u_xlat10 = (x_477 * x_478);
  let x_480 : f32 = u_xlat16;
  let x_481 : f32 = u_xlat10;
  u_xlat16 = ((x_480 * x_481) + 1.0f);
  let x_484 : f32 = u_xlat16;
  let x_486 : f32 = u_xlat3.x;
  u_xlat16 = (x_484 * x_486);
  let x_488 : f32 = u_xlat23;
  let x_489 : f32 = u_xlat16;
  u_xlat16 = (x_488 * x_489);
  let x_491 : f32 = u_xlat21;
  let x_492 : f32 = u_xlat21;
  u_xlat21 = (x_491 * x_492);
  let x_494 : f32 = u_xlat21;
  u_xlat21 = max(x_494, 0.002f);
  let x_497 : f32 = u_xlat21;
  u_xlat3.x = (-(x_497) + 1.0f);
  let x_501 : f32 = u_xlat22;
  let x_504 : f32 = u_xlat3.x;
  let x_506 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_501) * x_504) + x_506);
  let x_508 : f32 = u_xlat23;
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat21;
  u_xlat3.x = ((x_508 * x_510) + x_512);
  let x_515 : f32 = u_xlat22;
  let x_518 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_515) * x_518);
  let x_520 : f32 = u_xlat23;
  let x_521 : f32 = u_xlat10;
  let x_523 : f32 = u_xlat22;
  u_xlat22 = ((x_520 * x_521) + x_523);
  let x_525 : f32 = u_xlat22;
  u_xlat22 = (x_525 + 0.00001f);
  let x_528 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_528);
  let x_530 : f32 = u_xlat21;
  let x_531 : f32 = u_xlat21;
  u_xlat21 = (x_530 * x_531);
  let x_534 : f32 = u_xlat2.x;
  let x_535 : f32 = u_xlat21;
  let x_538 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_534 * x_535) + -(x_538));
  let x_543 : f32 = u_xlat3.x;
  let x_545 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_543 * x_545) + 1.0f);
  let x_549 : f32 = u_xlat21;
  u_xlat21 = (x_549 * 0.318309873f);
  let x_553 : f32 = u_xlat2.x;
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_553 * x_555) + 0.0000001f);
  let x_560 : f32 = u_xlat21;
  let x_562 : f32 = u_xlat2.x;
  u_xlat21 = (x_560 / x_562);
  let x_564 : f32 = u_xlat21;
  let x_565 : f32 = u_xlat22;
  u_xlat21 = (x_564 * x_565);
  let x_567 : f32 = u_xlat23;
  let x_568 : f32 = u_xlat21;
  u_xlat21 = (x_567 * x_568);
  let x_570 : f32 = u_xlat21;
  u_xlat21 = (x_570 * 3.141592741f);
  let x_573 : f32 = u_xlat21;
  u_xlat21 = max(x_573, 0.0f);
  let x_575 : vec4<f32> = u_xlat0;
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : f32 = u_xlat22;
  u_xlatb22 = !((x_580 == 0.0f));
  let x_582 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_582);
  let x_584 : f32 = u_xlat21;
  let x_585 : f32 = u_xlat22;
  u_xlat21 = (x_584 * x_585);
  let x_587 : f32 = u_xlat16;
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = (vec3<f32>(x_587, x_587, x_587) * vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_592.y, x_591.y, x_591.z);
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596));
  let x_599 : f32 = u_xlat9;
  u_xlat21 = (-(x_599) + 1.0f);
  let x_602 : f32 = u_xlat21;
  let x_603 : f32 = u_xlat21;
  u_xlat22 = (x_602 * x_603);
  let x_605 : f32 = u_xlat22;
  let x_606 : f32 = u_xlat22;
  u_xlat22 = (x_605 * x_606);
  let x_608 : f32 = u_xlat21;
  let x_609 : f32 = u_xlat22;
  u_xlat21 = (x_608 * x_609);
  let x_611 : vec4<f32> = u_xlat0;
  let x_615 : vec3<f32> = (-(vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat4;
  let x_620 : f32 = u_xlat21;
  let x_623 : vec4<f32> = u_xlat0;
  let x_625 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_620, x_620, x_620)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = u_xlat3;
  let x_631 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * x_630);
  let x_632 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = u_xlat2;
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636.x, x_636.z, x_636.w)) + vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

