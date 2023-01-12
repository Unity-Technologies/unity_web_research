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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var x_312 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb41 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_521 : f32;
  var x_533 : f32;
  var x_545 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_699 : f32;
  var x_711 : f32;
  var x_723 : f32;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
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
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_92 : f32 = u_xlat2.z;
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_95);
  let x_98 : vec3<f32> = u_xlat2;
  let x_105 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat2;
  let x_112 : f32 = x_33.x_BumpScale;
  let x_114 : vec2<f32> = (vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112, x_112));
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_114.x, x_114.y, x_115.z);
  let x_118 : vec3<f32> = u_xlat2;
  let x_120 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat40;
  u_xlat40 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat40;
  u_xlat40 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat40;
  u_xlat40 = sqrt(x_129);
  let x_132 : vec3<f32> = u_xlat2;
  let x_135 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = vs_TEXCOORD2;
  let x_141 : vec3<f32> = u_xlat2;
  let x_144 : vec3<f32> = u_xlat15;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = vs_TEXCOORD4;
  let x_149 : f32 = u_xlat40;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149, x_149, x_149)) + x_152);
  let x_154 : vec3<f32> = u_xlat2;
  let x_155 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(x_154, x_155);
  let x_157 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_157);
  let x_159 : f32 = u_xlat40;
  let x_161 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_159, x_159, x_159) * x_161);
  let x_164 : vec4<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_169);
  let x_173 : f32 = u_xlat40;
  let x_175 : vec4<f32> = vs_TEXCOORD1;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_184 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_184;
  let x_187 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_187;
  let x_191 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_191;
  let x_194 : vec3<f32> = u_xlat4;
  let x_199 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_200 : vec3<f32> = (-(x_194) + x_199);
  let x_201 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_206 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_206;
  let x_210 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_210;
  let x_214 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_214;
  let x_217 : vec4<f32> = u_xlat5;
  let x_219 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), x_219);
  let x_221 : vec3<f32> = u_xlat4;
  let x_224 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_227 : vec3<f32> = (x_221 + -(vec3<f32>(x_224.x, x_224.y, x_224.z)));
  let x_228 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = u_xlat5;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_236);
  let x_238 : f32 = u_xlat41;
  let x_240 : f32 = u_xlat42;
  u_xlat42 = (-(x_238) + x_240);
  let x_243 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_244 : f32 = u_xlat42;
  let x_246 : f32 = u_xlat41;
  u_xlat41 = ((x_243 * x_244) + x_246);
  let x_248 : f32 = u_xlat41;
  let x_251 : f32 = x_33.x_LightShadowData.z;
  let x_254 : f32 = x_33.x_LightShadowData.w;
  u_xlat41 = ((x_248 * x_251) + x_254);
  let x_256 : f32 = u_xlat41;
  u_xlat41 = clamp(x_256, 0.0f, 1.0f);
  let x_264 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_264 == 1.0f);
  let x_266 : bool = u_xlatb42;
  if (x_266) {
    let x_270 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_270 == 1.0f);
    let x_272 : vec4<f32> = vs_TEXCOORD3;
    let x_276 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_278 : vec3<f32> = (vec3<f32>(x_272.w, x_272.w, x_272.w) * vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_282 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_284 : vec4<f32> = vs_TEXCOORD2;
    let x_287 : vec4<f32> = u_xlat5;
    let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.w, x_284.w, x_284.w)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_293 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_295 : vec4<f32> = vs_TEXCOORD4;
    let x_298 : vec4<f32> = u_xlat5;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.w, x_295.w, x_295.w)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat5;
    let x_306 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_308 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : bool = u_xlatb42;
    if (x_311) {
      let x_315 : vec4<f32> = u_xlat5;
      x_312 = vec3<f32>(x_315.x, x_315.y, x_315.z);
    } else {
      let x_318 : vec3<f32> = u_xlat4;
      x_312 = x_318;
    }
    let x_319 : vec3<f32> = x_312;
    let x_320 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat5;
    let x_326 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat5;
    let x_335 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_340 : f32 = u_xlat5.y;
    u_xlat42 = ((x_340 * 0.25f) + 0.75f);
    let x_347 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_347 * 0.5f) + 0.75f);
    let x_351 : f32 = u_xlat42;
    let x_352 : f32 = u_xlat43;
    u_xlat5.x = max(x_351, x_352);
    let x_363 : vec4<f32> = u_xlat5;
    let x_365 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_363.x, x_363.z, x_363.w));
    u_xlat5 = x_365;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_371 : vec4<f32> = u_xlat5;
  let x_373 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_371, x_373);
  let x_375 : f32 = u_xlat42;
  u_xlat42 = clamp(x_375, 0.0f, 1.0f);
  let x_378 : vec4<f32> = vs_TEXCOORD7;
  let x_380 : vec4<f32> = vs_TEXCOORD7;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) / vec2<f32>(x_380.w, x_380.w));
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
  let x_390 : vec4<f32> = u_xlat5;
  let x_392 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_390.x, x_390.y));
  u_xlat43 = x_392.x;
  let x_394 : f32 = u_xlat42;
  let x_395 : f32 = u_xlat43;
  u_xlat42 = (x_394 + -(x_395));
  let x_398 : f32 = u_xlat41;
  let x_399 : f32 = u_xlat42;
  let x_401 : f32 = u_xlat43;
  u_xlat41 = ((x_398 * x_399) + x_401);
  let x_408 : vec4<f32> = vs_TEXCOORD0;
  let x_410 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_408.x, x_408.y));
  u_xlat42 = x_410.y;
  let x_414 : f32 = x_33.x_OcclusionStrength;
  u_xlat43 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat42;
  let x_419 : f32 = x_33.x_OcclusionStrength;
  let x_421 : f32 = u_xlat43;
  u_xlat42 = ((x_417 * x_419) + x_421);
  let x_425 : f32 = x_33.x_Glossiness;
  u_xlat43 = (-(x_425) + 1.0f);
  let x_428 : vec4<f32> = u_xlat3;
  let x_430 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), x_430);
  let x_434 : f32 = u_xlat5.x;
  let x_436 : f32 = u_xlat5.x;
  u_xlat5.x = (x_434 + x_436);
  let x_439 : vec3<f32> = u_xlat2;
  let x_440 : vec4<f32> = u_xlat5;
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec3<f32> = ((x_439 * -(vec3<f32>(x_440.x, x_440.x, x_440.x))) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : f32 = u_xlat41;
  let x_453 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_459 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_459);
  let x_461 : bool = u_xlatb41;
  if (x_461) {
    let x_464 : vec4<f32> = u_xlat5;
    let x_466 : vec4<f32> = u_xlat5;
    u_xlat41 = dot(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_469);
    let x_472 : f32 = u_xlat41;
    let x_474 : vec4<f32> = u_xlat5;
    let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_480 : vec3<f32> = u_xlat4;
    let x_484 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_480) + vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec3<f32> = u_xlat8;
    let x_488 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_487 / vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_492 : vec3<f32> = u_xlat4;
    let x_496 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_498 : vec3<f32> = (-(x_492) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : vec4<f32> = u_xlat9;
    let x_503 : vec4<f32> = u_xlat7;
    let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) / vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_506 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_512 : vec4<f32> = u_xlat7;
    let x_515 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_512.x, x_512.y, x_512.z, x_512.x));
    u_xlatb10 = vec3<bool>(x_515.x, x_515.y, x_515.z);
    let x_518 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_518;
    let x_520 : bool = u_xlatb10.x;
    if (x_520) {
      let x_525 : f32 = u_xlat8.x;
      x_521 = x_525;
    } else {
      let x_528 : f32 = u_xlat9.x;
      x_521 = x_528;
    }
    let x_529 : f32 = x_521;
    hlslcc_movcTemp.x = x_529;
    let x_532 : bool = u_xlatb10.y;
    if (x_532) {
      let x_537 : f32 = u_xlat8.y;
      x_533 = x_537;
    } else {
      let x_540 : f32 = u_xlat9.y;
      x_533 = x_540;
    }
    let x_541 : f32 = x_533;
    hlslcc_movcTemp.y = x_541;
    let x_544 : bool = u_xlatb10.z;
    if (x_544) {
      let x_549 : f32 = u_xlat8.z;
      x_545 = x_549;
    } else {
      let x_552 : f32 = u_xlat9.z;
      x_545 = x_552;
    }
    let x_553 : f32 = x_545;
    hlslcc_movcTemp.z = x_553;
    let x_555 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_555;
    let x_557 : f32 = u_xlat8.y;
    let x_559 : f32 = u_xlat8.x;
    u_xlat41 = min(x_557, x_559);
    let x_562 : f32 = u_xlat8.z;
    let x_563 : f32 = u_xlat41;
    u_xlat41 = min(x_562, x_563);
    let x_565 : vec3<f32> = u_xlat4;
    let x_567 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_565 + -(vec3<f32>(x_567.x, x_567.y, x_567.z)));
    let x_571 : vec4<f32> = u_xlat7;
    let x_573 : f32 = u_xlat41;
    let x_576 : vec3<f32> = u_xlat8;
    let x_577 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573, x_573, x_573)) + x_576);
    let x_578 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  } else {
    let x_581 : vec4<f32> = u_xlat5;
    let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.z);
    let x_583 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  }
  let x_585 : f32 = u_xlat43;
  u_xlat41 = ((-(x_585) * 0.699999988f) + 1.700000048f);
  let x_591 : f32 = u_xlat41;
  let x_592 : f32 = u_xlat43;
  u_xlat41 = (x_591 * x_592);
  let x_594 : f32 = u_xlat41;
  u_xlat41 = (x_594 * 6.0f);
  let x_605 : vec4<f32> = u_xlat7;
  let x_607 : f32 = u_xlat41;
  let x_608 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_605.x, x_605.y, x_605.z), x_607);
  u_xlat7 = x_608;
  let x_611 : f32 = u_xlat7.w;
  u_xlat44 = (x_611 + -1.0f);
  let x_615 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_616 : f32 = u_xlat44;
  u_xlat44 = ((x_615 * x_616) + 1.0f);
  let x_619 : f32 = u_xlat44;
  u_xlat44 = log2(x_619);
  let x_621 : f32 = u_xlat44;
  let x_623 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_621 * x_623);
  let x_625 : f32 = u_xlat44;
  u_xlat44 = exp2(x_625);
  let x_627 : f32 = u_xlat44;
  let x_629 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_627 * x_629);
  let x_631 : vec4<f32> = u_xlat7;
  let x_633 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633, x_633, x_633));
  let x_638 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_638 < 0.999989986f);
  let x_641 : bool = u_xlatb45;
  if (x_641) {
    let x_646 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_646);
    let x_648 : bool = u_xlatb45;
    if (x_648) {
      let x_652 : vec4<f32> = u_xlat5;
      let x_654 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
      let x_657 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_657);
      let x_659 : vec4<f32> = u_xlat5;
      let x_661 : f32 = u_xlat45;
      let x_663 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661, x_661, x_661));
      let x_664 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
      let x_667 : vec3<f32> = u_xlat4;
      let x_671 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_667) + vec3<f32>(x_671.x, x_671.y, x_671.z));
      let x_674 : vec3<f32> = u_xlat10;
      let x_675 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_674 / vec3<f32>(x_675.x, x_675.y, x_675.z));
      let x_679 : vec3<f32> = u_xlat4;
      let x_683 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_679) + vec3<f32>(x_683.x, x_683.y, x_683.z));
      let x_686 : vec3<f32> = u_xlat11;
      let x_687 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_686 / vec3<f32>(x_687.x, x_687.y, x_687.z));
      let x_691 : vec4<f32> = u_xlat9;
      let x_693 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_691.x, x_691.y, x_691.z, x_691.x));
      u_xlatb12 = vec3<bool>(x_693.x, x_693.y, x_693.z);
      let x_696 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_696;
      let x_698 : bool = u_xlatb12.x;
      if (x_698) {
        let x_703 : f32 = u_xlat10.x;
        x_699 = x_703;
      } else {
        let x_706 : f32 = u_xlat11.x;
        x_699 = x_706;
      }
      let x_707 : f32 = x_699;
      hlslcc_movcTemp_1.x = x_707;
      let x_710 : bool = u_xlatb12.y;
      if (x_710) {
        let x_715 : f32 = u_xlat10.y;
        x_711 = x_715;
      } else {
        let x_718 : f32 = u_xlat11.y;
        x_711 = x_718;
      }
      let x_719 : f32 = x_711;
      hlslcc_movcTemp_1.y = x_719;
      let x_722 : bool = u_xlatb12.z;
      if (x_722) {
        let x_727 : f32 = u_xlat10.z;
        x_723 = x_727;
      } else {
        let x_730 : f32 = u_xlat11.z;
        x_723 = x_730;
      }
      let x_731 : f32 = x_723;
      hlslcc_movcTemp_1.z = x_731;
      let x_733 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_733;
      let x_735 : f32 = u_xlat10.y;
      let x_737 : f32 = u_xlat10.x;
      u_xlat45 = min(x_735, x_737);
      let x_740 : f32 = u_xlat10.z;
      let x_741 : f32 = u_xlat45;
      u_xlat45 = min(x_740, x_741);
      let x_743 : vec3<f32> = u_xlat4;
      let x_745 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_743 + -(vec3<f32>(x_745.x, x_745.y, x_745.z)));
      let x_749 : vec4<f32> = u_xlat9;
      let x_751 : f32 = u_xlat45;
      let x_754 : vec3<f32> = u_xlat4;
      let x_755 : vec3<f32> = ((vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_751, x_751, x_751)) + x_754);
      let x_756 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
    }
    let x_762 : vec4<f32> = u_xlat5;
    let x_764 : f32 = u_xlat41;
    let x_765 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_762.x, x_762.y, x_762.z), x_764);
    u_xlat9 = x_765;
    let x_767 : f32 = u_xlat9.w;
    u_xlat41 = (x_767 + -1.0f);
    let x_771 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_772 : f32 = u_xlat41;
    u_xlat41 = ((x_771 * x_772) + 1.0f);
    let x_775 : f32 = u_xlat41;
    u_xlat41 = log2(x_775);
    let x_777 : f32 = u_xlat41;
    let x_779 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_777 * x_779);
    let x_781 : f32 = u_xlat41;
    u_xlat41 = exp2(x_781);
    let x_783 : f32 = u_xlat41;
    let x_785 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_783 * x_785);
    let x_787 : vec4<f32> = u_xlat9;
    let x_789 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789));
    let x_792 : f32 = u_xlat44;
    let x_794 : vec4<f32> = u_xlat7;
    let x_797 : vec3<f32> = u_xlat4;
    let x_799 : vec3<f32> = ((vec3<f32>(x_792, x_792, x_792) * vec3<f32>(x_794.x, x_794.y, x_794.z)) + -(x_797));
    let x_800 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
    let x_803 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_805 : vec4<f32> = u_xlat5;
    let x_808 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_803.w, x_803.w, x_803.w) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + x_808);
  }
  let x_810 : f32 = u_xlat42;
  let x_812 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_810, x_810, x_810) * x_812);
  let x_814 : vec4<f32> = vs_TEXCOORD1;
  let x_817 : f32 = u_xlat40;
  let x_821 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_823 : vec3<f32> = ((-(vec3<f32>(x_814.x, x_814.y, x_814.z)) * vec3<f32>(x_817, x_817, x_817)) + vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat5;
  let x_828 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat40;
  u_xlat40 = max(x_831, 0.001f);
  let x_834 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_834);
  let x_836 : f32 = u_xlat40;
  let x_838 : vec4<f32> = u_xlat5;
  let x_840 : vec3<f32> = (vec3<f32>(x_836, x_836, x_836) * vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec3<f32> = u_xlat2;
  let x_844 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_843, -(vec3<f32>(x_844.x, x_844.y, x_844.z)));
  let x_848 : vec3<f32> = u_xlat2;
  let x_850 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_848, vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : f32 = u_xlat41;
  u_xlat41 = clamp(x_853, 0.0f, 1.0f);
  let x_855 : vec3<f32> = u_xlat2;
  let x_856 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_855, vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_861 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_861, 0.0f, 1.0f);
  let x_865 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_867 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_872 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_872, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat15.x;
  let x_879 : f32 = u_xlat15.x;
  u_xlat28 = (x_877 * x_879);
  let x_881 : f32 = u_xlat28;
  let x_883 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_881, x_881), vec2<f32>(x_883, x_883));
  let x_886 : f32 = u_xlat28;
  u_xlat28 = (x_886 + -0.5f);
  let x_889 : f32 = u_xlat41;
  u_xlat3.x = (-(x_889) + 1.0f);
  let x_895 : f32 = u_xlat3.x;
  let x_897 : f32 = u_xlat3.x;
  u_xlat16 = (x_895 * x_897);
  let x_899 : f32 = u_xlat16;
  let x_900 : f32 = u_xlat16;
  u_xlat16 = (x_899 * x_900);
  let x_903 : f32 = u_xlat3.x;
  let x_904 : f32 = u_xlat16;
  u_xlat3.x = (x_903 * x_904);
  let x_907 : f32 = u_xlat28;
  let x_909 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_907 * x_909) + 1.0f);
  let x_913 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_913)) + 1.0f);
  let x_918 : f32 = u_xlat16;
  let x_919 : f32 = u_xlat16;
  u_xlat29 = (x_918 * x_919);
  let x_921 : f32 = u_xlat29;
  let x_922 : f32 = u_xlat29;
  u_xlat29 = (x_921 * x_922);
  let x_924 : f32 = u_xlat16;
  let x_925 : f32 = u_xlat29;
  u_xlat16 = (x_924 * x_925);
  let x_927 : f32 = u_xlat28;
  let x_928 : f32 = u_xlat16;
  u_xlat28 = ((x_927 * x_928) + 1.0f);
  let x_931 : f32 = u_xlat28;
  let x_933 : f32 = u_xlat3.x;
  u_xlat28 = (x_931 * x_933);
  let x_935 : f32 = u_xlat41;
  let x_936 : f32 = u_xlat28;
  u_xlat28 = (x_935 * x_936);
  let x_938 : f32 = u_xlat43;
  let x_939 : f32 = u_xlat43;
  u_xlat3.x = (x_938 * x_939);
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_943, 0.002f);
  let x_948 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_948) + 1.0f);
  let x_951 : f32 = u_xlat40;
  let x_953 : f32 = u_xlat29;
  let x_956 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_951) * x_953) + x_956);
  let x_958 : f32 = u_xlat41;
  let x_959 : f32 = u_xlat29;
  let x_962 : f32 = u_xlat3.x;
  u_xlat29 = ((x_958 * x_959) + x_962);
  let x_964 : f32 = u_xlat40;
  let x_966 : f32 = u_xlat29;
  u_xlat40 = (abs(x_964) * x_966);
  let x_968 : f32 = u_xlat41;
  let x_969 : f32 = u_xlat42;
  let x_971 : f32 = u_xlat40;
  u_xlat40 = ((x_968 * x_969) + x_971);
  let x_973 : f32 = u_xlat40;
  u_xlat40 = (x_973 + 0.00001f);
  let x_976 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_976);
  let x_979 : f32 = u_xlat3.x;
  let x_981 : f32 = u_xlat3.x;
  u_xlat29 = (x_979 * x_981);
  let x_984 : f32 = u_xlat2.x;
  let x_985 : f32 = u_xlat29;
  let x_988 : f32 = u_xlat2.x;
  u_xlat42 = ((x_984 * x_985) + -(x_988));
  let x_991 : f32 = u_xlat42;
  let x_993 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_991 * x_993) + 1.0f);
  let x_997 : f32 = u_xlat29;
  u_xlat29 = (x_997 * 0.318309873f);
  let x_1001 : f32 = u_xlat2.x;
  let x_1003 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1001 * x_1003) + 0.0000001f);
  let x_1008 : f32 = u_xlat29;
  let x_1010 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1008 / x_1010);
  let x_1013 : f32 = u_xlat40;
  let x_1015 : f32 = u_xlat2.x;
  u_xlat40 = (x_1013 * x_1015);
  let x_1017 : f32 = u_xlat41;
  let x_1018 : f32 = u_xlat40;
  u_xlat40 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat40;
  u_xlat40 = (x_1020 * 3.141592741f);
  let x_1023 : f32 = u_xlat40;
  u_xlat40 = max(x_1023, 0.0f);
  let x_1026 : f32 = u_xlat3.x;
  let x_1028 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1026 * x_1028) + 1.0f);
  let x_1033 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1033);
  let x_1036 : vec3<f32> = u_xlat0;
  let x_1037 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_1036, x_1037);
  let x_1039 : f32 = u_xlat41;
  u_xlatb41 = !((x_1039 == 0.0f));
  let x_1041 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_1041);
  let x_1043 : f32 = u_xlat40;
  let x_1044 : f32 = u_xlat41;
  u_xlat40 = (x_1043 * x_1044);
  let x_1046 : f32 = u_xlat39;
  let x_1049 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_1046) + x_1049);
  let x_1051 : f32 = u_xlat39;
  u_xlat39 = (x_1051 + 1.0f);
  let x_1053 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1053, 0.0f, 1.0f);
  let x_1055 : f32 = u_xlat28;
  let x_1057 : vec3<f32> = u_xlat6;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1055, x_1055, x_1055) * x_1057);
  let x_1059 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1058.z);
  let x_1061 : vec3<f32> = u_xlat6;
  let x_1062 : f32 = u_xlat40;
  let x_1064 : vec3<f32> = (x_1061 * vec3<f32>(x_1062, x_1062, x_1062));
  let x_1065 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1068 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat40;
  let x_1072 : f32 = u_xlat40;
  u_xlat15.x = (x_1071 * x_1072);
  let x_1076 : f32 = u_xlat15.x;
  let x_1078 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1076 * x_1078);
  let x_1081 : f32 = u_xlat40;
  let x_1083 : f32 = u_xlat15.x;
  u_xlat40 = (x_1081 * x_1083);
  let x_1085 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1085) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1089 : vec3<f32> = u_xlat15;
  let x_1090 : f32 = u_xlat40;
  let x_1093 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1089 * vec3<f32>(x_1090, x_1090, x_1090)) + x_1093);
  let x_1095 : vec3<f32> = u_xlat15;
  let x_1096 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1095 * vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec3<f32> = u_xlat1;
  let x_1100 : vec4<f32> = u_xlat3;
  let x_1103 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1099 * vec3<f32>(x_1100.x, x_1100.z, x_1100.w)) + x_1103);
  let x_1105 : vec3<f32> = u_xlat4;
  let x_1106 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1105 * vec3<f32>(x_1106.x, x_1106.x, x_1106.x));
  let x_1109 : vec3<f32> = u_xlat0;
  let x_1111 : f32 = u_xlat39;
  let x_1113 : vec3<f32> = (-(x_1109) + vec3<f32>(x_1111, x_1111, x_1111));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1113.z);
  let x_1116 : f32 = u_xlat16;
  let x_1118 : vec4<f32> = u_xlat3;
  let x_1121 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1116, x_1116, x_1116) * vec3<f32>(x_1118.x, x_1118.z, x_1118.w)) + x_1121);
  let x_1125 : vec3<f32> = u_xlat2;
  let x_1126 : vec3<f32> = u_xlat0;
  let x_1128 : vec3<f32> = u_xlat1;
  let x_1129 : vec3<f32> = ((x_1125 * x_1126) + x_1128);
  let x_1130 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

