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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb36 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat41 : f32;

@group(1) @binding(4) var<uniform> x_342 : LightShadows;

var<private> u_xlatb41 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu29 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_705 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlati44 : i32;

var<private> u_xlatb45 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb46 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatu40 : u32;

fn main_1() {
  var x_96 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_369 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_838 : f32;
  var x_848 : f32;
  var txVec1 : vec3<f32>;
  var x_1125 : f32;
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
  u_xlatb36 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat38 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat38;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb36;
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
  u_xlat36 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_109);
  let x_111 : f32 = u_xlat36;
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_114 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : f32 = vs_TEXCOORD1.y;
  let x_121 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_119 * x_121);
  let x_124 : f32 = x_28.unity_MatrixV[0i].z;
  let x_126 : f32 = vs_TEXCOORD1.x;
  let x_128 : f32 = u_xlat36;
  u_xlat36 = ((x_124 * x_126) + x_128);
  let x_131 : f32 = x_28.unity_MatrixV[2i].z;
  let x_133 : f32 = vs_TEXCOORD1.z;
  let x_135 : f32 = u_xlat36;
  u_xlat36 = ((x_131 * x_133) + x_135);
  let x_137 : f32 = u_xlat36;
  let x_140 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_137 + x_140);
  let x_142 : f32 = u_xlat36;
  let x_146 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_142) + -(x_146));
  let x_149 : f32 = u_xlat36;
  u_xlat36 = max(x_149, 0.0f);
  let x_151 : f32 = u_xlat36;
  let x_154 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_151 * x_154);
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
  u_xlat38 = (x_207 * x_209);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat38;
  u_xlat38 = ((x_212 * x_214) + -(x_216));
  let x_221 : vec4<f32> = x_162.unity_SHC;
  let x_223 : f32 = u_xlat38;
  let x_226 : vec3<f32> = u_xlat6;
  let x_227 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223, x_223, x_223)) + x_226);
  let x_228 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec3<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_230 + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_234, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_238 : f32 = x_42.x_Metallic;
  u_xlat38 = ((-(x_238) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_244 : f32 = u_xlat38;
  let x_247 : f32 = x_42.x_Smoothness;
  u_xlat39 = (-(x_244) + x_247);
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_250.y, x_250.z, x_250.w) * vec3<f32>(x_252, x_252, x_252));
  let x_255 : vec4<f32> = u_xlat0;
  let x_258 : vec4<f32> = x_42.x_BaseColor;
  let x_263 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_258.x, x_258.y, x_258.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : f32 = x_42.x_Metallic;
  let x_269 : f32 = x_42.x_Metallic;
  let x_271 : f32 = x_42.x_Metallic;
  let x_272 : vec3<f32> = vec3<f32>(x_267, x_269, x_271);
  let x_277 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : f32 = x_42.x_Smoothness;
  u_xlat38 = (-(x_286) + 1.0f);
  let x_290 : f32 = u_xlat38;
  let x_291 : f32 = u_xlat38;
  u_xlat40 = (x_290 * x_291);
  let x_293 : f32 = u_xlat40;
  u_xlat40 = max(x_293, 0.0078125f);
  let x_296 : f32 = u_xlat40;
  let x_297 : f32 = u_xlat40;
  u_xlat5.x = (x_296 * x_297);
  let x_300 : f32 = u_xlat39;
  u_xlat39 = (x_300 + 1.0f);
  let x_302 : f32 = u_xlat39;
  u_xlat39 = clamp(x_302, 0.0f, 1.0f);
  let x_305 : f32 = u_xlat40;
  u_xlat17 = ((x_305 * 4.0f) + 2.0f);
  let x_313 : vec4<f32> = vs_TEXCOORD6;
  let x_314 : vec2<f32> = vec2<f32>(x_313.x, x_313.y);
  let x_316 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_314.x, x_314.y, x_316);
  let x_330 : vec3<f32> = txVec0;
  let x_332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_330.xy, x_330.z);
  u_xlat29.x = x_332;
  let x_345 : f32 = x_342.x_MainLightShadowParams.x;
  u_xlat41 = (-(x_345) + 1.0f);
  let x_349 : f32 = u_xlat29.x;
  let x_351 : f32 = x_342.x_MainLightShadowParams.x;
  let x_353 : f32 = u_xlat41;
  u_xlat29.x = ((x_349 * x_351) + x_353);
  let x_358 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (0.0f >= x_358);
  let x_362 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_362 >= 1.0f);
  let x_364 : bool = u_xlatb41;
  let x_365 : bool = u_xlatb6;
  u_xlatb41 = (x_364 | x_365);
  let x_367 : bool = u_xlatb41;
  if (x_367) {
    x_369 = 1.0f;
  } else {
    let x_374 : f32 = u_xlat29.x;
    x_369 = x_374;
  }
  let x_375 : f32 = x_369;
  u_xlat29.x = x_375;
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_377 + -(x_379));
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(x_382, x_383);
  let x_385 : f32 = u_xlat41;
  let x_387 : f32 = x_342.x_MainLightShadowParams.z;
  let x_390 : f32 = x_342.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_385 * x_387) + x_390);
  let x_394 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_394, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat29.x;
  u_xlat18 = (-(x_399) + 1.0f);
  let x_403 : f32 = u_xlat6.x;
  let x_404 : f32 = u_xlat18;
  let x_407 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_403 * x_404) + x_407);
  let x_410 : vec3<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_410), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_417 : f32 = u_xlat6.x;
  let x_419 : f32 = u_xlat6.x;
  u_xlat6.x = (x_417 + x_419);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : vec3<f32> = u_xlat6;
  let x_428 : vec3<f32> = u_xlat2;
  u_xlat6 = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * -(vec3<f32>(x_424.x, x_424.x, x_424.x))) + -(x_428));
  let x_432 : vec4<f32> = u_xlat3;
  let x_434 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), x_434);
  let x_436 : f32 = u_xlat42;
  u_xlat42 = clamp(x_436, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat42;
  u_xlat42 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat42;
  let x_442 : f32 = u_xlat42;
  u_xlat42 = (x_441 * x_442);
  let x_444 : f32 = u_xlat42;
  let x_445 : f32 = u_xlat42;
  u_xlat42 = (x_444 * x_445);
  let x_448 : f32 = u_xlat38;
  u_xlat7.x = ((-(x_448) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_455 : f32 = u_xlat38;
  let x_457 : f32 = u_xlat7.x;
  u_xlat38 = (x_455 * x_457);
  let x_459 : f32 = u_xlat38;
  u_xlat38 = (x_459 * 6.0f);
  let x_470 : vec3<f32> = u_xlat6;
  let x_471 : f32 = u_xlat38;
  let x_472 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_470, x_471);
  u_xlat7 = x_472;
  let x_474 : f32 = u_xlat7.w;
  u_xlat38 = (x_474 + -1.0f);
  let x_478 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_479 : f32 = u_xlat38;
  u_xlat38 = ((x_478 * x_479) + 1.0f);
  let x_482 : f32 = u_xlat38;
  u_xlat38 = max(x_482, 0.0f);
  let x_484 : f32 = u_xlat38;
  u_xlat38 = log2(x_484);
  let x_486 : f32 = u_xlat38;
  let x_488 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_486 * x_488);
  let x_490 : f32 = u_xlat38;
  u_xlat38 = exp2(x_490);
  let x_492 : f32 = u_xlat38;
  let x_494 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_492 * x_494);
  let x_496 : vec4<f32> = u_xlat7;
  let x_498 : f32 = u_xlat38;
  u_xlat6 = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498, x_498, x_498));
  let x_501 : f32 = u_xlat40;
  let x_503 : f32 = u_xlat40;
  let x_507 : vec2<f32> = ((vec2<f32>(x_501, x_501) * vec2<f32>(x_503, x_503)) + vec2<f32>(-1.0f, 1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_511 : f32 = u_xlat7.y;
  u_xlat38 = (1.0f / x_511);
  let x_514 : vec4<f32> = u_xlat0;
  let x_517 : f32 = u_xlat39;
  u_xlat19 = (-(vec3<f32>(x_514.x, x_514.y, x_514.z)) + vec3<f32>(x_517, x_517, x_517));
  let x_520 : f32 = u_xlat42;
  let x_522 : vec3<f32> = u_xlat19;
  let x_524 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_520, x_520, x_520) * x_522) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat38;
  let x_529 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_527, x_527, x_527) * x_529);
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec3<f32> = u_xlat19;
  u_xlat6 = (x_531 * x_532);
  let x_534 : vec3<f32> = u_xlat4;
  let x_535 : vec3<f32> = u_xlat13;
  let x_537 : vec3<f32> = u_xlat6;
  u_xlat4 = ((x_534 * x_535) + x_537);
  let x_540 : f32 = u_xlat29.x;
  let x_542 : f32 = x_162.unity_LightData.z;
  u_xlat38 = (x_540 * x_542);
  let x_544 : vec4<f32> = u_xlat3;
  let x_547 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : f32 = u_xlat39;
  u_xlat39 = clamp(x_550, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat38;
  let x_553 : f32 = u_xlat39;
  u_xlat38 = (x_552 * x_553);
  let x_555 : f32 = u_xlat38;
  let x_558 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec3<f32> = u_xlat2;
  let x_563 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_561 + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec3<f32> = u_xlat19;
  let x_567 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(x_566, x_567);
  let x_569 : f32 = u_xlat38;
  u_xlat38 = max(x_569, 1.17549435e-38f);
  let x_572 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat38;
  let x_576 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), x_580);
  let x_582 : f32 = u_xlat38;
  u_xlat38 = clamp(x_582, 0.0f, 1.0f);
  let x_585 : vec4<f32> = x_28.x_MainLightPosition;
  let x_587 : vec3<f32> = u_xlat19;
  u_xlat39 = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), x_587);
  let x_589 : f32 = u_xlat39;
  u_xlat39 = clamp(x_589, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat38;
  let x_592 : f32 = u_xlat38;
  u_xlat38 = (x_591 * x_592);
  let x_594 : f32 = u_xlat38;
  let x_596 : f32 = u_xlat7.x;
  u_xlat38 = ((x_594 * x_596) + 1.00001001358032226562f);
  let x_600 : f32 = u_xlat39;
  let x_601 : f32 = u_xlat39;
  u_xlat39 = (x_600 * x_601);
  let x_603 : f32 = u_xlat38;
  let x_604 : f32 = u_xlat38;
  u_xlat38 = (x_603 * x_604);
  let x_606 : f32 = u_xlat39;
  u_xlat39 = max(x_606, 0.10000000149011611938f);
  let x_609 : f32 = u_xlat38;
  let x_610 : f32 = u_xlat39;
  u_xlat38 = (x_609 * x_610);
  let x_612 : f32 = u_xlat17;
  let x_613 : f32 = u_xlat38;
  u_xlat38 = (x_612 * x_613);
  let x_616 : f32 = u_xlat5.x;
  let x_617 : f32 = u_xlat38;
  u_xlat38 = (x_616 / x_617);
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : f32 = u_xlat38;
  let x_624 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621, x_621, x_621)) + x_624);
  let x_627 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_629 : f32 = x_162.unity_LightData.y;
  u_xlat38 = min(x_627, x_629);
  let x_633 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_633));
  let x_636 : f32 = u_xlat41;
  let x_639 : f32 = x_342.x_AdditionalShadowFadeParams.x;
  let x_642 : f32 = x_342.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_636 * x_639) + x_642);
  let x_644 : f32 = u_xlat39;
  u_xlat39 = clamp(x_644, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_657 : u32 = u_xlatu_loop_1;
    let x_658 : u32 = u_xlatu38;
    if ((x_657 < x_658)) {
    } else {
      break;
    }
    let x_661 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_661 >> 2u);
    let x_665 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_665 & 3u));
    let x_668 : u32 = u_xlatu29;
    let x_671 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_668)];
    let x_681 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_686 : vec4<u32> = indexable[x_681];
    u_xlat29.x = dot(x_671, bitcast<vec4<f32>>(x_686));
    let x_692 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_692);
    let x_695 : vec3<f32> = vs_TEXCOORD1;
    let x_706 : i32 = u_xlati29;
    let x_708 : vec4<f32> = x_705.x_AdditionalLightsPosition[x_706];
    let x_711 : i32 = u_xlati29;
    let x_713 : vec4<f32> = x_705.x_AdditionalLightsPosition[x_711];
    u_xlat9 = ((-(x_695) * vec3<f32>(x_708.w, x_708.w, x_708.w)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec3<f32> = u_xlat9;
    let x_717 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_716, x_717);
    let x_719 : f32 = u_xlat41;
    u_xlat41 = max(x_719, 0.00006103515625f);
    let x_722 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_722);
    let x_725 : f32 = u_xlat42;
    let x_727 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_725, x_725, x_725) * x_727);
    let x_730 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_730);
    let x_732 : f32 = u_xlat41;
    let x_733 : i32 = u_xlati29;
    let x_735 : f32 = x_705.x_AdditionalLightsAttenuation[x_733].x;
    u_xlat41 = (x_732 * x_735);
    let x_737 : f32 = u_xlat41;
    let x_739 : f32 = u_xlat41;
    u_xlat41 = ((-(x_737) * x_739) + 1.0f);
    let x_742 : f32 = u_xlat41;
    u_xlat41 = max(x_742, 0.0f);
    let x_744 : f32 = u_xlat41;
    let x_745 : f32 = u_xlat41;
    u_xlat41 = (x_744 * x_745);
    let x_747 : f32 = u_xlat41;
    let x_748 : f32 = u_xlat44;
    u_xlat41 = (x_747 * x_748);
    let x_750 : i32 = u_xlati29;
    let x_752 : vec4<f32> = x_705.x_AdditionalLightsSpotDir[x_750];
    let x_754 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), x_754);
    let x_756 : f32 = u_xlat44;
    let x_757 : i32 = u_xlati29;
    let x_759 : f32 = x_705.x_AdditionalLightsAttenuation[x_757].z;
    let x_761 : i32 = u_xlati29;
    let x_763 : f32 = x_705.x_AdditionalLightsAttenuation[x_761].w;
    u_xlat44 = ((x_756 * x_759) + x_763);
    let x_765 : f32 = u_xlat44;
    u_xlat44 = clamp(x_765, 0.0f, 1.0f);
    let x_767 : f32 = u_xlat44;
    let x_768 : f32 = u_xlat44;
    u_xlat44 = (x_767 * x_768);
    let x_770 : f32 = u_xlat41;
    let x_771 : f32 = u_xlat44;
    u_xlat41 = (x_770 * x_771);
    let x_775 : i32 = u_xlati29;
    let x_777 : f32 = x_342.x_AdditionalShadowParams[x_775].w;
    u_xlati44 = i32(x_777);
    let x_780 : i32 = u_xlati44;
    u_xlatb45 = (x_780 >= 0i);
    let x_782 : bool = u_xlatb45;
    if (x_782) {
      let x_786 : i32 = u_xlati29;
      let x_788 : f32 = x_342.x_AdditionalShadowParams[x_786].z;
      u_xlatb45 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_788, x_788, x_788, x_788))));
      let x_793 : bool = u_xlatb45;
      if (x_793) {
        let x_798 : vec3<f32> = u_xlat10;
        let x_801 : vec3<f32> = u_xlat10;
        let x_804 : vec4<bool> = (abs(vec4<f32>(x_798.z, x_798.z, x_798.y, x_798.z)) >= abs(vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.x)));
        let x_806 : vec3<bool> = vec3<bool>(x_804.x, x_804.y, x_804.z);
        let x_807 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_810 : bool = u_xlatb11.y;
        let x_812 : bool = u_xlatb11.x;
        u_xlatb45 = (x_810 & x_812);
        let x_814 : vec3<f32> = u_xlat10;
        let x_817 : vec4<bool> = (-(vec4<f32>(x_814.z, x_814.y, x_814.z, x_814.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_818 : vec3<bool> = vec3<bool>(x_817.x, x_817.y, x_817.w);
        let x_819 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_818.x, x_818.y, x_819.z, x_818.z);
        let x_823 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_823);
        let x_828 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_828);
        let x_834 : bool = u_xlatb11.w;
        u_xlat46 = select(0.0f, 1.0f, x_834);
        let x_837 : bool = u_xlatb11.z;
        if (x_837) {
          let x_842 : f32 = u_xlat11.y;
          x_838 = x_842;
        } else {
          let x_844 : f32 = u_xlat46;
          x_838 = x_844;
        }
        let x_845 : f32 = x_838;
        u_xlat46 = x_845;
        let x_847 : bool = u_xlatb45;
        if (x_847) {
          let x_852 : f32 = u_xlat11.x;
          x_848 = x_852;
        } else {
          let x_854 : f32 = u_xlat46;
          x_848 = x_854;
        }
        let x_855 : f32 = x_848;
        u_xlat45 = x_855;
        let x_856 : i32 = u_xlati29;
        let x_858 : f32 = x_342.x_AdditionalShadowParams[x_856].w;
        u_xlat46 = trunc(x_858);
        let x_860 : f32 = u_xlat45;
        let x_861 : f32 = u_xlat46;
        u_xlat45 = (x_860 + x_861);
        let x_863 : f32 = u_xlat45;
        u_xlati44 = i32(x_863);
      }
      let x_865 : i32 = u_xlati44;
      u_xlati44 = (x_865 << bitcast<u32>(2i));
      let x_867 : vec3<f32> = vs_TEXCOORD1;
      let x_870 : i32 = u_xlati44;
      let x_873 : i32 = u_xlati44;
      let x_877 : vec4<f32> = x_342.x_AdditionalLightsWorldToShadow[((x_870 + 1i) / 4i)][((x_873 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_867.y, x_867.y, x_867.y, x_867.y) * x_877);
      let x_879 : i32 = u_xlati44;
      let x_881 : i32 = u_xlati44;
      let x_884 : vec4<f32> = x_342.x_AdditionalLightsWorldToShadow[(x_879 / 4i)][(x_881 % 4i)];
      let x_885 : vec3<f32> = vs_TEXCOORD1;
      let x_888 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_884 * vec4<f32>(x_885.x, x_885.x, x_885.x, x_885.x)) + x_888);
      let x_890 : i32 = u_xlati44;
      let x_893 : i32 = u_xlati44;
      let x_897 : vec4<f32> = x_342.x_AdditionalLightsWorldToShadow[((x_890 + 2i) / 4i)][((x_893 + 2i) % 4i)];
      let x_898 : vec3<f32> = vs_TEXCOORD1;
      let x_901 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_897 * vec4<f32>(x_898.z, x_898.z, x_898.z, x_898.z)) + x_901);
      let x_903 : vec4<f32> = u_xlat11;
      let x_904 : i32 = u_xlati44;
      let x_907 : i32 = u_xlati44;
      let x_911 : vec4<f32> = x_342.x_AdditionalLightsWorldToShadow[((x_904 + 3i) / 4i)][((x_907 + 3i) % 4i)];
      u_xlat11 = (x_903 + x_911);
      let x_913 : vec4<f32> = u_xlat11;
      let x_915 : vec4<f32> = u_xlat11;
      let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) / vec3<f32>(x_915.w, x_915.w, x_915.w));
      let x_918 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
      let x_921 : vec4<f32> = u_xlat11;
      let x_922 : vec2<f32> = vec2<f32>(x_921.x, x_921.y);
      let x_924 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_922.x, x_922.y, x_924);
      let x_932 : vec3<f32> = txVec1;
      let x_934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
      u_xlat44 = x_934;
      let x_935 : i32 = u_xlati29;
      let x_937 : f32 = x_342.x_AdditionalShadowParams[x_935].x;
      u_xlat45 = (1.0f + -(x_937));
      let x_940 : f32 = u_xlat44;
      let x_941 : i32 = u_xlati29;
      let x_943 : f32 = x_342.x_AdditionalShadowParams[x_941].x;
      let x_945 : f32 = u_xlat45;
      u_xlat44 = ((x_940 * x_943) + x_945);
      let x_948 : f32 = u_xlat11.z;
      u_xlatb45 = (0.0f >= x_948);
      let x_952 : f32 = u_xlat11.z;
      u_xlatb46 = (x_952 >= 1.0f);
      let x_954 : bool = u_xlatb45;
      let x_955 : bool = u_xlatb46;
      u_xlatb45 = (x_954 | x_955);
      let x_957 : bool = u_xlatb45;
      let x_958 : f32 = u_xlat44;
      u_xlat44 = select(x_958, 1.0f, x_957);
    } else {
      u_xlat44 = 1.0f;
    }
    let x_961 : f32 = u_xlat44;
    u_xlat45 = (-(x_961) + 1.0f);
    let x_964 : f32 = u_xlat39;
    let x_965 : f32 = u_xlat45;
    let x_967 : f32 = u_xlat44;
    u_xlat44 = ((x_964 * x_965) + x_967);
    let x_969 : f32 = u_xlat41;
    let x_970 : f32 = u_xlat44;
    u_xlat41 = (x_969 * x_970);
    let x_972 : vec4<f32> = u_xlat3;
    let x_974 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_972.x, x_972.y, x_972.z), x_974);
    let x_976 : f32 = u_xlat44;
    u_xlat44 = clamp(x_976, 0.0f, 1.0f);
    let x_978 : f32 = u_xlat41;
    let x_979 : f32 = u_xlat44;
    u_xlat41 = (x_978 * x_979);
    let x_981 : f32 = u_xlat41;
    let x_983 : i32 = u_xlati29;
    let x_985 : vec4<f32> = x_705.x_AdditionalLightsColor[x_983];
    let x_987 : vec3<f32> = (vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_985.x, x_985.y, x_985.z));
    let x_988 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
    let x_990 : vec3<f32> = u_xlat9;
    let x_991 : f32 = u_xlat42;
    let x_994 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_990 * vec3<f32>(x_991, x_991, x_991)) + x_994);
    let x_996 : vec3<f32> = u_xlat9;
    let x_997 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(x_996, x_997);
    let x_1001 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_1001, 1.17549435e-38f);
    let x_1005 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_1005);
    let x_1008 : vec2<f32> = u_xlat29;
    let x_1010 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1008.x, x_1008.x, x_1008.x) * x_1010);
    let x_1012 : vec4<f32> = u_xlat3;
    let x_1014 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), x_1014);
    let x_1018 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_1018, 0.0f, 1.0f);
    let x_1021 : vec3<f32> = u_xlat10;
    let x_1022 : vec3<f32> = u_xlat9;
    u_xlat29.y = dot(x_1021, x_1022);
    let x_1026 : f32 = u_xlat29.y;
    u_xlat29.y = clamp(x_1026, 0.0f, 1.0f);
    let x_1029 : vec2<f32> = u_xlat29;
    let x_1030 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1029 * x_1030);
    let x_1033 : f32 = u_xlat29.x;
    let x_1035 : f32 = u_xlat7.x;
    u_xlat29.x = ((x_1033 * x_1035) + 1.00001001358032226562f);
    let x_1040 : f32 = u_xlat29.x;
    let x_1042 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1040 * x_1042);
    let x_1046 : f32 = u_xlat29.y;
    u_xlat41 = max(x_1046, 0.10000000149011611938f);
    let x_1048 : f32 = u_xlat41;
    let x_1050 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1048 * x_1050);
    let x_1053 : f32 = u_xlat17;
    let x_1055 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1053 * x_1055);
    let x_1059 : f32 = u_xlat5.x;
    let x_1061 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1059 / x_1061);
    let x_1064 : vec4<f32> = u_xlat0;
    let x_1066 : vec2<f32> = u_xlat29;
    let x_1069 : vec3<f32> = u_xlat13;
    u_xlat9 = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066.x, x_1066.x, x_1066.x)) + x_1069);
    let x_1071 : vec3<f32> = u_xlat9;
    let x_1072 : vec4<f32> = u_xlat11;
    let x_1075 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1071 * vec3<f32>(x_1072.x, x_1072.y, x_1072.z)) + x_1075);

    continuing {
      let x_1077 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1077 + bitcast<u32>(1i));
    }
  }
  let x_1079 : vec3<f32> = u_xlat19;
  let x_1080 : vec3<f32> = u_xlat6;
  let x_1082 : vec3<f32> = u_xlat4;
  let x_1083 : vec3<f32> = ((x_1079 * x_1080) + x_1082);
  let x_1084 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec3<f32> = u_xlat8;
  let x_1087 : vec4<f32> = u_xlat0;
  let x_1089 : vec3<f32> = (x_1086 + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : f32 = u_xlat36;
  let x_1093 : f32 = u_xlat36;
  u_xlat36 = (x_1092 * -(x_1093));
  let x_1096 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1096);
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1101 : vec4<f32> = x_28.unity_FogColor;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) + -(vec3<f32>(x_1101.x, x_1101.y, x_1101.z)));
  let x_1105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1109 : f32 = u_xlat36;
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1115 : vec4<f32> = x_28.unity_FogColor;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1109, x_1109, x_1109) * vec3<f32>(x_1111.x, x_1111.y, x_1111.z)) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1122 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1122 == 1.0f);
  let x_1124 : bool = u_xlatb0;
  if (x_1124) {
    let x_1129 : f32 = u_xlat1.x;
    x_1125 = x_1129;
  } else {
    x_1125 = 1.0f;
  }
  let x_1131 : f32 = x_1125;
  SV_Target0.w = x_1131;
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


