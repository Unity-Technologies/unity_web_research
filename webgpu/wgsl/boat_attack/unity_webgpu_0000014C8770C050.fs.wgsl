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

@group(1) @binding(1) var<uniform> x_696 : AdditionalLights;

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
  var x_830 : f32;
  var x_840 : f32;
  var txVec1 : vec3<f32>;
  var x_1264 : f32;
  var x_1277 : f32;
  var x_1325 : f32;
  var x_1336 : vec3<f32>;
  var x_1448 : f32;
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
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_602 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_600, x_602);
  let x_606 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_606));
  let x_610 : f32 = u_xlat1.x;
  let x_613 : f32 = x_372.x_AdditionalShadowFadeParams.x;
  let x_616 : f32 = x_372.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_610 * x_613) + x_616);
  let x_620 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_620, 0.0f, 1.0f);
  let x_624 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_626 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_628 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_630 : f32 = x_440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_631 : vec4<f32> = vec4<f32>(x_624, x_626, x_628, x_630);
  let x_637 : vec4<bool> = (vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_637.x, x_637.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_650 : u32 = u_xlatu_loop_1;
    let x_651 : u32 = u_xlatu33;
    if ((x_650 < x_651)) {
    } else {
      break;
    }
    let x_654 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_654 >> 2u);
    let x_658 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_658 & 3u));
    let x_661 : u32 = u_xlatu36;
    let x_664 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_661)];
    let x_674 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_679 : vec4<u32> = indexable[x_674];
    u_xlat36 = dot(x_664, bitcast<vec4<f32>>(x_679));
    let x_683 : f32 = u_xlat36;
    u_xlati36 = i32(x_683);
    let x_686 : vec3<f32> = vs_TEXCOORD1;
    let x_697 : i32 = u_xlati36;
    let x_699 : vec4<f32> = x_696.x_AdditionalLightsPosition[x_697];
    let x_702 : i32 = u_xlati36;
    let x_704 : vec4<f32> = x_696.x_AdditionalLightsPosition[x_702];
    u_xlat7 = ((-(x_686) * vec3<f32>(x_699.w, x_699.w, x_699.w)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_708 : vec3<f32> = u_xlat7;
    let x_709 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_708, x_709);
    let x_711 : f32 = u_xlat37;
    u_xlat37 = max(x_711, 0.00006103515625f);
    let x_715 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_715);
    let x_717 : f32 = u_xlat27;
    let x_719 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_717, x_717, x_717) * x_719);
    let x_721 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_721);
    let x_723 : f32 = u_xlat37;
    let x_724 : i32 = u_xlati36;
    let x_726 : f32 = x_696.x_AdditionalLightsAttenuation[x_724].x;
    u_xlat37 = (x_723 * x_726);
    let x_728 : f32 = u_xlat37;
    let x_730 : f32 = u_xlat37;
    u_xlat37 = ((-(x_728) * x_730) + 1.0f);
    let x_733 : f32 = u_xlat37;
    u_xlat37 = max(x_733, 0.0f);
    let x_735 : f32 = u_xlat37;
    let x_736 : f32 = u_xlat37;
    u_xlat37 = (x_735 * x_736);
    let x_738 : f32 = u_xlat37;
    let x_739 : f32 = u_xlat27;
    u_xlat37 = (x_738 * x_739);
    let x_741 : i32 = u_xlati36;
    let x_743 : vec4<f32> = x_696.x_AdditionalLightsSpotDir[x_741];
    let x_745 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), x_745);
    let x_747 : f32 = u_xlat27;
    let x_748 : i32 = u_xlati36;
    let x_750 : f32 = x_696.x_AdditionalLightsAttenuation[x_748].z;
    let x_752 : i32 = u_xlati36;
    let x_754 : f32 = x_696.x_AdditionalLightsAttenuation[x_752].w;
    u_xlat27 = ((x_747 * x_750) + x_754);
    let x_756 : f32 = u_xlat27;
    u_xlat27 = clamp(x_756, 0.0f, 1.0f);
    let x_758 : f32 = u_xlat27;
    let x_759 : f32 = u_xlat27;
    u_xlat27 = (x_758 * x_759);
    let x_761 : f32 = u_xlat37;
    let x_762 : f32 = u_xlat27;
    u_xlat37 = (x_761 * x_762);
    let x_766 : i32 = u_xlati36;
    let x_768 : f32 = x_372.x_AdditionalShadowParams[x_766].w;
    u_xlati27 = i32(x_768);
    let x_771 : i32 = u_xlati27;
    u_xlatb38 = (x_771 >= 0i);
    let x_773 : bool = u_xlatb38;
    if (x_773) {
      let x_777 : i32 = u_xlati36;
      let x_779 : f32 = x_372.x_AdditionalShadowParams[x_777].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_779, x_779, x_779, x_779))));
      let x_783 : bool = u_xlatb38;
      if (x_783) {
        let x_788 : vec3<f32> = u_xlat7;
        let x_791 : vec3<f32> = u_xlat7;
        let x_794 : vec4<bool> = (abs(vec4<f32>(x_788.z, x_788.z, x_788.y, x_788.z)) >= abs(vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.x)));
        let x_796 : vec3<bool> = vec3<bool>(x_794.x, x_794.y, x_794.z);
        let x_797 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_800 : bool = u_xlatb8.y;
        let x_802 : bool = u_xlatb8.x;
        u_xlatb38 = (x_800 & x_802);
        let x_804 : vec3<f32> = u_xlat7;
        let x_807 : vec4<bool> = (-(vec4<f32>(x_804.z, x_804.y, x_804.z, x_804.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_808 : vec3<bool> = vec3<bool>(x_807.x, x_807.y, x_807.w);
        let x_809 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_808.x, x_808.y, x_809.z, x_808.z);
        let x_813 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_813);
        let x_819 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_819);
        let x_826 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_826);
        let x_829 : bool = u_xlatb8.z;
        if (x_829) {
          let x_834 : f32 = u_xlat8.y;
          x_830 = x_834;
        } else {
          let x_836 : f32 = u_xlat39;
          x_830 = x_836;
        }
        let x_837 : f32 = x_830;
        u_xlat39 = x_837;
        let x_839 : bool = u_xlatb38;
        if (x_839) {
          let x_844 : f32 = u_xlat8.x;
          x_840 = x_844;
        } else {
          let x_846 : f32 = u_xlat39;
          x_840 = x_846;
        }
        let x_847 : f32 = x_840;
        u_xlat38 = x_847;
        let x_848 : i32 = u_xlati36;
        let x_850 : f32 = x_372.x_AdditionalShadowParams[x_848].w;
        u_xlat39 = trunc(x_850);
        let x_852 : f32 = u_xlat38;
        let x_853 : f32 = u_xlat39;
        u_xlat38 = (x_852 + x_853);
        let x_855 : f32 = u_xlat38;
        u_xlati27 = i32(x_855);
      }
      let x_857 : i32 = u_xlati27;
      u_xlati27 = (x_857 << bitcast<u32>(2i));
      let x_859 : vec3<f32> = vs_TEXCOORD1;
      let x_862 : i32 = u_xlati27;
      let x_865 : i32 = u_xlati27;
      let x_869 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_862 + 1i) / 4i)][((x_865 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_859.y, x_859.y, x_859.y, x_859.y) * x_869);
      let x_871 : i32 = u_xlati27;
      let x_873 : i32 = u_xlati27;
      let x_876 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[(x_871 / 4i)][(x_873 % 4i)];
      let x_877 : vec3<f32> = vs_TEXCOORD1;
      let x_880 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_876 * vec4<f32>(x_877.x, x_877.x, x_877.x, x_877.x)) + x_880);
      let x_882 : i32 = u_xlati27;
      let x_885 : i32 = u_xlati27;
      let x_889 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_882 + 2i) / 4i)][((x_885 + 2i) % 4i)];
      let x_890 : vec3<f32> = vs_TEXCOORD1;
      let x_893 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_889 * vec4<f32>(x_890.z, x_890.z, x_890.z, x_890.z)) + x_893);
      let x_895 : vec4<f32> = u_xlat8;
      let x_896 : i32 = u_xlati27;
      let x_899 : i32 = u_xlati27;
      let x_903 : vec4<f32> = x_372.x_AdditionalLightsWorldToShadow[((x_896 + 3i) / 4i)][((x_899 + 3i) % 4i)];
      u_xlat8 = (x_895 + x_903);
      let x_905 : vec4<f32> = u_xlat8;
      let x_907 : vec4<f32> = u_xlat8;
      let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) / vec3<f32>(x_907.w, x_907.w, x_907.w));
      let x_910 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
      let x_913 : vec4<f32> = u_xlat8;
      let x_914 : vec2<f32> = vec2<f32>(x_913.x, x_913.y);
      let x_916 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_914.x, x_914.y, x_916);
      let x_924 : vec3<f32> = txVec1;
      let x_926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_924.xy, x_924.z);
      u_xlat27 = x_926;
      let x_927 : i32 = u_xlati36;
      let x_929 : f32 = x_372.x_AdditionalShadowParams[x_927].x;
      u_xlat38 = (1.0f + -(x_929));
      let x_932 : f32 = u_xlat27;
      let x_933 : i32 = u_xlati36;
      let x_935 : f32 = x_372.x_AdditionalShadowParams[x_933].x;
      let x_937 : f32 = u_xlat38;
      u_xlat27 = ((x_932 * x_935) + x_937);
      let x_940 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_940);
      let x_944 : f32 = u_xlat8.z;
      u_xlatb39 = (x_944 >= 1.0f);
      let x_946 : bool = u_xlatb38;
      let x_947 : bool = u_xlatb39;
      u_xlatb38 = (x_946 | x_947);
      let x_949 : bool = u_xlatb38;
      let x_950 : f32 = u_xlat27;
      u_xlat27 = select(x_950, 1.0f, x_949);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_953 : f32 = u_xlat27;
    u_xlat38 = (-(x_953) + 1.0f);
    let x_957 : f32 = u_xlat1.x;
    let x_958 : f32 = u_xlat38;
    let x_960 : f32 = u_xlat27;
    u_xlat27 = ((x_957 * x_958) + x_960);
    let x_963 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_963 & 31i)));
    let x_967 : i32 = u_xlati38;
    let x_970 : f32 = x_440.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_967) & bitcast<u32>(x_970)));
    let x_974 : i32 = u_xlati38;
    if ((x_974 != 0i)) {
      let x_978 : i32 = u_xlati36;
      let x_980 : f32 = x_440.x_AdditionalLightsLightTypes[x_978].el;
      u_xlati38 = i32(x_980);
      let x_983 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_983 != 0i));
      let x_987 : i32 = u_xlati36;
      u_xlati40 = (x_987 << bitcast<u32>(2i));
      let x_989 : i32 = u_xlati39;
      if ((x_989 != 0i)) {
        let x_993 : vec3<f32> = vs_TEXCOORD1;
        let x_995 : i32 = u_xlati40;
        let x_998 : i32 = u_xlati40;
        let x_1002 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
        let x_1004 : vec3<f32> = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.w));
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
        let x_1007 : i32 = u_xlati40;
        let x_1009 : i32 = u_xlati40;
        let x_1012 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1007 / 4i)][(x_1009 % 4i)];
        let x_1014 : vec3<f32> = vs_TEXCOORD1;
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec3<f32> = ((vec3<f32>(x_1012.x, x_1012.y, x_1012.w) * vec3<f32>(x_1014.x, x_1014.x, x_1014.x)) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1022 : i32 = u_xlati40;
        let x_1025 : i32 = u_xlati40;
        let x_1029 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1022 + 2i) / 4i)][((x_1025 + 2i) % 4i)];
        let x_1031 : vec3<f32> = vs_TEXCOORD1;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec3<f32> = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.w) * vec3<f32>(x_1031.z, x_1031.z, x_1031.z)) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1041 : i32 = u_xlati40;
        let x_1044 : i32 = u_xlati40;
        let x_1048 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1041 + 3i) / 4i)][((x_1044 + 3i) % 4i)];
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
        let x_1073 : i32 = u_xlati36;
        let x_1075 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1073];
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1080 : i32 = u_xlati36;
        let x_1082 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1080];
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1082.z, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
      } else {
        let x_1088 : i32 = u_xlati38;
        u_xlatb38 = (x_1088 == 1i);
        let x_1090 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1090);
        let x_1092 : i32 = u_xlati38;
        if ((x_1092 != 0i)) {
          let x_1098 : vec3<f32> = vs_TEXCOORD1;
          let x_1100 : i32 = u_xlati40;
          let x_1103 : i32 = u_xlati40;
          let x_1107 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1100 + 1i) / 4i)][((x_1103 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1098.y, x_1098.y) * vec2<f32>(x_1107.x, x_1107.y));
          let x_1110 : i32 = u_xlati40;
          let x_1112 : i32 = u_xlati40;
          let x_1115 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1110 / 4i)][(x_1112 % 4i)];
          let x_1117 : vec3<f32> = vs_TEXCOORD1;
          let x_1120 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1117.x, x_1117.x)) + x_1120);
          let x_1122 : i32 = u_xlati40;
          let x_1125 : i32 = u_xlati40;
          let x_1129 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1122 + 2i) / 4i)][((x_1125 + 2i) % 4i)];
          let x_1131 : vec3<f32> = vs_TEXCOORD1;
          let x_1134 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1131.z, x_1131.z)) + x_1134);
          let x_1136 : vec2<f32> = u_xlat30;
          let x_1137 : i32 = u_xlati40;
          let x_1140 : i32 = u_xlati40;
          let x_1144 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1137 + 3i) / 4i)][((x_1140 + 3i) % 4i)];
          u_xlat30 = (x_1136 + vec2<f32>(x_1144.x, x_1144.y));
          let x_1147 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1147 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1150 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1150);
          let x_1152 : i32 = u_xlati36;
          let x_1154 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1152];
          let x_1156 : vec2<f32> = u_xlat30;
          let x_1158 : i32 = u_xlati36;
          let x_1160 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1158];
          let x_1162 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.y) * x_1156) + vec2<f32>(x_1160.z, x_1160.w));
          let x_1163 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        } else {
          let x_1167 : vec3<f32> = vs_TEXCOORD1;
          let x_1169 : i32 = u_xlati40;
          let x_1172 : i32 = u_xlati40;
          let x_1176 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1169 + 1i) / 4i)][((x_1172 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1167.y, x_1167.y, x_1167.y, x_1167.y) * x_1176);
          let x_1178 : i32 = u_xlati40;
          let x_1180 : i32 = u_xlati40;
          let x_1183 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[(x_1178 / 4i)][(x_1180 % 4i)];
          let x_1184 : vec3<f32> = vs_TEXCOORD1;
          let x_1187 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1183 * vec4<f32>(x_1184.x, x_1184.x, x_1184.x, x_1184.x)) + x_1187);
          let x_1189 : i32 = u_xlati40;
          let x_1192 : i32 = u_xlati40;
          let x_1196 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1189 + 2i) / 4i)][((x_1192 + 2i) % 4i)];
          let x_1197 : vec3<f32> = vs_TEXCOORD1;
          let x_1200 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1196 * vec4<f32>(x_1197.z, x_1197.z, x_1197.z, x_1197.z)) + x_1200);
          let x_1202 : vec4<f32> = u_xlat9;
          let x_1203 : i32 = u_xlati40;
          let x_1206 : i32 = u_xlati40;
          let x_1210 : vec4<f32> = x_440.x_AdditionalLightsWorldToLights[((x_1203 + 3i) / 4i)][((x_1206 + 3i) % 4i)];
          u_xlat9 = (x_1202 + x_1210);
          let x_1212 : vec4<f32> = u_xlat9;
          let x_1214 : vec4<f32> = u_xlat9;
          let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) / vec3<f32>(x_1214.w, x_1214.w, x_1214.w));
          let x_1217 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
          let x_1219 : vec4<f32> = u_xlat9;
          let x_1221 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1219.x, x_1219.y, x_1219.z), vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
          let x_1224 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1224);
          let x_1226 : f32 = u_xlat38;
          let x_1228 : vec4<f32> = u_xlat9;
          let x_1230 : vec3<f32> = (vec3<f32>(x_1226, x_1226, x_1226) * vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
          let x_1231 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
          let x_1233 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1233.x, x_1233.y, x_1233.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1238 : f32 = u_xlat38;
          u_xlat38 = max(x_1238, 0.00000099999999747524f);
          let x_1241 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1241);
          let x_1244 : f32 = u_xlat38;
          let x_1246 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1244, x_1244, x_1244) * vec3<f32>(x_1246.z, x_1246.x, x_1246.y));
          let x_1250 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1250);
          let x_1254 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1254, 0.0f, 1.0f);
          let x_1258 : vec3<f32> = u_xlat10;
          let x_1260 : vec4<bool> = (vec4<f32>(x_1258.y, x_1258.z, x_1258.y, x_1258.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1260.x, x_1260.y);
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
          let x_1290 : f32 = u_xlat38;
          let x_1293 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1290, x_1290)) + x_1293);
          let x_1295 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1295 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1298 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1298, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1302 : i32 = u_xlati36;
          let x_1304 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1302];
          let x_1306 : vec2<f32> = u_xlat30;
          let x_1308 : i32 = u_xlati36;
          let x_1310 : vec4<f32> = x_440.x_AdditionalLightsCookieAtlasUVRects[x_1308];
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
      u_xlat38 = x_1333;
      let x_1335 : bool = u_xlatb5.x;
      if (x_1335) {
        let x_1339 : vec4<f32> = u_xlat8;
        x_1336 = vec3<f32>(x_1339.x, x_1339.y, x_1339.z);
      } else {
        let x_1342 : f32 = u_xlat38;
        x_1336 = vec3<f32>(x_1342, x_1342, x_1342);
      }
      let x_1344 : vec3<f32> = x_1336;
      let x_1345 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1351 : vec4<f32> = u_xlat8;
    let x_1353 : i32 = u_xlati36;
    let x_1355 : vec4<f32> = x_696.x_AdditionalLightsColor[x_1353];
    let x_1357 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : f32 = u_xlat37;
    let x_1361 : f32 = u_xlat27;
    u_xlat36 = (x_1360 * x_1361);
    let x_1363 : f32 = u_xlat36;
    let x_1365 : vec4<f32> = u_xlat8;
    let x_1367 : vec3<f32> = (vec3<f32>(x_1363, x_1363, x_1363) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1368 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
    let x_1370 : vec3<f32> = u_xlat2;
    let x_1371 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1370, x_1371);
    let x_1373 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1373, 0.0f, 1.0f);
    let x_1375 : f32 = u_xlat36;
    let x_1377 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : vec4<f32> = u_xlat1;
    let x_1382 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1380.y, x_1380.z, x_1380.w) * x_1382);
    let x_1384 : vec3<f32> = u_xlat7;
    let x_1385 : vec4<f32> = u_xlat0;
    let x_1388 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1384 * vec3<f32>(x_1385.x, x_1385.x, x_1385.x)) + x_1388);

    continuing {
      let x_1390 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1390 + bitcast<u32>(1i));
    }
  }
  let x_1392 : vec4<f32> = u_xlat3;
  let x_1394 : vec4<f32> = u_xlat1;
  let x_1397 : vec4<f32> = u_xlat4;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(x_1394.y, x_1394.z, x_1394.w)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec3<f32> = u_xlat6;
  let x_1403 : vec4<f32> = u_xlat1;
  let x_1405 : vec3<f32> = (x_1402 + vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1409 : f32 = u_xlat11.x;
  let x_1411 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1409 * -(x_1411));
  let x_1416 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1416);
  let x_1419 : vec4<f32> = u_xlat1;
  let x_1422 : vec4<f32> = x_45.unity_FogColor;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1419.x, x_1419.y, x_1419.z) + -(vec3<f32>(x_1422.x, x_1422.y, x_1422.z)));
  let x_1426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1430 : vec3<f32> = u_xlat11;
  let x_1432 : vec4<f32> = u_xlat1;
  let x_1436 : vec4<f32> = x_45.unity_FogColor;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1430.x, x_1430.x, x_1430.x) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1442 : f32 = x_58.x_Surface;
  u_xlatb11 = (x_1442 == 1.0f);
  let x_1444 : bool = u_xlatb11;
  let x_1445 : bool = u_xlatb22;
  u_xlatb11 = (x_1444 | x_1445);
  let x_1447 : bool = u_xlatb11;
  if (x_1447) {
    let x_1452 : f32 = u_xlat0.x;
    x_1448 = x_1452;
  } else {
    x_1448 = 1.0f;
  }
  let x_1454 : f32 = x_1448;
  SV_Target0.w = x_1454;
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


