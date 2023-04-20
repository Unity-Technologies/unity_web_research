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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_341 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_406 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_852 : AdditionalLights;

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

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb25 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb40 : vec2<bool>;

var<private> u_xlat40 : vec2<f32>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> u_xlat53 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_96 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_495 : f32;
  var x_506 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_988 : f32;
  var x_1000 : f32;
  var txVec1 : vec3<f32>;
  var x_1463 : f32;
  var x_1476 : f32;
  var x_1534 : f32;
  var x_1545 : vec3<f32>;
  var x_1705 : f32;
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
    let x_101 : vec4<f32> = u_xlat3;
    x_96 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_96;
  u_xlat2 = x_103;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_109);
  let x_111 : f32 = u_xlat42;
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_114 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : f32 = vs_TEXCOORD1.y;
  let x_121 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_119 * x_121);
  let x_124 : f32 = x_28.unity_MatrixV[0i].z;
  let x_126 : f32 = vs_TEXCOORD1.x;
  let x_128 : f32 = u_xlat42;
  u_xlat42 = ((x_124 * x_126) + x_128);
  let x_131 : f32 = x_28.unity_MatrixV[2i].z;
  let x_133 : f32 = vs_TEXCOORD1.z;
  let x_135 : f32 = u_xlat42;
  u_xlat42 = ((x_131 * x_133) + x_135);
  let x_137 : f32 = u_xlat42;
  let x_140 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_137 + x_140);
  let x_142 : f32 = u_xlat42;
  let x_146 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_142) + -(x_146));
  let x_149 : f32 = u_xlat42;
  u_xlat42 = max(x_149, 0.0f);
  let x_151 : f32 = u_xlat42;
  let x_154 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_151 * x_154);
  u_xlat3.w = 1.0f;
  let x_165 : vec4<f32> = x_162.unity_SHAr;
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_165, x_166);
  let x_171 : vec4<f32> = x_162.unity_SHAg;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_171, x_172);
  let x_177 : vec4<f32> = x_162.unity_SHAb;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_177, x_178);
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_182.y, x_182.z, x_182.z, x_182.x) * vec4<f32>(x_184.x, x_184.y, x_184.z, x_184.z));
  let x_190 : vec4<f32> = x_162.unity_SHBr;
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_190, x_191);
  let x_196 : vec4<f32> = x_162.unity_SHBg;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_196, x_197);
  let x_202 : vec4<f32> = x_162.unity_SHBb;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_202, x_203);
  let x_207 : f32 = u_xlat3.y;
  let x_209 : f32 = u_xlat3.y;
  u_xlat44 = (x_207 * x_209);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat44;
  u_xlat44 = ((x_212 * x_214) + -(x_216));
  let x_221 : vec4<f32> = x_162.unity_SHC;
  let x_223 : f32 = u_xlat44;
  let x_226 : vec4<f32> = u_xlat6;
  let x_228 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223, x_223, x_223)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_231 + vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_235, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_239 : f32 = x_42.x_Metallic;
  u_xlat44 = ((-(x_239) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat44;
  let x_248 : f32 = x_42.x_Smoothness;
  u_xlat45 = (-(x_245) + x_248);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_251.y, x_251.z, x_251.w) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = x_42.x_BaseColor;
  let x_264 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = x_42.x_Metallic;
  let x_270 : f32 = x_42.x_Metallic;
  let x_272 : f32 = x_42.x_Metallic;
  let x_273 : vec3<f32> = vec3<f32>(x_268, x_270, x_272);
  let x_278 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_278.x, x_278.y, x_278.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_287 : f32 = x_42.x_Smoothness;
  u_xlat44 = (-(x_287) + 1.0f);
  let x_291 : f32 = u_xlat44;
  let x_292 : f32 = u_xlat44;
  u_xlat46 = (x_291 * x_292);
  let x_294 : f32 = u_xlat46;
  u_xlat46 = max(x_294, 0.0078125f);
  let x_297 : f32 = u_xlat46;
  let x_298 : f32 = u_xlat46;
  u_xlat5.x = (x_297 * x_298);
  let x_301 : f32 = u_xlat45;
  u_xlat45 = (x_301 + 1.0f);
  let x_303 : f32 = u_xlat45;
  u_xlat45 = clamp(x_303, 0.0f, 1.0f);
  let x_306 : f32 = u_xlat46;
  u_xlat19 = ((x_306 * 4.0f) + 2.0f);
  let x_314 : vec4<f32> = vs_TEXCOORD6;
  let x_315 : vec2<f32> = vec2<f32>(x_314.x, x_314.y);
  let x_317 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_315.x, x_315.y, x_317);
  let x_330 : vec3<f32> = txVec0;
  let x_332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_330.xy, x_330.z);
  u_xlat33 = x_332;
  let x_344 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_344) + 1.0f);
  let x_347 : f32 = u_xlat33;
  let x_349 : f32 = x_341.x_MainLightShadowParams.x;
  let x_351 : f32 = u_xlat47;
  u_xlat33 = ((x_347 * x_349) + x_351);
  let x_355 : f32 = vs_TEXCOORD6.z;
  u_xlatb47 = (0.0f >= x_355);
  let x_359 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_359 >= 1.0f);
  let x_361 : bool = u_xlatb47;
  let x_362 : bool = u_xlatb6;
  u_xlatb47 = (x_361 | x_362);
  let x_364 : bool = u_xlatb47;
  let x_365 : f32 = u_xlat33;
  u_xlat33 = select(x_365, 1.0f, x_364);
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_371 : vec3<f32> = (x_367 + -(x_369));
  let x_372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat6;
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat47;
  let x_381 : f32 = x_341.x_MainLightShadowParams.z;
  let x_384 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_379 * x_381) + x_384);
  let x_388 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_388, 0.0f, 1.0f);
  let x_392 : f32 = u_xlat33;
  u_xlat20 = (-(x_392) + 1.0f);
  let x_396 : f32 = u_xlat6.x;
  let x_397 : f32 = u_xlat20;
  let x_399 : f32 = u_xlat33;
  u_xlat33 = ((x_396 * x_397) + x_399);
  let x_408 : f32 = x_406.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_408 == -1.0f));
  let x_411 : bool = u_xlatb6;
  if (x_411) {
    let x_414 : vec3<f32> = vs_TEXCOORD1;
    let x_417 : vec4<f32> = x_406.x_MainLightWorldToLight[1i];
    let x_419 : vec2<f32> = (vec2<f32>(x_414.y, x_414.y) * vec2<f32>(x_417.x, x_417.y));
    let x_420 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_423 : vec4<f32> = x_406.x_MainLightWorldToLight[0i];
    let x_425 : vec3<f32> = vs_TEXCOORD1;
    let x_428 : vec4<f32> = u_xlat6;
    let x_430 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_425.x, x_425.x)) + vec2<f32>(x_428.x, x_428.y));
    let x_431 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_434 : vec4<f32> = x_406.x_MainLightWorldToLight[2i];
    let x_436 : vec3<f32> = vs_TEXCOORD1;
    let x_439 : vec4<f32> = u_xlat6;
    let x_441 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_436.z, x_436.z)) + vec2<f32>(x_439.x, x_439.y));
    let x_442 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat6;
    let x_447 : vec4<f32> = x_406.x_MainLightWorldToLight[3i];
    let x_449 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) + vec2<f32>(x_447.x, x_447.y));
    let x_450 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
    let x_452 : vec4<f32> = u_xlat6;
    let x_457 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_458 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
    let x_465 : vec4<f32> = u_xlat6;
    let x_468 : f32 = x_28.x_GlobalMipBias.x;
    let x_469 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_465.x, x_465.y), x_468);
    u_xlat6 = x_469;
    let x_474 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_476 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_478 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_480 : f32 = x_406.x_MainLightCookieTextureFormat;
    let x_481 : vec4<f32> = vec4<f32>(x_474, x_476, x_478, x_480);
    let x_489 : vec4<bool> = (vec4<f32>(x_481.x, x_481.y, x_481.z, x_481.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_489.x, x_489.y);
    let x_493 : bool = u_xlatb7.y;
    if (x_493) {
      let x_499 : f32 = u_xlat6.w;
      x_495 = x_499;
    } else {
      let x_502 : f32 = u_xlat6.x;
      x_495 = x_502;
    }
    let x_503 : f32 = x_495;
    u_xlat48 = x_503;
    let x_505 : bool = u_xlatb7.x;
    if (x_505) {
      let x_509 : vec4<f32> = u_xlat6;
      x_506 = vec3<f32>(x_509.x, x_509.y, x_509.z);
    } else {
      let x_512 : f32 = u_xlat48;
      x_506 = vec3<f32>(x_512, x_512, x_512);
    }
    let x_514 : vec3<f32> = x_506;
    let x_515 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_521 : vec4<f32> = u_xlat6;
  let x_524 : vec4<f32> = x_28.x_MainLightColor;
  let x_526 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec3<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat48 = dot(-(x_529), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : f32 = u_xlat48;
  let x_535 : f32 = u_xlat48;
  u_xlat48 = (x_534 + x_535);
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : f32 = u_xlat48;
  let x_544 : vec3<f32> = u_xlat2;
  let x_546 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.y, x_538.z) * -(vec3<f32>(x_540, x_540, x_540))) + -(x_544));
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat3;
  let x_551 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), x_551);
  let x_553 : f32 = u_xlat48;
  u_xlat48 = clamp(x_553, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat48;
  u_xlat48 = (-(x_555) + 1.0f);
  let x_558 : f32 = u_xlat48;
  let x_559 : f32 = u_xlat48;
  u_xlat48 = (x_558 * x_559);
  let x_561 : f32 = u_xlat48;
  let x_562 : f32 = u_xlat48;
  u_xlat48 = (x_561 * x_562);
  let x_565 : f32 = u_xlat44;
  u_xlat49 = ((-(x_565) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_571 : f32 = u_xlat44;
  let x_572 : f32 = u_xlat49;
  u_xlat44 = (x_571 * x_572);
  let x_574 : f32 = u_xlat44;
  u_xlat44 = (x_574 * 6.0f);
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : f32 = u_xlat44;
  let x_588 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_585.x, x_585.y, x_585.z), x_587);
  u_xlat7 = x_588;
  let x_590 : f32 = u_xlat7.w;
  u_xlat44 = (x_590 + -1.0f);
  let x_593 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_594 : f32 = u_xlat44;
  u_xlat44 = ((x_593 * x_594) + 1.0f);
  let x_597 : f32 = u_xlat44;
  u_xlat44 = max(x_597, 0.0f);
  let x_599 : f32 = u_xlat44;
  u_xlat44 = log2(x_599);
  let x_601 : f32 = u_xlat44;
  let x_603 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_601 * x_603);
  let x_605 : f32 = u_xlat44;
  u_xlat44 = exp2(x_605);
  let x_607 : f32 = u_xlat44;
  let x_609 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_607 * x_609);
  let x_611 : vec4<f32> = u_xlat7;
  let x_613 : f32 = u_xlat44;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613, x_613, x_613));
  let x_616 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_620 : f32 = u_xlat46;
  let x_622 : f32 = u_xlat46;
  u_xlat8 = ((vec2<f32>(x_620, x_620) * vec2<f32>(x_622, x_622)) + vec2<f32>(-1.0f, 1.0f));
  let x_628 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_628);
  let x_631 : vec4<f32> = u_xlat0;
  let x_634 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_631.x, x_631.y, x_631.z)) + vec3<f32>(x_634, x_634, x_634));
  let x_637 : f32 = u_xlat48;
  let x_639 : vec3<f32> = u_xlat22;
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_637, x_637, x_637) * x_639) + vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : f32 = u_xlat44;
  let x_646 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_644, x_644, x_644) * x_646);
  let x_648 : vec4<f32> = u_xlat7;
  let x_650 : vec3<f32> = u_xlat22;
  let x_651 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * x_650);
  let x_652 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = u_xlat4;
  let x_655 : vec3<f32> = u_xlat15;
  let x_657 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_654 * x_655) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat33;
  let x_662 : f32 = x_162.unity_LightData.z;
  u_xlat44 = (x_660 * x_662);
  let x_664 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_664.x, x_664.y, x_664.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : f32 = u_xlat45;
  u_xlat45 = clamp(x_670, 0.0f, 1.0f);
  let x_672 : f32 = u_xlat44;
  let x_673 : f32 = u_xlat45;
  u_xlat44 = (x_672 * x_673);
  let x_675 : f32 = u_xlat44;
  let x_677 : vec4<f32> = u_xlat6;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat2;
  let x_684 : vec4<f32> = x_28.x_MainLightPosition;
  let x_686 : vec3<f32> = (x_682 + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat7;
  let x_691 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat44;
  u_xlat44 = max(x_694, 1.17549435e-38f);
  let x_697 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_697);
  let x_699 : f32 = u_xlat44;
  let x_701 : vec4<f32> = u_xlat7;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_706.x, x_706.y, x_706.z), vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : f32 = u_xlat44;
  u_xlat44 = clamp(x_711, 0.0f, 1.0f);
  let x_714 : vec4<f32> = x_28.x_MainLightPosition;
  let x_716 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : f32 = u_xlat45;
  u_xlat45 = clamp(x_719, 0.0f, 1.0f);
  let x_721 : f32 = u_xlat44;
  let x_722 : f32 = u_xlat44;
  u_xlat44 = (x_721 * x_722);
  let x_724 : f32 = u_xlat44;
  let x_726 : f32 = u_xlat8.x;
  u_xlat44 = ((x_724 * x_726) + 1.00001001358032226562f);
  let x_730 : f32 = u_xlat45;
  let x_731 : f32 = u_xlat45;
  u_xlat45 = (x_730 * x_731);
  let x_733 : f32 = u_xlat44;
  let x_734 : f32 = u_xlat44;
  u_xlat44 = (x_733 * x_734);
  let x_736 : f32 = u_xlat45;
  u_xlat45 = max(x_736, 0.10000000149011611938f);
  let x_739 : f32 = u_xlat44;
  let x_740 : f32 = u_xlat45;
  u_xlat44 = (x_739 * x_740);
  let x_742 : f32 = u_xlat19;
  let x_743 : f32 = u_xlat44;
  u_xlat44 = (x_742 * x_743);
  let x_746 : f32 = u_xlat5.x;
  let x_747 : f32 = u_xlat44;
  u_xlat44 = (x_746 / x_747);
  let x_749 : vec4<f32> = u_xlat0;
  let x_751 : f32 = u_xlat44;
  let x_754 : vec3<f32> = u_xlat15;
  let x_755 : vec3<f32> = ((vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_751, x_751, x_751)) + x_754);
  let x_756 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_759 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_761 : f32 = x_162.unity_LightData.y;
  u_xlat44 = min(x_759, x_761);
  let x_765 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_765));
  let x_768 : f32 = u_xlat47;
  let x_771 : f32 = x_341.x_AdditionalShadowFadeParams.x;
  let x_774 : f32 = x_341.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_768 * x_771) + x_774);
  let x_776 : f32 = u_xlat45;
  u_xlat45 = clamp(x_776, 0.0f, 1.0f);
  let x_780 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_782 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_784 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_786 : f32 = x_406.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_787 : vec4<f32> = vec4<f32>(x_780, x_782, x_784, x_786);
  let x_794 : vec4<bool> = (vec4<f32>(x_787.x, x_787.y, x_787.z, x_787.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb33 = vec2<bool>(x_794.x, x_794.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_806 : u32 = u_xlatu_loop_1;
    let x_807 : u32 = u_xlatu44;
    if ((x_806 < x_807)) {
    } else {
      break;
    }
    let x_810 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_810 >> 2u);
    let x_814 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_814 & 3u));
    let x_817 : u32 = u_xlatu48;
    let x_820 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_817)];
    let x_830 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_835 : vec4<u32> = indexable[x_830];
    u_xlat48 = dot(x_820, bitcast<vec4<f32>>(x_835));
    let x_839 : f32 = u_xlat48;
    u_xlati48 = i32(x_839);
    let x_842 : vec3<f32> = vs_TEXCOORD1;
    let x_853 : i32 = u_xlati48;
    let x_855 : vec4<f32> = x_852.x_AdditionalLightsPosition[x_853];
    let x_858 : i32 = u_xlati48;
    let x_860 : vec4<f32> = x_852.x_AdditionalLightsPosition[x_858];
    u_xlat9 = ((-(x_842) * vec3<f32>(x_855.w, x_855.w, x_855.w)) + vec3<f32>(x_860.x, x_860.y, x_860.z));
    let x_863 : vec3<f32> = u_xlat9;
    let x_864 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_863, x_864);
    let x_866 : f32 = u_xlat49;
    u_xlat49 = max(x_866, 0.00006103515625f);
    let x_870 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_870);
    let x_873 : f32 = u_xlat51;
    let x_875 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_873, x_873, x_873) * x_875);
    let x_878 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_878);
    let x_880 : f32 = u_xlat49;
    let x_881 : i32 = u_xlati48;
    let x_883 : f32 = x_852.x_AdditionalLightsAttenuation[x_881].x;
    u_xlat49 = (x_880 * x_883);
    let x_885 : f32 = u_xlat49;
    let x_887 : f32 = u_xlat49;
    u_xlat49 = ((-(x_885) * x_887) + 1.0f);
    let x_890 : f32 = u_xlat49;
    u_xlat49 = max(x_890, 0.0f);
    let x_892 : f32 = u_xlat49;
    let x_893 : f32 = u_xlat49;
    u_xlat49 = (x_892 * x_893);
    let x_895 : f32 = u_xlat49;
    let x_896 : f32 = u_xlat52;
    u_xlat49 = (x_895 * x_896);
    let x_898 : i32 = u_xlati48;
    let x_900 : vec4<f32> = x_852.x_AdditionalLightsSpotDir[x_898];
    let x_902 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), x_902);
    let x_904 : f32 = u_xlat52;
    let x_905 : i32 = u_xlati48;
    let x_907 : f32 = x_852.x_AdditionalLightsAttenuation[x_905].z;
    let x_909 : i32 = u_xlati48;
    let x_911 : f32 = x_852.x_AdditionalLightsAttenuation[x_909].w;
    u_xlat52 = ((x_904 * x_907) + x_911);
    let x_913 : f32 = u_xlat52;
    u_xlat52 = clamp(x_913, 0.0f, 1.0f);
    let x_915 : f32 = u_xlat52;
    let x_916 : f32 = u_xlat52;
    u_xlat52 = (x_915 * x_916);
    let x_918 : f32 = u_xlat49;
    let x_919 : f32 = u_xlat52;
    u_xlat49 = (x_918 * x_919);
    let x_923 : i32 = u_xlati48;
    let x_925 : f32 = x_341.x_AdditionalShadowParams[x_923].w;
    u_xlati52 = i32(x_925);
    let x_930 : i32 = u_xlati52;
    u_xlatb11.x = (x_930 >= 0i);
    let x_934 : bool = u_xlatb11.x;
    if (x_934) {
      let x_938 : i32 = u_xlati48;
      let x_940 : f32 = x_341.x_AdditionalShadowParams[x_938].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_940, x_940, x_940, x_940))));
      let x_946 : bool = u_xlatb11.x;
      if (x_946) {
        let x_949 : vec3<f32> = u_xlat10;
        let x_952 : vec3<f32> = u_xlat10;
        let x_955 : vec4<bool> = (abs(vec4<f32>(x_949.z, x_949.z, x_949.y, x_949.z)) >= abs(vec4<f32>(x_952.x, x_952.y, x_952.x, x_952.x)));
        u_xlatb11 = vec3<bool>(x_955.x, x_955.y, x_955.z);
        let x_958 : bool = u_xlatb11.y;
        let x_960 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_958 & x_960);
        let x_964 : vec3<f32> = u_xlat10;
        let x_967 : vec4<bool> = (-(vec4<f32>(x_964.z, x_964.y, x_964.x, x_964.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_967.x, x_967.y, x_967.z);
        let x_971 : bool = u_xlatb12.x;
        u_xlat25.x = select(4.0f, 5.0f, x_971);
        let x_976 : bool = u_xlatb12.y;
        u_xlat25.z = select(2.0f, 3.0f, x_976);
        let x_982 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_982);
        let x_987 : bool = u_xlatb11.z;
        if (x_987) {
          let x_992 : f32 = u_xlat25.z;
          x_988 = x_992;
        } else {
          let x_995 : f32 = u_xlat12.x;
          x_988 = x_995;
        }
        let x_996 : f32 = x_988;
        u_xlat39 = x_996;
        let x_999 : bool = u_xlatb11.x;
        if (x_999) {
          let x_1004 : f32 = u_xlat25.x;
          x_1000 = x_1004;
        } else {
          let x_1006 : f32 = u_xlat39;
          x_1000 = x_1006;
        }
        let x_1007 : f32 = x_1000;
        u_xlat11.x = x_1007;
        let x_1009 : i32 = u_xlati48;
        let x_1011 : f32 = x_341.x_AdditionalShadowParams[x_1009].w;
        u_xlat25.x = trunc(x_1011);
        let x_1015 : f32 = u_xlat11.x;
        let x_1017 : f32 = u_xlat25.x;
        u_xlat11.x = (x_1015 + x_1017);
        let x_1021 : f32 = u_xlat11.x;
        u_xlati52 = i32(x_1021);
      }
      let x_1023 : i32 = u_xlati52;
      u_xlati52 = (x_1023 << bitcast<u32>(2i));
      let x_1025 : vec3<f32> = vs_TEXCOORD1;
      let x_1028 : i32 = u_xlati52;
      let x_1031 : i32 = u_xlati52;
      let x_1035 : vec4<f32> = x_341.x_AdditionalLightsWorldToShadow[((x_1028 + 1i) / 4i)][((x_1031 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1025.y, x_1025.y, x_1025.y, x_1025.y) * x_1035);
      let x_1037 : i32 = u_xlati52;
      let x_1039 : i32 = u_xlati52;
      let x_1042 : vec4<f32> = x_341.x_AdditionalLightsWorldToShadow[(x_1037 / 4i)][(x_1039 % 4i)];
      let x_1043 : vec3<f32> = vs_TEXCOORD1;
      let x_1046 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1042 * vec4<f32>(x_1043.x, x_1043.x, x_1043.x, x_1043.x)) + x_1046);
      let x_1048 : i32 = u_xlati52;
      let x_1051 : i32 = u_xlati52;
      let x_1055 : vec4<f32> = x_341.x_AdditionalLightsWorldToShadow[((x_1048 + 2i) / 4i)][((x_1051 + 2i) % 4i)];
      let x_1056 : vec3<f32> = vs_TEXCOORD1;
      let x_1059 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1055 * vec4<f32>(x_1056.z, x_1056.z, x_1056.z, x_1056.z)) + x_1059);
      let x_1061 : vec4<f32> = u_xlat11;
      let x_1062 : i32 = u_xlati52;
      let x_1065 : i32 = u_xlati52;
      let x_1069 : vec4<f32> = x_341.x_AdditionalLightsWorldToShadow[((x_1062 + 3i) / 4i)][((x_1065 + 3i) % 4i)];
      u_xlat11 = (x_1061 + x_1069);
      let x_1071 : vec4<f32> = u_xlat11;
      let x_1073 : vec4<f32> = u_xlat11;
      let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) / vec3<f32>(x_1073.w, x_1073.w, x_1073.w));
      let x_1076 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
      let x_1079 : vec4<f32> = u_xlat11;
      let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
      let x_1082 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
      let x_1090 : vec3<f32> = txVec1;
      let x_1092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1090.xy, x_1090.z);
      u_xlat52 = x_1092;
      let x_1093 : i32 = u_xlati48;
      let x_1095 : f32 = x_341.x_AdditionalShadowParams[x_1093].x;
      u_xlat11.x = (1.0f + -(x_1095));
      let x_1099 : f32 = u_xlat52;
      let x_1100 : i32 = u_xlati48;
      let x_1102 : f32 = x_341.x_AdditionalShadowParams[x_1100].x;
      let x_1105 : f32 = u_xlat11.x;
      u_xlat52 = ((x_1099 * x_1102) + x_1105);
      let x_1108 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_1108);
      let x_1113 : f32 = u_xlat11.z;
      u_xlatb25 = (x_1113 >= 1.0f);
      let x_1115 : bool = u_xlatb25;
      let x_1117 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_1115 | x_1117);
      let x_1121 : bool = u_xlatb11.x;
      let x_1122 : f32 = u_xlat52;
      u_xlat52 = select(x_1122, 1.0f, x_1121);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1125 : f32 = u_xlat52;
    u_xlat11.x = (-(x_1125) + 1.0f);
    let x_1129 : f32 = u_xlat45;
    let x_1131 : f32 = u_xlat11.x;
    let x_1133 : f32 = u_xlat52;
    u_xlat52 = ((x_1129 * x_1131) + x_1133);
    let x_1136 : i32 = u_xlati48;
    u_xlati11 = (1i << bitcast<u32>((x_1136 & 31i)));
    let x_1140 : i32 = u_xlati11;
    let x_1143 : f32 = x_406.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1140) & bitcast<u32>(x_1143)));
    let x_1147 : i32 = u_xlati11;
    if ((x_1147 != 0i)) {
      let x_1151 : i32 = u_xlati48;
      let x_1153 : f32 = x_406.x_AdditionalLightsLightTypes[x_1151].el;
      u_xlati11 = i32(x_1153);
      let x_1156 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1156 != 0i));
      let x_1160 : i32 = u_xlati48;
      u_xlati39 = (x_1160 << bitcast<u32>(2i));
      let x_1162 : i32 = u_xlati25;
      if ((x_1162 != 0i)) {
        let x_1166 : vec3<f32> = vs_TEXCOORD1;
        let x_1168 : i32 = u_xlati39;
        let x_1171 : i32 = u_xlati39;
        let x_1175 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1168 + 1i) / 4i)][((x_1171 + 1i) % 4i)];
        let x_1177 : vec3<f32> = (vec3<f32>(x_1166.y, x_1166.y, x_1166.y) * vec3<f32>(x_1175.x, x_1175.y, x_1175.w));
        let x_1178 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : i32 = u_xlati39;
        let x_1182 : i32 = u_xlati39;
        let x_1185 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[(x_1180 / 4i)][(x_1182 % 4i)];
        let x_1187 : vec3<f32> = vs_TEXCOORD1;
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1192 : vec3<f32> = ((vec3<f32>(x_1185.x, x_1185.y, x_1185.w) * vec3<f32>(x_1187.x, x_1187.x, x_1187.x)) + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
        let x_1193 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : i32 = u_xlati39;
        let x_1198 : i32 = u_xlati39;
        let x_1202 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1195 + 2i) / 4i)][((x_1198 + 2i) % 4i)];
        let x_1204 : vec3<f32> = vs_TEXCOORD1;
        let x_1207 : vec4<f32> = u_xlat12;
        let x_1209 : vec3<f32> = ((vec3<f32>(x_1202.x, x_1202.y, x_1202.w) * vec3<f32>(x_1204.z, x_1204.z, x_1204.z)) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat12;
        let x_1214 : i32 = u_xlati39;
        let x_1217 : i32 = u_xlati39;
        let x_1221 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1214 + 3i) / 4i)][((x_1217 + 3i) % 4i)];
        let x_1223 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) + vec3<f32>(x_1221.x, x_1221.y, x_1221.w));
        let x_1224 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat12;
        let x_1228 : vec4<f32> = u_xlat12;
        let x_1230 : vec2<f32> = (vec2<f32>(x_1226.x, x_1226.y) / vec2<f32>(x_1228.z, x_1228.z));
        let x_1231 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1230.x, x_1231.y, x_1230.y);
        let x_1233 : vec3<f32> = u_xlat25;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1237 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1236.x, x_1237.y, x_1236.y);
        let x_1239 : vec3<f32> = u_xlat25;
        let x_1243 : vec2<f32> = clamp(vec2<f32>(x_1239.x, x_1239.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1244 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1243.x, x_1244.y, x_1243.y);
        let x_1246 : i32 = u_xlati48;
        let x_1248 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1246];
        let x_1250 : vec3<f32> = u_xlat25;
        let x_1253 : i32 = u_xlati48;
        let x_1255 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1253];
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1250.x, x_1250.z)) + vec2<f32>(x_1255.z, x_1255.w));
        let x_1258 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1257.x, x_1258.y, x_1257.y);
      } else {
        let x_1261 : i32 = u_xlati11;
        u_xlatb11.x = (x_1261 == 1i);
        let x_1265 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_1265);
        let x_1267 : i32 = u_xlati11;
        if ((x_1267 != 0i)) {
          let x_1271 : vec3<f32> = vs_TEXCOORD1;
          let x_1273 : i32 = u_xlati39;
          let x_1276 : i32 = u_xlati39;
          let x_1280 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1273 + 1i) / 4i)][((x_1276 + 1i) % 4i)];
          let x_1282 : vec2<f32> = (vec2<f32>(x_1271.y, x_1271.y) * vec2<f32>(x_1280.x, x_1280.y));
          let x_1283 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
          let x_1285 : i32 = u_xlati39;
          let x_1287 : i32 = u_xlati39;
          let x_1290 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[(x_1285 / 4i)][(x_1287 % 4i)];
          let x_1292 : vec3<f32> = vs_TEXCOORD1;
          let x_1295 : vec4<f32> = u_xlat12;
          let x_1297 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1292.x, x_1292.x)) + vec2<f32>(x_1295.x, x_1295.y));
          let x_1298 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
          let x_1300 : i32 = u_xlati39;
          let x_1303 : i32 = u_xlati39;
          let x_1307 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1300 + 2i) / 4i)][((x_1303 + 2i) % 4i)];
          let x_1309 : vec3<f32> = vs_TEXCOORD1;
          let x_1312 : vec4<f32> = u_xlat12;
          let x_1314 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1309.z, x_1309.z)) + vec2<f32>(x_1312.x, x_1312.y));
          let x_1315 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
          let x_1317 : vec4<f32> = u_xlat12;
          let x_1319 : i32 = u_xlati39;
          let x_1322 : i32 = u_xlati39;
          let x_1326 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1319 + 3i) / 4i)][((x_1322 + 3i) % 4i)];
          let x_1328 : vec2<f32> = (vec2<f32>(x_1317.x, x_1317.y) + vec2<f32>(x_1326.x, x_1326.y));
          let x_1329 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
          let x_1331 : vec4<f32> = u_xlat12;
          let x_1334 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1335 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1334.x, x_1334.y, x_1335.z, x_1335.w);
          let x_1337 : vec4<f32> = u_xlat12;
          let x_1339 : vec2<f32> = fract(vec2<f32>(x_1337.x, x_1337.y));
          let x_1340 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
          let x_1342 : i32 = u_xlati48;
          let x_1344 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1342];
          let x_1346 : vec4<f32> = u_xlat12;
          let x_1349 : i32 = u_xlati48;
          let x_1351 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1349];
          let x_1353 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1351.z, x_1351.w));
          let x_1354 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1353.x, x_1354.y, x_1353.y);
        } else {
          let x_1357 : vec3<f32> = vs_TEXCOORD1;
          let x_1359 : i32 = u_xlati39;
          let x_1362 : i32 = u_xlati39;
          let x_1366 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1359 + 1i) / 4i)][((x_1362 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1357.y, x_1357.y, x_1357.y, x_1357.y) * x_1366);
          let x_1368 : i32 = u_xlati39;
          let x_1370 : i32 = u_xlati39;
          let x_1373 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[(x_1368 / 4i)][(x_1370 % 4i)];
          let x_1374 : vec3<f32> = vs_TEXCOORD1;
          let x_1377 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1373 * vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.x)) + x_1377);
          let x_1379 : i32 = u_xlati39;
          let x_1382 : i32 = u_xlati39;
          let x_1386 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1379 + 2i) / 4i)][((x_1382 + 2i) % 4i)];
          let x_1387 : vec3<f32> = vs_TEXCOORD1;
          let x_1390 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1386 * vec4<f32>(x_1387.z, x_1387.z, x_1387.z, x_1387.z)) + x_1390);
          let x_1392 : vec4<f32> = u_xlat12;
          let x_1393 : i32 = u_xlati39;
          let x_1396 : i32 = u_xlati39;
          let x_1400 : vec4<f32> = x_406.x_AdditionalLightsWorldToLights[((x_1393 + 3i) / 4i)][((x_1396 + 3i) % 4i)];
          u_xlat12 = (x_1392 + x_1400);
          let x_1402 : vec4<f32> = u_xlat12;
          let x_1404 : vec4<f32> = u_xlat12;
          let x_1406 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) / vec3<f32>(x_1404.w, x_1404.w, x_1404.w));
          let x_1407 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
          let x_1409 : vec4<f32> = u_xlat12;
          let x_1411 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1409.x, x_1409.y, x_1409.z), vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
          let x_1416 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1416);
          let x_1419 : vec4<f32> = u_xlat11;
          let x_1421 : vec4<f32> = u_xlat12;
          let x_1423 : vec3<f32> = (vec3<f32>(x_1419.x, x_1419.x, x_1419.x) * vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
          let x_1424 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
          let x_1426 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1426.x, x_1426.y, x_1426.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1433 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1433, 0.00000099999999747524f);
          let x_1438 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1438);
          let x_1442 : vec4<f32> = u_xlat11;
          let x_1444 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1442.x, x_1442.x, x_1442.x) * vec3<f32>(x_1444.z, x_1444.x, x_1444.y));
          let x_1448 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1448);
          let x_1452 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1452, 0.0f, 1.0f);
          let x_1456 : vec3<f32> = u_xlat13;
          let x_1458 : vec4<bool> = (vec4<f32>(x_1456.y, x_1456.z, x_1456.y, x_1456.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1458.x, x_1458.y);
          let x_1462 : bool = u_xlatb40.x;
          if (x_1462) {
            let x_1467 : f32 = u_xlat13.x;
            x_1463 = x_1467;
          } else {
            let x_1470 : f32 = u_xlat13.x;
            x_1463 = -(x_1470);
          }
          let x_1472 : f32 = x_1463;
          u_xlat40.x = x_1472;
          let x_1475 : bool = u_xlatb40.y;
          if (x_1475) {
            let x_1480 : f32 = u_xlat13.x;
            x_1476 = x_1480;
          } else {
            let x_1483 : f32 = u_xlat13.x;
            x_1476 = -(x_1483);
          }
          let x_1485 : f32 = x_1476;
          u_xlat40.y = x_1485;
          let x_1487 : vec4<f32> = u_xlat12;
          let x_1489 : vec4<f32> = u_xlat11;
          let x_1492 : vec2<f32> = u_xlat40;
          let x_1493 : vec2<f32> = ((vec2<f32>(x_1487.x, x_1487.y) * vec2<f32>(x_1489.x, x_1489.x)) + x_1492);
          let x_1494 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1493.x, x_1494.y, x_1493.y, x_1494.w);
          let x_1496 : vec4<f32> = u_xlat11;
          let x_1499 : vec2<f32> = ((vec2<f32>(x_1496.x, x_1496.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1500 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1499.x, x_1500.y, x_1499.y, x_1500.w);
          let x_1502 : vec4<f32> = u_xlat11;
          let x_1506 : vec2<f32> = clamp(vec2<f32>(x_1502.x, x_1502.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1507 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1506.x, x_1507.y, x_1506.y, x_1507.w);
          let x_1509 : i32 = u_xlati48;
          let x_1511 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1509];
          let x_1513 : vec4<f32> = u_xlat11;
          let x_1516 : i32 = u_xlati48;
          let x_1518 : vec4<f32> = x_406.x_AdditionalLightsCookieAtlasUVRects[x_1516];
          let x_1520 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1513.x, x_1513.z)) + vec2<f32>(x_1518.z, x_1518.w));
          let x_1521 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1520.x, x_1521.y, x_1520.y);
        }
      }
      let x_1528 : vec3<f32> = u_xlat25;
      let x_1530 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1528.x, x_1528.z), 0.0f);
      u_xlat11 = x_1530;
      let x_1533 : bool = u_xlatb33.y;
      if (x_1533) {
        let x_1538 : f32 = u_xlat11.w;
        x_1534 = x_1538;
      } else {
        let x_1541 : f32 = u_xlat11.x;
        x_1534 = x_1541;
      }
      let x_1542 : f32 = x_1534;
      u_xlat53 = x_1542;
      let x_1544 : bool = u_xlatb33.x;
      if (x_1544) {
        let x_1548 : vec4<f32> = u_xlat11;
        x_1545 = vec3<f32>(x_1548.x, x_1548.y, x_1548.z);
      } else {
        let x_1551 : f32 = u_xlat53;
        x_1545 = vec3<f32>(x_1551, x_1551, x_1551);
      }
      let x_1553 : vec3<f32> = x_1545;
      let x_1554 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1560 : vec4<f32> = u_xlat11;
    let x_1562 : i32 = u_xlati48;
    let x_1564 : vec4<f32> = x_852.x_AdditionalLightsColor[x_1562];
    let x_1566 : vec3<f32> = (vec3<f32>(x_1560.x, x_1560.y, x_1560.z) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
    let x_1567 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
    let x_1569 : f32 = u_xlat49;
    let x_1570 : f32 = u_xlat52;
    u_xlat48 = (x_1569 * x_1570);
    let x_1572 : vec4<f32> = u_xlat3;
    let x_1574 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1572.x, x_1572.y, x_1572.z), x_1574);
    let x_1576 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1576, 0.0f, 1.0f);
    let x_1578 : f32 = u_xlat48;
    let x_1579 : f32 = u_xlat49;
    u_xlat48 = (x_1578 * x_1579);
    let x_1581 : f32 = u_xlat48;
    let x_1583 : vec4<f32> = u_xlat11;
    let x_1585 : vec3<f32> = (vec3<f32>(x_1581, x_1581, x_1581) * vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
    let x_1586 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
    let x_1588 : vec3<f32> = u_xlat9;
    let x_1589 : f32 = u_xlat51;
    let x_1592 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1588 * vec3<f32>(x_1589, x_1589, x_1589)) + x_1592);
    let x_1594 : vec3<f32> = u_xlat9;
    let x_1595 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1594, x_1595);
    let x_1597 : f32 = u_xlat48;
    u_xlat48 = max(x_1597, 1.17549435e-38f);
    let x_1599 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1599);
    let x_1601 : f32 = u_xlat48;
    let x_1603 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1601, x_1601, x_1601) * x_1603);
    let x_1605 : vec4<f32> = u_xlat3;
    let x_1607 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), x_1607);
    let x_1609 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1609, 0.0f, 1.0f);
    let x_1611 : vec3<f32> = u_xlat10;
    let x_1612 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1611, x_1612);
    let x_1614 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1614, 0.0f, 1.0f);
    let x_1616 : f32 = u_xlat48;
    let x_1617 : f32 = u_xlat48;
    u_xlat48 = (x_1616 * x_1617);
    let x_1619 : f32 = u_xlat48;
    let x_1621 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1619 * x_1621) + 1.00001001358032226562f);
    let x_1624 : f32 = u_xlat49;
    let x_1625 : f32 = u_xlat49;
    u_xlat49 = (x_1624 * x_1625);
    let x_1627 : f32 = u_xlat48;
    let x_1628 : f32 = u_xlat48;
    u_xlat48 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat49;
    u_xlat49 = max(x_1630, 0.10000000149011611938f);
    let x_1632 : f32 = u_xlat48;
    let x_1633 : f32 = u_xlat49;
    u_xlat48 = (x_1632 * x_1633);
    let x_1635 : f32 = u_xlat19;
    let x_1636 : f32 = u_xlat48;
    u_xlat48 = (x_1635 * x_1636);
    let x_1639 : f32 = u_xlat5.x;
    let x_1640 : f32 = u_xlat48;
    u_xlat48 = (x_1639 / x_1640);
    let x_1642 : vec4<f32> = u_xlat0;
    let x_1644 : f32 = u_xlat48;
    let x_1647 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1642.x, x_1642.y, x_1642.z) * vec3<f32>(x_1644, x_1644, x_1644)) + x_1647);
    let x_1649 : vec3<f32> = u_xlat9;
    let x_1650 : vec4<f32> = u_xlat11;
    let x_1653 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1649 * vec3<f32>(x_1650.x, x_1650.y, x_1650.z)) + x_1653);

    continuing {
      let x_1655 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1655 + bitcast<u32>(1i));
    }
  }
  let x_1657 : vec4<f32> = u_xlat7;
  let x_1659 : vec4<f32> = u_xlat6;
  let x_1662 : vec3<f32> = u_xlat4;
  let x_1663 : vec3<f32> = ((vec3<f32>(x_1657.x, x_1657.y, x_1657.z) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z)) + x_1662);
  let x_1664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
  let x_1666 : vec3<f32> = u_xlat22;
  let x_1667 : vec4<f32> = u_xlat0;
  let x_1669 : vec3<f32> = (x_1666 + vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1672 : f32 = u_xlat42;
  let x_1673 : f32 = u_xlat42;
  u_xlat42 = (x_1672 * -(x_1673));
  let x_1676 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1676);
  let x_1678 : vec4<f32> = u_xlat0;
  let x_1681 : vec4<f32> = x_28.unity_FogColor;
  let x_1684 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) + -(vec3<f32>(x_1681.x, x_1681.y, x_1681.z)));
  let x_1685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
  let x_1689 : f32 = u_xlat42;
  let x_1691 : vec4<f32> = u_xlat0;
  let x_1695 : vec4<f32> = x_28.unity_FogColor;
  let x_1697 : vec3<f32> = ((vec3<f32>(x_1689, x_1689, x_1689) * vec3<f32>(x_1691.x, x_1691.y, x_1691.z)) + vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
  let x_1698 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  let x_1702 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1702 == 1.0f);
  let x_1704 : bool = u_xlatb0;
  if (x_1704) {
    let x_1709 : f32 = u_xlat1.x;
    x_1705 = x_1709;
  } else {
    x_1705 = 1.0f;
  }
  let x_1711 : f32 = x_1705;
  SV_Target0.w = x_1711;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


