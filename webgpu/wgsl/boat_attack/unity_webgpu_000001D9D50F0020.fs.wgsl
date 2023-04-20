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

@group(1) @binding(1) var<uniform> x_681 : AdditionalLights;

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
  var x_815 : f32;
  var x_826 : f32;
  var txVec1 : vec3<f32>;
  var x_1264 : f32;
  var x_1277 : f32;
  var x_1325 : f32;
  var x_1337 : vec3<f32>;
  var x_1414 : f32;
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
  let x_587 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_589 : f32 = x_186.unity_LightData.y;
  u_xlat11.x = min(x_587, x_589);
  let x_595 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_595));
  let x_598 : f32 = u_xlat33;
  let x_601 : f32 = x_348.x_AdditionalShadowFadeParams.x;
  let x_604 : f32 = x_348.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_598 * x_601) + x_604);
  let x_606 : f32 = u_xlat33;
  u_xlat33 = clamp(x_606, 0.0f, 1.0f);
  let x_609 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_611 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_613 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_615 : f32 = x_426.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_616 : vec4<f32> = vec4<f32>(x_609, x_611, x_613, x_615);
  let x_622 : vec4<bool> = (vec4<f32>(x_616.x, x_616.y, x_616.z, x_616.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_622.x, x_622.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_635 : u32 = u_xlatu_loop_1;
    let x_636 : u32 = u_xlatu11;
    if ((x_635 < x_636)) {
    } else {
      break;
    }
    let x_639 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_639 >> 2u);
    let x_643 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_643 & 3u));
    let x_646 : u32 = u_xlatu35;
    let x_649 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_646)];
    let x_659 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_664 : vec4<u32> = indexable[x_659];
    u_xlat35 = dot(x_649, bitcast<vec4<f32>>(x_664));
    let x_668 : f32 = u_xlat35;
    u_xlati35 = i32(x_668);
    let x_671 : vec3<f32> = vs_TEXCOORD1;
    let x_682 : i32 = u_xlati35;
    let x_684 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_682];
    let x_687 : i32 = u_xlati35;
    let x_689 : vec4<f32> = x_681.x_AdditionalLightsPosition[x_687];
    u_xlat7 = ((-(x_671) * vec3<f32>(x_684.w, x_684.w, x_684.w)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_693 : vec3<f32> = u_xlat7;
    let x_694 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_693, x_694);
    let x_696 : f32 = u_xlat36;
    u_xlat36 = max(x_696, 0.00006103515625f);
    let x_700 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_700);
    let x_702 : f32 = u_xlat37;
    let x_704 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_702, x_702, x_702) * x_704);
    let x_706 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_706);
    let x_708 : f32 = u_xlat36;
    let x_709 : i32 = u_xlati35;
    let x_711 : f32 = x_681.x_AdditionalLightsAttenuation[x_709].x;
    u_xlat36 = (x_708 * x_711);
    let x_713 : f32 = u_xlat36;
    let x_715 : f32 = u_xlat36;
    u_xlat36 = ((-(x_713) * x_715) + 1.0f);
    let x_718 : f32 = u_xlat36;
    u_xlat36 = max(x_718, 0.0f);
    let x_720 : f32 = u_xlat36;
    let x_721 : f32 = u_xlat36;
    u_xlat36 = (x_720 * x_721);
    let x_723 : f32 = u_xlat36;
    let x_724 : f32 = u_xlat37;
    u_xlat36 = (x_723 * x_724);
    let x_726 : i32 = u_xlati35;
    let x_728 : vec4<f32> = x_681.x_AdditionalLightsSpotDir[x_726];
    let x_730 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
    let x_732 : f32 = u_xlat37;
    let x_733 : i32 = u_xlati35;
    let x_735 : f32 = x_681.x_AdditionalLightsAttenuation[x_733].z;
    let x_737 : i32 = u_xlati35;
    let x_739 : f32 = x_681.x_AdditionalLightsAttenuation[x_737].w;
    u_xlat37 = ((x_732 * x_735) + x_739);
    let x_741 : f32 = u_xlat37;
    u_xlat37 = clamp(x_741, 0.0f, 1.0f);
    let x_743 : f32 = u_xlat37;
    let x_744 : f32 = u_xlat37;
    u_xlat37 = (x_743 * x_744);
    let x_746 : f32 = u_xlat36;
    let x_747 : f32 = u_xlat37;
    u_xlat36 = (x_746 * x_747);
    let x_751 : i32 = u_xlati35;
    let x_753 : f32 = x_348.x_AdditionalShadowParams[x_751].w;
    u_xlati37 = i32(x_753);
    let x_756 : i32 = u_xlati37;
    u_xlatb27 = (x_756 >= 0i);
    let x_758 : bool = u_xlatb27;
    if (x_758) {
      let x_762 : i32 = u_xlati35;
      let x_764 : f32 = x_348.x_AdditionalShadowParams[x_762].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_764, x_764, x_764, x_764))));
      let x_768 : bool = u_xlatb27;
      if (x_768) {
        let x_773 : vec3<f32> = u_xlat7;
        let x_776 : vec3<f32> = u_xlat7;
        let x_779 : vec4<bool> = (abs(vec4<f32>(x_773.z, x_773.z, x_773.y, x_773.z)) >= abs(vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.x)));
        let x_781 : vec3<bool> = vec3<bool>(x_779.x, x_779.y, x_779.z);
        let x_782 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_781.x, x_781.y, x_781.z, x_782.w);
        let x_785 : bool = u_xlatb8.y;
        let x_787 : bool = u_xlatb8.x;
        u_xlatb27 = (x_785 & x_787);
        let x_789 : vec3<f32> = u_xlat7;
        let x_792 : vec4<bool> = (-(vec4<f32>(x_789.z, x_789.y, x_789.z, x_789.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_793 : vec3<bool> = vec3<bool>(x_792.x, x_792.y, x_792.w);
        let x_794 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_793.x, x_793.y, x_794.z, x_793.z);
        let x_798 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_798);
        let x_804 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_804);
        let x_811 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_811);
        let x_814 : bool = u_xlatb8.z;
        if (x_814) {
          let x_819 : f32 = u_xlat8.y;
          x_815 = x_819;
        } else {
          let x_821 : f32 = u_xlat38;
          x_815 = x_821;
        }
        let x_822 : f32 = x_815;
        u_xlat38 = x_822;
        let x_825 : bool = u_xlatb27;
        if (x_825) {
          let x_830 : f32 = u_xlat8.x;
          x_826 = x_830;
        } else {
          let x_832 : f32 = u_xlat38;
          x_826 = x_832;
        }
        let x_833 : f32 = x_826;
        u_xlat27.x = x_833;
        let x_835 : i32 = u_xlati35;
        let x_837 : f32 = x_348.x_AdditionalShadowParams[x_835].w;
        u_xlat38 = trunc(x_837);
        let x_840 : f32 = u_xlat27.x;
        let x_841 : f32 = u_xlat38;
        u_xlat27.x = (x_840 + x_841);
        let x_845 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_845);
      }
      let x_847 : i32 = u_xlati37;
      u_xlati37 = (x_847 << bitcast<u32>(2i));
      let x_849 : vec3<f32> = vs_TEXCOORD1;
      let x_852 : i32 = u_xlati37;
      let x_855 : i32 = u_xlati37;
      let x_859 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_852 + 1i) / 4i)][((x_855 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_849.y, x_849.y, x_849.y, x_849.y) * x_859);
      let x_861 : i32 = u_xlati37;
      let x_863 : i32 = u_xlati37;
      let x_866 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[(x_861 / 4i)][(x_863 % 4i)];
      let x_867 : vec3<f32> = vs_TEXCOORD1;
      let x_870 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_866 * vec4<f32>(x_867.x, x_867.x, x_867.x, x_867.x)) + x_870);
      let x_872 : i32 = u_xlati37;
      let x_875 : i32 = u_xlati37;
      let x_879 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_872 + 2i) / 4i)][((x_875 + 2i) % 4i)];
      let x_880 : vec3<f32> = vs_TEXCOORD1;
      let x_883 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_879 * vec4<f32>(x_880.z, x_880.z, x_880.z, x_880.z)) + x_883);
      let x_885 : vec4<f32> = u_xlat8;
      let x_886 : i32 = u_xlati37;
      let x_889 : i32 = u_xlati37;
      let x_893 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_886 + 3i) / 4i)][((x_889 + 3i) % 4i)];
      u_xlat8 = (x_885 + x_893);
      let x_895 : vec4<f32> = u_xlat8;
      let x_897 : vec4<f32> = u_xlat8;
      let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) / vec3<f32>(x_897.w, x_897.w, x_897.w));
      let x_900 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
      let x_903 : vec4<f32> = u_xlat8;
      let x_904 : vec2<f32> = vec2<f32>(x_903.x, x_903.y);
      let x_906 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_904.x, x_904.y, x_906);
      let x_914 : vec3<f32> = txVec1;
      let x_916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
      u_xlat37 = x_916;
      let x_917 : i32 = u_xlati35;
      let x_919 : f32 = x_348.x_AdditionalShadowParams[x_917].x;
      u_xlat27.x = (1.0f + -(x_919));
      let x_923 : f32 = u_xlat37;
      let x_924 : i32 = u_xlati35;
      let x_926 : f32 = x_348.x_AdditionalShadowParams[x_924].x;
      let x_929 : f32 = u_xlat27.x;
      u_xlat37 = ((x_923 * x_926) + x_929);
      let x_932 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_932);
      let x_936 : f32 = u_xlat8.z;
      u_xlatb38 = (x_936 >= 1.0f);
      let x_938 : bool = u_xlatb38;
      let x_939 : bool = u_xlatb27;
      u_xlatb27 = (x_938 | x_939);
      let x_941 : bool = u_xlatb27;
      let x_942 : f32 = u_xlat37;
      u_xlat37 = select(x_942, 1.0f, x_941);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_945 : f32 = u_xlat37;
    u_xlat27.x = (-(x_945) + 1.0f);
    let x_949 : f32 = u_xlat33;
    let x_951 : f32 = u_xlat27.x;
    let x_953 : f32 = u_xlat37;
    u_xlat37 = ((x_949 * x_951) + x_953);
    let x_956 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_956 & 31i)));
    let x_960 : i32 = u_xlati27;
    let x_963 : f32 = x_426.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_960) & bitcast<u32>(x_963)));
    let x_967 : i32 = u_xlati27;
    if ((x_967 != 0i)) {
      let x_971 : i32 = u_xlati35;
      let x_973 : f32 = x_426.x_AdditionalLightsLightTypes[x_971].el;
      u_xlati27 = i32(x_973);
      let x_976 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_976 != 0i));
      let x_980 : i32 = u_xlati35;
      u_xlati39 = (x_980 << bitcast<u32>(2i));
      let x_982 : i32 = u_xlati38;
      if ((x_982 != 0i)) {
        let x_986 : vec3<f32> = vs_TEXCOORD1;
        let x_988 : i32 = u_xlati39;
        let x_991 : i32 = u_xlati39;
        let x_995 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_988 + 1i) / 4i)][((x_991 + 1i) % 4i)];
        let x_997 : vec3<f32> = (vec3<f32>(x_986.y, x_986.y, x_986.y) * vec3<f32>(x_995.x, x_995.y, x_995.w));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
        let x_1000 : i32 = u_xlati39;
        let x_1002 : i32 = u_xlati39;
        let x_1005 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1000 / 4i)][(x_1002 % 4i)];
        let x_1007 : vec3<f32> = vs_TEXCOORD1;
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1012 : vec3<f32> = ((vec3<f32>(x_1005.x, x_1005.y, x_1005.w) * vec3<f32>(x_1007.x, x_1007.x, x_1007.x)) + vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : i32 = u_xlati39;
        let x_1018 : i32 = u_xlati39;
        let x_1022 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1015 + 2i) / 4i)][((x_1018 + 2i) % 4i)];
        let x_1024 : vec3<f32> = vs_TEXCOORD1;
        let x_1027 : vec4<f32> = u_xlat8;
        let x_1029 : vec3<f32> = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.w) * vec3<f32>(x_1024.z, x_1024.z, x_1024.z)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1034 : i32 = u_xlati39;
        let x_1037 : i32 = u_xlati39;
        let x_1041 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1034 + 3i) / 4i)][((x_1037 + 3i) % 4i)];
        let x_1043 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) + vec3<f32>(x_1041.x, x_1041.y, x_1041.w));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1046.x, x_1046.y) / vec2<f32>(x_1048.z, x_1048.z));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat8;
        let x_1063 : vec2<f32> = clamp(vec2<f32>(x_1059.x, x_1059.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        let x_1066 : i32 = u_xlati35;
        let x_1068 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1066];
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1073 : i32 = u_xlati35;
        let x_1075 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1073];
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1075.z, x_1075.w));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
      } else {
        let x_1081 : i32 = u_xlati27;
        u_xlatb27 = (x_1081 == 1i);
        let x_1083 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1083);
        let x_1085 : i32 = u_xlati27;
        if ((x_1085 != 0i)) {
          let x_1089 : vec3<f32> = vs_TEXCOORD1;
          let x_1091 : i32 = u_xlati39;
          let x_1094 : i32 = u_xlati39;
          let x_1098 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1091 + 1i) / 4i)][((x_1094 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(x_1098.x, x_1098.y));
          let x_1101 : i32 = u_xlati39;
          let x_1103 : i32 = u_xlati39;
          let x_1106 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1101 / 4i)][(x_1103 % 4i)];
          let x_1108 : vec3<f32> = vs_TEXCOORD1;
          let x_1111 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1108.x, x_1108.x)) + x_1111);
          let x_1113 : i32 = u_xlati39;
          let x_1116 : i32 = u_xlati39;
          let x_1120 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1113 + 2i) / 4i)][((x_1116 + 2i) % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.z, x_1122.z)) + x_1125);
          let x_1127 : vec2<f32> = u_xlat27;
          let x_1128 : i32 = u_xlati39;
          let x_1131 : i32 = u_xlati39;
          let x_1135 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1128 + 3i) / 4i)][((x_1131 + 3i) % 4i)];
          u_xlat27 = (x_1127 + vec2<f32>(x_1135.x, x_1135.y));
          let x_1138 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1138 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1141 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1141);
          let x_1143 : i32 = u_xlati35;
          let x_1145 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1143];
          let x_1147 : vec2<f32> = u_xlat27;
          let x_1149 : i32 = u_xlati35;
          let x_1151 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1149];
          let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * x_1147) + vec2<f32>(x_1151.z, x_1151.w));
          let x_1154 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        } else {
          let x_1158 : vec3<f32> = vs_TEXCOORD1;
          let x_1160 : i32 = u_xlati39;
          let x_1163 : i32 = u_xlati39;
          let x_1167 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1160 + 1i) / 4i)][((x_1163 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1167);
          let x_1169 : i32 = u_xlati39;
          let x_1171 : i32 = u_xlati39;
          let x_1174 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[(x_1169 / 4i)][(x_1171 % 4i)];
          let x_1175 : vec3<f32> = vs_TEXCOORD1;
          let x_1178 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1174 * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x)) + x_1178);
          let x_1180 : i32 = u_xlati39;
          let x_1183 : i32 = u_xlati39;
          let x_1187 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1180 + 2i) / 4i)][((x_1183 + 2i) % 4i)];
          let x_1188 : vec3<f32> = vs_TEXCOORD1;
          let x_1191 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1187 * vec4<f32>(x_1188.z, x_1188.z, x_1188.z, x_1188.z)) + x_1191);
          let x_1193 : vec4<f32> = u_xlat9;
          let x_1194 : i32 = u_xlati39;
          let x_1197 : i32 = u_xlati39;
          let x_1201 : vec4<f32> = x_426.x_AdditionalLightsWorldToLights[((x_1194 + 3i) / 4i)][((x_1197 + 3i) % 4i)];
          u_xlat9 = (x_1193 + x_1201);
          let x_1203 : vec4<f32> = u_xlat9;
          let x_1205 : vec4<f32> = u_xlat9;
          let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) / vec3<f32>(x_1205.w, x_1205.w, x_1205.w));
          let x_1208 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
          let x_1210 : vec4<f32> = u_xlat9;
          let x_1212 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
          let x_1217 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1217);
          let x_1220 : vec2<f32> = u_xlat27;
          let x_1222 : vec4<f32> = u_xlat9;
          let x_1224 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.x, x_1220.x) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
          let x_1225 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
          let x_1227 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1227.x, x_1227.y, x_1227.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1234 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1234, 0.00000099999999747524f);
          let x_1239 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1239);
          let x_1243 : vec2<f32> = u_xlat27;
          let x_1245 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1243.x, x_1243.x, x_1243.x) * vec3<f32>(x_1245.z, x_1245.x, x_1245.y));
          let x_1249 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1249);
          let x_1253 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1253, 0.0f, 1.0f);
          let x_1257 : vec3<f32> = u_xlat10;
          let x_1259 : vec4<bool> = (vec4<f32>(x_1257.y, x_1257.z, x_1257.y, x_1257.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1259.x, x_1259.y);
          let x_1263 : bool = u_xlatb30.x;
          if (x_1263) {
            let x_1268 : f32 = u_xlat10.x;
            x_1264 = x_1268;
          } else {
            let x_1271 : f32 = u_xlat10.x;
            x_1264 = -(x_1271);
          }
          let x_1273 : f32 = x_1264;
          u_xlat30.x = x_1273;
          let x_1276 : bool = u_xlatb30.y;
          if (x_1276) {
            let x_1281 : f32 = u_xlat10.x;
            x_1277 = x_1281;
          } else {
            let x_1284 : f32 = u_xlat10.x;
            x_1277 = -(x_1284);
          }
          let x_1286 : f32 = x_1277;
          u_xlat30.y = x_1286;
          let x_1288 : vec4<f32> = u_xlat9;
          let x_1290 : vec2<f32> = u_xlat27;
          let x_1293 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1290.x, x_1290.x)) + x_1293);
          let x_1295 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1295 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1298 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1298, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1302 : i32 = u_xlati35;
          let x_1304 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1302];
          let x_1306 : vec2<f32> = u_xlat27;
          let x_1308 : i32 = u_xlati35;
          let x_1310 : vec4<f32> = x_426.x_AdditionalLightsCookieAtlasUVRects[x_1308];
          let x_1312 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * x_1306) + vec2<f32>(x_1310.z, x_1310.w));
          let x_1313 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        }
      }
      let x_1320 : vec4<f32> = u_xlat8;
      let x_1322 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1320.x, x_1320.y), 0.0f);
      u_xlat8 = x_1322;
      let x_1324 : bool = u_xlatb5.y;
      if (x_1324) {
        let x_1329 : f32 = u_xlat8.w;
        x_1325 = x_1329;
      } else {
        let x_1332 : f32 = u_xlat8.x;
        x_1325 = x_1332;
      }
      let x_1333 : f32 = x_1325;
      u_xlat27.x = x_1333;
      let x_1336 : bool = u_xlatb5.x;
      if (x_1336) {
        let x_1340 : vec4<f32> = u_xlat8;
        x_1337 = vec3<f32>(x_1340.x, x_1340.y, x_1340.z);
      } else {
        let x_1343 : vec2<f32> = u_xlat27;
        x_1337 = vec3<f32>(x_1343.x, x_1343.x, x_1343.x);
      }
      let x_1345 : vec3<f32> = x_1337;
      let x_1346 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1352 : vec4<f32> = u_xlat8;
    let x_1354 : i32 = u_xlati35;
    let x_1356 : vec4<f32> = x_681.x_AdditionalLightsColor[x_1354];
    let x_1358 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
    let x_1359 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
    let x_1361 : f32 = u_xlat36;
    let x_1362 : f32 = u_xlat37;
    u_xlat35 = (x_1361 * x_1362);
    let x_1364 : f32 = u_xlat35;
    let x_1366 : vec4<f32> = u_xlat8;
    let x_1368 : vec3<f32> = (vec3<f32>(x_1364, x_1364, x_1364) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
    let x_1369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
    let x_1371 : vec4<f32> = u_xlat2;
    let x_1373 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), x_1373);
    let x_1375 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1375, 0.0f, 1.0f);
    let x_1377 : f32 = u_xlat35;
    let x_1379 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1377, x_1377, x_1377) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
    let x_1382 : vec3<f32> = u_xlat7;
    let x_1383 : vec4<f32> = u_xlat1;
    let x_1386 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1382 * vec3<f32>(x_1383.y, x_1383.z, x_1383.w)) + x_1386);

    continuing {
      let x_1388 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1388 + bitcast<u32>(1i));
    }
  }
  let x_1390 : vec3<f32> = u_xlat3;
  let x_1391 : vec4<f32> = u_xlat1;
  let x_1394 : vec4<f32> = u_xlat4;
  let x_1396 : vec3<f32> = ((x_1390 * vec3<f32>(x_1391.y, x_1391.z, x_1391.w)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1401 : vec3<f32> = u_xlat6;
  let x_1402 : vec4<f32> = u_xlat1;
  let x_1404 : vec3<f32> = (x_1401 + vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
  let x_1405 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1408 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1408 == 1.0f);
  let x_1410 : bool = u_xlatb11;
  let x_1411 : bool = u_xlatb22;
  u_xlatb11 = (x_1410 | x_1411);
  let x_1413 : bool = u_xlatb11;
  if (x_1413) {
    let x_1418 : f32 = u_xlat0.x;
    x_1414 = x_1418;
  } else {
    x_1414 = 1.0f;
  }
  let x_1420 : f32 = x_1414;
  SV_Target0.w = x_1420;
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


