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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb25 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb14 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat34 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat37 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(4) var<uniform> x_524 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

@group(1) @binding(1) var<uniform> x_886 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu23 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_259 : f32;
  var x_271 : f32;
  var x_282 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1020 : f32;
  var x_1030 : f32;
  var txVec1 : vec3<f32>;
  var x_1265 : f32;
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
  u_xlat23 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat23;
  let x_108 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat33;
  u_xlat33 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat33;
  u_xlat33 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_115);
  let x_117 : f32 = u_xlat33;
  u_xlat33 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat23;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat23 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat14.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_45.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_165.x, x_165.y, x_166.z);
  let x_173 : vec3<f32> = u_xlat14;
  let x_176 : f32 = x_45.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.y), x_176);
  u_xlat14.x = x_177.w;
  let x_188 : f32 = x_186.unity_LODFade.x;
  u_xlatb25 = (x_188 >= 0.0f);
  let x_191 : bool = u_xlatb25;
  if (x_191) {
    let x_197 : f32 = u_xlat14.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat14.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat14.x = x_204;
  let x_207 : f32 = u_xlat14.x;
  let x_210 : f32 = x_186.unity_LODFade.x;
  u_xlat14.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat14.x;
  u_xlatb14 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb14;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_228 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb14 = (x_228 == 0.0f);
  let x_233 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_239 : vec3<f32> = (-(x_233) + x_238);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_248);
  let x_250 : f32 = u_xlat25;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_250, x_250, x_250) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : bool = u_xlatb14;
  if (x_258) {
    let x_263 : f32 = u_xlat4.x;
    x_259 = x_263;
  } else {
    let x_267 : f32 = x_45.unity_MatrixV[0i].z;
    x_259 = x_267;
  }
  let x_268 : f32 = x_259;
  u_xlat5.x = x_268;
  let x_270 : bool = u_xlatb14;
  if (x_270) {
    let x_275 : f32 = u_xlat4.y;
    x_271 = x_275;
  } else {
    let x_278 : f32 = x_45.unity_MatrixV[1i].z;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat5.y = x_279;
  let x_281 : bool = u_xlatb14;
  if (x_281) {
    let x_286 : f32 = u_xlat4.z;
    x_282 = x_286;
  } else {
    let x_289 : f32 = x_45.unity_MatrixV[2i].z;
    x_282 = x_289;
  }
  let x_290 : f32 = x_282;
  u_xlat5.z = x_290;
  let x_293 : vec3<f32> = vs_TEXCOORD2;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (vec3<f32>(x_293.z, x_293.x, x_293.y) * vec3<f32>(x_296.y, x_296.z, x_296.x));
  let x_299 : vec3<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = vs_TEXCOORD3;
  let x_304 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : vec3<f32> = u_xlat14;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_307 * vec3<f32>(x_308.w, x_308.w, x_308.w));
  let x_311 : vec2<f32> = u_xlat23;
  let x_313 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_311.y, x_311.y, x_311.y) * x_313);
  let x_315 : vec2<f32> = u_xlat23;
  let x_317 : vec4<f32> = vs_TEXCOORD3;
  let x_320 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_315.x, x_315.x, x_315.x) * vec3<f32>(x_317.x, x_317.y, x_317.z)) + x_320);
  let x_322 : f32 = u_xlat33;
  let x_324 : vec3<f32> = vs_TEXCOORD2;
  let x_326 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_322, x_322, x_322) * x_324) + x_326);
  let x_328 : vec3<f32> = u_xlat14;
  let x_329 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat33;
  let x_335 : vec3<f32> = u_xlat14;
  let x_336 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  u_xlat4.w = 1.0f;
  let x_343 : vec4<f32> = x_186.unity_SHAr;
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_343, x_344);
  let x_349 : vec4<f32> = x_186.unity_SHAg;
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_186.unity_SHAb;
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_355, x_356);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_360.y, x_360.z, x_360.z, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_368 : vec4<f32> = x_186.unity_SHBr;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_368, x_369);
  let x_374 : vec4<f32> = x_186.unity_SHBg;
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_186.unity_SHBb;
  let x_381 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_380, x_381);
  let x_385 : f32 = u_xlat4.y;
  let x_387 : f32 = u_xlat4.y;
  u_xlat33 = (x_385 * x_387);
  let x_390 : f32 = u_xlat4.x;
  let x_392 : f32 = u_xlat4.x;
  let x_394 : f32 = u_xlat33;
  u_xlat33 = ((x_390 * x_392) + -(x_394));
  let x_399 : vec4<f32> = x_186.unity_SHC;
  let x_401 : f32 = u_xlat33;
  let x_404 : vec3<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401, x_401, x_401)) + x_404);
  let x_406 : vec3<f32> = u_xlat14;
  let x_407 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_406 + x_407);
  let x_409 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_409, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_413) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_419 : f32 = u_xlat1.y;
  let x_421 : f32 = x_70.x_Smoothness;
  let x_423 : f32 = u_xlat33;
  u_xlat23.x = ((x_419 * x_421) + -(x_423));
  let x_428 : f32 = u_xlat33;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_428, x_428, x_428) * vec3<f32>(x_430.y, x_430.z, x_430.w));
  let x_433 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_70.x_BaseColor;
  let x_441 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec2<f32> = u_xlat1;
  let x_446 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.x, x_444.x) * vec3<f32>(x_446.x, x_446.y, x_446.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat1.y;
  let x_458 : f32 = x_70.x_Smoothness;
  u_xlat33 = ((-(x_455) * x_458) + 1.0f);
  let x_461 : f32 = u_xlat33;
  let x_462 : f32 = u_xlat33;
  u_xlat1.x = (x_461 * x_462);
  let x_466 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_466, 0.0078125f);
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat12 = (x_472 * x_474);
  let x_477 : f32 = u_xlat23.x;
  u_xlat23.x = (x_477 + 1.0f);
  let x_481 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_481, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat1.x;
  u_xlat34 = ((x_486 * 4.0f) + 2.0f);
  let x_491 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_491, 1.0f);
  let x_497 : vec4<f32> = vs_TEXCOORD6;
  let x_498 : vec2<f32> = vec2<f32>(x_497.x, x_497.y);
  let x_500 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_498.x, x_498.y, x_500);
  let x_513 : vec3<f32> = txVec0;
  let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_513.xy, x_513.z);
  u_xlat37 = x_515;
  let x_526 : f32 = x_524.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_526) + 1.0f);
  let x_529 : f32 = u_xlat37;
  let x_531 : f32 = x_524.x_MainLightShadowParams.x;
  let x_533 : f32 = u_xlat38;
  u_xlat37 = ((x_529 * x_531) + x_533);
  let x_537 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (0.0f >= x_537);
  let x_541 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_541 >= 1.0f);
  let x_543 : bool = u_xlatb38;
  let x_544 : bool = u_xlatb6;
  u_xlatb38 = (x_543 | x_544);
  let x_546 : bool = u_xlatb38;
  let x_547 : f32 = u_xlat37;
  u_xlat37 = select(x_547, 1.0f, x_546);
  let x_549 : vec3<f32> = vs_TEXCOORD1;
  let x_551 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_549 + -(x_551));
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_554, x_555);
  let x_557 : f32 = u_xlat38;
  let x_559 : f32 = x_524.x_MainLightShadowParams.z;
  let x_562 : f32 = x_524.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_557 * x_559) + x_562);
  let x_566 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_566, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat37;
  u_xlat17 = (-(x_570) + 1.0f);
  let x_574 : f32 = u_xlat6.x;
  let x_575 : f32 = u_xlat17;
  let x_577 : f32 = u_xlat37;
  u_xlat37 = ((x_574 * x_575) + x_577);
  let x_579 : vec3<f32> = u_xlat5;
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(-(x_579), vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_586 : f32 = u_xlat6.x;
  let x_588 : f32 = u_xlat6.x;
  u_xlat6.x = (x_586 + x_588);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec3<f32> = u_xlat6;
  let x_597 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * -(vec3<f32>(x_593.x, x_593.x, x_593.x))) + -(x_597));
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_601.x, x_601.y, x_601.z), x_603);
  let x_605 : f32 = u_xlat39;
  u_xlat39 = clamp(x_605, 0.0f, 1.0f);
  let x_607 : f32 = u_xlat39;
  u_xlat39 = (-(x_607) + 1.0f);
  let x_610 : f32 = u_xlat39;
  let x_611 : f32 = u_xlat39;
  u_xlat39 = (x_610 * x_611);
  let x_613 : f32 = u_xlat39;
  let x_614 : f32 = u_xlat39;
  u_xlat39 = (x_613 * x_614);
  let x_616 : f32 = u_xlat33;
  u_xlat7.x = ((-(x_616) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_623 : f32 = u_xlat33;
  let x_625 : f32 = u_xlat7.x;
  u_xlat33 = (x_623 * x_625);
  let x_627 : f32 = u_xlat33;
  u_xlat33 = (x_627 * 6.0f);
  let x_638 : vec3<f32> = u_xlat6;
  let x_639 : f32 = u_xlat33;
  let x_640 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_638, x_639);
  u_xlat7 = x_640;
  let x_642 : f32 = u_xlat7.w;
  u_xlat33 = (x_642 + -1.0f);
  let x_645 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_646 : f32 = u_xlat33;
  u_xlat33 = ((x_645 * x_646) + 1.0f);
  let x_649 : f32 = u_xlat33;
  u_xlat33 = max(x_649, 0.0f);
  let x_651 : f32 = u_xlat33;
  u_xlat33 = log2(x_651);
  let x_653 : f32 = u_xlat33;
  let x_655 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_653 * x_655);
  let x_657 : f32 = u_xlat33;
  u_xlat33 = exp2(x_657);
  let x_659 : f32 = u_xlat33;
  let x_661 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_659 * x_661);
  let x_663 : vec4<f32> = u_xlat7;
  let x_665 : f32 = u_xlat33;
  u_xlat6 = (vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665));
  let x_668 : vec2<f32> = u_xlat1;
  let x_670 : vec2<f32> = u_xlat1;
  let x_674 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.x) * vec2<f32>(x_670.x, x_670.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_675 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
  let x_678 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_678);
  let x_681 : vec4<f32> = u_xlat0;
  let x_684 : vec2<f32> = u_xlat23;
  u_xlat18 = (-(vec3<f32>(x_681.x, x_681.y, x_681.z)) + vec3<f32>(x_684.x, x_684.x, x_684.x));
  let x_687 : f32 = u_xlat39;
  let x_689 : vec3<f32> = u_xlat18;
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_687, x_687, x_687) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat33;
  let x_696 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_694, x_694, x_694) * x_696);
  let x_698 : vec3<f32> = u_xlat6;
  let x_699 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_698 * x_699);
  let x_701 : vec3<f32> = u_xlat14;
  let x_702 : vec3<f32> = u_xlat13;
  let x_704 : vec3<f32> = u_xlat6;
  u_xlat14 = ((x_701 * x_702) + x_704);
  let x_706 : f32 = u_xlat37;
  let x_708 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_706 * x_708);
  let x_710 : vec4<f32> = u_xlat4;
  let x_713 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_718 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_718, 0.0f, 1.0f);
  let x_721 : f32 = u_xlat33;
  let x_723 : f32 = u_xlat1.x;
  u_xlat33 = (x_721 * x_723);
  let x_725 : f32 = u_xlat33;
  let x_728 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_725, x_725, x_725) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec3<f32> = u_xlat5;
  let x_733 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat18 = (x_731 + vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec3<f32> = u_xlat18;
  let x_737 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_736, x_737);
  let x_739 : f32 = u_xlat33;
  u_xlat33 = max(x_739, 1.17549435e-38f);
  let x_742 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_742);
  let x_744 : f32 = u_xlat33;
  let x_746 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_744, x_744, x_744) * x_746);
  let x_748 : vec4<f32> = u_xlat4;
  let x_750 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(vec3<f32>(x_748.x, x_748.y, x_748.z), x_750);
  let x_752 : f32 = u_xlat33;
  u_xlat33 = clamp(x_752, 0.0f, 1.0f);
  let x_755 : vec4<f32> = x_45.x_MainLightPosition;
  let x_757 : vec3<f32> = u_xlat18;
  u_xlat1.x = dot(vec3<f32>(x_755.x, x_755.y, x_755.z), x_757);
  let x_761 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_761, 0.0f, 1.0f);
  let x_764 : f32 = u_xlat33;
  let x_765 : f32 = u_xlat33;
  u_xlat33 = (x_764 * x_765);
  let x_767 : f32 = u_xlat33;
  let x_769 : f32 = u_xlat7.x;
  u_xlat33 = ((x_767 * x_769) + 1.00001001358032226562f);
  let x_774 : f32 = u_xlat1.x;
  let x_776 : f32 = u_xlat1.x;
  u_xlat1.x = (x_774 * x_776);
  let x_779 : f32 = u_xlat33;
  let x_780 : f32 = u_xlat33;
  u_xlat33 = (x_779 * x_780);
  let x_783 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_783, 0.10000000149011611938f);
  let x_787 : f32 = u_xlat33;
  let x_789 : f32 = u_xlat1.x;
  u_xlat33 = (x_787 * x_789);
  let x_791 : f32 = u_xlat34;
  let x_792 : f32 = u_xlat33;
  u_xlat33 = (x_791 * x_792);
  let x_794 : f32 = u_xlat12;
  let x_795 : f32 = u_xlat33;
  u_xlat33 = (x_794 / x_795);
  let x_797 : vec4<f32> = u_xlat0;
  let x_799 : f32 = u_xlat33;
  let x_802 : vec3<f32> = u_xlat13;
  u_xlat18 = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799, x_799, x_799)) + x_802);
  let x_804 : vec3<f32> = u_xlat6;
  let x_805 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_804 * x_805);
  let x_809 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_811 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_809, x_811);
  let x_815 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_815));
  let x_818 : f32 = u_xlat38;
  let x_821 : f32 = x_524.x_AdditionalShadowFadeParams.x;
  let x_824 : f32 = x_524.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_818 * x_821) + x_824);
  let x_828 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_828, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_841 : u32 = u_xlatu_loop_1;
    let x_842 : u32 = u_xlatu33;
    if ((x_841 < x_842)) {
    } else {
      break;
    }
    let x_845 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_845 >> 2u);
    let x_849 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_849 & 3u));
    let x_852 : u32 = u_xlatu37;
    let x_855 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_852)];
    let x_865 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_870 : vec4<u32> = indexable[x_865];
    u_xlat37 = dot(x_855, bitcast<vec4<f32>>(x_870));
    let x_874 : f32 = u_xlat37;
    u_xlati37 = i32(x_874);
    let x_876 : vec3<f32> = vs_TEXCOORD1;
    let x_887 : i32 = u_xlati37;
    let x_889 : vec4<f32> = x_886.x_AdditionalLightsPosition[x_887];
    let x_892 : i32 = u_xlati37;
    let x_894 : vec4<f32> = x_886.x_AdditionalLightsPosition[x_892];
    u_xlat8 = ((-(x_876) * vec3<f32>(x_889.w, x_889.w, x_889.w)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
    let x_897 : vec3<f32> = u_xlat8;
    let x_898 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_897, x_898);
    let x_900 : f32 = u_xlat38;
    u_xlat38 = max(x_900, 0.00006103515625f);
    let x_903 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_903);
    let x_906 : f32 = u_xlat39;
    let x_908 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_906, x_906, x_906) * x_908);
    let x_911 : f32 = u_xlat38;
    u_xlat41 = (1.0f / x_911);
    let x_913 : f32 = u_xlat38;
    let x_914 : i32 = u_xlati37;
    let x_916 : f32 = x_886.x_AdditionalLightsAttenuation[x_914].x;
    u_xlat38 = (x_913 * x_916);
    let x_918 : f32 = u_xlat38;
    let x_920 : f32 = u_xlat38;
    u_xlat38 = ((-(x_918) * x_920) + 1.0f);
    let x_923 : f32 = u_xlat38;
    u_xlat38 = max(x_923, 0.0f);
    let x_925 : f32 = u_xlat38;
    let x_926 : f32 = u_xlat38;
    u_xlat38 = (x_925 * x_926);
    let x_928 : f32 = u_xlat38;
    let x_929 : f32 = u_xlat41;
    u_xlat38 = (x_928 * x_929);
    let x_931 : i32 = u_xlati37;
    let x_933 : vec4<f32> = x_886.x_AdditionalLightsSpotDir[x_931];
    let x_935 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), x_935);
    let x_937 : f32 = u_xlat41;
    let x_938 : i32 = u_xlati37;
    let x_940 : f32 = x_886.x_AdditionalLightsAttenuation[x_938].z;
    let x_942 : i32 = u_xlati37;
    let x_944 : f32 = x_886.x_AdditionalLightsAttenuation[x_942].w;
    u_xlat41 = ((x_937 * x_940) + x_944);
    let x_946 : f32 = u_xlat41;
    u_xlat41 = clamp(x_946, 0.0f, 1.0f);
    let x_948 : f32 = u_xlat41;
    let x_949 : f32 = u_xlat41;
    u_xlat41 = (x_948 * x_949);
    let x_951 : f32 = u_xlat38;
    let x_952 : f32 = u_xlat41;
    u_xlat38 = (x_951 * x_952);
    let x_956 : i32 = u_xlati37;
    let x_958 : f32 = x_524.x_AdditionalShadowParams[x_956].w;
    u_xlati41 = i32(x_958);
    let x_961 : i32 = u_xlati41;
    u_xlatb42 = (x_961 >= 0i);
    let x_963 : bool = u_xlatb42;
    if (x_963) {
      let x_967 : i32 = u_xlati37;
      let x_969 : f32 = x_524.x_AdditionalShadowParams[x_967].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_969, x_969, x_969, x_969))));
      let x_974 : bool = u_xlatb42;
      if (x_974) {
        let x_979 : vec3<f32> = u_xlat9;
        let x_982 : vec3<f32> = u_xlat9;
        let x_985 : vec4<bool> = (abs(vec4<f32>(x_979.z, x_979.z, x_979.y, x_979.z)) >= abs(vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.x)));
        let x_987 : vec3<bool> = vec3<bool>(x_985.x, x_985.y, x_985.z);
        let x_988 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_987.x, x_987.y, x_987.z, x_988.w);
        let x_991 : bool = u_xlatb10.y;
        let x_993 : bool = u_xlatb10.x;
        u_xlatb42 = (x_991 & x_993);
        let x_995 : vec3<f32> = u_xlat9;
        let x_998 : vec4<bool> = (-(vec4<f32>(x_995.z, x_995.y, x_995.z, x_995.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_999 : vec3<bool> = vec3<bool>(x_998.x, x_998.y, x_998.w);
        let x_1000 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_999.x, x_999.y, x_1000.z, x_999.z);
        let x_1004 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1004);
        let x_1009 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1009);
        let x_1015 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1015);
        let x_1019 : bool = u_xlatb10.z;
        if (x_1019) {
          let x_1024 : f32 = u_xlat10.y;
          x_1020 = x_1024;
        } else {
          let x_1026 : f32 = u_xlat43;
          x_1020 = x_1026;
        }
        let x_1027 : f32 = x_1020;
        u_xlat21 = x_1027;
        let x_1029 : bool = u_xlatb42;
        if (x_1029) {
          let x_1034 : f32 = u_xlat10.x;
          x_1030 = x_1034;
        } else {
          let x_1036 : f32 = u_xlat21;
          x_1030 = x_1036;
        }
        let x_1037 : f32 = x_1030;
        u_xlat42 = x_1037;
        let x_1038 : i32 = u_xlati37;
        let x_1040 : f32 = x_524.x_AdditionalShadowParams[x_1038].w;
        u_xlat10.x = trunc(x_1040);
        let x_1043 : f32 = u_xlat42;
        let x_1045 : f32 = u_xlat10.x;
        u_xlat42 = (x_1043 + x_1045);
        let x_1047 : f32 = u_xlat42;
        u_xlati41 = i32(x_1047);
      }
      let x_1049 : i32 = u_xlati41;
      u_xlati41 = (x_1049 << bitcast<u32>(2i));
      let x_1051 : vec3<f32> = vs_TEXCOORD1;
      let x_1054 : i32 = u_xlati41;
      let x_1057 : i32 = u_xlati41;
      let x_1061 : vec4<f32> = x_524.x_AdditionalLightsWorldToShadow[((x_1054 + 1i) / 4i)][((x_1057 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1051.y, x_1051.y, x_1051.y, x_1051.y) * x_1061);
      let x_1063 : i32 = u_xlati41;
      let x_1065 : i32 = u_xlati41;
      let x_1068 : vec4<f32> = x_524.x_AdditionalLightsWorldToShadow[(x_1063 / 4i)][(x_1065 % 4i)];
      let x_1069 : vec3<f32> = vs_TEXCOORD1;
      let x_1072 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1068 * vec4<f32>(x_1069.x, x_1069.x, x_1069.x, x_1069.x)) + x_1072);
      let x_1074 : i32 = u_xlati41;
      let x_1077 : i32 = u_xlati41;
      let x_1081 : vec4<f32> = x_524.x_AdditionalLightsWorldToShadow[((x_1074 + 2i) / 4i)][((x_1077 + 2i) % 4i)];
      let x_1082 : vec3<f32> = vs_TEXCOORD1;
      let x_1085 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1081 * vec4<f32>(x_1082.z, x_1082.z, x_1082.z, x_1082.z)) + x_1085);
      let x_1087 : vec4<f32> = u_xlat10;
      let x_1088 : i32 = u_xlati41;
      let x_1091 : i32 = u_xlati41;
      let x_1095 : vec4<f32> = x_524.x_AdditionalLightsWorldToShadow[((x_1088 + 3i) / 4i)][((x_1091 + 3i) % 4i)];
      u_xlat10 = (x_1087 + x_1095);
      let x_1097 : vec4<f32> = u_xlat10;
      let x_1099 : vec4<f32> = u_xlat10;
      let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099.w, x_1099.w, x_1099.w));
      let x_1102 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
      let x_1105 : vec4<f32> = u_xlat10;
      let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
      let x_1108 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
      let x_1116 : vec3<f32> = txVec1;
      let x_1118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1116.xy, x_1116.z);
      u_xlat41 = x_1118;
      let x_1119 : i32 = u_xlati37;
      let x_1121 : f32 = x_524.x_AdditionalShadowParams[x_1119].x;
      u_xlat42 = (1.0f + -(x_1121));
      let x_1124 : f32 = u_xlat41;
      let x_1125 : i32 = u_xlati37;
      let x_1127 : f32 = x_524.x_AdditionalShadowParams[x_1125].x;
      let x_1129 : f32 = u_xlat42;
      u_xlat41 = ((x_1124 * x_1127) + x_1129);
      let x_1132 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1132);
      let x_1135 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1135 >= 1.0f);
      let x_1138 : bool = u_xlatb42;
      let x_1140 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1138 | x_1140);
      let x_1142 : bool = u_xlatb42;
      let x_1143 : f32 = u_xlat41;
      u_xlat41 = select(x_1143, 1.0f, x_1142);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1146 : f32 = u_xlat41;
    u_xlat42 = (-(x_1146) + 1.0f);
    let x_1150 : f32 = u_xlat1.x;
    let x_1151 : f32 = u_xlat42;
    let x_1153 : f32 = u_xlat41;
    u_xlat41 = ((x_1150 * x_1151) + x_1153);
    let x_1155 : f32 = u_xlat38;
    let x_1156 : f32 = u_xlat41;
    u_xlat38 = (x_1155 * x_1156);
    let x_1158 : vec4<f32> = u_xlat4;
    let x_1160 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1158.x, x_1158.y, x_1158.z), x_1160);
    let x_1162 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1162, 0.0f, 1.0f);
    let x_1164 : f32 = u_xlat38;
    let x_1165 : f32 = u_xlat41;
    u_xlat38 = (x_1164 * x_1165);
    let x_1167 : f32 = u_xlat38;
    let x_1169 : i32 = u_xlati37;
    let x_1171 : vec4<f32> = x_886.x_AdditionalLightsColor[x_1169];
    let x_1173 : vec3<f32> = (vec3<f32>(x_1167, x_1167, x_1167) * vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
    let x_1174 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
    let x_1176 : vec3<f32> = u_xlat8;
    let x_1177 : f32 = u_xlat39;
    let x_1180 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1176 * vec3<f32>(x_1177, x_1177, x_1177)) + x_1180);
    let x_1182 : vec3<f32> = u_xlat8;
    let x_1183 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1182, x_1183);
    let x_1185 : f32 = u_xlat37;
    u_xlat37 = max(x_1185, 1.17549435e-38f);
    let x_1187 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1187);
    let x_1189 : f32 = u_xlat37;
    let x_1191 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1189, x_1189, x_1189) * x_1191);
    let x_1193 : vec4<f32> = u_xlat4;
    let x_1195 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1193.x, x_1193.y, x_1193.z), x_1195);
    let x_1197 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1197, 0.0f, 1.0f);
    let x_1199 : vec3<f32> = u_xlat9;
    let x_1200 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1199, x_1200);
    let x_1202 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1202, 0.0f, 1.0f);
    let x_1204 : f32 = u_xlat37;
    let x_1205 : f32 = u_xlat37;
    u_xlat37 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat37;
    let x_1209 : f32 = u_xlat7.x;
    u_xlat37 = ((x_1207 * x_1209) + 1.00001001358032226562f);
    let x_1212 : f32 = u_xlat38;
    let x_1213 : f32 = u_xlat38;
    u_xlat38 = (x_1212 * x_1213);
    let x_1215 : f32 = u_xlat37;
    let x_1216 : f32 = u_xlat37;
    u_xlat37 = (x_1215 * x_1216);
    let x_1218 : f32 = u_xlat38;
    u_xlat38 = max(x_1218, 0.10000000149011611938f);
    let x_1220 : f32 = u_xlat37;
    let x_1221 : f32 = u_xlat38;
    u_xlat37 = (x_1220 * x_1221);
    let x_1223 : f32 = u_xlat34;
    let x_1224 : f32 = u_xlat37;
    u_xlat37 = (x_1223 * x_1224);
    let x_1226 : f32 = u_xlat12;
    let x_1227 : f32 = u_xlat37;
    u_xlat37 = (x_1226 / x_1227);
    let x_1229 : vec4<f32> = u_xlat0;
    let x_1231 : f32 = u_xlat37;
    let x_1234 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1231, x_1231, x_1231)) + x_1234);
    let x_1236 : vec3<f32> = u_xlat8;
    let x_1237 : vec4<f32> = u_xlat10;
    let x_1240 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1236 * vec3<f32>(x_1237.x, x_1237.y, x_1237.z)) + x_1240);

    continuing {
      let x_1242 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1242 + bitcast<u32>(1i));
    }
  }
  let x_1244 : vec3<f32> = u_xlat14;
  let x_1245 : vec3<f32> = u_xlat3;
  let x_1248 : vec3<f32> = u_xlat6;
  let x_1249 : vec3<f32> = ((x_1244 * vec3<f32>(x_1245.x, x_1245.x, x_1245.x)) + x_1248);
  let x_1250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1254 : vec3<f32> = u_xlat18;
  let x_1255 : vec4<f32> = u_xlat0;
  let x_1257 : vec3<f32> = (x_1254 + vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1262 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1262 == 1.0f);
  let x_1264 : bool = u_xlatb0;
  if (x_1264) {
    let x_1269 : f32 = u_xlat2.x;
    x_1265 = x_1269;
  } else {
    x_1265 = 1.0f;
  }
  let x_1271 : f32 = x_1265;
  SV_Target0.w = x_1271;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


