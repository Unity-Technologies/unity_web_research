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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb33 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_372 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

@group(1) @binding(5) var<uniform> x_440 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_689 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_526 : f32;
  var x_537 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_823 : f32;
  var x_833 : f32;
  var txVec1 : vec3<f32>;
  var x_1257 : f32;
  var x_1270 : f32;
  var x_1318 : f32;
  var x_1329 : vec3<f32>;
  var x_1437 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat11.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat33;
  let x_108 : f32 = u_xlat22;
  u_xlat22 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat22;
  u_xlat22 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat11.x;
  let x_116 : f32 = u_xlat22;
  u_xlat11.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat11.x;
  u_xlat11.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb22;
  if (x_132) {
    let x_137 : f32 = u_xlat11.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat11.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat11.x;
  u_xlatb11 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb11;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat11;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat11.x = x_178.w;
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
  u_xlat2 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_240 : f32 = vs_TEXCOORD1.y;
  let x_243 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat11.x = (x_240 * x_243);
  let x_247 : f32 = x_45.unity_MatrixV[0i].z;
  let x_249 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_247 * x_249) + x_252);
  let x_256 : f32 = x_45.unity_MatrixV[2i].z;
  let x_258 : f32 = vs_TEXCOORD1.z;
  let x_261 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat11.x;
  let x_268 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat11.x = (x_265 + x_268);
  let x_272 : f32 = u_xlat11.x;
  let x_276 : f32 = x_45.x_ProjectionParams.y;
  u_xlat11.x = (-(x_272) + -(x_276));
  let x_281 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_281, 0.0f);
  let x_285 : f32 = u_xlat11.x;
  let x_288 : f32 = x_45.unity_FogParams.x;
  u_xlat11.x = (x_285 * x_288);
  let x_298 : vec2<f32> = vs_TEXCOORD7;
  let x_300 : f32 = x_45.x_GlobalMipBias.x;
  let x_301 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_298, x_300);
  u_xlat3 = x_301;
  let x_307 : vec2<f32> = vs_TEXCOORD7;
  let x_309 : f32 = x_45.x_GlobalMipBias.x;
  let x_310 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_307, x_309);
  let x_311 : vec3<f32> = vec3<f32>(x_310.x, x_310.y, x_310.z);
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat3;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat33;
  u_xlat33 = (x_325 + 0.5f);
  let x_327 : f32 = u_xlat33;
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : f32 = u_xlat3.w;
  u_xlat33 = max(x_335, 0.00009999999747378752f);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : f32 = u_xlat33;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) / vec3<f32>(x_339, x_339, x_339));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_347 : vec4<f32> = vs_TEXCOORD6;
  let x_348 : vec2<f32> = vec2<f32>(x_347.x, x_347.y);
  let x_350 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_348.x, x_348.y, x_350);
  let x_362 : vec3<f32> = txVec0;
  let x_364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_362.xy, x_362.z);
  u_xlat33 = x_364;
  let x_375 : f32 = x_372.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_375) + 1.0f);
  let x_379 : f32 = u_xlat33;
  let x_381 : f32 = x_372.x_MainLightShadowParams.x;
  let x_384 : f32 = u_xlat1.x;
  u_xlat33 = ((x_379 * x_381) + x_384);
  let x_388 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_388);
  let x_392 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_392 >= 1.0f);
  let x_394 : bool = u_xlatb1;
  let x_395 : bool = u_xlatb35;
  u_xlatb1 = (x_394 | x_395);
  let x_397 : bool = u_xlatb1;
  let x_398 : f32 = u_xlat33;
  u_xlat33 = select(x_398, 1.0f, x_397);
  let x_400 : vec3<f32> = vs_TEXCOORD1;
  let x_404 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_406 : vec3<f32> = (x_400 + -(x_404));
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_417 : f32 = u_xlat1.x;
  let x_419 : f32 = x_372.x_MainLightShadowParams.z;
  let x_422 : f32 = x_372.x_MainLightShadowParams.w;
  u_xlat35 = ((x_417 * x_419) + x_422);
  let x_424 : f32 = u_xlat35;
  u_xlat35 = clamp(x_424, 0.0f, 1.0f);
  let x_427 : f32 = u_xlat33;
  u_xlat36 = (-(x_427) + 1.0f);
  let x_430 : f32 = u_xlat35;
  let x_431 : f32 = u_xlat36;
  let x_433 : f32 = u_xlat33;
  u_xlat33 = ((x_430 * x_431) + x_433);
  let x_442 : f32 = x_440.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_442 == -1.0f));
  let x_445 : bool = u_xlatb35;
  if (x_445) {
    let x_448 : vec3<f32> = vs_TEXCOORD1;
    let x_451 : vec4<f32> = x_440.x_MainLightWorldToLight[1i];
    let x_453 : vec2<f32> = (vec2<f32>(x_448.y, x_448.y) * vec2<f32>(x_451.x, x_451.y));
    let x_454 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
    let x_457 : vec4<f32> = x_440.x_MainLightWorldToLight[0i];
    let x_459 : vec3<f32> = vs_TEXCOORD1;
    let x_462 : vec4<f32> = u_xlat4;
    let x_464 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_459.x, x_459.x)) + vec2<f32>(x_462.x, x_462.y));
    let x_465 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
    let x_468 : vec4<f32> = x_440.x_MainLightWorldToLight[2i];
    let x_470 : vec3<f32> = vs_TEXCOORD1;
    let x_473 : vec4<f32> = u_xlat4;
    let x_475 : vec2<f32> = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_470.z, x_470.z)) + vec2<f32>(x_473.x, x_473.y));
    let x_476 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
    let x_478 : vec4<f32> = u_xlat4;
    let x_481 : vec4<f32> = x_440.x_MainLightWorldToLight[3i];
    let x_483 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) + vec2<f32>(x_481.x, x_481.y));
    let x_484 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
    let x_486 : vec4<f32> = u_xlat4;
    let x_490 : vec2<f32> = ((vec2<f32>(x_486.x, x_486.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_491 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
    let x_498 : vec4<f32> = u_xlat4;
    let x_501 : f32 = x_45.x_GlobalMipBias.x;
    let x_502 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_498.x, x_498.y), x_501);
    u_xlat4 = x_502;
    let x_507 : f32 = x_440.x_MainLightCookieTextureFormat;
    let x_509 : f32 = x_440.x_MainLightCookieTextureFormat;
    let x_511 : f32 = x_440.x_MainLightCookieTextureFormat;
    let x_513 : f32 = x_440.x_MainLightCookieTextureFormat;
    let x_514 : vec4<f32> = vec4<f32>(x_507, x_509, x_511, x_513);
    let x_522 : vec4<bool> = (vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_522.x, x_522.y);
    let x_525 : bool = u_xlatb5.y;
    if (x_525) {
      let x_530 : f32 = u_xlat4.w;
      x_526 = x_530;
    } else {
      let x_533 : f32 = u_xlat4.x;
      x_526 = x_533;
    }
    let x_534 : f32 = x_526;
    u_xlat35 = x_534;
    let x_536 : bool = u_xlatb5.x;
    if (x_536) {
      let x_540 : vec4<f32> = u_xlat4;
      x_537 = vec3<f32>(x_540.x, x_540.y, x_540.z);
    } else {
      let x_543 : f32 = u_xlat35;
      x_537 = vec3<f32>(x_543, x_543, x_543);
    }
    let x_545 : vec3<f32> = x_537;
    let x_546 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_552 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = x_45.x_MainLightColor;
  let x_557 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : f32 = u_xlat33;
  let x_562 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_560 * x_562);
  let x_564 : f32 = u_xlat33;
  let x_566 : vec4<f32> = u_xlat4;
  let x_568 : vec3<f32> = (vec3<f32>(x_564, x_564, x_564) * vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec3<f32> = u_xlat2;
  let x_573 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat33 = dot(x_571, vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : f32 = u_xlat33;
  u_xlat33 = clamp(x_576, 0.0f, 1.0f);
  let x_578 : f32 = u_xlat33;
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec4<f32> = u_xlat4;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.y, x_585.z, x_585.w) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_595 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_593, x_595);
  let x_599 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_599));
  let x_603 : f32 = u_xlat1.x;
  let x_606 : f32 = x_372.x_AdditionalShadowFadeParams.x;
  let x_609 : f32 = x_372.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_603 * x_606) + x_609);
  let x_613 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_613, 0.0f, 1.0f);
  let x_617 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_619 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_621 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_623 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_624 : vec4<f32> = vec4<f32>(x_617, x_619, x_621, x_623);
  let x_630 : vec4<bool> = (vec4<f32>(x_624.x, x_624.y, x_624.z, x_624.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_630.x, x_630.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_643 : u32 = u_xlatu_loop_1;
    let x_644 : u32 = u_xlatu33;
    if ((x_643 < x_644)) {
    } else {
      break;
    }
    let x_647 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_647 >> 2u);
    let x_651 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_651 & 3u));
    let x_654 : u32 = u_xlatu36;
    let x_657 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_654)];
    let x_667 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_672 : vec4<u32> = indexable[x_667];
    u_xlat36 = dot(x_657, bitcast<vec4<f32>>(x_672));
    let x_676 : f32 = u_xlat36;
    u_xlati36 = i32(x_676);
    let x_679 : vec3<f32> = vs_TEXCOORD1;
    let x_690 : i32 = u_xlati36;
    let x_692 : vec4<f32> = x_689.x_AdditionalLightsPosition[x_690];
    let x_695 : i32 = u_xlati36;
    let x_697 : vec4<f32> = x_689.x_AdditionalLightsPosition[x_695];
    u_xlat7 = ((-(x_679) * vec3<f32>(x_692.w, x_692.w, x_692.w)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
    let x_701 : vec3<f32> = u_xlat7;
    let x_702 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_701, x_702);
    let x_704 : f32 = u_xlat37;
    u_xlat37 = max(x_704, 0.00006103515625f);
    let x_708 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_708);
    let x_710 : f32 = u_xlat27;
    let x_712 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_710, x_710, x_710) * x_712);
    let x_714 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_714);
    let x_716 : f32 = u_xlat37;
    let x_717 : i32 = u_xlati36;
    let x_719 : f32 = x_689.x_AdditionalLightsAttenuation[x_717].x;
    u_xlat37 = (x_716 * x_719);
    let x_721 : f32 = u_xlat37;
    let x_723 : f32 = u_xlat37;
    u_xlat37 = ((-(x_721) * x_723) + 1.0f);
    let x_726 : f32 = u_xlat37;
    u_xlat37 = max(x_726, 0.0f);
    let x_728 : f32 = u_xlat37;
    let x_729 : f32 = u_xlat37;
    u_xlat37 = (x_728 * x_729);
    let x_731 : f32 = u_xlat37;
    let x_732 : f32 = u_xlat27;
    u_xlat37 = (x_731 * x_732);
    let x_734 : i32 = u_xlati36;
    let x_736 : vec4<f32> = x_689.x_AdditionalLightsSpotDir[x_734];
    let x_738 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
    let x_740 : f32 = u_xlat27;
    let x_741 : i32 = u_xlati36;
    let x_743 : f32 = x_689.x_AdditionalLightsAttenuation[x_741].z;
    let x_745 : i32 = u_xlati36;
    let x_747 : f32 = x_689.x_AdditionalLightsAttenuation[x_745].w;
    u_xlat27 = ((x_740 * x_743) + x_747);
    let x_749 : f32 = u_xlat27;
    u_xlat27 = clamp(x_749, 0.0f, 1.0f);
    let x_751 : f32 = u_xlat27;
    let x_752 : f32 = u_xlat27;
    u_xlat27 = (x_751 * x_752);
    let x_754 : f32 = u_xlat37;
    let x_755 : f32 = u_xlat27;
    u_xlat37 = (x_754 * x_755);
    let x_759 : i32 = u_xlati36;
    let x_761 : f32 = x_372.x_AdditionalShadowParams[x_759].w;
    u_xlati27 = i32(x_761);
    let x_764 : i32 = u_xlati27;
    u_xlatb38 = (x_764 >= 0i);
    let x_766 : bool = u_xlatb38;
    if (x_766) {
      let x_770 : i32 = u_xlati36;
      let x_772 : f32 = x_372.x_AdditionalShadowParams[x_770].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_772, x_772, x_772, x_772))));
      let x_776 : bool = u_xlatb38;
      if (x_776) {
        let x_781 : vec3<f32> = u_xlat7;
        let x_784 : vec3<f32> = u_xlat7;
        let x_787 : vec4<bool> = (abs(vec4<f32>(x_781.z, x_781.z, x_781.y, x_781.z)) >= abs(vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.x)));
        let x_789 : vec3<bool> = vec3<bool>(x_787.x, x_787.y, x_787.z);
        let x_790 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_789.x, x_789.y, x_789.z, x_790.w);
        let x_793 : bool = u_xlatb8.y;
        let x_795 : bool = u_xlatb8.x;
        u_xlatb38 = (x_793 & x_795);
        let x_797 : vec3<f32> = u_xlat7;
        let x_800 : vec4<bool> = (-(vec4<f32>(x_797.z, x_797.y, x_797.z, x_797.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_801 : vec3<bool> = vec3<bool>(x_800.x, x_800.y, x_800.w);
        let x_802 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_801.x, x_801.y, x_802.z, x_801.z);
        let x_806 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_806);
        let x_812 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_812);
        let x_819 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_819);
        let x_822 : bool = u_xlatb8.z;
        if (x_822) {
          let x_827 : f32 = u_xlat8.y;
          x_823 = x_827;
        } else {
          let x_829 : f32 = u_xlat39;
          x_823 = x_829;
        }
        let x_830 : f32 = x_823;
        u_xlat39 = x_830;
        let x_832 : bool = u_xlatb38;
        if (x_832) {
          let x_837 : f32 = u_xlat8.x;
          x_833 = x_837;
        } else {
          let x_839 : f32 = u_xlat39;
          x_833 = x_839;
        }
        let x_840 : f32 = x_833;
        u_xlat38 = x_840;
        let x_841 : i32 = u_xlati36;
        let x_843 : f32 = x_372.x_AdditionalShadowParams[x_841].w;
        u_xlat39 = trunc(x_843);
        let x_845 : f32 = u_xlat38;
        let x_846 : f32 = u_xlat39;
        u_xlat38 = (x_845 + x_846);
        let x_848 : f32 = u_xlat38;
        u_xlati27 = i32(x_848);
      }
      let x_850 : i32 = u_xlati27;
      u_xlati27 = (x_850 << bitcast<u32>(2i));
      let x_852 : vec3<f32> = vs_TEXCOORD1;
      let x_855 : i32 = u_xlati27;
      let x_858 : i32 = u_xlati27;
      let x_862 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_855 + 1i) / 4i)][((x_858 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_852.y, x_852.y, x_852.y, x_852.y) * x_862);
      let x_864 : i32 = u_xlati27;
      let x_866 : i32 = u_xlati27;
      let x_869 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[(x_864 / 4i)][(x_866 % 4i)];
      let x_870 : vec3<f32> = vs_TEXCOORD1;
      let x_873 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_869 * vec4<f32>(x_870.x, x_870.x, x_870.x, x_870.x)) + x_873);
      let x_875 : i32 = u_xlati27;
      let x_878 : i32 = u_xlati27;
      let x_882 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_875 + 2i) / 4i)][((x_878 + 2i) % 4i)];
      let x_883 : vec3<f32> = vs_TEXCOORD1;
      let x_886 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_882 * vec4<f32>(x_883.z, x_883.z, x_883.z, x_883.z)) + x_886);
      let x_888 : vec4<f32> = u_xlat8;
      let x_889 : i32 = u_xlati27;
      let x_892 : i32 = u_xlati27;
      let x_896 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_889 + 3i) / 4i)][((x_892 + 3i) % 4i)];
      u_xlat8 = (x_888 + x_896);
      let x_898 : vec4<f32> = u_xlat8;
      let x_900 : vec4<f32> = u_xlat8;
      let x_902 : vec3<f32> = (vec3<f32>(x_898.x, x_898.y, x_898.z) / vec3<f32>(x_900.w, x_900.w, x_900.w));
      let x_903 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
      let x_906 : vec4<f32> = u_xlat8;
      let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
      let x_909 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_907.x, x_907.y, x_909);
      let x_917 : vec3<f32> = txVec1;
      let x_919 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
      u_xlat27 = x_919;
      let x_920 : i32 = u_xlati36;
      let x_922 : f32 = x_372.x_AdditionalShadowParams[x_920].x;
      u_xlat38 = (1.0f + -(x_922));
      let x_925 : f32 = u_xlat27;
      let x_926 : i32 = u_xlati36;
      let x_928 : f32 = x_372.x_AdditionalShadowParams[x_926].x;
      let x_930 : f32 = u_xlat38;
      u_xlat27 = ((x_925 * x_928) + x_930);
      let x_933 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_933);
      let x_937 : f32 = u_xlat8.z;
      u_xlatb39 = (x_937 >= 1.0f);
      let x_939 : bool = u_xlatb38;
      let x_940 : bool = u_xlatb39;
      u_xlatb38 = (x_939 | x_940);
      let x_942 : bool = u_xlatb38;
      let x_943 : f32 = u_xlat27;
      u_xlat27 = select(x_943, 1.0f, x_942);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_946 : f32 = u_xlat27;
    u_xlat38 = (-(x_946) + 1.0f);
    let x_950 : f32 = u_xlat1.x;
    let x_951 : f32 = u_xlat38;
    let x_953 : f32 = u_xlat27;
    u_xlat27 = ((x_950 * x_951) + x_953);
    let x_956 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_956 & 31i)));
    let x_960 : i32 = u_xlati38;
    let x_963 : f32 = x_440.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_960) & bitcast<u32>(x_963)));
    let x_967 : i32 = u_xlati38;
    if ((x_967 != 0i)) {
      let x_971 : i32 = u_xlati36;
      let x_973 : f32 = x_440.x_AdditionalLightsLightTypes[x_971].el;
      u_xlati38 = i32(x_973);
      let x_976 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_976 != 0i));
      let x_980 : i32 = u_xlati36;
      u_xlati40 = (x_980 << bitcast<u32>(2i));
      let x_982 : i32 = u_xlati39;
      if ((x_982 != 0i)) {
        let x_986 : vec3<f32> = vs_TEXCOORD1;
        let x_988 : i32 = u_xlati40;
        let x_991 : i32 = u_xlati40;
        let x_995 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_988 + 1i) / 4i)][((x_991 + 1i) % 4i)];
        let x_997 : vec3<f32> = (vec3<f32>(x_986.y, x_986.y, x_986.y) * vec3<f32>(x_995.x, x_995.y, x_995.w));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
        let x_1000 : i32 = u_xlati40;
        let x_1002 : i32 = u_xlati40;
        let x_1005 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1000 / 4i)][(x_1002 % 4i)];
        let x_1007 : vec3<f32> = vs_TEXCOORD1;
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1012 : vec3<f32> = ((vec3<f32>(x_1005.x, x_1005.y, x_1005.w) * vec3<f32>(x_1007.x, x_1007.x, x_1007.x)) + vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : i32 = u_xlati40;
        let x_1018 : i32 = u_xlati40;
        let x_1022 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1015 + 2i) / 4i)][((x_1018 + 2i) % 4i)];
        let x_1024 : vec3<f32> = vs_TEXCOORD1;
        let x_1027 : vec4<f32> = u_xlat8;
        let x_1029 : vec3<f32> = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.w) * vec3<f32>(x_1024.z, x_1024.z, x_1024.z)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1034 : i32 = u_xlati40;
        let x_1037 : i32 = u_xlati40;
        let x_1041 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1034 + 3i) / 4i)][((x_1037 + 3i) % 4i)];
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
        let x_1066 : i32 = u_xlati36;
        let x_1068 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1066];
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1073 : i32 = u_xlati36;
        let x_1075 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1073];
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1075.z, x_1075.w));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
      } else {
        let x_1081 : i32 = u_xlati38;
        u_xlatb38 = (x_1081 == 1i);
        let x_1083 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1083);
        let x_1085 : i32 = u_xlati38;
        if ((x_1085 != 0i)) {
          let x_1091 : vec3<f32> = vs_TEXCOORD1;
          let x_1093 : i32 = u_xlati40;
          let x_1096 : i32 = u_xlati40;
          let x_1100 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1093 + 1i) / 4i)][((x_1096 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1091.y, x_1091.y) * vec2<f32>(x_1100.x, x_1100.y));
          let x_1103 : i32 = u_xlati40;
          let x_1105 : i32 = u_xlati40;
          let x_1108 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1103 / 4i)][(x_1105 % 4i)];
          let x_1110 : vec3<f32> = vs_TEXCOORD1;
          let x_1113 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1110.x, x_1110.x)) + x_1113);
          let x_1115 : i32 = u_xlati40;
          let x_1118 : i32 = u_xlati40;
          let x_1122 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1115 + 2i) / 4i)][((x_1118 + 2i) % 4i)];
          let x_1124 : vec3<f32> = vs_TEXCOORD1;
          let x_1127 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1124.z, x_1124.z)) + x_1127);
          let x_1129 : vec2<f32> = u_xlat30;
          let x_1130 : i32 = u_xlati40;
          let x_1133 : i32 = u_xlati40;
          let x_1137 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1130 + 3i) / 4i)][((x_1133 + 3i) % 4i)];
          u_xlat30 = (x_1129 + vec2<f32>(x_1137.x, x_1137.y));
          let x_1140 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1140 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1143 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1143);
          let x_1145 : i32 = u_xlati36;
          let x_1147 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1145];
          let x_1149 : vec2<f32> = u_xlat30;
          let x_1151 : i32 = u_xlati36;
          let x_1153 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1151];
          let x_1155 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.y) * x_1149) + vec2<f32>(x_1153.z, x_1153.w));
          let x_1156 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        } else {
          let x_1160 : vec3<f32> = vs_TEXCOORD1;
          let x_1162 : i32 = u_xlati40;
          let x_1165 : i32 = u_xlati40;
          let x_1169 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1162 + 1i) / 4i)][((x_1165 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1169);
          let x_1171 : i32 = u_xlati40;
          let x_1173 : i32 = u_xlati40;
          let x_1176 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1171 / 4i)][(x_1173 % 4i)];
          let x_1177 : vec3<f32> = vs_TEXCOORD1;
          let x_1180 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1176 * vec4<f32>(x_1177.x, x_1177.x, x_1177.x, x_1177.x)) + x_1180);
          let x_1182 : i32 = u_xlati40;
          let x_1185 : i32 = u_xlati40;
          let x_1189 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1182 + 2i) / 4i)][((x_1185 + 2i) % 4i)];
          let x_1190 : vec3<f32> = vs_TEXCOORD1;
          let x_1193 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1189 * vec4<f32>(x_1190.z, x_1190.z, x_1190.z, x_1190.z)) + x_1193);
          let x_1195 : vec4<f32> = u_xlat9;
          let x_1196 : i32 = u_xlati40;
          let x_1199 : i32 = u_xlati40;
          let x_1203 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1196 + 3i) / 4i)][((x_1199 + 3i) % 4i)];
          u_xlat9 = (x_1195 + x_1203);
          let x_1205 : vec4<f32> = u_xlat9;
          let x_1207 : vec4<f32> = u_xlat9;
          let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) / vec3<f32>(x_1207.w, x_1207.w, x_1207.w));
          let x_1210 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
          let x_1212 : vec4<f32> = u_xlat9;
          let x_1214 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
          let x_1217 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1217);
          let x_1219 : f32 = u_xlat38;
          let x_1221 : vec4<f32> = u_xlat9;
          let x_1223 : vec3<f32> = (vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
          let x_1224 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
          let x_1226 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1226.x, x_1226.y, x_1226.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1231 : f32 = u_xlat38;
          u_xlat38 = max(x_1231, 0.00000099999999747524f);
          let x_1234 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1234);
          let x_1237 : f32 = u_xlat38;
          let x_1239 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.z, x_1239.x, x_1239.y));
          let x_1243 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1243);
          let x_1247 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1247, 0.0f, 1.0f);
          let x_1251 : vec3<f32> = u_xlat10;
          let x_1253 : vec4<bool> = (vec4<f32>(x_1251.y, x_1251.z, x_1251.y, x_1251.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1253.x, x_1253.y);
          let x_1256 : bool = u_xlatb30.x;
          if (x_1256) {
            let x_1261 : f32 = u_xlat10.x;
            x_1257 = x_1261;
          } else {
            let x_1264 : f32 = u_xlat10.x;
            x_1257 = -(x_1264);
          }
          let x_1266 : f32 = x_1257;
          u_xlat30.x = x_1266;
          let x_1269 : bool = u_xlatb30.y;
          if (x_1269) {
            let x_1274 : f32 = u_xlat10.x;
            x_1270 = x_1274;
          } else {
            let x_1277 : f32 = u_xlat10.x;
            x_1270 = -(x_1277);
          }
          let x_1279 : f32 = x_1270;
          u_xlat30.y = x_1279;
          let x_1281 : vec4<f32> = u_xlat9;
          let x_1283 : f32 = u_xlat38;
          let x_1286 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1283, x_1283)) + x_1286);
          let x_1288 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1288 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1291 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1291, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1295 : i32 = u_xlati36;
          let x_1297 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1295];
          let x_1299 : vec2<f32> = u_xlat30;
          let x_1301 : i32 = u_xlati36;
          let x_1303 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1301];
          let x_1305 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * x_1299) + vec2<f32>(x_1303.z, x_1303.w));
          let x_1306 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        }
      }
      let x_1313 : vec4<f32> = u_xlat8;
      let x_1315 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1313.x, x_1313.y), 0.0f);
      u_xlat8 = x_1315;
      let x_1317 : bool = u_xlatb5.y;
      if (x_1317) {
        let x_1322 : f32 = u_xlat8.w;
        x_1318 = x_1322;
      } else {
        let x_1325 : f32 = u_xlat8.x;
        x_1318 = x_1325;
      }
      let x_1326 : f32 = x_1318;
      u_xlat38 = x_1326;
      let x_1328 : bool = u_xlatb5.x;
      if (x_1328) {
        let x_1332 : vec4<f32> = u_xlat8;
        x_1329 = vec3<f32>(x_1332.x, x_1332.y, x_1332.z);
      } else {
        let x_1335 : f32 = u_xlat38;
        x_1329 = vec3<f32>(x_1335, x_1335, x_1335);
      }
      let x_1337 : vec3<f32> = x_1329;
      let x_1338 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1344 : vec4<f32> = u_xlat8;
    let x_1346 : i32 = u_xlati36;
    let x_1348 : vec4<f32> = x_689.x_AdditionalLightsColor[x_1346];
    let x_1350 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1351 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
    let x_1353 : f32 = u_xlat37;
    let x_1354 : f32 = u_xlat27;
    u_xlat36 = (x_1353 * x_1354);
    let x_1356 : f32 = u_xlat36;
    let x_1358 : vec4<f32> = u_xlat8;
    let x_1360 : vec3<f32> = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
    let x_1363 : vec3<f32> = u_xlat2;
    let x_1364 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1363, x_1364);
    let x_1366 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1366, 0.0f, 1.0f);
    let x_1368 : f32 = u_xlat36;
    let x_1370 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1368, x_1368, x_1368) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : vec3<f32> = u_xlat7;
    let x_1374 : vec4<f32> = u_xlat1;
    let x_1377 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1373 * vec3<f32>(x_1374.y, x_1374.z, x_1374.w)) + x_1377);

    continuing {
      let x_1379 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1379 + bitcast<u32>(1i));
    }
  }
  let x_1381 : vec4<f32> = u_xlat3;
  let x_1383 : vec4<f32> = u_xlat1;
  let x_1386 : vec4<f32> = u_xlat4;
  let x_1388 : vec3<f32> = ((vec3<f32>(x_1381.x, x_1381.y, x_1381.z) * vec3<f32>(x_1383.y, x_1383.z, x_1383.w)) + vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1391 : vec3<f32> = u_xlat6;
  let x_1392 : vec4<f32> = u_xlat1;
  let x_1394 : vec3<f32> = (x_1391 + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1398 : f32 = u_xlat11.x;
  let x_1400 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1398 * -(x_1400));
  let x_1405 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1405);
  let x_1408 : vec4<f32> = u_xlat1;
  let x_1411 : vec4<f32> = x_45.unity_FogColor;
  let x_1414 : vec3<f32> = (vec3<f32>(x_1408.x, x_1408.y, x_1408.z) + -(vec3<f32>(x_1411.x, x_1411.y, x_1411.z)));
  let x_1415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1419 : vec3<f32> = u_xlat11;
  let x_1421 : vec4<f32> = u_xlat1;
  let x_1425 : vec4<f32> = x_45.unity_FogColor;
  let x_1427 : vec3<f32> = ((vec3<f32>(x_1419.x, x_1419.x, x_1419.x) * vec3<f32>(x_1421.x, x_1421.y, x_1421.z)) + vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
  let x_1428 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
  let x_1431 : f32 = x_58.x_Surface;
  u_xlatb11 = (x_1431 == 1.0f);
  let x_1433 : bool = u_xlatb11;
  let x_1434 : bool = u_xlatb22;
  u_xlatb11 = (x_1433 | x_1434);
  let x_1436 : bool = u_xlatb11;
  if (x_1436) {
    let x_1441 : f32 = u_xlat0.x;
    x_1437 = x_1441;
  } else {
    x_1437 = 1.0f;
  }
  let x_1443 : f32 = x_1437;
  SV_Target0.w = x_1443;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


