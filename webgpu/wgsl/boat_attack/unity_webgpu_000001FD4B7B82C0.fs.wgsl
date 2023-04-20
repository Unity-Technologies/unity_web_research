diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb36 : bool;

var<private> u_xlat13 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb13 : bool;

var<private> u_xlatb1 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_337 : UnityPerDraw;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1050 : AdditionalLights;

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

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb43 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_458 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1195 : f32;
  var x_1206 : f32;
  var txVec2 : vec3<f32>;
  var x_1323 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat36;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat36;
  u_xlat36 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat36;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_133 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][0i];
  let x_141 : vec3<f32> = vs_INTERP8;
  let x_144 : vec4<f32> = u_xlat4;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][2i];
  let x_153 : vec3<f32> = vs_INTERP8;
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat4;
  let x_165 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][3i];
  let x_167 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_172 : vec4<f32> = u_xlat4;
  let x_173 : vec2<f32> = vec2<f32>(x_172.x, x_172.y);
  let x_176 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_173.x, x_173.y, x_176);
  let x_188 : vec3<f32> = txVec0;
  let x_191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_188.xy, x_188.z);
  u_xlat36 = x_191;
  let x_195 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_195) + 1.0f);
  let x_198 : f32 = u_xlat36;
  let x_200 : f32 = x_131.x_MainLightShadowParams.x;
  let x_202 : f32 = u_xlat38;
  u_xlat36 = ((x_198 * x_200) + x_202);
  let x_208 : f32 = u_xlat4.z;
  u_xlatb4 = (0.0f >= x_208);
  let x_212 : f32 = u_xlat4.z;
  u_xlatb16 = (x_212 >= 1.0f);
  let x_214 : bool = u_xlatb16;
  let x_215 : bool = u_xlatb4;
  u_xlatb4 = (x_214 | x_215);
  let x_217 : bool = u_xlatb4;
  let x_218 : f32 = u_xlat36;
  u_xlat36 = select(x_218, 1.0f, x_217);
  let x_220 : vec3<f32> = u_xlat0;
  let x_222 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_220, -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_228 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_228, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat36;
  let x_235 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_232, x_232, x_232) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec3<f32> = u_xlat12;
  let x_239 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_238 * vec3<f32>(x_239.x, x_239.x, x_239.x));
  let x_242 : vec3<f32> = u_xlat0;
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_242 * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_249 : f32 = u_xlat1.w;
  u_xlatb36 = (x_249 >= 0.40000000596046447754f);
  let x_252 : bool = u_xlatb36;
  if (x_252) {
    let x_258 : f32 = u_xlat1.w;
    x_254 = x_258;
  } else {
    x_254 = 0.0f;
  }
  let x_260 : f32 = x_254;
  u_xlat36 = x_260;
  let x_262 : f32 = u_xlat1.w;
  u_xlat1.x = (x_262 + -0.40000000596046447754f);
  let x_268 : f32 = u_xlat1.w;
  u_xlat13 = dpdxCoarse(x_268);
  let x_272 : f32 = u_xlat1.w;
  u_xlat25 = dpdyCoarse(x_272);
  let x_274 : f32 = u_xlat25;
  let x_276 : f32 = u_xlat13;
  u_xlat13 = (abs(x_274) + abs(x_276));
  let x_279 : f32 = u_xlat13;
  u_xlat13 = max(x_279, 0.00009999999747378752f);
  let x_283 : f32 = u_xlat1.x;
  let x_284 : f32 = u_xlat13;
  u_xlat1.x = (x_283 / x_284);
  let x_288 : f32 = u_xlat1.x;
  u_xlat1.x = (x_288 + 0.5f);
  let x_293 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_293, 0.0f, 1.0f);
  let x_298 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_298 == 0.0f));
  let x_300 : bool = u_xlatb13;
  if (x_300) {
    let x_305 : f32 = u_xlat1.x;
    x_301 = x_305;
  } else {
    let x_307 : f32 = u_xlat36;
    x_301 = x_307;
  }
  let x_308 : f32 = x_301;
  u_xlat36 = x_308;
  let x_309 : f32 = u_xlat36;
  u_xlat1.x = (x_309 + -0.00009999999747378752f);
  let x_317 : f32 = u_xlat1.x;
  u_xlatb1.x = (x_317 < 0.0f);
  let x_321 : bool = u_xlatb1.x;
  if (((select(0i, 1i, x_321) * -1i) != 0i)) {
    discard;
  }
  let x_331 : f32 = vs_INTERP4.w;
  u_xlatb1.x = (0.0f < x_331);
  let x_339 : f32 = x_337.unity_WorldTransformParams.w;
  u_xlatb1.z = (x_339 >= 0.0f);
  let x_343 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_343);
  let x_347 : bool = u_xlatb1.z;
  u_xlat1.z = select(-1.0f, 1.0f, x_347);
  let x_351 : f32 = u_xlat1.z;
  let x_353 : f32 = u_xlat1.x;
  u_xlat1.x = (x_351 * x_353);
  let x_356 : vec4<f32> = vs_INTERP4;
  let x_358 : vec3<f32> = vs_INTERP9;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.y, x_356.z, x_356.x) * vec3<f32>(x_358.z, x_358.x, x_358.y));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = vs_INTERP9;
  let x_365 : vec4<f32> = vs_INTERP4;
  let x_368 : vec4<f32> = u_xlat4;
  let x_371 : vec3<f32> = ((vec3<f32>(x_363.y, x_363.z, x_363.x) * vec3<f32>(x_365.z, x_365.x, x_365.y)) + -(vec3<f32>(x_368.x, x_368.y, x_368.z)));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec4<f32> = u_xlat4;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.x, x_374.x) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_379.y, x_378.y, x_378.z);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = u_xlat15;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.z, x_381.w) * vec3<f32>(x_383.y, x_383.y, x_383.y));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_388 : vec3<f32> = u_xlat15;
  let x_390 : vec4<f32> = vs_INTERP4;
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.x, x_388.x) * vec3<f32>(x_390.x, x_390.y, x_390.z)) + vec3<f32>(x_393.x, x_393.z, x_393.w));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_396.y, x_395.y, x_395.z);
  let x_398 : vec3<f32> = u_xlat15;
  let x_400 : vec3<f32> = vs_INTERP9;
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = ((vec3<f32>(x_398.z, x_398.z, x_398.z) * x_400) + vec3<f32>(x_402.x, x_402.z, x_402.w));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_405.y, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat15.x = dot(vec3<f32>(x_407.x, x_407.z, x_407.w), vec3<f32>(x_409.x, x_409.z, x_409.w));
  let x_414 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_414);
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = u_xlat15;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.z, x_417.w) * vec3<f32>(x_419.x, x_419.x, x_419.x));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_426 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb1.x = (x_426 == 0.0f);
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_434 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_429) + x_434);
  let x_436 : vec3<f32> = u_xlat15;
  let x_437 : vec3<f32> = u_xlat15;
  u_xlat25 = dot(x_436, x_437);
  let x_439 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_439);
  let x_441 : f32 = u_xlat25;
  let x_443 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_441, x_441, x_441) * x_443);
  let x_448 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_448;
  let x_451 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_451;
  let x_454 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_454;
  let x_457 : bool = u_xlatb1.x;
  if (x_457) {
    let x_461 : vec3<f32> = u_xlat15;
    x_458 = x_461;
  } else {
    let x_463 : vec3<f32> = u_xlat5;
    x_458 = x_463;
  }
  let x_464 : vec3<f32> = x_458;
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_465.y, x_464.y, x_464.z);
  let x_468 : f32 = vs_INTERP8.y;
  let x_470 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat15.x = (x_468 * x_470);
  let x_474 : f32 = x_53.unity_MatrixV[0i].z;
  let x_476 : f32 = vs_INTERP8.x;
  let x_479 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_474 * x_476) + x_479);
  let x_483 : f32 = x_53.unity_MatrixV[2i].z;
  let x_485 : f32 = vs_INTERP8.z;
  let x_488 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_483 * x_485) + x_488);
  let x_492 : f32 = u_xlat15.x;
  let x_494 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat15.x = (x_492 + x_494);
  let x_498 : f32 = u_xlat15.x;
  let x_502 : f32 = x_53.x_ProjectionParams.y;
  u_xlat15.x = (-(x_498) + -(x_502));
  let x_507 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_507, 0.0f);
  let x_511 : f32 = u_xlat15.x;
  let x_513 : f32 = x_53.unity_FogParams.x;
  u_xlat15.x = (x_511 * x_513);
  u_xlat4.w = 1.0f;
  let x_519 : vec4<f32> = x_337.unity_SHAr;
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_337.unity_SHAg;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_337.unity_SHAb;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_531, x_532);
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_536.y, x_536.z, x_536.z, x_536.x) * vec4<f32>(x_538.x, x_538.y, x_538.z, x_538.z));
  let x_544 : vec4<f32> = x_337.unity_SHBr;
  let x_545 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_544, x_545);
  let x_550 : vec4<f32> = x_337.unity_SHBg;
  let x_551 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_550, x_551);
  let x_556 : vec4<f32> = x_337.unity_SHBb;
  let x_557 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_556, x_557);
  let x_563 : f32 = u_xlat4.y;
  let x_565 : f32 = u_xlat4.y;
  u_xlat27.x = (x_563 * x_565);
  let x_569 : f32 = u_xlat4.x;
  let x_571 : f32 = u_xlat4.x;
  let x_574 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_569 * x_571) + -(x_574));
  let x_580 : vec4<f32> = x_337.unity_SHC;
  let x_582 : vec2<f32> = u_xlat27;
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582.x, x_582.x, x_582.x)) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec3<f32> = u_xlat5;
  let x_591 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_590 + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_594, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_598 : f32 = u_xlat3.x;
  u_xlat3.x = x_598;
  let x_601 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_601, 0.0f, 1.0f);
  let x_604 : f32 = u_xlat36;
  u_xlat36 = min(x_604, 1.0f);
  let x_606 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_606 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_611 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_611) + 1.0f);
  let x_617 : f32 = u_xlat27.x;
  let x_619 : f32 = u_xlat27.x;
  u_xlat39 = (x_617 * x_619);
  let x_621 : f32 = u_xlat39;
  u_xlat39 = max(x_621, 0.0078125f);
  let x_625 : f32 = u_xlat39;
  let x_626 : f32 = u_xlat39;
  u_xlat40 = (x_625 * x_626);
  let x_629 : f32 = u_xlat3.x;
  u_xlat3.x = (x_629 + 0.04000002145767211914f);
  let x_634 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_634, 1.0f);
  let x_638 : f32 = u_xlat39;
  u_xlat41 = ((x_638 * 4.0f) + 2.0f);
  let x_643 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_643, 1.0f);
  let x_648 : vec4<f32> = vs_INTERP3;
  let x_649 : vec2<f32> = vec2<f32>(x_648.x, x_648.y);
  let x_651 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_649.x, x_649.y, x_651);
  let x_659 : vec3<f32> = txVec1;
  let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
  u_xlat18.x = x_661;
  let x_664 : f32 = u_xlat18.x;
  let x_666 : f32 = x_131.x_MainLightShadowParams.x;
  let x_668 : f32 = u_xlat38;
  u_xlat38 = ((x_664 * x_666) + x_668);
  let x_672 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_672);
  let x_676 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_676 >= 1.0f);
  let x_678 : bool = u_xlatb30;
  let x_679 : bool = u_xlatb18;
  u_xlatb18 = (x_678 | x_679);
  let x_681 : bool = u_xlatb18;
  let x_682 : f32 = u_xlat38;
  u_xlat38 = select(x_682, 1.0f, x_681);
  let x_684 : vec3<f32> = vs_INTERP8;
  let x_686 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat18 = (x_684 + -(x_686));
  let x_689 : vec3<f32> = u_xlat18;
  let x_690 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_689, x_690);
  let x_695 : f32 = u_xlat18.x;
  let x_697 : f32 = x_131.x_MainLightShadowParams.z;
  let x_700 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat30 = ((x_695 * x_697) + x_700);
  let x_702 : f32 = u_xlat30;
  u_xlat30 = clamp(x_702, 0.0f, 1.0f);
  let x_705 : f32 = u_xlat38;
  u_xlat42 = (-(x_705) + 1.0f);
  let x_708 : f32 = u_xlat30;
  let x_709 : f32 = u_xlat42;
  let x_711 : f32 = u_xlat38;
  u_xlat38 = ((x_708 * x_709) + x_711);
  let x_713 : vec4<f32> = u_xlat1;
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(-(vec3<f32>(x_713.x, x_713.z, x_713.w)), vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : f32 = u_xlat30;
  let x_720 : f32 = u_xlat30;
  u_xlat30 = (x_719 + x_720);
  let x_722 : vec4<f32> = u_xlat4;
  let x_724 : f32 = u_xlat30;
  let x_728 : vec4<f32> = u_xlat1;
  let x_731 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * -(vec3<f32>(x_724, x_724, x_724))) + -(vec3<f32>(x_728.x, x_728.z, x_728.w)));
  let x_732 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat4;
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_736.x, x_736.z, x_736.w));
  let x_739 : f32 = u_xlat30;
  u_xlat30 = clamp(x_739, 0.0f, 1.0f);
  let x_741 : f32 = u_xlat30;
  u_xlat30 = (-(x_741) + 1.0f);
  let x_744 : f32 = u_xlat30;
  let x_745 : f32 = u_xlat30;
  u_xlat30 = (x_744 * x_745);
  let x_747 : f32 = u_xlat30;
  let x_748 : f32 = u_xlat30;
  u_xlat30 = (x_747 * x_748);
  let x_751 : f32 = u_xlat27.x;
  u_xlat42 = ((-(x_751) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_758 : f32 = u_xlat27.x;
  let x_759 : f32 = u_xlat42;
  u_xlat27.x = (x_758 * x_759);
  let x_763 : f32 = u_xlat27.x;
  u_xlat27.x = (x_763 * 6.0f);
  let x_775 : vec4<f32> = u_xlat7;
  let x_778 : f32 = u_xlat27.x;
  let x_779 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_775.x, x_775.y, x_775.z), x_778);
  u_xlat7 = x_779;
  let x_781 : f32 = u_xlat7.w;
  u_xlat27.x = (x_781 + -1.0f);
  let x_785 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_787 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_785 * x_787) + 1.0f);
  let x_792 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_792, 0.0f);
  let x_796 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_796);
  let x_800 : f32 = u_xlat27.x;
  let x_802 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_800 * x_802);
  let x_806 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_806);
  let x_810 : f32 = u_xlat27.x;
  let x_812 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_810 * x_812);
  let x_815 : vec4<f32> = u_xlat7;
  let x_817 : vec2<f32> = u_xlat27;
  let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_817.x, x_817.x, x_817.x));
  let x_820 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : f32 = u_xlat39;
  let x_824 : f32 = u_xlat39;
  u_xlat27 = ((vec2<f32>(x_822, x_822) * vec2<f32>(x_824, x_824)) + vec2<f32>(-1.0f, 1.0f));
  let x_830 : f32 = u_xlat27.y;
  u_xlat39 = (1.0f / x_830);
  let x_833 : f32 = u_xlat3.x;
  u_xlat3.x = (x_833 + -0.03999999910593032837f);
  let x_837 : f32 = u_xlat30;
  let x_839 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_837 * x_839) + 0.03999999910593032837f);
  let x_845 : f32 = u_xlat3.x;
  let x_846 : f32 = u_xlat39;
  u_xlat3.x = (x_845 * x_846);
  let x_849 : vec4<f32> = u_xlat3;
  let x_851 : vec4<f32> = u_xlat7;
  let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec3<f32> = u_xlat5;
  let x_857 : vec3<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_856 * x_857) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat38;
  let x_864 : f32 = x_337.unity_LightData.z;
  u_xlat38 = (x_862 * x_864);
  let x_866 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_874 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_874, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat38;
  let x_879 : f32 = u_xlat3.x;
  u_xlat38 = (x_877 * x_879);
  let x_881 : f32 = u_xlat38;
  let x_884 : vec4<f32> = x_53.x_MainLightColor;
  let x_886 : vec3<f32> = (vec3<f32>(x_881, x_881, x_881) * vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : vec4<f32> = u_xlat1;
  let x_893 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat8 = (vec3<f32>(x_890.x, x_890.z, x_890.w) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec3<f32> = u_xlat8;
  let x_897 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_896, x_897);
  let x_899 : f32 = u_xlat38;
  u_xlat38 = max(x_899, 1.17549435e-38f);
  let x_902 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_902);
  let x_904 : f32 = u_xlat38;
  let x_906 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_904, x_904, x_904) * x_906);
  let x_908 : vec4<f32> = u_xlat4;
  let x_910 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), x_910);
  let x_912 : f32 = u_xlat38;
  u_xlat38 = clamp(x_912, 0.0f, 1.0f);
  let x_915 : vec4<f32> = x_53.x_MainLightPosition;
  let x_917 : vec3<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), x_917);
  let x_921 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_921, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat38;
  let x_925 : f32 = u_xlat38;
  u_xlat38 = (x_924 * x_925);
  let x_927 : f32 = u_xlat38;
  let x_929 : f32 = u_xlat27.x;
  u_xlat38 = ((x_927 * x_929) + 1.00001001358032226562f);
  let x_934 : f32 = u_xlat3.x;
  let x_936 : f32 = u_xlat3.x;
  u_xlat3.x = (x_934 * x_936);
  let x_939 : f32 = u_xlat38;
  let x_940 : f32 = u_xlat38;
  u_xlat38 = (x_939 * x_940);
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_943, 0.10000000149011611938f);
  let x_947 : f32 = u_xlat38;
  let x_949 : f32 = u_xlat3.x;
  u_xlat38 = (x_947 * x_949);
  let x_951 : f32 = u_xlat41;
  let x_952 : f32 = u_xlat38;
  u_xlat38 = (x_951 * x_952);
  let x_954 : f32 = u_xlat40;
  let x_955 : f32 = u_xlat38;
  u_xlat38 = (x_954 / x_955);
  let x_957 : f32 = u_xlat38;
  let x_961 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_957, x_957, x_957) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_961);
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec3<f32> = u_xlat8;
  let x_966 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) * x_965);
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_971 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_973 : f32 = x_337.unity_LightData.y;
  u_xlat38 = min(x_971, x_973);
  let x_977 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_977));
  let x_981 : f32 = u_xlat18.x;
  let x_984 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_987 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_981 * x_984) + x_987);
  let x_991 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_991, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1004 : u32 = u_xlatu_loop_1;
    let x_1005 : u32 = u_xlatu38;
    if ((x_1004 < x_1005)) {
    } else {
      break;
    }
    let x_1008 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1008 >> 2u);
    let x_1012 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1012 & 3u));
    let x_1016 : u32 = u_xlatu43;
    let x_1019 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_1016)];
    let x_1029 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1034 : vec4<u32> = indexable[x_1029];
    u_xlat43 = dot(x_1019, bitcast<vec4<f32>>(x_1034));
    let x_1038 : f32 = u_xlat43;
    u_xlati43 = i32(x_1038);
    let x_1040 : vec3<f32> = vs_INTERP8;
    let x_1051 : i32 = u_xlati43;
    let x_1053 : vec4<f32> = x_1050.x_AdditionalLightsPosition[x_1051];
    let x_1056 : i32 = u_xlati43;
    let x_1058 : vec4<f32> = x_1050.x_AdditionalLightsPosition[x_1056];
    u_xlat8 = ((-(x_1040) * vec3<f32>(x_1053.w, x_1053.w, x_1053.w)) + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
    let x_1062 : vec3<f32> = u_xlat8;
    let x_1063 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1062, x_1063);
    let x_1065 : f32 = u_xlat44;
    u_xlat44 = max(x_1065, 0.00006103515625f);
    let x_1069 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_1069);
    let x_1072 : vec3<f32> = u_xlat8;
    let x_1073 : f32 = u_xlat9;
    u_xlat21 = (x_1072 * vec3<f32>(x_1073, x_1073, x_1073));
    let x_1077 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1077);
    let x_1080 : f32 = u_xlat44;
    let x_1081 : i32 = u_xlati43;
    let x_1083 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1081].x;
    u_xlat44 = (x_1080 * x_1083);
    let x_1085 : f32 = u_xlat44;
    let x_1087 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1085) * x_1087) + 1.0f);
    let x_1090 : f32 = u_xlat44;
    u_xlat44 = max(x_1090, 0.0f);
    let x_1092 : f32 = u_xlat44;
    let x_1093 : f32 = u_xlat44;
    u_xlat44 = (x_1092 * x_1093);
    let x_1095 : f32 = u_xlat44;
    let x_1097 : f32 = u_xlat10.x;
    u_xlat44 = (x_1095 * x_1097);
    let x_1099 : i32 = u_xlati43;
    let x_1101 : vec4<f32> = x_1050.x_AdditionalLightsSpotDir[x_1099];
    let x_1103 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), x_1103);
    let x_1107 : f32 = u_xlat10.x;
    let x_1108 : i32 = u_xlati43;
    let x_1110 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1108].z;
    let x_1112 : i32 = u_xlati43;
    let x_1114 : f32 = x_1050.x_AdditionalLightsAttenuation[x_1112].w;
    u_xlat10.x = ((x_1107 * x_1110) + x_1114);
    let x_1118 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1118, 0.0f, 1.0f);
    let x_1122 : f32 = u_xlat10.x;
    let x_1124 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1122 * x_1124);
    let x_1127 : f32 = u_xlat44;
    let x_1129 : f32 = u_xlat10.x;
    u_xlat44 = (x_1127 * x_1129);
    let x_1133 : i32 = u_xlati43;
    let x_1135 : f32 = x_131.x_AdditionalShadowParams[x_1133].w;
    u_xlati10 = i32(x_1135);
    let x_1138 : i32 = u_xlati10;
    u_xlatb22.x = (x_1138 >= 0i);
    let x_1142 : bool = u_xlatb22.x;
    if (x_1142) {
      let x_1146 : i32 = u_xlati43;
      let x_1148 : f32 = x_131.x_AdditionalShadowParams[x_1146].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1148, x_1148, x_1148, x_1148))));
      let x_1155 : bool = u_xlatb22.x;
      if (x_1155) {
        let x_1158 : vec3<f32> = u_xlat21;
        let x_1161 : vec3<f32> = u_xlat21;
        let x_1164 : vec4<bool> = (abs(vec4<f32>(x_1158.z, x_1158.z, x_1158.y, x_1158.y)) >= abs(vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.x)));
        u_xlatb22 = vec3<bool>(x_1164.x, x_1164.y, x_1164.z);
        let x_1167 : bool = u_xlatb22.y;
        let x_1169 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1167 & x_1169);
        let x_1173 : vec3<f32> = u_xlat21;
        let x_1176 : vec4<bool> = (-(vec4<f32>(x_1173.z, x_1173.y, x_1173.x, x_1173.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1176.x, x_1176.y, x_1176.z);
        let x_1180 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1180);
        let x_1185 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1185);
        let x_1191 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1191);
        let x_1194 : bool = u_xlatb22.z;
        if (x_1194) {
          let x_1199 : f32 = u_xlat11.y;
          x_1195 = x_1199;
        } else {
          let x_1201 : f32 = u_xlat34;
          x_1195 = x_1201;
        }
        let x_1202 : f32 = x_1195;
        u_xlat34 = x_1202;
        let x_1205 : bool = u_xlatb22.x;
        if (x_1205) {
          let x_1210 : f32 = u_xlat11.x;
          x_1206 = x_1210;
        } else {
          let x_1212 : f32 = u_xlat34;
          x_1206 = x_1212;
        }
        let x_1213 : f32 = x_1206;
        u_xlat22 = x_1213;
        let x_1214 : i32 = u_xlati43;
        let x_1216 : f32 = x_131.x_AdditionalShadowParams[x_1214].w;
        u_xlat34 = trunc(x_1216);
        let x_1218 : f32 = u_xlat22;
        let x_1219 : f32 = u_xlat34;
        u_xlat22 = (x_1218 + x_1219);
        let x_1221 : f32 = u_xlat22;
        u_xlati10 = i32(x_1221);
      }
      let x_1223 : i32 = u_xlati10;
      u_xlati10 = (x_1223 << bitcast<u32>(2i));
      let x_1225 : vec3<f32> = vs_INTERP8;
      let x_1228 : i32 = u_xlati10;
      let x_1231 : i32 = u_xlati10;
      let x_1235 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1228 + 1i) / 4i)][((x_1231 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1225.y, x_1225.y, x_1225.y, x_1225.y) * x_1235);
      let x_1237 : i32 = u_xlati10;
      let x_1239 : i32 = u_xlati10;
      let x_1242 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1237 / 4i)][(x_1239 % 4i)];
      let x_1243 : vec3<f32> = vs_INTERP8;
      let x_1246 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1242 * vec4<f32>(x_1243.x, x_1243.x, x_1243.x, x_1243.x)) + x_1246);
      let x_1248 : i32 = u_xlati10;
      let x_1251 : i32 = u_xlati10;
      let x_1255 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1248 + 2i) / 4i)][((x_1251 + 2i) % 4i)];
      let x_1256 : vec3<f32> = vs_INTERP8;
      let x_1259 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1255 * vec4<f32>(x_1256.z, x_1256.z, x_1256.z, x_1256.z)) + x_1259);
      let x_1261 : vec4<f32> = u_xlat11;
      let x_1262 : i32 = u_xlati10;
      let x_1265 : i32 = u_xlati10;
      let x_1269 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1262 + 3i) / 4i)][((x_1265 + 3i) % 4i)];
      u_xlat10 = (x_1261 + x_1269);
      let x_1271 : vec4<f32> = u_xlat10;
      let x_1273 : vec4<f32> = u_xlat10;
      let x_1275 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) / vec3<f32>(x_1273.w, x_1273.w, x_1273.w));
      let x_1276 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
      let x_1279 : vec4<f32> = u_xlat10;
      let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
      let x_1282 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
      let x_1290 : vec3<f32> = txVec2;
      let x_1292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
      u_xlat10.x = x_1292;
      let x_1294 : i32 = u_xlati43;
      let x_1296 : f32 = x_131.x_AdditionalShadowParams[x_1294].x;
      u_xlat22 = (1.0f + -(x_1296));
      let x_1300 : f32 = u_xlat10.x;
      let x_1301 : i32 = u_xlati43;
      let x_1303 : f32 = x_131.x_AdditionalShadowParams[x_1301].x;
      let x_1305 : f32 = u_xlat22;
      u_xlat10.x = ((x_1300 * x_1303) + x_1305);
      let x_1309 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1309);
      let x_1314 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1314 >= 1.0f);
      let x_1316 : bool = u_xlatb34;
      let x_1318 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1316 | x_1318);
      let x_1322 : bool = u_xlatb22.x;
      if (x_1322) {
        x_1323 = 1.0f;
      } else {
        let x_1328 : f32 = u_xlat10.x;
        x_1323 = x_1328;
      }
      let x_1329 : f32 = x_1323;
      u_xlat10.x = x_1329;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1334 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1334) + 1.0f);
    let x_1338 : f32 = u_xlat3.x;
    let x_1339 : f32 = u_xlat22;
    let x_1342 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1338 * x_1339) + x_1342);
    let x_1345 : f32 = u_xlat44;
    let x_1347 : f32 = u_xlat10.x;
    u_xlat44 = (x_1345 * x_1347);
    let x_1349 : vec4<f32> = u_xlat4;
    let x_1351 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1349.x, x_1349.y, x_1349.z), x_1351);
    let x_1355 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1355, 0.0f, 1.0f);
    let x_1358 : f32 = u_xlat44;
    let x_1360 : f32 = u_xlat10.x;
    u_xlat44 = (x_1358 * x_1360);
    let x_1362 : f32 = u_xlat44;
    let x_1364 : i32 = u_xlati43;
    let x_1366 : vec4<f32> = x_1050.x_AdditionalLightsColor[x_1364];
    let x_1368 : vec3<f32> = (vec3<f32>(x_1362, x_1362, x_1362) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
    let x_1369 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
    let x_1371 : vec3<f32> = u_xlat8;
    let x_1372 : f32 = u_xlat9;
    let x_1375 : vec4<f32> = u_xlat1;
    u_xlat8 = ((x_1371 * vec3<f32>(x_1372, x_1372, x_1372)) + vec3<f32>(x_1375.x, x_1375.z, x_1375.w));
    let x_1378 : vec3<f32> = u_xlat8;
    let x_1379 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1378, x_1379);
    let x_1381 : f32 = u_xlat43;
    u_xlat43 = max(x_1381, 1.17549435e-38f);
    let x_1383 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1383);
    let x_1385 : f32 = u_xlat43;
    let x_1387 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1385, x_1385, x_1385) * x_1387);
    let x_1389 : vec4<f32> = u_xlat4;
    let x_1391 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), x_1391);
    let x_1393 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1393, 0.0f, 1.0f);
    let x_1395 : vec3<f32> = u_xlat21;
    let x_1396 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1395, x_1396);
    let x_1400 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1400, 0.0f, 1.0f);
    let x_1403 : f32 = u_xlat43;
    let x_1404 : f32 = u_xlat43;
    u_xlat43 = (x_1403 * x_1404);
    let x_1406 : f32 = u_xlat43;
    let x_1408 : f32 = u_xlat27.x;
    u_xlat43 = ((x_1406 * x_1408) + 1.00001001358032226562f);
    let x_1412 : f32 = u_xlat8.x;
    let x_1414 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1412 * x_1414);
    let x_1417 : f32 = u_xlat43;
    let x_1418 : f32 = u_xlat43;
    u_xlat43 = (x_1417 * x_1418);
    let x_1421 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1421, 0.10000000149011611938f);
    let x_1424 : f32 = u_xlat43;
    let x_1426 : f32 = u_xlat8.x;
    u_xlat43 = (x_1424 * x_1426);
    let x_1428 : f32 = u_xlat41;
    let x_1429 : f32 = u_xlat43;
    u_xlat43 = (x_1428 * x_1429);
    let x_1431 : f32 = u_xlat40;
    let x_1432 : f32 = u_xlat43;
    u_xlat43 = (x_1431 / x_1432);
    let x_1434 : f32 = u_xlat43;
    let x_1437 : vec3<f32> = u_xlat2;
    u_xlat8 = ((vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1437);
    let x_1439 : vec3<f32> = u_xlat8;
    let x_1440 : vec4<f32> = u_xlat10;
    let x_1443 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1439 * vec3<f32>(x_1440.x, x_1440.y, x_1440.z)) + x_1443);

    continuing {
      let x_1445 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1445 + bitcast<u32>(1i));
    }
  }
  let x_1447 : vec3<f32> = u_xlat5;
  let x_1448 : vec4<f32> = u_xlat6;
  let x_1451 : vec4<f32> = u_xlat7;
  let x_1453 : vec3<f32> = ((x_1447 * vec3<f32>(x_1448.x, x_1448.x, x_1448.x)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1453.x, x_1454.y, x_1453.y, x_1453.z);
  let x_1456 : vec3<f32> = u_xlat18;
  let x_1457 : vec4<f32> = u_xlat1;
  let x_1459 : vec3<f32> = (x_1456 + vec3<f32>(x_1457.x, x_1457.z, x_1457.w));
  let x_1460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1459.x, x_1460.y, x_1459.y, x_1459.z);
  let x_1462 : vec4<f32> = vs_INTERP6;
  let x_1464 : vec3<f32> = u_xlat0;
  let x_1466 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1462.w, x_1462.w, x_1462.w) * x_1464) + vec3<f32>(x_1466.x, x_1466.z, x_1466.w));
  let x_1470 : f32 = u_xlat15.x;
  let x_1472 : f32 = u_xlat15.x;
  u_xlat1.x = (x_1470 * -(x_1472));
  let x_1477 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1477);
  let x_1480 : vec3<f32> = u_xlat0;
  let x_1483 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_1480 + -(vec3<f32>(x_1483.x, x_1483.y, x_1483.z)));
  let x_1489 : vec4<f32> = u_xlat1;
  let x_1491 : vec3<f32> = u_xlat0;
  let x_1494 : vec4<f32> = x_53.unity_FogColor;
  let x_1496 : vec3<f32> = ((vec3<f32>(x_1489.x, x_1489.x, x_1489.x) * x_1491) + vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1497 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : bool = u_xlatb13;
  let x_1500 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1500, x_1499);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


