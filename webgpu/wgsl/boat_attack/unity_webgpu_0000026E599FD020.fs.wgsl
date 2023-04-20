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

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb25 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb14 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat34 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat37 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(4) var<uniform> x_500 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_862 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_996 : f32;
  var x_1006 : f32;
  var txVec1 : vec3<f32>;
  var x_1240 : f32;
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
  u_xlat14 = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_343 : vec2<f32> = vs_TEXCOORD8;
  let x_345 : f32 = x_45.x_GlobalMipBias.x;
  let x_346 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_343, x_345);
  u_xlat4 = x_346;
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_45.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_352, x_354);
  u_xlat6 = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec4<f32> = u_xlat4;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec3<f32> = u_xlat14;
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_364, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : f32 = u_xlat33;
  u_xlat33 = (x_368 + 0.5f);
  let x_371 : f32 = u_xlat33;
  let x_373 : vec3<f32> = u_xlat6;
  let x_374 : vec3<f32> = (vec3<f32>(x_371, x_371, x_371) * x_373);
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat4.w;
  u_xlat33 = max(x_378, 0.00009999999747378752f);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : f32 = u_xlat33;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) / vec3<f32>(x_383, x_383, x_383));
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_389) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_395 : f32 = u_xlat1.y;
  let x_397 : f32 = x_70.x_Smoothness;
  let x_399 : f32 = u_xlat33;
  u_xlat23.x = ((x_395 * x_397) + -(x_399));
  let x_404 : f32 = u_xlat33;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.y, x_406.z, x_406.w));
  let x_409 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = x_70.x_BaseColor;
  let x_417 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_412.x, x_412.y, x_412.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec2<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.x, x_420.x) * vec3<f32>(x_422.x, x_422.y, x_422.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_428 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat1.y;
  let x_434 : f32 = x_70.x_Smoothness;
  u_xlat33 = ((-(x_431) * x_434) + 1.0f);
  let x_437 : f32 = u_xlat33;
  let x_438 : f32 = u_xlat33;
  u_xlat1.x = (x_437 * x_438);
  let x_442 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_442, 0.0078125f);
  let x_448 : f32 = u_xlat1.x;
  let x_450 : f32 = u_xlat1.x;
  u_xlat12 = (x_448 * x_450);
  let x_453 : f32 = u_xlat23.x;
  u_xlat23.x = (x_453 + 1.0f);
  let x_457 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_457, 0.0f, 1.0f);
  let x_462 : f32 = u_xlat1.x;
  u_xlat34 = ((x_462 * 4.0f) + 2.0f);
  let x_467 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_467, 1.0f);
  let x_473 : vec4<f32> = vs_TEXCOORD6;
  let x_474 : vec2<f32> = vec2<f32>(x_473.x, x_473.y);
  let x_476 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_474.x, x_474.y, x_476);
  let x_489 : vec3<f32> = txVec0;
  let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
  u_xlat37 = x_491;
  let x_502 : f32 = x_500.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat37;
  let x_507 : f32 = x_500.x_MainLightShadowParams.x;
  let x_509 : f32 = u_xlat38;
  u_xlat37 = ((x_505 * x_507) + x_509);
  let x_513 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (0.0f >= x_513);
  let x_517 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_517 >= 1.0f);
  let x_519 : bool = u_xlatb38;
  let x_520 : bool = u_xlatb6;
  u_xlatb38 = (x_519 | x_520);
  let x_522 : bool = u_xlatb38;
  let x_523 : f32 = u_xlat37;
  u_xlat37 = select(x_523, 1.0f, x_522);
  let x_525 : vec3<f32> = vs_TEXCOORD1;
  let x_527 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_525 + -(x_527));
  let x_530 : vec3<f32> = u_xlat6;
  let x_531 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_530, x_531);
  let x_533 : f32 = u_xlat38;
  let x_535 : f32 = x_500.x_MainLightShadowParams.z;
  let x_538 : f32 = x_500.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_533 * x_535) + x_538);
  let x_542 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_542, 0.0f, 1.0f);
  let x_546 : f32 = u_xlat37;
  u_xlat17 = (-(x_546) + 1.0f);
  let x_550 : f32 = u_xlat6.x;
  let x_551 : f32 = u_xlat17;
  let x_553 : f32 = u_xlat37;
  u_xlat37 = ((x_550 * x_551) + x_553);
  let x_555 : vec3<f32> = u_xlat5;
  let x_557 : vec3<f32> = u_xlat14;
  u_xlat6.x = dot(-(x_555), x_557);
  let x_561 : f32 = u_xlat6.x;
  let x_563 : f32 = u_xlat6.x;
  u_xlat6.x = (x_561 + x_563);
  let x_566 : vec3<f32> = u_xlat14;
  let x_567 : vec3<f32> = u_xlat6;
  let x_571 : vec3<f32> = u_xlat5;
  u_xlat6 = ((x_566 * -(vec3<f32>(x_567.x, x_567.x, x_567.x))) + -(x_571));
  let x_575 : vec3<f32> = u_xlat14;
  let x_576 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_575, x_576);
  let x_578 : f32 = u_xlat39;
  u_xlat39 = clamp(x_578, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat39;
  u_xlat39 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat39;
  let x_584 : f32 = u_xlat39;
  u_xlat39 = (x_583 * x_584);
  let x_586 : f32 = u_xlat39;
  let x_587 : f32 = u_xlat39;
  u_xlat39 = (x_586 * x_587);
  let x_590 : f32 = u_xlat33;
  u_xlat7.x = ((-(x_590) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_597 : f32 = u_xlat33;
  let x_599 : f32 = u_xlat7.x;
  u_xlat33 = (x_597 * x_599);
  let x_601 : f32 = u_xlat33;
  u_xlat33 = (x_601 * 6.0f);
  let x_612 : vec3<f32> = u_xlat6;
  let x_613 : f32 = u_xlat33;
  let x_614 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_612, x_613);
  u_xlat7 = x_614;
  let x_616 : f32 = u_xlat7.w;
  u_xlat33 = (x_616 + -1.0f);
  let x_619 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_620 : f32 = u_xlat33;
  u_xlat33 = ((x_619 * x_620) + 1.0f);
  let x_623 : f32 = u_xlat33;
  u_xlat33 = max(x_623, 0.0f);
  let x_625 : f32 = u_xlat33;
  u_xlat33 = log2(x_625);
  let x_627 : f32 = u_xlat33;
  let x_629 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_627 * x_629);
  let x_631 : f32 = u_xlat33;
  u_xlat33 = exp2(x_631);
  let x_633 : f32 = u_xlat33;
  let x_635 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_633 * x_635);
  let x_637 : vec4<f32> = u_xlat7;
  let x_639 : f32 = u_xlat33;
  u_xlat6 = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_639, x_639, x_639));
  let x_642 : vec2<f32> = u_xlat1;
  let x_644 : vec2<f32> = u_xlat1;
  let x_648 : vec2<f32> = ((vec2<f32>(x_642.x, x_642.x) * vec2<f32>(x_644.x, x_644.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_649 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
  let x_652 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_652);
  let x_655 : vec4<f32> = u_xlat0;
  let x_658 : vec2<f32> = u_xlat23;
  u_xlat18 = (-(vec3<f32>(x_655.x, x_655.y, x_655.z)) + vec3<f32>(x_658.x, x_658.x, x_658.x));
  let x_661 : f32 = u_xlat39;
  let x_663 : vec3<f32> = u_xlat18;
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_661, x_661, x_661) * x_663) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : f32 = u_xlat33;
  let x_670 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_668, x_668, x_668) * x_670);
  let x_672 : vec3<f32> = u_xlat6;
  let x_673 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_672 * x_673);
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : vec3<f32> = u_xlat13;
  let x_679 : vec3<f32> = u_xlat6;
  let x_680 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * x_677) + x_679);
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : f32 = u_xlat37;
  let x_685 : f32 = x_186.unity_LightData.z;
  u_xlat33 = (x_683 * x_685);
  let x_687 : vec3<f32> = u_xlat14;
  let x_689 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(x_687, vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_694 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_694, 0.0f, 1.0f);
  let x_697 : f32 = u_xlat33;
  let x_699 : f32 = u_xlat1.x;
  u_xlat33 = (x_697 * x_699);
  let x_701 : f32 = u_xlat33;
  let x_704 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_701, x_701, x_701) * vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec3<f32> = u_xlat5;
  let x_709 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat18 = (x_707 + vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec3<f32> = u_xlat18;
  let x_713 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_712, x_713);
  let x_715 : f32 = u_xlat33;
  u_xlat33 = max(x_715, 1.17549435e-38f);
  let x_718 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_718);
  let x_720 : f32 = u_xlat33;
  let x_722 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_720, x_720, x_720) * x_722);
  let x_724 : vec3<f32> = u_xlat14;
  let x_725 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_724, x_725);
  let x_727 : f32 = u_xlat33;
  u_xlat33 = clamp(x_727, 0.0f, 1.0f);
  let x_730 : vec4<f32> = x_45.x_MainLightPosition;
  let x_732 : vec3<f32> = u_xlat18;
  u_xlat1.x = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), x_732);
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_736, 0.0f, 1.0f);
  let x_739 : f32 = u_xlat33;
  let x_740 : f32 = u_xlat33;
  u_xlat33 = (x_739 * x_740);
  let x_742 : f32 = u_xlat33;
  let x_744 : f32 = u_xlat7.x;
  u_xlat33 = ((x_742 * x_744) + 1.00001001358032226562f);
  let x_749 : f32 = u_xlat1.x;
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = (x_749 * x_751);
  let x_754 : f32 = u_xlat33;
  let x_755 : f32 = u_xlat33;
  u_xlat33 = (x_754 * x_755);
  let x_758 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_758, 0.10000000149011611938f);
  let x_762 : f32 = u_xlat33;
  let x_764 : f32 = u_xlat1.x;
  u_xlat33 = (x_762 * x_764);
  let x_766 : f32 = u_xlat34;
  let x_767 : f32 = u_xlat33;
  u_xlat33 = (x_766 * x_767);
  let x_769 : f32 = u_xlat12;
  let x_770 : f32 = u_xlat33;
  u_xlat33 = (x_769 / x_770);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : f32 = u_xlat33;
  let x_777 : vec3<f32> = u_xlat13;
  u_xlat18 = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774, x_774, x_774)) + x_777);
  let x_779 : vec3<f32> = u_xlat6;
  let x_780 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_779 * x_780);
  let x_784 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_786 : f32 = x_186.unity_LightData.y;
  u_xlat33 = min(x_784, x_786);
  let x_790 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_790));
  let x_793 : f32 = u_xlat38;
  let x_796 : f32 = x_500.x_AdditionalShadowFadeParams.x;
  let x_799 : f32 = x_500.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_793 * x_796) + x_799);
  let x_803 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_803, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_816 : u32 = u_xlatu_loop_1;
    let x_817 : u32 = u_xlatu33;
    if ((x_816 < x_817)) {
    } else {
      break;
    }
    let x_820 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_820 >> 2u);
    let x_824 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_824 & 3u));
    let x_827 : u32 = u_xlatu37;
    let x_830 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_827)];
    let x_840 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_845 : vec4<u32> = indexable[x_840];
    u_xlat37 = dot(x_830, bitcast<vec4<f32>>(x_845));
    let x_849 : f32 = u_xlat37;
    u_xlati37 = i32(x_849);
    let x_852 : vec3<f32> = vs_TEXCOORD1;
    let x_863 : i32 = u_xlati37;
    let x_865 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_863];
    let x_868 : i32 = u_xlati37;
    let x_870 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_868];
    u_xlat8 = ((-(x_852) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec3<f32> = u_xlat8;
    let x_874 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_873, x_874);
    let x_876 : f32 = u_xlat38;
    u_xlat38 = max(x_876, 0.00006103515625f);
    let x_879 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_879);
    let x_882 : f32 = u_xlat39;
    let x_884 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_882, x_882, x_882) * x_884);
    let x_887 : f32 = u_xlat38;
    u_xlat41 = (1.0f / x_887);
    let x_889 : f32 = u_xlat38;
    let x_890 : i32 = u_xlati37;
    let x_892 : f32 = x_862.x_AdditionalLightsAttenuation[x_890].x;
    u_xlat38 = (x_889 * x_892);
    let x_894 : f32 = u_xlat38;
    let x_896 : f32 = u_xlat38;
    u_xlat38 = ((-(x_894) * x_896) + 1.0f);
    let x_899 : f32 = u_xlat38;
    u_xlat38 = max(x_899, 0.0f);
    let x_901 : f32 = u_xlat38;
    let x_902 : f32 = u_xlat38;
    u_xlat38 = (x_901 * x_902);
    let x_904 : f32 = u_xlat38;
    let x_905 : f32 = u_xlat41;
    u_xlat38 = (x_904 * x_905);
    let x_907 : i32 = u_xlati37;
    let x_909 : vec4<f32> = x_862.x_AdditionalLightsSpotDir[x_907];
    let x_911 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
    let x_913 : f32 = u_xlat41;
    let x_914 : i32 = u_xlati37;
    let x_916 : f32 = x_862.x_AdditionalLightsAttenuation[x_914].z;
    let x_918 : i32 = u_xlati37;
    let x_920 : f32 = x_862.x_AdditionalLightsAttenuation[x_918].w;
    u_xlat41 = ((x_913 * x_916) + x_920);
    let x_922 : f32 = u_xlat41;
    u_xlat41 = clamp(x_922, 0.0f, 1.0f);
    let x_924 : f32 = u_xlat41;
    let x_925 : f32 = u_xlat41;
    u_xlat41 = (x_924 * x_925);
    let x_927 : f32 = u_xlat38;
    let x_928 : f32 = u_xlat41;
    u_xlat38 = (x_927 * x_928);
    let x_932 : i32 = u_xlati37;
    let x_934 : f32 = x_500.x_AdditionalShadowParams[x_932].w;
    u_xlati41 = i32(x_934);
    let x_937 : i32 = u_xlati41;
    u_xlatb42 = (x_937 >= 0i);
    let x_939 : bool = u_xlatb42;
    if (x_939) {
      let x_943 : i32 = u_xlati37;
      let x_945 : f32 = x_500.x_AdditionalShadowParams[x_943].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_945, x_945, x_945, x_945))));
      let x_950 : bool = u_xlatb42;
      if (x_950) {
        let x_955 : vec3<f32> = u_xlat9;
        let x_958 : vec3<f32> = u_xlat9;
        let x_961 : vec4<bool> = (abs(vec4<f32>(x_955.z, x_955.z, x_955.y, x_955.z)) >= abs(vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.x)));
        let x_963 : vec3<bool> = vec3<bool>(x_961.x, x_961.y, x_961.z);
        let x_964 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_967 : bool = u_xlatb10.y;
        let x_969 : bool = u_xlatb10.x;
        u_xlatb42 = (x_967 & x_969);
        let x_971 : vec3<f32> = u_xlat9;
        let x_974 : vec4<bool> = (-(vec4<f32>(x_971.z, x_971.y, x_971.z, x_971.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_975 : vec3<bool> = vec3<bool>(x_974.x, x_974.y, x_974.w);
        let x_976 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_975.x, x_975.y, x_976.z, x_975.z);
        let x_980 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_980);
        let x_985 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_985);
        let x_991 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_991);
        let x_995 : bool = u_xlatb10.z;
        if (x_995) {
          let x_1000 : f32 = u_xlat10.y;
          x_996 = x_1000;
        } else {
          let x_1002 : f32 = u_xlat43;
          x_996 = x_1002;
        }
        let x_1003 : f32 = x_996;
        u_xlat21 = x_1003;
        let x_1005 : bool = u_xlatb42;
        if (x_1005) {
          let x_1010 : f32 = u_xlat10.x;
          x_1006 = x_1010;
        } else {
          let x_1012 : f32 = u_xlat21;
          x_1006 = x_1012;
        }
        let x_1013 : f32 = x_1006;
        u_xlat42 = x_1013;
        let x_1014 : i32 = u_xlati37;
        let x_1016 : f32 = x_500.x_AdditionalShadowParams[x_1014].w;
        u_xlat10.x = trunc(x_1016);
        let x_1019 : f32 = u_xlat42;
        let x_1021 : f32 = u_xlat10.x;
        u_xlat42 = (x_1019 + x_1021);
        let x_1023 : f32 = u_xlat42;
        u_xlati41 = i32(x_1023);
      }
      let x_1025 : i32 = u_xlati41;
      u_xlati41 = (x_1025 << bitcast<u32>(2i));
      let x_1027 : vec3<f32> = vs_TEXCOORD1;
      let x_1030 : i32 = u_xlati41;
      let x_1033 : i32 = u_xlati41;
      let x_1037 : vec4<f32> = x_500.x_AdditionalLightsWorldToShadow[((x_1030 + 1i) / 4i)][((x_1033 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1027.y, x_1027.y, x_1027.y, x_1027.y) * x_1037);
      let x_1039 : i32 = u_xlati41;
      let x_1041 : i32 = u_xlati41;
      let x_1044 : vec4<f32> = x_500.x_AdditionalLightsWorldToShadow[(x_1039 / 4i)][(x_1041 % 4i)];
      let x_1045 : vec3<f32> = vs_TEXCOORD1;
      let x_1048 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1044 * vec4<f32>(x_1045.x, x_1045.x, x_1045.x, x_1045.x)) + x_1048);
      let x_1050 : i32 = u_xlati41;
      let x_1053 : i32 = u_xlati41;
      let x_1057 : vec4<f32> = x_500.x_AdditionalLightsWorldToShadow[((x_1050 + 2i) / 4i)][((x_1053 + 2i) % 4i)];
      let x_1058 : vec3<f32> = vs_TEXCOORD1;
      let x_1061 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1057 * vec4<f32>(x_1058.z, x_1058.z, x_1058.z, x_1058.z)) + x_1061);
      let x_1063 : vec4<f32> = u_xlat10;
      let x_1064 : i32 = u_xlati41;
      let x_1067 : i32 = u_xlati41;
      let x_1071 : vec4<f32> = x_500.x_AdditionalLightsWorldToShadow[((x_1064 + 3i) / 4i)][((x_1067 + 3i) % 4i)];
      u_xlat10 = (x_1063 + x_1071);
      let x_1073 : vec4<f32> = u_xlat10;
      let x_1075 : vec4<f32> = u_xlat10;
      let x_1077 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) / vec3<f32>(x_1075.w, x_1075.w, x_1075.w));
      let x_1078 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
      let x_1081 : vec4<f32> = u_xlat10;
      let x_1082 : vec2<f32> = vec2<f32>(x_1081.x, x_1081.y);
      let x_1084 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
      let x_1092 : vec3<f32> = txVec1;
      let x_1094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1092.xy, x_1092.z);
      u_xlat41 = x_1094;
      let x_1095 : i32 = u_xlati37;
      let x_1097 : f32 = x_500.x_AdditionalShadowParams[x_1095].x;
      u_xlat42 = (1.0f + -(x_1097));
      let x_1100 : f32 = u_xlat41;
      let x_1101 : i32 = u_xlati37;
      let x_1103 : f32 = x_500.x_AdditionalShadowParams[x_1101].x;
      let x_1105 : f32 = u_xlat42;
      u_xlat41 = ((x_1100 * x_1103) + x_1105);
      let x_1108 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1108);
      let x_1111 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1111 >= 1.0f);
      let x_1114 : bool = u_xlatb42;
      let x_1116 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1114 | x_1116);
      let x_1118 : bool = u_xlatb42;
      let x_1119 : f32 = u_xlat41;
      u_xlat41 = select(x_1119, 1.0f, x_1118);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1122 : f32 = u_xlat41;
    u_xlat42 = (-(x_1122) + 1.0f);
    let x_1126 : f32 = u_xlat1.x;
    let x_1127 : f32 = u_xlat42;
    let x_1129 : f32 = u_xlat41;
    u_xlat41 = ((x_1126 * x_1127) + x_1129);
    let x_1131 : f32 = u_xlat38;
    let x_1132 : f32 = u_xlat41;
    u_xlat38 = (x_1131 * x_1132);
    let x_1134 : vec3<f32> = u_xlat14;
    let x_1135 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1134, x_1135);
    let x_1137 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1137, 0.0f, 1.0f);
    let x_1139 : f32 = u_xlat38;
    let x_1140 : f32 = u_xlat41;
    u_xlat38 = (x_1139 * x_1140);
    let x_1142 : f32 = u_xlat38;
    let x_1144 : i32 = u_xlati37;
    let x_1146 : vec4<f32> = x_862.x_AdditionalLightsColor[x_1144];
    let x_1148 : vec3<f32> = (vec3<f32>(x_1142, x_1142, x_1142) * vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
    let x_1149 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
    let x_1151 : vec3<f32> = u_xlat8;
    let x_1152 : f32 = u_xlat39;
    let x_1155 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1151 * vec3<f32>(x_1152, x_1152, x_1152)) + x_1155);
    let x_1157 : vec3<f32> = u_xlat8;
    let x_1158 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1157, x_1158);
    let x_1160 : f32 = u_xlat37;
    u_xlat37 = max(x_1160, 1.17549435e-38f);
    let x_1162 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1162);
    let x_1164 : f32 = u_xlat37;
    let x_1166 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1164, x_1164, x_1164) * x_1166);
    let x_1168 : vec3<f32> = u_xlat14;
    let x_1169 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1168, x_1169);
    let x_1171 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1171, 0.0f, 1.0f);
    let x_1173 : vec3<f32> = u_xlat9;
    let x_1174 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1173, x_1174);
    let x_1176 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1176, 0.0f, 1.0f);
    let x_1178 : f32 = u_xlat37;
    let x_1179 : f32 = u_xlat37;
    u_xlat37 = (x_1178 * x_1179);
    let x_1181 : f32 = u_xlat37;
    let x_1183 : f32 = u_xlat7.x;
    u_xlat37 = ((x_1181 * x_1183) + 1.00001001358032226562f);
    let x_1186 : f32 = u_xlat38;
    let x_1187 : f32 = u_xlat38;
    u_xlat38 = (x_1186 * x_1187);
    let x_1189 : f32 = u_xlat37;
    let x_1190 : f32 = u_xlat37;
    u_xlat37 = (x_1189 * x_1190);
    let x_1192 : f32 = u_xlat38;
    u_xlat38 = max(x_1192, 0.10000000149011611938f);
    let x_1194 : f32 = u_xlat37;
    let x_1195 : f32 = u_xlat38;
    u_xlat37 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat34;
    let x_1198 : f32 = u_xlat37;
    u_xlat37 = (x_1197 * x_1198);
    let x_1200 : f32 = u_xlat12;
    let x_1201 : f32 = u_xlat37;
    u_xlat37 = (x_1200 / x_1201);
    let x_1203 : vec4<f32> = u_xlat0;
    let x_1205 : f32 = u_xlat37;
    let x_1208 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1205, x_1205, x_1205)) + x_1208);
    let x_1210 : vec3<f32> = u_xlat8;
    let x_1211 : vec4<f32> = u_xlat10;
    let x_1214 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1210 * vec3<f32>(x_1211.x, x_1211.y, x_1211.z)) + x_1214);

    continuing {
      let x_1216 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1216 + bitcast<u32>(1i));
    }
  }
  let x_1218 : vec4<f32> = u_xlat4;
  let x_1220 : vec3<f32> = u_xlat3;
  let x_1223 : vec3<f32> = u_xlat6;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * vec3<f32>(x_1220.x, x_1220.x, x_1220.x)) + x_1223);
  let x_1225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1229 : vec3<f32> = u_xlat18;
  let x_1230 : vec4<f32> = u_xlat0;
  let x_1232 : vec3<f32> = (x_1229 + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1237 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_1237 == 1.0f);
  let x_1239 : bool = u_xlatb0;
  if (x_1239) {
    let x_1244 : f32 = u_xlat2.x;
    x_1240 = x_1244;
  } else {
    x_1240 = 1.0f;
  }
  let x_1246 : f32 = x_1240;
  SV_Target0.w = x_1246;
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


