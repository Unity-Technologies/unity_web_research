diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb33 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_348 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_426 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_688 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat27 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb38 : bool;

var<private> u_xlati27 : i32;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_373 : f32;
  var x_513 : f32;
  var x_525 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_822 : f32;
  var x_833 : f32;
  var txVec1 : vec3<f32>;
  var x_1271 : f32;
  var x_1284 : f32;
  var x_1332 : f32;
  var x_1344 : vec3<f32>;
  var x_1425 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat11.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat33;
  let x_107 : f32 = u_xlat22;
  u_xlat22 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat22;
  u_xlat22 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat11.x;
  let x_115 : f32 = u_xlat22;
  u_xlat11.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat11.x;
  u_xlat11.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb22;
  if (x_131) {
    let x_136 : f32 = u_xlat11.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat11.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat11.x;
  u_xlatb11 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb11;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat11;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat11.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb33 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb33;
  if (x_191) {
    let x_196 : f32 = u_xlat11.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat11.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat11.x = x_203;
  let x_206 : f32 = u_xlat11.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat11.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat11.x;
  u_xlatb11 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb11;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat11;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  u_xlat2.w = 1.0f;
  let x_243 : vec4<f32> = x_186.unity_SHAr;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_186.unity_SHAg;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_249, x_250);
  let x_256 : vec4<f32> = x_186.unity_SHAb;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_256, x_257);
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_261.y, x_261.z, x_261.z, x_261.x) * vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.z));
  let x_269 : vec4<f32> = x_186.unity_SHBr;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_186.unity_SHBg;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_275, x_276);
  let x_281 : vec4<f32> = x_186.unity_SHBb;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_281, x_282);
  let x_286 : f32 = u_xlat2.y;
  let x_288 : f32 = u_xlat2.y;
  u_xlat11.x = (x_286 * x_288);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_292 * x_294) + -(x_297));
  let x_303 : vec4<f32> = x_186.unity_SHC;
  let x_305 : vec3<f32> = u_xlat11;
  let x_308 : vec3<f32> = u_xlat5;
  let x_309 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + x_308);
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_312 + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_316, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_322 : vec4<f32> = vs_TEXCOORD6;
  let x_323 : vec2<f32> = vec2<f32>(x_322.x, x_322.y);
  let x_325 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_323.x, x_323.y, x_325);
  let x_337 : vec3<f32> = txVec0;
  let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_337.xy, x_337.z);
  u_xlat11.x = x_339;
  let x_351 : f32 = x_348.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat11.x;
  let x_357 : f32 = x_348.x_MainLightShadowParams.x;
  let x_359 : f32 = u_xlat33;
  u_xlat11.x = ((x_355 * x_357) + x_359);
  let x_363 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_363);
  let x_367 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_367 >= 1.0f);
  let x_369 : bool = u_xlatb33;
  let x_370 : bool = u_xlatb1;
  u_xlatb33 = (x_369 | x_370);
  let x_372 : bool = u_xlatb33;
  if (x_372) {
    x_373 = 1.0f;
  } else {
    let x_378 : f32 = u_xlat11.x;
    x_373 = x_378;
  }
  let x_379 : f32 = x_373;
  u_xlat11.x = x_379;
  let x_382 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_388 : vec3<f32> = (x_382 + -(x_386));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : f32 = u_xlat33;
  let x_398 : f32 = x_348.x_MainLightShadowParams.z;
  let x_401 : f32 = x_348.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_396 * x_398) + x_401);
  let x_405 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_405, 0.0f, 1.0f);
  let x_410 : f32 = u_xlat11.x;
  u_xlat35 = (-(x_410) + 1.0f);
  let x_414 : f32 = u_xlat1.x;
  let x_415 : f32 = u_xlat35;
  let x_418 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_414 * x_415) + x_418);
  let x_428 : f32 = x_426.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_428 == -1.0f));
  let x_431 : bool = u_xlatb1;
  if (x_431) {
    let x_434 : vec3<f32> = vs_TEXCOORD1;
    let x_437 : vec4<f32> = x_426.x_MainLightWorldToLight[1i];
    let x_439 : vec2<f32> = (vec2<f32>(x_434.y, x_434.y) * vec2<f32>(x_437.x, x_437.y));
    let x_440 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_443 : vec4<f32> = x_426.x_MainLightWorldToLight[0i];
    let x_445 : vec3<f32> = vs_TEXCOORD1;
    let x_448 : vec4<f32> = u_xlat4;
    let x_450 : vec2<f32> = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_445.x, x_445.x)) + vec2<f32>(x_448.x, x_448.y));
    let x_451 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
    let x_454 : vec4<f32> = x_426.x_MainLightWorldToLight[2i];
    let x_456 : vec3<f32> = vs_TEXCOORD1;
    let x_459 : vec4<f32> = u_xlat4;
    let x_461 : vec2<f32> = ((vec2<f32>(x_454.x, x_454.y) * vec2<f32>(x_456.z, x_456.z)) + vec2<f32>(x_459.x, x_459.y));
    let x_462 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
    let x_464 : vec4<f32> = u_xlat4;
    let x_468 : vec4<f32> = x_426.x_MainLightWorldToLight[3i];
    let x_470 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(x_468.x, x_468.y));
    let x_471 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat4;
    let x_477 : vec2<f32> = ((vec2<f32>(x_473.x, x_473.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_478 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
    let x_485 : vec4<f32> = u_xlat4;
    let x_488 : f32 = x_44.x_GlobalMipBias.x;
    let x_489 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_485.x, x_485.y), x_488);
    u_xlat4 = x_489;
    let x_494 : f32 = x_426.x_MainLightCookieTextureFormat;
    let x_496 : f32 = x_426.x_MainLightCookieTextureFormat;
    let x_498 : f32 = x_426.x_MainLightCookieTextureFormat;
    let x_500 : f32 = x_426.x_MainLightCookieTextureFormat;
    let x_501 : vec4<f32> = vec4<f32>(x_494, x_496, x_498, x_500);
    let x_509 : vec4<bool> = (vec4<f32>(x_501.x, x_501.y, x_501.z, x_501.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_509.x, x_509.y);
    let x_512 : bool = u_xlatb5.y;
    if (x_512) {
      let x_517 : f32 = u_xlat4.w;
      x_513 = x_517;
    } else {
      let x_520 : f32 = u_xlat4.x;
      x_513 = x_520;
    }
    let x_521 : f32 = x_513;
    u_xlat1.x = x_521;
    let x_524 : bool = u_xlatb5.x;
    if (x_524) {
      let x_528 : vec4<f32> = u_xlat4;
      x_525 = vec3<f32>(x_528.x, x_528.y, x_528.z);
    } else {
      let x_531 : vec4<f32> = u_xlat1;
      x_525 = vec3<f32>(x_531.x, x_531.x, x_531.x);
    }
    let x_533 : vec3<f32> = x_525;
    let x_534 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_540 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = x_44.x_MainLightColor;
  let x_545 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat11.x;
  let x_551 : f32 = x_186.unity_LightData.z;
  u_xlat11.x = (x_549 * x_551);
  let x_554 : vec3<f32> = u_xlat11;
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = (vec3<f32>(x_554.x, x_554.x, x_554.x) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_564 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_569 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_569, 0.0f, 1.0f);
  let x_572 : vec3<f32> = u_xlat11;
  let x_574 : vec4<f32> = u_xlat4;
  let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat1;
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.y, x_579.z, x_579.w) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.x, x_586.x) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_596 : f32 = x_186.unity_LightData.y;
  u_xlat11.x = min(x_594, x_596);
  let x_602 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_602));
  let x_605 : f32 = u_xlat33;
  let x_608 : f32 = x_348.x_AdditionalShadowFadeParams.x;
  let x_611 : f32 = x_348.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_605 * x_608) + x_611);
  let x_613 : f32 = u_xlat33;
  u_xlat33 = clamp(x_613, 0.0f, 1.0f);
  let x_616 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_618 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_620 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_622 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_623 : vec4<f32> = vec4<f32>(x_616, x_618, x_620, x_622);
  let x_629 : vec4<bool> = (vec4<f32>(x_623.x, x_623.y, x_623.z, x_623.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_629.x, x_629.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_642 : u32 = u_xlatu_loop_1;
    let x_643 : u32 = u_xlatu11;
    if ((x_642 < x_643)) {
    } else {
      break;
    }
    let x_646 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_646 >> 2u);
    let x_650 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_650 & 3u));
    let x_653 : u32 = u_xlatu35;
    let x_656 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_653)];
    let x_666 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_671 : vec4<u32> = indexable[x_666];
    u_xlat35 = dot(x_656, bitcast<vec4<f32>>(x_671));
    let x_675 : f32 = u_xlat35;
    u_xlati35 = i32(x_675);
    let x_678 : vec3<f32> = vs_TEXCOORD1;
    let x_689 : i32 = u_xlati35;
    let x_691 : vec4<f32> = x_688.x_AdditionalLightsPosition[x_689];
    let x_694 : i32 = u_xlati35;
    let x_696 : vec4<f32> = x_688.x_AdditionalLightsPosition[x_694];
    u_xlat7 = ((-(x_678) * vec3<f32>(x_691.w, x_691.w, x_691.w)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
    let x_700 : vec3<f32> = u_xlat7;
    let x_701 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_700, x_701);
    let x_703 : f32 = u_xlat36;
    u_xlat36 = max(x_703, 0.00006103515625f);
    let x_707 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_707);
    let x_709 : f32 = u_xlat37;
    let x_711 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_709, x_709, x_709) * x_711);
    let x_713 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_713);
    let x_715 : f32 = u_xlat36;
    let x_716 : i32 = u_xlati35;
    let x_718 : f32 = x_688.x_AdditionalLightsAttenuation[x_716].x;
    u_xlat36 = (x_715 * x_718);
    let x_720 : f32 = u_xlat36;
    let x_722 : f32 = u_xlat36;
    u_xlat36 = ((-(x_720) * x_722) + 1.0f);
    let x_725 : f32 = u_xlat36;
    u_xlat36 = max(x_725, 0.0f);
    let x_727 : f32 = u_xlat36;
    let x_728 : f32 = u_xlat36;
    u_xlat36 = (x_727 * x_728);
    let x_730 : f32 = u_xlat36;
    let x_731 : f32 = u_xlat37;
    u_xlat36 = (x_730 * x_731);
    let x_733 : i32 = u_xlati35;
    let x_735 : vec4<f32> = x_688.x_AdditionalLightsSpotDir[x_733];
    let x_737 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), x_737);
    let x_739 : f32 = u_xlat37;
    let x_740 : i32 = u_xlati35;
    let x_742 : f32 = x_688.x_AdditionalLightsAttenuation[x_740].z;
    let x_744 : i32 = u_xlati35;
    let x_746 : f32 = x_688.x_AdditionalLightsAttenuation[x_744].w;
    u_xlat37 = ((x_739 * x_742) + x_746);
    let x_748 : f32 = u_xlat37;
    u_xlat37 = clamp(x_748, 0.0f, 1.0f);
    let x_750 : f32 = u_xlat37;
    let x_751 : f32 = u_xlat37;
    u_xlat37 = (x_750 * x_751);
    let x_753 : f32 = u_xlat36;
    let x_754 : f32 = u_xlat37;
    u_xlat36 = (x_753 * x_754);
    let x_758 : i32 = u_xlati35;
    let x_760 : f32 = x_348.x_AdditionalShadowParams[x_758].w;
    u_xlati37 = i32(x_760);
    let x_763 : i32 = u_xlati37;
    u_xlatb27 = (x_763 >= 0i);
    let x_765 : bool = u_xlatb27;
    if (x_765) {
      let x_769 : i32 = u_xlati35;
      let x_771 : f32 = x_348.x_AdditionalShadowParams[x_769].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_771, x_771, x_771, x_771))));
      let x_775 : bool = u_xlatb27;
      if (x_775) {
        let x_780 : vec3<f32> = u_xlat7;
        let x_783 : vec3<f32> = u_xlat7;
        let x_786 : vec4<bool> = (abs(vec4<f32>(x_780.z, x_780.z, x_780.y, x_780.z)) >= abs(vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.x)));
        let x_788 : vec3<bool> = vec3<bool>(x_786.x, x_786.y, x_786.z);
        let x_789 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_792 : bool = u_xlatb8.y;
        let x_794 : bool = u_xlatb8.x;
        u_xlatb27 = (x_792 & x_794);
        let x_796 : vec3<f32> = u_xlat7;
        let x_799 : vec4<bool> = (-(vec4<f32>(x_796.z, x_796.y, x_796.z, x_796.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_800 : vec3<bool> = vec3<bool>(x_799.x, x_799.y, x_799.w);
        let x_801 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_800.x, x_800.y, x_801.z, x_800.z);
        let x_805 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_805);
        let x_811 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_811);
        let x_818 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_818);
        let x_821 : bool = u_xlatb8.z;
        if (x_821) {
          let x_826 : f32 = u_xlat8.y;
          x_822 = x_826;
        } else {
          let x_828 : f32 = u_xlat38;
          x_822 = x_828;
        }
        let x_829 : f32 = x_822;
        u_xlat38 = x_829;
        let x_832 : bool = u_xlatb27;
        if (x_832) {
          let x_837 : f32 = u_xlat8.x;
          x_833 = x_837;
        } else {
          let x_839 : f32 = u_xlat38;
          x_833 = x_839;
        }
        let x_840 : f32 = x_833;
        u_xlat27.x = x_840;
        let x_842 : i32 = u_xlati35;
        let x_844 : f32 = x_348.x_AdditionalShadowParams[x_842].w;
        u_xlat38 = trunc(x_844);
        let x_847 : f32 = u_xlat27.x;
        let x_848 : f32 = u_xlat38;
        u_xlat27.x = (x_847 + x_848);
        let x_852 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_852);
      }
      let x_854 : i32 = u_xlati37;
      u_xlati37 = (x_854 << bitcast<u32>(2i));
      let x_856 : vec3<f32> = vs_TEXCOORD1;
      let x_859 : i32 = u_xlati37;
      let x_862 : i32 = u_xlati37;
      let x_866 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_859 + 1i) / 4i)][((x_862 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_856.y, x_856.y, x_856.y, x_856.y) * x_866);
      let x_868 : i32 = u_xlati37;
      let x_870 : i32 = u_xlati37;
      let x_873 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[(x_868 / 4i)][(x_870 % 4i)];
      let x_874 : vec3<f32> = vs_TEXCOORD1;
      let x_877 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_873 * vec4<f32>(x_874.x, x_874.x, x_874.x, x_874.x)) + x_877);
      let x_879 : i32 = u_xlati37;
      let x_882 : i32 = u_xlati37;
      let x_886 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_879 + 2i) / 4i)][((x_882 + 2i) % 4i)];
      let x_887 : vec3<f32> = vs_TEXCOORD1;
      let x_890 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_886 * vec4<f32>(x_887.z, x_887.z, x_887.z, x_887.z)) + x_890);
      let x_892 : vec4<f32> = u_xlat8;
      let x_893 : i32 = u_xlati37;
      let x_896 : i32 = u_xlati37;
      let x_900 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_893 + 3i) / 4i)][((x_896 + 3i) % 4i)];
      u_xlat8 = (x_892 + x_900);
      let x_902 : vec4<f32> = u_xlat8;
      let x_904 : vec4<f32> = u_xlat8;
      let x_906 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) / vec3<f32>(x_904.w, x_904.w, x_904.w));
      let x_907 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
      let x_910 : vec4<f32> = u_xlat8;
      let x_911 : vec2<f32> = vec2<f32>(x_910.x, x_910.y);
      let x_913 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_911.x, x_911.y, x_913);
      let x_921 : vec3<f32> = txVec1;
      let x_923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_921.xy, x_921.z);
      u_xlat37 = x_923;
      let x_924 : i32 = u_xlati35;
      let x_926 : f32 = x_348.x_AdditionalShadowParams[x_924].x;
      u_xlat27.x = (1.0f + -(x_926));
      let x_930 : f32 = u_xlat37;
      let x_931 : i32 = u_xlati35;
      let x_933 : f32 = x_348.x_AdditionalShadowParams[x_931].x;
      let x_936 : f32 = u_xlat27.x;
      u_xlat37 = ((x_930 * x_933) + x_936);
      let x_939 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_939);
      let x_943 : f32 = u_xlat8.z;
      u_xlatb38 = (x_943 >= 1.0f);
      let x_945 : bool = u_xlatb38;
      let x_946 : bool = u_xlatb27;
      u_xlatb27 = (x_945 | x_946);
      let x_948 : bool = u_xlatb27;
      let x_949 : f32 = u_xlat37;
      u_xlat37 = select(x_949, 1.0f, x_948);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_952 : f32 = u_xlat37;
    u_xlat27.x = (-(x_952) + 1.0f);
    let x_956 : f32 = u_xlat33;
    let x_958 : f32 = u_xlat27.x;
    let x_960 : f32 = u_xlat37;
    u_xlat37 = ((x_956 * x_958) + x_960);
    let x_963 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_963 & 31i)));
    let x_967 : i32 = u_xlati27;
    let x_970 : f32 = x_426.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_967) & bitcast<u32>(x_970)));
    let x_974 : i32 = u_xlati27;
    if ((x_974 != 0i)) {
      let x_978 : i32 = u_xlati35;
      let x_980 : f32 = x_426.x_AdditionalLightsLightTypes[x_978].el;
      u_xlati27 = i32(x_980);
      let x_983 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_983 != 0i));
      let x_987 : i32 = u_xlati35;
      u_xlati39 = (x_987 << bitcast<u32>(2i));
      let x_989 : i32 = u_xlati38;
      if ((x_989 != 0i)) {
        let x_993 : vec3<f32> = vs_TEXCOORD1;
        let x_995 : i32 = u_xlati39;
        let x_998 : i32 = u_xlati39;
        let x_1002 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
        let x_1004 : vec3<f32> = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.w));
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
        let x_1007 : i32 = u_xlati39;
        let x_1009 : i32 = u_xlati39;
        let x_1012 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1007 / 4i)][(x_1009 % 4i)];
        let x_1014 : vec3<f32> = vs_TEXCOORD1;
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec3<f32> = ((vec3<f32>(x_1012.x, x_1012.y, x_1012.w) * vec3<f32>(x_1014.x, x_1014.x, x_1014.x)) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1022 : i32 = u_xlati39;
        let x_1025 : i32 = u_xlati39;
        let x_1029 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1022 + 2i) / 4i)][((x_1025 + 2i) % 4i)];
        let x_1031 : vec3<f32> = vs_TEXCOORD1;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec3<f32> = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.w) * vec3<f32>(x_1031.z, x_1031.z, x_1031.z)) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1041 : i32 = u_xlati39;
        let x_1044 : i32 = u_xlati39;
        let x_1048 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1041 + 3i) / 4i)][((x_1044 + 3i) % 4i)];
        let x_1050 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) + vec3<f32>(x_1048.x, x_1048.y, x_1048.w));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat8;
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1057 : vec2<f32> = (vec2<f32>(x_1053.x, x_1053.y) / vec2<f32>(x_1055.z, x_1055.z));
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1070 : vec2<f32> = clamp(vec2<f32>(x_1066.x, x_1066.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1071 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : i32 = u_xlati35;
        let x_1075 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1073];
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1080 : i32 = u_xlati35;
        let x_1082 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1080];
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1082.z, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
      } else {
        let x_1088 : i32 = u_xlati27;
        u_xlatb27 = (x_1088 == 1i);
        let x_1090 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1090);
        let x_1092 : i32 = u_xlati27;
        if ((x_1092 != 0i)) {
          let x_1096 : vec3<f32> = vs_TEXCOORD1;
          let x_1098 : i32 = u_xlati39;
          let x_1101 : i32 = u_xlati39;
          let x_1105 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1098 + 1i) / 4i)][((x_1101 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1096.y, x_1096.y) * vec2<f32>(x_1105.x, x_1105.y));
          let x_1108 : i32 = u_xlati39;
          let x_1110 : i32 = u_xlati39;
          let x_1113 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1108 / 4i)][(x_1110 % 4i)];
          let x_1115 : vec3<f32> = vs_TEXCOORD1;
          let x_1118 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(x_1115.x, x_1115.x)) + x_1118);
          let x_1120 : i32 = u_xlati39;
          let x_1123 : i32 = u_xlati39;
          let x_1127 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1120 + 2i) / 4i)][((x_1123 + 2i) % 4i)];
          let x_1129 : vec3<f32> = vs_TEXCOORD1;
          let x_1132 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1129.z, x_1129.z)) + x_1132);
          let x_1134 : vec2<f32> = u_xlat27;
          let x_1135 : i32 = u_xlati39;
          let x_1138 : i32 = u_xlati39;
          let x_1142 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1135 + 3i) / 4i)][((x_1138 + 3i) % 4i)];
          u_xlat27 = (x_1134 + vec2<f32>(x_1142.x, x_1142.y));
          let x_1145 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1145 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1148 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1148);
          let x_1150 : i32 = u_xlati35;
          let x_1152 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1150];
          let x_1154 : vec2<f32> = u_xlat27;
          let x_1156 : i32 = u_xlati35;
          let x_1158 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1156];
          let x_1160 : vec2<f32> = ((vec2<f32>(x_1152.x, x_1152.y) * x_1154) + vec2<f32>(x_1158.z, x_1158.w));
          let x_1161 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        } else {
          let x_1165 : vec3<f32> = vs_TEXCOORD1;
          let x_1167 : i32 = u_xlati39;
          let x_1170 : i32 = u_xlati39;
          let x_1174 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1167 + 1i) / 4i)][((x_1170 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1165.y, x_1165.y, x_1165.y, x_1165.y) * x_1174);
          let x_1176 : i32 = u_xlati39;
          let x_1178 : i32 = u_xlati39;
          let x_1181 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1176 / 4i)][(x_1178 % 4i)];
          let x_1182 : vec3<f32> = vs_TEXCOORD1;
          let x_1185 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1181 * vec4<f32>(x_1182.x, x_1182.x, x_1182.x, x_1182.x)) + x_1185);
          let x_1187 : i32 = u_xlati39;
          let x_1190 : i32 = u_xlati39;
          let x_1194 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1187 + 2i) / 4i)][((x_1190 + 2i) % 4i)];
          let x_1195 : vec3<f32> = vs_TEXCOORD1;
          let x_1198 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1194 * vec4<f32>(x_1195.z, x_1195.z, x_1195.z, x_1195.z)) + x_1198);
          let x_1200 : vec4<f32> = u_xlat9;
          let x_1201 : i32 = u_xlati39;
          let x_1204 : i32 = u_xlati39;
          let x_1208 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1201 + 3i) / 4i)][((x_1204 + 3i) % 4i)];
          u_xlat9 = (x_1200 + x_1208);
          let x_1210 : vec4<f32> = u_xlat9;
          let x_1212 : vec4<f32> = u_xlat9;
          let x_1214 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) / vec3<f32>(x_1212.w, x_1212.w, x_1212.w));
          let x_1215 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
          let x_1217 : vec4<f32> = u_xlat9;
          let x_1219 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1217.x, x_1217.y, x_1217.z), vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
          let x_1224 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1224);
          let x_1227 : vec2<f32> = u_xlat27;
          let x_1229 : vec4<f32> = u_xlat9;
          let x_1231 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.x, x_1227.x) * vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
          let x_1232 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
          let x_1234 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1234.x, x_1234.y, x_1234.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1241 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1241, 0.00000099999999747524f);
          let x_1246 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1246);
          let x_1250 : vec2<f32> = u_xlat27;
          let x_1252 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1250.x, x_1250.x, x_1250.x) * vec3<f32>(x_1252.z, x_1252.x, x_1252.y));
          let x_1256 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1256);
          let x_1260 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1260, 0.0f, 1.0f);
          let x_1264 : vec3<f32> = u_xlat10;
          let x_1266 : vec4<bool> = (vec4<f32>(x_1264.y, x_1264.z, x_1264.y, x_1264.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1266.x, x_1266.y);
          let x_1270 : bool = u_xlatb30.x;
          if (x_1270) {
            let x_1275 : f32 = u_xlat10.x;
            x_1271 = x_1275;
          } else {
            let x_1278 : f32 = u_xlat10.x;
            x_1271 = -(x_1278);
          }
          let x_1280 : f32 = x_1271;
          u_xlat30.x = x_1280;
          let x_1283 : bool = u_xlatb30.y;
          if (x_1283) {
            let x_1288 : f32 = u_xlat10.x;
            x_1284 = x_1288;
          } else {
            let x_1291 : f32 = u_xlat10.x;
            x_1284 = -(x_1291);
          }
          let x_1293 : f32 = x_1284;
          u_xlat30.y = x_1293;
          let x_1295 : vec4<f32> = u_xlat9;
          let x_1297 : vec2<f32> = u_xlat27;
          let x_1300 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1297.x, x_1297.x)) + x_1300);
          let x_1302 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1302 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1305 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1305, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1309 : i32 = u_xlati35;
          let x_1311 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1309];
          let x_1313 : vec2<f32> = u_xlat27;
          let x_1315 : i32 = u_xlati35;
          let x_1317 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1315];
          let x_1319 : vec2<f32> = ((vec2<f32>(x_1311.x, x_1311.y) * x_1313) + vec2<f32>(x_1317.z, x_1317.w));
          let x_1320 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
        }
      }
      let x_1327 : vec4<f32> = u_xlat8;
      let x_1329 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1327.x, x_1327.y), 0.0f);
      u_xlat8 = x_1329;
      let x_1331 : bool = u_xlatb5.y;
      if (x_1331) {
        let x_1336 : f32 = u_xlat8.w;
        x_1332 = x_1336;
      } else {
        let x_1339 : f32 = u_xlat8.x;
        x_1332 = x_1339;
      }
      let x_1340 : f32 = x_1332;
      u_xlat27.x = x_1340;
      let x_1343 : bool = u_xlatb5.x;
      if (x_1343) {
        let x_1347 : vec4<f32> = u_xlat8;
        x_1344 = vec3<f32>(x_1347.x, x_1347.y, x_1347.z);
      } else {
        let x_1350 : vec2<f32> = u_xlat27;
        x_1344 = vec3<f32>(x_1350.x, x_1350.x, x_1350.x);
      }
      let x_1352 : vec3<f32> = x_1344;
      let x_1353 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1359 : vec4<f32> = u_xlat8;
    let x_1361 : i32 = u_xlati35;
    let x_1363 : vec4<f32> = x_688.x_AdditionalLightsColor[x_1361];
    let x_1365 : vec3<f32> = (vec3<f32>(x_1359.x, x_1359.y, x_1359.z) * vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
    let x_1366 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
    let x_1368 : f32 = u_xlat36;
    let x_1369 : f32 = u_xlat37;
    u_xlat35 = (x_1368 * x_1369);
    let x_1371 : f32 = u_xlat35;
    let x_1373 : vec4<f32> = u_xlat8;
    let x_1375 : vec3<f32> = (vec3<f32>(x_1371, x_1371, x_1371) * vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
    let x_1378 : vec4<f32> = u_xlat2;
    let x_1380 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1378.x, x_1378.y, x_1378.z), x_1380);
    let x_1382 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1382, 0.0f, 1.0f);
    let x_1384 : f32 = u_xlat35;
    let x_1386 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1384, x_1384, x_1384) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat1;
    let x_1391 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1389.y, x_1389.z, x_1389.w) * x_1391);
    let x_1393 : vec3<f32> = u_xlat7;
    let x_1394 : vec4<f32> = u_xlat0;
    let x_1397 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1393 * vec3<f32>(x_1394.x, x_1394.x, x_1394.x)) + x_1397);

    continuing {
      let x_1399 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1399 + bitcast<u32>(1i));
    }
  }
  let x_1401 : vec3<f32> = u_xlat3;
  let x_1402 : vec4<f32> = u_xlat1;
  let x_1405 : vec4<f32> = u_xlat4;
  let x_1407 : vec3<f32> = ((x_1401 * vec3<f32>(x_1402.y, x_1402.z, x_1402.w)) + vec3<f32>(x_1405.x, x_1405.y, x_1405.z));
  let x_1408 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
  let x_1412 : vec3<f32> = u_xlat6;
  let x_1413 : vec4<f32> = u_xlat1;
  let x_1415 : vec3<f32> = (x_1412 + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1419 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1419 == 1.0f);
  let x_1421 : bool = u_xlatb11;
  let x_1422 : bool = u_xlatb22;
  u_xlatb11 = (x_1421 | x_1422);
  let x_1424 : bool = u_xlatb11;
  if (x_1424) {
    let x_1429 : f32 = u_xlat0.x;
    x_1425 = x_1429;
  } else {
    x_1425 = 1.0f;
  }
  let x_1431 : f32 = x_1425;
  SV_Target0.w = x_1431;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


