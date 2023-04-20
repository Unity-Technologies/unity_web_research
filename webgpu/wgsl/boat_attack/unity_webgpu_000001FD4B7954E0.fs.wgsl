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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb31 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb17 : vec2<bool>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_355 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat15 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb45 : bool;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_762 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

@group(1) @binding(1) var<uniform> x_1218 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu15 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_265 : f32;
  var x_278 : f32;
  var x_290 : f32;
  var txVec0 : vec3<f32>;
  var x_715 : f32;
  var x_845 : f32;
  var x_856 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1349 : f32;
  var x_1359 : f32;
  var txVec1 : vec3<f32>;
  var x_1782 : f32;
  var x_1795 : f32;
  var x_1843 : f32;
  var x_1854 : vec3<f32>;
  var x_1992 : f32;
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
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_45.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_60, x_62);
  u_xlat1 = vec2<f32>(x_63.x, x_63.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = x_70.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_66.w, x_66.x, x_66.y, x_66.z) * vec4<f32>(x_74.w, x_74.x, x_74.y, x_74.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat29 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat29;
  let x_108 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat42;
  u_xlat42 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat42;
  u_xlat42 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_115);
  let x_117 : f32 = u_xlat42;
  u_xlat42 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat29;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat29 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat17.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_45.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_165.x, x_165.y, x_166.z);
  let x_173 : vec3<f32> = u_xlat17;
  let x_176 : f32 = x_45.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.y), x_176);
  u_xlat17.x = x_177.w;
  let x_188 : f32 = x_186.unity_LODFade.x;
  u_xlatb31 = (x_188 >= 0.0f);
  let x_191 : bool = u_xlatb31;
  if (x_191) {
    let x_197 : f32 = u_xlat17.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat17.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat17.x = x_204;
  let x_207 : f32 = u_xlat17.x;
  let x_210 : f32 = x_186.unity_LODFade.x;
  u_xlat17.x = (-(x_207) + x_210);
  let x_217 : f32 = u_xlat17.x;
  u_xlatb17.x = (x_217 < 0.0f);
  let x_221 : bool = u_xlatb17.x;
  if (((select(0i, 1i, x_221) * -1i) != 0i)) {
    discard;
  }
  let x_232 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb17.x = (x_232 == 0.0f);
  let x_238 : vec3<f32> = vs_TEXCOORD1;
  let x_243 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_244 : vec3<f32> = (-(x_238) + x_243);
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_253);
  let x_255 : f32 = u_xlat31;
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec3<f32> = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_264 : bool = u_xlatb17.x;
  if (x_264) {
    let x_269 : f32 = u_xlat4.x;
    x_265 = x_269;
  } else {
    let x_273 : f32 = x_45.unity_MatrixV[0i].z;
    x_265 = x_273;
  }
  let x_274 : f32 = x_265;
  u_xlat5.x = x_274;
  let x_277 : bool = u_xlatb17.x;
  if (x_277) {
    let x_282 : f32 = u_xlat4.y;
    x_278 = x_282;
  } else {
    let x_285 : f32 = x_45.unity_MatrixV[1i].z;
    x_278 = x_285;
  }
  let x_286 : f32 = x_278;
  u_xlat5.y = x_286;
  let x_289 : bool = u_xlatb17.x;
  if (x_289) {
    let x_294 : f32 = u_xlat4.z;
    x_290 = x_294;
  } else {
    let x_297 : f32 = x_45.unity_MatrixV[2i].z;
    x_290 = x_297;
  }
  let x_298 : f32 = x_290;
  u_xlat5.z = x_298;
  let x_301 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (vec3<f32>(x_301.z, x_301.x, x_301.y) * vec3<f32>(x_304.y, x_304.z, x_304.x));
  let x_307 : vec3<f32> = vs_TEXCOORD2;
  let x_309 : vec4<f32> = vs_TEXCOORD3;
  let x_312 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_307.y, x_307.z, x_307.x) * vec3<f32>(x_309.z, x_309.x, x_309.y)) + -(x_312));
  let x_315 : vec3<f32> = u_xlat17;
  let x_316 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (x_315 * vec3<f32>(x_316.w, x_316.w, x_316.w));
  let x_319 : vec2<f32> = u_xlat29;
  let x_321 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_319.y, x_319.y, x_319.y) * x_321);
  let x_323 : vec2<f32> = u_xlat29;
  let x_325 : vec4<f32> = vs_TEXCOORD3;
  let x_328 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z)) + x_328);
  let x_330 : f32 = u_xlat42;
  let x_332 : vec3<f32> = vs_TEXCOORD2;
  let x_334 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_330, x_330, x_330) * x_332) + x_334);
  let x_336 : vec3<f32> = u_xlat17;
  let x_337 : vec3<f32> = u_xlat17;
  u_xlat42 = dot(x_336, x_337);
  let x_339 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_339);
  let x_341 : f32 = u_xlat42;
  let x_343 : vec3<f32> = u_xlat17;
  let x_344 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres0;
  u_xlat17 = (x_347 + -(vec3<f32>(x_357.x, x_357.y, x_357.z)));
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_362 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_369 : vec3<f32> = vs_TEXCOORD1;
  let x_372 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres2;
  let x_375 : vec3<f32> = (x_369 + -(vec3<f32>(x_372.x, x_372.y, x_372.z)));
  let x_376 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres3;
  let x_384 : vec3<f32> = (x_379 + -(vec3<f32>(x_381.x, x_381.y, x_381.z)));
  let x_385 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : vec3<f32> = u_xlat17;
  let x_389 : vec3<f32> = u_xlat17;
  u_xlat9.x = dot(x_388, x_389);
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_392, x_393);
  let x_396 : vec4<f32> = u_xlat7;
  let x_398 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : vec4<f32> = u_xlat8;
  let x_404 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_411 : vec4<f32> = u_xlat9;
  let x_413 : vec4<f32> = x_355.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_411 < x_413);
  let x_416 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_420);
  let x_424 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_424);
  let x_428 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_428);
  let x_432 : bool = u_xlatb6.x;
  u_xlat17.x = select(-0.0f, -1.0f, x_432);
  let x_437 : bool = u_xlatb6.y;
  u_xlat17.y = select(-0.0f, -1.0f, x_437);
  let x_441 : bool = u_xlatb6.z;
  u_xlat17.z = select(-0.0f, -1.0f, x_441);
  let x_444 : vec3<f32> = u_xlat17;
  let x_445 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_444 + vec3<f32>(x_445.y, x_445.z, x_445.w));
  let x_448 : vec3<f32> = u_xlat17;
  let x_450 : vec3<f32> = max(x_448, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_451 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_451.x, x_450.x, x_450.y, x_450.z);
  let x_453 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_453, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_458 : f32 = u_xlat42;
  u_xlat42 = (-(x_458) + 4.0f);
  let x_463 : f32 = u_xlat42;
  u_xlatu42 = u32(x_463);
  let x_467 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_467) << bitcast<u32>(2i));
  let x_470 : vec3<f32> = vs_TEXCOORD1;
  let x_472 : i32 = u_xlati42;
  let x_475 : i32 = u_xlati42;
  let x_479 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_472 + 1i) / 4i)][((x_475 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : i32 = u_xlati42;
  let x_484 : i32 = u_xlati42;
  let x_487 : vec4<f32> = x_355.x_MainLightWorldToShadow[(x_482 / 4i)][(x_484 % 4i)];
  let x_489 : vec3<f32> = vs_TEXCOORD1;
  let x_492 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(x_489.x, x_489.x, x_489.x)) + x_492);
  let x_494 : i32 = u_xlati42;
  let x_497 : i32 = u_xlati42;
  let x_501 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_494 + 2i) / 4i)][((x_497 + 2i) % 4i)];
  let x_503 : vec3<f32> = vs_TEXCOORD1;
  let x_506 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503.z, x_503.z, x_503.z)) + x_506);
  let x_508 : vec3<f32> = u_xlat17;
  let x_509 : i32 = u_xlati42;
  let x_512 : i32 = u_xlati42;
  let x_516 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_509 + 3i) / 4i)][((x_512 + 3i) % 4i)];
  u_xlat17 = (x_508 + vec3<f32>(x_516.x, x_516.y, x_516.z));
  u_xlat4.w = 1.0f;
  let x_522 : vec4<f32> = x_186.unity_SHAr;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_522, x_523);
  let x_528 : vec4<f32> = x_186.unity_SHAg;
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_528, x_529);
  let x_534 : vec4<f32> = x_186.unity_SHAb;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_534, x_535);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_538.y, x_538.z, x_538.z, x_538.x) * vec4<f32>(x_540.x, x_540.y, x_540.z, x_540.z));
  let x_545 : vec4<f32> = x_186.unity_SHBr;
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_545, x_546);
  let x_551 : vec4<f32> = x_186.unity_SHBg;
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_186.unity_SHBb;
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_557, x_558);
  let x_562 : f32 = u_xlat4.y;
  let x_564 : f32 = u_xlat4.y;
  u_xlat42 = (x_562 * x_564);
  let x_567 : f32 = u_xlat4.x;
  let x_569 : f32 = u_xlat4.x;
  let x_571 : f32 = u_xlat42;
  u_xlat42 = ((x_567 * x_569) + -(x_571));
  let x_576 : vec4<f32> = x_186.unity_SHC;
  let x_578 : f32 = u_xlat42;
  let x_581 : vec4<f32> = u_xlat8;
  let x_583 : vec3<f32> = ((vec3<f32>(x_576.x, x_576.y, x_576.z) * vec3<f32>(x_578, x_578, x_578)) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat6;
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_586 + vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_590, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_593 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_593) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_598 : f32 = u_xlat42;
  u_xlat29.x = (-(x_598) + 1.0f);
  let x_603 : f32 = u_xlat42;
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_603, x_603, x_603) * vec3<f32>(x_605.y, x_605.z, x_605.w));
  let x_608 : vec4<f32> = u_xlat0;
  let x_611 : vec4<f32> = x_70.x_BaseColor;
  let x_616 : vec3<f32> = ((vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec2<f32> = u_xlat1;
  let x_621 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.x, x_619.x) * vec3<f32>(x_621.x, x_621.y, x_621.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : f32 = u_xlat1.y;
  let x_633 : f32 = x_70.x_Smoothness;
  u_xlat42 = ((-(x_630) * x_633) + 1.0f);
  let x_636 : f32 = u_xlat42;
  let x_637 : f32 = u_xlat42;
  u_xlat1.x = (x_636 * x_637);
  let x_641 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_641, 0.0078125f);
  let x_647 : f32 = u_xlat1.x;
  let x_649 : f32 = u_xlat1.x;
  u_xlat43 = (x_647 * x_649);
  let x_653 : f32 = u_xlat1.y;
  let x_655 : f32 = x_70.x_Smoothness;
  let x_658 : f32 = u_xlat29.x;
  u_xlat15 = ((x_653 * x_655) + x_658);
  let x_660 : f32 = u_xlat15;
  u_xlat15 = clamp(x_660, 0.0f, 1.0f);
  let x_663 : f32 = u_xlat1.x;
  u_xlat29.x = ((x_663 * 4.0f) + 2.0f);
  let x_668 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_668, 1.0f);
  let x_673 : vec3<f32> = u_xlat17;
  let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
  let x_676 : f32 = u_xlat17.z;
  txVec0 = vec3<f32>(x_674.x, x_674.y, x_676);
  let x_688 : vec3<f32> = txVec0;
  let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_688.xy, x_688.z);
  u_xlat17.x = x_690;
  let x_693 : f32 = x_355.x_MainLightShadowParams.x;
  u_xlat31 = (-(x_693) + 1.0f);
  let x_697 : f32 = u_xlat17.x;
  let x_699 : f32 = x_355.x_MainLightShadowParams.x;
  let x_701 : f32 = u_xlat31;
  u_xlat17.x = ((x_697 * x_699) + x_701);
  let x_705 : f32 = u_xlat17.z;
  u_xlatb31 = (0.0f >= x_705);
  let x_709 : f32 = u_xlat17.z;
  u_xlatb45 = (x_709 >= 1.0f);
  let x_711 : bool = u_xlatb45;
  let x_712 : bool = u_xlatb31;
  u_xlatb31 = (x_711 | x_712);
  let x_714 : bool = u_xlatb31;
  if (x_714) {
    x_715 = 1.0f;
  } else {
    let x_720 : f32 = u_xlat17.x;
    x_715 = x_720;
  }
  let x_721 : f32 = x_715;
  u_xlat17.x = x_721;
  let x_723 : vec3<f32> = vs_TEXCOORD1;
  let x_725 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_727 : vec3<f32> = (x_723 + -(x_725));
  let x_728 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : vec4<f32> = u_xlat7;
  u_xlat31 = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_736 : f32 = u_xlat31;
  let x_738 : f32 = x_355.x_MainLightShadowParams.z;
  let x_741 : f32 = x_355.x_MainLightShadowParams.w;
  u_xlat45 = ((x_736 * x_738) + x_741);
  let x_743 : f32 = u_xlat45;
  u_xlat45 = clamp(x_743, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_747) + 1.0f);
  let x_750 : f32 = u_xlat45;
  let x_751 : f32 = u_xlat46;
  let x_754 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_750 * x_751) + x_754);
  let x_764 : f32 = x_762.x_MainLightCookieTextureFormat;
  u_xlatb45 = !((x_764 == -1.0f));
  let x_766 : bool = u_xlatb45;
  if (x_766) {
    let x_769 : vec3<f32> = vs_TEXCOORD1;
    let x_772 : vec4<f32> = x_762.x_MainLightWorldToLight[1i];
    let x_774 : vec2<f32> = (vec2<f32>(x_769.y, x_769.y) * vec2<f32>(x_772.x, x_772.y));
    let x_775 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
    let x_778 : vec4<f32> = x_762.x_MainLightWorldToLight[0i];
    let x_780 : vec3<f32> = vs_TEXCOORD1;
    let x_783 : vec4<f32> = u_xlat7;
    let x_785 : vec2<f32> = ((vec2<f32>(x_778.x, x_778.y) * vec2<f32>(x_780.x, x_780.x)) + vec2<f32>(x_783.x, x_783.y));
    let x_786 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
    let x_789 : vec4<f32> = x_762.x_MainLightWorldToLight[2i];
    let x_791 : vec3<f32> = vs_TEXCOORD1;
    let x_794 : vec4<f32> = u_xlat7;
    let x_796 : vec2<f32> = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_791.z, x_791.z)) + vec2<f32>(x_794.x, x_794.y));
    let x_797 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
    let x_799 : vec4<f32> = u_xlat7;
    let x_802 : vec4<f32> = x_762.x_MainLightWorldToLight[3i];
    let x_804 : vec2<f32> = (vec2<f32>(x_799.x, x_799.y) + vec2<f32>(x_802.x, x_802.y));
    let x_805 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
    let x_807 : vec4<f32> = u_xlat7;
    let x_812 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_813 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
    let x_820 : vec4<f32> = u_xlat7;
    let x_823 : f32 = x_45.x_GlobalMipBias.x;
    let x_824 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_820.x, x_820.y), x_823);
    u_xlat7 = x_824;
    let x_827 : f32 = x_762.x_MainLightCookieTextureFormat;
    let x_829 : f32 = x_762.x_MainLightCookieTextureFormat;
    let x_831 : f32 = x_762.x_MainLightCookieTextureFormat;
    let x_833 : f32 = x_762.x_MainLightCookieTextureFormat;
    let x_834 : vec4<f32> = vec4<f32>(x_827, x_829, x_831, x_833);
    let x_841 : vec4<bool> = (vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_841.x, x_841.y);
    let x_844 : bool = u_xlatb8.y;
    if (x_844) {
      let x_849 : f32 = u_xlat7.w;
      x_845 = x_849;
    } else {
      let x_852 : f32 = u_xlat7.x;
      x_845 = x_852;
    }
    let x_853 : f32 = x_845;
    u_xlat45 = x_853;
    let x_855 : bool = u_xlatb8.x;
    if (x_855) {
      let x_859 : vec4<f32> = u_xlat7;
      x_856 = vec3<f32>(x_859.x, x_859.y, x_859.z);
    } else {
      let x_862 : f32 = u_xlat45;
      x_856 = vec3<f32>(x_862, x_862, x_862);
    }
    let x_864 : vec3<f32> = x_856;
    let x_865 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_871 : vec4<f32> = u_xlat7;
  let x_874 : vec4<f32> = x_45.x_MainLightColor;
  let x_876 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec3<f32> = u_xlat5;
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(-(x_879), vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : f32 = u_xlat45;
  let x_885 : f32 = u_xlat45;
  u_xlat45 = (x_884 + x_885);
  let x_887 : vec4<f32> = u_xlat4;
  let x_889 : f32 = u_xlat45;
  let x_893 : vec3<f32> = u_xlat5;
  let x_895 : vec3<f32> = ((vec3<f32>(x_887.x, x_887.y, x_887.z) * -(vec3<f32>(x_889, x_889, x_889))) + -(x_893));
  let x_896 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), x_900);
  let x_902 : f32 = u_xlat45;
  u_xlat45 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat45;
  u_xlat45 = (-(x_904) + 1.0f);
  let x_907 : f32 = u_xlat45;
  let x_908 : f32 = u_xlat45;
  u_xlat45 = (x_907 * x_908);
  let x_910 : f32 = u_xlat45;
  let x_911 : f32 = u_xlat45;
  u_xlat45 = (x_910 * x_911);
  let x_913 : f32 = u_xlat42;
  u_xlat46 = ((-(x_913) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_919 : f32 = u_xlat42;
  let x_920 : f32 = u_xlat46;
  u_xlat42 = (x_919 * x_920);
  let x_922 : f32 = u_xlat42;
  u_xlat42 = (x_922 * 6.0f);
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : f32 = u_xlat42;
  let x_936 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_933.x, x_933.y, x_933.z), x_935);
  u_xlat8 = x_936;
  let x_938 : f32 = u_xlat8.w;
  u_xlat42 = (x_938 + -1.0f);
  let x_941 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_942 : f32 = u_xlat42;
  u_xlat42 = ((x_941 * x_942) + 1.0f);
  let x_945 : f32 = u_xlat42;
  u_xlat42 = max(x_945, 0.0f);
  let x_947 : f32 = u_xlat42;
  u_xlat42 = log2(x_947);
  let x_949 : f32 = u_xlat42;
  let x_951 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_949 * x_951);
  let x_953 : f32 = u_xlat42;
  u_xlat42 = exp2(x_953);
  let x_955 : f32 = u_xlat42;
  let x_957 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_955 * x_957);
  let x_959 : vec4<f32> = u_xlat8;
  let x_961 : f32 = u_xlat42;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961, x_961, x_961));
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec2<f32> = u_xlat1;
  let x_968 : vec2<f32> = u_xlat1;
  let x_972 : vec2<f32> = ((vec2<f32>(x_966.x, x_966.x) * vec2<f32>(x_968.x, x_968.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_973 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
  let x_976 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_976);
  let x_979 : vec4<f32> = u_xlat0;
  let x_982 : f32 = u_xlat15;
  u_xlat23 = (-(vec3<f32>(x_979.x, x_979.y, x_979.z)) + vec3<f32>(x_982, x_982, x_982));
  let x_985 : f32 = u_xlat45;
  let x_987 : vec3<f32> = u_xlat23;
  let x_989 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_985, x_985, x_985) * x_987) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : f32 = u_xlat42;
  let x_994 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_992, x_992, x_992) * x_994);
  let x_996 : vec4<f32> = u_xlat8;
  let x_998 : vec3<f32> = u_xlat23;
  let x_999 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) * x_998);
  let x_1000 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat6;
  let x_1003 : vec3<f32> = u_xlat16;
  let x_1005 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_1002 * x_1003) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1009 : f32 = u_xlat17.x;
  let x_1011 : f32 = x_186.unity_LightData.z;
  u_xlat42 = (x_1009 * x_1011);
  let x_1013 : vec4<f32> = u_xlat4;
  let x_1016 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1013.x, x_1013.y, x_1013.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1021 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1021, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat42;
  let x_1026 : f32 = u_xlat1.x;
  u_xlat42 = (x_1024 * x_1026);
  let x_1028 : f32 = u_xlat42;
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1028, x_1028, x_1028) * vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec3<f32> = u_xlat5;
  let x_1037 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1039 : vec3<f32> = (x_1035 + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat8;
  let x_1044 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat42;
  u_xlat42 = max(x_1047, 1.17549435e-38f);
  let x_1050 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1050);
  let x_1052 : f32 = u_xlat42;
  let x_1054 : vec4<f32> = u_xlat8;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat4;
  let x_1061 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1069 : vec4<f32> = u_xlat8;
  u_xlat1.x = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1074 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1074, 0.0f, 1.0f);
  let x_1077 : f32 = u_xlat42;
  let x_1078 : f32 = u_xlat42;
  u_xlat42 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat42;
  let x_1082 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1080 * x_1082) + 1.00001001358032226562f);
  let x_1087 : f32 = u_xlat1.x;
  let x_1089 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat42;
  let x_1093 : f32 = u_xlat42;
  u_xlat42 = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1096, 0.10000000149011611938f);
  let x_1100 : f32 = u_xlat42;
  let x_1102 : f32 = u_xlat1.x;
  u_xlat42 = (x_1100 * x_1102);
  let x_1105 : f32 = u_xlat29.x;
  let x_1106 : f32 = u_xlat42;
  u_xlat42 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat43;
  let x_1109 : f32 = u_xlat42;
  u_xlat42 = (x_1108 / x_1109);
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1113 : f32 = u_xlat42;
  let x_1116 : vec3<f32> = u_xlat16;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * vec3<f32>(x_1113, x_1113, x_1113)) + x_1116);
  let x_1118 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat7;
  let x_1122 : vec4<f32> = u_xlat8;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1128 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1130 : f32 = x_186.unity_LightData.y;
  u_xlat42 = min(x_1128, x_1130);
  let x_1132 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1132));
  let x_1135 : f32 = u_xlat31;
  let x_1138 : f32 = x_355.x_AdditionalShadowFadeParams.x;
  let x_1141 : f32 = x_355.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1135 * x_1138) + x_1141);
  let x_1145 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1145, 0.0f, 1.0f);
  let x_1149 : f32 = x_762.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1151 : f32 = x_762.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1153 : f32 = x_762.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1155 : f32 = x_762.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1156 : vec4<f32> = vec4<f32>(x_1149, x_1151, x_1153, x_1155);
  let x_1162 : vec4<bool> = (vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1156.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb17 = vec2<bool>(x_1162.x, x_1162.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1174 : u32 = u_xlatu_loop_1;
    let x_1175 : u32 = u_xlatu42;
    if ((x_1174 < x_1175)) {
    } else {
      break;
    }
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1178 >> 2u);
    let x_1181 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1181 & 3u));
    let x_1184 : u32 = u_xlatu45;
    let x_1187 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1184)];
    let x_1197 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1202 : vec4<u32> = indexable[x_1197];
    u_xlat45 = dot(x_1187, bitcast<vec4<f32>>(x_1202));
    let x_1206 : f32 = u_xlat45;
    u_xlati45 = i32(x_1206);
    let x_1208 : vec3<f32> = vs_TEXCOORD1;
    let x_1219 : i32 = u_xlati45;
    let x_1221 : vec4<f32> = x_1218.x_AdditionalLightsPosition[x_1219];
    let x_1224 : i32 = u_xlati45;
    let x_1226 : vec4<f32> = x_1218.x_AdditionalLightsPosition[x_1224];
    u_xlat23 = ((-(x_1208) * vec3<f32>(x_1221.w, x_1221.w, x_1221.w)) + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
    let x_1229 : vec3<f32> = u_xlat23;
    let x_1230 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1229, x_1230);
    let x_1232 : f32 = u_xlat46;
    u_xlat46 = max(x_1232, 0.00006103515625f);
    let x_1236 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1236);
    let x_1239 : f32 = u_xlat47;
    let x_1241 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1239, x_1239, x_1239) * x_1241);
    let x_1244 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1244);
    let x_1246 : f32 = u_xlat46;
    let x_1247 : i32 = u_xlati45;
    let x_1249 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1247].x;
    u_xlat46 = (x_1246 * x_1249);
    let x_1251 : f32 = u_xlat46;
    let x_1253 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1251) * x_1253) + 1.0f);
    let x_1256 : f32 = u_xlat46;
    u_xlat46 = max(x_1256, 0.0f);
    let x_1258 : f32 = u_xlat46;
    let x_1259 : f32 = u_xlat46;
    u_xlat46 = (x_1258 * x_1259);
    let x_1261 : f32 = u_xlat46;
    let x_1262 : f32 = u_xlat48;
    u_xlat46 = (x_1261 * x_1262);
    let x_1264 : i32 = u_xlati45;
    let x_1266 : vec4<f32> = x_1218.x_AdditionalLightsSpotDir[x_1264];
    let x_1268 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1266.x, x_1266.y, x_1266.z), x_1268);
    let x_1270 : f32 = u_xlat48;
    let x_1271 : i32 = u_xlati45;
    let x_1273 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1271].z;
    let x_1275 : i32 = u_xlati45;
    let x_1277 : f32 = x_1218.x_AdditionalLightsAttenuation[x_1275].w;
    u_xlat48 = ((x_1270 * x_1273) + x_1277);
    let x_1279 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1279, 0.0f, 1.0f);
    let x_1281 : f32 = u_xlat48;
    let x_1282 : f32 = u_xlat48;
    u_xlat48 = (x_1281 * x_1282);
    let x_1284 : f32 = u_xlat46;
    let x_1285 : f32 = u_xlat48;
    u_xlat46 = (x_1284 * x_1285);
    let x_1289 : i32 = u_xlati45;
    let x_1291 : f32 = x_355.x_AdditionalShadowParams[x_1289].w;
    u_xlati48 = i32(x_1291);
    let x_1294 : i32 = u_xlati48;
    u_xlatb49 = (x_1294 >= 0i);
    let x_1296 : bool = u_xlatb49;
    if (x_1296) {
      let x_1300 : i32 = u_xlati45;
      let x_1302 : f32 = x_355.x_AdditionalShadowParams[x_1300].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1302, x_1302, x_1302, x_1302))));
      let x_1306 : bool = u_xlatb49;
      if (x_1306) {
        let x_1310 : vec3<f32> = u_xlat10;
        let x_1313 : vec3<f32> = u_xlat10;
        let x_1316 : vec4<bool> = (abs(vec4<f32>(x_1310.z, x_1310.z, x_1310.y, x_1310.z)) >= abs(vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.x)));
        let x_1318 : vec3<bool> = vec3<bool>(x_1316.x, x_1316.y, x_1316.z);
        let x_1319 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1322 : bool = u_xlatb11.y;
        let x_1324 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1322 & x_1324);
        let x_1326 : vec3<f32> = u_xlat10;
        let x_1329 : vec4<bool> = (-(vec4<f32>(x_1326.z, x_1326.y, x_1326.z, x_1326.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1330 : vec3<bool> = vec3<bool>(x_1329.x, x_1329.y, x_1329.w);
        let x_1331 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1330.x, x_1330.y, x_1331.z, x_1330.z);
        let x_1335 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1335);
        let x_1340 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1340);
        let x_1345 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1345);
        let x_1348 : bool = u_xlatb11.z;
        if (x_1348) {
          let x_1353 : f32 = u_xlat11.y;
          x_1349 = x_1353;
        } else {
          let x_1355 : f32 = u_xlat50;
          x_1349 = x_1355;
        }
        let x_1356 : f32 = x_1349;
        u_xlat50 = x_1356;
        let x_1358 : bool = u_xlatb49;
        if (x_1358) {
          let x_1363 : f32 = u_xlat11.x;
          x_1359 = x_1363;
        } else {
          let x_1365 : f32 = u_xlat50;
          x_1359 = x_1365;
        }
        let x_1366 : f32 = x_1359;
        u_xlat49 = x_1366;
        let x_1367 : i32 = u_xlati45;
        let x_1369 : f32 = x_355.x_AdditionalShadowParams[x_1367].w;
        u_xlat50 = trunc(x_1369);
        let x_1371 : f32 = u_xlat49;
        let x_1372 : f32 = u_xlat50;
        u_xlat49 = (x_1371 + x_1372);
        let x_1374 : f32 = u_xlat49;
        u_xlati48 = i32(x_1374);
      }
      let x_1376 : i32 = u_xlati48;
      u_xlati48 = (x_1376 << bitcast<u32>(2i));
      let x_1378 : vec3<f32> = vs_TEXCOORD1;
      let x_1381 : i32 = u_xlati48;
      let x_1384 : i32 = u_xlati48;
      let x_1388 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1381 + 1i) / 4i)][((x_1384 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1378.y, x_1378.y, x_1378.y, x_1378.y) * x_1388);
      let x_1390 : i32 = u_xlati48;
      let x_1392 : i32 = u_xlati48;
      let x_1395 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[(x_1390 / 4i)][(x_1392 % 4i)];
      let x_1396 : vec3<f32> = vs_TEXCOORD1;
      let x_1399 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1395 * vec4<f32>(x_1396.x, x_1396.x, x_1396.x, x_1396.x)) + x_1399);
      let x_1401 : i32 = u_xlati48;
      let x_1404 : i32 = u_xlati48;
      let x_1408 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1401 + 2i) / 4i)][((x_1404 + 2i) % 4i)];
      let x_1409 : vec3<f32> = vs_TEXCOORD1;
      let x_1412 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1408 * vec4<f32>(x_1409.z, x_1409.z, x_1409.z, x_1409.z)) + x_1412);
      let x_1414 : vec4<f32> = u_xlat11;
      let x_1415 : i32 = u_xlati48;
      let x_1418 : i32 = u_xlati48;
      let x_1422 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1415 + 3i) / 4i)][((x_1418 + 3i) % 4i)];
      u_xlat11 = (x_1414 + x_1422);
      let x_1424 : vec4<f32> = u_xlat11;
      let x_1426 : vec4<f32> = u_xlat11;
      let x_1428 : vec3<f32> = (vec3<f32>(x_1424.x, x_1424.y, x_1424.z) / vec3<f32>(x_1426.w, x_1426.w, x_1426.w));
      let x_1429 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
      let x_1432 : vec4<f32> = u_xlat11;
      let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
      let x_1435 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
      let x_1443 : vec3<f32> = txVec1;
      let x_1445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
      u_xlat48 = x_1445;
      let x_1446 : i32 = u_xlati45;
      let x_1448 : f32 = x_355.x_AdditionalShadowParams[x_1446].x;
      u_xlat49 = (1.0f + -(x_1448));
      let x_1451 : f32 = u_xlat48;
      let x_1452 : i32 = u_xlati45;
      let x_1454 : f32 = x_355.x_AdditionalShadowParams[x_1452].x;
      let x_1456 : f32 = u_xlat49;
      u_xlat48 = ((x_1451 * x_1454) + x_1456);
      let x_1459 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1459);
      let x_1463 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1463 >= 1.0f);
      let x_1465 : bool = u_xlatb49;
      let x_1466 : bool = u_xlatb50;
      u_xlatb49 = (x_1465 | x_1466);
      let x_1468 : bool = u_xlatb49;
      let x_1469 : f32 = u_xlat48;
      u_xlat48 = select(x_1469, 1.0f, x_1468);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1472 : f32 = u_xlat48;
    u_xlat49 = (-(x_1472) + 1.0f);
    let x_1476 : f32 = u_xlat1.x;
    let x_1477 : f32 = u_xlat49;
    let x_1479 : f32 = u_xlat48;
    u_xlat48 = ((x_1476 * x_1477) + x_1479);
    let x_1482 : i32 = u_xlati45;
    u_xlati49 = (1i << bitcast<u32>((x_1482 & 31i)));
    let x_1486 : i32 = u_xlati49;
    let x_1489 : f32 = x_762.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1486) & bitcast<u32>(x_1489)));
    let x_1493 : i32 = u_xlati49;
    if ((x_1493 != 0i)) {
      let x_1497 : i32 = u_xlati45;
      let x_1499 : f32 = x_762.x_AdditionalLightsLightTypes[x_1497].el;
      u_xlati49 = i32(x_1499);
      let x_1502 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1502 != 0i));
      let x_1506 : i32 = u_xlati45;
      u_xlati52 = (x_1506 << bitcast<u32>(2i));
      let x_1508 : i32 = u_xlati50;
      if ((x_1508 != 0i)) {
        let x_1512 : vec3<f32> = vs_TEXCOORD1;
        let x_1514 : i32 = u_xlati52;
        let x_1517 : i32 = u_xlati52;
        let x_1521 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1514 + 1i) / 4i)][((x_1517 + 1i) % 4i)];
        let x_1523 : vec3<f32> = (vec3<f32>(x_1512.y, x_1512.y, x_1512.y) * vec3<f32>(x_1521.x, x_1521.y, x_1521.w));
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
        let x_1526 : i32 = u_xlati52;
        let x_1528 : i32 = u_xlati52;
        let x_1531 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[(x_1526 / 4i)][(x_1528 % 4i)];
        let x_1533 : vec3<f32> = vs_TEXCOORD1;
        let x_1536 : vec4<f32> = u_xlat11;
        let x_1538 : vec3<f32> = ((vec3<f32>(x_1531.x, x_1531.y, x_1531.w) * vec3<f32>(x_1533.x, x_1533.x, x_1533.x)) + vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
        let x_1541 : i32 = u_xlati52;
        let x_1544 : i32 = u_xlati52;
        let x_1548 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1541 + 2i) / 4i)][((x_1544 + 2i) % 4i)];
        let x_1550 : vec3<f32> = vs_TEXCOORD1;
        let x_1553 : vec4<f32> = u_xlat11;
        let x_1555 : vec3<f32> = ((vec3<f32>(x_1548.x, x_1548.y, x_1548.w) * vec3<f32>(x_1550.z, x_1550.z, x_1550.z)) + vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
        let x_1558 : vec4<f32> = u_xlat11;
        let x_1560 : i32 = u_xlati52;
        let x_1563 : i32 = u_xlati52;
        let x_1567 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1560 + 3i) / 4i)][((x_1563 + 3i) % 4i)];
        let x_1569 : vec3<f32> = (vec3<f32>(x_1558.x, x_1558.y, x_1558.z) + vec3<f32>(x_1567.x, x_1567.y, x_1567.w));
        let x_1570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1574 : vec4<f32> = u_xlat11;
        let x_1576 : vec2<f32> = (vec2<f32>(x_1572.x, x_1572.y) / vec2<f32>(x_1574.z, x_1574.z));
        let x_1577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat11;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1579.x, x_1579.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat11;
        let x_1589 : vec2<f32> = clamp(vec2<f32>(x_1585.x, x_1585.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
        let x_1592 : i32 = u_xlati45;
        let x_1594 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1592];
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1599 : i32 = u_xlati45;
        let x_1601 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1599];
        let x_1603 : vec2<f32> = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1601.z, x_1601.w));
        let x_1604 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1603.x, x_1603.y, x_1604.z, x_1604.w);
      } else {
        let x_1607 : i32 = u_xlati49;
        u_xlatb49 = (x_1607 == 1i);
        let x_1609 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1609);
        let x_1611 : i32 = u_xlati49;
        if ((x_1611 != 0i)) {
          let x_1616 : vec3<f32> = vs_TEXCOORD1;
          let x_1618 : i32 = u_xlati52;
          let x_1621 : i32 = u_xlati52;
          let x_1625 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1618 + 1i) / 4i)][((x_1621 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1616.y, x_1616.y) * vec2<f32>(x_1625.x, x_1625.y));
          let x_1628 : i32 = u_xlati52;
          let x_1630 : i32 = u_xlati52;
          let x_1633 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[(x_1628 / 4i)][(x_1630 % 4i)];
          let x_1635 : vec3<f32> = vs_TEXCOORD1;
          let x_1638 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1635.x, x_1635.x)) + x_1638);
          let x_1640 : i32 = u_xlati52;
          let x_1643 : i32 = u_xlati52;
          let x_1647 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1640 + 2i) / 4i)][((x_1643 + 2i) % 4i)];
          let x_1649 : vec3<f32> = vs_TEXCOORD1;
          let x_1652 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1647.x, x_1647.y) * vec2<f32>(x_1649.z, x_1649.z)) + x_1652);
          let x_1654 : vec2<f32> = u_xlat39;
          let x_1655 : i32 = u_xlati52;
          let x_1658 : i32 = u_xlati52;
          let x_1662 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1655 + 3i) / 4i)][((x_1658 + 3i) % 4i)];
          u_xlat39 = (x_1654 + vec2<f32>(x_1662.x, x_1662.y));
          let x_1665 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1665 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1668 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1668);
          let x_1670 : i32 = u_xlati45;
          let x_1672 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1670];
          let x_1674 : vec2<f32> = u_xlat39;
          let x_1676 : i32 = u_xlati45;
          let x_1678 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1676];
          let x_1680 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.y) * x_1674) + vec2<f32>(x_1678.z, x_1678.w));
          let x_1681 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1680.x, x_1680.y, x_1681.z, x_1681.w);
        } else {
          let x_1685 : vec3<f32> = vs_TEXCOORD1;
          let x_1687 : i32 = u_xlati52;
          let x_1690 : i32 = u_xlati52;
          let x_1694 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1687 + 1i) / 4i)][((x_1690 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1685.y, x_1685.y, x_1685.y, x_1685.y) * x_1694);
          let x_1696 : i32 = u_xlati52;
          let x_1698 : i32 = u_xlati52;
          let x_1701 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[(x_1696 / 4i)][(x_1698 % 4i)];
          let x_1702 : vec3<f32> = vs_TEXCOORD1;
          let x_1705 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1701 * vec4<f32>(x_1702.x, x_1702.x, x_1702.x, x_1702.x)) + x_1705);
          let x_1707 : i32 = u_xlati52;
          let x_1710 : i32 = u_xlati52;
          let x_1714 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1707 + 2i) / 4i)][((x_1710 + 2i) % 4i)];
          let x_1715 : vec3<f32> = vs_TEXCOORD1;
          let x_1718 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1714 * vec4<f32>(x_1715.z, x_1715.z, x_1715.z, x_1715.z)) + x_1718);
          let x_1720 : vec4<f32> = u_xlat12;
          let x_1721 : i32 = u_xlati52;
          let x_1724 : i32 = u_xlati52;
          let x_1728 : vec4<f32> = x_762.x_AdditionalLightsWorldToLights[((x_1721 + 3i) / 4i)][((x_1724 + 3i) % 4i)];
          u_xlat12 = (x_1720 + x_1728);
          let x_1730 : vec4<f32> = u_xlat12;
          let x_1732 : vec4<f32> = u_xlat12;
          let x_1734 : vec3<f32> = (vec3<f32>(x_1730.x, x_1730.y, x_1730.z) / vec3<f32>(x_1732.w, x_1732.w, x_1732.w));
          let x_1735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
          let x_1737 : vec4<f32> = u_xlat12;
          let x_1739 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.z), vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
          let x_1742 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1742);
          let x_1744 : f32 = u_xlat49;
          let x_1746 : vec4<f32> = u_xlat12;
          let x_1748 : vec3<f32> = (vec3<f32>(x_1744, x_1744, x_1744) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
          let x_1749 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
          let x_1751 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1751.x, x_1751.y, x_1751.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1756 : f32 = u_xlat49;
          u_xlat49 = max(x_1756, 0.00000099999999747524f);
          let x_1759 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1759);
          let x_1762 : f32 = u_xlat49;
          let x_1764 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.z, x_1764.x, x_1764.y));
          let x_1768 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1768);
          let x_1772 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1772, 0.0f, 1.0f);
          let x_1776 : vec3<f32> = u_xlat13;
          let x_1778 : vec4<bool> = (vec4<f32>(x_1776.y, x_1776.z, x_1776.y, x_1776.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1778.x, x_1778.y);
          let x_1781 : bool = u_xlatb39.x;
          if (x_1781) {
            let x_1786 : f32 = u_xlat13.x;
            x_1782 = x_1786;
          } else {
            let x_1789 : f32 = u_xlat13.x;
            x_1782 = -(x_1789);
          }
          let x_1791 : f32 = x_1782;
          u_xlat39.x = x_1791;
          let x_1794 : bool = u_xlatb39.y;
          if (x_1794) {
            let x_1799 : f32 = u_xlat13.x;
            x_1795 = x_1799;
          } else {
            let x_1802 : f32 = u_xlat13.x;
            x_1795 = -(x_1802);
          }
          let x_1804 : f32 = x_1795;
          u_xlat39.y = x_1804;
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1808 : f32 = u_xlat49;
          let x_1811 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1806.x, x_1806.y) * vec2<f32>(x_1808, x_1808)) + x_1811);
          let x_1813 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1813 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1816 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1816, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1820 : i32 = u_xlati45;
          let x_1822 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1820];
          let x_1824 : vec2<f32> = u_xlat39;
          let x_1826 : i32 = u_xlati45;
          let x_1828 : vec4<f32> = x_762.x_AdditionalLightsCookieAtlasUVRects[x_1826];
          let x_1830 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.y) * x_1824) + vec2<f32>(x_1828.z, x_1828.w));
          let x_1831 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1830.x, x_1830.y, x_1831.z, x_1831.w);
        }
      }
      let x_1838 : vec4<f32> = u_xlat11;
      let x_1840 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1838.x, x_1838.y), 0.0f);
      u_xlat11 = x_1840;
      let x_1842 : bool = u_xlatb17.y;
      if (x_1842) {
        let x_1847 : f32 = u_xlat11.w;
        x_1843 = x_1847;
      } else {
        let x_1850 : f32 = u_xlat11.x;
        x_1843 = x_1850;
      }
      let x_1851 : f32 = x_1843;
      u_xlat49 = x_1851;
      let x_1853 : bool = u_xlatb17.x;
      if (x_1853) {
        let x_1857 : vec4<f32> = u_xlat11;
        x_1854 = vec3<f32>(x_1857.x, x_1857.y, x_1857.z);
      } else {
        let x_1860 : f32 = u_xlat49;
        x_1854 = vec3<f32>(x_1860, x_1860, x_1860);
      }
      let x_1862 : vec3<f32> = x_1854;
      let x_1863 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1869 : vec4<f32> = u_xlat11;
    let x_1871 : i32 = u_xlati45;
    let x_1873 : vec4<f32> = x_1218.x_AdditionalLightsColor[x_1871];
    let x_1875 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : f32 = u_xlat46;
    let x_1879 : f32 = u_xlat48;
    u_xlat45 = (x_1878 * x_1879);
    let x_1881 : vec4<f32> = u_xlat4;
    let x_1883 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
    let x_1885 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1885, 0.0f, 1.0f);
    let x_1887 : f32 = u_xlat45;
    let x_1888 : f32 = u_xlat46;
    u_xlat45 = (x_1887 * x_1888);
    let x_1890 : f32 = u_xlat45;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : vec3<f32> = u_xlat23;
    let x_1898 : f32 = u_xlat47;
    let x_1901 : vec3<f32> = u_xlat5;
    u_xlat23 = ((x_1897 * vec3<f32>(x_1898, x_1898, x_1898)) + x_1901);
    let x_1903 : vec3<f32> = u_xlat23;
    let x_1904 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1903, x_1904);
    let x_1906 : f32 = u_xlat45;
    u_xlat45 = max(x_1906, 1.17549435e-38f);
    let x_1908 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1908);
    let x_1910 : f32 = u_xlat45;
    let x_1912 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1910, x_1910, x_1910) * x_1912);
    let x_1914 : vec4<f32> = u_xlat4;
    let x_1916 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(vec3<f32>(x_1914.x, x_1914.y, x_1914.z), x_1916);
    let x_1918 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1918, 0.0f, 1.0f);
    let x_1920 : vec3<f32> = u_xlat10;
    let x_1921 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1920, x_1921);
    let x_1923 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1923, 0.0f, 1.0f);
    let x_1925 : f32 = u_xlat45;
    let x_1926 : f32 = u_xlat45;
    u_xlat45 = (x_1925 * x_1926);
    let x_1928 : f32 = u_xlat45;
    let x_1930 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1928 * x_1930) + 1.00001001358032226562f);
    let x_1933 : f32 = u_xlat46;
    let x_1934 : f32 = u_xlat46;
    u_xlat46 = (x_1933 * x_1934);
    let x_1936 : f32 = u_xlat45;
    let x_1937 : f32 = u_xlat45;
    u_xlat45 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat46;
    u_xlat46 = max(x_1939, 0.10000000149011611938f);
    let x_1941 : f32 = u_xlat45;
    let x_1942 : f32 = u_xlat46;
    u_xlat45 = (x_1941 * x_1942);
    let x_1945 : f32 = u_xlat29.x;
    let x_1946 : f32 = u_xlat45;
    u_xlat45 = (x_1945 * x_1946);
    let x_1948 : f32 = u_xlat43;
    let x_1949 : f32 = u_xlat45;
    u_xlat45 = (x_1948 / x_1949);
    let x_1951 : vec4<f32> = u_xlat0;
    let x_1953 : f32 = u_xlat45;
    let x_1956 : vec3<f32> = u_xlat16;
    u_xlat23 = ((vec3<f32>(x_1951.x, x_1951.y, x_1951.z) * vec3<f32>(x_1953, x_1953, x_1953)) + x_1956);
    let x_1958 : vec3<f32> = u_xlat23;
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1962 : vec4<f32> = u_xlat8;
    let x_1964 : vec3<f32> = ((x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);

    continuing {
      let x_1967 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1967 + bitcast<u32>(1i));
    }
  }
  let x_1969 : vec3<f32> = u_xlat6;
  let x_1970 : vec3<f32> = u_xlat3;
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : vec3<f32> = ((x_1969 * vec3<f32>(x_1970.x, x_1970.x, x_1970.x)) + vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1980 : vec4<f32> = u_xlat8;
  let x_1982 : vec4<f32> = u_xlat0;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1980.x, x_1980.y, x_1980.z) + vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1989 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1989 == 1.0f);
  let x_1991 : bool = u_xlatb0;
  if (x_1991) {
    let x_1996 : f32 = u_xlat2.x;
    x_1992 = x_1996;
  } else {
    x_1992 = 1.0f;
  }
  let x_1998 : f32 = x_1992;
  SV_Target0.w = x_1998;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}


