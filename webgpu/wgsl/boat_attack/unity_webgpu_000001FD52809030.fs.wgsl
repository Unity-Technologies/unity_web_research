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

@group(1) @binding(4) var<uniform> x_347 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat12 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb36 : bool;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

@group(1) @binding(1) var<uniform> x_1056 : AdditionalLights;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu12 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_259 : f32;
  var x_271 : f32;
  var x_282 : f32;
  var txVec0 : vec3<f32>;
  var x_702 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1191 : f32;
  var x_1201 : f32;
  var txVec1 : vec3<f32>;
  var x_1440 : f32;
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
  let x_339 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_339 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_354 + -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres2;
  let x_367 : vec3<f32> = (x_361 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_373 : vec4<f32> = x_347.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_371 + -(vec3<f32>(x_373.x, x_373.y, x_373.z)));
  let x_378 : vec3<f32> = u_xlat14;
  let x_379 : vec3<f32> = u_xlat14;
  u_xlat9.x = dot(x_378, x_379);
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat7;
  let x_388 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_392 : vec3<f32> = u_xlat8;
  let x_393 : vec3<f32> = u_xlat8;
  u_xlat9.w = dot(x_392, x_393);
  let x_399 : vec4<f32> = u_xlat9;
  let x_401 : vec4<f32> = x_347.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_399 < x_401);
  let x_404 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_404);
  let x_408 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_408);
  let x_412 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb6.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_420);
  let x_425 : bool = u_xlatb6.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_425);
  let x_429 : bool = u_xlatb6.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_429);
  let x_432 : vec3<f32> = u_xlat14;
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_432 + vec3<f32>(x_433.y, x_433.z, x_433.w));
  let x_436 : vec3<f32> = u_xlat14;
  let x_438 : vec3<f32> = max(x_436, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_438.x, x_438.y, x_438.z);
  let x_441 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_441, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_446 : f32 = u_xlat33;
  u_xlat33 = (-(x_446) + 4.0f);
  let x_451 : f32 = u_xlat33;
  u_xlatu33 = u32(x_451);
  let x_455 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_455) << bitcast<u32>(2i));
  let x_458 : vec3<f32> = vs_TEXCOORD1;
  let x_460 : i32 = u_xlati33;
  let x_463 : i32 = u_xlati33;
  let x_467 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_460 + 1i) / 4i)][((x_463 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : i32 = u_xlati33;
  let x_472 : i32 = u_xlati33;
  let x_475 : vec4<f32> = x_347.x_MainLightWorldToShadow[(x_470 / 4i)][(x_472 % 4i)];
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.x, x_477.x, x_477.x)) + x_480);
  let x_482 : i32 = u_xlati33;
  let x_485 : i32 = u_xlati33;
  let x_489 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_482 + 2i) / 4i)][((x_485 + 2i) % 4i)];
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.z, x_491.z, x_491.z)) + x_494);
  let x_496 : vec3<f32> = u_xlat14;
  let x_497 : i32 = u_xlati33;
  let x_500 : i32 = u_xlati33;
  let x_504 : vec4<f32> = x_347.x_MainLightWorldToShadow[((x_497 + 3i) / 4i)][((x_500 + 3i) % 4i)];
  u_xlat14 = (x_496 + vec3<f32>(x_504.x, x_504.y, x_504.z));
  u_xlat4.w = 1.0f;
  let x_510 : vec4<f32> = x_186.unity_SHAr;
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_186.unity_SHAg;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_516, x_517);
  let x_522 : vec4<f32> = x_186.unity_SHAb;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_522, x_523);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_526.y, x_526.z, x_526.z, x_526.x) * vec4<f32>(x_528.x, x_528.y, x_528.z, x_528.z));
  let x_533 : vec4<f32> = x_186.unity_SHBr;
  let x_534 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_533, x_534);
  let x_539 : vec4<f32> = x_186.unity_SHBg;
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_539, x_540);
  let x_545 : vec4<f32> = x_186.unity_SHBb;
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_545, x_546);
  let x_550 : f32 = u_xlat4.y;
  let x_552 : f32 = u_xlat4.y;
  u_xlat33 = (x_550 * x_552);
  let x_555 : f32 = u_xlat4.x;
  let x_557 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat33;
  u_xlat33 = ((x_555 * x_557) + -(x_559));
  let x_564 : vec4<f32> = x_186.unity_SHC;
  let x_566 : f32 = u_xlat33;
  let x_569 : vec3<f32> = u_xlat8;
  let x_570 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566, x_566, x_566)) + x_569);
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec3<f32> = u_xlat6;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_573 + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_577, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_580 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_580) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_585 : f32 = u_xlat33;
  u_xlat23.x = (-(x_585) + 1.0f);
  let x_590 : f32 = u_xlat33;
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_592.y, x_592.z, x_592.w));
  let x_595 : vec4<f32> = u_xlat0;
  let x_598 : vec4<f32> = x_70.x_BaseColor;
  let x_603 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_598.x, x_598.y, x_598.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec2<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat0;
  let x_613 : vec3<f32> = ((vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_617 : f32 = u_xlat1.y;
  let x_620 : f32 = x_70.x_Smoothness;
  u_xlat33 = ((-(x_617) * x_620) + 1.0f);
  let x_623 : f32 = u_xlat33;
  let x_624 : f32 = u_xlat33;
  u_xlat1.x = (x_623 * x_624);
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_628, 0.0078125f);
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat1.x;
  u_xlat34 = (x_634 * x_636);
  let x_640 : f32 = u_xlat1.y;
  let x_642 : f32 = x_70.x_Smoothness;
  let x_645 : f32 = u_xlat23.x;
  u_xlat12 = ((x_640 * x_642) + x_645);
  let x_647 : f32 = u_xlat12;
  u_xlat12 = clamp(x_647, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat1.x;
  u_xlat23.x = ((x_650 * 4.0f) + 2.0f);
  let x_655 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_655, 1.0f);
  let x_660 : vec3<f32> = u_xlat14;
  let x_661 : vec2<f32> = vec2<f32>(x_660.x, x_660.y);
  let x_663 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_661.x, x_661.y, x_663);
  let x_675 : vec3<f32> = txVec0;
  let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_675.xy, x_675.z);
  u_xlat14.x = x_677;
  let x_680 : f32 = x_347.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_680) + 1.0f);
  let x_684 : f32 = u_xlat14.x;
  let x_686 : f32 = x_347.x_MainLightShadowParams.x;
  let x_688 : f32 = u_xlat25;
  u_xlat14.x = ((x_684 * x_686) + x_688);
  let x_692 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_692);
  let x_696 : f32 = u_xlat14.z;
  u_xlatb36 = (x_696 >= 1.0f);
  let x_698 : bool = u_xlatb36;
  let x_699 : bool = u_xlatb25;
  u_xlatb25 = (x_698 | x_699);
  let x_701 : bool = u_xlatb25;
  if (x_701) {
    x_702 = 1.0f;
  } else {
    let x_707 : f32 = u_xlat14.x;
    x_702 = x_707;
  }
  let x_708 : f32 = x_702;
  u_xlat14.x = x_708;
  let x_710 : vec3<f32> = vs_TEXCOORD1;
  let x_712 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_714 : vec3<f32> = (x_710 + -(x_712));
  let x_715 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat7;
  let x_719 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_723 : f32 = u_xlat25;
  let x_725 : f32 = x_347.x_MainLightShadowParams.z;
  let x_728 : f32 = x_347.x_MainLightShadowParams.w;
  u_xlat36 = ((x_723 * x_725) + x_728);
  let x_730 : f32 = u_xlat36;
  u_xlat36 = clamp(x_730, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat14.x;
  u_xlat37 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat36;
  let x_738 : f32 = u_xlat37;
  let x_741 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_737 * x_738) + x_741);
  let x_744 : vec3<f32> = u_xlat5;
  let x_746 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(-(x_744), vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : f32 = u_xlat36;
  let x_750 : f32 = u_xlat36;
  u_xlat36 = (x_749 + x_750);
  let x_752 : vec4<f32> = u_xlat4;
  let x_754 : f32 = u_xlat36;
  let x_758 : vec3<f32> = u_xlat5;
  let x_760 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * -(vec3<f32>(x_754, x_754, x_754))) + -(x_758));
  let x_761 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat4;
  let x_765 : vec3<f32> = u_xlat5;
  u_xlat36 = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), x_765);
  let x_767 : f32 = u_xlat36;
  u_xlat36 = clamp(x_767, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat36;
  u_xlat36 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat36;
  let x_773 : f32 = u_xlat36;
  u_xlat36 = (x_772 * x_773);
  let x_775 : f32 = u_xlat36;
  let x_776 : f32 = u_xlat36;
  u_xlat36 = (x_775 * x_776);
  let x_778 : f32 = u_xlat33;
  u_xlat37 = ((-(x_778) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_784 : f32 = u_xlat33;
  let x_785 : f32 = u_xlat37;
  u_xlat33 = (x_784 * x_785);
  let x_787 : f32 = u_xlat33;
  u_xlat33 = (x_787 * 6.0f);
  let x_798 : vec4<f32> = u_xlat7;
  let x_800 : f32 = u_xlat33;
  let x_801 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_798.x, x_798.y, x_798.z), x_800);
  u_xlat7 = x_801;
  let x_803 : f32 = u_xlat7.w;
  u_xlat33 = (x_803 + -1.0f);
  let x_806 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_807 : f32 = u_xlat33;
  u_xlat33 = ((x_806 * x_807) + 1.0f);
  let x_810 : f32 = u_xlat33;
  u_xlat33 = max(x_810, 0.0f);
  let x_812 : f32 = u_xlat33;
  u_xlat33 = log2(x_812);
  let x_814 : f32 = u_xlat33;
  let x_816 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_814 * x_816);
  let x_818 : f32 = u_xlat33;
  u_xlat33 = exp2(x_818);
  let x_820 : f32 = u_xlat33;
  let x_822 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_820 * x_822);
  let x_824 : vec4<f32> = u_xlat7;
  let x_826 : f32 = u_xlat33;
  let x_828 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_826, x_826, x_826));
  let x_829 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec2<f32> = u_xlat1;
  let x_833 : vec2<f32> = u_xlat1;
  let x_837 : vec2<f32> = ((vec2<f32>(x_831.x, x_831.x) * vec2<f32>(x_833.x, x_833.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_838 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_837.x, x_837.y, x_838.z);
  let x_841 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_841);
  let x_844 : vec4<f32> = u_xlat0;
  let x_847 : f32 = u_xlat12;
  u_xlat19 = (-(vec3<f32>(x_844.x, x_844.y, x_844.z)) + vec3<f32>(x_847, x_847, x_847));
  let x_850 : f32 = u_xlat36;
  let x_852 : vec3<f32> = u_xlat19;
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_850, x_850, x_850) * x_852) + vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : f32 = u_xlat33;
  let x_859 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_857, x_857, x_857) * x_859);
  let x_861 : vec4<f32> = u_xlat7;
  let x_863 : vec3<f32> = u_xlat19;
  let x_864 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * x_863);
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec3<f32> = u_xlat6;
  let x_868 : vec3<f32> = u_xlat13;
  let x_870 : vec4<f32> = u_xlat7;
  u_xlat6 = ((x_867 * x_868) + vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_874 : f32 = u_xlat14.x;
  let x_876 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_874 * x_876);
  let x_878 : vec4<f32> = u_xlat4;
  let x_881 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_886 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_886, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat33;
  let x_891 : f32 = u_xlat1.x;
  u_xlat33 = (x_889 * x_891);
  let x_893 : f32 = u_xlat33;
  let x_896 : vec4<f32> = x_45.x_MainLightColor;
  let x_898 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec3<f32> = u_xlat5;
  let x_903 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat19 = (x_901 + vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec3<f32> = u_xlat19;
  let x_907 : vec3<f32> = u_xlat19;
  u_xlat33 = dot(x_906, x_907);
  let x_909 : f32 = u_xlat33;
  u_xlat33 = max(x_909, 1.17549435e-38f);
  let x_912 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_912);
  let x_914 : f32 = u_xlat33;
  let x_916 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_914, x_914, x_914) * x_916);
  let x_918 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = u_xlat19;
  u_xlat33 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), x_920);
  let x_922 : f32 = u_xlat33;
  u_xlat33 = clamp(x_922, 0.0f, 1.0f);
  let x_925 : vec4<f32> = x_45.x_MainLightPosition;
  let x_927 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), x_927);
  let x_931 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat33;
  let x_935 : f32 = u_xlat33;
  u_xlat33 = (x_934 * x_935);
  let x_937 : f32 = u_xlat33;
  let x_939 : f32 = u_xlat8.x;
  u_xlat33 = ((x_937 * x_939) + 1.00001001358032226562f);
  let x_944 : f32 = u_xlat1.x;
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = (x_944 * x_946);
  let x_949 : f32 = u_xlat33;
  let x_950 : f32 = u_xlat33;
  u_xlat33 = (x_949 * x_950);
  let x_953 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_953, 0.10000000149011611938f);
  let x_957 : f32 = u_xlat33;
  let x_959 : f32 = u_xlat1.x;
  u_xlat33 = (x_957 * x_959);
  let x_962 : f32 = u_xlat23.x;
  let x_963 : f32 = u_xlat33;
  u_xlat33 = (x_962 * x_963);
  let x_965 : f32 = u_xlat34;
  let x_966 : f32 = u_xlat33;
  u_xlat33 = (x_965 / x_966);
  let x_968 : vec4<f32> = u_xlat0;
  let x_970 : f32 = u_xlat33;
  let x_973 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970, x_970, x_970)) + x_973);
  let x_975 : vec4<f32> = u_xlat7;
  let x_977 : vec3<f32> = u_xlat19;
  let x_978 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) * x_977);
  let x_979 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_982 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_984 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_982, x_984);
  let x_986 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_986));
  let x_989 : f32 = u_xlat25;
  let x_992 : f32 = x_347.x_AdditionalShadowFadeParams.x;
  let x_995 : f32 = x_347.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_989 * x_992) + x_995);
  let x_999 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_999, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1012 : u32 = u_xlatu_loop_1;
    let x_1013 : u32 = u_xlatu33;
    if ((x_1012 < x_1013)) {
    } else {
      break;
    }
    let x_1016 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1016 >> 2u);
    let x_1019 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1019 & 3u));
    let x_1022 : u32 = u_xlatu37;
    let x_1025 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1022)];
    let x_1035 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1040 : vec4<u32> = indexable[x_1035];
    u_xlat37 = dot(x_1025, bitcast<vec4<f32>>(x_1040));
    let x_1044 : f32 = u_xlat37;
    u_xlati37 = i32(x_1044);
    let x_1046 : vec3<f32> = vs_TEXCOORD1;
    let x_1057 : i32 = u_xlati37;
    let x_1059 : vec4<f32> = x_1056.x_AdditionalLightsPosition[x_1057];
    let x_1062 : i32 = u_xlati37;
    let x_1064 : vec4<f32> = x_1056.x_AdditionalLightsPosition[x_1062];
    u_xlat19 = ((-(x_1046) * vec3<f32>(x_1059.w, x_1059.w, x_1059.w)) + vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
    let x_1068 : vec3<f32> = u_xlat19;
    let x_1069 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1068, x_1069);
    let x_1071 : f32 = u_xlat38;
    u_xlat38 = max(x_1071, 0.00006103515625f);
    let x_1075 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1075);
    let x_1077 : f32 = u_xlat39;
    let x_1079 : vec3<f32> = u_xlat19;
    let x_1080 : vec3<f32> = (vec3<f32>(x_1077, x_1077, x_1077) * x_1079);
    let x_1081 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
    let x_1084 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1084);
    let x_1086 : f32 = u_xlat38;
    let x_1087 : i32 = u_xlati37;
    let x_1089 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1087].x;
    u_xlat38 = (x_1086 * x_1089);
    let x_1091 : f32 = u_xlat38;
    let x_1093 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1091) * x_1093) + 1.0f);
    let x_1096 : f32 = u_xlat38;
    u_xlat38 = max(x_1096, 0.0f);
    let x_1098 : f32 = u_xlat38;
    let x_1099 : f32 = u_xlat38;
    u_xlat38 = (x_1098 * x_1099);
    let x_1101 : f32 = u_xlat38;
    let x_1102 : f32 = u_xlat40;
    u_xlat38 = (x_1101 * x_1102);
    let x_1104 : i32 = u_xlati37;
    let x_1106 : vec4<f32> = x_1056.x_AdditionalLightsSpotDir[x_1104];
    let x_1108 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
    let x_1111 : f32 = u_xlat40;
    let x_1112 : i32 = u_xlati37;
    let x_1114 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1112].z;
    let x_1116 : i32 = u_xlati37;
    let x_1118 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1116].w;
    u_xlat40 = ((x_1111 * x_1114) + x_1118);
    let x_1120 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1120, 0.0f, 1.0f);
    let x_1122 : f32 = u_xlat40;
    let x_1123 : f32 = u_xlat40;
    u_xlat40 = (x_1122 * x_1123);
    let x_1125 : f32 = u_xlat38;
    let x_1126 : f32 = u_xlat40;
    u_xlat38 = (x_1125 * x_1126);
    let x_1130 : i32 = u_xlati37;
    let x_1132 : f32 = x_347.x_AdditionalShadowParams[x_1130].w;
    u_xlati40 = i32(x_1132);
    let x_1135 : i32 = u_xlati40;
    u_xlatb42 = (x_1135 >= 0i);
    let x_1137 : bool = u_xlatb42;
    if (x_1137) {
      let x_1141 : i32 = u_xlati37;
      let x_1143 : f32 = x_347.x_AdditionalShadowParams[x_1141].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1143, x_1143, x_1143, x_1143))));
      let x_1147 : bool = u_xlatb42;
      if (x_1147) {
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1154 : vec4<f32> = u_xlat9;
        let x_1157 : vec4<bool> = (abs(vec4<f32>(x_1151.z, x_1151.z, x_1151.y, x_1151.z)) >= abs(vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.x)));
        let x_1159 : vec3<bool> = vec3<bool>(x_1157.x, x_1157.y, x_1157.z);
        let x_1160 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
        let x_1163 : bool = u_xlatb10.y;
        let x_1165 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1163 & x_1165);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<bool> = (-(vec4<f32>(x_1167.z, x_1167.y, x_1167.z, x_1167.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1171 : vec3<bool> = vec3<bool>(x_1170.x, x_1170.y, x_1170.w);
        let x_1172 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1171.x, x_1171.y, x_1172.z, x_1171.z);
        let x_1176 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1176);
        let x_1181 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1181);
        let x_1186 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1186);
        let x_1190 : bool = u_xlatb10.z;
        if (x_1190) {
          let x_1195 : f32 = u_xlat10.y;
          x_1191 = x_1195;
        } else {
          let x_1197 : f32 = u_xlat43;
          x_1191 = x_1197;
        }
        let x_1198 : f32 = x_1191;
        u_xlat21 = x_1198;
        let x_1200 : bool = u_xlatb42;
        if (x_1200) {
          let x_1205 : f32 = u_xlat10.x;
          x_1201 = x_1205;
        } else {
          let x_1207 : f32 = u_xlat21;
          x_1201 = x_1207;
        }
        let x_1208 : f32 = x_1201;
        u_xlat42 = x_1208;
        let x_1209 : i32 = u_xlati37;
        let x_1211 : f32 = x_347.x_AdditionalShadowParams[x_1209].w;
        u_xlat10.x = trunc(x_1211);
        let x_1214 : f32 = u_xlat42;
        let x_1216 : f32 = u_xlat10.x;
        u_xlat42 = (x_1214 + x_1216);
        let x_1218 : f32 = u_xlat42;
        u_xlati40 = i32(x_1218);
      }
      let x_1220 : i32 = u_xlati40;
      u_xlati40 = (x_1220 << bitcast<u32>(2i));
      let x_1222 : vec3<f32> = vs_TEXCOORD1;
      let x_1225 : i32 = u_xlati40;
      let x_1228 : i32 = u_xlati40;
      let x_1232 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_1225 + 1i) / 4i)][((x_1228 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1222.y, x_1222.y, x_1222.y, x_1222.y) * x_1232);
      let x_1234 : i32 = u_xlati40;
      let x_1236 : i32 = u_xlati40;
      let x_1239 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[(x_1234 / 4i)][(x_1236 % 4i)];
      let x_1240 : vec3<f32> = vs_TEXCOORD1;
      let x_1243 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1239 * vec4<f32>(x_1240.x, x_1240.x, x_1240.x, x_1240.x)) + x_1243);
      let x_1245 : i32 = u_xlati40;
      let x_1248 : i32 = u_xlati40;
      let x_1252 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_1245 + 2i) / 4i)][((x_1248 + 2i) % 4i)];
      let x_1253 : vec3<f32> = vs_TEXCOORD1;
      let x_1256 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1252 * vec4<f32>(x_1253.z, x_1253.z, x_1253.z, x_1253.z)) + x_1256);
      let x_1258 : vec4<f32> = u_xlat10;
      let x_1259 : i32 = u_xlati40;
      let x_1262 : i32 = u_xlati40;
      let x_1266 : vec4<f32> = x_347.x_AdditionalLightsWorldToShadow[((x_1259 + 3i) / 4i)][((x_1262 + 3i) % 4i)];
      u_xlat10 = (x_1258 + x_1266);
      let x_1268 : vec4<f32> = u_xlat10;
      let x_1270 : vec4<f32> = u_xlat10;
      let x_1272 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) / vec3<f32>(x_1270.w, x_1270.w, x_1270.w));
      let x_1273 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
      let x_1276 : vec4<f32> = u_xlat10;
      let x_1277 : vec2<f32> = vec2<f32>(x_1276.x, x_1276.y);
      let x_1279 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
      let x_1287 : vec3<f32> = txVec1;
      let x_1289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1287.xy, x_1287.z);
      u_xlat40 = x_1289;
      let x_1290 : i32 = u_xlati37;
      let x_1292 : f32 = x_347.x_AdditionalShadowParams[x_1290].x;
      u_xlat42 = (1.0f + -(x_1292));
      let x_1295 : f32 = u_xlat40;
      let x_1296 : i32 = u_xlati37;
      let x_1298 : f32 = x_347.x_AdditionalShadowParams[x_1296].x;
      let x_1300 : f32 = u_xlat42;
      u_xlat40 = ((x_1295 * x_1298) + x_1300);
      let x_1303 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1303);
      let x_1306 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1306 >= 1.0f);
      let x_1309 : bool = u_xlatb42;
      let x_1311 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1309 | x_1311);
      let x_1313 : bool = u_xlatb42;
      let x_1314 : f32 = u_xlat40;
      u_xlat40 = select(x_1314, 1.0f, x_1313);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1317 : f32 = u_xlat40;
    u_xlat42 = (-(x_1317) + 1.0f);
    let x_1321 : f32 = u_xlat1.x;
    let x_1322 : f32 = u_xlat42;
    let x_1324 : f32 = u_xlat40;
    u_xlat40 = ((x_1321 * x_1322) + x_1324);
    let x_1326 : f32 = u_xlat38;
    let x_1327 : f32 = u_xlat40;
    u_xlat38 = (x_1326 * x_1327);
    let x_1329 : vec4<f32> = u_xlat4;
    let x_1331 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1329.x, x_1329.y, x_1329.z), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1334, 0.0f, 1.0f);
    let x_1336 : f32 = u_xlat38;
    let x_1337 : f32 = u_xlat40;
    u_xlat38 = (x_1336 * x_1337);
    let x_1339 : f32 = u_xlat38;
    let x_1341 : i32 = u_xlati37;
    let x_1343 : vec4<f32> = x_1056.x_AdditionalLightsColor[x_1341];
    let x_1345 : vec3<f32> = (vec3<f32>(x_1339, x_1339, x_1339) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec3<f32> = u_xlat19;
    let x_1349 : f32 = u_xlat39;
    let x_1352 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1348 * vec3<f32>(x_1349, x_1349, x_1349)) + x_1352);
    let x_1354 : vec3<f32> = u_xlat19;
    let x_1355 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1354, x_1355);
    let x_1357 : f32 = u_xlat37;
    u_xlat37 = max(x_1357, 1.17549435e-38f);
    let x_1359 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1359);
    let x_1361 : f32 = u_xlat37;
    let x_1363 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1361, x_1361, x_1361) * x_1363);
    let x_1365 : vec4<f32> = u_xlat4;
    let x_1367 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_1365.x, x_1365.y, x_1365.z), x_1367);
    let x_1369 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1369, 0.0f, 1.0f);
    let x_1371 : vec4<f32> = u_xlat9;
    let x_1373 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), x_1373);
    let x_1375 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1375, 0.0f, 1.0f);
    let x_1377 : f32 = u_xlat37;
    let x_1378 : f32 = u_xlat37;
    u_xlat37 = (x_1377 * x_1378);
    let x_1380 : f32 = u_xlat37;
    let x_1382 : f32 = u_xlat8.x;
    u_xlat37 = ((x_1380 * x_1382) + 1.00001001358032226562f);
    let x_1385 : f32 = u_xlat38;
    let x_1386 : f32 = u_xlat38;
    u_xlat38 = (x_1385 * x_1386);
    let x_1388 : f32 = u_xlat37;
    let x_1389 : f32 = u_xlat37;
    u_xlat37 = (x_1388 * x_1389);
    let x_1391 : f32 = u_xlat38;
    u_xlat38 = max(x_1391, 0.10000000149011611938f);
    let x_1393 : f32 = u_xlat37;
    let x_1394 : f32 = u_xlat38;
    u_xlat37 = (x_1393 * x_1394);
    let x_1397 : f32 = u_xlat23.x;
    let x_1398 : f32 = u_xlat37;
    u_xlat37 = (x_1397 * x_1398);
    let x_1400 : f32 = u_xlat34;
    let x_1401 : f32 = u_xlat37;
    u_xlat37 = (x_1400 / x_1401);
    let x_1403 : vec4<f32> = u_xlat0;
    let x_1405 : f32 = u_xlat37;
    let x_1408 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.z) * vec3<f32>(x_1405, x_1405, x_1405)) + x_1408);
    let x_1410 : vec3<f32> = u_xlat19;
    let x_1411 : vec4<f32> = u_xlat10;
    let x_1414 : vec3<f32> = u_xlat14;
    u_xlat14 = ((x_1410 * vec3<f32>(x_1411.x, x_1411.y, x_1411.z)) + x_1414);

    continuing {
      let x_1416 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1416 + bitcast<u32>(1i));
    }
  }
  let x_1418 : vec3<f32> = u_xlat6;
  let x_1419 : vec3<f32> = u_xlat3;
  let x_1422 : vec4<f32> = u_xlat7;
  let x_1424 : vec3<f32> = ((x_1418 * vec3<f32>(x_1419.x, x_1419.x, x_1419.x)) + vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1429 : vec3<f32> = u_xlat14;
  let x_1430 : vec4<f32> = u_xlat0;
  let x_1432 : vec3<f32> = (x_1429 + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1437 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1437 == 1.0f);
  let x_1439 : bool = u_xlatb0;
  if (x_1439) {
    let x_1444 : f32 = u_xlat2.x;
    x_1440 = x_1444;
  } else {
    x_1440 = 1.0f;
  }
  let x_1446 : f32 = x_1440;
  SV_Target0.w = x_1446;
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


