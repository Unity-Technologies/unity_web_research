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

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_247 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_619 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_864 : AdditionalLights;

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
  var x_703 : f32;
  var x_714 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_994 : f32;
  var x_1004 : f32;
  var txVec1 : vec3<f32>;
  var x_1428 : f32;
  var x_1441 : f32;
  var x_1489 : f32;
  var x_1500 : vec3<f32>;
  var x_1608 : f32;
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
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_249 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres0;
  let x_252 : vec3<f32> = (x_239 + -(vec3<f32>(x_249.x, x_249.y, x_249.z)));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres1;
  let x_261 : vec3<f32> = (x_256 + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_265 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_273 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_285 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_292 : vec3<f32> = u_xlat5;
  let x_293 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_292, x_293);
  let x_296 : vec3<f32> = u_xlat6;
  let x_297 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_296, x_297);
  let x_303 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = x_247.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_303 < x_306);
  let x_309 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_309);
  let x_313 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_313);
  let x_317 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_325);
  let x_331 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_331);
  let x_335 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_335);
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.y, x_340.z, x_340.w));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_348 : vec3<f32> = max(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_348.x, x_348.y, x_348.z);
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_351, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_359 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_359) + 4.0f);
  let x_366 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_366);
  let x_370 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_370) << bitcast<u32>(2i));
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : i32 = u_xlati11;
  let x_378 : i32 = u_xlati11;
  let x_382 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_375 + 1i) / 4i)][((x_378 + 1i) % 4i)];
  let x_384 : vec3<f32> = (vec3<f32>(x_373.y, x_373.y, x_373.y) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : i32 = u_xlati11;
  let x_389 : i32 = u_xlati11;
  let x_392 : vec4<f32> = x_247.x_MainLightWorldToShadow[(x_387 / 4i)][(x_389 % 4i)];
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : i32 = u_xlati11;
  let x_405 : i32 = u_xlati11;
  let x_409 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_402 + 2i) / 4i)][((x_405 + 2i) % 4i)];
  let x_411 : vec3<f32> = vs_TEXCOORD1;
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.z, x_411.z, x_411.z)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : i32 = u_xlati11;
  let x_424 : i32 = u_xlati11;
  let x_428 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_421 + 3i) / 4i)][((x_424 + 3i) % 4i)];
  let x_430 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = vs_TEXCOORD1.y;
  let x_437 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat11.x = (x_434 * x_437);
  let x_441 : f32 = x_45.unity_MatrixV[0i].z;
  let x_443 : f32 = vs_TEXCOORD1.x;
  let x_446 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_441 * x_443) + x_446);
  let x_450 : f32 = x_45.unity_MatrixV[2i].z;
  let x_452 : f32 = vs_TEXCOORD1.z;
  let x_455 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_450 * x_452) + x_455);
  let x_459 : f32 = u_xlat11.x;
  let x_461 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat11.x = (x_459 + x_461);
  let x_465 : f32 = u_xlat11.x;
  let x_469 : f32 = x_45.x_ProjectionParams.y;
  u_xlat11.x = (-(x_465) + -(x_469));
  let x_474 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_474, 0.0f);
  let x_478 : f32 = u_xlat11.x;
  let x_481 : f32 = x_45.unity_FogParams.x;
  u_xlat11.x = (x_478 * x_481);
  let x_490 : vec2<f32> = vs_TEXCOORD7;
  let x_492 : f32 = x_45.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_490, x_492);
  u_xlat4 = x_493;
  let x_498 : vec2<f32> = vs_TEXCOORD7;
  let x_500 : f32 = x_45.x_GlobalMipBias.x;
  let x_501 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_498, x_500);
  u_xlat5 = vec3<f32>(x_501.x, x_501.y, x_501.z);
  let x_503 : vec4<f32> = u_xlat4;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat2;
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_510, vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : f32 = u_xlat33;
  u_xlat33 = (x_514 + 0.5f);
  let x_516 : f32 = u_xlat33;
  let x_518 : vec3<f32> = u_xlat5;
  let x_519 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * x_518);
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat4.w;
  u_xlat33 = max(x_523, 0.00009999999747378752f);
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : f32 = u_xlat33;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) / vec3<f32>(x_527, x_527, x_527));
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_534 : vec4<f32> = u_xlat3;
  let x_535 : vec2<f32> = vec2<f32>(x_534.x, x_534.y);
  let x_537 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_535.x, x_535.y, x_537);
  let x_549 : vec3<f32> = txVec0;
  let x_551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_549.xy, x_549.z);
  u_xlat33 = x_551;
  let x_554 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_554) + 1.0f);
  let x_558 : f32 = u_xlat33;
  let x_560 : f32 = x_247.x_MainLightShadowParams.x;
  let x_563 : f32 = u_xlat1.x;
  u_xlat33 = ((x_558 * x_560) + x_563);
  let x_567 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_567);
  let x_571 : f32 = u_xlat3.z;
  u_xlatb35 = (x_571 >= 1.0f);
  let x_573 : bool = u_xlatb1;
  let x_574 : bool = u_xlatb35;
  u_xlatb1 = (x_573 | x_574);
  let x_576 : bool = u_xlatb1;
  let x_577 : f32 = u_xlat33;
  u_xlat33 = select(x_577, 1.0f, x_576);
  let x_579 : vec3<f32> = vs_TEXCOORD1;
  let x_582 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_584 : vec3<f32> = (x_579 + -(x_582));
  let x_585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_587.x, x_587.y, x_587.z), vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_595 : f32 = u_xlat1.x;
  let x_597 : f32 = x_247.x_MainLightShadowParams.z;
  let x_600 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat35 = ((x_595 * x_597) + x_600);
  let x_602 : f32 = u_xlat35;
  u_xlat35 = clamp(x_602, 0.0f, 1.0f);
  let x_604 : f32 = u_xlat33;
  u_xlat3.x = (-(x_604) + 1.0f);
  let x_608 : f32 = u_xlat35;
  let x_610 : f32 = u_xlat3.x;
  let x_612 : f32 = u_xlat33;
  u_xlat33 = ((x_608 * x_610) + x_612);
  let x_621 : f32 = x_619.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_621 == -1.0f));
  let x_623 : bool = u_xlatb35;
  if (x_623) {
    let x_626 : vec3<f32> = vs_TEXCOORD1;
    let x_629 : vec4<f32> = x_619.x_MainLightWorldToLight[1i];
    let x_631 : vec2<f32> = (vec2<f32>(x_626.y, x_626.y) * vec2<f32>(x_629.x, x_629.y));
    let x_632 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
    let x_635 : vec4<f32> = x_619.x_MainLightWorldToLight[0i];
    let x_637 : vec3<f32> = vs_TEXCOORD1;
    let x_640 : vec4<f32> = u_xlat3;
    let x_642 : vec2<f32> = ((vec2<f32>(x_635.x, x_635.y) * vec2<f32>(x_637.x, x_637.x)) + vec2<f32>(x_640.x, x_640.y));
    let x_643 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
    let x_646 : vec4<f32> = x_619.x_MainLightWorldToLight[2i];
    let x_648 : vec3<f32> = vs_TEXCOORD1;
    let x_651 : vec4<f32> = u_xlat3;
    let x_653 : vec2<f32> = ((vec2<f32>(x_646.x, x_646.y) * vec2<f32>(x_648.z, x_648.z)) + vec2<f32>(x_651.x, x_651.y));
    let x_654 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
    let x_656 : vec4<f32> = u_xlat3;
    let x_659 : vec4<f32> = x_619.x_MainLightWorldToLight[3i];
    let x_661 : vec2<f32> = (vec2<f32>(x_656.x, x_656.y) + vec2<f32>(x_659.x, x_659.y));
    let x_662 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
    let x_664 : vec4<f32> = u_xlat3;
    let x_668 : vec2<f32> = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_669 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
    let x_676 : vec4<f32> = u_xlat3;
    let x_679 : f32 = x_45.x_GlobalMipBias.x;
    let x_680 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_676.x, x_676.y), x_679);
    u_xlat3 = x_680;
    let x_685 : f32 = x_619.x_MainLightCookieTextureFormat;
    let x_687 : f32 = x_619.x_MainLightCookieTextureFormat;
    let x_689 : f32 = x_619.x_MainLightCookieTextureFormat;
    let x_691 : f32 = x_619.x_MainLightCookieTextureFormat;
    let x_692 : vec4<f32> = vec4<f32>(x_685, x_687, x_689, x_691);
    let x_699 : vec4<bool> = (vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_699.x, x_699.y);
    let x_702 : bool = u_xlatb5.y;
    if (x_702) {
      let x_707 : f32 = u_xlat3.w;
      x_703 = x_707;
    } else {
      let x_710 : f32 = u_xlat3.x;
      x_703 = x_710;
    }
    let x_711 : f32 = x_703;
    u_xlat35 = x_711;
    let x_713 : bool = u_xlatb5.x;
    if (x_713) {
      let x_717 : vec4<f32> = u_xlat3;
      x_714 = vec3<f32>(x_717.x, x_717.y, x_717.z);
    } else {
      let x_720 : f32 = u_xlat35;
      x_714 = vec3<f32>(x_720, x_720, x_720);
    }
    let x_722 : vec3<f32> = x_714;
    let x_723 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_729 : vec4<f32> = u_xlat3;
  let x_732 : vec4<f32> = x_45.x_MainLightColor;
  let x_734 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : f32 = u_xlat33;
  let x_739 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_737 * x_739);
  let x_741 : f32 = u_xlat33;
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec3<f32> = (vec3<f32>(x_741, x_741, x_741) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat2;
  let x_750 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat33 = dot(x_748, vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : f32 = u_xlat33;
  u_xlat33 = clamp(x_753, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat33;
  let x_757 : vec4<f32> = u_xlat3;
  let x_759 : vec3<f32> = (vec3<f32>(x_755, x_755, x_755) * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat1;
  let x_764 : vec4<f32> = u_xlat3;
  let x_766 : vec3<f32> = (vec3<f32>(x_762.y, x_762.z, x_762.w) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_770 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_772 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_770, x_772);
  let x_775 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_775));
  let x_779 : f32 = u_xlat1.x;
  let x_782 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_785 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_779 * x_782) + x_785);
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_789, 0.0f, 1.0f);
  let x_793 : f32 = x_619.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_795 : f32 = x_619.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_797 : f32 = x_619.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_799 : f32 = x_619.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_800 : vec4<f32> = vec4<f32>(x_793, x_795, x_797, x_799);
  let x_806 : vec4<bool> = (vec4<f32>(x_800.x, x_800.y, x_800.z, x_800.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_806.x, x_806.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_818 : u32 = u_xlatu_loop_1;
    let x_819 : u32 = u_xlatu33;
    if ((x_818 < x_819)) {
    } else {
      break;
    }
    let x_822 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_822 >> 2u);
    let x_825 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_825 & 3u));
    let x_829 : u32 = u_xlatu36;
    let x_832 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_829)];
    let x_842 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_847 : vec4<u32> = indexable[x_842];
    u_xlat36 = dot(x_832, bitcast<vec4<f32>>(x_847));
    let x_851 : f32 = u_xlat36;
    u_xlati36 = i32(x_851);
    let x_854 : vec3<f32> = vs_TEXCOORD1;
    let x_865 : i32 = u_xlati36;
    let x_867 : vec4<f32> = x_864.x_AdditionalLightsPosition[x_865];
    let x_870 : i32 = u_xlati36;
    let x_872 : vec4<f32> = x_864.x_AdditionalLightsPosition[x_870];
    u_xlat7 = ((-(x_854) * vec3<f32>(x_867.w, x_867.w, x_867.w)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
    let x_876 : vec3<f32> = u_xlat7;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_876, x_877);
    let x_879 : f32 = u_xlat37;
    u_xlat37 = max(x_879, 0.00006103515625f);
    let x_883 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_883);
    let x_885 : f32 = u_xlat27;
    let x_887 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_885, x_885, x_885) * x_887);
    let x_889 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_889);
    let x_891 : f32 = u_xlat37;
    let x_892 : i32 = u_xlati36;
    let x_894 : f32 = x_864.x_AdditionalLightsAttenuation[x_892].x;
    u_xlat37 = (x_891 * x_894);
    let x_896 : f32 = u_xlat37;
    let x_898 : f32 = u_xlat37;
    u_xlat37 = ((-(x_896) * x_898) + 1.0f);
    let x_901 : f32 = u_xlat37;
    u_xlat37 = max(x_901, 0.0f);
    let x_903 : f32 = u_xlat37;
    let x_904 : f32 = u_xlat37;
    u_xlat37 = (x_903 * x_904);
    let x_906 : f32 = u_xlat37;
    let x_907 : f32 = u_xlat27;
    u_xlat37 = (x_906 * x_907);
    let x_909 : i32 = u_xlati36;
    let x_911 : vec4<f32> = x_864.x_AdditionalLightsSpotDir[x_909];
    let x_913 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), x_913);
    let x_915 : f32 = u_xlat27;
    let x_916 : i32 = u_xlati36;
    let x_918 : f32 = x_864.x_AdditionalLightsAttenuation[x_916].z;
    let x_920 : i32 = u_xlati36;
    let x_922 : f32 = x_864.x_AdditionalLightsAttenuation[x_920].w;
    u_xlat27 = ((x_915 * x_918) + x_922);
    let x_924 : f32 = u_xlat27;
    u_xlat27 = clamp(x_924, 0.0f, 1.0f);
    let x_926 : f32 = u_xlat27;
    let x_927 : f32 = u_xlat27;
    u_xlat27 = (x_926 * x_927);
    let x_929 : f32 = u_xlat37;
    let x_930 : f32 = u_xlat27;
    u_xlat37 = (x_929 * x_930);
    let x_934 : i32 = u_xlati36;
    let x_936 : f32 = x_247.x_AdditionalShadowParams[x_934].w;
    u_xlati27 = i32(x_936);
    let x_939 : i32 = u_xlati27;
    u_xlatb38 = (x_939 >= 0i);
    let x_941 : bool = u_xlatb38;
    if (x_941) {
      let x_945 : i32 = u_xlati36;
      let x_947 : f32 = x_247.x_AdditionalShadowParams[x_945].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_947, x_947, x_947, x_947))));
      let x_951 : bool = u_xlatb38;
      if (x_951) {
        let x_955 : vec3<f32> = u_xlat7;
        let x_958 : vec3<f32> = u_xlat7;
        let x_961 : vec4<bool> = (abs(vec4<f32>(x_955.z, x_955.z, x_955.y, x_955.z)) >= abs(vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.x)));
        let x_963 : vec3<bool> = vec3<bool>(x_961.x, x_961.y, x_961.z);
        let x_964 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_967 : bool = u_xlatb8.y;
        let x_969 : bool = u_xlatb8.x;
        u_xlatb38 = (x_967 & x_969);
        let x_971 : vec3<f32> = u_xlat7;
        let x_974 : vec4<bool> = (-(vec4<f32>(x_971.z, x_971.y, x_971.z, x_971.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_975 : vec3<bool> = vec3<bool>(x_974.x, x_974.y, x_974.w);
        let x_976 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_975.x, x_975.y, x_976.z, x_975.z);
        let x_980 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_980);
        let x_985 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_985);
        let x_990 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_990);
        let x_993 : bool = u_xlatb8.z;
        if (x_993) {
          let x_998 : f32 = u_xlat8.y;
          x_994 = x_998;
        } else {
          let x_1000 : f32 = u_xlat39;
          x_994 = x_1000;
        }
        let x_1001 : f32 = x_994;
        u_xlat39 = x_1001;
        let x_1003 : bool = u_xlatb38;
        if (x_1003) {
          let x_1008 : f32 = u_xlat8.x;
          x_1004 = x_1008;
        } else {
          let x_1010 : f32 = u_xlat39;
          x_1004 = x_1010;
        }
        let x_1011 : f32 = x_1004;
        u_xlat38 = x_1011;
        let x_1012 : i32 = u_xlati36;
        let x_1014 : f32 = x_247.x_AdditionalShadowParams[x_1012].w;
        u_xlat39 = trunc(x_1014);
        let x_1016 : f32 = u_xlat38;
        let x_1017 : f32 = u_xlat39;
        u_xlat38 = (x_1016 + x_1017);
        let x_1019 : f32 = u_xlat38;
        u_xlati27 = i32(x_1019);
      }
      let x_1021 : i32 = u_xlati27;
      u_xlati27 = (x_1021 << bitcast<u32>(2i));
      let x_1023 : vec3<f32> = vs_TEXCOORD1;
      let x_1026 : i32 = u_xlati27;
      let x_1029 : i32 = u_xlati27;
      let x_1033 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1026 + 1i) / 4i)][((x_1029 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1023.y, x_1023.y, x_1023.y, x_1023.y) * x_1033);
      let x_1035 : i32 = u_xlati27;
      let x_1037 : i32 = u_xlati27;
      let x_1040 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_1035 / 4i)][(x_1037 % 4i)];
      let x_1041 : vec3<f32> = vs_TEXCOORD1;
      let x_1044 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1040 * vec4<f32>(x_1041.x, x_1041.x, x_1041.x, x_1041.x)) + x_1044);
      let x_1046 : i32 = u_xlati27;
      let x_1049 : i32 = u_xlati27;
      let x_1053 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1046 + 2i) / 4i)][((x_1049 + 2i) % 4i)];
      let x_1054 : vec3<f32> = vs_TEXCOORD1;
      let x_1057 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1053 * vec4<f32>(x_1054.z, x_1054.z, x_1054.z, x_1054.z)) + x_1057);
      let x_1059 : vec4<f32> = u_xlat8;
      let x_1060 : i32 = u_xlati27;
      let x_1063 : i32 = u_xlati27;
      let x_1067 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_1060 + 3i) / 4i)][((x_1063 + 3i) % 4i)];
      u_xlat8 = (x_1059 + x_1067);
      let x_1069 : vec4<f32> = u_xlat8;
      let x_1071 : vec4<f32> = u_xlat8;
      let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) / vec3<f32>(x_1071.w, x_1071.w, x_1071.w));
      let x_1074 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
      let x_1077 : vec4<f32> = u_xlat8;
      let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
      let x_1080 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
      let x_1088 : vec3<f32> = txVec1;
      let x_1090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
      u_xlat27 = x_1090;
      let x_1091 : i32 = u_xlati36;
      let x_1093 : f32 = x_247.x_AdditionalShadowParams[x_1091].x;
      u_xlat38 = (1.0f + -(x_1093));
      let x_1096 : f32 = u_xlat27;
      let x_1097 : i32 = u_xlati36;
      let x_1099 : f32 = x_247.x_AdditionalShadowParams[x_1097].x;
      let x_1101 : f32 = u_xlat38;
      u_xlat27 = ((x_1096 * x_1099) + x_1101);
      let x_1104 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1104);
      let x_1108 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1108 >= 1.0f);
      let x_1110 : bool = u_xlatb38;
      let x_1111 : bool = u_xlatb39;
      u_xlatb38 = (x_1110 | x_1111);
      let x_1113 : bool = u_xlatb38;
      let x_1114 : f32 = u_xlat27;
      u_xlat27 = select(x_1114, 1.0f, x_1113);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1117 : f32 = u_xlat27;
    u_xlat38 = (-(x_1117) + 1.0f);
    let x_1121 : f32 = u_xlat1.x;
    let x_1122 : f32 = u_xlat38;
    let x_1124 : f32 = u_xlat27;
    u_xlat27 = ((x_1121 * x_1122) + x_1124);
    let x_1127 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1127 & 31i)));
    let x_1131 : i32 = u_xlati38;
    let x_1134 : f32 = x_619.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1131) & bitcast<u32>(x_1134)));
    let x_1138 : i32 = u_xlati38;
    if ((x_1138 != 0i)) {
      let x_1142 : i32 = u_xlati36;
      let x_1144 : f32 = x_619.x_AdditionalLightsLightTypes[x_1142].el;
      u_xlati38 = i32(x_1144);
      let x_1147 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1147 != 0i));
      let x_1151 : i32 = u_xlati36;
      u_xlati40 = (x_1151 << bitcast<u32>(2i));
      let x_1153 : i32 = u_xlati39;
      if ((x_1153 != 0i)) {
        let x_1157 : vec3<f32> = vs_TEXCOORD1;
        let x_1159 : i32 = u_xlati40;
        let x_1162 : i32 = u_xlati40;
        let x_1166 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1159 + 1i) / 4i)][((x_1162 + 1i) % 4i)];
        let x_1168 : vec3<f32> = (vec3<f32>(x_1157.y, x_1157.y, x_1157.y) * vec3<f32>(x_1166.x, x_1166.y, x_1166.w));
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : i32 = u_xlati40;
        let x_1173 : i32 = u_xlati40;
        let x_1176 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[(x_1171 / 4i)][(x_1173 % 4i)];
        let x_1178 : vec3<f32> = vs_TEXCOORD1;
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec3<f32> = ((vec3<f32>(x_1176.x, x_1176.y, x_1176.w) * vec3<f32>(x_1178.x, x_1178.x, x_1178.x)) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
        let x_1186 : i32 = u_xlati40;
        let x_1189 : i32 = u_xlati40;
        let x_1193 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1186 + 2i) / 4i)][((x_1189 + 2i) % 4i)];
        let x_1195 : vec3<f32> = vs_TEXCOORD1;
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1200 : vec3<f32> = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.w) * vec3<f32>(x_1195.z, x_1195.z, x_1195.z)) + vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : i32 = u_xlati40;
        let x_1208 : i32 = u_xlati40;
        let x_1212 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1205 + 3i) / 4i)][((x_1208 + 3i) % 4i)];
        let x_1214 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) + vec3<f32>(x_1212.x, x_1212.y, x_1212.w));
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat8;
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1221 : vec2<f32> = (vec2<f32>(x_1217.x, x_1217.y) / vec2<f32>(x_1219.z, x_1219.z));
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1227 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat8;
        let x_1234 : vec2<f32> = clamp(vec2<f32>(x_1230.x, x_1230.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1237 : i32 = u_xlati36;
        let x_1239 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1237];
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1244 : i32 = u_xlati36;
        let x_1246 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1244];
        let x_1248 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1246.z, x_1246.w));
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
      } else {
        let x_1252 : i32 = u_xlati38;
        u_xlatb38 = (x_1252 == 1i);
        let x_1254 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1254);
        let x_1256 : i32 = u_xlati38;
        if ((x_1256 != 0i)) {
          let x_1262 : vec3<f32> = vs_TEXCOORD1;
          let x_1264 : i32 = u_xlati40;
          let x_1267 : i32 = u_xlati40;
          let x_1271 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1264 + 1i) / 4i)][((x_1267 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1262.y, x_1262.y) * vec2<f32>(x_1271.x, x_1271.y));
          let x_1274 : i32 = u_xlati40;
          let x_1276 : i32 = u_xlati40;
          let x_1279 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[(x_1274 / 4i)][(x_1276 % 4i)];
          let x_1281 : vec3<f32> = vs_TEXCOORD1;
          let x_1284 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1281.x, x_1281.x)) + x_1284);
          let x_1286 : i32 = u_xlati40;
          let x_1289 : i32 = u_xlati40;
          let x_1293 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1286 + 2i) / 4i)][((x_1289 + 2i) % 4i)];
          let x_1295 : vec3<f32> = vs_TEXCOORD1;
          let x_1298 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1295.z, x_1295.z)) + x_1298);
          let x_1300 : vec2<f32> = u_xlat30;
          let x_1301 : i32 = u_xlati40;
          let x_1304 : i32 = u_xlati40;
          let x_1308 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1301 + 3i) / 4i)][((x_1304 + 3i) % 4i)];
          u_xlat30 = (x_1300 + vec2<f32>(x_1308.x, x_1308.y));
          let x_1311 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1311 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1314 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1314);
          let x_1316 : i32 = u_xlati36;
          let x_1318 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1316];
          let x_1320 : vec2<f32> = u_xlat30;
          let x_1322 : i32 = u_xlati36;
          let x_1324 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1322];
          let x_1326 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * x_1320) + vec2<f32>(x_1324.z, x_1324.w));
          let x_1327 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        } else {
          let x_1331 : vec3<f32> = vs_TEXCOORD1;
          let x_1333 : i32 = u_xlati40;
          let x_1336 : i32 = u_xlati40;
          let x_1340 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1331.y, x_1331.y, x_1331.y, x_1331.y) * x_1340);
          let x_1342 : i32 = u_xlati40;
          let x_1344 : i32 = u_xlati40;
          let x_1347 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[(x_1342 / 4i)][(x_1344 % 4i)];
          let x_1348 : vec3<f32> = vs_TEXCOORD1;
          let x_1351 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1347 * vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x)) + x_1351);
          let x_1353 : i32 = u_xlati40;
          let x_1356 : i32 = u_xlati40;
          let x_1360 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1353 + 2i) / 4i)][((x_1356 + 2i) % 4i)];
          let x_1361 : vec3<f32> = vs_TEXCOORD1;
          let x_1364 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1360 * vec4<f32>(x_1361.z, x_1361.z, x_1361.z, x_1361.z)) + x_1364);
          let x_1366 : vec4<f32> = u_xlat9;
          let x_1367 : i32 = u_xlati40;
          let x_1370 : i32 = u_xlati40;
          let x_1374 : vec4<f32> = x_619.x_AdditionalLightsWorldToLights[((x_1367 + 3i) / 4i)][((x_1370 + 3i) % 4i)];
          u_xlat9 = (x_1366 + x_1374);
          let x_1376 : vec4<f32> = u_xlat9;
          let x_1378 : vec4<f32> = u_xlat9;
          let x_1380 : vec3<f32> = (vec3<f32>(x_1376.x, x_1376.y, x_1376.z) / vec3<f32>(x_1378.w, x_1378.w, x_1378.w));
          let x_1381 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
          let x_1383 : vec4<f32> = u_xlat9;
          let x_1385 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
          let x_1388 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1388);
          let x_1390 : f32 = u_xlat38;
          let x_1392 : vec4<f32> = u_xlat9;
          let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
          let x_1395 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
          let x_1397 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1397.x, x_1397.y, x_1397.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1402 : f32 = u_xlat38;
          u_xlat38 = max(x_1402, 0.00000099999999747524f);
          let x_1405 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1405);
          let x_1408 : f32 = u_xlat38;
          let x_1410 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1408, x_1408, x_1408) * vec3<f32>(x_1410.z, x_1410.x, x_1410.y));
          let x_1414 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1414);
          let x_1418 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1418, 0.0f, 1.0f);
          let x_1422 : vec3<f32> = u_xlat10;
          let x_1424 : vec4<bool> = (vec4<f32>(x_1422.y, x_1422.z, x_1422.y, x_1422.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1424.x, x_1424.y);
          let x_1427 : bool = u_xlatb30.x;
          if (x_1427) {
            let x_1432 : f32 = u_xlat10.x;
            x_1428 = x_1432;
          } else {
            let x_1435 : f32 = u_xlat10.x;
            x_1428 = -(x_1435);
          }
          let x_1437 : f32 = x_1428;
          u_xlat30.x = x_1437;
          let x_1440 : bool = u_xlatb30.y;
          if (x_1440) {
            let x_1445 : f32 = u_xlat10.x;
            x_1441 = x_1445;
          } else {
            let x_1448 : f32 = u_xlat10.x;
            x_1441 = -(x_1448);
          }
          let x_1450 : f32 = x_1441;
          u_xlat30.y = x_1450;
          let x_1452 : vec4<f32> = u_xlat9;
          let x_1454 : f32 = u_xlat38;
          let x_1457 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1452.x, x_1452.y) * vec2<f32>(x_1454, x_1454)) + x_1457);
          let x_1459 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1459 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1462 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1462, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1466 : i32 = u_xlati36;
          let x_1468 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1466];
          let x_1470 : vec2<f32> = u_xlat30;
          let x_1472 : i32 = u_xlati36;
          let x_1474 : vec4<f32> = x_619.x_AdditionalLightsCookieAtlasUVRects[x_1472];
          let x_1476 : vec2<f32> = ((vec2<f32>(x_1468.x, x_1468.y) * x_1470) + vec2<f32>(x_1474.z, x_1474.w));
          let x_1477 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
        }
      }
      let x_1484 : vec4<f32> = u_xlat8;
      let x_1486 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1484.x, x_1484.y), 0.0f);
      u_xlat8 = x_1486;
      let x_1488 : bool = u_xlatb5.y;
      if (x_1488) {
        let x_1493 : f32 = u_xlat8.w;
        x_1489 = x_1493;
      } else {
        let x_1496 : f32 = u_xlat8.x;
        x_1489 = x_1496;
      }
      let x_1497 : f32 = x_1489;
      u_xlat38 = x_1497;
      let x_1499 : bool = u_xlatb5.x;
      if (x_1499) {
        let x_1503 : vec4<f32> = u_xlat8;
        x_1500 = vec3<f32>(x_1503.x, x_1503.y, x_1503.z);
      } else {
        let x_1506 : f32 = u_xlat38;
        x_1500 = vec3<f32>(x_1506, x_1506, x_1506);
      }
      let x_1508 : vec3<f32> = x_1500;
      let x_1509 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1515 : vec4<f32> = u_xlat8;
    let x_1517 : i32 = u_xlati36;
    let x_1519 : vec4<f32> = x_864.x_AdditionalLightsColor[x_1517];
    let x_1521 : vec3<f32> = (vec3<f32>(x_1515.x, x_1515.y, x_1515.z) * vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
    let x_1522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
    let x_1524 : f32 = u_xlat37;
    let x_1525 : f32 = u_xlat27;
    u_xlat36 = (x_1524 * x_1525);
    let x_1527 : f32 = u_xlat36;
    let x_1529 : vec4<f32> = u_xlat8;
    let x_1531 : vec3<f32> = (vec3<f32>(x_1527, x_1527, x_1527) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
    let x_1532 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
    let x_1534 : vec3<f32> = u_xlat2;
    let x_1535 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1534, x_1535);
    let x_1537 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1537, 0.0f, 1.0f);
    let x_1539 : f32 = u_xlat36;
    let x_1541 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1539, x_1539, x_1539) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
    let x_1544 : vec3<f32> = u_xlat7;
    let x_1545 : vec4<f32> = u_xlat1;
    let x_1548 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1544 * vec3<f32>(x_1545.y, x_1545.z, x_1545.w)) + x_1548);

    continuing {
      let x_1550 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1550 + bitcast<u32>(1i));
    }
  }
  let x_1552 : vec4<f32> = u_xlat4;
  let x_1554 : vec4<f32> = u_xlat1;
  let x_1557 : vec4<f32> = u_xlat3;
  let x_1559 : vec3<f32> = ((vec3<f32>(x_1552.x, x_1552.y, x_1552.z) * vec3<f32>(x_1554.y, x_1554.z, x_1554.w)) + vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1562 : vec3<f32> = u_xlat6;
  let x_1563 : vec4<f32> = u_xlat1;
  let x_1565 : vec3<f32> = (x_1562 + vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1569 : f32 = u_xlat11.x;
  let x_1571 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1569 * -(x_1571));
  let x_1576 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1576);
  let x_1579 : vec4<f32> = u_xlat1;
  let x_1582 : vec4<f32> = x_45.unity_FogColor;
  let x_1585 : vec3<f32> = (vec3<f32>(x_1579.x, x_1579.y, x_1579.z) + -(vec3<f32>(x_1582.x, x_1582.y, x_1582.z)));
  let x_1586 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
  let x_1590 : vec3<f32> = u_xlat11;
  let x_1592 : vec4<f32> = u_xlat1;
  let x_1596 : vec4<f32> = x_45.unity_FogColor;
  let x_1598 : vec3<f32> = ((vec3<f32>(x_1590.x, x_1590.x, x_1590.x) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z)) + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1602 : f32 = x_58.x_Surface;
  u_xlatb11 = (x_1602 == 1.0f);
  let x_1604 : bool = u_xlatb11;
  let x_1605 : bool = u_xlatb22;
  u_xlatb11 = (x_1604 | x_1605);
  let x_1607 : bool = u_xlatb11;
  if (x_1607) {
    let x_1612 : f32 = u_xlat0.x;
    x_1608 = x_1612;
  } else {
    x_1608 = 1.0f;
  }
  let x_1614 : f32 = x_1608;
  SV_Target0.w = x_1614;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


