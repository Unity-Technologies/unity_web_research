diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_345 : LightShadows;

var<private> u_xlatb4 : bool;

var<private> u_xlatb15 : vec2<bool>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat26 : f32;

@group(1) @binding(5) var<uniform> x_415 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat38 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlatu39 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlat39 : f32;

var<private> u_xlati39 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_709 : AdditionalLights;

var<private> u_xlat40 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlati8 : i32;

var<private> u_xlatb19 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec3<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlati19 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlatb21 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlatu38 : u32;

var<private> u_xlatb39 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_501 : f32;
  var x_512 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_855 : f32;
  var x_866 : f32;
  var txVec1 : vec3<f32>;
  var x_989 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1329 : f32;
  var x_1342 : f32;
  var x_1401 : f32;
  var x_1413 : vec3<f32>;
  var x_1549 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb12 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb12;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat12;
  let x_151 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat12;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat12 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat12;
    x_175 = x_178;
  } else {
    let x_180 : vec4<f32> = u_xlat2;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat1 = x_182;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  let x_186 : vec3<f32> = vs_TEXCOORD2;
  u_xlat34 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat34;
  let x_192 : vec3<f32> = vs_TEXCOORD2;
  let x_193 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat34;
  u_xlat34 = max(x_199, 0.00006103515625f);
  let x_202 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_202);
  let x_206 : f32 = vs_TEXCOORD1.y;
  let x_208 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3 = (x_206 * x_208);
  let x_211 : f32 = x_45.unity_MatrixV[0i].z;
  let x_213 : f32 = vs_TEXCOORD1.x;
  let x_215 : f32 = u_xlat3;
  u_xlat3 = ((x_211 * x_213) + x_215);
  let x_218 : f32 = x_45.unity_MatrixV[2i].z;
  let x_220 : f32 = vs_TEXCOORD1.z;
  let x_222 : f32 = u_xlat3;
  u_xlat3 = ((x_218 * x_220) + x_222);
  let x_224 : f32 = u_xlat3;
  let x_227 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat3 = (x_224 + x_227);
  let x_229 : f32 = u_xlat3;
  let x_233 : f32 = x_45.x_ProjectionParams.y;
  u_xlat3 = (-(x_229) + -(x_233));
  let x_236 : f32 = u_xlat3;
  u_xlat3 = max(x_236, 0.0f);
  let x_238 : f32 = u_xlat3;
  let x_241 : f32 = x_45.unity_FogParams.x;
  u_xlat3 = (x_238 * x_241);
  u_xlat2.w = 1.0f;
  let x_247 : vec4<f32> = x_95.unity_SHAr;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_247, x_248);
  let x_253 : vec4<f32> = x_95.unity_SHAg;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_253, x_254);
  let x_259 : vec4<f32> = x_95.unity_SHAb;
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_259, x_260);
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_264.y, x_264.z, x_264.z, x_264.x) * vec4<f32>(x_266.x, x_266.y, x_266.z, x_266.z));
  let x_272 : vec4<f32> = x_95.unity_SHBr;
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_95.unity_SHBg;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_95.unity_SHBb;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_284, x_285);
  let x_290 : f32 = u_xlat2.y;
  let x_292 : f32 = u_xlat2.y;
  u_xlat35 = (x_290 * x_292);
  let x_295 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat35;
  u_xlat35 = ((x_295 * x_297) + -(x_299));
  let x_305 : vec4<f32> = x_95.unity_SHC;
  let x_307 : f32 = u_xlat35;
  let x_310 : vec3<f32> = u_xlat6;
  u_xlat14 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307, x_307, x_307)) + x_310);
  let x_312 : vec3<f32> = u_xlat14;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_312 + x_313);
  let x_315 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_315, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_320 : vec4<f32> = vs_TEXCOORD6;
  let x_321 : vec2<f32> = vec2<f32>(x_320.x, x_320.y);
  let x_323 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_321.x, x_321.y, x_323);
  let x_335 : vec3<f32> = txVec0;
  let x_337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_335.xy, x_335.z);
  u_xlat35 = x_337;
  let x_348 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_348) + 1.0f);
  let x_352 : f32 = u_xlat35;
  let x_354 : f32 = x_345.x_MainLightShadowParams.x;
  let x_357 : f32 = u_xlat4.x;
  u_xlat35 = ((x_352 * x_354) + x_357);
  let x_361 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_361);
  let x_367 : f32 = vs_TEXCOORD6.z;
  u_xlatb15.x = (x_367 >= 1.0f);
  let x_371 : bool = u_xlatb15.x;
  let x_372 : bool = u_xlatb4;
  u_xlatb4 = (x_371 | x_372);
  let x_374 : bool = u_xlatb4;
  let x_375 : f32 = u_xlat35;
  u_xlat35 = select(x_375, 1.0f, x_374);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (x_377 + -(x_379));
  let x_382 : vec3<f32> = u_xlat4;
  let x_383 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_382, x_383);
  let x_388 : f32 = u_xlat4.x;
  let x_390 : f32 = x_345.x_MainLightShadowParams.z;
  let x_393 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_388 * x_390) + x_393);
  let x_397 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_397, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat35;
  u_xlat26 = (-(x_401) + 1.0f);
  let x_405 : f32 = u_xlat15.x;
  let x_406 : f32 = u_xlat26;
  let x_408 : f32 = u_xlat35;
  u_xlat35 = ((x_405 * x_406) + x_408);
  let x_417 : f32 = x_415.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_417 == -1.0f));
  let x_422 : bool = u_xlatb15.x;
  if (x_422) {
    let x_425 : vec3<f32> = vs_TEXCOORD1;
    let x_428 : vec4<f32> = x_415.x_MainLightWorldToLight[1i];
    let x_430 : vec2<f32> = (vec2<f32>(x_425.y, x_425.y) * vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_430.x, x_430.y, x_431.z);
    let x_434 : vec4<f32> = x_415.x_MainLightWorldToLight[0i];
    let x_436 : vec3<f32> = vs_TEXCOORD1;
    let x_439 : vec3<f32> = u_xlat15;
    let x_441 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_436.x, x_436.x)) + vec2<f32>(x_439.x, x_439.y));
    let x_442 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_441.x, x_441.y, x_442.z);
    let x_445 : vec4<f32> = x_415.x_MainLightWorldToLight[2i];
    let x_447 : vec3<f32> = vs_TEXCOORD1;
    let x_450 : vec3<f32> = u_xlat15;
    let x_452 : vec2<f32> = ((vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_447.z, x_447.z)) + vec2<f32>(x_450.x, x_450.y));
    let x_453 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_452.x, x_452.y, x_453.z);
    let x_455 : vec3<f32> = u_xlat15;
    let x_458 : vec4<f32> = x_415.x_MainLightWorldToLight[3i];
    let x_460 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) + vec2<f32>(x_458.x, x_458.y));
    let x_461 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_460.x, x_460.y, x_461.z);
    let x_463 : vec3<f32> = u_xlat15;
    let x_468 : vec2<f32> = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_469 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_468.x, x_468.y, x_469.z);
    let x_476 : vec3<f32> = u_xlat15;
    let x_479 : f32 = x_45.x_GlobalMipBias.x;
    let x_480 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_476.x, x_476.y), x_479);
    u_xlat5 = x_480;
    let x_482 : f32 = x_415.x_MainLightCookieTextureFormat;
    let x_484 : f32 = x_415.x_MainLightCookieTextureFormat;
    let x_486 : f32 = x_415.x_MainLightCookieTextureFormat;
    let x_488 : f32 = x_415.x_MainLightCookieTextureFormat;
    let x_489 : vec4<f32> = vec4<f32>(x_482, x_484, x_486, x_488);
    let x_497 : vec4<bool> = (vec4<f32>(x_489.x, x_489.y, x_489.z, x_489.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_497.x, x_497.y);
    let x_500 : bool = u_xlatb15.y;
    if (x_500) {
      let x_505 : f32 = u_xlat5.w;
      x_501 = x_505;
    } else {
      let x_508 : f32 = u_xlat5.x;
      x_501 = x_508;
    }
    let x_509 : f32 = x_501;
    u_xlat26 = x_509;
    let x_511 : bool = u_xlatb15.x;
    if (x_511) {
      let x_515 : vec4<f32> = u_xlat5;
      x_512 = vec3<f32>(x_515.x, x_515.y, x_515.z);
    } else {
      let x_518 : f32 = u_xlat26;
      x_512 = vec3<f32>(x_518, x_518, x_518);
    }
    let x_520 : vec3<f32> = x_512;
    u_xlat15 = x_520;
  } else {
    u_xlat15.x = 1.0f;
    u_xlat15.y = 1.0f;
    u_xlat15.z = 1.0f;
  }
  let x_525 : vec3<f32> = u_xlat15;
  let x_527 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat15 = (x_525 * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : f32 = u_xlat35;
  let x_532 : f32 = x_95.unity_LightData.z;
  u_xlat35 = (x_530 * x_532);
  let x_534 : f32 = u_xlat35;
  let x_536 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_534, x_534, x_534) * x_536);
  let x_538 : vec4<f32> = u_xlat2;
  let x_541 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : f32 = u_xlat35;
  u_xlat35 = clamp(x_544, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat35;
  let x_548 : vec3<f32> = u_xlat15;
  let x_549 : vec3<f32> = (vec3<f32>(x_546, x_546, x_546) * x_548);
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_553 : f32 = u_xlat0.x;
  u_xlat35 = ((x_553 * 10.0f) + 1.0f);
  let x_557 : f32 = u_xlat35;
  u_xlat35 = exp2(x_557);
  let x_559 : vec3<f32> = u_xlat1;
  let x_560 : f32 = u_xlat34;
  let x_564 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_559 * vec3<f32>(x_560, x_560, x_560)) + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_568 : vec3<f32> = u_xlat6;
  let x_569 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_568, x_569);
  let x_571 : f32 = u_xlat38;
  u_xlat38 = max(x_571, 1.17549435e-38f);
  let x_574 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_574);
  let x_576 : f32 = u_xlat38;
  let x_578 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_576, x_576, x_576) * x_578);
  let x_580 : vec4<f32> = u_xlat2;
  let x_582 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), x_582);
  let x_584 : f32 = u_xlat38;
  u_xlat38 = clamp(x_584, 0.0f, 1.0f);
  let x_586 : f32 = u_xlat38;
  u_xlat38 = log2(x_586);
  let x_588 : f32 = u_xlat35;
  let x_589 : f32 = u_xlat38;
  u_xlat38 = (x_588 * x_589);
  let x_591 : f32 = u_xlat38;
  u_xlat38 = exp2(x_591);
  let x_593 : f32 = u_xlat38;
  let x_596 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec3<f32> = u_xlat15;
  let x_600 : vec3<f32> = u_xlat6;
  u_xlat15 = (x_599 * x_600);
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604.y, x_604.z, x_604.w)) + x_607);
  let x_610 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_612 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_610, x_612);
  let x_618 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_618));
  let x_622 : f32 = u_xlat4.x;
  let x_625 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_628 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_622 * x_625) + x_628);
  let x_632 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_632, 0.0f, 1.0f);
  let x_637 : f32 = x_415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_639 : f32 = x_415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_641 : f32 = x_415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_643 : f32 = x_415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_644 : vec4<f32> = vec4<f32>(x_637, x_639, x_641, x_643);
  let x_650 : vec4<bool> = (vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_650.x, x_650.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_662 : u32 = u_xlatu_loop_1;
    let x_663 : u32 = u_xlatu5;
    if ((x_662 < x_663)) {
    } else {
      break;
    }
    let x_666 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_666 >> 2u);
    let x_670 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_670 & 3u));
    let x_674 : u32 = u_xlatu39;
    let x_677 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_674)];
    let x_687 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_692 : vec4<u32> = indexable[x_687];
    u_xlat39 = dot(x_677, bitcast<vec4<f32>>(x_692));
    let x_696 : f32 = u_xlat39;
    u_xlati39 = i32(x_696);
    let x_699 : vec3<f32> = vs_TEXCOORD1;
    let x_710 : i32 = u_xlati39;
    let x_712 : vec4<f32> = x_709.x_AdditionalLightsPosition[x_710];
    let x_715 : i32 = u_xlati39;
    let x_717 : vec4<f32> = x_709.x_AdditionalLightsPosition[x_715];
    u_xlat7 = ((-(x_699) * vec3<f32>(x_712.w, x_712.w, x_712.w)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
    let x_721 : vec3<f32> = u_xlat7;
    let x_722 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(x_721, x_722);
    let x_724 : f32 = u_xlat40;
    u_xlat40 = max(x_724, 0.00006103515625f);
    let x_727 : f32 = u_xlat40;
    u_xlat8.x = inverseSqrt(x_727);
    let x_730 : vec3<f32> = u_xlat7;
    let x_731 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_730 * vec3<f32>(x_731.x, x_731.x, x_731.x));
    let x_734 : f32 = u_xlat40;
    u_xlat8.x = (1.0f / x_734);
    let x_737 : f32 = u_xlat40;
    let x_738 : i32 = u_xlati39;
    let x_740 : f32 = x_709.x_AdditionalLightsAttenuation[x_738].x;
    u_xlat40 = (x_737 * x_740);
    let x_742 : f32 = u_xlat40;
    let x_744 : f32 = u_xlat40;
    u_xlat40 = ((-(x_742) * x_744) + 1.0f);
    let x_747 : f32 = u_xlat40;
    u_xlat40 = max(x_747, 0.0f);
    let x_749 : f32 = u_xlat40;
    let x_750 : f32 = u_xlat40;
    u_xlat40 = (x_749 * x_750);
    let x_752 : f32 = u_xlat40;
    let x_754 : f32 = u_xlat8.x;
    u_xlat40 = (x_752 * x_754);
    let x_756 : i32 = u_xlati39;
    let x_758 : vec4<f32> = x_709.x_AdditionalLightsSpotDir[x_756];
    let x_760 : vec3<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_758.x, x_758.y, x_758.z), x_760);
    let x_764 : f32 = u_xlat8.x;
    let x_765 : i32 = u_xlati39;
    let x_767 : f32 = x_709.x_AdditionalLightsAttenuation[x_765].z;
    let x_769 : i32 = u_xlati39;
    let x_771 : f32 = x_709.x_AdditionalLightsAttenuation[x_769].w;
    u_xlat8.x = ((x_764 * x_767) + x_771);
    let x_775 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_775, 0.0f, 1.0f);
    let x_779 : f32 = u_xlat8.x;
    let x_781 : f32 = u_xlat8.x;
    u_xlat8.x = (x_779 * x_781);
    let x_784 : f32 = u_xlat40;
    let x_786 : f32 = u_xlat8.x;
    u_xlat40 = (x_784 * x_786);
    let x_790 : i32 = u_xlati39;
    let x_792 : f32 = x_345.x_AdditionalShadowParams[x_790].w;
    u_xlati8 = i32(x_792);
    let x_797 : i32 = u_xlati8;
    u_xlatb19.x = (x_797 >= 0i);
    let x_801 : bool = u_xlatb19.x;
    if (x_801) {
      let x_805 : i32 = u_xlati39;
      let x_807 : f32 = x_345.x_AdditionalShadowParams[x_805].z;
      u_xlatb19.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_807, x_807, x_807, x_807))));
      let x_813 : bool = u_xlatb19.x;
      if (x_813) {
        let x_816 : vec3<f32> = u_xlat7;
        let x_819 : vec3<f32> = u_xlat7;
        let x_822 : vec4<bool> = (abs(vec4<f32>(x_816.z, x_816.z, x_816.y, x_816.y)) >= abs(vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.x)));
        u_xlatb19 = vec3<bool>(x_822.x, x_822.y, x_822.z);
        let x_825 : bool = u_xlatb19.y;
        let x_827 : bool = u_xlatb19.x;
        u_xlatb19.x = (x_825 & x_827);
        let x_831 : vec3<f32> = u_xlat7;
        let x_834 : vec4<bool> = (-(vec4<f32>(x_831.z, x_831.y, x_831.x, x_831.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_834.x, x_834.y, x_834.z);
        let x_838 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_838);
        let x_844 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_844);
        let x_851 : bool = u_xlatb9.z;
        u_xlat30 = select(0.0f, 1.0f, x_851);
        let x_854 : bool = u_xlatb19.z;
        if (x_854) {
          let x_859 : f32 = u_xlat9.y;
          x_855 = x_859;
        } else {
          let x_861 : f32 = u_xlat30;
          x_855 = x_861;
        }
        let x_862 : f32 = x_855;
        u_xlat30 = x_862;
        let x_865 : bool = u_xlatb19.x;
        if (x_865) {
          let x_870 : f32 = u_xlat9.x;
          x_866 = x_870;
        } else {
          let x_872 : f32 = u_xlat30;
          x_866 = x_872;
        }
        let x_873 : f32 = x_866;
        u_xlat19.x = x_873;
        let x_875 : i32 = u_xlati39;
        let x_877 : f32 = x_345.x_AdditionalShadowParams[x_875].w;
        u_xlat30 = trunc(x_877);
        let x_880 : f32 = u_xlat19.x;
        let x_881 : f32 = u_xlat30;
        u_xlat19.x = (x_880 + x_881);
        let x_885 : f32 = u_xlat19.x;
        u_xlati8 = i32(x_885);
      }
      let x_887 : i32 = u_xlati8;
      u_xlati8 = (x_887 << bitcast<u32>(2i));
      let x_889 : vec3<f32> = vs_TEXCOORD1;
      let x_892 : i32 = u_xlati8;
      let x_895 : i32 = u_xlati8;
      let x_899 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_892 + 1i) / 4i)][((x_895 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_889.y, x_889.y, x_889.y, x_889.y) * x_899);
      let x_901 : i32 = u_xlati8;
      let x_903 : i32 = u_xlati8;
      let x_906 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_901 / 4i)][(x_903 % 4i)];
      let x_907 : vec3<f32> = vs_TEXCOORD1;
      let x_910 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_906 * vec4<f32>(x_907.x, x_907.x, x_907.x, x_907.x)) + x_910);
      let x_912 : i32 = u_xlati8;
      let x_915 : i32 = u_xlati8;
      let x_919 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_912 + 2i) / 4i)][((x_915 + 2i) % 4i)];
      let x_920 : vec3<f32> = vs_TEXCOORD1;
      let x_923 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_919 * vec4<f32>(x_920.z, x_920.z, x_920.z, x_920.z)) + x_923);
      let x_925 : vec4<f32> = u_xlat9;
      let x_926 : i32 = u_xlati8;
      let x_929 : i32 = u_xlati8;
      let x_933 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_926 + 3i) / 4i)][((x_929 + 3i) % 4i)];
      u_xlat8 = (x_925 + x_933);
      let x_935 : vec4<f32> = u_xlat8;
      let x_937 : vec4<f32> = u_xlat8;
      let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) / vec3<f32>(x_937.w, x_937.w, x_937.w));
      let x_940 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
      let x_943 : vec4<f32> = u_xlat8;
      let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
      let x_946 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_944.x, x_944.y, x_946);
      let x_954 : vec3<f32> = txVec1;
      let x_956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
      u_xlat8.x = x_956;
      let x_958 : i32 = u_xlati39;
      let x_960 : f32 = x_345.x_AdditionalShadowParams[x_958].x;
      u_xlat19.x = (1.0f + -(x_960));
      let x_965 : f32 = u_xlat8.x;
      let x_966 : i32 = u_xlati39;
      let x_968 : f32 = x_345.x_AdditionalShadowParams[x_966].x;
      let x_971 : f32 = u_xlat19.x;
      u_xlat8.x = ((x_965 * x_968) + x_971);
      let x_975 : f32 = u_xlat8.z;
      u_xlatb19.x = (0.0f >= x_975);
      let x_980 : f32 = u_xlat8.z;
      u_xlatb30 = (x_980 >= 1.0f);
      let x_982 : bool = u_xlatb30;
      let x_984 : bool = u_xlatb19.x;
      u_xlatb19.x = (x_982 | x_984);
      let x_988 : bool = u_xlatb19.x;
      if (x_988) {
        x_989 = 1.0f;
      } else {
        let x_994 : f32 = u_xlat8.x;
        x_989 = x_994;
      }
      let x_995 : f32 = x_989;
      u_xlat8.x = x_995;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_1000 : f32 = u_xlat8.x;
    u_xlat19.x = (-(x_1000) + 1.0f);
    let x_1005 : f32 = u_xlat4.x;
    let x_1007 : f32 = u_xlat19.x;
    let x_1010 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_1005 * x_1007) + x_1010);
    let x_1014 : i32 = u_xlati39;
    u_xlati19 = (1i << bitcast<u32>((x_1014 & 31i)));
    let x_1018 : i32 = u_xlati19;
    let x_1021 : f32 = x_415.x_AdditionalLightsCookieEnableBits;
    u_xlati19 = bitcast<i32>((bitcast<u32>(x_1018) & bitcast<u32>(x_1021)));
    let x_1025 : i32 = u_xlati19;
    if ((x_1025 != 0i)) {
      let x_1029 : i32 = u_xlati39;
      let x_1031 : f32 = x_415.x_AdditionalLightsLightTypes[x_1029].el;
      u_xlati19 = i32(x_1031);
      let x_1034 : i32 = u_xlati19;
      u_xlati30 = select(1i, 0i, (x_1034 != 0i));
      let x_1038 : i32 = u_xlati39;
      u_xlati41 = (x_1038 << bitcast<u32>(2i));
      let x_1040 : i32 = u_xlati30;
      if ((x_1040 != 0i)) {
        let x_1044 : vec3<f32> = vs_TEXCOORD1;
        let x_1046 : i32 = u_xlati41;
        let x_1049 : i32 = u_xlati41;
        let x_1053 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1046 + 1i) / 4i)][((x_1049 + 1i) % 4i)];
        let x_1055 : vec3<f32> = (vec3<f32>(x_1044.y, x_1044.y, x_1044.y) * vec3<f32>(x_1053.x, x_1053.y, x_1053.w));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : i32 = u_xlati41;
        let x_1060 : i32 = u_xlati41;
        let x_1063 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[(x_1058 / 4i)][(x_1060 % 4i)];
        let x_1065 : vec3<f32> = vs_TEXCOORD1;
        let x_1068 : vec4<f32> = u_xlat9;
        let x_1070 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.y, x_1063.w) * vec3<f32>(x_1065.x, x_1065.x, x_1065.x)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
        let x_1073 : i32 = u_xlati41;
        let x_1076 : i32 = u_xlati41;
        let x_1080 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1073 + 2i) / 4i)][((x_1076 + 2i) % 4i)];
        let x_1082 : vec3<f32> = vs_TEXCOORD1;
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1087 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.y, x_1080.w) * vec3<f32>(x_1082.z, x_1082.z, x_1082.z)) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1092 : i32 = u_xlati41;
        let x_1095 : i32 = u_xlati41;
        let x_1099 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1092 + 3i) / 4i)][((x_1095 + 3i) % 4i)];
        let x_1101 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) + vec3<f32>(x_1099.x, x_1099.y, x_1099.w));
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1104.x, x_1104.y) / vec2<f32>(x_1106.z, x_1106.z));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1121 : vec2<f32> = clamp(vec2<f32>(x_1117.x, x_1117.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : i32 = u_xlati39;
        let x_1126 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1124];
        let x_1128 : vec4<f32> = u_xlat9;
        let x_1131 : i32 = u_xlati39;
        let x_1133 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1131];
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1133.z, x_1133.w));
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
      } else {
        let x_1139 : i32 = u_xlati19;
        u_xlatb19.x = (x_1139 == 1i);
        let x_1143 : bool = u_xlatb19.x;
        u_xlati19 = select(0i, 1i, x_1143);
        let x_1145 : i32 = u_xlati19;
        if ((x_1145 != 0i)) {
          let x_1149 : vec3<f32> = vs_TEXCOORD1;
          let x_1151 : i32 = u_xlati41;
          let x_1154 : i32 = u_xlati41;
          let x_1158 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1151 + 1i) / 4i)][((x_1154 + 1i) % 4i)];
          let x_1160 : vec2<f32> = (vec2<f32>(x_1149.y, x_1149.y) * vec2<f32>(x_1158.x, x_1158.y));
          let x_1161 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1160.x, x_1160.y, x_1161.z);
          let x_1163 : i32 = u_xlati41;
          let x_1165 : i32 = u_xlati41;
          let x_1168 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[(x_1163 / 4i)][(x_1165 % 4i)];
          let x_1170 : vec3<f32> = vs_TEXCOORD1;
          let x_1173 : vec3<f32> = u_xlat19;
          let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1170.x, x_1170.x)) + vec2<f32>(x_1173.x, x_1173.y));
          let x_1176 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1175.x, x_1175.y, x_1176.z);
          let x_1178 : i32 = u_xlati41;
          let x_1181 : i32 = u_xlati41;
          let x_1185 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1178 + 2i) / 4i)][((x_1181 + 2i) % 4i)];
          let x_1187 : vec3<f32> = vs_TEXCOORD1;
          let x_1190 : vec3<f32> = u_xlat19;
          let x_1192 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.y) * vec2<f32>(x_1187.z, x_1187.z)) + vec2<f32>(x_1190.x, x_1190.y));
          let x_1193 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1192.x, x_1192.y, x_1193.z);
          let x_1195 : vec3<f32> = u_xlat19;
          let x_1197 : i32 = u_xlati41;
          let x_1200 : i32 = u_xlati41;
          let x_1204 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1197 + 3i) / 4i)][((x_1200 + 3i) % 4i)];
          let x_1206 : vec2<f32> = (vec2<f32>(x_1195.x, x_1195.y) + vec2<f32>(x_1204.x, x_1204.y));
          let x_1207 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1206.x, x_1206.y, x_1207.z);
          let x_1209 : vec3<f32> = u_xlat19;
          let x_1212 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1213 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1212.x, x_1212.y, x_1213.z);
          let x_1215 : vec3<f32> = u_xlat19;
          let x_1217 : vec2<f32> = fract(vec2<f32>(x_1215.x, x_1215.y));
          let x_1218 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1217.x, x_1217.y, x_1218.z);
          let x_1220 : i32 = u_xlati39;
          let x_1222 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1220];
          let x_1224 : vec3<f32> = u_xlat19;
          let x_1227 : i32 = u_xlati39;
          let x_1229 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1227];
          let x_1231 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1229.z, x_1229.w));
          let x_1232 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        } else {
          let x_1236 : vec3<f32> = vs_TEXCOORD1;
          let x_1238 : i32 = u_xlati41;
          let x_1241 : i32 = u_xlati41;
          let x_1245 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1238 + 1i) / 4i)][((x_1241 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1236.y, x_1236.y, x_1236.y, x_1236.y) * x_1245);
          let x_1247 : i32 = u_xlati41;
          let x_1249 : i32 = u_xlati41;
          let x_1252 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[(x_1247 / 4i)][(x_1249 % 4i)];
          let x_1253 : vec3<f32> = vs_TEXCOORD1;
          let x_1256 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1252 * vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x)) + x_1256);
          let x_1258 : i32 = u_xlati41;
          let x_1261 : i32 = u_xlati41;
          let x_1265 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1258 + 2i) / 4i)][((x_1261 + 2i) % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD1;
          let x_1269 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1265 * vec4<f32>(x_1266.z, x_1266.z, x_1266.z, x_1266.z)) + x_1269);
          let x_1271 : vec4<f32> = u_xlat10;
          let x_1272 : i32 = u_xlati41;
          let x_1275 : i32 = u_xlati41;
          let x_1279 : vec4<f32> = x_415.x_AdditionalLightsWorldToLights[((x_1272 + 3i) / 4i)][((x_1275 + 3i) % 4i)];
          u_xlat10 = (x_1271 + x_1279);
          let x_1281 : vec4<f32> = u_xlat10;
          let x_1283 : vec4<f32> = u_xlat10;
          u_xlat19 = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) / vec3<f32>(x_1283.w, x_1283.w, x_1283.w));
          let x_1287 : vec3<f32> = u_xlat19;
          let x_1288 : vec3<f32> = u_xlat19;
          u_xlat31 = dot(x_1287, x_1288);
          let x_1290 : f32 = u_xlat31;
          u_xlat31 = inverseSqrt(x_1290);
          let x_1292 : vec3<f32> = u_xlat19;
          let x_1293 : f32 = u_xlat31;
          u_xlat19 = (x_1292 * vec3<f32>(x_1293, x_1293, x_1293));
          let x_1296 : vec3<f32> = u_xlat19;
          u_xlat31 = dot(abs(x_1296), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1300 : f32 = u_xlat31;
          u_xlat31 = max(x_1300, 0.00000099999999747524f);
          let x_1303 : f32 = u_xlat31;
          u_xlat31 = (1.0f / x_1303);
          let x_1305 : vec3<f32> = u_xlat19;
          let x_1307 : f32 = u_xlat31;
          let x_1309 : vec3<f32> = (vec3<f32>(x_1305.z, x_1305.x, x_1305.y) * vec3<f32>(x_1307, x_1307, x_1307));
          let x_1310 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
          let x_1313 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1313);
          let x_1317 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1317, 0.0f, 1.0f);
          let x_1321 : vec4<f32> = u_xlat10;
          let x_1323 : vec4<bool> = (vec4<f32>(x_1321.y, x_1321.z, x_1321.y, x_1321.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb21 = vec2<bool>(x_1323.x, x_1323.y);
          let x_1326 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_1326;
          let x_1328 : bool = u_xlatb21.x;
          if (x_1328) {
            let x_1333 : f32 = u_xlat10.x;
            x_1329 = x_1333;
          } else {
            let x_1336 : f32 = u_xlat10.x;
            x_1329 = -(x_1336);
          }
          let x_1338 : f32 = x_1329;
          hlslcc_movcTemp.x = x_1338;
          let x_1341 : bool = u_xlatb21.y;
          if (x_1341) {
            let x_1346 : f32 = u_xlat10.x;
            x_1342 = x_1346;
          } else {
            let x_1349 : f32 = u_xlat10.x;
            x_1342 = -(x_1349);
          }
          let x_1351 : f32 = x_1342;
          hlslcc_movcTemp.y = x_1351;
          let x_1353 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_1353;
          let x_1354 : vec3<f32> = u_xlat19;
          let x_1356 : f32 = u_xlat31;
          let x_1359 : vec4<f32> = u_xlat10;
          let x_1361 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1356, x_1356)) + vec2<f32>(x_1359.x, x_1359.y));
          let x_1362 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1361.x, x_1361.y, x_1362.z);
          let x_1364 : vec3<f32> = u_xlat19;
          let x_1367 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1368 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1367.x, x_1367.y, x_1368.z);
          let x_1370 : vec3<f32> = u_xlat19;
          let x_1374 : vec2<f32> = clamp(vec2<f32>(x_1370.x, x_1370.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1375 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1374.x, x_1374.y, x_1375.z);
          let x_1377 : i32 = u_xlati39;
          let x_1379 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1377];
          let x_1381 : vec3<f32> = u_xlat19;
          let x_1384 : i32 = u_xlati39;
          let x_1386 : vec4<f32> = x_415.x_AdditionalLightsCookieAtlasUVRects[x_1384];
          let x_1388 : vec2<f32> = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1381.x, x_1381.y)) + vec2<f32>(x_1386.z, x_1386.w));
          let x_1389 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        }
      }
      let x_1396 : vec4<f32> = u_xlat9;
      let x_1398 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1396.x, x_1396.y), 0.0f);
      u_xlat9 = x_1398;
      let x_1400 : bool = u_xlatb16.y;
      if (x_1400) {
        let x_1405 : f32 = u_xlat9.w;
        x_1401 = x_1405;
      } else {
        let x_1408 : f32 = u_xlat9.x;
        x_1401 = x_1408;
      }
      let x_1409 : f32 = x_1401;
      u_xlat19.x = x_1409;
      let x_1412 : bool = u_xlatb16.x;
      if (x_1412) {
        let x_1416 : vec4<f32> = u_xlat9;
        x_1413 = vec3<f32>(x_1416.x, x_1416.y, x_1416.z);
      } else {
        let x_1419 : vec3<f32> = u_xlat19;
        x_1413 = vec3<f32>(x_1419.x, x_1419.x, x_1419.x);
      }
      let x_1421 : vec3<f32> = x_1413;
      u_xlat19 = x_1421;
    } else {
      u_xlat19.x = 1.0f;
      u_xlat19.y = 1.0f;
      u_xlat19.z = 1.0f;
    }
    let x_1426 : vec3<f32> = u_xlat19;
    let x_1427 : i32 = u_xlati39;
    let x_1429 : vec4<f32> = x_709.x_AdditionalLightsColor[x_1427];
    u_xlat19 = (x_1426 * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : f32 = u_xlat40;
    let x_1434 : f32 = u_xlat8.x;
    u_xlat39 = (x_1432 * x_1434);
    let x_1436 : f32 = u_xlat39;
    let x_1438 : vec3<f32> = u_xlat19;
    let x_1439 : vec3<f32> = (vec3<f32>(x_1436, x_1436, x_1436) * x_1438);
    let x_1440 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
    let x_1442 : vec4<f32> = u_xlat2;
    let x_1444 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), x_1444);
    let x_1446 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1446, 0.0f, 1.0f);
    let x_1448 : f32 = u_xlat39;
    let x_1450 : vec4<f32> = u_xlat8;
    let x_1452 : vec3<f32> = (vec3<f32>(x_1448, x_1448, x_1448) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
    let x_1453 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
    let x_1455 : vec3<f32> = u_xlat1;
    let x_1456 : f32 = u_xlat34;
    let x_1459 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1455 * vec3<f32>(x_1456, x_1456, x_1456)) + x_1459);
    let x_1461 : vec3<f32> = u_xlat7;
    let x_1462 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1461, x_1462);
    let x_1464 : f32 = u_xlat39;
    u_xlat39 = max(x_1464, 1.17549435e-38f);
    let x_1466 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1466);
    let x_1468 : f32 = u_xlat39;
    let x_1470 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1468, x_1468, x_1468) * x_1470);
    let x_1472 : vec4<f32> = u_xlat2;
    let x_1474 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1472.x, x_1472.y, x_1472.z), x_1474);
    let x_1476 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1476, 0.0f, 1.0f);
    let x_1478 : f32 = u_xlat39;
    u_xlat39 = log2(x_1478);
    let x_1480 : f32 = u_xlat35;
    let x_1481 : f32 = u_xlat39;
    u_xlat39 = (x_1480 * x_1481);
    let x_1483 : f32 = u_xlat39;
    u_xlat39 = exp2(x_1483);
    let x_1485 : f32 = u_xlat39;
    let x_1488 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1485, x_1485, x_1485) * vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1491 : vec3<f32> = u_xlat7;
    let x_1492 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1491 * vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat9;
    let x_1497 : vec4<f32> = u_xlat0;
    let x_1500 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1495.x, x_1495.y, x_1495.z) * vec3<f32>(x_1497.y, x_1497.z, x_1497.w)) + x_1500);
    let x_1502 : vec3<f32> = u_xlat6;
    let x_1503 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1502 + x_1503);

    continuing {
      let x_1505 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1505 + bitcast<u32>(1i));
    }
  }
  let x_1508 : vec3<f32> = u_xlat14;
  let x_1509 : vec4<f32> = u_xlat0;
  let x_1512 : vec3<f32> = u_xlat15;
  u_xlat11 = ((x_1508 * vec3<f32>(x_1509.y, x_1509.z, x_1509.w)) + x_1512);
  let x_1514 : vec3<f32> = u_xlat6;
  let x_1515 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1514 + x_1515);
  let x_1517 : f32 = u_xlat3;
  let x_1518 : f32 = u_xlat3;
  u_xlat1.x = (x_1517 * -(x_1518));
  let x_1523 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1523);
  let x_1526 : vec3<f32> = u_xlat11;
  let x_1528 : vec4<f32> = x_45.unity_FogColor;
  u_xlat11 = (x_1526 + -(vec3<f32>(x_1528.x, x_1528.y, x_1528.z)));
  let x_1534 : vec3<f32> = u_xlat1;
  let x_1536 : vec3<f32> = u_xlat11;
  let x_1539 : vec4<f32> = x_45.unity_FogColor;
  let x_1541 : vec3<f32> = ((vec3<f32>(x_1534.x, x_1534.x, x_1534.x) * x_1536) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1546 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1546 == 1.0f);
  let x_1548 : bool = u_xlatb11;
  if (x_1548) {
    let x_1553 : f32 = u_xlat0.x;
    x_1549 = x_1553;
  } else {
    x_1549 = 1.0f;
  }
  let x_1555 : f32 = x_1549;
  SV_Target0.w = x_1555;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


