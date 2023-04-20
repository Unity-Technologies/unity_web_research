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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_343 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb39 : bool;

var<private> u_xlat39 : f32;

@group(1) @binding(5) var<uniform> x_708 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu39 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati30 : i32;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1009 : AdditionalLights;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlati42 : i32;

var<private> u_xlatb43 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat43 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb44 : bool;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlati9 : i32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_243 : f32;
  var txVec0 : vec3<f32>;
  var x_659 : f32;
  var x_792 : f32;
  var x_803 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1138 : f32;
  var x_1148 : f32;
  var txVec1 : vec3<f32>;
  var x_1578 : f32;
  var x_1591 : f32;
  var x_1649 : f32;
  var x_1660 : vec3<f32>;
  var x_1812 : f32;
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
  u_xlat12.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat36;
  let x_108 : f32 = u_xlat24;
  u_xlat24 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat24;
  u_xlat24 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat12.x;
  let x_116 : f32 = u_xlat24;
  u_xlat12.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat12.x;
  u_xlat12.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb24;
  if (x_132) {
    let x_137 : f32 = u_xlat12.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat12.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat12.x;
  u_xlatb12 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb12;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_45.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_166, x_168);
  u_xlat2 = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_172 : f32 = u_xlat2.x;
  let x_175 : f32 = u_xlat2.z;
  u_xlat2.x = (x_172 * x_175);
  let x_178 : vec3<f32> = u_xlat2;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_185.x, x_186.y, x_185.y);
  let x_188 : vec3<f32> = u_xlat12;
  let x_190 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_188.x, x_188.z), vec2<f32>(x_190.x, x_190.z));
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_195, 1.0f);
  let x_199 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_199) + 1.0f);
  let x_204 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_204);
  let x_208 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_208, 0.0000000000000001f);
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : f32 = x_45.x_DitheringTextureInvSize;
  let x_218 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_226 : vec3<f32> = u_xlat2;
  let x_229 : f32 = x_45.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat2.x = x_230.w;
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
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_345 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres0;
  let x_348 : vec3<f32> = (x_335 + -(vec3<f32>(x_345.x, x_345.y, x_345.z)));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec3<f32> = vs_TEXCOORD1;
  let x_354 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres1;
  let x_357 : vec3<f32> = (x_352 + -(vec3<f32>(x_354.x, x_354.y, x_354.z)));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_361 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_369 : vec3<f32> = vs_TEXCOORD1;
  let x_371 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_369 + -(vec3<f32>(x_371.x, x_371.y, x_371.z)));
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : vec3<f32> = u_xlat6;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_387, x_388);
  let x_391 : vec3<f32> = u_xlat7;
  let x_392 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_391, x_392);
  let x_398 : vec4<f32> = u_xlat4;
  let x_401 : vec4<f32> = x_343.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_398 < x_401);
  let x_404 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_404);
  let x_408 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_408);
  let x_412 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_420);
  let x_425 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_425);
  let x_429 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_429);
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(x_434.y, x_434.z, x_434.w));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = max(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_443.x, x_442.x, x_442.y, x_442.z);
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_445, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_450 : f32 = u_xlat36;
  u_xlat36 = (-(x_450) + 4.0f);
  let x_455 : f32 = u_xlat36;
  u_xlatu36 = u32(x_455);
  let x_459 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_459) << bitcast<u32>(2i));
  let x_462 : vec3<f32> = vs_TEXCOORD1;
  let x_464 : i32 = u_xlati36;
  let x_467 : i32 = u_xlati36;
  let x_471 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_464 + 1i) / 4i)][((x_467 + 1i) % 4i)];
  let x_473 : vec3<f32> = (vec3<f32>(x_462.y, x_462.y, x_462.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : i32 = u_xlati36;
  let x_478 : i32 = u_xlati36;
  let x_481 : vec4<f32> = x_343.x_MainLightWorldToShadow[(x_476 / 4i)][(x_478 % 4i)];
  let x_483 : vec3<f32> = vs_TEXCOORD1;
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.x, x_483.x, x_483.x)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : i32 = u_xlati36;
  let x_494 : i32 = u_xlati36;
  let x_498 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_491 + 2i) / 4i)][((x_494 + 2i) % 4i)];
  let x_500 : vec3<f32> = vs_TEXCOORD1;
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.z, x_500.z, x_500.z)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : i32 = u_xlati36;
  let x_513 : i32 = u_xlati36;
  let x_517 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_510 + 3i) / 4i)][((x_513 + 3i) % 4i)];
  let x_519 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = vs_TEXCOORD1.y;
  let x_526 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_523 * x_526);
  let x_529 : f32 = x_45.unity_MatrixV[0i].z;
  let x_531 : f32 = vs_TEXCOORD1.x;
  let x_533 : f32 = u_xlat36;
  u_xlat36 = ((x_529 * x_531) + x_533);
  let x_536 : f32 = x_45.unity_MatrixV[2i].z;
  let x_538 : f32 = vs_TEXCOORD1.z;
  let x_540 : f32 = u_xlat36;
  u_xlat36 = ((x_536 * x_538) + x_540);
  let x_542 : f32 = u_xlat36;
  let x_544 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_542 + x_544);
  let x_546 : f32 = u_xlat36;
  let x_550 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_546) + -(x_550));
  let x_553 : f32 = u_xlat36;
  u_xlat36 = max(x_553, 0.0f);
  let x_555 : f32 = u_xlat36;
  let x_558 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_555 * x_558);
  let x_566 : vec2<f32> = vs_TEXCOORD7;
  let x_568 : f32 = x_45.x_GlobalMipBias.x;
  let x_569 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_566, x_568);
  u_xlat5 = x_569;
  let x_574 : vec2<f32> = vs_TEXCOORD7;
  let x_576 : f32 = x_45.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_574, x_576);
  u_xlat6 = vec3<f32>(x_577.x, x_577.y, x_577.z);
  let x_579 : vec4<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_584 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(x_586, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_592 : f32 = u_xlat1.x;
  u_xlat1.x = (x_592 + 0.5f);
  let x_595 : vec4<f32> = u_xlat1;
  let x_597 : vec3<f32> = u_xlat6;
  let x_598 : vec3<f32> = (vec3<f32>(x_595.x, x_595.x, x_595.x) * x_597);
  let x_599 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat5.w;
  u_xlat1.x = max(x_602, 0.00009999999747378752f);
  let x_605 : vec4<f32> = u_xlat5;
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) / vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_614 : vec4<f32> = u_xlat4;
  let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
  let x_617 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_615.x, x_615.y, x_617);
  let x_629 : vec3<f32> = txVec0;
  let x_631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_629.xy, x_629.z);
  u_xlat1.x = x_631;
  let x_636 : f32 = x_343.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_636) + 1.0f);
  let x_640 : f32 = u_xlat1.x;
  let x_642 : f32 = x_343.x_MainLightShadowParams.x;
  let x_644 : f32 = u_xlat38;
  u_xlat1.x = ((x_640 * x_642) + x_644);
  let x_649 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_649);
  let x_653 : f32 = u_xlat4.z;
  u_xlatb39 = (x_653 >= 1.0f);
  let x_655 : bool = u_xlatb38;
  let x_656 : bool = u_xlatb39;
  u_xlatb38 = (x_655 | x_656);
  let x_658 : bool = u_xlatb38;
  if (x_658) {
    x_659 = 1.0f;
  } else {
    let x_664 : f32 = u_xlat1.x;
    x_659 = x_664;
  }
  let x_665 : f32 = x_659;
  u_xlat1.x = x_665;
  let x_667 : vec3<f32> = vs_TEXCOORD1;
  let x_670 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_672 : vec3<f32> = (x_667 + -(x_670));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_681 : f32 = u_xlat38;
  let x_683 : f32 = x_343.x_MainLightShadowParams.z;
  let x_686 : f32 = x_343.x_MainLightShadowParams.w;
  u_xlat39 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat39;
  u_xlat39 = clamp(x_688, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_691) + 1.0f);
  let x_695 : f32 = u_xlat39;
  let x_697 : f32 = u_xlat4.x;
  let x_700 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_695 * x_697) + x_700);
  let x_710 : f32 = x_708.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_710 == -1.0f));
  let x_712 : bool = u_xlatb39;
  if (x_712) {
    let x_715 : vec3<f32> = vs_TEXCOORD1;
    let x_718 : vec4<f32> = x_708.x_MainLightWorldToLight[1i];
    let x_720 : vec2<f32> = (vec2<f32>(x_715.y, x_715.y) * vec2<f32>(x_718.x, x_718.y));
    let x_721 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
    let x_724 : vec4<f32> = x_708.x_MainLightWorldToLight[0i];
    let x_726 : vec3<f32> = vs_TEXCOORD1;
    let x_729 : vec4<f32> = u_xlat4;
    let x_731 : vec2<f32> = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_726.x, x_726.x)) + vec2<f32>(x_729.x, x_729.y));
    let x_732 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
    let x_735 : vec4<f32> = x_708.x_MainLightWorldToLight[2i];
    let x_737 : vec3<f32> = vs_TEXCOORD1;
    let x_740 : vec4<f32> = u_xlat4;
    let x_742 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_737.z, x_737.z)) + vec2<f32>(x_740.x, x_740.y));
    let x_743 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_742.x, x_742.y, x_743.z, x_743.w);
    let x_745 : vec4<f32> = u_xlat4;
    let x_748 : vec4<f32> = x_708.x_MainLightWorldToLight[3i];
    let x_750 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(x_748.x, x_748.y));
    let x_751 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
    let x_753 : vec4<f32> = u_xlat4;
    let x_757 : vec2<f32> = ((vec2<f32>(x_753.x, x_753.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_758 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
    let x_765 : vec4<f32> = u_xlat4;
    let x_768 : f32 = x_45.x_GlobalMipBias.x;
    let x_769 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_765.x, x_765.y), x_768);
    u_xlat4 = x_769;
    let x_774 : f32 = x_708.x_MainLightCookieTextureFormat;
    let x_776 : f32 = x_708.x_MainLightCookieTextureFormat;
    let x_778 : f32 = x_708.x_MainLightCookieTextureFormat;
    let x_780 : f32 = x_708.x_MainLightCookieTextureFormat;
    let x_781 : vec4<f32> = vec4<f32>(x_774, x_776, x_778, x_780);
    let x_788 : vec4<bool> = (vec4<f32>(x_781.x, x_781.y, x_781.z, x_781.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_788.x, x_788.y);
    let x_791 : bool = u_xlatb6.y;
    if (x_791) {
      let x_796 : f32 = u_xlat4.w;
      x_792 = x_796;
    } else {
      let x_799 : f32 = u_xlat4.x;
      x_792 = x_799;
    }
    let x_800 : f32 = x_792;
    u_xlat39 = x_800;
    let x_802 : bool = u_xlatb6.x;
    if (x_802) {
      let x_806 : vec4<f32> = u_xlat4;
      x_803 = vec3<f32>(x_806.x, x_806.y, x_806.z);
    } else {
      let x_809 : f32 = u_xlat39;
      x_803 = vec3<f32>(x_809, x_809, x_809);
    }
    let x_811 : vec3<f32> = x_803;
    let x_812 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_818 : vec4<f32> = u_xlat4;
  let x_821 : vec4<f32> = x_45.x_MainLightColor;
  let x_823 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_827 : f32 = u_xlat1.x;
  let x_829 : f32 = x_237.unity_LightData.z;
  u_xlat1.x = (x_827 * x_829);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat4;
  let x_836 : vec3<f32> = (vec3<f32>(x_832.x, x_832.x, x_832.x) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec3<f32> = u_xlat2;
  let x_841 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(x_839, vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_846, 0.0f, 1.0f);
  let x_849 : vec4<f32> = u_xlat1;
  let x_851 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_855 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_855 * 10.0f) + 1.0f);
  let x_861 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_861);
  let x_864 : vec3<f32> = u_xlat3;
  let x_865 : vec3<f32> = u_xlat12;
  let x_869 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = ((x_864 * vec3<f32>(x_865.x, x_865.x, x_865.x)) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec3<f32> = u_xlat7;
  let x_873 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_872, x_873);
  let x_875 : f32 = u_xlat39;
  u_xlat39 = max(x_875, 1.17549435e-38f);
  let x_878 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_878);
  let x_880 : f32 = u_xlat39;
  let x_882 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_880, x_880, x_880) * x_882);
  let x_884 : vec3<f32> = u_xlat2;
  let x_885 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_884, x_885);
  let x_887 : f32 = u_xlat39;
  u_xlat39 = clamp(x_887, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat39;
  u_xlat39 = log2(x_889);
  let x_892 : f32 = u_xlat1.x;
  let x_893 : f32 = u_xlat39;
  u_xlat39 = (x_892 * x_893);
  let x_895 : f32 = u_xlat39;
  u_xlat39 = exp2(x_895);
  let x_897 : f32 = u_xlat39;
  let x_900 : vec4<f32> = x_58.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_897, x_897, x_897) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat4;
  let x_905 : vec3<f32> = u_xlat7;
  let x_906 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * x_905);
  let x_907 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec3<f32> = u_xlat6;
  let x_910 : vec4<f32> = u_xlat1;
  let x_913 : vec4<f32> = u_xlat4;
  let x_915 : vec3<f32> = ((x_909 * vec3<f32>(x_910.y, x_910.z, x_910.w)) + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_919 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_921 : f32 = x_237.unity_LightData.y;
  u_xlat39 = min(x_919, x_921);
  let x_924 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_924));
  let x_927 : f32 = u_xlat38;
  let x_930 : f32 = x_343.x_AdditionalShadowFadeParams.x;
  let x_933 : f32 = x_343.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_927 * x_930) + x_933);
  let x_935 : f32 = u_xlat38;
  u_xlat38 = clamp(x_935, 0.0f, 1.0f);
  let x_938 : f32 = x_708.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_940 : f32 = x_708.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_942 : f32 = x_708.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_944 : f32 = x_708.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_945 : vec4<f32> = vec4<f32>(x_938, x_940, x_942, x_944);
  let x_951 : vec4<bool> = (vec4<f32>(x_945.x, x_945.y, x_945.z, x_945.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_951.x, x_951.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_963 : u32 = u_xlatu_loop_1;
    let x_964 : u32 = u_xlatu39;
    if ((x_963 < x_964)) {
    } else {
      break;
    }
    let x_967 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_967 >> 2u);
    let x_970 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_970 & 3u));
    let x_974 : u32 = u_xlatu41;
    let x_977 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_974)];
    let x_987 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_992 : vec4<u32> = indexable[x_987];
    u_xlat41 = dot(x_977, bitcast<vec4<f32>>(x_992));
    let x_996 : f32 = u_xlat41;
    u_xlati41 = i32(x_996);
    let x_999 : vec3<f32> = vs_TEXCOORD1;
    let x_1010 : i32 = u_xlati41;
    let x_1012 : vec4<f32> = x_1009.x_AdditionalLightsPosition[x_1010];
    let x_1015 : i32 = u_xlati41;
    let x_1017 : vec4<f32> = x_1009.x_AdditionalLightsPosition[x_1015];
    u_xlat8 = ((-(x_999) * vec3<f32>(x_1012.w, x_1012.w, x_1012.w)) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
    let x_1021 : vec3<f32> = u_xlat8;
    let x_1022 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_1021, x_1022);
    let x_1024 : f32 = u_xlat30;
    u_xlat30 = max(x_1024, 0.00006103515625f);
    let x_1027 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1027);
    let x_1029 : f32 = u_xlat42;
    let x_1031 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1029, x_1029, x_1029) * x_1031);
    let x_1033 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_1033);
    let x_1035 : f32 = u_xlat30;
    let x_1036 : i32 = u_xlati41;
    let x_1038 : f32 = x_1009.x_AdditionalLightsAttenuation[x_1036].x;
    u_xlat30 = (x_1035 * x_1038);
    let x_1040 : f32 = u_xlat30;
    let x_1042 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1040) * x_1042) + 1.0f);
    let x_1045 : f32 = u_xlat30;
    u_xlat30 = max(x_1045, 0.0f);
    let x_1047 : f32 = u_xlat30;
    let x_1048 : f32 = u_xlat30;
    u_xlat30 = (x_1047 * x_1048);
    let x_1050 : f32 = u_xlat30;
    let x_1051 : f32 = u_xlat42;
    u_xlat30 = (x_1050 * x_1051);
    let x_1053 : i32 = u_xlati41;
    let x_1055 : vec4<f32> = x_1009.x_AdditionalLightsSpotDir[x_1053];
    let x_1057 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), x_1057);
    let x_1059 : f32 = u_xlat42;
    let x_1060 : i32 = u_xlati41;
    let x_1062 : f32 = x_1009.x_AdditionalLightsAttenuation[x_1060].z;
    let x_1064 : i32 = u_xlati41;
    let x_1066 : f32 = x_1009.x_AdditionalLightsAttenuation[x_1064].w;
    u_xlat42 = ((x_1059 * x_1062) + x_1066);
    let x_1068 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1068, 0.0f, 1.0f);
    let x_1070 : f32 = u_xlat42;
    let x_1071 : f32 = u_xlat42;
    u_xlat42 = (x_1070 * x_1071);
    let x_1073 : f32 = u_xlat42;
    let x_1074 : f32 = u_xlat30;
    u_xlat30 = (x_1073 * x_1074);
    let x_1078 : i32 = u_xlati41;
    let x_1080 : f32 = x_343.x_AdditionalShadowParams[x_1078].w;
    u_xlati42 = i32(x_1080);
    let x_1083 : i32 = u_xlati42;
    u_xlatb43 = (x_1083 >= 0i);
    let x_1085 : bool = u_xlatb43;
    if (x_1085) {
      let x_1089 : i32 = u_xlati41;
      let x_1091 : f32 = x_343.x_AdditionalShadowParams[x_1089].z;
      u_xlatb43 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1091, x_1091, x_1091, x_1091))));
      let x_1095 : bool = u_xlatb43;
      if (x_1095) {
        let x_1099 : vec3<f32> = u_xlat8;
        let x_1102 : vec3<f32> = u_xlat8;
        let x_1105 : vec4<bool> = (abs(vec4<f32>(x_1099.z, x_1099.z, x_1099.y, x_1099.z)) >= abs(vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.x)));
        let x_1107 : vec3<bool> = vec3<bool>(x_1105.x, x_1105.y, x_1105.z);
        let x_1108 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
        let x_1111 : bool = u_xlatb9.y;
        let x_1113 : bool = u_xlatb9.x;
        u_xlatb43 = (x_1111 & x_1113);
        let x_1115 : vec3<f32> = u_xlat8;
        let x_1118 : vec4<bool> = (-(vec4<f32>(x_1115.z, x_1115.y, x_1115.z, x_1115.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1119 : vec3<bool> = vec3<bool>(x_1118.x, x_1118.y, x_1118.w);
        let x_1120 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_1119.x, x_1119.y, x_1120.z, x_1119.z);
        let x_1124 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_1124);
        let x_1129 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_1129);
        let x_1134 : bool = u_xlatb9.w;
        u_xlat44 = select(0.0f, 1.0f, x_1134);
        let x_1137 : bool = u_xlatb9.z;
        if (x_1137) {
          let x_1142 : f32 = u_xlat9.y;
          x_1138 = x_1142;
        } else {
          let x_1144 : f32 = u_xlat44;
          x_1138 = x_1144;
        }
        let x_1145 : f32 = x_1138;
        u_xlat44 = x_1145;
        let x_1147 : bool = u_xlatb43;
        if (x_1147) {
          let x_1152 : f32 = u_xlat9.x;
          x_1148 = x_1152;
        } else {
          let x_1154 : f32 = u_xlat44;
          x_1148 = x_1154;
        }
        let x_1155 : f32 = x_1148;
        u_xlat43 = x_1155;
        let x_1156 : i32 = u_xlati41;
        let x_1158 : f32 = x_343.x_AdditionalShadowParams[x_1156].w;
        u_xlat44 = trunc(x_1158);
        let x_1160 : f32 = u_xlat43;
        let x_1161 : f32 = u_xlat44;
        u_xlat43 = (x_1160 + x_1161);
        let x_1163 : f32 = u_xlat43;
        u_xlati42 = i32(x_1163);
      }
      let x_1165 : i32 = u_xlati42;
      u_xlati42 = (x_1165 << bitcast<u32>(2i));
      let x_1167 : vec3<f32> = vs_TEXCOORD1;
      let x_1170 : i32 = u_xlati42;
      let x_1173 : i32 = u_xlati42;
      let x_1177 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1170 + 1i) / 4i)][((x_1173 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_1167.y, x_1167.y, x_1167.y, x_1167.y) * x_1177);
      let x_1179 : i32 = u_xlati42;
      let x_1181 : i32 = u_xlati42;
      let x_1184 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[(x_1179 / 4i)][(x_1181 % 4i)];
      let x_1185 : vec3<f32> = vs_TEXCOORD1;
      let x_1188 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1184 * vec4<f32>(x_1185.x, x_1185.x, x_1185.x, x_1185.x)) + x_1188);
      let x_1190 : i32 = u_xlati42;
      let x_1193 : i32 = u_xlati42;
      let x_1197 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1190 + 2i) / 4i)][((x_1193 + 2i) % 4i)];
      let x_1198 : vec3<f32> = vs_TEXCOORD1;
      let x_1201 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1197 * vec4<f32>(x_1198.z, x_1198.z, x_1198.z, x_1198.z)) + x_1201);
      let x_1203 : vec4<f32> = u_xlat9;
      let x_1204 : i32 = u_xlati42;
      let x_1207 : i32 = u_xlati42;
      let x_1211 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1204 + 3i) / 4i)][((x_1207 + 3i) % 4i)];
      u_xlat9 = (x_1203 + x_1211);
      let x_1213 : vec4<f32> = u_xlat9;
      let x_1215 : vec4<f32> = u_xlat9;
      let x_1217 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) / vec3<f32>(x_1215.w, x_1215.w, x_1215.w));
      let x_1218 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
      let x_1221 : vec4<f32> = u_xlat9;
      let x_1222 : vec2<f32> = vec2<f32>(x_1221.x, x_1221.y);
      let x_1224 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
      let x_1232 : vec3<f32> = txVec1;
      let x_1234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
      u_xlat42 = x_1234;
      let x_1235 : i32 = u_xlati41;
      let x_1237 : f32 = x_343.x_AdditionalShadowParams[x_1235].x;
      u_xlat43 = (1.0f + -(x_1237));
      let x_1240 : f32 = u_xlat42;
      let x_1241 : i32 = u_xlati41;
      let x_1243 : f32 = x_343.x_AdditionalShadowParams[x_1241].x;
      let x_1245 : f32 = u_xlat43;
      u_xlat42 = ((x_1240 * x_1243) + x_1245);
      let x_1248 : f32 = u_xlat9.z;
      u_xlatb43 = (0.0f >= x_1248);
      let x_1252 : f32 = u_xlat9.z;
      u_xlatb44 = (x_1252 >= 1.0f);
      let x_1254 : bool = u_xlatb43;
      let x_1255 : bool = u_xlatb44;
      u_xlatb43 = (x_1254 | x_1255);
      let x_1257 : bool = u_xlatb43;
      let x_1258 : f32 = u_xlat42;
      u_xlat42 = select(x_1258, 1.0f, x_1257);
    } else {
      u_xlat42 = 1.0f;
    }
    let x_1261 : f32 = u_xlat42;
    u_xlat43 = (-(x_1261) + 1.0f);
    let x_1264 : f32 = u_xlat38;
    let x_1265 : f32 = u_xlat43;
    let x_1267 : f32 = u_xlat42;
    u_xlat42 = ((x_1264 * x_1265) + x_1267);
    let x_1270 : i32 = u_xlati41;
    u_xlati43 = (1i << bitcast<u32>((x_1270 & 31i)));
    let x_1274 : i32 = u_xlati43;
    let x_1277 : f32 = x_708.x_AdditionalLightsCookieEnableBits;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_1274) & bitcast<u32>(x_1277)));
    let x_1281 : i32 = u_xlati43;
    if ((x_1281 != 0i)) {
      let x_1285 : i32 = u_xlati41;
      let x_1287 : f32 = x_708.x_AdditionalLightsLightTypes[x_1285].el;
      u_xlati43 = i32(x_1287);
      let x_1290 : i32 = u_xlati43;
      u_xlati44 = select(1i, 0i, (x_1290 != 0i));
      let x_1294 : i32 = u_xlati41;
      u_xlati9 = (x_1294 << bitcast<u32>(2i));
      let x_1296 : i32 = u_xlati44;
      if ((x_1296 != 0i)) {
        let x_1301 : vec3<f32> = vs_TEXCOORD1;
        let x_1303 : i32 = u_xlati9;
        let x_1306 : i32 = u_xlati9;
        let x_1310 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1303 + 1i) / 4i)][((x_1306 + 1i) % 4i)];
        u_xlat21 = (vec3<f32>(x_1301.y, x_1301.y, x_1301.y) * vec3<f32>(x_1310.x, x_1310.y, x_1310.w));
        let x_1313 : i32 = u_xlati9;
        let x_1315 : i32 = u_xlati9;
        let x_1318 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[(x_1313 / 4i)][(x_1315 % 4i)];
        let x_1320 : vec3<f32> = vs_TEXCOORD1;
        let x_1323 : vec3<f32> = u_xlat21;
        u_xlat21 = ((vec3<f32>(x_1318.x, x_1318.y, x_1318.w) * vec3<f32>(x_1320.x, x_1320.x, x_1320.x)) + x_1323);
        let x_1325 : i32 = u_xlati9;
        let x_1328 : i32 = u_xlati9;
        let x_1332 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1325 + 2i) / 4i)][((x_1328 + 2i) % 4i)];
        let x_1334 : vec3<f32> = vs_TEXCOORD1;
        let x_1337 : vec3<f32> = u_xlat21;
        u_xlat21 = ((vec3<f32>(x_1332.x, x_1332.y, x_1332.w) * vec3<f32>(x_1334.z, x_1334.z, x_1334.z)) + x_1337);
        let x_1339 : vec3<f32> = u_xlat21;
        let x_1340 : i32 = u_xlati9;
        let x_1343 : i32 = u_xlati9;
        let x_1347 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1340 + 3i) / 4i)][((x_1343 + 3i) % 4i)];
        u_xlat21 = (x_1339 + vec3<f32>(x_1347.x, x_1347.y, x_1347.w));
        let x_1350 : vec3<f32> = u_xlat21;
        let x_1352 : vec3<f32> = u_xlat21;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1350.x, x_1350.y) / vec2<f32>(x_1352.z, x_1352.z));
        let x_1355 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1354.x, x_1354.y, x_1355.z);
        let x_1357 : vec3<f32> = u_xlat21;
        let x_1360 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1361 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1360.x, x_1360.y, x_1361.z);
        let x_1363 : vec3<f32> = u_xlat21;
        let x_1367 : vec2<f32> = clamp(vec2<f32>(x_1363.x, x_1363.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1368 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1367.x, x_1367.y, x_1368.z);
        let x_1370 : i32 = u_xlati41;
        let x_1372 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1370];
        let x_1374 : vec3<f32> = u_xlat21;
        let x_1377 : i32 = u_xlati41;
        let x_1379 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1377];
        let x_1381 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1379.z, x_1379.w));
        let x_1382 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1381.x, x_1381.y, x_1382.z);
      } else {
        let x_1385 : i32 = u_xlati43;
        u_xlatb43 = (x_1385 == 1i);
        let x_1387 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_1387);
        let x_1389 : i32 = u_xlati43;
        if ((x_1389 != 0i)) {
          let x_1394 : vec3<f32> = vs_TEXCOORD1;
          let x_1396 : i32 = u_xlati9;
          let x_1399 : i32 = u_xlati9;
          let x_1403 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1396 + 1i) / 4i)][((x_1399 + 1i) % 4i)];
          let x_1405 : vec2<f32> = (vec2<f32>(x_1394.y, x_1394.y) * vec2<f32>(x_1403.x, x_1403.y));
          let x_1406 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
          let x_1408 : i32 = u_xlati9;
          let x_1410 : i32 = u_xlati9;
          let x_1413 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[(x_1408 / 4i)][(x_1410 % 4i)];
          let x_1415 : vec3<f32> = vs_TEXCOORD1;
          let x_1418 : vec4<f32> = u_xlat10;
          let x_1420 : vec2<f32> = ((vec2<f32>(x_1413.x, x_1413.y) * vec2<f32>(x_1415.x, x_1415.x)) + vec2<f32>(x_1418.x, x_1418.y));
          let x_1421 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
          let x_1423 : i32 = u_xlati9;
          let x_1426 : i32 = u_xlati9;
          let x_1430 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1423 + 2i) / 4i)][((x_1426 + 2i) % 4i)];
          let x_1432 : vec3<f32> = vs_TEXCOORD1;
          let x_1435 : vec4<f32> = u_xlat10;
          let x_1437 : vec2<f32> = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1432.z, x_1432.z)) + vec2<f32>(x_1435.x, x_1435.y));
          let x_1438 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1437.x, x_1437.y, x_1438.z, x_1438.w);
          let x_1440 : vec4<f32> = u_xlat10;
          let x_1442 : i32 = u_xlati9;
          let x_1445 : i32 = u_xlati9;
          let x_1449 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1442 + 3i) / 4i)][((x_1445 + 3i) % 4i)];
          let x_1451 : vec2<f32> = (vec2<f32>(x_1440.x, x_1440.y) + vec2<f32>(x_1449.x, x_1449.y));
          let x_1452 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1451.x, x_1451.y, x_1452.z, x_1452.w);
          let x_1454 : vec4<f32> = u_xlat10;
          let x_1457 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1458 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1457.x, x_1457.y, x_1458.z, x_1458.w);
          let x_1460 : vec4<f32> = u_xlat10;
          let x_1462 : vec2<f32> = fract(vec2<f32>(x_1460.x, x_1460.y));
          let x_1463 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
          let x_1465 : i32 = u_xlati41;
          let x_1467 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1465];
          let x_1469 : vec4<f32> = u_xlat10;
          let x_1472 : i32 = u_xlati41;
          let x_1474 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1472];
          let x_1476 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1469.x, x_1469.y)) + vec2<f32>(x_1474.z, x_1474.w));
          let x_1477 : vec3<f32> = u_xlat21;
          u_xlat21 = vec3<f32>(x_1476.x, x_1476.y, x_1477.z);
        } else {
          let x_1480 : vec3<f32> = vs_TEXCOORD1;
          let x_1482 : i32 = u_xlati9;
          let x_1485 : i32 = u_xlati9;
          let x_1489 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1482 + 1i) / 4i)][((x_1485 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1480.y, x_1480.y, x_1480.y, x_1480.y) * x_1489);
          let x_1491 : i32 = u_xlati9;
          let x_1493 : i32 = u_xlati9;
          let x_1496 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[(x_1491 / 4i)][(x_1493 % 4i)];
          let x_1497 : vec3<f32> = vs_TEXCOORD1;
          let x_1500 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1496 * vec4<f32>(x_1497.x, x_1497.x, x_1497.x, x_1497.x)) + x_1500);
          let x_1502 : i32 = u_xlati9;
          let x_1505 : i32 = u_xlati9;
          let x_1509 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1502 + 2i) / 4i)][((x_1505 + 2i) % 4i)];
          let x_1510 : vec3<f32> = vs_TEXCOORD1;
          let x_1513 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1509 * vec4<f32>(x_1510.z, x_1510.z, x_1510.z, x_1510.z)) + x_1513);
          let x_1515 : vec4<f32> = u_xlat10;
          let x_1516 : i32 = u_xlati9;
          let x_1519 : i32 = u_xlati9;
          let x_1523 : vec4<f32> = x_708.x_AdditionalLightsWorldToLights[((x_1516 + 3i) / 4i)][((x_1519 + 3i) % 4i)];
          u_xlat10 = (x_1515 + x_1523);
          let x_1525 : vec4<f32> = u_xlat10;
          let x_1527 : vec4<f32> = u_xlat10;
          let x_1529 : vec3<f32> = (vec3<f32>(x_1525.x, x_1525.y, x_1525.z) / vec3<f32>(x_1527.w, x_1527.w, x_1527.w));
          let x_1530 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
          let x_1532 : vec4<f32> = u_xlat10;
          let x_1534 : vec4<f32> = u_xlat10;
          u_xlat43 = dot(vec3<f32>(x_1532.x, x_1532.y, x_1532.z), vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
          let x_1537 : f32 = u_xlat43;
          u_xlat43 = inverseSqrt(x_1537);
          let x_1539 : f32 = u_xlat43;
          let x_1541 : vec4<f32> = u_xlat10;
          let x_1543 : vec3<f32> = (vec3<f32>(x_1539, x_1539, x_1539) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
          let x_1544 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
          let x_1546 : vec4<f32> = u_xlat10;
          u_xlat43 = dot(abs(vec3<f32>(x_1546.x, x_1546.y, x_1546.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1551 : f32 = u_xlat43;
          u_xlat43 = max(x_1551, 0.00000099999999747524f);
          let x_1554 : f32 = u_xlat43;
          u_xlat43 = (1.0f / x_1554);
          let x_1557 : f32 = u_xlat43;
          let x_1559 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1557, x_1557, x_1557) * vec3<f32>(x_1559.z, x_1559.x, x_1559.y));
          let x_1563 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1563);
          let x_1567 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1567, 0.0f, 1.0f);
          let x_1570 : vec3<f32> = u_xlat11;
          let x_1572 : vec4<bool> = (vec4<f32>(x_1570.y, x_1570.y, x_1570.y, x_1570.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1573 : vec2<bool> = vec2<bool>(x_1572.x, x_1572.w);
          let x_1574 : vec4<bool> = u_xlatb9;
          u_xlatb9 = vec4<bool>(x_1573.x, x_1574.y, x_1574.z, x_1573.y);
          let x_1577 : bool = u_xlatb9.x;
          if (x_1577) {
            let x_1582 : f32 = u_xlat11.x;
            x_1578 = x_1582;
          } else {
            let x_1585 : f32 = u_xlat11.x;
            x_1578 = -(x_1585);
          }
          let x_1587 : f32 = x_1578;
          u_xlat9.x = x_1587;
          let x_1590 : bool = u_xlatb9.w;
          if (x_1590) {
            let x_1595 : f32 = u_xlat11.x;
            x_1591 = x_1595;
          } else {
            let x_1598 : f32 = u_xlat11.x;
            x_1591 = -(x_1598);
          }
          let x_1600 : f32 = x_1591;
          u_xlat9.w = x_1600;
          let x_1602 : vec4<f32> = u_xlat10;
          let x_1604 : f32 = u_xlat43;
          let x_1607 : vec4<f32> = u_xlat9;
          let x_1609 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1604, x_1604)) + vec2<f32>(x_1607.x, x_1607.w));
          let x_1610 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1609.x, x_1610.y, x_1610.z, x_1609.y);
          let x_1612 : vec4<f32> = u_xlat9;
          let x_1615 : vec2<f32> = ((vec2<f32>(x_1612.x, x_1612.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1616 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1615.x, x_1616.y, x_1616.z, x_1615.y);
          let x_1618 : vec4<f32> = u_xlat9;
          let x_1622 : vec2<f32> = clamp(vec2<f32>(x_1618.x, x_1618.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1623 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1622.x, x_1623.y, x_1623.z, x_1622.y);
          let x_1625 : i32 = u_xlati41;
          let x_1627 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1625];
          let x_1629 : vec4<f32> = u_xlat9;
          let x_1632 : i32 = u_xlati41;
          let x_1634 : vec4<f32> = x_708.x_AdditionalLightsCookieAtlasUVRects[x_1632];
          let x_1636 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.x, x_1629.w)) + vec2<f32>(x_1634.z, x_1634.w));
          let x_1637 : vec3<f32> = u_xlat21;
          u_xlat21 = vec3<f32>(x_1636.x, x_1636.y, x_1637.z);
        }
      }
      let x_1644 : vec3<f32> = u_xlat21;
      let x_1646 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1644.x, x_1644.y), 0.0f);
      u_xlat9 = x_1646;
      let x_1648 : bool = u_xlatb6.y;
      if (x_1648) {
        let x_1653 : f32 = u_xlat9.w;
        x_1649 = x_1653;
      } else {
        let x_1656 : f32 = u_xlat9.x;
        x_1649 = x_1656;
      }
      let x_1657 : f32 = x_1649;
      u_xlat43 = x_1657;
      let x_1659 : bool = u_xlatb6.x;
      if (x_1659) {
        let x_1663 : vec4<f32> = u_xlat9;
        x_1660 = vec3<f32>(x_1663.x, x_1663.y, x_1663.z);
      } else {
        let x_1666 : f32 = u_xlat43;
        x_1660 = vec3<f32>(x_1666, x_1666, x_1666);
      }
      let x_1668 : vec3<f32> = x_1660;
      let x_1669 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1675 : vec4<f32> = u_xlat9;
    let x_1677 : i32 = u_xlati41;
    let x_1679 : vec4<f32> = x_1009.x_AdditionalLightsColor[x_1677];
    let x_1681 : vec3<f32> = (vec3<f32>(x_1675.x, x_1675.y, x_1675.z) * vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
    let x_1682 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
    let x_1684 : f32 = u_xlat42;
    let x_1685 : f32 = u_xlat30;
    u_xlat41 = (x_1684 * x_1685);
    let x_1687 : f32 = u_xlat41;
    let x_1689 : vec4<f32> = u_xlat9;
    let x_1691 : vec3<f32> = (vec3<f32>(x_1687, x_1687, x_1687) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
    let x_1692 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
    let x_1694 : vec3<f32> = u_xlat2;
    let x_1695 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1694, x_1695);
    let x_1697 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1697, 0.0f, 1.0f);
    let x_1699 : f32 = u_xlat41;
    let x_1701 : vec4<f32> = u_xlat9;
    let x_1703 : vec3<f32> = (vec3<f32>(x_1699, x_1699, x_1699) * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
    let x_1704 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
    let x_1706 : vec3<f32> = u_xlat3;
    let x_1707 : vec3<f32> = u_xlat12;
    let x_1710 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1706 * vec3<f32>(x_1707.x, x_1707.x, x_1707.x)) + x_1710);
    let x_1712 : vec3<f32> = u_xlat8;
    let x_1713 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1712, x_1713);
    let x_1715 : f32 = u_xlat41;
    u_xlat41 = max(x_1715, 1.17549435e-38f);
    let x_1717 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1717);
    let x_1719 : f32 = u_xlat41;
    let x_1721 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1719, x_1719, x_1719) * x_1721);
    let x_1723 : vec3<f32> = u_xlat2;
    let x_1724 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1723, x_1724);
    let x_1726 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1726, 0.0f, 1.0f);
    let x_1728 : f32 = u_xlat41;
    u_xlat41 = log2(x_1728);
    let x_1731 : f32 = u_xlat1.x;
    let x_1732 : f32 = u_xlat41;
    u_xlat41 = (x_1731 * x_1732);
    let x_1734 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1734);
    let x_1736 : f32 = u_xlat41;
    let x_1739 : vec4<f32> = x_58.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1736, x_1736, x_1736) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
    let x_1742 : vec3<f32> = u_xlat8;
    let x_1743 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1742 * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat10;
    let x_1748 : vec4<f32> = u_xlat1;
    let x_1751 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1746.x, x_1746.y, x_1746.z) * vec3<f32>(x_1748.y, x_1748.z, x_1748.w)) + x_1751);
    let x_1753 : vec3<f32> = u_xlat7;
    let x_1754 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1753 + x_1754);

    continuing {
      let x_1756 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1756 + bitcast<u32>(1i));
    }
  }
  let x_1758 : vec4<f32> = u_xlat5;
  let x_1760 : vec4<f32> = u_xlat1;
  let x_1763 : vec4<f32> = u_xlat4;
  let x_1765 : vec3<f32> = ((vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1760.y, x_1760.z, x_1760.w)) + vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec3<f32> = u_xlat7;
  let x_1769 : vec4<f32> = u_xlat1;
  let x_1771 : vec3<f32> = (x_1768 + vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : f32 = u_xlat36;
  let x_1775 : f32 = u_xlat36;
  u_xlat12.x = (x_1774 * -(x_1775));
  let x_1780 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1780);
  let x_1783 : vec4<f32> = u_xlat1;
  let x_1786 : vec4<f32> = x_45.unity_FogColor;
  let x_1789 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.y, x_1783.z) + -(vec3<f32>(x_1786.x, x_1786.y, x_1786.z)));
  let x_1790 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
  let x_1794 : vec3<f32> = u_xlat12;
  let x_1796 : vec4<f32> = u_xlat1;
  let x_1800 : vec4<f32> = x_45.unity_FogColor;
  let x_1802 : vec3<f32> = ((vec3<f32>(x_1794.x, x_1794.x, x_1794.x) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z)) + vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1803 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  let x_1806 : f32 = x_58.x_Surface;
  u_xlatb12 = (x_1806 == 1.0f);
  let x_1808 : bool = u_xlatb12;
  let x_1809 : bool = u_xlatb24;
  u_xlatb12 = (x_1808 | x_1809);
  let x_1811 : bool = u_xlatb12;
  if (x_1811) {
    let x_1816 : f32 = u_xlat0.x;
    x_1812 = x_1816;
  } else {
    x_1812 = 1.0f;
  }
  let x_1818 : f32 = x_1812;
  SV_Target0.w = x_1818;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


