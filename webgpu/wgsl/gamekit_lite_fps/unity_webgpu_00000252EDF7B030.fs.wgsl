struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat50 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(17) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb50 : bool;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_343 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_558 : f32;
  var x_570 : f32;
  var x_582 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_734 : f32;
  var x_746 : f32;
  var x_758 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat48;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_72.x, x_72.y));
  u_xlat49 = x_74.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : f32 = u_xlat49;
  u_xlat49 = (-(x_88) + 1.0f);
  let x_92 : f32 = u_xlat49;
  let x_96 : f32 = x_39.x_Cutoff;
  u_xlat49 = (x_92 + -(x_96));
  let x_102 : f32 = x_39.x_EdgeSize;
  u_xlat50 = (1.0f / -(x_102));
  let x_105 : f32 = u_xlat49;
  let x_106 : f32 = u_xlat50;
  u_xlat49 = (x_105 * x_106);
  let x_108 : f32 = u_xlat49;
  u_xlat49 = clamp(x_108, 0.0f, 1.0f);
  let x_111 : f32 = u_xlat49;
  u_xlat50 = ((x_111 * -2.0f) + 3.0f);
  let x_116 : f32 = u_xlat49;
  let x_117 : f32 = u_xlat49;
  u_xlat49 = (x_116 * x_117);
  let x_120 : f32 = u_xlat49;
  let x_121 : f32 = u_xlat50;
  u_xlat35 = (x_120 * x_121);
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  let x_131 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_129.z, x_129.w));
  u_xlat4 = x_131;
  let x_133 : vec4<f32> = u_xlat4;
  let x_138 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_147.z, x_147.w));
  u_xlat51 = x_149.x;
  let x_152 : f32 = u_xlat35;
  let x_156 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_39.x_Emission;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_159.w, x_159.w, x_159.w) * vec3<f32>(x_163.x, x_163.y, x_163.z)) + x_166);
  let x_174 : vec4<f32> = vs_TEXCOORD0;
  let x_176 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_174.z, x_174.w));
  u_xlat7 = vec3<f32>(x_176.x, x_176.y, x_176.w);
  let x_179 : f32 = u_xlat7.z;
  let x_181 : f32 = u_xlat7.x;
  u_xlat7.x = (x_179 * x_181);
  let x_184 : vec3<f32> = u_xlat7;
  let x_191 : vec2<f32> = ((vec2<f32>(x_184.x, x_184.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : vec3<f32> = u_xlat7;
  let x_196 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
  let x_199 : f32 = u_xlat35;
  u_xlat35 = min(x_199, 1.0f);
  let x_201 : f32 = u_xlat35;
  u_xlat35 = (-(x_201) + 1.0f);
  let x_204 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_204);
  let x_208 : f32 = u_xlat3.x;
  let x_211 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_208 * x_211);
  let x_214 : f32 = u_xlat50;
  let x_216 : f32 = u_xlat49;
  let x_219 : f32 = x_39.x_Cutoff;
  u_xlat49 = ((-(x_214) * x_216) + -(x_219));
  let x_222 : f32 = u_xlat49;
  u_xlat49 = (x_222 + 1.0f);
  let x_227 : f32 = u_xlat49;
  u_xlatb49 = (x_227 < 0.0f);
  let x_229 : bool = u_xlatb49;
  if (((select(0i, 1i, x_229) * -1i) != 0i)) {
    discard;
  }
  let x_241 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat8.x = x_241;
  let x_244 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat8.y = x_244;
  let x_248 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat8.z = x_248;
  let x_250 : vec3<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat8;
  u_xlat49 = dot(x_250, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat0;
  let x_258 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_261 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat8;
  let x_266 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : f32 = u_xlat50;
  u_xlat50 = sqrt(x_269);
  let x_271 : f32 = u_xlat49;
  let x_273 : f32 = u_xlat50;
  u_xlat50 = (-(x_271) + x_273);
  let x_276 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_277 : f32 = u_xlat50;
  let x_279 : f32 = u_xlat49;
  u_xlat49 = ((x_276 * x_277) + x_279);
  let x_281 : f32 = u_xlat49;
  let x_284 : f32 = x_39.x_LightShadowData.z;
  let x_287 : f32 = x_39.x_LightShadowData.w;
  u_xlat49 = ((x_281 * x_284) + x_287);
  let x_289 : f32 = u_xlat49;
  u_xlat49 = clamp(x_289, 0.0f, 1.0f);
  let x_294 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_294 == 1.0f);
  let x_296 : bool = u_xlatb50;
  if (x_296) {
    let x_300 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_300 == 1.0f);
    let x_302 : vec4<f32> = vs_TEXCOORD2;
    let x_306 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_308 : vec3<f32> = (vec3<f32>(x_302.w, x_302.w, x_302.w) * vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_312 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_314 : vec4<f32> = vs_TEXCOORD1;
    let x_317 : vec4<f32> = u_xlat8;
    let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.w, x_314.w, x_314.w)) + vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_323 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_325 : vec4<f32> = vs_TEXCOORD3;
    let x_328 : vec4<f32> = u_xlat8;
    let x_330 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.w, x_325.w, x_325.w)) + vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_331 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat8;
    let x_336 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_338 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(x_336.x, x_336.y, x_336.z));
    let x_339 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : bool = u_xlatb50;
    if (x_341) {
      let x_346 : vec4<f32> = u_xlat8;
      x_343 = vec3<f32>(x_346.x, x_346.y, x_346.z);
    } else {
      let x_349 : vec4<f32> = u_xlat0;
      x_343 = vec3<f32>(x_349.x, x_349.y, x_349.z);
    }
    let x_351 : vec3<f32> = x_343;
    let x_352 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_354 : vec4<f32> = u_xlat8;
    let x_358 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_360 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) + -(x_358));
    let x_361 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : vec4<f32> = u_xlat8;
    let x_367 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_368 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) * x_367);
    let x_369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_369.x, x_368.x, x_368.y, x_368.z);
    let x_372 : f32 = u_xlat8.y;
    u_xlat50 = ((x_372 * 0.25f) + 0.75f);
    let x_378 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_378 * 0.5f) + 0.75f);
    let x_382 : f32 = u_xlat50;
    let x_383 : f32 = u_xlat35;
    u_xlat8.x = max(x_382, x_383);
    let x_394 : vec4<f32> = u_xlat8;
    let x_396 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_394.x, x_394.z, x_394.w));
    u_xlat8 = x_396;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_402 : vec4<f32> = u_xlat8;
  let x_404 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat50 = dot(x_402, x_404);
  let x_406 : f32 = u_xlat50;
  u_xlat50 = clamp(x_406, 0.0f, 1.0f);
  let x_409 : vec4<f32> = vs_TEXCOORD6;
  let x_411 : vec4<f32> = vs_TEXCOORD6;
  let x_413 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) / vec2<f32>(x_411.w, x_411.w));
  let x_414 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_421 : vec4<f32> = u_xlat8;
  let x_423 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_421.x, x_421.y));
  u_xlat35 = x_423.x;
  let x_425 : f32 = u_xlat50;
  let x_426 : f32 = u_xlat35;
  u_xlat50 = (x_425 + -(x_426));
  let x_429 : f32 = u_xlat49;
  let x_430 : f32 = u_xlat50;
  let x_432 : f32 = u_xlat35;
  u_xlat49 = ((x_429 * x_430) + x_432);
  let x_434 : vec4<f32> = vs_TEXCOORD1;
  let x_436 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), x_436);
  let x_439 : vec4<f32> = vs_TEXCOORD2;
  let x_441 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), x_441);
  let x_444 : vec4<f32> = vs_TEXCOORD3;
  let x_446 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), x_446);
  let x_449 : vec4<f32> = u_xlat8;
  let x_451 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat50;
  let x_458 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_462 : f32 = u_xlat3.y;
  let x_466 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_462) * x_466) + 1.0f);
  let x_469 : vec4<f32> = u_xlat2;
  let x_472 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(-(vec3<f32>(x_469.x, x_469.y, x_469.z)), x_472);
  let x_474 : f32 = u_xlat35;
  let x_475 : f32 = u_xlat35;
  u_xlat35 = (x_474 + x_475);
  let x_477 : vec3<f32> = u_xlat7;
  let x_478 : f32 = u_xlat35;
  let x_482 : vec4<f32> = u_xlat2;
  let x_485 : vec3<f32> = ((x_477 * -(vec3<f32>(x_478, x_478, x_478))) + -(vec3<f32>(x_482.x, x_482.y, x_482.z)));
  let x_486 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat49;
  let x_493 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_498 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_498);
  let x_500 : bool = u_xlatb49;
  if (x_500) {
    let x_503 : vec4<f32> = u_xlat8;
    let x_505 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), vec3<f32>(x_505.x, x_505.y, x_505.z));
    let x_508 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_508);
    let x_511 : f32 = u_xlat49;
    let x_513 : vec4<f32> = u_xlat8;
    let x_515 : vec3<f32> = (vec3<f32>(x_511, x_511, x_511) * vec3<f32>(x_513.x, x_513.y, x_513.z));
    let x_516 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
    let x_519 : vec4<f32> = u_xlat0;
    let x_524 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_519.x, x_519.y, x_519.z)) + vec3<f32>(x_524.x, x_524.y, x_524.z));
    let x_527 : vec3<f32> = u_xlat11;
    let x_528 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_527 / vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_532 : vec4<f32> = u_xlat0;
    let x_537 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_532.x, x_532.y, x_532.z)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
    let x_540 : vec3<f32> = u_xlat12;
    let x_541 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_540 / vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_548 : vec4<f32> = u_xlat10;
    let x_551 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.x));
    u_xlatb13 = vec3<bool>(x_551.x, x_551.y, x_551.z);
    let x_554 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_554;
    let x_556 : bool = u_xlatb13.x;
    if (x_556) {
      let x_562 : f32 = u_xlat11.x;
      x_558 = x_562;
    } else {
      let x_565 : f32 = u_xlat12.x;
      x_558 = x_565;
    }
    let x_566 : f32 = x_558;
    hlslcc_movcTemp.x = x_566;
    let x_569 : bool = u_xlatb13.y;
    if (x_569) {
      let x_574 : f32 = u_xlat11.y;
      x_570 = x_574;
    } else {
      let x_577 : f32 = u_xlat12.y;
      x_570 = x_577;
    }
    let x_578 : f32 = x_570;
    hlslcc_movcTemp.y = x_578;
    let x_581 : bool = u_xlatb13.z;
    if (x_581) {
      let x_586 : f32 = u_xlat11.z;
      x_582 = x_586;
    } else {
      let x_589 : f32 = u_xlat12.z;
      x_582 = x_589;
    }
    let x_590 : f32 = x_582;
    hlslcc_movcTemp.z = x_590;
    let x_592 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_592;
    let x_594 : f32 = u_xlat11.y;
    let x_596 : f32 = u_xlat11.x;
    u_xlat49 = min(x_594, x_596);
    let x_599 : f32 = u_xlat11.z;
    let x_600 : f32 = u_xlat49;
    u_xlat49 = min(x_599, x_600);
    let x_602 : vec4<f32> = u_xlat0;
    let x_605 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_602.x, x_602.y, x_602.z) + -(vec3<f32>(x_605.x, x_605.y, x_605.z)));
    let x_609 : vec4<f32> = u_xlat10;
    let x_611 : f32 = u_xlat49;
    let x_614 : vec3<f32> = u_xlat11;
    let x_615 : vec3<f32> = ((vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(x_611, x_611, x_611)) + x_614);
    let x_616 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  } else {
    let x_619 : vec4<f32> = u_xlat8;
    let x_620 : vec3<f32> = vec3<f32>(x_619.x, x_619.y, x_619.z);
    let x_621 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  }
  let x_623 : f32 = u_xlat50;
  u_xlat49 = ((-(x_623) * 0.699999988f) + 1.700000048f);
  let x_629 : f32 = u_xlat49;
  let x_630 : f32 = u_xlat50;
  u_xlat49 = (x_629 * x_630);
  let x_632 : f32 = u_xlat49;
  u_xlat49 = (x_632 * 6.0f);
  let x_643 : vec4<f32> = u_xlat10;
  let x_645 : f32 = u_xlat49;
  let x_646 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_643.x, x_643.y, x_643.z), x_645);
  u_xlat10 = x_646;
  let x_648 : f32 = u_xlat10.w;
  u_xlat35 = (x_648 + -1.0f);
  let x_652 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_653 : f32 = u_xlat35;
  u_xlat35 = ((x_652 * x_653) + 1.0f);
  let x_656 : f32 = u_xlat35;
  u_xlat35 = log2(x_656);
  let x_658 : f32 = u_xlat35;
  let x_660 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_658 * x_660);
  let x_662 : f32 = u_xlat35;
  u_xlat35 = exp2(x_662);
  let x_664 : f32 = u_xlat35;
  let x_666 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_664 * x_666);
  let x_668 : vec4<f32> = u_xlat10;
  let x_670 : f32 = u_xlat35;
  u_xlat11 = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_670, x_670, x_670));
  let x_675 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_675 < 0.999989986f);
  let x_678 : bool = u_xlatb52;
  if (x_678) {
    let x_683 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_683);
    let x_685 : bool = u_xlatb52;
    if (x_685) {
      let x_689 : vec4<f32> = u_xlat8;
      let x_691 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), vec3<f32>(x_691.x, x_691.y, x_691.z));
      let x_694 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_694);
      let x_696 : f32 = u_xlat52;
      let x_698 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_696, x_696, x_696) * vec3<f32>(x_698.x, x_698.y, x_698.z));
      let x_702 : vec4<f32> = u_xlat0;
      let x_707 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(x_707.x, x_707.y, x_707.z));
      let x_710 : vec3<f32> = u_xlat13;
      let x_711 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_710 / x_711);
      let x_714 : vec4<f32> = u_xlat0;
      let x_719 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_714.x, x_714.y, x_714.z)) + vec3<f32>(x_719.x, x_719.y, x_719.z));
      let x_722 : vec3<f32> = u_xlat14;
      let x_723 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_722 / x_723);
      let x_726 : vec3<f32> = u_xlat12;
      let x_728 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_726.x, x_726.y, x_726.z, x_726.x));
      u_xlatb15 = vec3<bool>(x_728.x, x_728.y, x_728.z);
      let x_731 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_731;
      let x_733 : bool = u_xlatb15.x;
      if (x_733) {
        let x_738 : f32 = u_xlat13.x;
        x_734 = x_738;
      } else {
        let x_741 : f32 = u_xlat14.x;
        x_734 = x_741;
      }
      let x_742 : f32 = x_734;
      hlslcc_movcTemp_1.x = x_742;
      let x_745 : bool = u_xlatb15.y;
      if (x_745) {
        let x_750 : f32 = u_xlat13.y;
        x_746 = x_750;
      } else {
        let x_753 : f32 = u_xlat14.y;
        x_746 = x_753;
      }
      let x_754 : f32 = x_746;
      hlslcc_movcTemp_1.y = x_754;
      let x_757 : bool = u_xlatb15.z;
      if (x_757) {
        let x_762 : f32 = u_xlat13.z;
        x_758 = x_762;
      } else {
        let x_765 : f32 = u_xlat14.z;
        x_758 = x_765;
      }
      let x_766 : f32 = x_758;
      hlslcc_movcTemp_1.z = x_766;
      let x_768 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_768;
      let x_770 : f32 = u_xlat13.y;
      let x_772 : f32 = u_xlat13.x;
      u_xlat52 = min(x_770, x_772);
      let x_775 : f32 = u_xlat13.z;
      let x_776 : f32 = u_xlat52;
      u_xlat52 = min(x_775, x_776);
      let x_778 : vec4<f32> = u_xlat0;
      let x_781 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_784 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + -(vec3<f32>(x_781.x, x_781.y, x_781.z)));
      let x_785 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
      let x_787 : vec3<f32> = u_xlat12;
      let x_788 : f32 = u_xlat52;
      let x_791 : vec4<f32> = u_xlat0;
      let x_793 : vec3<f32> = ((x_787 * vec3<f32>(x_788, x_788, x_788)) + vec3<f32>(x_791.x, x_791.y, x_791.z));
      let x_794 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
    }
    let x_800 : vec4<f32> = u_xlat8;
    let x_802 : f32 = u_xlat49;
    let x_803 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_800.x, x_800.y, x_800.z), x_802);
    u_xlat8 = x_803;
    let x_805 : f32 = u_xlat8.w;
    u_xlat0.x = (x_805 + -1.0f);
    let x_810 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_812 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_810 * x_812) + 1.0f);
    let x_817 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_817);
    let x_821 : f32 = u_xlat0.x;
    let x_823 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_821 * x_823);
    let x_827 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_827);
    let x_831 : f32 = u_xlat0.x;
    let x_833 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_831 * x_833);
    let x_836 : vec4<f32> = u_xlat8;
    let x_838 : vec4<f32> = u_xlat0;
    let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838.x, x_838.x, x_838.x));
    let x_841 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
    let x_843 : f32 = u_xlat35;
    let x_845 : vec4<f32> = u_xlat10;
    let x_848 : vec4<f32> = u_xlat0;
    let x_851 : vec3<f32> = ((vec3<f32>(x_843, x_843, x_843) * vec3<f32>(x_845.x, x_845.y, x_845.z)) + -(vec3<f32>(x_848.x, x_848.y, x_848.z)));
    let x_852 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
    let x_855 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_857 : vec4<f32> = u_xlat8;
    let x_860 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_855.w, x_855.w, x_855.w) * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(x_860.x, x_860.y, x_860.z));
  }
  let x_863 : f32 = u_xlat51;
  let x_865 : vec3<f32> = u_xlat11;
  let x_866 : vec3<f32> = (vec3<f32>(x_863, x_863, x_863) * x_865);
  let x_867 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat4;
  let x_872 : vec4<f32> = x_39.x_Color;
  let x_877 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_872.x, x_872.y, x_872.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_878 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec4<f32> = u_xlat4;
  let x_887 : vec3<f32> = ((vec3<f32>(x_880.x, x_880.x, x_880.x) * vec3<f32>(x_882.x, x_882.y, x_882.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_891 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_891) * 0.959999979f) + 0.959999979f);
  let x_896 : f32 = u_xlat49;
  let x_898 : vec3<f32> = u_xlat5;
  let x_899 : vec3<f32> = (vec3<f32>(x_896, x_896, x_896) * x_898);
  let x_900 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_899.z);
  let x_902 : vec3<f32> = u_xlat1;
  let x_903 : f32 = u_xlat48;
  let x_907 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_902 * vec3<f32>(x_903, x_903, x_903)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec3<f32> = u_xlat1;
  let x_911 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_910, x_911);
  let x_913 : f32 = u_xlat48;
  u_xlat48 = max(x_913, 0.001f);
  let x_916 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_916);
  let x_918 : f32 = u_xlat48;
  let x_920 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_918, x_918, x_918) * x_920);
  let x_922 : vec3<f32> = u_xlat7;
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_922, vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec3<f32> = u_xlat7;
  let x_928 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_926, vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_933 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_933, 0.0f, 1.0f);
  let x_937 : vec3<f32> = u_xlat7;
  let x_938 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_937, x_938);
  let x_940 : f32 = u_xlat18;
  u_xlat18 = clamp(x_940, 0.0f, 1.0f);
  let x_943 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_945 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), x_945);
  let x_949 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_949, 0.0f, 1.0f);
  let x_954 : f32 = u_xlat1.x;
  let x_956 : f32 = u_xlat1.x;
  u_xlat17 = (x_954 * x_956);
  let x_958 : f32 = u_xlat17;
  let x_960 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_958, x_958), vec2<f32>(x_960, x_960));
  let x_963 : f32 = u_xlat17;
  u_xlat17 = (x_963 + -0.5f);
  let x_968 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_968) + 1.0f);
  let x_972 : f32 = u_xlat33;
  let x_973 : f32 = u_xlat33;
  u_xlat34 = (x_972 * x_973);
  let x_975 : f32 = u_xlat34;
  let x_976 : f32 = u_xlat34;
  u_xlat34 = (x_975 * x_976);
  let x_978 : f32 = u_xlat33;
  let x_979 : f32 = u_xlat34;
  u_xlat33 = (x_978 * x_979);
  let x_981 : f32 = u_xlat17;
  let x_982 : f32 = u_xlat33;
  u_xlat33 = ((x_981 * x_982) + 1.0f);
  let x_985 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_985)) + 1.0f);
  let x_989 : f32 = u_xlat34;
  let x_990 : f32 = u_xlat34;
  u_xlat52 = (x_989 * x_990);
  let x_992 : f32 = u_xlat52;
  let x_993 : f32 = u_xlat52;
  u_xlat52 = (x_992 * x_993);
  let x_995 : f32 = u_xlat34;
  let x_996 : f32 = u_xlat52;
  u_xlat34 = (x_995 * x_996);
  let x_998 : f32 = u_xlat17;
  let x_999 : f32 = u_xlat34;
  u_xlat17 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat17;
  let x_1003 : f32 = u_xlat33;
  u_xlat17 = (x_1002 * x_1003);
  let x_1006 : f32 = u_xlat2.x;
  let x_1007 : f32 = u_xlat17;
  u_xlat17 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat50;
  let x_1010 : f32 = u_xlat50;
  u_xlat33 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat33;
  u_xlat33 = max(x_1012, 0.002f);
  let x_1015 : f32 = u_xlat33;
  u_xlat50 = (-(x_1015) + 1.0f);
  let x_1018 : f32 = u_xlat48;
  let x_1020 : f32 = u_xlat50;
  let x_1022 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_1018) * x_1020) + x_1022);
  let x_1025 : f32 = u_xlat2.x;
  let x_1026 : f32 = u_xlat50;
  let x_1028 : f32 = u_xlat33;
  u_xlat50 = ((x_1025 * x_1026) + x_1028);
  let x_1030 : f32 = u_xlat48;
  let x_1032 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1030) * x_1032);
  let x_1035 : f32 = u_xlat2.x;
  let x_1036 : f32 = u_xlat52;
  let x_1038 : f32 = u_xlat48;
  u_xlat48 = ((x_1035 * x_1036) + x_1038);
  let x_1040 : f32 = u_xlat48;
  u_xlat48 = (x_1040 + 0.00001f);
  let x_1043 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1043);
  let x_1045 : f32 = u_xlat33;
  let x_1046 : f32 = u_xlat33;
  u_xlat50 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat18;
  let x_1049 : f32 = u_xlat50;
  let x_1051 : f32 = u_xlat18;
  u_xlat52 = ((x_1048 * x_1049) + -(x_1051));
  let x_1054 : f32 = u_xlat52;
  let x_1055 : f32 = u_xlat18;
  u_xlat18 = ((x_1054 * x_1055) + 1.0f);
  let x_1058 : f32 = u_xlat50;
  u_xlat50 = (x_1058 * 0.318309873f);
  let x_1061 : f32 = u_xlat18;
  let x_1062 : f32 = u_xlat18;
  u_xlat18 = ((x_1061 * x_1062) + 0.0000001f);
  let x_1066 : f32 = u_xlat50;
  let x_1067 : f32 = u_xlat18;
  u_xlat18 = (x_1066 / x_1067);
  let x_1069 : f32 = u_xlat48;
  let x_1070 : f32 = u_xlat18;
  u_xlat48 = (x_1069 * x_1070);
  let x_1073 : f32 = u_xlat2.x;
  let x_1074 : f32 = u_xlat48;
  u_xlat48 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat48;
  u_xlat48 = (x_1076 * 3.141592741f);
  let x_1079 : f32 = u_xlat48;
  u_xlat48 = max(x_1079, 0.0f);
  let x_1081 : f32 = u_xlat33;
  let x_1082 : f32 = u_xlat33;
  u_xlat33 = ((x_1081 * x_1082) + 1.0f);
  let x_1085 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1085);
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1096 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1096 == 0.0f));
  let x_1098 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1098);
  let x_1101 : f32 = u_xlat48;
  let x_1103 : f32 = u_xlat2.x;
  u_xlat48 = (x_1101 * x_1103);
  let x_1106 : f32 = u_xlat3.y;
  let x_1108 : f32 = x_39.x_Glossiness;
  let x_1110 : f32 = u_xlat49;
  u_xlat49 = ((x_1106 * x_1108) + -(x_1110));
  let x_1113 : f32 = u_xlat49;
  u_xlat49 = (x_1113 + 1.0f);
  let x_1115 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1115, 0.0f, 1.0f);
  let x_1117 : f32 = u_xlat17;
  let x_1119 : vec3<f32> = u_xlat9;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1117, x_1117, x_1117) * x_1119);
  let x_1121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1120.z);
  let x_1123 : vec3<f32> = u_xlat9;
  let x_1124 : f32 = u_xlat48;
  u_xlat5 = (x_1123 * vec3<f32>(x_1124, x_1124, x_1124));
  let x_1128 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1128) + 1.0f);
  let x_1133 : f32 = u_xlat0.w;
  let x_1135 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1133 * x_1135);
  let x_1139 : f32 = u_xlat1.x;
  let x_1141 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1139 * x_1141);
  let x_1144 : vec4<f32> = u_xlat0;
  let x_1145 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1144 * vec4<f32>(x_1145.z, x_1145.z, x_1145.z, x_1145.x));
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1148.x, x_1148.y, x_1148.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1153 : vec3<f32> = u_xlat7;
  let x_1154 : vec4<f32> = u_xlat0;
  let x_1157 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1153 * vec3<f32>(x_1154.w, x_1154.w, x_1154.w)) + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec3<f32> = u_xlat5;
  let x_1161 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_1160 * x_1161);
  let x_1163 : vec4<f32> = u_xlat3;
  let x_1165 : vec4<f32> = u_xlat2;
  let x_1168 : vec3<f32> = u_xlat5;
  let x_1169 : vec3<f32> = ((vec3<f32>(x_1163.x, x_1163.z, x_1163.w) * vec3<f32>(x_1165.x, x_1165.y, x_1165.w)) + x_1168);
  let x_1170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1169.z);
  let x_1172 : vec4<f32> = u_xlat4;
  let x_1175 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1172.x, x_1172.y, x_1172.z)) + vec3<f32>(x_1175, x_1175, x_1175));
  let x_1178 : f32 = u_xlat34;
  let x_1180 : vec3<f32> = u_xlat1;
  let x_1182 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1178, x_1178, x_1178) * x_1180) + vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat0;
  let x_1187 : vec3<f32> = u_xlat1;
  let x_1189 : vec4<f32> = u_xlat2;
  let x_1191 : vec3<f32> = ((vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * x_1187) + vec3<f32>(x_1189.x, x_1189.y, x_1189.w));
  let x_1192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1196 : vec3<f32> = u_xlat6;
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1199 : vec3<f32> = (x_1196 + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

