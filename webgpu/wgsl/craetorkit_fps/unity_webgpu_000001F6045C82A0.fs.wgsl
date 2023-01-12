struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  var x_313 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb41 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_522 : f32;
  var x_534 : f32;
  var x_546 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_700 : f32;
  var x_712 : f32;
  var x_724 : f32;
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
    let x_307 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
    let x_310 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : bool = u_xlatb42;
    if (x_312) {
      let x_316 : vec4<f32> = u_xlat5;
      x_313 = vec3<f32>(x_316.x, x_316.y, x_316.z);
    } else {
      let x_319 : vec3<f32> = u_xlat4;
      x_313 = x_319;
    }
    let x_320 : vec3<f32> = x_313;
    let x_321 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec4<f32> = u_xlat5;
    let x_327 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_329 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + -(x_327));
    let x_330 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat5;
    let x_336 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * x_336);
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_338.x, x_337.x, x_337.y, x_337.z);
    let x_341 : f32 = u_xlat5.y;
    u_xlat42 = ((x_341 * 0.25f) + 0.75f);
    let x_348 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_348 * 0.5f) + 0.75f);
    let x_352 : f32 = u_xlat42;
    let x_353 : f32 = u_xlat43;
    u_xlat5.x = max(x_352, x_353);
    let x_364 : vec4<f32> = u_xlat5;
    let x_366 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_364.x, x_364.z, x_364.w));
    u_xlat5 = x_366;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_372, x_374);
  let x_376 : f32 = u_xlat42;
  u_xlat42 = clamp(x_376, 0.0f, 1.0f);
  let x_379 : vec4<f32> = vs_TEXCOORD7;
  let x_381 : vec4<f32> = vs_TEXCOORD7;
  let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.y) / vec2<f32>(x_381.w, x_381.w));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
  let x_391 : vec4<f32> = u_xlat5;
  let x_393 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_391.x, x_391.y));
  u_xlat43 = x_393.x;
  let x_395 : f32 = u_xlat42;
  let x_396 : f32 = u_xlat43;
  u_xlat42 = (x_395 + -(x_396));
  let x_399 : f32 = u_xlat41;
  let x_400 : f32 = u_xlat42;
  let x_402 : f32 = u_xlat43;
  u_xlat41 = ((x_399 * x_400) + x_402);
  let x_409 : vec4<f32> = vs_TEXCOORD0;
  let x_411 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_409.x, x_409.y));
  u_xlat42 = x_411.y;
  let x_415 : f32 = x_33.x_OcclusionStrength;
  u_xlat43 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat42;
  let x_420 : f32 = x_33.x_OcclusionStrength;
  let x_422 : f32 = u_xlat43;
  u_xlat42 = ((x_418 * x_420) + x_422);
  let x_426 : f32 = x_33.x_Glossiness;
  u_xlat43 = (-(x_426) + 1.0f);
  let x_429 : vec4<f32> = u_xlat3;
  let x_431 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), x_431);
  let x_435 : f32 = u_xlat5.x;
  let x_437 : f32 = u_xlat5.x;
  u_xlat5.x = (x_435 + x_437);
  let x_440 : vec3<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat5;
  let x_445 : vec4<f32> = u_xlat3;
  let x_447 : vec3<f32> = ((x_440 * -(vec3<f32>(x_441.x, x_441.x, x_441.x))) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : f32 = u_xlat41;
  let x_454 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_460 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_460);
  let x_462 : bool = u_xlatb41;
  if (x_462) {
    let x_465 : vec4<f32> = u_xlat5;
    let x_467 : vec4<f32> = u_xlat5;
    u_xlat41 = dot(vec3<f32>(x_465.x, x_465.y, x_465.z), vec3<f32>(x_467.x, x_467.y, x_467.z));
    let x_470 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_470);
    let x_473 : f32 = u_xlat41;
    let x_475 : vec4<f32> = u_xlat5;
    let x_477 : vec3<f32> = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_481 : vec3<f32> = u_xlat4;
    let x_485 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_481) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec3<f32> = u_xlat8;
    let x_489 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_488 / vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_493 : vec3<f32> = u_xlat4;
    let x_497 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_499 : vec3<f32> = (-(x_493) + vec3<f32>(x_497.x, x_497.y, x_497.z));
    let x_500 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_502 : vec4<f32> = u_xlat9;
    let x_504 : vec4<f32> = u_xlat7;
    let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) / vec3<f32>(x_504.x, x_504.y, x_504.z));
    let x_507 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
    let x_513 : vec4<f32> = u_xlat7;
    let x_516 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_513.x, x_513.y, x_513.z, x_513.x));
    u_xlatb10 = vec3<bool>(x_516.x, x_516.y, x_516.z);
    let x_519 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_519;
    let x_521 : bool = u_xlatb10.x;
    if (x_521) {
      let x_526 : f32 = u_xlat8.x;
      x_522 = x_526;
    } else {
      let x_529 : f32 = u_xlat9.x;
      x_522 = x_529;
    }
    let x_530 : f32 = x_522;
    hlslcc_movcTemp.x = x_530;
    let x_533 : bool = u_xlatb10.y;
    if (x_533) {
      let x_538 : f32 = u_xlat8.y;
      x_534 = x_538;
    } else {
      let x_541 : f32 = u_xlat9.y;
      x_534 = x_541;
    }
    let x_542 : f32 = x_534;
    hlslcc_movcTemp.y = x_542;
    let x_545 : bool = u_xlatb10.z;
    if (x_545) {
      let x_550 : f32 = u_xlat8.z;
      x_546 = x_550;
    } else {
      let x_553 : f32 = u_xlat9.z;
      x_546 = x_553;
    }
    let x_554 : f32 = x_546;
    hlslcc_movcTemp.z = x_554;
    let x_556 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_556;
    let x_558 : f32 = u_xlat8.y;
    let x_560 : f32 = u_xlat8.x;
    u_xlat41 = min(x_558, x_560);
    let x_563 : f32 = u_xlat8.z;
    let x_564 : f32 = u_xlat41;
    u_xlat41 = min(x_563, x_564);
    let x_566 : vec3<f32> = u_xlat4;
    let x_568 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_566 + -(vec3<f32>(x_568.x, x_568.y, x_568.z)));
    let x_572 : vec4<f32> = u_xlat7;
    let x_574 : f32 = u_xlat41;
    let x_577 : vec3<f32> = u_xlat8;
    let x_578 : vec3<f32> = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_574, x_574, x_574)) + x_577);
    let x_579 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  } else {
    let x_582 : vec4<f32> = u_xlat5;
    let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.z);
    let x_584 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  }
  let x_586 : f32 = u_xlat43;
  u_xlat41 = ((-(x_586) * 0.699999988f) + 1.700000048f);
  let x_592 : f32 = u_xlat41;
  let x_593 : f32 = u_xlat43;
  u_xlat41 = (x_592 * x_593);
  let x_595 : f32 = u_xlat41;
  u_xlat41 = (x_595 * 6.0f);
  let x_606 : vec4<f32> = u_xlat7;
  let x_608 : f32 = u_xlat41;
  let x_609 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_606.x, x_606.y, x_606.z), x_608);
  u_xlat7 = x_609;
  let x_612 : f32 = u_xlat7.w;
  u_xlat44 = (x_612 + -1.0f);
  let x_616 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_617 : f32 = u_xlat44;
  u_xlat44 = ((x_616 * x_617) + 1.0f);
  let x_620 : f32 = u_xlat44;
  u_xlat44 = log2(x_620);
  let x_622 : f32 = u_xlat44;
  let x_624 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_622 * x_624);
  let x_626 : f32 = u_xlat44;
  u_xlat44 = exp2(x_626);
  let x_628 : f32 = u_xlat44;
  let x_630 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_628 * x_630);
  let x_632 : vec4<f32> = u_xlat7;
  let x_634 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_634, x_634, x_634));
  let x_639 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_639 < 0.999989986f);
  let x_642 : bool = u_xlatb45;
  if (x_642) {
    let x_647 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_647);
    let x_649 : bool = u_xlatb45;
    if (x_649) {
      let x_653 : vec4<f32> = u_xlat5;
      let x_655 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
      let x_658 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_658);
      let x_660 : vec4<f32> = u_xlat5;
      let x_662 : f32 = u_xlat45;
      let x_664 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662, x_662, x_662));
      let x_665 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
      let x_668 : vec3<f32> = u_xlat4;
      let x_672 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_668) + vec3<f32>(x_672.x, x_672.y, x_672.z));
      let x_675 : vec3<f32> = u_xlat10;
      let x_676 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_675 / vec3<f32>(x_676.x, x_676.y, x_676.z));
      let x_680 : vec3<f32> = u_xlat4;
      let x_684 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_680) + vec3<f32>(x_684.x, x_684.y, x_684.z));
      let x_687 : vec3<f32> = u_xlat11;
      let x_688 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_687 / vec3<f32>(x_688.x, x_688.y, x_688.z));
      let x_692 : vec4<f32> = u_xlat9;
      let x_694 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.x));
      u_xlatb12 = vec3<bool>(x_694.x, x_694.y, x_694.z);
      let x_697 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_697;
      let x_699 : bool = u_xlatb12.x;
      if (x_699) {
        let x_704 : f32 = u_xlat10.x;
        x_700 = x_704;
      } else {
        let x_707 : f32 = u_xlat11.x;
        x_700 = x_707;
      }
      let x_708 : f32 = x_700;
      hlslcc_movcTemp_1.x = x_708;
      let x_711 : bool = u_xlatb12.y;
      if (x_711) {
        let x_716 : f32 = u_xlat10.y;
        x_712 = x_716;
      } else {
        let x_719 : f32 = u_xlat11.y;
        x_712 = x_719;
      }
      let x_720 : f32 = x_712;
      hlslcc_movcTemp_1.y = x_720;
      let x_723 : bool = u_xlatb12.z;
      if (x_723) {
        let x_728 : f32 = u_xlat10.z;
        x_724 = x_728;
      } else {
        let x_731 : f32 = u_xlat11.z;
        x_724 = x_731;
      }
      let x_732 : f32 = x_724;
      hlslcc_movcTemp_1.z = x_732;
      let x_734 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_734;
      let x_736 : f32 = u_xlat10.y;
      let x_738 : f32 = u_xlat10.x;
      u_xlat45 = min(x_736, x_738);
      let x_741 : f32 = u_xlat10.z;
      let x_742 : f32 = u_xlat45;
      u_xlat45 = min(x_741, x_742);
      let x_744 : vec3<f32> = u_xlat4;
      let x_746 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_744 + -(vec3<f32>(x_746.x, x_746.y, x_746.z)));
      let x_750 : vec4<f32> = u_xlat9;
      let x_752 : f32 = u_xlat45;
      let x_755 : vec3<f32> = u_xlat4;
      let x_756 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752, x_752, x_752)) + x_755);
      let x_757 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
    }
    let x_763 : vec4<f32> = u_xlat5;
    let x_765 : f32 = u_xlat41;
    let x_766 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_763.x, x_763.y, x_763.z), x_765);
    u_xlat9 = x_766;
    let x_768 : f32 = u_xlat9.w;
    u_xlat41 = (x_768 + -1.0f);
    let x_772 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_773 : f32 = u_xlat41;
    u_xlat41 = ((x_772 * x_773) + 1.0f);
    let x_776 : f32 = u_xlat41;
    u_xlat41 = log2(x_776);
    let x_778 : f32 = u_xlat41;
    let x_780 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_778 * x_780);
    let x_782 : f32 = u_xlat41;
    u_xlat41 = exp2(x_782);
    let x_784 : f32 = u_xlat41;
    let x_786 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_784 * x_786);
    let x_788 : vec4<f32> = u_xlat9;
    let x_790 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_790, x_790, x_790));
    let x_793 : f32 = u_xlat44;
    let x_795 : vec4<f32> = u_xlat7;
    let x_798 : vec3<f32> = u_xlat4;
    let x_800 : vec3<f32> = ((vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_795.x, x_795.y, x_795.z)) + -(x_798));
    let x_801 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
    let x_804 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_806 : vec4<f32> = u_xlat5;
    let x_809 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_804.w, x_804.w, x_804.w) * vec3<f32>(x_806.x, x_806.y, x_806.z)) + x_809);
  }
  let x_811 : f32 = u_xlat42;
  let x_813 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_811, x_811, x_811) * x_813);
  let x_815 : vec4<f32> = vs_TEXCOORD1;
  let x_818 : f32 = u_xlat40;
  let x_822 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_824 : vec3<f32> = ((-(vec3<f32>(x_815.x, x_815.y, x_815.z)) * vec3<f32>(x_818, x_818, x_818)) + vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat5;
  let x_829 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : f32 = u_xlat40;
  u_xlat40 = max(x_832, 0.001f);
  let x_835 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_835);
  let x_837 : f32 = u_xlat40;
  let x_839 : vec4<f32> = u_xlat5;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec3<f32> = u_xlat2;
  let x_845 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_844, -(vec3<f32>(x_845.x, x_845.y, x_845.z)));
  let x_849 : vec3<f32> = u_xlat2;
  let x_851 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_849, vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : f32 = u_xlat41;
  u_xlat41 = clamp(x_854, 0.0f, 1.0f);
  let x_856 : vec3<f32> = u_xlat2;
  let x_857 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_856, vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_862 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_862, 0.0f, 1.0f);
  let x_866 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_868 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_873 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_873, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat15.x;
  let x_880 : f32 = u_xlat15.x;
  u_xlat28 = (x_878 * x_880);
  let x_882 : f32 = u_xlat28;
  let x_884 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_882, x_882), vec2<f32>(x_884, x_884));
  let x_887 : f32 = u_xlat28;
  u_xlat28 = (x_887 + -0.5f);
  let x_890 : f32 = u_xlat41;
  u_xlat3.x = (-(x_890) + 1.0f);
  let x_896 : f32 = u_xlat3.x;
  let x_898 : f32 = u_xlat3.x;
  u_xlat16 = (x_896 * x_898);
  let x_900 : f32 = u_xlat16;
  let x_901 : f32 = u_xlat16;
  u_xlat16 = (x_900 * x_901);
  let x_904 : f32 = u_xlat3.x;
  let x_905 : f32 = u_xlat16;
  u_xlat3.x = (x_904 * x_905);
  let x_908 : f32 = u_xlat28;
  let x_910 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_908 * x_910) + 1.0f);
  let x_914 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_914)) + 1.0f);
  let x_919 : f32 = u_xlat16;
  let x_920 : f32 = u_xlat16;
  u_xlat29 = (x_919 * x_920);
  let x_922 : f32 = u_xlat29;
  let x_923 : f32 = u_xlat29;
  u_xlat29 = (x_922 * x_923);
  let x_925 : f32 = u_xlat16;
  let x_926 : f32 = u_xlat29;
  u_xlat16 = (x_925 * x_926);
  let x_928 : f32 = u_xlat28;
  let x_929 : f32 = u_xlat16;
  u_xlat28 = ((x_928 * x_929) + 1.0f);
  let x_932 : f32 = u_xlat28;
  let x_934 : f32 = u_xlat3.x;
  u_xlat28 = (x_932 * x_934);
  let x_936 : f32 = u_xlat41;
  let x_937 : f32 = u_xlat28;
  u_xlat28 = (x_936 * x_937);
  let x_939 : f32 = u_xlat43;
  let x_940 : f32 = u_xlat43;
  u_xlat3.x = (x_939 * x_940);
  let x_944 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_944, 0.002f);
  let x_949 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_949) + 1.0f);
  let x_952 : f32 = u_xlat40;
  let x_954 : f32 = u_xlat29;
  let x_957 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_952) * x_954) + x_957);
  let x_959 : f32 = u_xlat41;
  let x_960 : f32 = u_xlat29;
  let x_963 : f32 = u_xlat3.x;
  u_xlat29 = ((x_959 * x_960) + x_963);
  let x_965 : f32 = u_xlat40;
  let x_967 : f32 = u_xlat29;
  u_xlat40 = (abs(x_965) * x_967);
  let x_969 : f32 = u_xlat41;
  let x_970 : f32 = u_xlat42;
  let x_972 : f32 = u_xlat40;
  u_xlat40 = ((x_969 * x_970) + x_972);
  let x_974 : f32 = u_xlat40;
  u_xlat40 = (x_974 + 0.00001f);
  let x_977 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_977);
  let x_980 : f32 = u_xlat3.x;
  let x_982 : f32 = u_xlat3.x;
  u_xlat29 = (x_980 * x_982);
  let x_985 : f32 = u_xlat2.x;
  let x_986 : f32 = u_xlat29;
  let x_989 : f32 = u_xlat2.x;
  u_xlat42 = ((x_985 * x_986) + -(x_989));
  let x_992 : f32 = u_xlat42;
  let x_994 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_992 * x_994) + 1.0f);
  let x_998 : f32 = u_xlat29;
  u_xlat29 = (x_998 * 0.318309873f);
  let x_1002 : f32 = u_xlat2.x;
  let x_1004 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1002 * x_1004) + 0.0000001f);
  let x_1009 : f32 = u_xlat29;
  let x_1011 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1009 / x_1011);
  let x_1014 : f32 = u_xlat40;
  let x_1016 : f32 = u_xlat2.x;
  u_xlat40 = (x_1014 * x_1016);
  let x_1018 : f32 = u_xlat41;
  let x_1019 : f32 = u_xlat40;
  u_xlat40 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat40;
  u_xlat40 = (x_1021 * 3.141592741f);
  let x_1024 : f32 = u_xlat40;
  u_xlat40 = max(x_1024, 0.0f);
  let x_1027 : f32 = u_xlat3.x;
  let x_1029 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1027 * x_1029) + 1.0f);
  let x_1034 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1034);
  let x_1037 : vec3<f32> = u_xlat0;
  let x_1038 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_1037, x_1038);
  let x_1040 : f32 = u_xlat41;
  u_xlatb41 = !((x_1040 == 0.0f));
  let x_1042 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_1042);
  let x_1044 : f32 = u_xlat40;
  let x_1045 : f32 = u_xlat41;
  u_xlat40 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat39;
  let x_1050 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_1047) + x_1050);
  let x_1052 : f32 = u_xlat39;
  u_xlat39 = (x_1052 + 1.0f);
  let x_1054 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1054, 0.0f, 1.0f);
  let x_1056 : f32 = u_xlat28;
  let x_1058 : vec3<f32> = u_xlat6;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1056, x_1056, x_1056) * x_1058);
  let x_1060 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1059.z);
  let x_1062 : vec3<f32> = u_xlat6;
  let x_1063 : f32 = u_xlat40;
  let x_1065 : vec3<f32> = (x_1062 * vec3<f32>(x_1063, x_1063, x_1063));
  let x_1066 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1069 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1069) + 1.0f);
  let x_1072 : f32 = u_xlat40;
  let x_1073 : f32 = u_xlat40;
  u_xlat15.x = (x_1072 * x_1073);
  let x_1077 : f32 = u_xlat15.x;
  let x_1079 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1077 * x_1079);
  let x_1082 : f32 = u_xlat40;
  let x_1084 : f32 = u_xlat15.x;
  u_xlat40 = (x_1082 * x_1084);
  let x_1086 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1086) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1090 : vec3<f32> = u_xlat15;
  let x_1091 : f32 = u_xlat40;
  let x_1094 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1090 * vec3<f32>(x_1091, x_1091, x_1091)) + x_1094);
  let x_1096 : vec3<f32> = u_xlat15;
  let x_1097 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1096 * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec3<f32> = u_xlat1;
  let x_1101 : vec4<f32> = u_xlat3;
  let x_1104 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1100 * vec3<f32>(x_1101.x, x_1101.z, x_1101.w)) + x_1104);
  let x_1106 : vec3<f32> = u_xlat4;
  let x_1107 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1106 * vec3<f32>(x_1107.x, x_1107.x, x_1107.x));
  let x_1110 : vec3<f32> = u_xlat0;
  let x_1112 : f32 = u_xlat39;
  let x_1114 : vec3<f32> = (-(x_1110) + vec3<f32>(x_1112, x_1112, x_1112));
  let x_1115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1114.z);
  let x_1117 : f32 = u_xlat16;
  let x_1119 : vec4<f32> = u_xlat3;
  let x_1122 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1117, x_1117, x_1117) * vec3<f32>(x_1119.x, x_1119.z, x_1119.w)) + x_1122);
  let x_1124 : vec3<f32> = u_xlat2;
  let x_1125 : vec3<f32> = u_xlat0;
  let x_1127 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_1124 * x_1125) + x_1127);
  let x_1130 : f32 = vs_TEXCOORD1.w;
  let x_1132 : f32 = x_33.x_ProjectionParams.y;
  u_xlat39 = (x_1130 / x_1132);
  let x_1134 : f32 = u_xlat39;
  u_xlat39 = (-(x_1134) + 1.0f);
  let x_1137 : f32 = u_xlat39;
  let x_1139 : f32 = x_33.x_ProjectionParams.z;
  u_xlat39 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat39;
  u_xlat39 = max(x_1141, 0.0f);
  let x_1143 : f32 = u_xlat39;
  let x_1146 : f32 = x_33.unity_FogParams.x;
  u_xlat39 = (x_1143 * x_1146);
  let x_1148 : f32 = u_xlat39;
  let x_1149 : f32 = u_xlat39;
  u_xlat39 = (x_1148 * -(x_1149));
  let x_1152 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1152);
  let x_1154 : vec3<f32> = u_xlat0;
  let x_1157 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1154 + -(vec3<f32>(x_1157.x, x_1157.y, x_1157.z)));
  let x_1163 : f32 = u_xlat39;
  let x_1165 : vec3<f32> = u_xlat0;
  let x_1168 : vec4<f32> = x_33.unity_FogColor;
  let x_1170 : vec3<f32> = ((vec3<f32>(x_1163, x_1163, x_1163) * x_1165) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
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

