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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_239 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(4) var<uniform> x_497 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_739 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_245 : f32;
  var txVec0 : vec3<f32>;
  var x_523 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_875 : f32;
  var x_887 : f32;
  var txVec1 : vec3<f32>;
  var x_1150 : f32;
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
  u_xlat10.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat30;
  let x_108 : f32 = u_xlat20;
  u_xlat20 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat20;
  u_xlat20 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat10.x;
  let x_116 : f32 = u_xlat20;
  u_xlat10.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat10.x;
  u_xlat10.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb20;
  if (x_132) {
    let x_137 : f32 = u_xlat10.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat10.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat10.x;
  u_xlatb10 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb10;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_45.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_166, x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : f32 = u_xlat2.x;
  let x_177 : f32 = u_xlat2.z;
  u_xlat2.x = (x_174 * x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_187 : vec2<f32> = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_188 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_187.x, x_188.y, x_187.y);
  let x_190 : vec3<f32> = u_xlat10;
  let x_192 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_190.x, x_190.z), vec2<f32>(x_192.x, x_192.z));
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_197, 1.0f);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_201) + 1.0f);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_206);
  let x_210 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_210, 0.0000000000000001f);
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_218 : f32 = x_45.x_DitheringTextureInvSize;
  let x_220 : vec2<f32> = (vec2<f32>(x_214.x, x_214.y) * vec2<f32>(x_218, x_218));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_231 : f32 = x_45.x_GlobalMipBias.x;
  let x_232 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_228.x, x_228.y), x_231);
  u_xlat2.x = x_232.w;
  let x_242 : f32 = x_239.unity_LODFade.x;
  u_xlatb12 = (x_242 >= 0.0f);
  let x_244 : bool = u_xlatb12;
  if (x_244) {
    let x_249 : f32 = u_xlat2.x;
    x_245 = abs(x_249);
  } else {
    let x_253 : f32 = u_xlat2.x;
    x_245 = -(abs(x_253));
  }
  let x_256 : f32 = x_245;
  u_xlat2.x = x_256;
  let x_259 : f32 = u_xlat2.x;
  let x_262 : f32 = x_239.unity_LODFade.x;
  u_xlat2.x = (-(x_259) + x_262);
  let x_267 : f32 = u_xlat2.x;
  u_xlatb2 = (x_267 < 0.0f);
  let x_269 : bool = u_xlatb2;
  if (((select(0i, 1i, x_269) * -1i) != 0i)) {
    discard;
  }
  let x_276 : vec3<f32> = u_xlat10;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  let x_281 : vec3<f32> = (vec3<f32>(x_276.z, x_276.z, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec3<f32> = u_xlat10;
  let x_287 : vec4<f32> = vs_TEXCOORD3;
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_313);
  let x_316 : vec3<f32> = u_xlat10;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.x, x_316.x) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_325 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_325;
  let x_328 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_328;
  let x_332 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_332;
  let x_334 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_339, 0.00006103515625f);
  let x_344 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_344);
  let x_350 : f32 = vs_TEXCOORD1.y;
  let x_353 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat30 = (x_350 * x_353);
  let x_356 : f32 = x_45.unity_MatrixV[0i].z;
  let x_358 : f32 = vs_TEXCOORD1.x;
  let x_360 : f32 = u_xlat30;
  u_xlat30 = ((x_356 * x_358) + x_360);
  let x_363 : f32 = x_45.unity_MatrixV[2i].z;
  let x_365 : f32 = vs_TEXCOORD1.z;
  let x_367 : f32 = u_xlat30;
  u_xlat30 = ((x_363 * x_365) + x_367);
  let x_369 : f32 = u_xlat30;
  let x_372 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat30 = (x_369 + x_372);
  let x_374 : f32 = u_xlat30;
  let x_378 : f32 = x_45.x_ProjectionParams.y;
  u_xlat30 = (-(x_374) + -(x_378));
  let x_381 : f32 = u_xlat30;
  u_xlat30 = max(x_381, 0.0f);
  let x_383 : f32 = u_xlat30;
  let x_386 : f32 = x_45.unity_FogParams.x;
  u_xlat30 = (x_383 * x_386);
  u_xlat2.w = 1.0f;
  let x_392 : vec4<f32> = x_239.unity_SHAr;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_392, x_393);
  let x_398 : vec4<f32> = x_239.unity_SHAg;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_398, x_399);
  let x_404 : vec4<f32> = x_239.unity_SHAb;
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_404, x_405);
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_409.y, x_409.z, x_409.z, x_409.x) * vec4<f32>(x_411.x, x_411.y, x_411.z, x_411.z));
  let x_417 : vec4<f32> = x_239.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_239.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_239.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_434 : f32 = u_xlat2.y;
  let x_436 : f32 = u_xlat2.y;
  u_xlat1.x = (x_434 * x_436);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_445 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_440 * x_442) + -(x_445));
  let x_451 : vec4<f32> = x_239.unity_SHC;
  let x_453 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = u_xlat6;
  let x_457 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_453.x, x_453.x, x_453.x)) + x_456);
  let x_458 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec3<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_460 + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_464, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_470 : vec4<f32> = vs_TEXCOORD6;
  let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
  let x_473 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
  let x_485 : vec3<f32> = txVec0;
  let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
  u_xlat1.x = x_487;
  let x_500 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_500) + 1.0f);
  let x_504 : f32 = u_xlat1.x;
  let x_506 : f32 = x_497.x_MainLightShadowParams.x;
  let x_508 : f32 = u_xlat32;
  u_xlat1.x = ((x_504 * x_506) + x_508);
  let x_513 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (0.0f >= x_513);
  let x_517 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_517 >= 1.0f);
  let x_519 : bool = u_xlatb32;
  let x_520 : bool = u_xlatb33;
  u_xlatb32 = (x_519 | x_520);
  let x_522 : bool = u_xlatb32;
  if (x_522) {
    x_523 = 1.0f;
  } else {
    let x_528 : f32 = u_xlat1.x;
    x_523 = x_528;
  }
  let x_529 : f32 = x_523;
  u_xlat1.x = x_529;
  let x_531 : vec3<f32> = vs_TEXCOORD1;
  let x_535 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_537 : vec3<f32> = (x_531 + -(x_535));
  let x_538 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat5;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_546 : f32 = u_xlat32;
  let x_548 : f32 = x_497.x_MainLightShadowParams.z;
  let x_551 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat33 = ((x_546 * x_548) + x_551);
  let x_553 : f32 = u_xlat33;
  u_xlat33 = clamp(x_553, 0.0f, 1.0f);
  let x_557 : f32 = u_xlat1.x;
  u_xlat34 = (-(x_557) + 1.0f);
  let x_560 : f32 = u_xlat33;
  let x_561 : f32 = u_xlat34;
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_560 * x_561) + x_564);
  let x_568 : f32 = u_xlat1.x;
  let x_570 : f32 = x_239.unity_LightData.z;
  u_xlat1.x = (x_568 * x_570);
  let x_573 : vec4<f32> = u_xlat1;
  let x_576 : vec4<f32> = x_45.x_MainLightColor;
  let x_578 : vec3<f32> = (vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_589, 0.0f, 1.0f);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_598 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_598 * 10.0f) + 1.0f);
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_604);
  let x_608 : vec3<f32> = u_xlat3;
  let x_609 : vec3<f32> = u_xlat10;
  let x_613 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = ((x_608 * vec3<f32>(x_609.x, x_609.x, x_609.x)) + vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec3<f32> = u_xlat7;
  let x_617 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_616, x_617);
  let x_619 : f32 = u_xlat33;
  u_xlat33 = max(x_619, 1.17549435e-38f);
  let x_622 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat33;
  let x_626 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_624, x_624, x_624) * x_626);
  let x_628 : vec4<f32> = u_xlat2;
  let x_630 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), x_630);
  let x_632 : f32 = u_xlat33;
  u_xlat33 = clamp(x_632, 0.0f, 1.0f);
  let x_634 : f32 = u_xlat33;
  u_xlat33 = log2(x_634);
  let x_637 : f32 = u_xlat1.x;
  let x_638 : f32 = u_xlat33;
  u_xlat33 = (x_637 * x_638);
  let x_640 : f32 = u_xlat33;
  u_xlat33 = exp2(x_640);
  let x_642 : f32 = u_xlat33;
  let x_645 : vec4<f32> = x_58.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat5;
  let x_650 : vec3<f32> = u_xlat7;
  let x_651 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * x_650);
  let x_652 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = u_xlat6;
  let x_655 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = u_xlat5;
  let x_660 : vec3<f32> = ((x_654 * vec3<f32>(x_655.y, x_655.z, x_655.w)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_664 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_666 : f32 = x_239.unity_LightData.y;
  u_xlat33 = min(x_664, x_666);
  let x_670 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_670));
  let x_673 : f32 = u_xlat32;
  let x_676 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_679 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_673 * x_676) + x_679);
  let x_681 : f32 = u_xlat32;
  u_xlat32 = clamp(x_681, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_693 : u32 = u_xlatu_loop_1;
    let x_694 : u32 = u_xlatu33;
    if ((x_693 < x_694)) {
    } else {
      break;
    }
    let x_697 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_697 >> 2u);
    let x_701 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_701 & 3u));
    let x_705 : u32 = u_xlatu35;
    let x_708 : vec4<f32> = x_239.unity_LightIndices[bitcast<i32>(x_705)];
    let x_718 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_723 : vec4<u32> = indexable[x_718];
    u_xlat35 = dot(x_708, bitcast<vec4<f32>>(x_723));
    let x_727 : f32 = u_xlat35;
    u_xlati35 = i32(x_727);
    let x_729 : vec3<f32> = vs_TEXCOORD1;
    let x_740 : i32 = u_xlati35;
    let x_742 : vec4<f32> = x_739.x_AdditionalLightsPosition[x_740];
    let x_745 : i32 = u_xlati35;
    let x_747 : vec4<f32> = x_739.x_AdditionalLightsPosition[x_745];
    u_xlat7 = ((-(x_729) * vec3<f32>(x_742.w, x_742.w, x_742.w)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
    let x_751 : vec3<f32> = u_xlat7;
    let x_752 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_751, x_752);
    let x_754 : f32 = u_xlat36;
    u_xlat36 = max(x_754, 0.00006103515625f);
    let x_757 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_757);
    let x_759 : f32 = u_xlat37;
    let x_761 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_759, x_759, x_759) * x_761);
    let x_763 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_763);
    let x_765 : f32 = u_xlat36;
    let x_766 : i32 = u_xlati35;
    let x_768 : f32 = x_739.x_AdditionalLightsAttenuation[x_766].x;
    u_xlat36 = (x_765 * x_768);
    let x_770 : f32 = u_xlat36;
    let x_772 : f32 = u_xlat36;
    u_xlat36 = ((-(x_770) * x_772) + 1.0f);
    let x_775 : f32 = u_xlat36;
    u_xlat36 = max(x_775, 0.0f);
    let x_777 : f32 = u_xlat36;
    let x_778 : f32 = u_xlat36;
    u_xlat36 = (x_777 * x_778);
    let x_780 : f32 = u_xlat36;
    let x_781 : f32 = u_xlat37;
    u_xlat36 = (x_780 * x_781);
    let x_783 : i32 = u_xlati35;
    let x_785 : vec4<f32> = x_739.x_AdditionalLightsSpotDir[x_783];
    let x_787 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_785.x, x_785.y, x_785.z), x_787);
    let x_789 : f32 = u_xlat37;
    let x_790 : i32 = u_xlati35;
    let x_792 : f32 = x_739.x_AdditionalLightsAttenuation[x_790].z;
    let x_794 : i32 = u_xlati35;
    let x_796 : f32 = x_739.x_AdditionalLightsAttenuation[x_794].w;
    u_xlat37 = ((x_789 * x_792) + x_796);
    let x_798 : f32 = u_xlat37;
    u_xlat37 = clamp(x_798, 0.0f, 1.0f);
    let x_800 : f32 = u_xlat37;
    let x_801 : f32 = u_xlat37;
    u_xlat37 = (x_800 * x_801);
    let x_803 : f32 = u_xlat36;
    let x_804 : f32 = u_xlat37;
    u_xlat36 = (x_803 * x_804);
    let x_808 : i32 = u_xlati35;
    let x_810 : f32 = x_497.x_AdditionalShadowParams[x_808].w;
    u_xlati37 = i32(x_810);
    let x_815 : i32 = u_xlati37;
    u_xlatb8.x = (x_815 >= 0i);
    let x_819 : bool = u_xlatb8.x;
    if (x_819) {
      let x_823 : i32 = u_xlati35;
      let x_825 : f32 = x_497.x_AdditionalShadowParams[x_823].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_825, x_825, x_825, x_825))));
      let x_832 : bool = u_xlatb8.x;
      if (x_832) {
        let x_835 : vec3<f32> = u_xlat7;
        let x_838 : vec3<f32> = u_xlat7;
        let x_841 : vec4<bool> = (abs(vec4<f32>(x_835.z, x_835.z, x_835.y, x_835.z)) >= abs(vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.x)));
        u_xlatb8 = vec3<bool>(x_841.x, x_841.y, x_841.z);
        let x_844 : bool = u_xlatb8.y;
        let x_846 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_844 & x_846);
        let x_850 : vec3<f32> = u_xlat7;
        let x_853 : vec4<bool> = (-(vec4<f32>(x_850.z, x_850.y, x_850.x, x_850.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_853.x, x_853.y, x_853.z);
        let x_857 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_857);
        let x_863 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_863);
        let x_869 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_869);
        let x_874 : bool = u_xlatb8.z;
        if (x_874) {
          let x_879 : f32 = u_xlat18.z;
          x_875 = x_879;
        } else {
          let x_882 : f32 = u_xlat9.x;
          x_875 = x_882;
        }
        let x_883 : f32 = x_875;
        u_xlat28 = x_883;
        let x_886 : bool = u_xlatb8.x;
        if (x_886) {
          let x_891 : f32 = u_xlat18.x;
          x_887 = x_891;
        } else {
          let x_893 : f32 = u_xlat28;
          x_887 = x_893;
        }
        let x_894 : f32 = x_887;
        u_xlat8.x = x_894;
        let x_896 : i32 = u_xlati35;
        let x_898 : f32 = x_497.x_AdditionalShadowParams[x_896].w;
        u_xlat18.x = trunc(x_898);
        let x_902 : f32 = u_xlat8.x;
        let x_904 : f32 = u_xlat18.x;
        u_xlat8.x = (x_902 + x_904);
        let x_908 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_908);
      }
      let x_910 : i32 = u_xlati37;
      u_xlati37 = (x_910 << bitcast<u32>(2i));
      let x_912 : vec3<f32> = vs_TEXCOORD1;
      let x_915 : i32 = u_xlati37;
      let x_918 : i32 = u_xlati37;
      let x_922 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_915 + 1i) / 4i)][((x_918 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_912.y, x_912.y, x_912.y, x_912.y) * x_922);
      let x_924 : i32 = u_xlati37;
      let x_926 : i32 = u_xlati37;
      let x_929 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_924 / 4i)][(x_926 % 4i)];
      let x_930 : vec3<f32> = vs_TEXCOORD1;
      let x_933 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_929 * vec4<f32>(x_930.x, x_930.x, x_930.x, x_930.x)) + x_933);
      let x_935 : i32 = u_xlati37;
      let x_938 : i32 = u_xlati37;
      let x_942 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_935 + 2i) / 4i)][((x_938 + 2i) % 4i)];
      let x_943 : vec3<f32> = vs_TEXCOORD1;
      let x_946 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_942 * vec4<f32>(x_943.z, x_943.z, x_943.z, x_943.z)) + x_946);
      let x_948 : vec4<f32> = u_xlat8;
      let x_949 : i32 = u_xlati37;
      let x_952 : i32 = u_xlati37;
      let x_956 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_949 + 3i) / 4i)][((x_952 + 3i) % 4i)];
      u_xlat8 = (x_948 + x_956);
      let x_958 : vec4<f32> = u_xlat8;
      let x_960 : vec4<f32> = u_xlat8;
      let x_962 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) / vec3<f32>(x_960.w, x_960.w, x_960.w));
      let x_963 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
      let x_966 : vec4<f32> = u_xlat8;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_969 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_967.x, x_967.y, x_969);
      let x_977 : vec3<f32> = txVec1;
      let x_979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
      u_xlat37 = x_979;
      let x_980 : i32 = u_xlati35;
      let x_982 : f32 = x_497.x_AdditionalShadowParams[x_980].x;
      u_xlat8.x = (1.0f + -(x_982));
      let x_986 : f32 = u_xlat37;
      let x_987 : i32 = u_xlati35;
      let x_989 : f32 = x_497.x_AdditionalShadowParams[x_987].x;
      let x_992 : f32 = u_xlat8.x;
      u_xlat37 = ((x_986 * x_989) + x_992);
      let x_995 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_995);
      let x_1000 : f32 = u_xlat8.z;
      u_xlatb18 = (x_1000 >= 1.0f);
      let x_1002 : bool = u_xlatb18;
      let x_1004 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1002 | x_1004);
      let x_1008 : bool = u_xlatb8.x;
      let x_1009 : f32 = u_xlat37;
      u_xlat37 = select(x_1009, 1.0f, x_1008);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1012 : f32 = u_xlat37;
    u_xlat8.x = (-(x_1012) + 1.0f);
    let x_1016 : f32 = u_xlat32;
    let x_1018 : f32 = u_xlat8.x;
    let x_1020 : f32 = u_xlat37;
    u_xlat37 = ((x_1016 * x_1018) + x_1020);
    let x_1022 : f32 = u_xlat36;
    let x_1023 : f32 = u_xlat37;
    u_xlat36 = (x_1022 * x_1023);
    let x_1025 : f32 = u_xlat36;
    let x_1027 : i32 = u_xlati35;
    let x_1029 : vec4<f32> = x_739.x_AdditionalLightsColor[x_1027];
    let x_1031 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
    let x_1034 : vec4<f32> = u_xlat2;
    let x_1036 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), x_1036);
    let x_1038 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1038, 0.0f, 1.0f);
    let x_1040 : f32 = u_xlat35;
    let x_1042 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1040, x_1040, x_1040) * vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec3<f32> = u_xlat3;
    let x_1046 : vec3<f32> = u_xlat10;
    let x_1049 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1045 * vec3<f32>(x_1046.x, x_1046.x, x_1046.x)) + x_1049);
    let x_1051 : vec3<f32> = u_xlat7;
    let x_1052 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1051, x_1052);
    let x_1054 : f32 = u_xlat35;
    u_xlat35 = max(x_1054, 1.17549435e-38f);
    let x_1056 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1056);
    let x_1058 : f32 = u_xlat35;
    let x_1060 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1058, x_1058, x_1058) * x_1060);
    let x_1062 : vec4<f32> = u_xlat2;
    let x_1064 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), x_1064);
    let x_1066 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1066, 0.0f, 1.0f);
    let x_1068 : f32 = u_xlat35;
    u_xlat35 = log2(x_1068);
    let x_1071 : f32 = u_xlat1.x;
    let x_1072 : f32 = u_xlat35;
    u_xlat35 = (x_1071 * x_1072);
    let x_1074 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1074);
    let x_1076 : f32 = u_xlat35;
    let x_1079 : vec4<f32> = x_58.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1076, x_1076, x_1076) * vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
    let x_1082 : vec3<f32> = u_xlat7;
    let x_1083 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1082 * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
    let x_1086 : vec3<f32> = u_xlat9;
    let x_1087 : vec4<f32> = u_xlat1;
    let x_1090 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1086 * vec3<f32>(x_1087.y, x_1087.z, x_1087.w)) + x_1090);
    let x_1092 : vec3<f32> = u_xlat6;
    let x_1093 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1092 + x_1093);

    continuing {
      let x_1095 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1095 + bitcast<u32>(1i));
    }
  }
  let x_1097 : vec3<f32> = u_xlat4;
  let x_1098 : vec4<f32> = u_xlat1;
  let x_1101 : vec4<f32> = u_xlat5;
  let x_1103 : vec3<f32> = ((x_1097 * vec3<f32>(x_1098.y, x_1098.z, x_1098.w)) + vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec3<f32> = u_xlat6;
  let x_1107 : vec4<f32> = u_xlat1;
  let x_1109 : vec3<f32> = (x_1106 + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : f32 = u_xlat30;
  let x_1113 : f32 = u_xlat30;
  u_xlat10.x = (x_1112 * -(x_1113));
  let x_1118 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1118);
  let x_1121 : vec4<f32> = u_xlat1;
  let x_1124 : vec4<f32> = x_45.unity_FogColor;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) + -(vec3<f32>(x_1124.x, x_1124.y, x_1124.z)));
  let x_1128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1132 : vec3<f32> = u_xlat10;
  let x_1134 : vec4<f32> = u_xlat1;
  let x_1138 : vec4<f32> = x_45.unity_FogColor;
  let x_1140 : vec3<f32> = ((vec3<f32>(x_1132.x, x_1132.x, x_1132.x) * vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1144 : f32 = x_58.x_Surface;
  u_xlatb10 = (x_1144 == 1.0f);
  let x_1146 : bool = u_xlatb10;
  let x_1147 : bool = u_xlatb20;
  u_xlatb10 = (x_1146 | x_1147);
  let x_1149 : bool = u_xlatb10;
  if (x_1149) {
    let x_1154 : f32 = u_xlat0.x;
    x_1150 = x_1154;
  } else {
    x_1150 = 1.0f;
  }
  let x_1156 : f32 = x_1150;
  SV_Target0.w = x_1156;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


