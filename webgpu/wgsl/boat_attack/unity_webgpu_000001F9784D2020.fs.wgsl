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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlatb12 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb14 : bool;

@group(1) @binding(2) var<uniform> x_237 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_413 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb38 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(1) @binding(5) var<uniform> x_483 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_785 : AdditionalLights;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb43 : bool;

var<private> u_xlati42 : i32;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb40 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_243 : f32;
  var txVec0 : vec3<f32>;
  var x_569 : f32;
  var x_580 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_917 : f32;
  var x_927 : f32;
  var txVec1 : vec3<f32>;
  var x_1351 : f32;
  var x_1364 : f32;
  var x_1412 : f32;
  var x_1423 : vec3<f32>;
  var x_1545 : f32;
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
  u_xlat12.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat36;
  let x_107 : f32 = u_xlat24;
  u_xlat24 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat24;
  u_xlat24 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat12.x;
  let x_115 : f32 = u_xlat24;
  u_xlat12.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat12.x;
  u_xlat12.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb24;
  if (x_131) {
    let x_136 : f32 = u_xlat12.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat12.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat12.x;
  u_xlatb12 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb12;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 0.0000000000000001f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_240 : f32 = x_237.unity_LODFade.x;
  u_xlatb14 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb14;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_237.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat12;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat12;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = vs_TEXCOORD2;
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_291.x, x_291.y, x_291.z)) + x_294);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_301);
  let x_304 : vec3<f32> = u_xlat12;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_304.x, x_304.x, x_304.x) * x_306);
  let x_310 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_310;
  let x_313 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_313;
  let x_317 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_317;
  let x_319 : vec3<f32> = u_xlat3;
  let x_320 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_319, x_320);
  let x_324 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_324, 0.00006103515625f);
  let x_329 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_329);
  let x_339 : vec2<f32> = vs_TEXCOORD7;
  let x_341 : f32 = x_44.x_GlobalMipBias.x;
  let x_342 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_339, x_341);
  u_xlat4 = x_342;
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_44.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_348, x_350);
  let x_352 : vec3<f32> = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_362, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat36;
  u_xlat36 = (x_366 + 0.5f);
  let x_368 : f32 = u_xlat36;
  let x_370 : vec4<f32> = u_xlat5;
  let x_372 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat4.w;
  u_xlat36 = max(x_376, 0.00009999999747378752f);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : f32 = u_xlat36;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) / vec3<f32>(x_380, x_380, x_380));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_388 : vec4<f32> = vs_TEXCOORD6;
  let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
  let x_391 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_389.x, x_389.y, x_391);
  let x_403 : vec3<f32> = txVec0;
  let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_403.xy, x_403.z);
  u_xlat36 = x_405;
  let x_416 : f32 = x_413.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat36;
  let x_422 : f32 = x_413.x_MainLightShadowParams.x;
  let x_425 : f32 = u_xlat1.x;
  u_xlat36 = ((x_420 * x_422) + x_425);
  let x_429 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_429);
  let x_433 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (x_433 >= 1.0f);
  let x_435 : bool = u_xlatb1;
  let x_436 : bool = u_xlatb38;
  u_xlatb1 = (x_435 | x_436);
  let x_438 : bool = u_xlatb1;
  let x_439 : f32 = u_xlat36;
  u_xlat36 = select(x_439, 1.0f, x_438);
  let x_443 : vec3<f32> = vs_TEXCOORD1;
  let x_447 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_449 : vec3<f32> = (x_443 + -(x_447));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat5;
  let x_454 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_460 : f32 = u_xlat1.x;
  let x_462 : f32 = x_413.x_MainLightShadowParams.z;
  let x_465 : f32 = x_413.x_MainLightShadowParams.w;
  u_xlat38 = ((x_460 * x_462) + x_465);
  let x_467 : f32 = u_xlat38;
  u_xlat38 = clamp(x_467, 0.0f, 1.0f);
  let x_470 : f32 = u_xlat36;
  u_xlat39 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat38;
  let x_474 : f32 = u_xlat39;
  let x_476 : f32 = u_xlat36;
  u_xlat36 = ((x_473 * x_474) + x_476);
  let x_485 : f32 = x_483.x_MainLightCookieTextureFormat;
  u_xlatb38 = !((x_485 == -1.0f));
  let x_487 : bool = u_xlatb38;
  if (x_487) {
    let x_490 : vec3<f32> = vs_TEXCOORD1;
    let x_493 : vec4<f32> = x_483.x_MainLightWorldToLight[1i];
    let x_495 : vec2<f32> = (vec2<f32>(x_490.y, x_490.y) * vec2<f32>(x_493.x, x_493.y));
    let x_496 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
    let x_499 : vec4<f32> = x_483.x_MainLightWorldToLight[0i];
    let x_501 : vec3<f32> = vs_TEXCOORD1;
    let x_504 : vec4<f32> = u_xlat5;
    let x_506 : vec2<f32> = ((vec2<f32>(x_499.x, x_499.y) * vec2<f32>(x_501.x, x_501.x)) + vec2<f32>(x_504.x, x_504.y));
    let x_507 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
    let x_510 : vec4<f32> = x_483.x_MainLightWorldToLight[2i];
    let x_512 : vec3<f32> = vs_TEXCOORD1;
    let x_515 : vec4<f32> = u_xlat5;
    let x_517 : vec2<f32> = ((vec2<f32>(x_510.x, x_510.y) * vec2<f32>(x_512.z, x_512.z)) + vec2<f32>(x_515.x, x_515.y));
    let x_518 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat5;
    let x_524 : vec4<f32> = x_483.x_MainLightWorldToLight[3i];
    let x_526 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) + vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat5;
    let x_533 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_534 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
    let x_541 : vec4<f32> = u_xlat5;
    let x_544 : f32 = x_44.x_GlobalMipBias.x;
    let x_545 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_541.x, x_541.y), x_544);
    u_xlat5 = x_545;
    let x_550 : f32 = x_483.x_MainLightCookieTextureFormat;
    let x_552 : f32 = x_483.x_MainLightCookieTextureFormat;
    let x_554 : f32 = x_483.x_MainLightCookieTextureFormat;
    let x_556 : f32 = x_483.x_MainLightCookieTextureFormat;
    let x_557 : vec4<f32> = vec4<f32>(x_550, x_552, x_554, x_556);
    let x_565 : vec4<bool> = (vec4<f32>(x_557.x, x_557.y, x_557.z, x_557.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_565.x, x_565.y);
    let x_568 : bool = u_xlatb6.y;
    if (x_568) {
      let x_573 : f32 = u_xlat5.w;
      x_569 = x_573;
    } else {
      let x_576 : f32 = u_xlat5.x;
      x_569 = x_576;
    }
    let x_577 : f32 = x_569;
    u_xlat38 = x_577;
    let x_579 : bool = u_xlatb6.x;
    if (x_579) {
      let x_583 : vec4<f32> = u_xlat5;
      x_580 = vec3<f32>(x_583.x, x_583.y, x_583.z);
    } else {
      let x_586 : f32 = u_xlat38;
      x_580 = vec3<f32>(x_586, x_586, x_586);
    }
    let x_588 : vec3<f32> = x_580;
    let x_589 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_595 : vec4<f32> = u_xlat5;
  let x_598 : vec4<f32> = x_44.x_MainLightColor;
  let x_600 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : f32 = u_xlat36;
  let x_605 : f32 = x_237.unity_LightData.z;
  u_xlat36 = (x_603 * x_605);
  let x_607 : f32 = u_xlat36;
  let x_609 : vec4<f32> = u_xlat5;
  let x_611 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = u_xlat2;
  let x_616 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(x_614, vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : f32 = u_xlat36;
  u_xlat36 = clamp(x_619, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat36;
  let x_624 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : f32 = x_57.x_SpecColor.w;
  u_xlat36 = ((x_628 * 10.0f) + 1.0f);
  let x_632 : f32 = u_xlat36;
  u_xlat36 = exp2(x_632);
  let x_635 : vec3<f32> = u_xlat3;
  let x_636 : vec3<f32> = u_xlat12;
  let x_640 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_635 * vec3<f32>(x_636.x, x_636.x, x_636.x)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec3<f32> = u_xlat7;
  let x_644 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_643, x_644);
  let x_646 : f32 = u_xlat38;
  u_xlat38 = max(x_646, 1.17549435e-38f);
  let x_649 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat38;
  let x_653 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_651, x_651, x_651) * x_653);
  let x_655 : vec3<f32> = u_xlat2;
  let x_656 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_655, x_656);
  let x_658 : f32 = u_xlat38;
  u_xlat38 = clamp(x_658, 0.0f, 1.0f);
  let x_660 : f32 = u_xlat38;
  u_xlat38 = log2(x_660);
  let x_662 : f32 = u_xlat36;
  let x_663 : f32 = u_xlat38;
  u_xlat38 = (x_662 * x_663);
  let x_665 : f32 = u_xlat38;
  u_xlat38 = exp2(x_665);
  let x_667 : f32 = u_xlat38;
  let x_670 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat5;
  let x_675 : vec3<f32> = u_xlat7;
  let x_676 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * x_675);
  let x_677 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec3<f32> = u_xlat6;
  let x_680 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat5;
  let x_685 : vec3<f32> = ((x_679 * vec3<f32>(x_680.y, x_680.z, x_680.w)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_691 : f32 = x_237.unity_LightData.y;
  u_xlat38 = min(x_689, x_691);
  let x_695 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_695));
  let x_699 : f32 = u_xlat1.x;
  let x_702 : f32 = x_413.x_AdditionalShadowFadeParams.x;
  let x_705 : f32 = x_413.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_699 * x_702) + x_705);
  let x_709 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_709, 0.0f, 1.0f);
  let x_713 : f32 = x_483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_715 : f32 = x_483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_717 : f32 = x_483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_719 : f32 = x_483.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_720 : vec4<f32> = vec4<f32>(x_713, x_715, x_717, x_719);
  let x_726 : vec4<bool> = (vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_726.x, x_726.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_738 : u32 = u_xlatu_loop_1;
    let x_739 : u32 = u_xlatu38;
    if ((x_738 < x_739)) {
    } else {
      break;
    }
    let x_742 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_742 >> 2u);
    let x_746 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_746 & 3u));
    let x_750 : u32 = u_xlatu40;
    let x_753 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_750)];
    let x_763 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_768 : vec4<u32> = indexable[x_763];
    u_xlat40 = dot(x_753, bitcast<vec4<f32>>(x_768));
    let x_772 : f32 = u_xlat40;
    u_xlati40 = i32(x_772);
    let x_775 : vec3<f32> = vs_TEXCOORD1;
    let x_786 : i32 = u_xlati40;
    let x_788 : vec4<f32> = x_785.x_AdditionalLightsPosition[x_786];
    let x_791 : i32 = u_xlati40;
    let x_793 : vec4<f32> = x_785.x_AdditionalLightsPosition[x_791];
    u_xlat8 = ((-(x_775) * vec3<f32>(x_788.w, x_788.w, x_788.w)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
    let x_797 : vec3<f32> = u_xlat8;
    let x_798 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_797, x_798);
    let x_800 : f32 = u_xlat41;
    u_xlat41 = max(x_800, 0.00006103515625f);
    let x_803 : f32 = u_xlat41;
    u_xlat30 = inverseSqrt(x_803);
    let x_805 : f32 = u_xlat30;
    let x_807 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_805, x_805, x_805) * x_807);
    let x_809 : f32 = u_xlat41;
    u_xlat30 = (1.0f / x_809);
    let x_811 : f32 = u_xlat41;
    let x_812 : i32 = u_xlati40;
    let x_814 : f32 = x_785.x_AdditionalLightsAttenuation[x_812].x;
    u_xlat41 = (x_811 * x_814);
    let x_816 : f32 = u_xlat41;
    let x_818 : f32 = u_xlat41;
    u_xlat41 = ((-(x_816) * x_818) + 1.0f);
    let x_821 : f32 = u_xlat41;
    u_xlat41 = max(x_821, 0.0f);
    let x_823 : f32 = u_xlat41;
    let x_824 : f32 = u_xlat41;
    u_xlat41 = (x_823 * x_824);
    let x_826 : f32 = u_xlat41;
    let x_827 : f32 = u_xlat30;
    u_xlat41 = (x_826 * x_827);
    let x_829 : i32 = u_xlati40;
    let x_831 : vec4<f32> = x_785.x_AdditionalLightsSpotDir[x_829];
    let x_833 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), x_833);
    let x_835 : f32 = u_xlat30;
    let x_836 : i32 = u_xlati40;
    let x_838 : f32 = x_785.x_AdditionalLightsAttenuation[x_836].z;
    let x_840 : i32 = u_xlati40;
    let x_842 : f32 = x_785.x_AdditionalLightsAttenuation[x_840].w;
    u_xlat30 = ((x_835 * x_838) + x_842);
    let x_844 : f32 = u_xlat30;
    u_xlat30 = clamp(x_844, 0.0f, 1.0f);
    let x_846 : f32 = u_xlat30;
    let x_847 : f32 = u_xlat30;
    u_xlat30 = (x_846 * x_847);
    let x_849 : f32 = u_xlat41;
    let x_850 : f32 = u_xlat30;
    u_xlat41 = (x_849 * x_850);
    let x_854 : i32 = u_xlati40;
    let x_856 : f32 = x_413.x_AdditionalShadowParams[x_854].w;
    u_xlati30 = i32(x_856);
    let x_859 : i32 = u_xlati30;
    u_xlatb42 = (x_859 >= 0i);
    let x_861 : bool = u_xlatb42;
    if (x_861) {
      let x_865 : i32 = u_xlati40;
      let x_867 : f32 = x_413.x_AdditionalShadowParams[x_865].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_867, x_867, x_867, x_867))));
      let x_871 : bool = u_xlatb42;
      if (x_871) {
        let x_876 : vec3<f32> = u_xlat8;
        let x_879 : vec3<f32> = u_xlat8;
        let x_882 : vec4<bool> = (abs(vec4<f32>(x_876.z, x_876.z, x_876.y, x_876.z)) >= abs(vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.x)));
        let x_884 : vec3<bool> = vec3<bool>(x_882.x, x_882.y, x_882.z);
        let x_885 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_884.x, x_884.y, x_884.z, x_885.w);
        let x_888 : bool = u_xlatb9.y;
        let x_890 : bool = u_xlatb9.x;
        u_xlatb42 = (x_888 & x_890);
        let x_892 : vec3<f32> = u_xlat8;
        let x_895 : vec4<bool> = (-(vec4<f32>(x_892.z, x_892.y, x_892.z, x_892.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_896 : vec3<bool> = vec3<bool>(x_895.x, x_895.y, x_895.w);
        let x_897 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_896.x, x_896.y, x_897.z, x_896.z);
        let x_901 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_901);
        let x_907 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_907);
        let x_913 : bool = u_xlatb9.w;
        u_xlat43 = select(0.0f, 1.0f, x_913);
        let x_916 : bool = u_xlatb9.z;
        if (x_916) {
          let x_921 : f32 = u_xlat9.y;
          x_917 = x_921;
        } else {
          let x_923 : f32 = u_xlat43;
          x_917 = x_923;
        }
        let x_924 : f32 = x_917;
        u_xlat43 = x_924;
        let x_926 : bool = u_xlatb42;
        if (x_926) {
          let x_931 : f32 = u_xlat9.x;
          x_927 = x_931;
        } else {
          let x_933 : f32 = u_xlat43;
          x_927 = x_933;
        }
        let x_934 : f32 = x_927;
        u_xlat42 = x_934;
        let x_935 : i32 = u_xlati40;
        let x_937 : f32 = x_413.x_AdditionalShadowParams[x_935].w;
        u_xlat43 = trunc(x_937);
        let x_939 : f32 = u_xlat42;
        let x_940 : f32 = u_xlat43;
        u_xlat42 = (x_939 + x_940);
        let x_942 : f32 = u_xlat42;
        u_xlati30 = i32(x_942);
      }
      let x_944 : i32 = u_xlati30;
      u_xlati30 = (x_944 << bitcast<u32>(2i));
      let x_946 : vec3<f32> = vs_TEXCOORD1;
      let x_949 : i32 = u_xlati30;
      let x_952 : i32 = u_xlati30;
      let x_956 : vec4<f32> = x_413.x_AdditionalLightsWorldToShadow[((x_949 + 1i) / 4i)][((x_952 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_946.y, x_946.y, x_946.y, x_946.y) * x_956);
      let x_958 : i32 = u_xlati30;
      let x_960 : i32 = u_xlati30;
      let x_963 : vec4<f32> = x_413.x_AdditionalLightsWorldToShadow[(x_958 / 4i)][(x_960 % 4i)];
      let x_964 : vec3<f32> = vs_TEXCOORD1;
      let x_967 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_963 * vec4<f32>(x_964.x, x_964.x, x_964.x, x_964.x)) + x_967);
      let x_969 : i32 = u_xlati30;
      let x_972 : i32 = u_xlati30;
      let x_976 : vec4<f32> = x_413.x_AdditionalLightsWorldToShadow[((x_969 + 2i) / 4i)][((x_972 + 2i) % 4i)];
      let x_977 : vec3<f32> = vs_TEXCOORD1;
      let x_980 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_976 * vec4<f32>(x_977.z, x_977.z, x_977.z, x_977.z)) + x_980);
      let x_982 : vec4<f32> = u_xlat9;
      let x_983 : i32 = u_xlati30;
      let x_986 : i32 = u_xlati30;
      let x_990 : vec4<f32> = x_413.x_AdditionalLightsWorldToShadow[((x_983 + 3i) / 4i)][((x_986 + 3i) % 4i)];
      u_xlat9 = (x_982 + x_990);
      let x_992 : vec4<f32> = u_xlat9;
      let x_994 : vec4<f32> = u_xlat9;
      let x_996 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) / vec3<f32>(x_994.w, x_994.w, x_994.w));
      let x_997 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
      let x_1000 : vec4<f32> = u_xlat9;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.x, x_1000.y);
      let x_1003 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1011 : vec3<f32> = txVec1;
      let x_1013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
      u_xlat30 = x_1013;
      let x_1014 : i32 = u_xlati40;
      let x_1016 : f32 = x_413.x_AdditionalShadowParams[x_1014].x;
      u_xlat42 = (1.0f + -(x_1016));
      let x_1019 : f32 = u_xlat30;
      let x_1020 : i32 = u_xlati40;
      let x_1022 : f32 = x_413.x_AdditionalShadowParams[x_1020].x;
      let x_1024 : f32 = u_xlat42;
      u_xlat30 = ((x_1019 * x_1022) + x_1024);
      let x_1027 : f32 = u_xlat9.z;
      u_xlatb42 = (0.0f >= x_1027);
      let x_1031 : f32 = u_xlat9.z;
      u_xlatb43 = (x_1031 >= 1.0f);
      let x_1033 : bool = u_xlatb42;
      let x_1034 : bool = u_xlatb43;
      u_xlatb42 = (x_1033 | x_1034);
      let x_1036 : bool = u_xlatb42;
      let x_1037 : f32 = u_xlat30;
      u_xlat30 = select(x_1037, 1.0f, x_1036);
    } else {
      u_xlat30 = 1.0f;
    }
    let x_1040 : f32 = u_xlat30;
    u_xlat42 = (-(x_1040) + 1.0f);
    let x_1044 : f32 = u_xlat1.x;
    let x_1045 : f32 = u_xlat42;
    let x_1047 : f32 = u_xlat30;
    u_xlat30 = ((x_1044 * x_1045) + x_1047);
    let x_1050 : i32 = u_xlati40;
    u_xlati42 = (1i << bitcast<u32>((x_1050 & 31i)));
    let x_1054 : i32 = u_xlati42;
    let x_1057 : f32 = x_483.x_AdditionalLightsCookieEnableBits;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1054) & bitcast<u32>(x_1057)));
    let x_1061 : i32 = u_xlati42;
    if ((x_1061 != 0i)) {
      let x_1065 : i32 = u_xlati40;
      let x_1067 : f32 = x_483.x_AdditionalLightsLightTypes[x_1065].el;
      u_xlati42 = i32(x_1067);
      let x_1070 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1070 != 0i));
      let x_1074 : i32 = u_xlati40;
      u_xlati44 = (x_1074 << bitcast<u32>(2i));
      let x_1076 : i32 = u_xlati43;
      if ((x_1076 != 0i)) {
        let x_1080 : vec3<f32> = vs_TEXCOORD1;
        let x_1082 : i32 = u_xlati44;
        let x_1085 : i32 = u_xlati44;
        let x_1089 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1082 + 1i) / 4i)][((x_1085 + 1i) % 4i)];
        let x_1091 : vec3<f32> = (vec3<f32>(x_1080.y, x_1080.y, x_1080.y) * vec3<f32>(x_1089.x, x_1089.y, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
        let x_1094 : i32 = u_xlati44;
        let x_1096 : i32 = u_xlati44;
        let x_1099 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[(x_1094 / 4i)][(x_1096 % 4i)];
        let x_1101 : vec3<f32> = vs_TEXCOORD1;
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.w) * vec3<f32>(x_1101.x, x_1101.x, x_1101.x)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : i32 = u_xlati44;
        let x_1112 : i32 = u_xlati44;
        let x_1116 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1109 + 2i) / 4i)][((x_1112 + 2i) % 4i)];
        let x_1118 : vec3<f32> = vs_TEXCOORD1;
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1123 : vec3<f32> = ((vec3<f32>(x_1116.x, x_1116.y, x_1116.w) * vec3<f32>(x_1118.z, x_1118.z, x_1118.z)) + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat9;
        let x_1128 : i32 = u_xlati44;
        let x_1131 : i32 = u_xlati44;
        let x_1135 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1128 + 3i) / 4i)][((x_1131 + 3i) % 4i)];
        let x_1137 : vec3<f32> = (vec3<f32>(x_1126.x, x_1126.y, x_1126.z) + vec3<f32>(x_1135.x, x_1135.y, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1144 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) / vec2<f32>(x_1142.z, x_1142.z));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1150 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1157 : vec2<f32> = clamp(vec2<f32>(x_1153.x, x_1153.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : i32 = u_xlati40;
        let x_1162 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1160];
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1167 : i32 = u_xlati40;
        let x_1169 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1167];
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1169.z, x_1169.w));
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
      } else {
        let x_1175 : i32 = u_xlati42;
        u_xlatb42 = (x_1175 == 1i);
        let x_1177 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1177);
        let x_1179 : i32 = u_xlati42;
        if ((x_1179 != 0i)) {
          let x_1185 : vec3<f32> = vs_TEXCOORD1;
          let x_1187 : i32 = u_xlati44;
          let x_1190 : i32 = u_xlati44;
          let x_1194 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1187 + 1i) / 4i)][((x_1190 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1185.y, x_1185.y) * vec2<f32>(x_1194.x, x_1194.y));
          let x_1197 : i32 = u_xlati44;
          let x_1199 : i32 = u_xlati44;
          let x_1202 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[(x_1197 / 4i)][(x_1199 % 4i)];
          let x_1204 : vec3<f32> = vs_TEXCOORD1;
          let x_1207 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1204.x, x_1204.x)) + x_1207);
          let x_1209 : i32 = u_xlati44;
          let x_1212 : i32 = u_xlati44;
          let x_1216 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1209 + 2i) / 4i)][((x_1212 + 2i) % 4i)];
          let x_1218 : vec3<f32> = vs_TEXCOORD1;
          let x_1221 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1218.z, x_1218.z)) + x_1221);
          let x_1223 : vec2<f32> = u_xlat33;
          let x_1224 : i32 = u_xlati44;
          let x_1227 : i32 = u_xlati44;
          let x_1231 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1224 + 3i) / 4i)][((x_1227 + 3i) % 4i)];
          u_xlat33 = (x_1223 + vec2<f32>(x_1231.x, x_1231.y));
          let x_1234 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1234 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1237 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1237);
          let x_1239 : i32 = u_xlati40;
          let x_1241 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1239];
          let x_1243 : vec2<f32> = u_xlat33;
          let x_1245 : i32 = u_xlati40;
          let x_1247 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1245];
          let x_1249 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * x_1243) + vec2<f32>(x_1247.z, x_1247.w));
          let x_1250 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        } else {
          let x_1254 : vec3<f32> = vs_TEXCOORD1;
          let x_1256 : i32 = u_xlati44;
          let x_1259 : i32 = u_xlati44;
          let x_1263 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1256 + 1i) / 4i)][((x_1259 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1254.y, x_1254.y, x_1254.y, x_1254.y) * x_1263);
          let x_1265 : i32 = u_xlati44;
          let x_1267 : i32 = u_xlati44;
          let x_1270 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[(x_1265 / 4i)][(x_1267 % 4i)];
          let x_1271 : vec3<f32> = vs_TEXCOORD1;
          let x_1274 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1270 * vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x)) + x_1274);
          let x_1276 : i32 = u_xlati44;
          let x_1279 : i32 = u_xlati44;
          let x_1283 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1276 + 2i) / 4i)][((x_1279 + 2i) % 4i)];
          let x_1284 : vec3<f32> = vs_TEXCOORD1;
          let x_1287 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1283 * vec4<f32>(x_1284.z, x_1284.z, x_1284.z, x_1284.z)) + x_1287);
          let x_1289 : vec4<f32> = u_xlat10;
          let x_1290 : i32 = u_xlati44;
          let x_1293 : i32 = u_xlati44;
          let x_1297 : vec4<f32> = x_483.x_AdditionalLightsWorldToLights[((x_1290 + 3i) / 4i)][((x_1293 + 3i) % 4i)];
          u_xlat10 = (x_1289 + x_1297);
          let x_1299 : vec4<f32> = u_xlat10;
          let x_1301 : vec4<f32> = u_xlat10;
          let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) / vec3<f32>(x_1301.w, x_1301.w, x_1301.w));
          let x_1304 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
          let x_1306 : vec4<f32> = u_xlat10;
          let x_1308 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
          let x_1311 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1311);
          let x_1313 : f32 = u_xlat42;
          let x_1315 : vec4<f32> = u_xlat10;
          let x_1317 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
          let x_1318 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
          let x_1320 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1320.x, x_1320.y, x_1320.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1325 : f32 = u_xlat42;
          u_xlat42 = max(x_1325, 0.00000099999999747524f);
          let x_1328 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1328);
          let x_1331 : f32 = u_xlat42;
          let x_1333 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.z, x_1333.x, x_1333.y));
          let x_1337 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1337);
          let x_1341 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1341, 0.0f, 1.0f);
          let x_1345 : vec3<f32> = u_xlat11;
          let x_1347 : vec4<bool> = (vec4<f32>(x_1345.y, x_1345.z, x_1345.y, x_1345.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1347.x, x_1347.y);
          let x_1350 : bool = u_xlatb33.x;
          if (x_1350) {
            let x_1355 : f32 = u_xlat11.x;
            x_1351 = x_1355;
          } else {
            let x_1358 : f32 = u_xlat11.x;
            x_1351 = -(x_1358);
          }
          let x_1360 : f32 = x_1351;
          u_xlat33.x = x_1360;
          let x_1363 : bool = u_xlatb33.y;
          if (x_1363) {
            let x_1368 : f32 = u_xlat11.x;
            x_1364 = x_1368;
          } else {
            let x_1371 : f32 = u_xlat11.x;
            x_1364 = -(x_1371);
          }
          let x_1373 : f32 = x_1364;
          u_xlat33.y = x_1373;
          let x_1375 : vec4<f32> = u_xlat10;
          let x_1377 : f32 = u_xlat42;
          let x_1380 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1377, x_1377)) + x_1380);
          let x_1382 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1382 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1385 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1385, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1389 : i32 = u_xlati40;
          let x_1391 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1389];
          let x_1393 : vec2<f32> = u_xlat33;
          let x_1395 : i32 = u_xlati40;
          let x_1397 : vec4<f32> = x_483.x_AdditionalLightsCookieAtlasUVRects[x_1395];
          let x_1399 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * x_1393) + vec2<f32>(x_1397.z, x_1397.w));
          let x_1400 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        }
      }
      let x_1407 : vec4<f32> = u_xlat9;
      let x_1409 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1407.x, x_1407.y), 0.0f);
      u_xlat9 = x_1409;
      let x_1411 : bool = u_xlatb6.y;
      if (x_1411) {
        let x_1416 : f32 = u_xlat9.w;
        x_1412 = x_1416;
      } else {
        let x_1419 : f32 = u_xlat9.x;
        x_1412 = x_1419;
      }
      let x_1420 : f32 = x_1412;
      u_xlat42 = x_1420;
      let x_1422 : bool = u_xlatb6.x;
      if (x_1422) {
        let x_1426 : vec4<f32> = u_xlat9;
        x_1423 = vec3<f32>(x_1426.x, x_1426.y, x_1426.z);
      } else {
        let x_1429 : f32 = u_xlat42;
        x_1423 = vec3<f32>(x_1429, x_1429, x_1429);
      }
      let x_1431 : vec3<f32> = x_1423;
      let x_1432 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1438 : vec4<f32> = u_xlat9;
    let x_1440 : i32 = u_xlati40;
    let x_1442 : vec4<f32> = x_785.x_AdditionalLightsColor[x_1440];
    let x_1444 : vec3<f32> = (vec3<f32>(x_1438.x, x_1438.y, x_1438.z) * vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
    let x_1445 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
    let x_1447 : f32 = u_xlat41;
    let x_1448 : f32 = u_xlat30;
    u_xlat40 = (x_1447 * x_1448);
    let x_1450 : f32 = u_xlat40;
    let x_1452 : vec4<f32> = u_xlat9;
    let x_1454 : vec3<f32> = (vec3<f32>(x_1450, x_1450, x_1450) * vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
    let x_1455 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
    let x_1457 : vec3<f32> = u_xlat2;
    let x_1458 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1457, x_1458);
    let x_1460 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1460, 0.0f, 1.0f);
    let x_1462 : f32 = u_xlat40;
    let x_1464 : vec4<f32> = u_xlat9;
    let x_1466 : vec3<f32> = (vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
    let x_1467 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
    let x_1469 : vec3<f32> = u_xlat3;
    let x_1470 : vec3<f32> = u_xlat12;
    let x_1473 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1469 * vec3<f32>(x_1470.x, x_1470.x, x_1470.x)) + x_1473);
    let x_1475 : vec3<f32> = u_xlat8;
    let x_1476 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1475, x_1476);
    let x_1478 : f32 = u_xlat40;
    u_xlat40 = max(x_1478, 1.17549435e-38f);
    let x_1480 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1480);
    let x_1482 : f32 = u_xlat40;
    let x_1484 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1482, x_1482, x_1482) * x_1484);
    let x_1486 : vec3<f32> = u_xlat2;
    let x_1487 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1486, x_1487);
    let x_1489 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1489, 0.0f, 1.0f);
    let x_1491 : f32 = u_xlat40;
    u_xlat40 = log2(x_1491);
    let x_1493 : f32 = u_xlat36;
    let x_1494 : f32 = u_xlat40;
    u_xlat40 = (x_1493 * x_1494);
    let x_1496 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1496);
    let x_1498 : f32 = u_xlat40;
    let x_1501 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1498, x_1498, x_1498) * vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
    let x_1504 : vec3<f32> = u_xlat8;
    let x_1505 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1504 * vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec4<f32> = u_xlat10;
    let x_1510 : vec4<f32> = u_xlat1;
    let x_1513 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1508.x, x_1508.y, x_1508.z) * vec3<f32>(x_1510.y, x_1510.z, x_1510.w)) + x_1513);
    let x_1515 : vec3<f32> = u_xlat7;
    let x_1516 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1515 + x_1516);

    continuing {
      let x_1518 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1518 + bitcast<u32>(1i));
    }
  }
  let x_1520 : vec4<f32> = u_xlat4;
  let x_1522 : vec4<f32> = u_xlat1;
  let x_1525 : vec4<f32> = u_xlat5;
  let x_1527 : vec3<f32> = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.z) * vec3<f32>(x_1522.y, x_1522.z, x_1522.w)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1532 : vec3<f32> = u_xlat7;
  let x_1533 : vec4<f32> = u_xlat1;
  let x_1535 : vec3<f32> = (x_1532 + vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
  let x_1536 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
  let x_1539 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1539 == 1.0f);
  let x_1541 : bool = u_xlatb12;
  let x_1542 : bool = u_xlatb24;
  u_xlatb12 = (x_1541 | x_1542);
  let x_1544 : bool = u_xlatb12;
  if (x_1544) {
    let x_1549 : f32 = u_xlat0.x;
    x_1545 = x_1549;
  } else {
    x_1545 = 1.0f;
  }
  let x_1551 : f32 = x_1545;
  SV_Target0.w = x_1551;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


