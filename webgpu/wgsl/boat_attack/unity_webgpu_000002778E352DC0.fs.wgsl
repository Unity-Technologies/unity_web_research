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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb27 : bool;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb15 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_520 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu13 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_931 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu41 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_192 : f32;
  var x_262 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1073 : f32;
  var x_1084 : f32;
  var txVec1 : vec3<f32>;
  var x_1390 : f32;
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
  u_xlat25 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat25;
  let x_108 : vec2<f32> = u_xlat25;
  u_xlat36 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat36;
  u_xlat36 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat36;
  u_xlat36 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_115);
  let x_117 : f32 = u_xlat36;
  u_xlat36 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat25;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat25 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat15.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_45.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat15;
  let x_175 : f32 = x_45.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat15.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb27 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb27;
  if (x_190) {
    let x_196 : f32 = u_xlat15.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat15.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat15.x = x_203;
  let x_206 : f32 = u_xlat15.x;
  let x_209 : f32 = x_185.unity_LODFade.x;
  u_xlat15.x = (-(x_206) + x_209);
  let x_214 : f32 = u_xlat15.x;
  u_xlatb15 = (x_214 < 0.0f);
  let x_216 : bool = u_xlatb15;
  if (((select(0i, 1i, x_216) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb15 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_232) + x_237);
  let x_240 : vec3<f32> = u_xlat4;
  let x_241 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat27;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_245, x_245, x_245) * x_247);
  let x_252 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_252;
  let x_255 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_255;
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_258;
  let x_260 : bool = u_xlatb15;
  if (x_260) {
    let x_265 : vec3<f32> = u_xlat4;
    x_262 = x_265;
  } else {
    let x_267 : vec4<f32> = u_xlat5;
    x_262 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  }
  let x_269 : vec3<f32> = x_262;
  u_xlat15 = x_269;
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
  let x_289 : vec2<f32> = u_xlat25;
  let x_291 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec2<f32> = u_xlat25;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + x_298);
  let x_300 : f32 = u_xlat36;
  let x_302 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_300, x_300, x_300) * x_302) + x_304);
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat36 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_309);
  let x_311 : f32 = u_xlat36;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_316 : f32 = vs_TEXCOORD1.y;
  let x_318 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_316 * x_318);
  let x_321 : f32 = x_45.unity_MatrixV[0i].z;
  let x_323 : f32 = vs_TEXCOORD1.x;
  let x_325 : f32 = u_xlat36;
  u_xlat36 = ((x_321 * x_323) + x_325);
  let x_328 : f32 = x_45.unity_MatrixV[2i].z;
  let x_330 : f32 = vs_TEXCOORD1.z;
  let x_332 : f32 = u_xlat36;
  u_xlat36 = ((x_328 * x_330) + x_332);
  let x_334 : f32 = u_xlat36;
  let x_337 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_334 + x_337);
  let x_339 : f32 = u_xlat36;
  let x_343 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_339) + -(x_343));
  let x_346 : f32 = u_xlat36;
  u_xlat36 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat36;
  let x_351 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_348 * x_351);
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
  u_xlat25.x = dot(x_380, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_386 : f32 = u_xlat25.x;
  u_xlat25.x = (x_386 + 0.5f);
  let x_390 : vec2<f32> = u_xlat25;
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * x_392);
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat5.w;
  u_xlat25.x = max(x_397, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec2<f32> = u_xlat25;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403.x, x_403.x, x_403.x));
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_409) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_417 : f32 = u_xlat1.y;
  let x_419 : f32 = x_70.x_Smoothness;
  let x_422 : f32 = u_xlat25.x;
  u_xlat37 = ((x_417 * x_419) + -(x_422));
  let x_426 : vec2<f32> = u_xlat25;
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.y, x_428.z, x_428.w));
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
  u_xlat13.x = (x_462 * x_464);
  let x_468 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_468, 0.0078125f);
  let x_473 : f32 = u_xlat13.x;
  let x_475 : f32 = u_xlat13.x;
  u_xlat25.x = (x_473 * x_475);
  let x_478 : f32 = u_xlat37;
  u_xlat37 = (x_478 + 1.0f);
  let x_480 : f32 = u_xlat37;
  u_xlat37 = clamp(x_480, 0.0f, 1.0f);
  let x_484 : f32 = u_xlat13.x;
  u_xlat40 = ((x_484 * 4.0f) + 2.0f);
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_489, 1.0f);
  let x_494 : vec4<f32> = vs_TEXCOORD6;
  let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
  let x_497 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_495.x, x_495.y, x_497);
  let x_510 : vec3<f32> = txVec0;
  let x_512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_510.xy, x_510.z);
  u_xlat41 = x_512;
  let x_522 : f32 = x_520.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_522) + 1.0f);
  let x_526 : f32 = u_xlat41;
  let x_528 : f32 = x_520.x_MainLightShadowParams.x;
  let x_531 : f32 = u_xlat6.x;
  u_xlat41 = ((x_526 * x_528) + x_531);
  let x_535 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_535);
  let x_539 : f32 = vs_TEXCOORD6.z;
  u_xlatb18 = (x_539 >= 1.0f);
  let x_541 : bool = u_xlatb18;
  let x_542 : bool = u_xlatb6;
  u_xlatb6 = (x_541 | x_542);
  let x_544 : bool = u_xlatb6;
  let x_545 : f32 = u_xlat41;
  u_xlat41 = select(x_545, 1.0f, x_544);
  let x_547 : vec3<f32> = vs_TEXCOORD1;
  let x_549 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_547 + -(x_549));
  let x_552 : vec3<f32> = u_xlat6;
  let x_553 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_552, x_553);
  let x_558 : f32 = u_xlat6.x;
  let x_560 : f32 = x_520.x_MainLightShadowParams.z;
  let x_563 : f32 = x_520.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_558 * x_560) + x_563);
  let x_567 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_567, 0.0f, 1.0f);
  let x_571 : f32 = u_xlat41;
  u_xlat30 = (-(x_571) + 1.0f);
  let x_575 : f32 = u_xlat18.x;
  let x_576 : f32 = u_xlat30;
  let x_578 : f32 = u_xlat41;
  u_xlat41 = ((x_575 * x_576) + x_578);
  let x_580 : vec3<f32> = u_xlat15;
  let x_582 : vec3<f32> = u_xlat4;
  u_xlat18.x = dot(-(x_580), x_582);
  let x_586 : f32 = u_xlat18.x;
  let x_588 : f32 = u_xlat18.x;
  u_xlat18.x = (x_586 + x_588);
  let x_591 : vec3<f32> = u_xlat4;
  let x_592 : vec3<f32> = u_xlat18;
  let x_596 : vec3<f32> = u_xlat15;
  u_xlat18 = ((x_591 * -(vec3<f32>(x_592.x, x_592.x, x_592.x))) + -(x_596));
  let x_600 : vec3<f32> = u_xlat4;
  let x_601 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_600, x_601);
  let x_605 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_605, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_609) + 1.0f);
  let x_614 : f32 = u_xlat7.x;
  let x_616 : f32 = u_xlat7.x;
  u_xlat7.x = (x_614 * x_616);
  let x_620 : f32 = u_xlat7.x;
  let x_622 : f32 = u_xlat7.x;
  u_xlat7.x = (x_620 * x_622);
  let x_627 : f32 = u_xlat1.x;
  u_xlat19.x = ((-(x_627) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_635 : f32 = u_xlat1.x;
  let x_637 : f32 = u_xlat19.x;
  u_xlat1.x = (x_635 * x_637);
  let x_641 : f32 = u_xlat1.x;
  u_xlat1.x = (x_641 * 6.0f);
  let x_654 : vec3<f32> = u_xlat18;
  let x_656 : f32 = u_xlat1.x;
  let x_657 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_654, x_656);
  u_xlat8 = x_657;
  let x_659 : f32 = u_xlat8.w;
  u_xlat1.x = (x_659 + -1.0f);
  let x_663 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_665 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_663 * x_665) + 1.0f);
  let x_670 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_670, 0.0f);
  let x_674 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_674);
  let x_678 : f32 = u_xlat1.x;
  let x_680 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_678 * x_680);
  let x_684 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_684);
  let x_688 : f32 = u_xlat1.x;
  let x_690 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_688 * x_690);
  let x_693 : vec4<f32> = u_xlat8;
  let x_695 : vec2<f32> = u_xlat1;
  u_xlat18 = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695.x, x_695.x, x_695.x));
  let x_698 : vec3<f32> = u_xlat13;
  let x_700 : vec3<f32> = u_xlat13;
  u_xlat1 = ((vec2<f32>(x_698.x, x_698.x) * vec2<f32>(x_700.x, x_700.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_706 : f32 = u_xlat1.y;
  u_xlat13.x = (1.0f / x_706);
  let x_709 : vec4<f32> = u_xlat0;
  let x_712 : f32 = u_xlat37;
  u_xlat19 = (-(vec3<f32>(x_709.x, x_709.y, x_709.z)) + vec3<f32>(x_712, x_712, x_712));
  let x_715 : vec3<f32> = u_xlat7;
  let x_717 : vec3<f32> = u_xlat19;
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat7 = ((vec3<f32>(x_715.x, x_715.x, x_715.x) * x_717) + vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec3<f32> = u_xlat13;
  let x_724 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_722.x, x_722.x, x_722.x) * x_724);
  let x_726 : vec3<f32> = u_xlat18;
  let x_727 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_726 * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = u_xlat14;
  let x_733 : vec3<f32> = u_xlat18;
  let x_734 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * x_731) + x_733);
  let x_735 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : f32 = u_xlat41;
  let x_739 : f32 = x_185.unity_LightData.z;
  u_xlat13.x = (x_737 * x_739);
  let x_742 : vec3<f32> = u_xlat4;
  let x_744 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat37 = dot(x_742, vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : f32 = u_xlat37;
  u_xlat37 = clamp(x_747, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat37;
  let x_751 : f32 = u_xlat13.x;
  u_xlat13.x = (x_749 * x_751);
  let x_754 : vec3<f32> = u_xlat13;
  let x_757 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_754.x, x_754.x, x_754.x) * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec3<f32> = u_xlat15;
  let x_762 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = (x_760 + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec3<f32> = u_xlat7;
  let x_766 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_765, x_766);
  let x_770 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_770, 1.17549435e-38f);
  let x_775 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_775);
  let x_778 : vec3<f32> = u_xlat13;
  let x_780 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_778.x, x_778.x, x_778.x) * x_780);
  let x_782 : vec3<f32> = u_xlat4;
  let x_783 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_782, x_783);
  let x_787 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_787, 0.0f, 1.0f);
  let x_791 : vec4<f32> = x_45.x_MainLightPosition;
  let x_793 : vec3<f32> = u_xlat7;
  u_xlat13.z = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), x_793);
  let x_797 : f32 = u_xlat13.z;
  u_xlat13.z = clamp(x_797, 0.0f, 1.0f);
  let x_800 : vec3<f32> = u_xlat13;
  let x_802 : vec3<f32> = u_xlat13;
  let x_804 : vec2<f32> = (vec2<f32>(x_800.x, x_800.z) * vec2<f32>(x_802.x, x_802.z));
  let x_805 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_804.x, x_805.y, x_804.y);
  let x_808 : f32 = u_xlat13.x;
  let x_810 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_808 * x_810) + 1.00001001358032226562f);
  let x_816 : f32 = u_xlat13.x;
  let x_818 : f32 = u_xlat13.x;
  u_xlat13.x = (x_816 * x_818);
  let x_822 : f32 = u_xlat13.z;
  u_xlat37 = max(x_822, 0.10000000149011611938f);
  let x_825 : f32 = u_xlat37;
  let x_827 : f32 = u_xlat13.x;
  u_xlat13.x = (x_825 * x_827);
  let x_830 : f32 = u_xlat40;
  let x_832 : f32 = u_xlat13.x;
  u_xlat13.x = (x_830 * x_832);
  let x_836 : f32 = u_xlat25.x;
  let x_838 : f32 = u_xlat13.x;
  u_xlat13.x = (x_836 / x_838);
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = u_xlat13;
  let x_846 : vec3<f32> = u_xlat14;
  u_xlat7 = ((vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843.x, x_843.x, x_843.x)) + x_846);
  let x_848 : vec3<f32> = u_xlat18;
  let x_849 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_848 * x_849);
  let x_852 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_854 : f32 = x_185.unity_LightData.y;
  u_xlat13.x = min(x_852, x_854);
  let x_860 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_860));
  let x_864 : f32 = u_xlat6.x;
  let x_867 : f32 = x_520.x_AdditionalShadowFadeParams.x;
  let x_870 : f32 = x_520.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_864 * x_867) + x_870);
  let x_872 : f32 = u_xlat37;
  u_xlat37 = clamp(x_872, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_884 : u32 = u_xlatu_loop_1;
    let x_885 : u32 = u_xlatu13;
    if ((x_884 < x_885)) {
    } else {
      break;
    }
    let x_888 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_888 >> 2u);
    let x_892 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_892 & 3u));
    let x_895 : u32 = u_xlatu6;
    let x_898 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_895)];
    let x_908 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_913 : vec4<u32> = indexable[x_908];
    u_xlat6.x = dot(x_898, bitcast<vec4<f32>>(x_913));
    let x_919 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_919);
    let x_921 : vec3<f32> = vs_TEXCOORD1;
    let x_932 : i32 = u_xlati6;
    let x_934 : vec4<f32> = x_931.x_AdditionalLightsPosition[x_932];
    let x_937 : i32 = u_xlati6;
    let x_939 : vec4<f32> = x_931.x_AdditionalLightsPosition[x_937];
    let x_941 : vec3<f32> = ((-(x_921) * vec3<f32>(x_934.w, x_934.w, x_934.w)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
    let x_942 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
    let x_945 : vec4<f32> = u_xlat8;
    let x_947 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_945.x, x_945.y, x_945.z), vec3<f32>(x_947.x, x_947.y, x_947.z));
    let x_950 : f32 = u_xlat43;
    u_xlat43 = max(x_950, 0.00006103515625f);
    let x_954 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_954);
    let x_957 : f32 = u_xlat44;
    let x_959 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_957, x_957, x_957) * vec3<f32>(x_959.x, x_959.y, x_959.z));
    let x_963 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_963);
    let x_965 : f32 = u_xlat43;
    let x_966 : i32 = u_xlati6;
    let x_968 : f32 = x_931.x_AdditionalLightsAttenuation[x_966].x;
    u_xlat43 = (x_965 * x_968);
    let x_970 : f32 = u_xlat43;
    let x_972 : f32 = u_xlat43;
    u_xlat43 = ((-(x_970) * x_972) + 1.0f);
    let x_975 : f32 = u_xlat43;
    u_xlat43 = max(x_975, 0.0f);
    let x_977 : f32 = u_xlat43;
    let x_978 : f32 = u_xlat43;
    u_xlat43 = (x_977 * x_978);
    let x_980 : f32 = u_xlat43;
    let x_981 : f32 = u_xlat45;
    u_xlat43 = (x_980 * x_981);
    let x_983 : i32 = u_xlati6;
    let x_985 : vec4<f32> = x_931.x_AdditionalLightsSpotDir[x_983];
    let x_987 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), x_987);
    let x_989 : f32 = u_xlat45;
    let x_990 : i32 = u_xlati6;
    let x_992 : f32 = x_931.x_AdditionalLightsAttenuation[x_990].z;
    let x_994 : i32 = u_xlati6;
    let x_996 : f32 = x_931.x_AdditionalLightsAttenuation[x_994].w;
    u_xlat45 = ((x_989 * x_992) + x_996);
    let x_998 : f32 = u_xlat45;
    u_xlat45 = clamp(x_998, 0.0f, 1.0f);
    let x_1000 : f32 = u_xlat45;
    let x_1001 : f32 = u_xlat45;
    u_xlat45 = (x_1000 * x_1001);
    let x_1003 : f32 = u_xlat43;
    let x_1004 : f32 = u_xlat45;
    u_xlat43 = (x_1003 * x_1004);
    let x_1008 : i32 = u_xlati6;
    let x_1010 : f32 = x_520.x_AdditionalShadowParams[x_1008].w;
    u_xlati45 = i32(x_1010);
    let x_1015 : i32 = u_xlati45;
    u_xlatb10.x = (x_1015 >= 0i);
    let x_1019 : bool = u_xlatb10.x;
    if (x_1019) {
      let x_1023 : i32 = u_xlati6;
      let x_1025 : f32 = x_520.x_AdditionalShadowParams[x_1023].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1025, x_1025, x_1025, x_1025))));
      let x_1032 : bool = u_xlatb10.x;
      if (x_1032) {
        let x_1035 : vec3<f32> = u_xlat9;
        let x_1038 : vec3<f32> = u_xlat9;
        let x_1041 : vec4<bool> = (abs(vec4<f32>(x_1035.z, x_1035.z, x_1035.y, x_1035.z)) >= abs(vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.x)));
        u_xlatb10 = vec3<bool>(x_1041.x, x_1041.y, x_1041.z);
        let x_1044 : bool = u_xlatb10.y;
        let x_1046 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1044 & x_1046);
        let x_1050 : vec3<f32> = u_xlat9;
        let x_1053 : vec4<bool> = (-(vec4<f32>(x_1050.z, x_1050.y, x_1050.x, x_1050.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1053.x, x_1053.y, x_1053.z);
        let x_1057 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1057);
        let x_1062 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1062);
        let x_1068 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1068);
        let x_1072 : bool = u_xlatb10.z;
        if (x_1072) {
          let x_1077 : f32 = u_xlat22.z;
          x_1073 = x_1077;
        } else {
          let x_1079 : f32 = u_xlat11;
          x_1073 = x_1079;
        }
        let x_1080 : f32 = x_1073;
        u_xlat34 = x_1080;
        let x_1083 : bool = u_xlatb10.x;
        if (x_1083) {
          let x_1088 : f32 = u_xlat22.x;
          x_1084 = x_1088;
        } else {
          let x_1090 : f32 = u_xlat34;
          x_1084 = x_1090;
        }
        let x_1091 : f32 = x_1084;
        u_xlat10.x = x_1091;
        let x_1093 : i32 = u_xlati6;
        let x_1095 : f32 = x_520.x_AdditionalShadowParams[x_1093].w;
        u_xlat22.x = trunc(x_1095);
        let x_1099 : f32 = u_xlat10.x;
        let x_1101 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1099 + x_1101);
        let x_1105 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1105);
      }
      let x_1107 : i32 = u_xlati45;
      u_xlati45 = (x_1107 << bitcast<u32>(2i));
      let x_1109 : vec3<f32> = vs_TEXCOORD1;
      let x_1112 : i32 = u_xlati45;
      let x_1115 : i32 = u_xlati45;
      let x_1119 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1112 + 1i) / 4i)][((x_1115 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1109.y, x_1109.y, x_1109.y, x_1109.y) * x_1119);
      let x_1121 : i32 = u_xlati45;
      let x_1123 : i32 = u_xlati45;
      let x_1126 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[(x_1121 / 4i)][(x_1123 % 4i)];
      let x_1127 : vec3<f32> = vs_TEXCOORD1;
      let x_1130 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1126 * vec4<f32>(x_1127.x, x_1127.x, x_1127.x, x_1127.x)) + x_1130);
      let x_1132 : i32 = u_xlati45;
      let x_1135 : i32 = u_xlati45;
      let x_1139 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1132 + 2i) / 4i)][((x_1135 + 2i) % 4i)];
      let x_1140 : vec3<f32> = vs_TEXCOORD1;
      let x_1143 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1139 * vec4<f32>(x_1140.z, x_1140.z, x_1140.z, x_1140.z)) + x_1143);
      let x_1145 : vec4<f32> = u_xlat10;
      let x_1146 : i32 = u_xlati45;
      let x_1149 : i32 = u_xlati45;
      let x_1153 : vec4<f32> = x_520.x_AdditionalLightsWorldToShadow[((x_1146 + 3i) / 4i)][((x_1149 + 3i) % 4i)];
      u_xlat10 = (x_1145 + x_1153);
      let x_1155 : vec4<f32> = u_xlat10;
      let x_1157 : vec4<f32> = u_xlat10;
      let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) / vec3<f32>(x_1157.w, x_1157.w, x_1157.w));
      let x_1160 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
      let x_1163 : vec4<f32> = u_xlat10;
      let x_1164 : vec2<f32> = vec2<f32>(x_1163.x, x_1163.y);
      let x_1166 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1164.x, x_1164.y, x_1166);
      let x_1174 : vec3<f32> = txVec1;
      let x_1176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
      u_xlat45 = x_1176;
      let x_1177 : i32 = u_xlati6;
      let x_1179 : f32 = x_520.x_AdditionalShadowParams[x_1177].x;
      u_xlat10.x = (1.0f + -(x_1179));
      let x_1183 : f32 = u_xlat45;
      let x_1184 : i32 = u_xlati6;
      let x_1186 : f32 = x_520.x_AdditionalShadowParams[x_1184].x;
      let x_1189 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1183 * x_1186) + x_1189);
      let x_1192 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1192);
      let x_1197 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1197 >= 1.0f);
      let x_1199 : bool = u_xlatb22;
      let x_1201 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1199 | x_1201);
      let x_1205 : bool = u_xlatb10.x;
      let x_1206 : f32 = u_xlat45;
      u_xlat45 = select(x_1206, 1.0f, x_1205);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1209 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1209) + 1.0f);
    let x_1213 : f32 = u_xlat37;
    let x_1215 : f32 = u_xlat10.x;
    let x_1217 : f32 = u_xlat45;
    u_xlat45 = ((x_1213 * x_1215) + x_1217);
    let x_1219 : f32 = u_xlat43;
    let x_1220 : f32 = u_xlat45;
    u_xlat43 = (x_1219 * x_1220);
    let x_1222 : vec3<f32> = u_xlat4;
    let x_1223 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1222, x_1223);
    let x_1225 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1225, 0.0f, 1.0f);
    let x_1227 : f32 = u_xlat43;
    let x_1228 : f32 = u_xlat45;
    u_xlat43 = (x_1227 * x_1228);
    let x_1230 : f32 = u_xlat43;
    let x_1232 : i32 = u_xlati6;
    let x_1234 : vec4<f32> = x_931.x_AdditionalLightsColor[x_1232];
    let x_1236 : vec3<f32> = (vec3<f32>(x_1230, x_1230, x_1230) * vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
    let x_1237 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : vec4<f32> = u_xlat8;
    let x_1241 : f32 = u_xlat44;
    let x_1244 : vec3<f32> = u_xlat15;
    let x_1245 : vec3<f32> = ((vec3<f32>(x_1239.x, x_1239.y, x_1239.z) * vec3<f32>(x_1241, x_1241, x_1241)) + x_1244);
    let x_1246 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
    let x_1248 : vec4<f32> = u_xlat8;
    let x_1250 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1255 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1255, 1.17549435e-38f);
    let x_1259 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1259);
    let x_1262 : vec3<f32> = u_xlat6;
    let x_1264 : vec4<f32> = u_xlat8;
    let x_1266 : vec3<f32> = (vec3<f32>(x_1262.x, x_1262.x, x_1262.x) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
    let x_1267 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
    let x_1269 : vec3<f32> = u_xlat4;
    let x_1270 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1269, vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
    let x_1275 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1275, 0.0f, 1.0f);
    let x_1278 : vec3<f32> = u_xlat9;
    let x_1279 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1278, vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1282, 0.0f, 1.0f);
    let x_1285 : f32 = u_xlat6.x;
    let x_1287 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1285 * x_1287);
    let x_1291 : f32 = u_xlat6.x;
    let x_1293 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1291 * x_1293) + 1.00001001358032226562f);
    let x_1297 : f32 = u_xlat43;
    let x_1298 : f32 = u_xlat43;
    u_xlat43 = (x_1297 * x_1298);
    let x_1301 : f32 = u_xlat6.x;
    let x_1303 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1301 * x_1303);
    let x_1306 : f32 = u_xlat43;
    u_xlat43 = max(x_1306, 0.10000000149011611938f);
    let x_1309 : f32 = u_xlat6.x;
    let x_1310 : f32 = u_xlat43;
    u_xlat6.x = (x_1309 * x_1310);
    let x_1313 : f32 = u_xlat40;
    let x_1315 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1313 * x_1315);
    let x_1319 : f32 = u_xlat25.x;
    let x_1321 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1319 / x_1321);
    let x_1324 : vec4<f32> = u_xlat0;
    let x_1326 : vec3<f32> = u_xlat6;
    let x_1329 : vec3<f32> = u_xlat14;
    let x_1330 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.x, x_1326.x)) + x_1329);
    let x_1331 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
    let x_1333 : vec4<f32> = u_xlat8;
    let x_1335 : vec4<f32> = u_xlat10;
    let x_1338 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z)) + x_1338);

    continuing {
      let x_1340 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1340 + bitcast<u32>(1i));
    }
  }
  let x_1342 : vec4<f32> = u_xlat5;
  let x_1344 : vec3<f32> = u_xlat3;
  let x_1347 : vec3<f32> = u_xlat18;
  let x_1348 : vec3<f32> = ((vec3<f32>(x_1342.x, x_1342.y, x_1342.z) * vec3<f32>(x_1344.x, x_1344.x, x_1344.x)) + x_1347);
  let x_1349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1351 : vec3<f32> = u_xlat7;
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1354 : vec3<f32> = (x_1351 + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : f32 = u_xlat36;
  let x_1358 : f32 = u_xlat36;
  u_xlat36 = (x_1357 * -(x_1358));
  let x_1361 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1361);
  let x_1363 : vec4<f32> = u_xlat0;
  let x_1366 : vec4<f32> = x_45.unity_FogColor;
  let x_1369 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) + -(vec3<f32>(x_1366.x, x_1366.y, x_1366.z)));
  let x_1370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1374 : f32 = u_xlat36;
  let x_1376 : vec4<f32> = u_xlat0;
  let x_1380 : vec4<f32> = x_45.unity_FogColor;
  let x_1382 : vec3<f32> = ((vec3<f32>(x_1374, x_1374, x_1374) * vec3<f32>(x_1376.x, x_1376.y, x_1376.z)) + vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
  let x_1383 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
  let x_1387 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1387 == 1.0f);
  let x_1389 : bool = u_xlatb0;
  if (x_1389) {
    let x_1394 : f32 = u_xlat2.x;
    x_1390 = x_1394;
  } else {
    x_1390 = 1.0f;
  }
  let x_1396 : f32 = x_1390;
  SV_Target0.w = x_1396;
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


