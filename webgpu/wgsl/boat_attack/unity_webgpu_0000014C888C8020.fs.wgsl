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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu38 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1040 : AdditionalLights;

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

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_448 : f32;
  var x_461 : f32;
  var x_473 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1180 : f32;
  var x_1191 : f32;
  var txVec2 : vec3<f32>;
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
  let x_447 : bool = u_xlatb1.x;
  if (x_447) {
    let x_452 : f32 = u_xlat15.x;
    x_448 = x_452;
  } else {
    let x_456 : f32 = x_53.unity_MatrixV[0i].z;
    x_448 = x_456;
  }
  let x_457 : f32 = x_448;
  u_xlat5.x = x_457;
  let x_460 : bool = u_xlatb1.x;
  if (x_460) {
    let x_465 : f32 = u_xlat15.y;
    x_461 = x_465;
  } else {
    let x_468 : f32 = x_53.unity_MatrixV[1i].z;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat5.y = x_469;
  let x_472 : bool = u_xlatb1.x;
  if (x_472) {
    let x_477 : f32 = u_xlat15.z;
    x_473 = x_477;
  } else {
    let x_480 : f32 = x_53.unity_MatrixV[2i].z;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat5.z = x_481;
  u_xlat4.w = 1.0f;
  let x_487 : vec4<f32> = x_337.unity_SHAr;
  let x_488 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_487, x_488);
  let x_493 : vec4<f32> = x_337.unity_SHAg;
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_493, x_494);
  let x_499 : vec4<f32> = x_337.unity_SHAb;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_499, x_500);
  let x_504 : vec4<f32> = u_xlat4;
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_504.y, x_504.z, x_504.z, x_504.x) * vec4<f32>(x_506.x, x_506.y, x_506.z, x_506.z));
  let x_512 : vec4<f32> = x_337.unity_SHBr;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_512, x_513);
  let x_518 : vec4<f32> = x_337.unity_SHBg;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_518, x_519);
  let x_524 : vec4<f32> = x_337.unity_SHBb;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_524, x_525);
  let x_529 : f32 = u_xlat4.y;
  let x_531 : f32 = u_xlat4.y;
  u_xlat1.x = (x_529 * x_531);
  let x_535 : f32 = u_xlat4.x;
  let x_537 : f32 = u_xlat4.x;
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_535 * x_537) + -(x_540));
  let x_546 : vec4<f32> = x_337.unity_SHC;
  let x_548 : vec4<f32> = u_xlat1;
  let x_551 : vec4<f32> = u_xlat8;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_553.x, x_554.y, x_553.y, x_553.z);
  let x_556 : vec4<f32> = u_xlat1;
  let x_558 : vec3<f32> = u_xlat6;
  let x_559 : vec3<f32> = (vec3<f32>(x_556.x, x_556.z, x_556.w) + x_558);
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_559.z);
  let x_562 : vec4<f32> = u_xlat1;
  let x_565 : vec3<f32> = max(vec3<f32>(x_562.x, x_562.z, x_562.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_566.y, x_565.y, x_565.z);
  let x_569 : f32 = u_xlat3.x;
  u_xlat3.x = x_569;
  let x_572 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_572, 0.0f, 1.0f);
  let x_575 : f32 = u_xlat36;
  u_xlat36 = min(x_575, 1.0f);
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_577 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_582 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_582) + 1.0f);
  let x_588 : f32 = u_xlat15.x;
  let x_590 : f32 = u_xlat15.x;
  u_xlat27 = (x_588 * x_590);
  let x_592 : f32 = u_xlat27;
  u_xlat27 = max(x_592, 0.0078125f);
  let x_596 : f32 = u_xlat27;
  let x_597 : f32 = u_xlat27;
  u_xlat39 = (x_596 * x_597);
  let x_600 : f32 = u_xlat3.x;
  u_xlat3.x = (x_600 + 0.04000002145767211914f);
  let x_605 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_605, 1.0f);
  let x_609 : f32 = u_xlat27;
  u_xlat40 = ((x_609 * 4.0f) + 2.0f);
  let x_615 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_615, 1.0f);
  let x_619 : vec4<f32> = vs_INTERP3;
  let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
  let x_622 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_620.x, x_620.y, x_622);
  let x_629 : vec3<f32> = txVec1;
  let x_631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_629.xy, x_629.z);
  u_xlat6.x = x_631;
  let x_634 : f32 = u_xlat6.x;
  let x_636 : f32 = x_131.x_MainLightShadowParams.x;
  let x_638 : f32 = u_xlat38;
  u_xlat38 = ((x_634 * x_636) + x_638);
  let x_642 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_642);
  let x_646 : f32 = vs_INTERP3.z;
  u_xlatb18 = (x_646 >= 1.0f);
  let x_648 : bool = u_xlatb18;
  let x_649 : bool = u_xlatb6;
  u_xlatb6 = (x_648 | x_649);
  let x_651 : bool = u_xlatb6;
  let x_652 : f32 = u_xlat38;
  u_xlat38 = select(x_652, 1.0f, x_651);
  let x_654 : vec3<f32> = vs_INTERP8;
  let x_656 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_654 + -(x_656));
  let x_659 : vec3<f32> = u_xlat6;
  let x_660 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_659, x_660);
  let x_665 : f32 = u_xlat6.x;
  let x_667 : f32 = x_131.x_MainLightShadowParams.z;
  let x_670 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_665 * x_667) + x_670);
  let x_674 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_674, 0.0f, 1.0f);
  let x_678 : f32 = u_xlat38;
  u_xlat30 = (-(x_678) + 1.0f);
  let x_682 : f32 = u_xlat18.x;
  let x_683 : f32 = u_xlat30;
  let x_685 : f32 = u_xlat38;
  u_xlat38 = ((x_682 * x_683) + x_685);
  let x_687 : vec3<f32> = u_xlat5;
  let x_689 : vec4<f32> = u_xlat4;
  u_xlat18.x = dot(-(x_687), vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_694 : f32 = u_xlat18.x;
  let x_696 : f32 = u_xlat18.x;
  u_xlat18.x = (x_694 + x_696);
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = u_xlat18;
  let x_705 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * -(vec3<f32>(x_701.x, x_701.x, x_701.x))) + -(x_705));
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_708.x, x_708.y, x_708.z), x_710);
  let x_714 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_714, 0.0f, 1.0f);
  let x_718 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_718) + 1.0f);
  let x_723 : f32 = u_xlat7.x;
  let x_725 : f32 = u_xlat7.x;
  u_xlat7.x = (x_723 * x_725);
  let x_729 : f32 = u_xlat7.x;
  let x_731 : f32 = u_xlat7.x;
  u_xlat7.x = (x_729 * x_731);
  let x_736 : f32 = u_xlat15.x;
  u_xlat19 = ((-(x_736) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_743 : f32 = u_xlat15.x;
  let x_744 : f32 = u_xlat19;
  u_xlat15.x = (x_743 * x_744);
  let x_748 : f32 = u_xlat15.x;
  u_xlat15.x = (x_748 * 6.0f);
  let x_760 : vec3<f32> = u_xlat18;
  let x_762 : f32 = u_xlat15.x;
  let x_763 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_760, x_762);
  u_xlat8 = x_763;
  let x_765 : f32 = u_xlat8.w;
  u_xlat15.x = (x_765 + -1.0f);
  let x_769 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_771 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_769 * x_771) + 1.0f);
  let x_776 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_776, 0.0f);
  let x_780 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_780);
  let x_784 : f32 = u_xlat15.x;
  let x_786 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_784 * x_786);
  let x_790 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_790);
  let x_794 : f32 = u_xlat15.x;
  let x_796 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_794 * x_796);
  let x_799 : vec4<f32> = u_xlat8;
  let x_801 : vec3<f32> = u_xlat15;
  u_xlat18 = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801.x, x_801.x, x_801.x));
  let x_804 : f32 = u_xlat27;
  let x_806 : f32 = u_xlat27;
  let x_810 : vec2<f32> = ((vec2<f32>(x_804, x_804) * vec2<f32>(x_806, x_806)) + vec2<f32>(-1.0f, 1.0f));
  let x_811 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_810.x, x_810.y, x_811.z);
  let x_814 : f32 = u_xlat15.y;
  u_xlat27 = (1.0f / x_814);
  let x_817 : f32 = u_xlat3.x;
  u_xlat3.x = (x_817 + -0.03999999910593032837f);
  let x_822 : f32 = u_xlat7.x;
  let x_824 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_822 * x_824) + 0.03999999910593032837f);
  let x_830 : f32 = u_xlat3.x;
  let x_831 : f32 = u_xlat27;
  u_xlat3.x = (x_830 * x_831);
  let x_834 : vec4<f32> = u_xlat3;
  let x_836 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_834.x, x_834.x, x_834.x) * x_836);
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = u_xlat2;
  let x_842 : vec3<f32> = u_xlat18;
  let x_843 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.z, x_838.w) * x_840) + x_842);
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_844.y, x_843.y, x_843.z);
  let x_846 : f32 = u_xlat38;
  let x_848 : f32 = x_337.unity_LightData.z;
  u_xlat38 = (x_846 * x_848);
  let x_850 : vec4<f32> = u_xlat4;
  let x_853 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_858 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_858, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat38;
  let x_863 : f32 = u_xlat3.x;
  u_xlat38 = (x_861 * x_863);
  let x_865 : f32 = u_xlat38;
  let x_868 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_865, x_865, x_865) * vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec3<f32> = u_xlat5;
  let x_873 : vec4<f32> = x_53.x_MainLightPosition;
  let x_875 : vec3<f32> = (x_871 + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat7;
  let x_880 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : f32 = u_xlat38;
  u_xlat38 = max(x_883, 1.17549435e-38f);
  let x_886 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_886);
  let x_888 : f32 = u_xlat38;
  let x_890 : vec4<f32> = u_xlat7;
  let x_892 : vec3<f32> = (vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat4;
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : f32 = u_xlat38;
  u_xlat38 = clamp(x_900, 0.0f, 1.0f);
  let x_903 : vec4<f32> = x_53.x_MainLightPosition;
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_910 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_910, 0.0f, 1.0f);
  let x_913 : f32 = u_xlat38;
  let x_914 : f32 = u_xlat38;
  u_xlat38 = (x_913 * x_914);
  let x_916 : f32 = u_xlat38;
  let x_918 : f32 = u_xlat15.x;
  u_xlat38 = ((x_916 * x_918) + 1.00001001358032226562f);
  let x_923 : f32 = u_xlat3.x;
  let x_925 : f32 = u_xlat3.x;
  u_xlat3.x = (x_923 * x_925);
  let x_928 : f32 = u_xlat38;
  let x_929 : f32 = u_xlat38;
  u_xlat38 = (x_928 * x_929);
  let x_932 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_932, 0.10000000149011611938f);
  let x_936 : f32 = u_xlat38;
  let x_938 : f32 = u_xlat3.x;
  u_xlat38 = (x_936 * x_938);
  let x_940 : f32 = u_xlat40;
  let x_941 : f32 = u_xlat38;
  u_xlat38 = (x_940 * x_941);
  let x_943 : f32 = u_xlat39;
  let x_944 : f32 = u_xlat38;
  u_xlat38 = (x_943 / x_944);
  let x_946 : f32 = u_xlat38;
  let x_950 : vec3<f32> = u_xlat2;
  let x_951 : vec3<f32> = ((vec3<f32>(x_946, x_946, x_946) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_950);
  let x_952 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec3<f32> = u_xlat18;
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_954 * vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_960 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_962 : f32 = x_337.unity_LightData.y;
  u_xlat38 = min(x_960, x_962);
  let x_966 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_966));
  let x_970 : f32 = u_xlat6.x;
  let x_973 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_976 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_970 * x_973) + x_976);
  let x_980 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_980, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_993 : u32 = u_xlatu_loop_1;
    let x_994 : u32 = u_xlatu38;
    if ((x_993 < x_994)) {
    } else {
      break;
    }
    let x_997 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_997 >> 2u);
    let x_1001 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1001 & 3u));
    let x_1004 : u32 = u_xlatu6;
    let x_1007 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_1004)];
    let x_1017 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1022 : vec4<u32> = indexable[x_1017];
    u_xlat6.x = dot(x_1007, bitcast<vec4<f32>>(x_1022));
    let x_1028 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1028);
    let x_1030 : vec3<f32> = vs_INTERP8;
    let x_1041 : i32 = u_xlati6;
    let x_1043 : vec4<f32> = x_1040.x_AdditionalLightsPosition[x_1041];
    let x_1046 : i32 = u_xlati6;
    let x_1048 : vec4<f32> = x_1040.x_AdditionalLightsPosition[x_1046];
    let x_1050 : vec3<f32> = ((-(x_1030) * vec3<f32>(x_1043.w, x_1043.w, x_1043.w)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1051 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
    let x_1054 : vec4<f32> = u_xlat8;
    let x_1056 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
    let x_1059 : f32 = u_xlat43;
    u_xlat43 = max(x_1059, 0.00006103515625f);
    let x_1063 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1063);
    let x_1066 : f32 = u_xlat44;
    let x_1068 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1072 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1072);
    let x_1074 : f32 = u_xlat43;
    let x_1075 : i32 = u_xlati6;
    let x_1077 : f32 = x_1040.x_AdditionalLightsAttenuation[x_1075].x;
    u_xlat43 = (x_1074 * x_1077);
    let x_1079 : f32 = u_xlat43;
    let x_1081 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1079) * x_1081) + 1.0f);
    let x_1084 : f32 = u_xlat43;
    u_xlat43 = max(x_1084, 0.0f);
    let x_1086 : f32 = u_xlat43;
    let x_1087 : f32 = u_xlat43;
    u_xlat43 = (x_1086 * x_1087);
    let x_1089 : f32 = u_xlat43;
    let x_1090 : f32 = u_xlat45;
    u_xlat43 = (x_1089 * x_1090);
    let x_1092 : i32 = u_xlati6;
    let x_1094 : vec4<f32> = x_1040.x_AdditionalLightsSpotDir[x_1092];
    let x_1096 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1094.x, x_1094.y, x_1094.z), x_1096);
    let x_1098 : f32 = u_xlat45;
    let x_1099 : i32 = u_xlati6;
    let x_1101 : f32 = x_1040.x_AdditionalLightsAttenuation[x_1099].z;
    let x_1103 : i32 = u_xlati6;
    let x_1105 : f32 = x_1040.x_AdditionalLightsAttenuation[x_1103].w;
    u_xlat45 = ((x_1098 * x_1101) + x_1105);
    let x_1107 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1107, 0.0f, 1.0f);
    let x_1109 : f32 = u_xlat45;
    let x_1110 : f32 = u_xlat45;
    u_xlat45 = (x_1109 * x_1110);
    let x_1112 : f32 = u_xlat43;
    let x_1113 : f32 = u_xlat45;
    u_xlat43 = (x_1112 * x_1113);
    let x_1117 : i32 = u_xlati6;
    let x_1119 : f32 = x_131.x_AdditionalShadowParams[x_1117].w;
    u_xlati45 = i32(x_1119);
    let x_1122 : i32 = u_xlati45;
    u_xlatb10.x = (x_1122 >= 0i);
    let x_1126 : bool = u_xlatb10.x;
    if (x_1126) {
      let x_1130 : i32 = u_xlati6;
      let x_1132 : f32 = x_131.x_AdditionalShadowParams[x_1130].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1132, x_1132, x_1132, x_1132))));
      let x_1139 : bool = u_xlatb10.x;
      if (x_1139) {
        let x_1142 : vec3<f32> = u_xlat9;
        let x_1145 : vec3<f32> = u_xlat9;
        let x_1148 : vec4<bool> = (abs(vec4<f32>(x_1142.z, x_1142.z, x_1142.y, x_1142.z)) >= abs(vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.x)));
        u_xlatb10 = vec3<bool>(x_1148.x, x_1148.y, x_1148.z);
        let x_1151 : bool = u_xlatb10.y;
        let x_1153 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1151 & x_1153);
        let x_1157 : vec3<f32> = u_xlat9;
        let x_1160 : vec4<bool> = (-(vec4<f32>(x_1157.z, x_1157.y, x_1157.x, x_1157.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1160.x, x_1160.y, x_1160.z);
        let x_1164 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1164);
        let x_1169 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1169);
        let x_1175 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1175);
        let x_1179 : bool = u_xlatb10.z;
        if (x_1179) {
          let x_1184 : f32 = u_xlat22.z;
          x_1180 = x_1184;
        } else {
          let x_1186 : f32 = u_xlat11;
          x_1180 = x_1186;
        }
        let x_1187 : f32 = x_1180;
        u_xlat34 = x_1187;
        let x_1190 : bool = u_xlatb10.x;
        if (x_1190) {
          let x_1195 : f32 = u_xlat22.x;
          x_1191 = x_1195;
        } else {
          let x_1197 : f32 = u_xlat34;
          x_1191 = x_1197;
        }
        let x_1198 : f32 = x_1191;
        u_xlat10.x = x_1198;
        let x_1200 : i32 = u_xlati6;
        let x_1202 : f32 = x_131.x_AdditionalShadowParams[x_1200].w;
        u_xlat22.x = trunc(x_1202);
        let x_1206 : f32 = u_xlat10.x;
        let x_1208 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1206 + x_1208);
        let x_1212 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1212);
      }
      let x_1214 : i32 = u_xlati45;
      u_xlati45 = (x_1214 << bitcast<u32>(2i));
      let x_1216 : vec3<f32> = vs_INTERP8;
      let x_1219 : i32 = u_xlati45;
      let x_1222 : i32 = u_xlati45;
      let x_1226 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1219 + 1i) / 4i)][((x_1222 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1216.y, x_1216.y, x_1216.y, x_1216.y) * x_1226);
      let x_1228 : i32 = u_xlati45;
      let x_1230 : i32 = u_xlati45;
      let x_1233 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1228 / 4i)][(x_1230 % 4i)];
      let x_1234 : vec3<f32> = vs_INTERP8;
      let x_1237 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1233 * vec4<f32>(x_1234.x, x_1234.x, x_1234.x, x_1234.x)) + x_1237);
      let x_1239 : i32 = u_xlati45;
      let x_1242 : i32 = u_xlati45;
      let x_1246 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1239 + 2i) / 4i)][((x_1242 + 2i) % 4i)];
      let x_1247 : vec3<f32> = vs_INTERP8;
      let x_1250 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1246 * vec4<f32>(x_1247.z, x_1247.z, x_1247.z, x_1247.z)) + x_1250);
      let x_1252 : vec4<f32> = u_xlat10;
      let x_1253 : i32 = u_xlati45;
      let x_1256 : i32 = u_xlati45;
      let x_1260 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1253 + 3i) / 4i)][((x_1256 + 3i) % 4i)];
      u_xlat10 = (x_1252 + x_1260);
      let x_1262 : vec4<f32> = u_xlat10;
      let x_1264 : vec4<f32> = u_xlat10;
      let x_1266 : vec3<f32> = (vec3<f32>(x_1262.x, x_1262.y, x_1262.z) / vec3<f32>(x_1264.w, x_1264.w, x_1264.w));
      let x_1267 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
      let x_1270 : vec4<f32> = u_xlat10;
      let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
      let x_1273 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
      let x_1281 : vec3<f32> = txVec2;
      let x_1283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
      u_xlat45 = x_1283;
      let x_1284 : i32 = u_xlati6;
      let x_1286 : f32 = x_131.x_AdditionalShadowParams[x_1284].x;
      u_xlat10.x = (1.0f + -(x_1286));
      let x_1290 : f32 = u_xlat45;
      let x_1291 : i32 = u_xlati6;
      let x_1293 : f32 = x_131.x_AdditionalShadowParams[x_1291].x;
      let x_1296 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1290 * x_1293) + x_1296);
      let x_1299 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1299);
      let x_1304 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1304 >= 1.0f);
      let x_1306 : bool = u_xlatb22;
      let x_1308 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1306 | x_1308);
      let x_1312 : bool = u_xlatb10.x;
      let x_1313 : f32 = u_xlat45;
      u_xlat45 = select(x_1313, 1.0f, x_1312);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1316 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1316) + 1.0f);
    let x_1321 : f32 = u_xlat3.x;
    let x_1323 : f32 = u_xlat10.x;
    let x_1325 : f32 = u_xlat45;
    u_xlat45 = ((x_1321 * x_1323) + x_1325);
    let x_1327 : f32 = u_xlat43;
    let x_1328 : f32 = u_xlat45;
    u_xlat43 = (x_1327 * x_1328);
    let x_1330 : vec4<f32> = u_xlat4;
    let x_1332 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), x_1332);
    let x_1334 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1334, 0.0f, 1.0f);
    let x_1336 : f32 = u_xlat43;
    let x_1337 : f32 = u_xlat45;
    u_xlat43 = (x_1336 * x_1337);
    let x_1339 : f32 = u_xlat43;
    let x_1341 : i32 = u_xlati6;
    let x_1343 : vec4<f32> = x_1040.x_AdditionalLightsColor[x_1341];
    let x_1345 : vec3<f32> = (vec3<f32>(x_1339, x_1339, x_1339) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec4<f32> = u_xlat8;
    let x_1350 : f32 = u_xlat44;
    let x_1353 : vec3<f32> = u_xlat5;
    let x_1354 : vec3<f32> = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350, x_1350, x_1350)) + x_1353);
    let x_1355 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
    let x_1357 : vec4<f32> = u_xlat8;
    let x_1359 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1357.x, x_1357.y, x_1357.z), vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
    let x_1364 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1364, 1.17549435e-38f);
    let x_1368 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1368);
    let x_1371 : vec3<f32> = u_xlat6;
    let x_1373 : vec4<f32> = u_xlat8;
    let x_1375 : vec3<f32> = (vec3<f32>(x_1371.x, x_1371.x, x_1371.x) * vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
    let x_1378 : vec4<f32> = u_xlat4;
    let x_1380 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1378.x, x_1378.y, x_1378.z), vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
    let x_1385 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1385, 0.0f, 1.0f);
    let x_1388 : vec3<f32> = u_xlat9;
    let x_1389 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1388, vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
    let x_1392 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1392, 0.0f, 1.0f);
    let x_1395 : f32 = u_xlat6.x;
    let x_1397 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1395 * x_1397);
    let x_1401 : f32 = u_xlat6.x;
    let x_1403 : f32 = u_xlat15.x;
    u_xlat6.x = ((x_1401 * x_1403) + 1.00001001358032226562f);
    let x_1407 : f32 = u_xlat43;
    let x_1408 : f32 = u_xlat43;
    u_xlat43 = (x_1407 * x_1408);
    let x_1411 : f32 = u_xlat6.x;
    let x_1413 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1411 * x_1413);
    let x_1416 : f32 = u_xlat43;
    u_xlat43 = max(x_1416, 0.10000000149011611938f);
    let x_1419 : f32 = u_xlat6.x;
    let x_1420 : f32 = u_xlat43;
    u_xlat6.x = (x_1419 * x_1420);
    let x_1423 : f32 = u_xlat40;
    let x_1425 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1423 * x_1425);
    let x_1428 : f32 = u_xlat39;
    let x_1430 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1428 / x_1430);
    let x_1433 : vec3<f32> = u_xlat6;
    let x_1436 : vec3<f32> = u_xlat2;
    let x_1437 : vec3<f32> = ((vec3<f32>(x_1433.x, x_1433.x, x_1433.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1436);
    let x_1438 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
    let x_1440 : vec4<f32> = u_xlat8;
    let x_1442 : vec4<f32> = u_xlat10;
    let x_1445 : vec4<f32> = u_xlat7;
    let x_1447 : vec3<f32> = ((vec3<f32>(x_1440.x, x_1440.y, x_1440.z) * vec3<f32>(x_1442.x, x_1442.y, x_1442.z)) + vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
    let x_1448 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);

    continuing {
      let x_1450 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1450 + bitcast<u32>(1i));
    }
  }
  let x_1452 : vec4<f32> = u_xlat1;
  let x_1454 : f32 = u_xlat41;
  let x_1457 : vec3<f32> = u_xlat18;
  let x_1458 : vec3<f32> = ((vec3<f32>(x_1452.x, x_1452.z, x_1452.w) * vec3<f32>(x_1454, x_1454, x_1454)) + x_1457);
  let x_1459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1458.x, x_1459.y, x_1458.y, x_1458.z);
  let x_1461 : vec4<f32> = u_xlat7;
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1465 : vec3<f32> = (vec3<f32>(x_1461.x, x_1461.y, x_1461.z) + vec3<f32>(x_1463.x, x_1463.z, x_1463.w));
  let x_1466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1465.z);
  let x_1470 : vec4<f32> = vs_INTERP6;
  let x_1472 : vec3<f32> = u_xlat0;
  let x_1474 : vec4<f32> = u_xlat1;
  let x_1476 : vec3<f32> = ((vec3<f32>(x_1470.w, x_1470.w, x_1470.w) * x_1472) + vec3<f32>(x_1474.x, x_1474.z, x_1474.w));
  let x_1477 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1479 : bool = u_xlatb13;
  let x_1480 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1480, x_1479);
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


