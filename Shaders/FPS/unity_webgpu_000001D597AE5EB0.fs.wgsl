struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat16 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_226 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat2;
  let x_58 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_54 * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_62 : vec3<f32> = u_xlat2;
  let x_65 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_62 * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_69 : vec3<f32> = vs_TEXCOORD2;
  let x_74 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_76 : vec2<f32> = (vec2<f32>(x_69.y, x_69.y) * vec2<f32>(x_74.x, x_74.y));
  let x_77 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_76.x, x_76.y, x_77.z);
  let x_80 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_82 : vec3<f32> = vs_TEXCOORD2;
  let x_85 : vec3<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_80.x, x_80.y) * vec2<f32>(x_82.x, x_82.x)) + vec2<f32>(x_85.x, x_85.y));
  let x_88 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_87.x, x_87.y, x_88.z);
  let x_92 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_94 : vec3<f32> = vs_TEXCOORD2;
  let x_97 : vec3<f32> = u_xlat4;
  let x_99 : vec2<f32> = ((vec2<f32>(x_92.x, x_92.y) * vec2<f32>(x_94.z, x_94.z)) + vec2<f32>(x_97.x, x_97.y));
  let x_100 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_108 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) + vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_118 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_118;
  let x_122 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_122;
  let x_126 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_126;
  let x_129 : vec3<f32> = u_xlat0;
  let x_130 : vec4<f32> = u_xlat5;
  u_xlat19 = dot(x_129, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_139 : vec3<f32> = (x_133 + -(vec3<f32>(x_136.x, x_136.y, x_136.z)));
  let x_140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = u_xlat5;
  let x_145 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : f32 = u_xlat20;
  u_xlat20 = sqrt(x_148);
  let x_150 : f32 = u_xlat19;
  let x_152 : f32 = u_xlat20;
  u_xlat20 = (-(x_150) + x_152);
  let x_156 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_157 : f32 = u_xlat20;
  let x_159 : f32 = u_xlat19;
  u_xlat19 = ((x_156 * x_157) + x_159);
  let x_161 : f32 = u_xlat19;
  let x_163 : f32 = x_18.x_LightShadowData.z;
  let x_166 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_161 * x_163) + x_166);
  let x_168 : f32 = u_xlat19;
  u_xlat19 = clamp(x_168, 0.0f, 1.0f);
  let x_177 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb20 = (x_177 == 1.0f);
  let x_179 : bool = u_xlatb20;
  if (x_179) {
    let x_183 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_183 == 1.0f);
    let x_185 : vec3<f32> = vs_TEXCOORD2;
    let x_189 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_191 : vec3<f32> = (vec3<f32>(x_185.y, x_185.y, x_185.y) * vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_195 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_197 : vec3<f32> = vs_TEXCOORD2;
    let x_200 : vec4<f32> = u_xlat5;
    let x_202 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.x, x_197.x, x_197.x)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_206 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_208 : vec3<f32> = vs_TEXCOORD2;
    let x_211 : vec4<f32> = u_xlat5;
    let x_213 : vec3<f32> = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.z, x_208.z, x_208.z)) + vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : vec4<f32> = u_xlat5;
    let x_219 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_221 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : bool = u_xlatb20;
    if (x_224) {
      let x_229 : vec4<f32> = u_xlat5;
      x_226 = vec3<f32>(x_229.x, x_229.y, x_229.z);
    } else {
      let x_232 : vec3<f32> = vs_TEXCOORD2;
      x_226 = x_232;
    }
    let x_233 : vec3<f32> = x_226;
    let x_234 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat5;
    let x_240 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_242 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) + -(x_240));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat5;
    let x_249 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_250 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) * x_249);
    let x_251 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_250.x, x_250.y, x_250.z);
    let x_254 : f32 = u_xlat5.y;
    u_xlat20 = ((x_254 * 0.25f) + 0.75f);
    let x_261 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_261 * 0.5f) + 0.75f);
    let x_265 : f32 = u_xlat20;
    let x_266 : f32 = u_xlat21;
    u_xlat5.x = max(x_265, x_266);
    let x_277 : vec4<f32> = u_xlat5;
    let x_279 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_277.x, x_277.z, x_277.w));
    u_xlat5 = x_279;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_285 : vec4<f32> = u_xlat5;
  let x_287 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_285, x_287);
  let x_289 : f32 = u_xlat20;
  u_xlat20 = clamp(x_289, 0.0f, 1.0f);
  let x_294 : vec4<f32> = vs_TEXCOORD4;
  let x_296 : vec4<f32> = vs_TEXCOORD4;
  u_xlat16 = (vec2<f32>(x_294.x, x_294.y) / vec2<f32>(x_296.w, x_296.w));
  let x_304 : vec2<f32> = u_xlat16;
  let x_305 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_304);
  u_xlat21 = x_305.x;
  let x_307 : f32 = u_xlat20;
  let x_308 : f32 = u_xlat21;
  u_xlat20 = (x_307 + -(x_308));
  let x_311 : f32 = u_xlat19;
  let x_312 : f32 = u_xlat20;
  let x_314 : f32 = u_xlat21;
  u_xlat19 = ((x_311 * x_312) + x_314);
  let x_321 : vec3<f32> = u_xlat4;
  let x_323 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_321.x, x_321.y));
  u_xlat20 = x_323.w;
  let x_325 : f32 = u_xlat19;
  let x_326 : f32 = u_xlat20;
  u_xlat19 = (x_325 * x_326);
  let x_328 : f32 = u_xlat19;
  let x_332 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_328, x_328, x_328) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_336, x_337);
  let x_339 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_339);
  let x_341 : f32 = u_xlat19;
  let x_343 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec3<f32> = u_xlat2;
  let x_348 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_347 * vec3<f32>(x_348.x, x_348.y, x_348.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_356 : f32 = x_18.x_Metallic;
  let x_358 : f32 = x_18.x_Metallic;
  let x_360 : f32 = x_18.x_Metallic;
  let x_361 : vec3<f32> = vec3<f32>(x_356, x_358, x_360);
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * x_366) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_372 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_372) * 0.959999979f) + 0.959999979f);
  let x_377 : f32 = u_xlat19;
  let x_379 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_377, x_377, x_377) * x_379);
  let x_383 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_383) + 1.0f);
  let x_386 : vec3<f32> = u_xlat0;
  let x_387 : f32 = u_xlat18;
  let x_391 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_386 * vec3<f32>(x_387, x_387, x_387)) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec3<f32> = u_xlat0;
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_394, x_395);
  let x_397 : f32 = u_xlat18;
  u_xlat18 = max(x_397, 0.001f);
  let x_400 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_400);
  let x_402 : f32 = u_xlat18;
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_402, x_402, x_402) * x_404);
  let x_406 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), x_408);
  let x_410 : vec4<f32> = u_xlat5;
  let x_413 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_418 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_418, 0.0f, 1.0f);
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_422.x, x_422.y, x_422.z), x_424);
  let x_426 : f32 = u_xlat7;
  u_xlat7 = clamp(x_426, 0.0f, 1.0f);
  let x_429 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), x_431);
  let x_435 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_435, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat0.x;
  let x_442 : f32 = u_xlat0.x;
  u_xlat6.x = (x_440 * x_442);
  let x_445 : vec3<f32> = u_xlat6;
  let x_447 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_445.x, x_445.x), vec2<f32>(x_447, x_447));
  let x_452 : f32 = u_xlat6.x;
  u_xlat6.x = (x_452 + -0.5f);
  let x_458 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_458) + 1.0f);
  let x_462 : f32 = u_xlat12;
  let x_463 : f32 = u_xlat12;
  u_xlat13 = (x_462 * x_463);
  let x_465 : f32 = u_xlat13;
  let x_466 : f32 = u_xlat13;
  u_xlat13 = (x_465 * x_466);
  let x_468 : f32 = u_xlat12;
  let x_469 : f32 = u_xlat13;
  u_xlat12 = (x_468 * x_469);
  let x_472 : f32 = u_xlat6.x;
  let x_473 : f32 = u_xlat12;
  u_xlat12 = ((x_472 * x_473) + 1.0f);
  let x_476 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_476)) + 1.0f);
  let x_480 : f32 = u_xlat13;
  let x_481 : f32 = u_xlat13;
  u_xlat20 = (x_480 * x_481);
  let x_483 : f32 = u_xlat20;
  let x_484 : f32 = u_xlat20;
  u_xlat20 = (x_483 * x_484);
  let x_486 : f32 = u_xlat13;
  let x_487 : f32 = u_xlat20;
  u_xlat13 = (x_486 * x_487);
  let x_490 : f32 = u_xlat6.x;
  let x_491 : f32 = u_xlat13;
  u_xlat6.x = ((x_490 * x_491) + 1.0f);
  let x_496 : f32 = u_xlat6.x;
  let x_497 : f32 = u_xlat12;
  u_xlat6.x = (x_496 * x_497);
  let x_500 : f32 = u_xlat19;
  let x_501 : f32 = u_xlat19;
  u_xlat12 = (x_500 * x_501);
  let x_503 : f32 = u_xlat12;
  u_xlat12 = max(x_503, 0.002f);
  let x_506 : f32 = u_xlat12;
  u_xlat13 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat18;
  let x_511 : f32 = u_xlat13;
  let x_513 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_509) * x_511) + x_513);
  let x_516 : f32 = u_xlat1.x;
  let x_517 : f32 = u_xlat13;
  let x_519 : f32 = u_xlat12;
  u_xlat13 = ((x_516 * x_517) + x_519);
  let x_521 : f32 = u_xlat18;
  let x_523 : f32 = u_xlat13;
  u_xlat18 = (abs(x_521) * x_523);
  let x_526 : f32 = u_xlat1.x;
  let x_527 : f32 = u_xlat19;
  let x_529 : f32 = u_xlat18;
  u_xlat18 = ((x_526 * x_527) + x_529);
  let x_531 : f32 = u_xlat18;
  u_xlat18 = (x_531 + 0.00001f);
  let x_534 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_534);
  let x_536 : f32 = u_xlat12;
  let x_537 : f32 = u_xlat12;
  u_xlat12 = (x_536 * x_537);
  let x_539 : f32 = u_xlat7;
  let x_540 : f32 = u_xlat12;
  let x_542 : f32 = u_xlat7;
  u_xlat13 = ((x_539 * x_540) + -(x_542));
  let x_545 : f32 = u_xlat13;
  let x_546 : f32 = u_xlat7;
  u_xlat7 = ((x_545 * x_546) + 1.0f);
  let x_549 : f32 = u_xlat12;
  u_xlat12 = (x_549 * 0.318309873f);
  let x_552 : f32 = u_xlat7;
  let x_553 : f32 = u_xlat7;
  u_xlat7 = ((x_552 * x_553) + 0.0000001f);
  let x_557 : f32 = u_xlat12;
  let x_558 : f32 = u_xlat7;
  u_xlat12 = (x_557 / x_558);
  let x_560 : f32 = u_xlat12;
  let x_561 : f32 = u_xlat18;
  u_xlat6.y = (x_560 * x_561);
  let x_564 : vec3<f32> = u_xlat1;
  let x_566 : vec3<f32> = u_xlat6;
  let x_568 : vec2<f32> = (vec2<f32>(x_564.x, x_564.x) * vec2<f32>(x_566.x, x_566.y));
  let x_569 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_572 : f32 = u_xlat6.y;
  u_xlat12 = (x_572 * 3.141592741f);
  let x_575 : f32 = u_xlat12;
  u_xlat12 = max(x_575, 0.0f);
  let x_577 : vec3<f32> = u_xlat2;
  let x_578 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_577, x_578);
  let x_581 : f32 = u_xlat18;
  u_xlatb18 = !((x_581 == 0.0f));
  let x_583 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_583);
  let x_585 : f32 = u_xlat18;
  let x_586 : f32 = u_xlat12;
  u_xlat12 = (x_585 * x_586);
  let x_588 : vec3<f32> = u_xlat6;
  let x_590 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_588.x, x_588.x, x_588.x) * x_590);
  let x_592 : vec3<f32> = u_xlat4;
  let x_593 : f32 = u_xlat12;
  u_xlat6 = (x_592 * vec3<f32>(x_593, x_593, x_593));
  let x_597 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_597) + 1.0f);
  let x_602 : f32 = u_xlat0.x;
  let x_604 : f32 = u_xlat0.x;
  u_xlat19 = (x_602 * x_604);
  let x_606 : f32 = u_xlat19;
  let x_607 : f32 = u_xlat19;
  u_xlat19 = (x_606 * x_607);
  let x_610 : f32 = u_xlat0.x;
  let x_611 : f32 = u_xlat19;
  u_xlat0.x = (x_610 * x_611);
  let x_614 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_614) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_618 : vec3<f32> = u_xlat4;
  let x_619 : vec3<f32> = u_xlat0;
  let x_622 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_618 * vec3<f32>(x_619.x, x_619.x, x_619.x)) + x_622);
  let x_624 : vec3<f32> = u_xlat6;
  let x_625 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_624 * x_625);
  let x_629 : vec3<f32> = u_xlat3;
  let x_630 : vec3<f32> = u_xlat1;
  let x_632 : vec3<f32> = u_xlat0;
  let x_633 : vec3<f32> = ((x_629 * x_630) + x_632);
  let x_634 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

