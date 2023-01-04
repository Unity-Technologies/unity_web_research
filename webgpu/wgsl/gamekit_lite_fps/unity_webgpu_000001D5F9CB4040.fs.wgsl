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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb16 : bool;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_297 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_70 : f32 = u_xlat22;
  u_xlat22 = (-(x_70) + 1.0f);
  let x_74 : f32 = u_xlat22;
  let x_78 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_74 + -(x_78));
  let x_84 : f32 = x_18.x_EdgeSize;
  u_xlat16 = (1.0f / -(x_84));
  let x_87 : f32 = u_xlat22;
  let x_88 : f32 = u_xlat16;
  u_xlat22 = (x_87 * x_88);
  let x_90 : f32 = u_xlat22;
  u_xlat22 = clamp(x_90, 0.0f, 1.0f);
  let x_93 : f32 = u_xlat22;
  u_xlat16 = ((x_93 * -2.0f) + 3.0f);
  let x_98 : f32 = u_xlat22;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_98 * x_99);
  let x_107 : vec4<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_107.z, x_107.w));
  u_xlat3 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  let x_112 : vec3<f32> = u_xlat3;
  let x_116 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_112 * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_125 : vec4<f32> = vs_TEXCOORD0;
  let x_127 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_125.z, x_125.w));
  u_xlat5 = vec3<f32>(x_127.x, x_127.y, x_127.w);
  let x_131 : f32 = u_xlat5.z;
  let x_133 : f32 = u_xlat5.x;
  u_xlat5.x = (x_131 * x_133);
  let x_136 : vec3<f32> = u_xlat5;
  let x_143 : vec2<f32> = ((vec2<f32>(x_136.x, x_136.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_144 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_143.x, x_143.y, x_144.z);
  let x_147 : vec3<f32> = u_xlat5;
  let x_149 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_147.x, x_147.y), vec2<f32>(x_149.x, x_149.y));
  let x_152 : f32 = u_xlat23;
  u_xlat23 = min(x_152, 1.0f);
  let x_154 : f32 = u_xlat23;
  u_xlat23 = (-(x_154) + 1.0f);
  let x_157 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_157);
  let x_161 : f32 = u_xlat2.x;
  let x_164 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_161 * x_164);
  let x_167 : f32 = u_xlat16;
  let x_169 : f32 = u_xlat22;
  let x_172 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_167) * x_169) + -(x_172));
  let x_175 : f32 = u_xlat22;
  u_xlat22 = (x_175 + 1.0f);
  let x_180 : f32 = u_xlat22;
  u_xlatb22 = (x_180 < 0.0f);
  let x_182 : bool = u_xlatb22;
  if (((select(0i, 1i, x_182) * -1i) != 0i)) {
    discard;
  }
  let x_194 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat6.x = x_194;
  let x_197 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat6.y = x_197;
  let x_202 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat6.z = x_202;
  let x_204 : vec3<f32> = u_xlat0;
  let x_205 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(x_204, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec3<f32> = vs_TEXCOORD4;
  let x_211 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_214 : vec3<f32> = (x_208 + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_222);
  let x_224 : f32 = u_xlat22;
  let x_226 : f32 = u_xlat16;
  u_xlat16 = (-(x_224) + x_226);
  let x_230 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_231 : f32 = u_xlat16;
  let x_233 : f32 = u_xlat22;
  u_xlat22 = ((x_230 * x_231) + x_233);
  let x_235 : f32 = u_xlat22;
  let x_238 : f32 = x_18.x_LightShadowData.z;
  let x_241 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_235 * x_238) + x_241);
  let x_243 : f32 = u_xlat22;
  u_xlat22 = clamp(x_243, 0.0f, 1.0f);
  let x_248 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb16 = (x_248 == 1.0f);
  let x_250 : bool = u_xlatb16;
  if (x_250) {
    let x_254 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb16 = (x_254 == 1.0f);
    let x_256 : vec3<f32> = vs_TEXCOORD4;
    let x_260 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_262 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_266 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_268 : vec3<f32> = vs_TEXCOORD4;
    let x_271 : vec4<f32> = u_xlat6;
    let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.x, x_268.x)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_277 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_279 : vec3<f32> = vs_TEXCOORD4;
    let x_282 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.z, x_279.z, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat6;
    let x_290 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_292 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : bool = u_xlatb16;
    if (x_295) {
      let x_300 : vec4<f32> = u_xlat6;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = vs_TEXCOORD4;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat6;
    let x_311 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat6;
    let x_320 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_325 : f32 = u_xlat6.y;
    u_xlat16 = ((x_325 * 0.25f) + 0.75f);
    let x_331 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_331 * 0.5f) + 0.75f);
    let x_335 : f32 = u_xlat23;
    let x_336 : f32 = u_xlat16;
    u_xlat6.x = max(x_335, x_336);
    let x_347 : vec4<f32> = u_xlat6;
    let x_349 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_347.x, x_347.z, x_347.w));
    u_xlat6 = x_349;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_355 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat16 = dot(x_355, x_357);
  let x_359 : f32 = u_xlat16;
  u_xlat16 = clamp(x_359, 0.0f, 1.0f);
  let x_362 : vec4<f32> = vs_TEXCOORD6;
  let x_364 : vec4<f32> = vs_TEXCOORD6;
  let x_366 : vec2<f32> = (vec2<f32>(x_362.x, x_362.y) / vec2<f32>(x_364.w, x_364.w));
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  let x_374 : vec4<f32> = u_xlat6;
  let x_376 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_374.x, x_374.y));
  u_xlat23 = x_376.x;
  let x_378 : f32 = u_xlat23;
  let x_380 : f32 = u_xlat16;
  u_xlat16 = (-(x_378) + x_380);
  let x_382 : f32 = u_xlat22;
  let x_383 : f32 = u_xlat16;
  let x_385 : f32 = u_xlat23;
  u_xlat22 = ((x_382 * x_383) + x_385);
  let x_388 : vec3<f32> = vs_TEXCOORD1;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_388, x_389);
  let x_393 : vec3<f32> = vs_TEXCOORD2;
  let x_394 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_393, x_394);
  let x_398 : vec3<f32> = vs_TEXCOORD3;
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_398, x_399);
  let x_402 : vec4<f32> = u_xlat6;
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_407);
  let x_409 : f32 = u_xlat16;
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : f32 = u_xlat22;
  let x_418 : vec4<f32> = x_18.x_LightColor0;
  let x_420 : vec3<f32> = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec3<f32> = u_xlat3;
  let x_425 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_423 * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_431.x, x_431.x, x_431.x) * x_433) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_439 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat22;
  let x_446 : vec3<f32> = u_xlat4;
  let x_447 : vec3<f32> = (vec3<f32>(x_444, x_444, x_444) * x_446);
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_448.y, x_447.y, x_447.z);
  let x_451 : f32 = u_xlat2.y;
  let x_455 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_451) * x_455) + 1.0f);
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : f32 = u_xlat21;
  let x_463 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_458 * vec3<f32>(x_459, x_459, x_459)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec3<f32> = u_xlat0;
  let x_467 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_466, x_467);
  let x_469 : f32 = u_xlat21;
  u_xlat21 = max(x_469, 0.001f);
  let x_472 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_472);
  let x_474 : f32 = u_xlat21;
  let x_476 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_474, x_474, x_474) * x_476);
  let x_478 : vec3<f32> = u_xlat5;
  let x_479 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_478, x_479);
  let x_481 : vec3<f32> = u_xlat5;
  let x_483 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_481, vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_488 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_488, 0.0f, 1.0f);
  let x_492 : vec3<f32> = u_xlat5;
  let x_493 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_492, x_493);
  let x_495 : f32 = u_xlat8;
  u_xlat8 = clamp(x_495, 0.0f, 1.0f);
  let x_498 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_500 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_498.x, x_498.y, x_498.z), x_500);
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_504, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat0.x;
  let x_511 : f32 = u_xlat0.x;
  u_xlat7.x = (x_509 * x_511);
  let x_514 : vec3<f32> = u_xlat7;
  let x_516 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_514.x, x_514.x), vec2<f32>(x_516, x_516));
  let x_521 : f32 = u_xlat7.x;
  u_xlat7.x = (x_521 + -0.5f);
  let x_527 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_527) + 1.0f);
  let x_531 : f32 = u_xlat14;
  let x_532 : f32 = u_xlat14;
  u_xlat15 = (x_531 * x_532);
  let x_534 : f32 = u_xlat15;
  let x_535 : f32 = u_xlat15;
  u_xlat15 = (x_534 * x_535);
  let x_537 : f32 = u_xlat14;
  let x_538 : f32 = u_xlat15;
  u_xlat14 = (x_537 * x_538);
  let x_541 : f32 = u_xlat7.x;
  let x_542 : f32 = u_xlat14;
  u_xlat14 = ((x_541 * x_542) + 1.0f);
  let x_545 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_545)) + 1.0f);
  let x_550 : f32 = u_xlat15;
  let x_551 : f32 = u_xlat15;
  u_xlat9 = (x_550 * x_551);
  let x_553 : f32 = u_xlat9;
  let x_554 : f32 = u_xlat9;
  u_xlat9 = (x_553 * x_554);
  let x_556 : f32 = u_xlat15;
  let x_557 : f32 = u_xlat9;
  u_xlat15 = (x_556 * x_557);
  let x_560 : f32 = u_xlat7.x;
  let x_561 : f32 = u_xlat15;
  u_xlat7.x = ((x_560 * x_561) + 1.0f);
  let x_566 : f32 = u_xlat7.x;
  let x_567 : f32 = u_xlat14;
  u_xlat7.x = (x_566 * x_567);
  let x_570 : f32 = u_xlat22;
  let x_571 : f32 = u_xlat22;
  u_xlat14 = (x_570 * x_571);
  let x_573 : f32 = u_xlat14;
  u_xlat14 = max(x_573, 0.002f);
  let x_576 : f32 = u_xlat14;
  u_xlat15 = (-(x_576) + 1.0f);
  let x_579 : f32 = u_xlat21;
  let x_581 : f32 = u_xlat15;
  let x_583 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_579) * x_581) + x_583);
  let x_586 : f32 = u_xlat1.x;
  let x_587 : f32 = u_xlat15;
  let x_589 : f32 = u_xlat14;
  u_xlat15 = ((x_586 * x_587) + x_589);
  let x_591 : f32 = u_xlat21;
  let x_593 : f32 = u_xlat15;
  u_xlat21 = (abs(x_591) * x_593);
  let x_596 : f32 = u_xlat1.x;
  let x_597 : f32 = u_xlat22;
  let x_599 : f32 = u_xlat21;
  u_xlat21 = ((x_596 * x_597) + x_599);
  let x_601 : f32 = u_xlat21;
  u_xlat21 = (x_601 + 0.00001f);
  let x_604 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_604);
  let x_606 : f32 = u_xlat14;
  let x_607 : f32 = u_xlat14;
  u_xlat14 = (x_606 * x_607);
  let x_609 : f32 = u_xlat8;
  let x_610 : f32 = u_xlat14;
  let x_612 : f32 = u_xlat8;
  u_xlat15 = ((x_609 * x_610) + -(x_612));
  let x_615 : f32 = u_xlat15;
  let x_616 : f32 = u_xlat8;
  u_xlat8 = ((x_615 * x_616) + 1.0f);
  let x_619 : f32 = u_xlat14;
  u_xlat14 = (x_619 * 0.318309873f);
  let x_622 : f32 = u_xlat8;
  let x_623 : f32 = u_xlat8;
  u_xlat8 = ((x_622 * x_623) + 0.0000001f);
  let x_627 : f32 = u_xlat14;
  let x_628 : f32 = u_xlat8;
  u_xlat14 = (x_627 / x_628);
  let x_630 : f32 = u_xlat14;
  let x_631 : f32 = u_xlat21;
  u_xlat7.y = (x_630 * x_631);
  let x_634 : vec3<f32> = u_xlat1;
  let x_636 : vec3<f32> = u_xlat7;
  let x_638 : vec2<f32> = (vec2<f32>(x_634.x, x_634.x) * vec2<f32>(x_636.x, x_636.y));
  let x_639 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_638.x, x_638.y, x_639.z);
  let x_642 : f32 = u_xlat7.y;
  u_xlat14 = (x_642 * 3.141592741f);
  let x_645 : f32 = u_xlat14;
  u_xlat14 = max(x_645, 0.0f);
  let x_647 : vec3<f32> = u_xlat3;
  let x_648 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_647, x_648);
  let x_651 : f32 = u_xlat21;
  u_xlatb21 = !((x_651 == 0.0f));
  let x_653 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_653);
  let x_655 : f32 = u_xlat21;
  let x_656 : f32 = u_xlat14;
  u_xlat14 = (x_655 * x_656);
  let x_658 : vec3<f32> = u_xlat7;
  let x_660 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat6;
  let x_665 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665));
  let x_669 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_669) + 1.0f);
  let x_674 : f32 = u_xlat0.x;
  let x_676 : f32 = u_xlat0.x;
  u_xlat22 = (x_674 * x_676);
  let x_678 : f32 = u_xlat22;
  let x_679 : f32 = u_xlat22;
  u_xlat22 = (x_678 * x_679);
  let x_682 : f32 = u_xlat0.x;
  let x_683 : f32 = u_xlat22;
  u_xlat0.x = (x_682 * x_683);
  let x_686 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_686) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_690 : vec3<f32> = u_xlat4;
  let x_691 : vec3<f32> = u_xlat0;
  let x_694 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_690 * vec3<f32>(x_691.x, x_691.x, x_691.x)) + x_694);
  let x_696 : vec3<f32> = u_xlat7;
  let x_697 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_696 * x_697);
  let x_701 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = u_xlat1;
  let x_705 : vec3<f32> = u_xlat0;
  let x_706 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.z, x_701.w) * x_703) + x_705);
  let x_707 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

