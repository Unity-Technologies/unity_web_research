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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(11) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_PointRepeat : sampler;

var<private> u_xlatb31 : bool;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb17 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_520 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_589 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu15 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1088 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu47 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_192 : f32;
  var x_262 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_674 : f32;
  var x_685 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1221 : f32;
  var x_1231 : f32;
  var txVec1 : vec3<f32>;
  var x_1661 : f32;
  var x_1674 : f32;
  var x_1732 : f32;
  var x_1743 : vec3<f32>;
  var x_1930 : f32;
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
  let x_162 : f32 = x_45.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat17;
  let x_175 : f32 = x_45.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat17.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb31 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb31;
  if (x_190) {
    let x_196 : f32 = u_xlat17.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat17.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat17.x = x_203;
  let x_206 : f32 = u_xlat17.x;
  let x_209 : f32 = x_185.unity_LODFade.x;
  u_xlat17.x = (-(x_206) + x_209);
  let x_214 : f32 = u_xlat17.x;
  u_xlatb17 = (x_214 < 0.0f);
  let x_216 : bool = u_xlatb17;
  if (((select(0i, 1i, x_216) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb17 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_232) + x_237);
  let x_240 : vec3<f32> = u_xlat4;
  let x_241 : vec3<f32> = u_xlat4;
  u_xlat31 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat31;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_245, x_245, x_245) * x_247);
  let x_252 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_252;
  let x_255 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_255;
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_258;
  let x_260 : bool = u_xlatb17;
  if (x_260) {
    let x_265 : vec3<f32> = u_xlat4;
    x_262 = x_265;
  } else {
    let x_267 : vec4<f32> = u_xlat5;
    x_262 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  }
  let x_269 : vec3<f32> = x_262;
  u_xlat17 = x_269;
  let x_271 : vec3<f32> = vs_TEXCOORD2;
  let x_274 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_271.z, x_271.x, x_271.y) * vec3<f32>(x_274.y, x_274.z, x_274.x));
  let x_277 : vec3<f32> = vs_TEXCOORD2;
  let x_279 : vec4<f32> = vs_TEXCOORD3;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_277.y, x_277.z, x_277.x) * vec3<f32>(x_279.z, x_279.x, x_279.y)) + -(x_282));
  let x_285 : vec3<f32> = u_xlat4;
  let x_286 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_285 * vec3<f32>(x_286.w, x_286.w, x_286.w));
  let x_289 : vec2<f32> = u_xlat29;
  let x_291 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec2<f32> = u_xlat29;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + x_298);
  let x_300 : f32 = u_xlat42;
  let x_302 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_300, x_300, x_300) * x_302) + x_304);
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_309);
  let x_311 : f32 = u_xlat42;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_316 : f32 = vs_TEXCOORD1.y;
  let x_318 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_316 * x_318);
  let x_321 : f32 = x_45.unity_MatrixV[0i].z;
  let x_323 : f32 = vs_TEXCOORD1.x;
  let x_325 : f32 = u_xlat42;
  u_xlat42 = ((x_321 * x_323) + x_325);
  let x_328 : f32 = x_45.unity_MatrixV[2i].z;
  let x_330 : f32 = vs_TEXCOORD1.z;
  let x_332 : f32 = u_xlat42;
  u_xlat42 = ((x_328 * x_330) + x_332);
  let x_334 : f32 = u_xlat42;
  let x_337 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_334 + x_337);
  let x_339 : f32 = u_xlat42;
  let x_343 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_339) + -(x_343));
  let x_346 : f32 = u_xlat42;
  u_xlat42 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat42;
  let x_351 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_348 * x_351);
  let x_359 : vec2<f32> = vs_TEXCOORD8;
  let x_361 : f32 = x_45.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_359, x_361);
  u_xlat5 = x_362;
  let x_368 : vec2<f32> = vs_TEXCOORD8;
  let x_370 : f32 = x_45.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_368, x_370);
  u_xlat6 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec3<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat29.x = dot(x_380, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_386 : f32 = u_xlat29.x;
  u_xlat29.x = (x_386 + 0.5f);
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * x_392);
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat5.w;
  u_xlat29.x = max(x_397, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec2<f32> = u_xlat29;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403.x, x_403.x, x_403.x));
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_409) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_417 : f32 = u_xlat1.y;
  let x_419 : f32 = x_70.x_Smoothness;
  let x_422 : f32 = u_xlat29.x;
  u_xlat43 = ((x_417 * x_419) + -(x_422));
  let x_426 : vec2<f32> = u_xlat29;
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.y, x_428.z, x_428.w));
  let x_431 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_70.x_BaseColor;
  let x_439 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_434.x, x_434.y, x_434.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec2<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = ((vec3<f32>(x_442.x, x_442.x, x_442.x) * vec3<f32>(x_444.x, x_444.y, x_444.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_450 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat1.y;
  let x_456 : f32 = x_70.x_Smoothness;
  u_xlat1.x = ((-(x_453) * x_456) + 1.0f);
  let x_462 : f32 = u_xlat1.x;
  let x_464 : f32 = u_xlat1.x;
  u_xlat15.x = (x_462 * x_464);
  let x_468 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_468, 0.0078125f);
  let x_473 : f32 = u_xlat15.x;
  let x_475 : f32 = u_xlat15.x;
  u_xlat29.x = (x_473 * x_475);
  let x_478 : f32 = u_xlat43;
  u_xlat43 = (x_478 + 1.0f);
  let x_480 : f32 = u_xlat43;
  u_xlat43 = clamp(x_480, 0.0f, 1.0f);
  let x_484 : f32 = u_xlat15.x;
  u_xlat46 = ((x_484 * 4.0f) + 2.0f);
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_489, 1.0f);
  let x_494 : vec4<f32> = vs_TEXCOORD6;
  let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
  let x_497 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_495.x, x_495.y, x_497);
  let x_510 : vec3<f32> = txVec0;
  let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_510.xy, x_510.z);
  u_xlat47 = x_512;
  let x_522 : f32 = x_520.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_522) + 1.0f);
  let x_526 : f32 = u_xlat47;
  let x_528 : f32 = x_520.x_MainLightShadowParams.x;
  let x_531 : f32 = u_xlat6.x;
  u_xlat47 = ((x_526 * x_528) + x_531);
  let x_535 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_535);
  let x_541 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (x_541 >= 1.0f);
  let x_545 : bool = u_xlatb20.x;
  let x_546 : bool = u_xlatb6;
  u_xlatb6 = (x_545 | x_546);
  let x_548 : bool = u_xlatb6;
  let x_549 : f32 = u_xlat47;
  u_xlat47 = select(x_549, 1.0f, x_548);
  let x_551 : vec3<f32> = vs_TEXCOORD1;
  let x_553 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_551 + -(x_553));
  let x_556 : vec3<f32> = u_xlat6;
  let x_557 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_556, x_557);
  let x_562 : f32 = u_xlat6.x;
  let x_564 : f32 = x_520.x_MainLightShadowParams.z;
  let x_567 : f32 = x_520.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_562 * x_564) + x_567);
  let x_571 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_571, 0.0f, 1.0f);
  let x_575 : f32 = u_xlat47;
  u_xlat34 = (-(x_575) + 1.0f);
  let x_579 : f32 = u_xlat20.x;
  let x_580 : f32 = u_xlat34;
  let x_582 : f32 = u_xlat47;
  u_xlat47 = ((x_579 * x_580) + x_582);
  let x_591 : f32 = x_589.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_591 == -1.0f));
  let x_595 : bool = u_xlatb20.x;
  if (x_595) {
    let x_598 : vec3<f32> = vs_TEXCOORD1;
    let x_601 : vec4<f32> = x_589.x_MainLightWorldToLight[1i];
    let x_603 : vec2<f32> = (vec2<f32>(x_598.y, x_598.y) * vec2<f32>(x_601.x, x_601.y));
    let x_604 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_603.x, x_603.y, x_604.z);
    let x_607 : vec4<f32> = x_589.x_MainLightWorldToLight[0i];
    let x_609 : vec3<f32> = vs_TEXCOORD1;
    let x_612 : vec3<f32> = u_xlat20;
    let x_614 : vec2<f32> = ((vec2<f32>(x_607.x, x_607.y) * vec2<f32>(x_609.x, x_609.x)) + vec2<f32>(x_612.x, x_612.y));
    let x_615 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_614.x, x_614.y, x_615.z);
    let x_618 : vec4<f32> = x_589.x_MainLightWorldToLight[2i];
    let x_620 : vec3<f32> = vs_TEXCOORD1;
    let x_623 : vec3<f32> = u_xlat20;
    let x_625 : vec2<f32> = ((vec2<f32>(x_618.x, x_618.y) * vec2<f32>(x_620.z, x_620.z)) + vec2<f32>(x_623.x, x_623.y));
    let x_626 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_625.x, x_625.y, x_626.z);
    let x_628 : vec3<f32> = u_xlat20;
    let x_631 : vec4<f32> = x_589.x_MainLightWorldToLight[3i];
    let x_633 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) + vec2<f32>(x_631.x, x_631.y));
    let x_634 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_633.x, x_633.y, x_634.z);
    let x_636 : vec3<f32> = u_xlat20;
    let x_640 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_641 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_640.x, x_640.y, x_641.z);
    let x_649 : vec3<f32> = u_xlat20;
    let x_652 : f32 = x_45.x_GlobalMipBias.x;
    let x_653 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_649.x, x_649.y), x_652);
    u_xlat7 = x_653;
    let x_655 : f32 = x_589.x_MainLightCookieTextureFormat;
    let x_657 : f32 = x_589.x_MainLightCookieTextureFormat;
    let x_659 : f32 = x_589.x_MainLightCookieTextureFormat;
    let x_661 : f32 = x_589.x_MainLightCookieTextureFormat;
    let x_662 : vec4<f32> = vec4<f32>(x_655, x_657, x_659, x_661);
    let x_670 : vec4<bool> = (vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_670.x, x_670.y);
    let x_673 : bool = u_xlatb20.y;
    if (x_673) {
      let x_678 : f32 = u_xlat7.w;
      x_674 = x_678;
    } else {
      let x_681 : f32 = u_xlat7.x;
      x_674 = x_681;
    }
    let x_682 : f32 = x_674;
    u_xlat34 = x_682;
    let x_684 : bool = u_xlatb20.x;
    if (x_684) {
      let x_688 : vec4<f32> = u_xlat7;
      x_685 = vec3<f32>(x_688.x, x_688.y, x_688.z);
    } else {
      let x_691 : f32 = u_xlat34;
      x_685 = vec3<f32>(x_691, x_691, x_691);
    }
    let x_693 : vec3<f32> = x_685;
    u_xlat20 = x_693;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_698 : vec3<f32> = u_xlat20;
  let x_700 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat20 = (x_698 * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec3<f32> = u_xlat17;
  let x_705 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_703), x_705);
  let x_709 : f32 = u_xlat7.x;
  let x_711 : f32 = u_xlat7.x;
  u_xlat7.x = (x_709 + x_711);
  let x_714 : vec3<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat7;
  let x_719 : vec3<f32> = u_xlat17;
  let x_721 : vec3<f32> = ((x_714 * -(vec3<f32>(x_715.x, x_715.x, x_715.x))) + -(x_719));
  let x_722 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_725 : vec3<f32> = u_xlat4;
  let x_726 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(x_725, x_726);
  let x_728 : f32 = u_xlat49;
  u_xlat49 = clamp(x_728, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat49;
  u_xlat49 = (-(x_730) + 1.0f);
  let x_733 : f32 = u_xlat49;
  let x_734 : f32 = u_xlat49;
  u_xlat49 = (x_733 * x_734);
  let x_736 : f32 = u_xlat49;
  let x_737 : f32 = u_xlat49;
  u_xlat49 = (x_736 * x_737);
  let x_741 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_741) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_749 : f32 = u_xlat1.x;
  let x_751 : f32 = u_xlat8.x;
  u_xlat1.x = (x_749 * x_751);
  let x_755 : f32 = u_xlat1.x;
  u_xlat1.x = (x_755 * 6.0f);
  let x_767 : vec4<f32> = u_xlat7;
  let x_770 : f32 = u_xlat1.x;
  let x_771 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_767.x, x_767.y, x_767.z), x_770);
  u_xlat8 = x_771;
  let x_773 : f32 = u_xlat8.w;
  u_xlat1.x = (x_773 + -1.0f);
  let x_777 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_779 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_777 * x_779) + 1.0f);
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_784, 0.0f);
  let x_788 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_788);
  let x_792 : f32 = u_xlat1.x;
  let x_794 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_792 * x_794);
  let x_798 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_798);
  let x_802 : f32 = u_xlat1.x;
  let x_804 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_802 * x_804);
  let x_807 : vec4<f32> = u_xlat8;
  let x_809 : vec2<f32> = u_xlat1;
  let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) * vec3<f32>(x_809.x, x_809.x, x_809.x));
  let x_812 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec3<f32> = u_xlat15;
  let x_816 : vec3<f32> = u_xlat15;
  u_xlat1 = ((vec2<f32>(x_814.x, x_814.x) * vec2<f32>(x_816.x, x_816.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_822 : f32 = u_xlat1.y;
  u_xlat15.x = (1.0f / x_822);
  let x_825 : vec4<f32> = u_xlat0;
  let x_828 : f32 = u_xlat43;
  let x_830 : vec3<f32> = (-(vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828, x_828, x_828));
  let x_831 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : f32 = u_xlat49;
  let x_835 : vec4<f32> = u_xlat8;
  let x_838 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = ((vec3<f32>(x_833, x_833, x_833) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec3<f32> = u_xlat15;
  let x_845 : vec4<f32> = u_xlat8;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.x, x_843.x) * vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat7;
  let x_852 : vec4<f32> = u_xlat8;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat5;
  let x_859 : vec3<f32> = u_xlat16;
  let x_861 : vec4<f32> = u_xlat7;
  let x_863 : vec3<f32> = ((vec3<f32>(x_857.x, x_857.y, x_857.z) * x_859) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : f32 = u_xlat47;
  let x_868 : f32 = x_185.unity_LightData.z;
  u_xlat15.x = (x_866 * x_868);
  let x_871 : vec3<f32> = u_xlat4;
  let x_873 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat43 = dot(x_871, vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : f32 = u_xlat43;
  u_xlat43 = clamp(x_876, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat43;
  let x_880 : f32 = u_xlat15.x;
  u_xlat15.x = (x_878 * x_880);
  let x_883 : vec3<f32> = u_xlat15;
  let x_885 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_883.x, x_883.x, x_883.x) * x_885);
  let x_887 : vec3<f32> = u_xlat17;
  let x_889 : vec4<f32> = x_45.x_MainLightPosition;
  let x_891 : vec3<f32> = (x_887 + vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat7;
  let x_896 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_894.x, x_894.y, x_894.z), vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_901 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_901, 1.17549435e-38f);
  let x_906 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_906);
  let x_909 : vec3<f32> = u_xlat15;
  let x_911 : vec4<f32> = u_xlat7;
  let x_913 : vec3<f32> = (vec3<f32>(x_909.x, x_909.x, x_909.x) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec3<f32> = u_xlat4;
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(x_916, vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_922 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_922, 0.0f, 1.0f);
  let x_926 : vec4<f32> = x_45.x_MainLightPosition;
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat15.z = dot(vec3<f32>(x_926.x, x_926.y, x_926.z), vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_933 : f32 = u_xlat15.z;
  u_xlat15.z = clamp(x_933, 0.0f, 1.0f);
  let x_936 : vec3<f32> = u_xlat15;
  let x_938 : vec3<f32> = u_xlat15;
  let x_940 : vec2<f32> = (vec2<f32>(x_936.x, x_936.z) * vec2<f32>(x_938.x, x_938.z));
  let x_941 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_940.x, x_941.y, x_940.y);
  let x_944 : f32 = u_xlat15.x;
  let x_946 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_944 * x_946) + 1.00001001358032226562f);
  let x_952 : f32 = u_xlat15.x;
  let x_954 : f32 = u_xlat15.x;
  u_xlat15.x = (x_952 * x_954);
  let x_958 : f32 = u_xlat15.z;
  u_xlat43 = max(x_958, 0.10000000149011611938f);
  let x_961 : f32 = u_xlat43;
  let x_963 : f32 = u_xlat15.x;
  u_xlat15.x = (x_961 * x_963);
  let x_966 : f32 = u_xlat46;
  let x_968 : f32 = u_xlat15.x;
  u_xlat15.x = (x_966 * x_968);
  let x_972 : f32 = u_xlat29.x;
  let x_974 : f32 = u_xlat15.x;
  u_xlat15.x = (x_972 / x_974);
  let x_977 : vec4<f32> = u_xlat0;
  let x_979 : vec3<f32> = u_xlat15;
  let x_982 : vec3<f32> = u_xlat16;
  let x_983 : vec3<f32> = ((vec3<f32>(x_977.x, x_977.y, x_977.z) * vec3<f32>(x_979.x, x_979.x, x_979.x)) + x_982);
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec3<f32> = u_xlat20;
  let x_987 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_986 * vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_991 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_993 : f32 = x_185.unity_LightData.y;
  u_xlat15.x = min(x_991, x_993);
  let x_999 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_999));
  let x_1003 : f32 = u_xlat6.x;
  let x_1006 : f32 = x_520.x_AdditionalShadowFadeParams.x;
  let x_1009 : f32 = x_520.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1003 * x_1006) + x_1009);
  let x_1011 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1011, 0.0f, 1.0f);
  let x_1015 : f32 = x_589.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1017 : f32 = x_589.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1019 : f32 = x_589.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1021 : f32 = x_589.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1022 : vec4<f32> = vec4<f32>(x_1015, x_1017, x_1019, x_1021);
  let x_1028 : vec4<bool> = (vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1028.x, x_1028.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1040 : u32 = u_xlatu_loop_1;
    let x_1041 : u32 = u_xlatu15;
    if ((x_1040 < x_1041)) {
    } else {
      break;
    }
    let x_1044 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1044 >> 2u);
    let x_1048 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1048 & 3u));
    let x_1051 : u32 = u_xlatu6;
    let x_1054 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_1051)];
    let x_1064 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1069 : vec4<u32> = indexable[x_1064];
    u_xlat6.x = dot(x_1054, bitcast<vec4<f32>>(x_1069));
    let x_1075 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1075);
    let x_1078 : vec3<f32> = vs_TEXCOORD1;
    let x_1089 : i32 = u_xlati6;
    let x_1091 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1089];
    let x_1094 : i32 = u_xlati6;
    let x_1096 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1094];
    u_xlat9 = ((-(x_1078) * vec3<f32>(x_1091.w, x_1091.w, x_1091.w)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
    let x_1100 : vec3<f32> = u_xlat9;
    let x_1101 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1100, x_1101);
    let x_1103 : f32 = u_xlat35;
    u_xlat35 = max(x_1103, 0.00006103515625f);
    let x_1106 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1106);
    let x_1109 : f32 = u_xlat49;
    let x_1111 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1109, x_1109, x_1109) * x_1111);
    let x_1114 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1114);
    let x_1116 : f32 = u_xlat35;
    let x_1117 : i32 = u_xlati6;
    let x_1119 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1117].x;
    u_xlat35 = (x_1116 * x_1119);
    let x_1121 : f32 = u_xlat35;
    let x_1123 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1121) * x_1123) + 1.0f);
    let x_1126 : f32 = u_xlat35;
    u_xlat35 = max(x_1126, 0.0f);
    let x_1128 : f32 = u_xlat35;
    let x_1129 : f32 = u_xlat35;
    u_xlat35 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat35;
    let x_1132 : f32 = u_xlat50;
    u_xlat35 = (x_1131 * x_1132);
    let x_1134 : i32 = u_xlati6;
    let x_1136 : vec4<f32> = x_1088.x_AdditionalLightsSpotDir[x_1134];
    let x_1138 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1136.x, x_1136.y, x_1136.z), x_1138);
    let x_1140 : f32 = u_xlat50;
    let x_1141 : i32 = u_xlati6;
    let x_1143 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1141].z;
    let x_1145 : i32 = u_xlati6;
    let x_1147 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1145].w;
    u_xlat50 = ((x_1140 * x_1143) + x_1147);
    let x_1149 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1149, 0.0f, 1.0f);
    let x_1151 : f32 = u_xlat50;
    let x_1152 : f32 = u_xlat50;
    u_xlat50 = (x_1151 * x_1152);
    let x_1154 : f32 = u_xlat35;
    let x_1155 : f32 = u_xlat50;
    u_xlat35 = (x_1154 * x_1155);
    let x_1159 : i32 = u_xlati6;
    let x_1161 : f32 = x_520.x_AdditionalShadowParams[x_1159].w;
    u_xlati50 = i32(x_1161);
    let x_1164 : i32 = u_xlati50;
    u_xlatb51 = (x_1164 >= 0i);
    let x_1166 : bool = u_xlatb51;
    if (x_1166) {
      let x_1170 : i32 = u_xlati6;
      let x_1172 : f32 = x_520.x_AdditionalShadowParams[x_1170].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1172, x_1172, x_1172, x_1172))));
      let x_1176 : bool = u_xlatb51;
      if (x_1176) {
        let x_1181 : vec3<f32> = u_xlat10;
        let x_1184 : vec3<f32> = u_xlat10;
        let x_1187 : vec4<bool> = (abs(vec4<f32>(x_1181.z, x_1181.z, x_1181.y, x_1181.z)) >= abs(vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.x)));
        let x_1189 : vec3<bool> = vec3<bool>(x_1187.x, x_1187.y, x_1187.z);
        let x_1190 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1193 : bool = u_xlatb11.y;
        let x_1195 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1193 & x_1195);
        let x_1197 : vec3<f32> = u_xlat10;
        let x_1200 : vec4<bool> = (-(vec4<f32>(x_1197.z, x_1197.y, x_1197.z, x_1197.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1201 : vec3<bool> = vec3<bool>(x_1200.x, x_1200.y, x_1200.w);
        let x_1202 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1201.x, x_1201.y, x_1202.z, x_1201.z);
        let x_1206 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1206);
        let x_1211 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1211);
        let x_1217 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1217);
        let x_1220 : bool = u_xlatb11.z;
        if (x_1220) {
          let x_1225 : f32 = u_xlat11.y;
          x_1221 = x_1225;
        } else {
          let x_1227 : f32 = u_xlat52;
          x_1221 = x_1227;
        }
        let x_1228 : f32 = x_1221;
        u_xlat52 = x_1228;
        let x_1230 : bool = u_xlatb51;
        if (x_1230) {
          let x_1235 : f32 = u_xlat11.x;
          x_1231 = x_1235;
        } else {
          let x_1237 : f32 = u_xlat52;
          x_1231 = x_1237;
        }
        let x_1238 : f32 = x_1231;
        u_xlat51 = x_1238;
        let x_1239 : i32 = u_xlati6;
        let x_1241 : f32 = x_520.x_AdditionalShadowParams[x_1239].w;
        u_xlat52 = trunc(x_1241);
        let x_1243 : f32 = u_xlat51;
        let x_1244 : f32 = u_xlat52;
        u_xlat51 = (x_1243 + x_1244);
        let x_1246 : f32 = u_xlat51;
        u_xlati50 = i32(x_1246);
      }
      let x_1248 : i32 = u_xlati50;
      u_xlati50 = (x_1248 << bitcast<u32>(2i));
      let x_1250 : vec3<f32> = vs_TEXCOORD1;
      let x_1253 : i32 = u_xlati50;
      let x_1256 : i32 = u_xlati50;
      let x_1260 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1253 + 1i) / 4i)][((x_1256 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1250.y, x_1250.y, x_1250.y, x_1250.y) * x_1260);
      let x_1262 : i32 = u_xlati50;
      let x_1264 : i32 = u_xlati50;
      let x_1267 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[(x_1262 / 4i)][(x_1264 % 4i)];
      let x_1268 : vec3<f32> = vs_TEXCOORD1;
      let x_1271 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1267 * vec4<f32>(x_1268.x, x_1268.x, x_1268.x, x_1268.x)) + x_1271);
      let x_1273 : i32 = u_xlati50;
      let x_1276 : i32 = u_xlati50;
      let x_1280 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1273 + 2i) / 4i)][((x_1276 + 2i) % 4i)];
      let x_1281 : vec3<f32> = vs_TEXCOORD1;
      let x_1284 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1280 * vec4<f32>(x_1281.z, x_1281.z, x_1281.z, x_1281.z)) + x_1284);
      let x_1286 : vec4<f32> = u_xlat11;
      let x_1287 : i32 = u_xlati50;
      let x_1290 : i32 = u_xlati50;
      let x_1294 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1287 + 3i) / 4i)][((x_1290 + 3i) % 4i)];
      u_xlat11 = (x_1286 + x_1294);
      let x_1296 : vec4<f32> = u_xlat11;
      let x_1298 : vec4<f32> = u_xlat11;
      let x_1300 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) / vec3<f32>(x_1298.w, x_1298.w, x_1298.w));
      let x_1301 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
      let x_1304 : vec4<f32> = u_xlat11;
      let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
      let x_1307 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
      let x_1315 : vec3<f32> = txVec1;
      let x_1317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
      u_xlat50 = x_1317;
      let x_1318 : i32 = u_xlati6;
      let x_1320 : f32 = x_520.x_AdditionalShadowParams[x_1318].x;
      u_xlat51 = (1.0f + -(x_1320));
      let x_1323 : f32 = u_xlat50;
      let x_1324 : i32 = u_xlati6;
      let x_1326 : f32 = x_520.x_AdditionalShadowParams[x_1324].x;
      let x_1328 : f32 = u_xlat51;
      u_xlat50 = ((x_1323 * x_1326) + x_1328);
      let x_1331 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1331);
      let x_1335 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1335 >= 1.0f);
      let x_1337 : bool = u_xlatb51;
      let x_1338 : bool = u_xlatb52;
      u_xlatb51 = (x_1337 | x_1338);
      let x_1340 : bool = u_xlatb51;
      let x_1341 : f32 = u_xlat50;
      u_xlat50 = select(x_1341, 1.0f, x_1340);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1344 : f32 = u_xlat50;
    u_xlat51 = (-(x_1344) + 1.0f);
    let x_1347 : f32 = u_xlat43;
    let x_1348 : f32 = u_xlat51;
    let x_1350 : f32 = u_xlat50;
    u_xlat50 = ((x_1347 * x_1348) + x_1350);
    let x_1353 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1353 & 31i)));
    let x_1357 : i32 = u_xlati51;
    let x_1360 : f32 = x_589.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1357) & bitcast<u32>(x_1360)));
    let x_1364 : i32 = u_xlati51;
    if ((x_1364 != 0i)) {
      let x_1368 : i32 = u_xlati6;
      let x_1370 : f32 = x_589.x_AdditionalLightsLightTypes[x_1368].el;
      u_xlati51 = i32(x_1370);
      let x_1373 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1373 != 0i));
      let x_1377 : i32 = u_xlati6;
      u_xlati11 = (x_1377 << bitcast<u32>(2i));
      let x_1379 : i32 = u_xlati52;
      if ((x_1379 != 0i)) {
        let x_1384 : vec3<f32> = vs_TEXCOORD1;
        let x_1386 : i32 = u_xlati11;
        let x_1389 : i32 = u_xlati11;
        let x_1393 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1386 + 1i) / 4i)][((x_1389 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1384.y, x_1384.y, x_1384.y) * vec3<f32>(x_1393.x, x_1393.y, x_1393.w));
        let x_1396 : i32 = u_xlati11;
        let x_1398 : i32 = u_xlati11;
        let x_1401 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[(x_1396 / 4i)][(x_1398 % 4i)];
        let x_1403 : vec3<f32> = vs_TEXCOORD1;
        let x_1406 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1401.x, x_1401.y, x_1401.w) * vec3<f32>(x_1403.x, x_1403.x, x_1403.x)) + x_1406);
        let x_1408 : i32 = u_xlati11;
        let x_1411 : i32 = u_xlati11;
        let x_1415 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1408 + 2i) / 4i)][((x_1411 + 2i) % 4i)];
        let x_1417 : vec3<f32> = vs_TEXCOORD1;
        let x_1420 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1415.x, x_1415.y, x_1415.w) * vec3<f32>(x_1417.z, x_1417.z, x_1417.z)) + x_1420);
        let x_1422 : vec3<f32> = u_xlat25;
        let x_1423 : i32 = u_xlati11;
        let x_1426 : i32 = u_xlati11;
        let x_1430 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1423 + 3i) / 4i)][((x_1426 + 3i) % 4i)];
        u_xlat25 = (x_1422 + vec3<f32>(x_1430.x, x_1430.y, x_1430.w));
        let x_1433 : vec3<f32> = u_xlat25;
        let x_1435 : vec3<f32> = u_xlat25;
        let x_1437 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) / vec2<f32>(x_1435.z, x_1435.z));
        let x_1438 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1437.x, x_1437.y, x_1438.z);
        let x_1440 : vec3<f32> = u_xlat25;
        let x_1443 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1444 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1443.x, x_1443.y, x_1444.z);
        let x_1446 : vec3<f32> = u_xlat25;
        let x_1450 : vec2<f32> = clamp(vec2<f32>(x_1446.x, x_1446.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1451 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1450.x, x_1450.y, x_1451.z);
        let x_1453 : i32 = u_xlati6;
        let x_1455 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1453];
        let x_1457 : vec3<f32> = u_xlat25;
        let x_1460 : i32 = u_xlati6;
        let x_1462 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1460];
        let x_1464 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1457.x, x_1457.y)) + vec2<f32>(x_1462.z, x_1462.w));
        let x_1465 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1464.x, x_1464.y, x_1465.z);
      } else {
        let x_1468 : i32 = u_xlati51;
        u_xlatb51 = (x_1468 == 1i);
        let x_1470 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1470);
        let x_1472 : i32 = u_xlati51;
        if ((x_1472 != 0i)) {
          let x_1477 : vec3<f32> = vs_TEXCOORD1;
          let x_1479 : i32 = u_xlati11;
          let x_1482 : i32 = u_xlati11;
          let x_1486 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1479 + 1i) / 4i)][((x_1482 + 1i) % 4i)];
          let x_1488 : vec2<f32> = (vec2<f32>(x_1477.y, x_1477.y) * vec2<f32>(x_1486.x, x_1486.y));
          let x_1489 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1488.x, x_1488.y, x_1489.z, x_1489.w);
          let x_1491 : i32 = u_xlati11;
          let x_1493 : i32 = u_xlati11;
          let x_1496 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[(x_1491 / 4i)][(x_1493 % 4i)];
          let x_1498 : vec3<f32> = vs_TEXCOORD1;
          let x_1501 : vec4<f32> = u_xlat12;
          let x_1503 : vec2<f32> = ((vec2<f32>(x_1496.x, x_1496.y) * vec2<f32>(x_1498.x, x_1498.x)) + vec2<f32>(x_1501.x, x_1501.y));
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
          let x_1506 : i32 = u_xlati11;
          let x_1509 : i32 = u_xlati11;
          let x_1513 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1506 + 2i) / 4i)][((x_1509 + 2i) % 4i)];
          let x_1515 : vec3<f32> = vs_TEXCOORD1;
          let x_1518 : vec4<f32> = u_xlat12;
          let x_1520 : vec2<f32> = ((vec2<f32>(x_1513.x, x_1513.y) * vec2<f32>(x_1515.z, x_1515.z)) + vec2<f32>(x_1518.x, x_1518.y));
          let x_1521 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
          let x_1523 : vec4<f32> = u_xlat12;
          let x_1525 : i32 = u_xlati11;
          let x_1528 : i32 = u_xlati11;
          let x_1532 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1525 + 3i) / 4i)][((x_1528 + 3i) % 4i)];
          let x_1534 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.y) + vec2<f32>(x_1532.x, x_1532.y));
          let x_1535 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1534.x, x_1534.y, x_1535.z, x_1535.w);
          let x_1537 : vec4<f32> = u_xlat12;
          let x_1540 : vec2<f32> = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1541 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
          let x_1543 : vec4<f32> = u_xlat12;
          let x_1545 : vec2<f32> = fract(vec2<f32>(x_1543.x, x_1543.y));
          let x_1546 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1545.x, x_1545.y, x_1546.z, x_1546.w);
          let x_1548 : i32 = u_xlati6;
          let x_1550 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1548];
          let x_1552 : vec4<f32> = u_xlat12;
          let x_1555 : i32 = u_xlati6;
          let x_1557 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1555];
          let x_1559 : vec2<f32> = ((vec2<f32>(x_1550.x, x_1550.y) * vec2<f32>(x_1552.x, x_1552.y)) + vec2<f32>(x_1557.z, x_1557.w));
          let x_1560 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1559.x, x_1559.y, x_1560.z);
        } else {
          let x_1563 : vec3<f32> = vs_TEXCOORD1;
          let x_1565 : i32 = u_xlati11;
          let x_1568 : i32 = u_xlati11;
          let x_1572 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1565 + 1i) / 4i)][((x_1568 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1563.y, x_1563.y, x_1563.y, x_1563.y) * x_1572);
          let x_1574 : i32 = u_xlati11;
          let x_1576 : i32 = u_xlati11;
          let x_1579 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[(x_1574 / 4i)][(x_1576 % 4i)];
          let x_1580 : vec3<f32> = vs_TEXCOORD1;
          let x_1583 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1579 * vec4<f32>(x_1580.x, x_1580.x, x_1580.x, x_1580.x)) + x_1583);
          let x_1585 : i32 = u_xlati11;
          let x_1588 : i32 = u_xlati11;
          let x_1592 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1585 + 2i) / 4i)][((x_1588 + 2i) % 4i)];
          let x_1593 : vec3<f32> = vs_TEXCOORD1;
          let x_1596 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1592 * vec4<f32>(x_1593.z, x_1593.z, x_1593.z, x_1593.z)) + x_1596);
          let x_1598 : vec4<f32> = u_xlat12;
          let x_1599 : i32 = u_xlati11;
          let x_1602 : i32 = u_xlati11;
          let x_1606 : vec4<f32> = x_589.x_AdditionalLightsWorldToLights[((x_1599 + 3i) / 4i)][((x_1602 + 3i) % 4i)];
          u_xlat12 = (x_1598 + x_1606);
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec4<f32> = u_xlat12;
          let x_1612 : vec3<f32> = (vec3<f32>(x_1608.x, x_1608.y, x_1608.z) / vec3<f32>(x_1610.w, x_1610.w, x_1610.w));
          let x_1613 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
          let x_1615 : vec4<f32> = u_xlat12;
          let x_1617 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1615.x, x_1615.y, x_1615.z), vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
          let x_1620 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1620);
          let x_1622 : f32 = u_xlat51;
          let x_1624 : vec4<f32> = u_xlat12;
          let x_1626 : vec3<f32> = (vec3<f32>(x_1622, x_1622, x_1622) * vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
          let x_1627 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1629.x, x_1629.y, x_1629.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1634 : f32 = u_xlat51;
          u_xlat51 = max(x_1634, 0.00000099999999747524f);
          let x_1637 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1637);
          let x_1640 : f32 = u_xlat51;
          let x_1642 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1640, x_1640, x_1640) * vec3<f32>(x_1642.z, x_1642.x, x_1642.y));
          let x_1646 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1646);
          let x_1650 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1650, 0.0f, 1.0f);
          let x_1653 : vec3<f32> = u_xlat13;
          let x_1655 : vec4<bool> = (vec4<f32>(x_1653.y, x_1653.y, x_1653.y, x_1653.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1656 : vec2<bool> = vec2<bool>(x_1655.x, x_1655.w);
          let x_1657 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1656.x, x_1657.y, x_1657.z, x_1656.y);
          let x_1660 : bool = u_xlatb11.x;
          if (x_1660) {
            let x_1665 : f32 = u_xlat13.x;
            x_1661 = x_1665;
          } else {
            let x_1668 : f32 = u_xlat13.x;
            x_1661 = -(x_1668);
          }
          let x_1670 : f32 = x_1661;
          u_xlat11.x = x_1670;
          let x_1673 : bool = u_xlatb11.w;
          if (x_1673) {
            let x_1678 : f32 = u_xlat13.x;
            x_1674 = x_1678;
          } else {
            let x_1681 : f32 = u_xlat13.x;
            x_1674 = -(x_1681);
          }
          let x_1683 : f32 = x_1674;
          u_xlat11.w = x_1683;
          let x_1685 : vec4<f32> = u_xlat12;
          let x_1687 : f32 = u_xlat51;
          let x_1690 : vec4<f32> = u_xlat11;
          let x_1692 : vec2<f32> = ((vec2<f32>(x_1685.x, x_1685.y) * vec2<f32>(x_1687, x_1687)) + vec2<f32>(x_1690.x, x_1690.w));
          let x_1693 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1692.x, x_1693.y, x_1693.z, x_1692.y);
          let x_1695 : vec4<f32> = u_xlat11;
          let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.x, x_1695.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1699 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1698.x, x_1699.y, x_1699.z, x_1698.y);
          let x_1701 : vec4<f32> = u_xlat11;
          let x_1705 : vec2<f32> = clamp(vec2<f32>(x_1701.x, x_1701.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1706 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1705.x, x_1706.y, x_1706.z, x_1705.y);
          let x_1708 : i32 = u_xlati6;
          let x_1710 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1708];
          let x_1712 : vec4<f32> = u_xlat11;
          let x_1715 : i32 = u_xlati6;
          let x_1717 : vec4<f32> = x_589.x_AdditionalLightsCookieAtlasUVRects[x_1715];
          let x_1719 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1712.x, x_1712.w)) + vec2<f32>(x_1717.z, x_1717.w));
          let x_1720 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1719.x, x_1719.y, x_1720.z);
        }
      }
      let x_1727 : vec3<f32> = u_xlat25;
      let x_1729 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1727.x, x_1727.y), 0.0f);
      u_xlat11 = x_1729;
      let x_1731 : bool = u_xlatb7.y;
      if (x_1731) {
        let x_1736 : f32 = u_xlat11.w;
        x_1732 = x_1736;
      } else {
        let x_1739 : f32 = u_xlat11.x;
        x_1732 = x_1739;
      }
      let x_1740 : f32 = x_1732;
      u_xlat51 = x_1740;
      let x_1742 : bool = u_xlatb7.x;
      if (x_1742) {
        let x_1746 : vec4<f32> = u_xlat11;
        x_1743 = vec3<f32>(x_1746.x, x_1746.y, x_1746.z);
      } else {
        let x_1749 : f32 = u_xlat51;
        x_1743 = vec3<f32>(x_1749, x_1749, x_1749);
      }
      let x_1751 : vec3<f32> = x_1743;
      let x_1752 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1758 : vec4<f32> = u_xlat11;
    let x_1760 : i32 = u_xlati6;
    let x_1762 : vec4<f32> = x_1088.x_AdditionalLightsColor[x_1760];
    let x_1764 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
    let x_1765 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
    let x_1767 : f32 = u_xlat35;
    let x_1768 : f32 = u_xlat50;
    u_xlat6.x = (x_1767 * x_1768);
    let x_1771 : vec3<f32> = u_xlat4;
    let x_1772 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(x_1771, x_1772);
    let x_1774 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1774, 0.0f, 1.0f);
    let x_1777 : f32 = u_xlat6.x;
    let x_1778 : f32 = u_xlat35;
    u_xlat6.x = (x_1777 * x_1778);
    let x_1781 : vec3<f32> = u_xlat6;
    let x_1783 : vec4<f32> = u_xlat11;
    let x_1785 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.x, x_1781.x) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
    let x_1788 : vec3<f32> = u_xlat9;
    let x_1789 : f32 = u_xlat49;
    let x_1792 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1788 * vec3<f32>(x_1789, x_1789, x_1789)) + x_1792);
    let x_1794 : vec3<f32> = u_xlat9;
    let x_1795 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1794, x_1795);
    let x_1799 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1799, 1.17549435e-38f);
    let x_1803 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1803);
    let x_1806 : vec3<f32> = u_xlat6;
    let x_1808 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1806.x, x_1806.x, x_1806.x) * x_1808);
    let x_1810 : vec3<f32> = u_xlat4;
    let x_1811 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1810, x_1811);
    let x_1815 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1815, 0.0f, 1.0f);
    let x_1818 : vec3<f32> = u_xlat10;
    let x_1819 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1818, x_1819);
    let x_1821 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1821, 0.0f, 1.0f);
    let x_1824 : f32 = u_xlat6.x;
    let x_1826 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1824 * x_1826);
    let x_1830 : f32 = u_xlat6.x;
    let x_1832 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1830 * x_1832) + 1.00001001358032226562f);
    let x_1836 : f32 = u_xlat35;
    let x_1837 : f32 = u_xlat35;
    u_xlat35 = (x_1836 * x_1837);
    let x_1840 : f32 = u_xlat6.x;
    let x_1842 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1840 * x_1842);
    let x_1845 : f32 = u_xlat35;
    u_xlat35 = max(x_1845, 0.10000000149011611938f);
    let x_1848 : f32 = u_xlat6.x;
    let x_1849 : f32 = u_xlat35;
    u_xlat6.x = (x_1848 * x_1849);
    let x_1852 : f32 = u_xlat46;
    let x_1854 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1852 * x_1854);
    let x_1858 : f32 = u_xlat29.x;
    let x_1860 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1858 / x_1860);
    let x_1863 : vec4<f32> = u_xlat0;
    let x_1865 : vec3<f32> = u_xlat6;
    let x_1868 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1863.x, x_1863.y, x_1863.z) * vec3<f32>(x_1865.x, x_1865.x, x_1865.x)) + x_1868);
    let x_1870 : vec3<f32> = u_xlat9;
    let x_1871 : vec4<f32> = u_xlat11;
    let x_1874 : vec4<f32> = u_xlat8;
    let x_1876 : vec3<f32> = ((x_1870 * vec3<f32>(x_1871.x, x_1871.y, x_1871.z)) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);

    continuing {
      let x_1879 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1879 + bitcast<u32>(1i));
    }
  }
  let x_1881 : vec4<f32> = u_xlat5;
  let x_1883 : vec3<f32> = u_xlat3;
  let x_1886 : vec3<f32> = u_xlat20;
  let x_1887 : vec3<f32> = ((vec3<f32>(x_1881.x, x_1881.y, x_1881.z) * vec3<f32>(x_1883.x, x_1883.x, x_1883.x)) + x_1886);
  let x_1888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec4<f32> = u_xlat8;
  let x_1892 : vec4<f32> = u_xlat0;
  let x_1894 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.y, x_1890.z) + vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
  let x_1895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
  let x_1897 : f32 = u_xlat42;
  let x_1898 : f32 = u_xlat42;
  u_xlat42 = (x_1897 * -(x_1898));
  let x_1901 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1901);
  let x_1903 : vec4<f32> = u_xlat0;
  let x_1906 : vec4<f32> = x_45.unity_FogColor;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1903.x, x_1903.y, x_1903.z) + -(vec3<f32>(x_1906.x, x_1906.y, x_1906.z)));
  let x_1910 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1914 : f32 = u_xlat42;
  let x_1916 : vec4<f32> = u_xlat0;
  let x_1920 : vec4<f32> = x_45.unity_FogColor;
  let x_1922 : vec3<f32> = ((vec3<f32>(x_1914, x_1914, x_1914) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z)) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1927 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1927 == 1.0f);
  let x_1929 : bool = u_xlatb0;
  if (x_1929) {
    let x_1934 : f32 = u_xlat2.x;
    x_1930 = x_1934;
  } else {
    x_1930 = 1.0f;
  }
  let x_1936 : f32 = x_1930;
  SV_Target0.w = x_1936;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


