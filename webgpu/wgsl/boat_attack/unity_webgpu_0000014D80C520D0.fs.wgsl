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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb36 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(4) var<uniform> x_289 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_422 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_658 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_83 : f32;
  var x_96 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_315 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_805 : f32;
  var x_816 : f32;
  var txVec1 : vec3<f32>;
  var x_933 : f32;
  var x_1078 : f32;
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
  let x_81 : bool = u_xlatb36;
  if (x_81) {
    let x_87 : f32 = u_xlat2.x;
    x_83 = x_87;
  } else {
    let x_92 : f32 = x_28.unity_MatrixV[0i].z;
    x_83 = x_92;
  }
  let x_93 : f32 = x_83;
  u_xlat3.x = x_93;
  let x_95 : bool = u_xlatb36;
  if (x_95) {
    let x_101 : f32 = u_xlat2.y;
    x_96 = x_101;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_96 = x_105;
  }
  let x_106 : f32 = x_96;
  u_xlat3.y = x_106;
  let x_108 : bool = u_xlatb36;
  if (x_108) {
    let x_113 : f32 = u_xlat2.z;
    x_109 = x_113;
  } else {
    let x_116 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_116;
  }
  let x_117 : f32 = x_109;
  u_xlat3.z = x_117;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat36;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_137 : vec2<f32> = vs_TEXCOORD8;
  let x_139 : f32 = x_28.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_137, x_139);
  u_xlat4 = x_140;
  let x_146 : vec2<f32> = vs_TEXCOORD8;
  let x_148 : f32 = x_28.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_146, x_148);
  u_xlat5 = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_158, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : f32 = u_xlat36;
  u_xlat36 = (x_162 + 0.5f);
  let x_165 : f32 = u_xlat36;
  let x_167 : vec3<f32> = u_xlat5;
  let x_168 : vec3<f32> = (vec3<f32>(x_165, x_165, x_165) * x_167);
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat4.w;
  u_xlat36 = max(x_172, 0.00009999999747378752f);
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : f32 = u_xlat36;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) / vec3<f32>(x_177, x_177, x_177));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = x_42.x_Metallic;
  u_xlat36 = ((-(x_184) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_189 : f32 = u_xlat36;
  let x_192 : f32 = x_42.x_Smoothness;
  u_xlat38 = (-(x_189) + x_192);
  let x_195 : f32 = u_xlat36;
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.y, x_197.z, x_197.w));
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_42.x_BaseColor;
  let x_208 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : f32 = x_42.x_Metallic;
  let x_214 : f32 = x_42.x_Metallic;
  let x_216 : f32 = x_42.x_Metallic;
  let x_217 : vec3<f32> = vec3<f32>(x_212, x_214, x_216);
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat36 = (-(x_231) + 1.0f);
  let x_236 : f32 = u_xlat36;
  let x_237 : f32 = u_xlat36;
  u_xlat39 = (x_236 * x_237);
  let x_239 : f32 = u_xlat39;
  u_xlat39 = max(x_239, 0.0078125f);
  let x_243 : f32 = u_xlat39;
  let x_244 : f32 = u_xlat39;
  u_xlat40 = (x_243 * x_244);
  let x_246 : f32 = u_xlat38;
  u_xlat38 = (x_246 + 1.0f);
  let x_248 : f32 = u_xlat38;
  u_xlat38 = clamp(x_248, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat39;
  u_xlat5.x = ((x_250 * 4.0f) + 2.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD6;
  let x_261 : vec2<f32> = vec2<f32>(x_260.x, x_260.y);
  let x_264 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_261.x, x_261.y, x_264);
  let x_277 : vec3<f32> = txVec0;
  let x_279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_277.xy, x_277.z);
  u_xlat17.x = x_279;
  let x_292 : f32 = x_289.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_292) + 1.0f);
  let x_296 : f32 = u_xlat17.x;
  let x_298 : f32 = x_289.x_MainLightShadowParams.x;
  let x_300 : f32 = u_xlat29;
  u_xlat17.x = ((x_296 * x_298) + x_300);
  let x_305 : f32 = vs_TEXCOORD6.z;
  u_xlatb29 = (0.0f >= x_305);
  let x_309 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (x_309 >= 1.0f);
  let x_311 : bool = u_xlatb41;
  let x_312 : bool = u_xlatb29;
  u_xlatb29 = (x_311 | x_312);
  let x_314 : bool = u_xlatb29;
  if (x_314) {
    x_315 = 1.0f;
  } else {
    let x_320 : f32 = u_xlat17.x;
    x_315 = x_320;
  }
  let x_321 : f32 = x_315;
  u_xlat17.x = x_321;
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_328 : vec3<f32> = (x_324 + -(x_326));
  let x_329 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : f32 = u_xlat29;
  let x_339 : f32 = x_289.x_MainLightShadowParams.z;
  let x_342 : f32 = x_289.x_MainLightShadowParams.w;
  u_xlat41 = ((x_337 * x_339) + x_342);
  let x_344 : f32 = u_xlat41;
  u_xlat41 = clamp(x_344, 0.0f, 1.0f);
  let x_347 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat41;
  let x_353 : f32 = u_xlat6.x;
  let x_356 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_351 * x_353) + x_356);
  let x_359 : vec3<f32> = u_xlat3;
  let x_361 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(-(x_359), x_361);
  let x_363 : f32 = u_xlat41;
  let x_364 : f32 = u_xlat41;
  u_xlat41 = (x_363 + x_364);
  let x_366 : vec3<f32> = u_xlat2;
  let x_367 : f32 = u_xlat41;
  let x_371 : vec3<f32> = u_xlat3;
  let x_373 : vec3<f32> = ((x_366 * -(vec3<f32>(x_367, x_367, x_367))) + -(x_371));
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec3<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat3;
  u_xlat41 = dot(x_376, x_377);
  let x_379 : f32 = u_xlat41;
  u_xlat41 = clamp(x_379, 0.0f, 1.0f);
  let x_381 : f32 = u_xlat41;
  u_xlat41 = (-(x_381) + 1.0f);
  let x_384 : f32 = u_xlat41;
  let x_385 : f32 = u_xlat41;
  u_xlat41 = (x_384 * x_385);
  let x_387 : f32 = u_xlat41;
  let x_388 : f32 = u_xlat41;
  u_xlat41 = (x_387 * x_388);
  let x_391 : f32 = u_xlat36;
  u_xlat42 = ((-(x_391) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_397 : f32 = u_xlat36;
  let x_398 : f32 = u_xlat42;
  u_xlat36 = (x_397 * x_398);
  let x_400 : f32 = u_xlat36;
  u_xlat36 = (x_400 * 6.0f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_413 : f32 = u_xlat36;
  let x_414 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_411.x, x_411.y, x_411.z), x_413);
  u_xlat6 = x_414;
  let x_416 : f32 = u_xlat6.w;
  u_xlat36 = (x_416 + -1.0f);
  let x_424 : f32 = x_422.unity_SpecCube0_HDR.w;
  let x_425 : f32 = u_xlat36;
  u_xlat36 = ((x_424 * x_425) + 1.0f);
  let x_428 : f32 = u_xlat36;
  u_xlat36 = max(x_428, 0.0f);
  let x_430 : f32 = u_xlat36;
  u_xlat36 = log2(x_430);
  let x_432 : f32 = u_xlat36;
  let x_434 : f32 = x_422.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_432 * x_434);
  let x_436 : f32 = u_xlat36;
  u_xlat36 = exp2(x_436);
  let x_438 : f32 = u_xlat36;
  let x_440 : f32 = x_422.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_438 * x_440);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : f32 = u_xlat36;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : f32 = u_xlat39;
  let x_453 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_451, x_451) * vec2<f32>(x_453, x_453)) + vec2<f32>(-1.0f, 1.0f));
  let x_459 : f32 = u_xlat7.y;
  u_xlat36 = (1.0f / x_459);
  let x_462 : vec4<f32> = u_xlat0;
  let x_465 : f32 = u_xlat38;
  u_xlat19 = (-(vec3<f32>(x_462.x, x_462.y, x_462.z)) + vec3<f32>(x_465, x_465, x_465));
  let x_468 : f32 = u_xlat41;
  let x_470 : vec3<f32> = u_xlat19;
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_468, x_468, x_468) * x_470) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : f32 = u_xlat36;
  let x_477 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_475, x_475, x_475) * x_477);
  let x_479 : vec4<f32> = u_xlat6;
  let x_481 : vec3<f32> = u_xlat19;
  let x_482 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * x_481);
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat4;
  let x_487 : vec3<f32> = u_xlat13;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * x_487) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat17.x;
  let x_497 : f32 = x_422.unity_LightData.z;
  u_xlat36 = (x_495 * x_497);
  let x_499 : vec3<f32> = u_xlat2;
  let x_501 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat38 = dot(x_499, vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : f32 = u_xlat38;
  u_xlat38 = clamp(x_504, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat36;
  let x_507 : f32 = u_xlat38;
  u_xlat36 = (x_506 * x_507);
  let x_509 : f32 = u_xlat36;
  let x_512 : vec4<f32> = x_28.x_MainLightColor;
  let x_514 : vec3<f32> = (vec3<f32>(x_509, x_509, x_509) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec3<f32> = u_xlat3;
  let x_519 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_517 + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec3<f32> = u_xlat19;
  let x_523 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_522, x_523);
  let x_525 : f32 = u_xlat36;
  u_xlat36 = max(x_525, 1.17549435e-38f);
  let x_528 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_528);
  let x_530 : f32 = u_xlat36;
  let x_532 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_530, x_530, x_530) * x_532);
  let x_534 : vec3<f32> = u_xlat2;
  let x_535 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_534, x_535);
  let x_537 : f32 = u_xlat36;
  u_xlat36 = clamp(x_537, 0.0f, 1.0f);
  let x_540 : vec4<f32> = x_28.x_MainLightPosition;
  let x_542 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), x_542);
  let x_544 : f32 = u_xlat38;
  u_xlat38 = clamp(x_544, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat36;
  let x_547 : f32 = u_xlat36;
  u_xlat36 = (x_546 * x_547);
  let x_549 : f32 = u_xlat36;
  let x_551 : f32 = u_xlat7.x;
  u_xlat36 = ((x_549 * x_551) + 1.00001001358032226562f);
  let x_555 : f32 = u_xlat38;
  let x_556 : f32 = u_xlat38;
  u_xlat38 = (x_555 * x_556);
  let x_558 : f32 = u_xlat36;
  let x_559 : f32 = u_xlat36;
  u_xlat36 = (x_558 * x_559);
  let x_561 : f32 = u_xlat38;
  u_xlat38 = max(x_561, 0.10000000149011611938f);
  let x_564 : f32 = u_xlat36;
  let x_565 : f32 = u_xlat38;
  u_xlat36 = (x_564 * x_565);
  let x_568 : f32 = u_xlat5.x;
  let x_569 : f32 = u_xlat36;
  u_xlat36 = (x_568 * x_569);
  let x_571 : f32 = u_xlat40;
  let x_572 : f32 = u_xlat36;
  u_xlat36 = (x_571 / x_572);
  let x_574 : vec4<f32> = u_xlat0;
  let x_576 : f32 = u_xlat36;
  let x_579 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576, x_576, x_576)) + x_579);
  let x_583 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_585 : f32 = x_422.unity_LightData.y;
  u_xlat36 = min(x_583, x_585);
  let x_589 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_589));
  let x_592 : f32 = u_xlat29;
  let x_595 : f32 = x_289.x_AdditionalShadowFadeParams.x;
  let x_598 : f32 = x_289.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_592 * x_595) + x_598);
  let x_600 : f32 = u_xlat38;
  u_xlat38 = clamp(x_600, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_612 : u32 = u_xlatu_loop_1;
    let x_613 : u32 = u_xlatu36;
    if ((x_612 < x_613)) {
    } else {
      break;
    }
    let x_616 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_616 >> 2u);
    let x_620 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_620 & 3u));
    let x_623 : u32 = u_xlatu42;
    let x_626 : vec4<f32> = x_422.unity_LightIndices[bitcast<i32>(x_623)];
    let x_636 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_641 : vec4<u32> = indexable[x_636];
    u_xlat42 = dot(x_626, bitcast<vec4<f32>>(x_641));
    let x_645 : f32 = u_xlat42;
    u_xlati42 = i32(x_645);
    let x_648 : vec3<f32> = vs_TEXCOORD1;
    let x_659 : i32 = u_xlati42;
    let x_661 : vec4<f32> = x_658.x_AdditionalLightsPosition[x_659];
    let x_664 : i32 = u_xlati42;
    let x_666 : vec4<f32> = x_658.x_AdditionalLightsPosition[x_664];
    u_xlat8 = ((-(x_648) * vec3<f32>(x_661.w, x_661.w, x_661.w)) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_670 : vec3<f32> = u_xlat8;
    let x_671 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_670, x_671);
    let x_673 : f32 = u_xlat44;
    u_xlat44 = max(x_673, 0.00006103515625f);
    let x_677 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_677);
    let x_680 : vec3<f32> = u_xlat8;
    let x_681 : f32 = u_xlat9;
    u_xlat21 = (x_680 * vec3<f32>(x_681, x_681, x_681));
    let x_685 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_685);
    let x_688 : f32 = u_xlat44;
    let x_689 : i32 = u_xlati42;
    let x_691 : f32 = x_658.x_AdditionalLightsAttenuation[x_689].x;
    u_xlat44 = (x_688 * x_691);
    let x_693 : f32 = u_xlat44;
    let x_695 : f32 = u_xlat44;
    u_xlat44 = ((-(x_693) * x_695) + 1.0f);
    let x_698 : f32 = u_xlat44;
    u_xlat44 = max(x_698, 0.0f);
    let x_700 : f32 = u_xlat44;
    let x_701 : f32 = u_xlat44;
    u_xlat44 = (x_700 * x_701);
    let x_703 : f32 = u_xlat44;
    let x_705 : f32 = u_xlat10.x;
    u_xlat44 = (x_703 * x_705);
    let x_707 : i32 = u_xlati42;
    let x_709 : vec4<f32> = x_658.x_AdditionalLightsSpotDir[x_707];
    let x_711 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), x_711);
    let x_715 : f32 = u_xlat10.x;
    let x_716 : i32 = u_xlati42;
    let x_718 : f32 = x_658.x_AdditionalLightsAttenuation[x_716].z;
    let x_720 : i32 = u_xlati42;
    let x_722 : f32 = x_658.x_AdditionalLightsAttenuation[x_720].w;
    u_xlat10.x = ((x_715 * x_718) + x_722);
    let x_726 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_726, 0.0f, 1.0f);
    let x_730 : f32 = u_xlat10.x;
    let x_732 : f32 = u_xlat10.x;
    u_xlat10.x = (x_730 * x_732);
    let x_735 : f32 = u_xlat44;
    let x_737 : f32 = u_xlat10.x;
    u_xlat44 = (x_735 * x_737);
    let x_741 : i32 = u_xlati42;
    let x_743 : f32 = x_289.x_AdditionalShadowParams[x_741].w;
    u_xlati10 = i32(x_743);
    let x_748 : i32 = u_xlati10;
    u_xlatb22.x = (x_748 >= 0i);
    let x_752 : bool = u_xlatb22.x;
    if (x_752) {
      let x_756 : i32 = u_xlati42;
      let x_758 : f32 = x_289.x_AdditionalShadowParams[x_756].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_758, x_758, x_758, x_758))));
      let x_765 : bool = u_xlatb22.x;
      if (x_765) {
        let x_768 : vec3<f32> = u_xlat21;
        let x_771 : vec3<f32> = u_xlat21;
        let x_774 : vec4<bool> = (abs(vec4<f32>(x_768.z, x_768.z, x_768.y, x_768.y)) >= abs(vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.x)));
        u_xlatb22 = vec3<bool>(x_774.x, x_774.y, x_774.z);
        let x_777 : bool = u_xlatb22.y;
        let x_779 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_777 & x_779);
        let x_783 : vec3<f32> = u_xlat21;
        let x_786 : vec4<bool> = (-(vec4<f32>(x_783.z, x_783.y, x_783.x, x_783.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_786.x, x_786.y, x_786.z);
        let x_790 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_790);
        let x_795 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_795);
        let x_801 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_801);
        let x_804 : bool = u_xlatb22.z;
        if (x_804) {
          let x_809 : f32 = u_xlat11.y;
          x_805 = x_809;
        } else {
          let x_811 : f32 = u_xlat34;
          x_805 = x_811;
        }
        let x_812 : f32 = x_805;
        u_xlat34 = x_812;
        let x_815 : bool = u_xlatb22.x;
        if (x_815) {
          let x_820 : f32 = u_xlat11.x;
          x_816 = x_820;
        } else {
          let x_822 : f32 = u_xlat34;
          x_816 = x_822;
        }
        let x_823 : f32 = x_816;
        u_xlat22 = x_823;
        let x_824 : i32 = u_xlati42;
        let x_826 : f32 = x_289.x_AdditionalShadowParams[x_824].w;
        u_xlat34 = trunc(x_826);
        let x_828 : f32 = u_xlat22;
        let x_829 : f32 = u_xlat34;
        u_xlat22 = (x_828 + x_829);
        let x_831 : f32 = u_xlat22;
        u_xlati10 = i32(x_831);
      }
      let x_833 : i32 = u_xlati10;
      u_xlati10 = (x_833 << bitcast<u32>(2i));
      let x_835 : vec3<f32> = vs_TEXCOORD1;
      let x_838 : i32 = u_xlati10;
      let x_841 : i32 = u_xlati10;
      let x_845 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_838 + 1i) / 4i)][((x_841 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_835.y, x_835.y, x_835.y, x_835.y) * x_845);
      let x_847 : i32 = u_xlati10;
      let x_849 : i32 = u_xlati10;
      let x_852 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[(x_847 / 4i)][(x_849 % 4i)];
      let x_853 : vec3<f32> = vs_TEXCOORD1;
      let x_856 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_852 * vec4<f32>(x_853.x, x_853.x, x_853.x, x_853.x)) + x_856);
      let x_858 : i32 = u_xlati10;
      let x_861 : i32 = u_xlati10;
      let x_865 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_858 + 2i) / 4i)][((x_861 + 2i) % 4i)];
      let x_866 : vec3<f32> = vs_TEXCOORD1;
      let x_869 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_865 * vec4<f32>(x_866.z, x_866.z, x_866.z, x_866.z)) + x_869);
      let x_871 : vec4<f32> = u_xlat11;
      let x_872 : i32 = u_xlati10;
      let x_875 : i32 = u_xlati10;
      let x_879 : vec4<f32> = x_289.x_AdditionalLightsWorldToShadow[((x_872 + 3i) / 4i)][((x_875 + 3i) % 4i)];
      u_xlat10 = (x_871 + x_879);
      let x_881 : vec4<f32> = u_xlat10;
      let x_883 : vec4<f32> = u_xlat10;
      let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883.w, x_883.w, x_883.w));
      let x_886 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
      let x_889 : vec4<f32> = u_xlat10;
      let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
      let x_892 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_890.x, x_890.y, x_892);
      let x_900 : vec3<f32> = txVec1;
      let x_902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
      u_xlat10.x = x_902;
      let x_904 : i32 = u_xlati42;
      let x_906 : f32 = x_289.x_AdditionalShadowParams[x_904].x;
      u_xlat22 = (1.0f + -(x_906));
      let x_910 : f32 = u_xlat10.x;
      let x_911 : i32 = u_xlati42;
      let x_913 : f32 = x_289.x_AdditionalShadowParams[x_911].x;
      let x_915 : f32 = u_xlat22;
      u_xlat10.x = ((x_910 * x_913) + x_915);
      let x_919 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_919);
      let x_924 : f32 = u_xlat10.z;
      u_xlatb34 = (x_924 >= 1.0f);
      let x_926 : bool = u_xlatb34;
      let x_928 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_926 | x_928);
      let x_932 : bool = u_xlatb22.x;
      if (x_932) {
        x_933 = 1.0f;
      } else {
        let x_938 : f32 = u_xlat10.x;
        x_933 = x_938;
      }
      let x_939 : f32 = x_933;
      u_xlat10.x = x_939;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_944 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_944) + 1.0f);
    let x_947 : f32 = u_xlat38;
    let x_948 : f32 = u_xlat22;
    let x_951 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_947 * x_948) + x_951);
    let x_954 : f32 = u_xlat44;
    let x_956 : f32 = u_xlat10.x;
    u_xlat44 = (x_954 * x_956);
    let x_958 : vec3<f32> = u_xlat2;
    let x_959 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_958, x_959);
    let x_963 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_963, 0.0f, 1.0f);
    let x_966 : f32 = u_xlat44;
    let x_968 : f32 = u_xlat10.x;
    u_xlat44 = (x_966 * x_968);
    let x_970 : f32 = u_xlat44;
    let x_972 : i32 = u_xlati42;
    let x_974 : vec4<f32> = x_658.x_AdditionalLightsColor[x_972];
    let x_976 : vec3<f32> = (vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_977 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
    let x_979 : vec3<f32> = u_xlat8;
    let x_980 : f32 = u_xlat9;
    let x_983 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_979 * vec3<f32>(x_980, x_980, x_980)) + x_983);
    let x_985 : vec3<f32> = u_xlat8;
    let x_986 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_985, x_986);
    let x_988 : f32 = u_xlat42;
    u_xlat42 = max(x_988, 1.17549435e-38f);
    let x_990 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_990);
    let x_992 : f32 = u_xlat42;
    let x_994 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_992, x_992, x_992) * x_994);
    let x_996 : vec3<f32> = u_xlat2;
    let x_997 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_996, x_997);
    let x_999 : f32 = u_xlat42;
    u_xlat42 = clamp(x_999, 0.0f, 1.0f);
    let x_1001 : vec3<f32> = u_xlat21;
    let x_1002 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1001, x_1002);
    let x_1006 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1006, 0.0f, 1.0f);
    let x_1009 : f32 = u_xlat42;
    let x_1010 : f32 = u_xlat42;
    u_xlat42 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat42;
    let x_1014 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1012 * x_1014) + 1.00001001358032226562f);
    let x_1018 : f32 = u_xlat8.x;
    let x_1020 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1018 * x_1020);
    let x_1023 : f32 = u_xlat42;
    let x_1024 : f32 = u_xlat42;
    u_xlat42 = (x_1023 * x_1024);
    let x_1027 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1027, 0.10000000149011611938f);
    let x_1030 : f32 = u_xlat42;
    let x_1032 : f32 = u_xlat8.x;
    u_xlat42 = (x_1030 * x_1032);
    let x_1035 : f32 = u_xlat5.x;
    let x_1036 : f32 = u_xlat42;
    u_xlat42 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat40;
    let x_1039 : f32 = u_xlat42;
    u_xlat42 = (x_1038 / x_1039);
    let x_1041 : vec4<f32> = u_xlat0;
    let x_1043 : f32 = u_xlat42;
    let x_1046 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1041.x, x_1041.y, x_1041.z) * vec3<f32>(x_1043, x_1043, x_1043)) + x_1046);
    let x_1048 : vec3<f32> = u_xlat8;
    let x_1049 : vec4<f32> = u_xlat10;
    let x_1052 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1048 * vec3<f32>(x_1049.x, x_1049.y, x_1049.z)) + x_1052);

    continuing {
      let x_1054 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1054 + bitcast<u32>(1i));
    }
  }
  let x_1056 : vec3<f32> = u_xlat19;
  let x_1057 : vec4<f32> = u_xlat6;
  let x_1060 : vec4<f32> = u_xlat4;
  let x_1062 : vec3<f32> = ((x_1056 * vec3<f32>(x_1057.x, x_1057.y, x_1057.z)) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1067 : vec3<f32> = u_xlat17;
  let x_1068 : vec4<f32> = u_xlat0;
  let x_1070 : vec3<f32> = (x_1067 + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1075 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1075 == 1.0f);
  let x_1077 : bool = u_xlatb0;
  if (x_1077) {
    let x_1082 : f32 = u_xlat1.x;
    x_1078 = x_1082;
  } else {
    x_1078 = 1.0f;
  }
  let x_1084 : f32 = x_1078;
  SV_Target0.w = x_1084;
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


