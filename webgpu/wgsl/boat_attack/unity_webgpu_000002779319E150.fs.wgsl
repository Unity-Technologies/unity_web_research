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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_309 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_375 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_560 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_822 : AdditionalLights;

var<private> u_xlat51 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlati52 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb25 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb40 : vec2<bool>;

var<private> u_xlat40 : vec2<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat53 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_96 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_463 : f32;
  var x_474 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_958 : f32;
  var x_970 : f32;
  var txVec1 : vec3<f32>;
  var x_1433 : f32;
  var x_1446 : f32;
  var x_1504 : f32;
  var x_1515 : vec3<f32>;
  var x_1674 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb42 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat44;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb42;
  if (x_94) {
    let x_99 : vec3<f32> = u_xlat2;
    x_96 = x_99;
  } else {
    let x_101 : vec3<f32> = u_xlat3;
    x_96 = x_101;
  }
  let x_102 : vec3<f32> = x_96;
  u_xlat2 = x_102;
  let x_105 : vec3<f32> = vs_TEXCOORD2;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_105, x_106);
  let x_108 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_108);
  let x_110 : f32 = u_xlat42;
  let x_112 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_110, x_110, x_110) * x_112);
  let x_116 : f32 = vs_TEXCOORD1.y;
  let x_118 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_116 * x_118);
  let x_121 : f32 = x_28.unity_MatrixV[0i].z;
  let x_123 : f32 = vs_TEXCOORD1.x;
  let x_125 : f32 = u_xlat42;
  u_xlat42 = ((x_121 * x_123) + x_125);
  let x_128 : f32 = x_28.unity_MatrixV[2i].z;
  let x_130 : f32 = vs_TEXCOORD1.z;
  let x_132 : f32 = u_xlat42;
  u_xlat42 = ((x_128 * x_130) + x_132);
  let x_134 : f32 = u_xlat42;
  let x_137 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_134 + x_137);
  let x_139 : f32 = u_xlat42;
  let x_143 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_139) + -(x_143));
  let x_146 : f32 = u_xlat42;
  u_xlat42 = max(x_146, 0.0f);
  let x_148 : f32 = u_xlat42;
  let x_151 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_148 * x_151);
  let x_160 : vec2<f32> = vs_TEXCOORD8;
  let x_162 : f32 = x_28.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_160, x_162);
  u_xlat4 = x_163;
  let x_169 : vec2<f32> = vs_TEXCOORD8;
  let x_171 : f32 = x_28.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_169, x_171);
  u_xlat5 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  let x_174 : vec4<f32> = u_xlat4;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec3<f32> = u_xlat3;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_181, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat44;
  u_xlat44 = (x_185 + 0.5f);
  let x_188 : f32 = u_xlat44;
  let x_190 : vec3<f32> = u_xlat5;
  let x_191 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : f32 = u_xlat4.w;
  u_xlat44 = max(x_195, 0.00009999999747378752f);
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : f32 = u_xlat44;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) / vec3<f32>(x_200, x_200, x_200));
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : f32 = x_42.x_Metallic;
  u_xlat44 = ((-(x_206) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_212 : f32 = u_xlat44;
  let x_215 : f32 = x_42.x_Smoothness;
  u_xlat45 = (-(x_212) + x_215);
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_218.y, x_218.z, x_218.w) * vec3<f32>(x_220, x_220, x_220));
  let x_223 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = x_42.x_BaseColor;
  let x_231 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_226.x, x_226.y, x_226.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : f32 = x_42.x_Metallic;
  let x_237 : f32 = x_42.x_Metallic;
  let x_239 : f32 = x_42.x_Metallic;
  let x_240 : vec3<f32> = vec3<f32>(x_235, x_237, x_239);
  let x_245 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_42.x_Smoothness;
  u_xlat44 = (-(x_254) + 1.0f);
  let x_259 : f32 = u_xlat44;
  let x_260 : f32 = u_xlat44;
  u_xlat46 = (x_259 * x_260);
  let x_262 : f32 = u_xlat46;
  u_xlat46 = max(x_262, 0.0078125f);
  let x_265 : f32 = u_xlat46;
  let x_266 : f32 = u_xlat46;
  u_xlat5.x = (x_265 * x_266);
  let x_269 : f32 = u_xlat45;
  u_xlat45 = (x_269 + 1.0f);
  let x_271 : f32 = u_xlat45;
  u_xlat45 = clamp(x_271, 0.0f, 1.0f);
  let x_274 : f32 = u_xlat46;
  u_xlat19 = ((x_274 * 4.0f) + 2.0f);
  let x_282 : vec4<f32> = vs_TEXCOORD6;
  let x_283 : vec2<f32> = vec2<f32>(x_282.x, x_282.y);
  let x_285 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_283.x, x_283.y, x_285);
  let x_298 : vec3<f32> = txVec0;
  let x_300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_298.xy, x_298.z);
  u_xlat33 = x_300;
  let x_312 : f32 = x_309.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_312) + 1.0f);
  let x_315 : f32 = u_xlat33;
  let x_317 : f32 = x_309.x_MainLightShadowParams.x;
  let x_319 : f32 = u_xlat47;
  u_xlat33 = ((x_315 * x_317) + x_319);
  let x_323 : f32 = vs_TEXCOORD6.z;
  u_xlatb47 = (0.0f >= x_323);
  let x_327 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_327 >= 1.0f);
  let x_329 : bool = u_xlatb47;
  let x_330 : bool = u_xlatb6;
  u_xlatb47 = (x_329 | x_330);
  let x_332 : bool = u_xlatb47;
  let x_333 : f32 = u_xlat33;
  u_xlat33 = select(x_333, 1.0f, x_332);
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_340 : vec3<f32> = (x_336 + -(x_338));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat47;
  let x_350 : f32 = x_309.x_MainLightShadowParams.z;
  let x_353 : f32 = x_309.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_348 * x_350) + x_353);
  let x_357 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_357, 0.0f, 1.0f);
  let x_361 : f32 = u_xlat33;
  u_xlat20 = (-(x_361) + 1.0f);
  let x_365 : f32 = u_xlat6.x;
  let x_366 : f32 = u_xlat20;
  let x_368 : f32 = u_xlat33;
  u_xlat33 = ((x_365 * x_366) + x_368);
  let x_377 : f32 = x_375.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_377 == -1.0f));
  let x_380 : bool = u_xlatb6;
  if (x_380) {
    let x_383 : vec3<f32> = vs_TEXCOORD1;
    let x_386 : vec4<f32> = x_375.x_MainLightWorldToLight[1i];
    let x_388 : vec2<f32> = (vec2<f32>(x_383.y, x_383.y) * vec2<f32>(x_386.x, x_386.y));
    let x_389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
    let x_392 : vec4<f32> = x_375.x_MainLightWorldToLight[0i];
    let x_394 : vec3<f32> = vs_TEXCOORD1;
    let x_397 : vec4<f32> = u_xlat6;
    let x_399 : vec2<f32> = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_394.x, x_394.x)) + vec2<f32>(x_397.x, x_397.y));
    let x_400 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
    let x_403 : vec4<f32> = x_375.x_MainLightWorldToLight[2i];
    let x_405 : vec3<f32> = vs_TEXCOORD1;
    let x_408 : vec4<f32> = u_xlat6;
    let x_410 : vec2<f32> = ((vec2<f32>(x_403.x, x_403.y) * vec2<f32>(x_405.z, x_405.z)) + vec2<f32>(x_408.x, x_408.y));
    let x_411 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat6;
    let x_416 : vec4<f32> = x_375.x_MainLightWorldToLight[3i];
    let x_418 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) + vec2<f32>(x_416.x, x_416.y));
    let x_419 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat6;
    let x_425 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
    let x_433 : vec4<f32> = u_xlat6;
    let x_436 : f32 = x_28.x_GlobalMipBias.x;
    let x_437 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_433.x, x_433.y), x_436);
    u_xlat6 = x_437;
    let x_442 : f32 = x_375.x_MainLightCookieTextureFormat;
    let x_444 : f32 = x_375.x_MainLightCookieTextureFormat;
    let x_446 : f32 = x_375.x_MainLightCookieTextureFormat;
    let x_448 : f32 = x_375.x_MainLightCookieTextureFormat;
    let x_449 : vec4<f32> = vec4<f32>(x_442, x_444, x_446, x_448);
    let x_457 : vec4<bool> = (vec4<f32>(x_449.x, x_449.y, x_449.z, x_449.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_457.x, x_457.y);
    let x_461 : bool = u_xlatb7.y;
    if (x_461) {
      let x_467 : f32 = u_xlat6.w;
      x_463 = x_467;
    } else {
      let x_470 : f32 = u_xlat6.x;
      x_463 = x_470;
    }
    let x_471 : f32 = x_463;
    u_xlat48 = x_471;
    let x_473 : bool = u_xlatb7.x;
    if (x_473) {
      let x_477 : vec4<f32> = u_xlat6;
      x_474 = vec3<f32>(x_477.x, x_477.y, x_477.z);
    } else {
      let x_480 : f32 = u_xlat48;
      x_474 = vec3<f32>(x_480, x_480, x_480);
    }
    let x_482 : vec3<f32> = x_474;
    let x_483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_489 : vec4<f32> = u_xlat6;
  let x_492 : vec4<f32> = x_28.x_MainLightColor;
  let x_494 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec3<f32> = u_xlat2;
  let x_499 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(-(x_497), x_499);
  let x_501 : f32 = u_xlat48;
  let x_502 : f32 = u_xlat48;
  u_xlat48 = (x_501 + x_502);
  let x_505 : vec3<f32> = u_xlat3;
  let x_506 : f32 = u_xlat48;
  let x_510 : vec3<f32> = u_xlat2;
  let x_512 : vec3<f32> = ((x_505 * -(vec3<f32>(x_506, x_506, x_506))) + -(x_510));
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec3<f32> = u_xlat3;
  let x_516 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(x_515, x_516);
  let x_518 : f32 = u_xlat48;
  u_xlat48 = clamp(x_518, 0.0f, 1.0f);
  let x_520 : f32 = u_xlat48;
  u_xlat48 = (-(x_520) + 1.0f);
  let x_523 : f32 = u_xlat48;
  let x_524 : f32 = u_xlat48;
  u_xlat48 = (x_523 * x_524);
  let x_526 : f32 = u_xlat48;
  let x_527 : f32 = u_xlat48;
  u_xlat48 = (x_526 * x_527);
  let x_530 : f32 = u_xlat44;
  u_xlat49 = ((-(x_530) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_536 : f32 = u_xlat44;
  let x_537 : f32 = u_xlat49;
  u_xlat44 = (x_536 * x_537);
  let x_539 : f32 = u_xlat44;
  u_xlat44 = (x_539 * 6.0f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_552 : f32 = u_xlat44;
  let x_553 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_550.x, x_550.y, x_550.z), x_552);
  u_xlat7 = x_553;
  let x_555 : f32 = u_xlat7.w;
  u_xlat44 = (x_555 + -1.0f);
  let x_562 : f32 = x_560.unity_SpecCube0_HDR.w;
  let x_563 : f32 = u_xlat44;
  u_xlat44 = ((x_562 * x_563) + 1.0f);
  let x_566 : f32 = u_xlat44;
  u_xlat44 = max(x_566, 0.0f);
  let x_568 : f32 = u_xlat44;
  u_xlat44 = log2(x_568);
  let x_570 : f32 = u_xlat44;
  let x_572 : f32 = x_560.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_570 * x_572);
  let x_574 : f32 = u_xlat44;
  u_xlat44 = exp2(x_574);
  let x_576 : f32 = u_xlat44;
  let x_578 : f32 = x_560.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_576 * x_578);
  let x_580 : vec4<f32> = u_xlat7;
  let x_582 : f32 = u_xlat44;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582, x_582, x_582));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_589 : f32 = u_xlat46;
  let x_591 : f32 = u_xlat46;
  u_xlat8 = ((vec2<f32>(x_589, x_589) * vec2<f32>(x_591, x_591)) + vec2<f32>(-1.0f, 1.0f));
  let x_597 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_597);
  let x_600 : vec4<f32> = u_xlat0;
  let x_603 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603, x_603, x_603));
  let x_606 : f32 = u_xlat48;
  let x_608 : vec3<f32> = u_xlat22;
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_606, x_606, x_606) * x_608) + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : f32 = u_xlat44;
  let x_615 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_613, x_613, x_613) * x_615);
  let x_617 : vec4<f32> = u_xlat7;
  let x_619 : vec3<f32> = u_xlat22;
  let x_620 : vec3<f32> = (vec3<f32>(x_617.x, x_617.y, x_617.z) * x_619);
  let x_621 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec3<f32> = u_xlat15;
  let x_627 : vec4<f32> = u_xlat7;
  let x_629 : vec3<f32> = ((vec3<f32>(x_623.x, x_623.y, x_623.z) * x_625) + vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : f32 = u_xlat33;
  let x_634 : f32 = x_560.unity_LightData.z;
  u_xlat44 = (x_632 * x_634);
  let x_636 : vec3<f32> = u_xlat3;
  let x_638 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat45 = dot(x_636, vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : f32 = u_xlat45;
  u_xlat45 = clamp(x_641, 0.0f, 1.0f);
  let x_643 : f32 = u_xlat44;
  let x_644 : f32 = u_xlat45;
  u_xlat44 = (x_643 * x_644);
  let x_646 : f32 = u_xlat44;
  let x_648 : vec4<f32> = u_xlat6;
  let x_650 : vec3<f32> = (vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec3<f32> = u_xlat2;
  let x_655 : vec4<f32> = x_28.x_MainLightPosition;
  let x_657 : vec3<f32> = (x_653 + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat7;
  let x_662 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : f32 = u_xlat44;
  u_xlat44 = max(x_665, 1.17549435e-38f);
  let x_668 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_668);
  let x_670 : f32 = u_xlat44;
  let x_672 : vec4<f32> = u_xlat7;
  let x_674 : vec3<f32> = (vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat3;
  let x_678 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_677, vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : f32 = u_xlat44;
  u_xlat44 = clamp(x_681, 0.0f, 1.0f);
  let x_684 : vec4<f32> = x_28.x_MainLightPosition;
  let x_686 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_684.x, x_684.y, x_684.z), vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : f32 = u_xlat45;
  u_xlat45 = clamp(x_689, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat44;
  let x_692 : f32 = u_xlat44;
  u_xlat44 = (x_691 * x_692);
  let x_694 : f32 = u_xlat44;
  let x_696 : f32 = u_xlat8.x;
  u_xlat44 = ((x_694 * x_696) + 1.00001001358032226562f);
  let x_700 : f32 = u_xlat45;
  let x_701 : f32 = u_xlat45;
  u_xlat45 = (x_700 * x_701);
  let x_703 : f32 = u_xlat44;
  let x_704 : f32 = u_xlat44;
  u_xlat44 = (x_703 * x_704);
  let x_706 : f32 = u_xlat45;
  u_xlat45 = max(x_706, 0.10000000149011611938f);
  let x_709 : f32 = u_xlat44;
  let x_710 : f32 = u_xlat45;
  u_xlat44 = (x_709 * x_710);
  let x_712 : f32 = u_xlat19;
  let x_713 : f32 = u_xlat44;
  u_xlat44 = (x_712 * x_713);
  let x_716 : f32 = u_xlat5.x;
  let x_717 : f32 = u_xlat44;
  u_xlat44 = (x_716 / x_717);
  let x_719 : vec4<f32> = u_xlat0;
  let x_721 : f32 = u_xlat44;
  let x_724 : vec3<f32> = u_xlat15;
  let x_725 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721, x_721, x_721)) + x_724);
  let x_726 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_729 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_731 : f32 = x_560.unity_LightData.y;
  u_xlat44 = min(x_729, x_731);
  let x_735 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_735));
  let x_738 : f32 = u_xlat47;
  let x_741 : f32 = x_309.x_AdditionalShadowFadeParams.x;
  let x_744 : f32 = x_309.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_738 * x_741) + x_744);
  let x_746 : f32 = u_xlat45;
  u_xlat45 = clamp(x_746, 0.0f, 1.0f);
  let x_750 : f32 = x_375.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_752 : f32 = x_375.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_754 : f32 = x_375.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_756 : f32 = x_375.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_757 : vec4<f32> = vec4<f32>(x_750, x_752, x_754, x_756);
  let x_764 : vec4<bool> = (vec4<f32>(x_757.x, x_757.y, x_757.z, x_757.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb33 = vec2<bool>(x_764.x, x_764.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_776 : u32 = u_xlatu_loop_1;
    let x_777 : u32 = u_xlatu44;
    if ((x_776 < x_777)) {
    } else {
      break;
    }
    let x_780 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_780 >> 2u);
    let x_784 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_784 & 3u));
    let x_787 : u32 = u_xlatu48;
    let x_790 : vec4<f32> = x_560.unity_LightIndices[bitcast<i32>(x_787)];
    let x_800 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_805 : vec4<u32> = indexable[x_800];
    u_xlat48 = dot(x_790, bitcast<vec4<f32>>(x_805));
    let x_809 : f32 = u_xlat48;
    u_xlati48 = i32(x_809);
    let x_812 : vec3<f32> = vs_TEXCOORD1;
    let x_823 : i32 = u_xlati48;
    let x_825 : vec4<f32> = x_822.x_AdditionalLightsPosition[x_823];
    let x_828 : i32 = u_xlati48;
    let x_830 : vec4<f32> = x_822.x_AdditionalLightsPosition[x_828];
    u_xlat9 = ((-(x_812) * vec3<f32>(x_825.w, x_825.w, x_825.w)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
    let x_833 : vec3<f32> = u_xlat9;
    let x_834 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_833, x_834);
    let x_836 : f32 = u_xlat49;
    u_xlat49 = max(x_836, 0.00006103515625f);
    let x_840 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_840);
    let x_843 : f32 = u_xlat51;
    let x_845 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_843, x_843, x_843) * x_845);
    let x_848 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_848);
    let x_850 : f32 = u_xlat49;
    let x_851 : i32 = u_xlati48;
    let x_853 : f32 = x_822.x_AdditionalLightsAttenuation[x_851].x;
    u_xlat49 = (x_850 * x_853);
    let x_855 : f32 = u_xlat49;
    let x_857 : f32 = u_xlat49;
    u_xlat49 = ((-(x_855) * x_857) + 1.0f);
    let x_860 : f32 = u_xlat49;
    u_xlat49 = max(x_860, 0.0f);
    let x_862 : f32 = u_xlat49;
    let x_863 : f32 = u_xlat49;
    u_xlat49 = (x_862 * x_863);
    let x_865 : f32 = u_xlat49;
    let x_866 : f32 = u_xlat52;
    u_xlat49 = (x_865 * x_866);
    let x_868 : i32 = u_xlati48;
    let x_870 : vec4<f32> = x_822.x_AdditionalLightsSpotDir[x_868];
    let x_872 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_870.x, x_870.y, x_870.z), x_872);
    let x_874 : f32 = u_xlat52;
    let x_875 : i32 = u_xlati48;
    let x_877 : f32 = x_822.x_AdditionalLightsAttenuation[x_875].z;
    let x_879 : i32 = u_xlati48;
    let x_881 : f32 = x_822.x_AdditionalLightsAttenuation[x_879].w;
    u_xlat52 = ((x_874 * x_877) + x_881);
    let x_883 : f32 = u_xlat52;
    u_xlat52 = clamp(x_883, 0.0f, 1.0f);
    let x_885 : f32 = u_xlat52;
    let x_886 : f32 = u_xlat52;
    u_xlat52 = (x_885 * x_886);
    let x_888 : f32 = u_xlat49;
    let x_889 : f32 = u_xlat52;
    u_xlat49 = (x_888 * x_889);
    let x_893 : i32 = u_xlati48;
    let x_895 : f32 = x_309.x_AdditionalShadowParams[x_893].w;
    u_xlati52 = i32(x_895);
    let x_900 : i32 = u_xlati52;
    u_xlatb11.x = (x_900 >= 0i);
    let x_904 : bool = u_xlatb11.x;
    if (x_904) {
      let x_908 : i32 = u_xlati48;
      let x_910 : f32 = x_309.x_AdditionalShadowParams[x_908].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_910, x_910, x_910, x_910))));
      let x_916 : bool = u_xlatb11.x;
      if (x_916) {
        let x_919 : vec3<f32> = u_xlat10;
        let x_922 : vec3<f32> = u_xlat10;
        let x_925 : vec4<bool> = (abs(vec4<f32>(x_919.z, x_919.z, x_919.y, x_919.z)) >= abs(vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.x)));
        u_xlatb11 = vec3<bool>(x_925.x, x_925.y, x_925.z);
        let x_928 : bool = u_xlatb11.y;
        let x_930 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_928 & x_930);
        let x_934 : vec3<f32> = u_xlat10;
        let x_937 : vec4<bool> = (-(vec4<f32>(x_934.z, x_934.y, x_934.x, x_934.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_937.x, x_937.y, x_937.z);
        let x_941 : bool = u_xlatb12.x;
        u_xlat25.x = select(4.0f, 5.0f, x_941);
        let x_946 : bool = u_xlatb12.y;
        u_xlat25.z = select(2.0f, 3.0f, x_946);
        let x_952 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_952);
        let x_957 : bool = u_xlatb11.z;
        if (x_957) {
          let x_962 : f32 = u_xlat25.z;
          x_958 = x_962;
        } else {
          let x_965 : f32 = u_xlat12.x;
          x_958 = x_965;
        }
        let x_966 : f32 = x_958;
        u_xlat39 = x_966;
        let x_969 : bool = u_xlatb11.x;
        if (x_969) {
          let x_974 : f32 = u_xlat25.x;
          x_970 = x_974;
        } else {
          let x_976 : f32 = u_xlat39;
          x_970 = x_976;
        }
        let x_977 : f32 = x_970;
        u_xlat11.x = x_977;
        let x_979 : i32 = u_xlati48;
        let x_981 : f32 = x_309.x_AdditionalShadowParams[x_979].w;
        u_xlat25.x = trunc(x_981);
        let x_985 : f32 = u_xlat11.x;
        let x_987 : f32 = u_xlat25.x;
        u_xlat11.x = (x_985 + x_987);
        let x_991 : f32 = u_xlat11.x;
        u_xlati52 = i32(x_991);
      }
      let x_993 : i32 = u_xlati52;
      u_xlati52 = (x_993 << bitcast<u32>(2i));
      let x_995 : vec3<f32> = vs_TEXCOORD1;
      let x_998 : i32 = u_xlati52;
      let x_1001 : i32 = u_xlati52;
      let x_1005 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_998 + 1i) / 4i)][((x_1001 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_995.y, x_995.y, x_995.y, x_995.y) * x_1005);
      let x_1007 : i32 = u_xlati52;
      let x_1009 : i32 = u_xlati52;
      let x_1012 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[(x_1007 / 4i)][(x_1009 % 4i)];
      let x_1013 : vec3<f32> = vs_TEXCOORD1;
      let x_1016 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1012 * vec4<f32>(x_1013.x, x_1013.x, x_1013.x, x_1013.x)) + x_1016);
      let x_1018 : i32 = u_xlati52;
      let x_1021 : i32 = u_xlati52;
      let x_1025 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_1018 + 2i) / 4i)][((x_1021 + 2i) % 4i)];
      let x_1026 : vec3<f32> = vs_TEXCOORD1;
      let x_1029 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1025 * vec4<f32>(x_1026.z, x_1026.z, x_1026.z, x_1026.z)) + x_1029);
      let x_1031 : vec4<f32> = u_xlat11;
      let x_1032 : i32 = u_xlati52;
      let x_1035 : i32 = u_xlati52;
      let x_1039 : vec4<f32> = x_309.x_AdditionalLightsWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
      u_xlat11 = (x_1031 + x_1039);
      let x_1041 : vec4<f32> = u_xlat11;
      let x_1043 : vec4<f32> = u_xlat11;
      let x_1045 : vec3<f32> = (vec3<f32>(x_1041.x, x_1041.y, x_1041.z) / vec3<f32>(x_1043.w, x_1043.w, x_1043.w));
      let x_1046 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
      let x_1049 : vec4<f32> = u_xlat11;
      let x_1050 : vec2<f32> = vec2<f32>(x_1049.x, x_1049.y);
      let x_1052 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
      let x_1060 : vec3<f32> = txVec1;
      let x_1062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1060.xy, x_1060.z);
      u_xlat52 = x_1062;
      let x_1063 : i32 = u_xlati48;
      let x_1065 : f32 = x_309.x_AdditionalShadowParams[x_1063].x;
      u_xlat11.x = (1.0f + -(x_1065));
      let x_1069 : f32 = u_xlat52;
      let x_1070 : i32 = u_xlati48;
      let x_1072 : f32 = x_309.x_AdditionalShadowParams[x_1070].x;
      let x_1075 : f32 = u_xlat11.x;
      u_xlat52 = ((x_1069 * x_1072) + x_1075);
      let x_1078 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_1078);
      let x_1083 : f32 = u_xlat11.z;
      u_xlatb25 = (x_1083 >= 1.0f);
      let x_1085 : bool = u_xlatb25;
      let x_1087 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_1085 | x_1087);
      let x_1091 : bool = u_xlatb11.x;
      let x_1092 : f32 = u_xlat52;
      u_xlat52 = select(x_1092, 1.0f, x_1091);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1095 : f32 = u_xlat52;
    u_xlat11.x = (-(x_1095) + 1.0f);
    let x_1099 : f32 = u_xlat45;
    let x_1101 : f32 = u_xlat11.x;
    let x_1103 : f32 = u_xlat52;
    u_xlat52 = ((x_1099 * x_1101) + x_1103);
    let x_1106 : i32 = u_xlati48;
    u_xlati11 = (1i << bitcast<u32>((x_1106 & 31i)));
    let x_1110 : i32 = u_xlati11;
    let x_1113 : f32 = x_375.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1110) & bitcast<u32>(x_1113)));
    let x_1117 : i32 = u_xlati11;
    if ((x_1117 != 0i)) {
      let x_1121 : i32 = u_xlati48;
      let x_1123 : f32 = x_375.x_AdditionalLightsLightTypes[x_1121].el;
      u_xlati11 = i32(x_1123);
      let x_1126 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1126 != 0i));
      let x_1130 : i32 = u_xlati48;
      u_xlati39 = (x_1130 << bitcast<u32>(2i));
      let x_1132 : i32 = u_xlati25;
      if ((x_1132 != 0i)) {
        let x_1136 : vec3<f32> = vs_TEXCOORD1;
        let x_1138 : i32 = u_xlati39;
        let x_1141 : i32 = u_xlati39;
        let x_1145 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1138 + 1i) / 4i)][((x_1141 + 1i) % 4i)];
        let x_1147 : vec3<f32> = (vec3<f32>(x_1136.y, x_1136.y, x_1136.y) * vec3<f32>(x_1145.x, x_1145.y, x_1145.w));
        let x_1148 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
        let x_1150 : i32 = u_xlati39;
        let x_1152 : i32 = u_xlati39;
        let x_1155 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[(x_1150 / 4i)][(x_1152 % 4i)];
        let x_1157 : vec3<f32> = vs_TEXCOORD1;
        let x_1160 : vec4<f32> = u_xlat12;
        let x_1162 : vec3<f32> = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.w) * vec3<f32>(x_1157.x, x_1157.x, x_1157.x)) + vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
        let x_1163 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
        let x_1165 : i32 = u_xlati39;
        let x_1168 : i32 = u_xlati39;
        let x_1172 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1165 + 2i) / 4i)][((x_1168 + 2i) % 4i)];
        let x_1174 : vec3<f32> = vs_TEXCOORD1;
        let x_1177 : vec4<f32> = u_xlat12;
        let x_1179 : vec3<f32> = ((vec3<f32>(x_1172.x, x_1172.y, x_1172.w) * vec3<f32>(x_1174.z, x_1174.z, x_1174.z)) + vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
        let x_1180 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat12;
        let x_1184 : i32 = u_xlati39;
        let x_1187 : i32 = u_xlati39;
        let x_1191 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1184 + 3i) / 4i)][((x_1187 + 3i) % 4i)];
        let x_1193 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) + vec3<f32>(x_1191.x, x_1191.y, x_1191.w));
        let x_1194 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat12;
        let x_1198 : vec4<f32> = u_xlat12;
        let x_1200 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.y) / vec2<f32>(x_1198.z, x_1198.z));
        let x_1201 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1200.x, x_1201.y, x_1200.y);
        let x_1203 : vec3<f32> = u_xlat25;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1207 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1206.x, x_1207.y, x_1206.y);
        let x_1209 : vec3<f32> = u_xlat25;
        let x_1213 : vec2<f32> = clamp(vec2<f32>(x_1209.x, x_1209.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1214 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1213.x, x_1214.y, x_1213.y);
        let x_1216 : i32 = u_xlati48;
        let x_1218 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1216];
        let x_1220 : vec3<f32> = u_xlat25;
        let x_1223 : i32 = u_xlati48;
        let x_1225 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1223];
        let x_1227 : vec2<f32> = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1220.x, x_1220.z)) + vec2<f32>(x_1225.z, x_1225.w));
        let x_1228 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1227.x, x_1228.y, x_1227.y);
      } else {
        let x_1231 : i32 = u_xlati11;
        u_xlatb11.x = (x_1231 == 1i);
        let x_1235 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_1235);
        let x_1237 : i32 = u_xlati11;
        if ((x_1237 != 0i)) {
          let x_1241 : vec3<f32> = vs_TEXCOORD1;
          let x_1243 : i32 = u_xlati39;
          let x_1246 : i32 = u_xlati39;
          let x_1250 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1243 + 1i) / 4i)][((x_1246 + 1i) % 4i)];
          let x_1252 : vec2<f32> = (vec2<f32>(x_1241.y, x_1241.y) * vec2<f32>(x_1250.x, x_1250.y));
          let x_1253 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
          let x_1255 : i32 = u_xlati39;
          let x_1257 : i32 = u_xlati39;
          let x_1260 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[(x_1255 / 4i)][(x_1257 % 4i)];
          let x_1262 : vec3<f32> = vs_TEXCOORD1;
          let x_1265 : vec4<f32> = u_xlat12;
          let x_1267 : vec2<f32> = ((vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(x_1262.x, x_1262.x)) + vec2<f32>(x_1265.x, x_1265.y));
          let x_1268 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
          let x_1270 : i32 = u_xlati39;
          let x_1273 : i32 = u_xlati39;
          let x_1277 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1270 + 2i) / 4i)][((x_1273 + 2i) % 4i)];
          let x_1279 : vec3<f32> = vs_TEXCOORD1;
          let x_1282 : vec4<f32> = u_xlat12;
          let x_1284 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1279.z, x_1279.z)) + vec2<f32>(x_1282.x, x_1282.y));
          let x_1285 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
          let x_1287 : vec4<f32> = u_xlat12;
          let x_1289 : i32 = u_xlati39;
          let x_1292 : i32 = u_xlati39;
          let x_1296 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1289 + 3i) / 4i)][((x_1292 + 3i) % 4i)];
          let x_1298 : vec2<f32> = (vec2<f32>(x_1287.x, x_1287.y) + vec2<f32>(x_1296.x, x_1296.y));
          let x_1299 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
          let x_1301 : vec4<f32> = u_xlat12;
          let x_1304 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1305 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
          let x_1307 : vec4<f32> = u_xlat12;
          let x_1309 : vec2<f32> = fract(vec2<f32>(x_1307.x, x_1307.y));
          let x_1310 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
          let x_1312 : i32 = u_xlati48;
          let x_1314 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1312];
          let x_1316 : vec4<f32> = u_xlat12;
          let x_1319 : i32 = u_xlati48;
          let x_1321 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1319];
          let x_1323 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1321.z, x_1321.w));
          let x_1324 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1323.x, x_1324.y, x_1323.y);
        } else {
          let x_1327 : vec3<f32> = vs_TEXCOORD1;
          let x_1329 : i32 = u_xlati39;
          let x_1332 : i32 = u_xlati39;
          let x_1336 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1329 + 1i) / 4i)][((x_1332 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.y, x_1327.y) * x_1336);
          let x_1338 : i32 = u_xlati39;
          let x_1340 : i32 = u_xlati39;
          let x_1343 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[(x_1338 / 4i)][(x_1340 % 4i)];
          let x_1344 : vec3<f32> = vs_TEXCOORD1;
          let x_1347 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1343 * vec4<f32>(x_1344.x, x_1344.x, x_1344.x, x_1344.x)) + x_1347);
          let x_1349 : i32 = u_xlati39;
          let x_1352 : i32 = u_xlati39;
          let x_1356 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1349 + 2i) / 4i)][((x_1352 + 2i) % 4i)];
          let x_1357 : vec3<f32> = vs_TEXCOORD1;
          let x_1360 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1356 * vec4<f32>(x_1357.z, x_1357.z, x_1357.z, x_1357.z)) + x_1360);
          let x_1362 : vec4<f32> = u_xlat12;
          let x_1363 : i32 = u_xlati39;
          let x_1366 : i32 = u_xlati39;
          let x_1370 : vec4<f32> = x_375.x_AdditionalLightsWorldToLights[((x_1363 + 3i) / 4i)][((x_1366 + 3i) % 4i)];
          u_xlat12 = (x_1362 + x_1370);
          let x_1372 : vec4<f32> = u_xlat12;
          let x_1374 : vec4<f32> = u_xlat12;
          let x_1376 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) / vec3<f32>(x_1374.w, x_1374.w, x_1374.w));
          let x_1377 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
          let x_1379 : vec4<f32> = u_xlat12;
          let x_1381 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1379.x, x_1379.y, x_1379.z), vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
          let x_1386 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1386);
          let x_1389 : vec4<f32> = u_xlat11;
          let x_1391 : vec4<f32> = u_xlat12;
          let x_1393 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.x, x_1389.x) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
          let x_1394 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
          let x_1396 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1396.x, x_1396.y, x_1396.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1403 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1403, 0.00000099999999747524f);
          let x_1408 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1408);
          let x_1412 : vec4<f32> = u_xlat11;
          let x_1414 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1412.x, x_1412.x, x_1412.x) * vec3<f32>(x_1414.z, x_1414.x, x_1414.y));
          let x_1418 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1418);
          let x_1422 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1422, 0.0f, 1.0f);
          let x_1426 : vec3<f32> = u_xlat13;
          let x_1428 : vec4<bool> = (vec4<f32>(x_1426.y, x_1426.z, x_1426.y, x_1426.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1428.x, x_1428.y);
          let x_1432 : bool = u_xlatb40.x;
          if (x_1432) {
            let x_1437 : f32 = u_xlat13.x;
            x_1433 = x_1437;
          } else {
            let x_1440 : f32 = u_xlat13.x;
            x_1433 = -(x_1440);
          }
          let x_1442 : f32 = x_1433;
          u_xlat40.x = x_1442;
          let x_1445 : bool = u_xlatb40.y;
          if (x_1445) {
            let x_1450 : f32 = u_xlat13.x;
            x_1446 = x_1450;
          } else {
            let x_1453 : f32 = u_xlat13.x;
            x_1446 = -(x_1453);
          }
          let x_1455 : f32 = x_1446;
          u_xlat40.y = x_1455;
          let x_1457 : vec4<f32> = u_xlat12;
          let x_1459 : vec4<f32> = u_xlat11;
          let x_1462 : vec2<f32> = u_xlat40;
          let x_1463 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1459.x, x_1459.x)) + x_1462);
          let x_1464 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1463.x, x_1464.y, x_1463.y, x_1464.w);
          let x_1466 : vec4<f32> = u_xlat11;
          let x_1469 : vec2<f32> = ((vec2<f32>(x_1466.x, x_1466.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1470 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1469.x, x_1470.y, x_1469.y, x_1470.w);
          let x_1472 : vec4<f32> = u_xlat11;
          let x_1476 : vec2<f32> = clamp(vec2<f32>(x_1472.x, x_1472.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1477 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1476.x, x_1477.y, x_1476.y, x_1477.w);
          let x_1479 : i32 = u_xlati48;
          let x_1481 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1479];
          let x_1483 : vec4<f32> = u_xlat11;
          let x_1486 : i32 = u_xlati48;
          let x_1488 : vec4<f32> = x_375.x_AdditionalLightsCookieAtlasUVRects[x_1486];
          let x_1490 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1483.x, x_1483.z)) + vec2<f32>(x_1488.z, x_1488.w));
          let x_1491 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1490.x, x_1491.y, x_1490.y);
        }
      }
      let x_1498 : vec3<f32> = u_xlat25;
      let x_1500 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1498.x, x_1498.z), 0.0f);
      u_xlat11 = x_1500;
      let x_1503 : bool = u_xlatb33.y;
      if (x_1503) {
        let x_1508 : f32 = u_xlat11.w;
        x_1504 = x_1508;
      } else {
        let x_1511 : f32 = u_xlat11.x;
        x_1504 = x_1511;
      }
      let x_1512 : f32 = x_1504;
      u_xlat53 = x_1512;
      let x_1514 : bool = u_xlatb33.x;
      if (x_1514) {
        let x_1518 : vec4<f32> = u_xlat11;
        x_1515 = vec3<f32>(x_1518.x, x_1518.y, x_1518.z);
      } else {
        let x_1521 : f32 = u_xlat53;
        x_1515 = vec3<f32>(x_1521, x_1521, x_1521);
      }
      let x_1523 : vec3<f32> = x_1515;
      let x_1524 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1530 : vec4<f32> = u_xlat11;
    let x_1532 : i32 = u_xlati48;
    let x_1534 : vec4<f32> = x_822.x_AdditionalLightsColor[x_1532];
    let x_1536 : vec3<f32> = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
    let x_1537 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
    let x_1539 : f32 = u_xlat49;
    let x_1540 : f32 = u_xlat52;
    u_xlat48 = (x_1539 * x_1540);
    let x_1542 : vec3<f32> = u_xlat3;
    let x_1543 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1542, x_1543);
    let x_1545 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1545, 0.0f, 1.0f);
    let x_1547 : f32 = u_xlat48;
    let x_1548 : f32 = u_xlat49;
    u_xlat48 = (x_1547 * x_1548);
    let x_1550 : f32 = u_xlat48;
    let x_1552 : vec4<f32> = u_xlat11;
    let x_1554 : vec3<f32> = (vec3<f32>(x_1550, x_1550, x_1550) * vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
    let x_1557 : vec3<f32> = u_xlat9;
    let x_1558 : f32 = u_xlat51;
    let x_1561 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1557 * vec3<f32>(x_1558, x_1558, x_1558)) + x_1561);
    let x_1563 : vec3<f32> = u_xlat9;
    let x_1564 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1563, x_1564);
    let x_1566 : f32 = u_xlat48;
    u_xlat48 = max(x_1566, 1.17549435e-38f);
    let x_1568 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1568);
    let x_1570 : f32 = u_xlat48;
    let x_1572 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1570, x_1570, x_1570) * x_1572);
    let x_1574 : vec3<f32> = u_xlat3;
    let x_1575 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1574, x_1575);
    let x_1577 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1577, 0.0f, 1.0f);
    let x_1579 : vec3<f32> = u_xlat10;
    let x_1580 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1579, x_1580);
    let x_1582 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1582, 0.0f, 1.0f);
    let x_1584 : f32 = u_xlat48;
    let x_1585 : f32 = u_xlat48;
    u_xlat48 = (x_1584 * x_1585);
    let x_1587 : f32 = u_xlat48;
    let x_1589 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1587 * x_1589) + 1.00001001358032226562f);
    let x_1592 : f32 = u_xlat49;
    let x_1593 : f32 = u_xlat49;
    u_xlat49 = (x_1592 * x_1593);
    let x_1595 : f32 = u_xlat48;
    let x_1596 : f32 = u_xlat48;
    u_xlat48 = (x_1595 * x_1596);
    let x_1598 : f32 = u_xlat49;
    u_xlat49 = max(x_1598, 0.10000000149011611938f);
    let x_1600 : f32 = u_xlat48;
    let x_1601 : f32 = u_xlat49;
    u_xlat48 = (x_1600 * x_1601);
    let x_1603 : f32 = u_xlat19;
    let x_1604 : f32 = u_xlat48;
    u_xlat48 = (x_1603 * x_1604);
    let x_1607 : f32 = u_xlat5.x;
    let x_1608 : f32 = u_xlat48;
    u_xlat48 = (x_1607 / x_1608);
    let x_1610 : vec4<f32> = u_xlat0;
    let x_1612 : f32 = u_xlat48;
    let x_1615 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1610.x, x_1610.y, x_1610.z) * vec3<f32>(x_1612, x_1612, x_1612)) + x_1615);
    let x_1617 : vec3<f32> = u_xlat9;
    let x_1618 : vec4<f32> = u_xlat11;
    let x_1621 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1617 * vec3<f32>(x_1618.x, x_1618.y, x_1618.z)) + x_1621);

    continuing {
      let x_1623 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1623 + bitcast<u32>(1i));
    }
  }
  let x_1625 : vec4<f32> = u_xlat7;
  let x_1627 : vec4<f32> = u_xlat6;
  let x_1630 : vec4<f32> = u_xlat4;
  let x_1632 : vec3<f32> = ((vec3<f32>(x_1625.x, x_1625.y, x_1625.z) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z)) + vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1633 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec3<f32> = u_xlat22;
  let x_1636 : vec4<f32> = u_xlat0;
  let x_1638 : vec3<f32> = (x_1635 + vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1641 : f32 = u_xlat42;
  let x_1642 : f32 = u_xlat42;
  u_xlat42 = (x_1641 * -(x_1642));
  let x_1645 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1645);
  let x_1647 : vec4<f32> = u_xlat0;
  let x_1650 : vec4<f32> = x_28.unity_FogColor;
  let x_1653 : vec3<f32> = (vec3<f32>(x_1647.x, x_1647.y, x_1647.z) + -(vec3<f32>(x_1650.x, x_1650.y, x_1650.z)));
  let x_1654 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1658 : f32 = u_xlat42;
  let x_1660 : vec4<f32> = u_xlat0;
  let x_1664 : vec4<f32> = x_28.unity_FogColor;
  let x_1666 : vec3<f32> = ((vec3<f32>(x_1658, x_1658, x_1658) * vec3<f32>(x_1660.x, x_1660.y, x_1660.z)) + vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1667 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
  let x_1671 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1671 == 1.0f);
  let x_1673 : bool = u_xlatb0;
  if (x_1673) {
    let x_1678 : f32 = u_xlat1.x;
    x_1674 = x_1678;
  } else {
    x_1674 = 1.0f;
  }
  let x_1680 : f32 = x_1674;
  SV_Target0.w = x_1680;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


