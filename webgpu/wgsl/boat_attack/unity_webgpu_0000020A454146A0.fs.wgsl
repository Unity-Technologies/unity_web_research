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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb15 : bool;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat39 : f32;

var<private> u_xlatu38 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_984 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_455 : f32;
  var x_467 : f32;
  var x_478 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1124 : f32;
  var x_1135 : f32;
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
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_421.z);
  let x_427 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb15 = (x_427 == 0.0f);
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_434 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_435 : vec3<f32> = (-(x_429) + x_434);
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_444);
  let x_446 : f32 = u_xlat27;
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec3<f32> = (vec3<f32>(x_446, x_446, x_446) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : bool = u_xlatb15;
  if (x_454) {
    let x_459 : f32 = u_xlat4.x;
    x_455 = x_459;
  } else {
    let x_463 : f32 = x_53.unity_MatrixV[0i].z;
    x_455 = x_463;
  }
  let x_464 : f32 = x_455;
  u_xlat5.x = x_464;
  let x_466 : bool = u_xlatb15;
  if (x_466) {
    let x_471 : f32 = u_xlat4.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = x_53.unity_MatrixV[1i].z;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat5.y = x_475;
  let x_477 : bool = u_xlatb15;
  if (x_477) {
    let x_482 : f32 = u_xlat4.z;
    x_478 = x_482;
  } else {
    let x_485 : f32 = x_53.unity_MatrixV[2i].z;
    x_478 = x_485;
  }
  let x_486 : f32 = x_478;
  u_xlat5.z = x_486;
  let x_495 : vec2<f32> = vs_INTERP0;
  let x_497 : f32 = x_53.x_GlobalMipBias.x;
  let x_498 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_495, x_497);
  u_xlat4 = x_498;
  let x_503 : vec2<f32> = vs_INTERP0;
  let x_505 : f32 = x_53.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_503, x_505);
  u_xlat15 = vec3<f32>(x_506.x, x_506.y, x_506.z);
  let x_508 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_515.x, x_515.z, x_515.w), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_522 : f32 = u_xlat4.x;
  u_xlat4.x = (x_522 + 0.5f);
  let x_525 : vec3<f32> = u_xlat15;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_525 * vec3<f32>(x_526.x, x_526.x, x_526.x));
  let x_530 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_530, 0.00009999999747378752f);
  let x_533 : vec3<f32> = u_xlat15;
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_533 / vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = u_xlat3.x;
  u_xlat3.x = x_538;
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_541, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat36;
  u_xlat36 = min(x_544, 1.0f);
  let x_546 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_546 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_551 : f32 = u_xlat3.x;
  u_xlat4.x = (-(x_551) + 1.0f);
  let x_557 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat4.x;
  u_xlat16 = (x_557 * x_559);
  let x_561 : f32 = u_xlat16;
  u_xlat16 = max(x_561, 0.0078125f);
  let x_565 : f32 = u_xlat16;
  let x_566 : f32 = u_xlat16;
  u_xlat28 = (x_565 * x_566);
  let x_569 : f32 = u_xlat3.x;
  u_xlat3.x = (x_569 + 0.04000002145767211914f);
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_574, 1.0f);
  let x_578 : f32 = u_xlat16;
  u_xlat40 = ((x_578 * 4.0f) + 2.0f);
  let x_584 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_584, 1.0f);
  let x_588 : vec4<f32> = vs_INTERP3;
  let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
  let x_591 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_589.x, x_589.y, x_591);
  let x_599 : vec3<f32> = txVec1;
  let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
  u_xlat6.x = x_601;
  let x_604 : f32 = u_xlat6.x;
  let x_606 : f32 = x_131.x_MainLightShadowParams.x;
  let x_608 : f32 = u_xlat38;
  u_xlat38 = ((x_604 * x_606) + x_608);
  let x_612 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_612);
  let x_616 : f32 = vs_INTERP3.z;
  u_xlatb18 = (x_616 >= 1.0f);
  let x_618 : bool = u_xlatb18;
  let x_619 : bool = u_xlatb6;
  u_xlatb6 = (x_618 | x_619);
  let x_621 : bool = u_xlatb6;
  let x_622 : f32 = u_xlat38;
  u_xlat38 = select(x_622, 1.0f, x_621);
  let x_624 : vec3<f32> = vs_INTERP8;
  let x_626 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_624 + -(x_626));
  let x_629 : vec3<f32> = u_xlat6;
  let x_630 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_629, x_630);
  let x_635 : f32 = u_xlat6.x;
  let x_637 : f32 = x_131.x_MainLightShadowParams.z;
  let x_640 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_635 * x_637) + x_640);
  let x_644 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_644, 0.0f, 1.0f);
  let x_648 : f32 = u_xlat38;
  u_xlat30 = (-(x_648) + 1.0f);
  let x_652 : f32 = u_xlat18.x;
  let x_653 : f32 = u_xlat30;
  let x_655 : f32 = u_xlat38;
  u_xlat38 = ((x_652 * x_653) + x_655);
  let x_657 : vec3<f32> = u_xlat5;
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat18.x = dot(-(x_657), vec3<f32>(x_659.x, x_659.z, x_659.w));
  let x_664 : f32 = u_xlat18.x;
  let x_666 : f32 = u_xlat18.x;
  u_xlat18.x = (x_664 + x_666);
  let x_669 : vec4<f32> = u_xlat1;
  let x_671 : vec3<f32> = u_xlat18;
  let x_675 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_669.x, x_669.z, x_669.w) * -(vec3<f32>(x_671.x, x_671.x, x_671.x))) + -(x_675));
  let x_679 : vec4<f32> = u_xlat1;
  let x_681 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_679.x, x_679.z, x_679.w), x_681);
  let x_685 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_685, 0.0f, 1.0f);
  let x_689 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_689) + 1.0f);
  let x_694 : f32 = u_xlat7.x;
  let x_696 : f32 = u_xlat7.x;
  u_xlat7.x = (x_694 * x_696);
  let x_700 : f32 = u_xlat7.x;
  let x_702 : f32 = u_xlat7.x;
  u_xlat7.x = (x_700 * x_702);
  let x_707 : f32 = u_xlat4.x;
  u_xlat19 = ((-(x_707) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_714 : f32 = u_xlat4.x;
  let x_715 : f32 = u_xlat19;
  u_xlat4.x = (x_714 * x_715);
  let x_719 : f32 = u_xlat4.x;
  u_xlat4.x = (x_719 * 6.0f);
  let x_732 : vec3<f32> = u_xlat18;
  let x_734 : f32 = u_xlat4.x;
  let x_735 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_732, x_734);
  u_xlat8 = x_735;
  let x_737 : f32 = u_xlat8.w;
  u_xlat4.x = (x_737 + -1.0f);
  let x_741 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_743 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_741 * x_743) + 1.0f);
  let x_748 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_748, 0.0f);
  let x_752 : f32 = u_xlat4.x;
  u_xlat4.x = log2(x_752);
  let x_756 : f32 = u_xlat4.x;
  let x_758 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat4.x = (x_756 * x_758);
  let x_762 : f32 = u_xlat4.x;
  u_xlat4.x = exp2(x_762);
  let x_766 : f32 = u_xlat4.x;
  let x_768 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat4.x = (x_766 * x_768);
  let x_771 : vec4<f32> = u_xlat8;
  let x_773 : vec4<f32> = u_xlat4;
  u_xlat18 = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773.x, x_773.x, x_773.x));
  let x_776 : f32 = u_xlat16;
  let x_778 : f32 = u_xlat16;
  let x_782 : vec2<f32> = ((vec2<f32>(x_776, x_776) * vec2<f32>(x_778, x_778)) + vec2<f32>(-1.0f, 1.0f));
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_786 : f32 = u_xlat4.y;
  u_xlat16 = (1.0f / x_786);
  let x_789 : f32 = u_xlat3.x;
  u_xlat3.x = (x_789 + -0.03999999910593032837f);
  let x_794 : f32 = u_xlat7.x;
  let x_796 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_794 * x_796) + 0.03999999910593032837f);
  let x_802 : f32 = u_xlat3.x;
  let x_803 : f32 = u_xlat16;
  u_xlat3.x = (x_802 * x_803);
  let x_806 : vec4<f32> = u_xlat3;
  let x_808 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_806.x, x_806.x, x_806.x) * x_808);
  let x_810 : vec3<f32> = u_xlat15;
  let x_811 : vec3<f32> = u_xlat2;
  let x_813 : vec3<f32> = u_xlat18;
  let x_814 : vec3<f32> = ((x_810 * x_811) + x_813);
  let x_815 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : f32 = u_xlat38;
  let x_819 : f32 = x_337.unity_LightData.z;
  u_xlat38 = (x_817 * x_819);
  let x_822 : vec4<f32> = u_xlat1;
  let x_825 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_822.x, x_822.z, x_822.w), vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : f32 = u_xlat39;
  u_xlat39 = clamp(x_828, 0.0f, 1.0f);
  let x_830 : f32 = u_xlat38;
  let x_831 : f32 = u_xlat39;
  u_xlat38 = (x_830 * x_831);
  let x_833 : f32 = u_xlat38;
  let x_836 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_833, x_833, x_833) * vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec3<f32> = u_xlat5;
  let x_841 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat7 = (x_839 + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec3<f32> = u_xlat7;
  let x_845 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_844, x_845);
  let x_847 : f32 = u_xlat38;
  u_xlat38 = max(x_847, 1.17549435e-38f);
  let x_850 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_850);
  let x_852 : f32 = u_xlat38;
  let x_854 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_852, x_852, x_852) * x_854);
  let x_856 : vec4<f32> = u_xlat1;
  let x_858 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_856.x, x_856.z, x_856.w), x_858);
  let x_860 : f32 = u_xlat38;
  u_xlat38 = clamp(x_860, 0.0f, 1.0f);
  let x_863 : vec4<f32> = x_53.x_MainLightPosition;
  let x_865 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), x_865);
  let x_867 : f32 = u_xlat39;
  u_xlat39 = clamp(x_867, 0.0f, 1.0f);
  let x_869 : f32 = u_xlat38;
  let x_870 : f32 = u_xlat38;
  u_xlat38 = (x_869 * x_870);
  let x_872 : f32 = u_xlat38;
  let x_874 : f32 = u_xlat4.x;
  u_xlat38 = ((x_872 * x_874) + 1.00001001358032226562f);
  let x_878 : f32 = u_xlat39;
  let x_879 : f32 = u_xlat39;
  u_xlat39 = (x_878 * x_879);
  let x_881 : f32 = u_xlat38;
  let x_882 : f32 = u_xlat38;
  u_xlat38 = (x_881 * x_882);
  let x_884 : f32 = u_xlat39;
  u_xlat39 = max(x_884, 0.10000000149011611938f);
  let x_887 : f32 = u_xlat38;
  let x_888 : f32 = u_xlat39;
  u_xlat38 = (x_887 * x_888);
  let x_890 : f32 = u_xlat40;
  let x_891 : f32 = u_xlat38;
  u_xlat38 = (x_890 * x_891);
  let x_893 : f32 = u_xlat28;
  let x_894 : f32 = u_xlat38;
  u_xlat38 = (x_893 / x_894);
  let x_896 : f32 = u_xlat38;
  let x_900 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_896, x_896, x_896) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_900);
  let x_902 : vec3<f32> = u_xlat18;
  let x_903 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_902 * x_903);
  let x_907 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_909 : f32 = x_337.unity_LightData.y;
  u_xlat38 = min(x_907, x_909);
  let x_913 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_913));
  let x_917 : f32 = u_xlat6.x;
  let x_920 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_923 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_917 * x_920) + x_923);
  let x_925 : f32 = u_xlat39;
  u_xlat39 = clamp(x_925, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_937 : u32 = u_xlatu_loop_1;
    let x_938 : u32 = u_xlatu38;
    if ((x_937 < x_938)) {
    } else {
      break;
    }
    let x_941 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_941 >> 2u);
    let x_945 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_945 & 3u));
    let x_948 : u32 = u_xlatu6;
    let x_951 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_948)];
    let x_961 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_966 : vec4<u32> = indexable[x_961];
    u_xlat6.x = dot(x_951, bitcast<vec4<f32>>(x_966));
    let x_972 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_972);
    let x_974 : vec3<f32> = vs_INTERP8;
    let x_985 : i32 = u_xlati6;
    let x_987 : vec4<f32> = x_984.x_AdditionalLightsPosition[x_985];
    let x_990 : i32 = u_xlati6;
    let x_992 : vec4<f32> = x_984.x_AdditionalLightsPosition[x_990];
    let x_994 : vec3<f32> = ((-(x_974) * vec3<f32>(x_987.w, x_987.w, x_987.w)) + vec3<f32>(x_992.x, x_992.y, x_992.z));
    let x_995 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_998 : vec4<f32> = u_xlat8;
    let x_1000 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
    let x_1003 : f32 = u_xlat43;
    u_xlat43 = max(x_1003, 0.00006103515625f);
    let x_1007 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1007);
    let x_1010 : f32 = u_xlat44;
    let x_1012 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
    let x_1016 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1016);
    let x_1018 : f32 = u_xlat43;
    let x_1019 : i32 = u_xlati6;
    let x_1021 : f32 = x_984.x_AdditionalLightsAttenuation[x_1019].x;
    u_xlat43 = (x_1018 * x_1021);
    let x_1023 : f32 = u_xlat43;
    let x_1025 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1023) * x_1025) + 1.0f);
    let x_1028 : f32 = u_xlat43;
    u_xlat43 = max(x_1028, 0.0f);
    let x_1030 : f32 = u_xlat43;
    let x_1031 : f32 = u_xlat43;
    u_xlat43 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat43;
    let x_1034 : f32 = u_xlat45;
    u_xlat43 = (x_1033 * x_1034);
    let x_1036 : i32 = u_xlati6;
    let x_1038 : vec4<f32> = x_984.x_AdditionalLightsSpotDir[x_1036];
    let x_1040 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), x_1040);
    let x_1042 : f32 = u_xlat45;
    let x_1043 : i32 = u_xlati6;
    let x_1045 : f32 = x_984.x_AdditionalLightsAttenuation[x_1043].z;
    let x_1047 : i32 = u_xlati6;
    let x_1049 : f32 = x_984.x_AdditionalLightsAttenuation[x_1047].w;
    u_xlat45 = ((x_1042 * x_1045) + x_1049);
    let x_1051 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1051, 0.0f, 1.0f);
    let x_1053 : f32 = u_xlat45;
    let x_1054 : f32 = u_xlat45;
    u_xlat45 = (x_1053 * x_1054);
    let x_1056 : f32 = u_xlat43;
    let x_1057 : f32 = u_xlat45;
    u_xlat43 = (x_1056 * x_1057);
    let x_1061 : i32 = u_xlati6;
    let x_1063 : f32 = x_131.x_AdditionalShadowParams[x_1061].w;
    u_xlati45 = i32(x_1063);
    let x_1066 : i32 = u_xlati45;
    u_xlatb10.x = (x_1066 >= 0i);
    let x_1070 : bool = u_xlatb10.x;
    if (x_1070) {
      let x_1074 : i32 = u_xlati6;
      let x_1076 : f32 = x_131.x_AdditionalShadowParams[x_1074].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1076, x_1076, x_1076, x_1076))));
      let x_1083 : bool = u_xlatb10.x;
      if (x_1083) {
        let x_1086 : vec3<f32> = u_xlat9;
        let x_1089 : vec3<f32> = u_xlat9;
        let x_1092 : vec4<bool> = (abs(vec4<f32>(x_1086.z, x_1086.z, x_1086.y, x_1086.z)) >= abs(vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.x)));
        u_xlatb10 = vec3<bool>(x_1092.x, x_1092.y, x_1092.z);
        let x_1095 : bool = u_xlatb10.y;
        let x_1097 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1095 & x_1097);
        let x_1101 : vec3<f32> = u_xlat9;
        let x_1104 : vec4<bool> = (-(vec4<f32>(x_1101.z, x_1101.y, x_1101.x, x_1101.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1104.x, x_1104.y, x_1104.z);
        let x_1108 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1108);
        let x_1113 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1113);
        let x_1119 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1119);
        let x_1123 : bool = u_xlatb10.z;
        if (x_1123) {
          let x_1128 : f32 = u_xlat22.z;
          x_1124 = x_1128;
        } else {
          let x_1130 : f32 = u_xlat11;
          x_1124 = x_1130;
        }
        let x_1131 : f32 = x_1124;
        u_xlat34 = x_1131;
        let x_1134 : bool = u_xlatb10.x;
        if (x_1134) {
          let x_1139 : f32 = u_xlat22.x;
          x_1135 = x_1139;
        } else {
          let x_1141 : f32 = u_xlat34;
          x_1135 = x_1141;
        }
        let x_1142 : f32 = x_1135;
        u_xlat10.x = x_1142;
        let x_1144 : i32 = u_xlati6;
        let x_1146 : f32 = x_131.x_AdditionalShadowParams[x_1144].w;
        u_xlat22.x = trunc(x_1146);
        let x_1150 : f32 = u_xlat10.x;
        let x_1152 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1150 + x_1152);
        let x_1156 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1156);
      }
      let x_1158 : i32 = u_xlati45;
      u_xlati45 = (x_1158 << bitcast<u32>(2i));
      let x_1160 : vec3<f32> = vs_INTERP8;
      let x_1163 : i32 = u_xlati45;
      let x_1166 : i32 = u_xlati45;
      let x_1170 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1163 + 1i) / 4i)][((x_1166 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1170);
      let x_1172 : i32 = u_xlati45;
      let x_1174 : i32 = u_xlati45;
      let x_1177 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1172 / 4i)][(x_1174 % 4i)];
      let x_1178 : vec3<f32> = vs_INTERP8;
      let x_1181 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1177 * vec4<f32>(x_1178.x, x_1178.x, x_1178.x, x_1178.x)) + x_1181);
      let x_1183 : i32 = u_xlati45;
      let x_1186 : i32 = u_xlati45;
      let x_1190 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1183 + 2i) / 4i)][((x_1186 + 2i) % 4i)];
      let x_1191 : vec3<f32> = vs_INTERP8;
      let x_1194 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1190 * vec4<f32>(x_1191.z, x_1191.z, x_1191.z, x_1191.z)) + x_1194);
      let x_1196 : vec4<f32> = u_xlat10;
      let x_1197 : i32 = u_xlati45;
      let x_1200 : i32 = u_xlati45;
      let x_1204 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1197 + 3i) / 4i)][((x_1200 + 3i) % 4i)];
      u_xlat10 = (x_1196 + x_1204);
      let x_1206 : vec4<f32> = u_xlat10;
      let x_1208 : vec4<f32> = u_xlat10;
      let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) / vec3<f32>(x_1208.w, x_1208.w, x_1208.w));
      let x_1211 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
      let x_1214 : vec4<f32> = u_xlat10;
      let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
      let x_1217 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
      let x_1225 : vec3<f32> = txVec2;
      let x_1227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
      u_xlat45 = x_1227;
      let x_1228 : i32 = u_xlati6;
      let x_1230 : f32 = x_131.x_AdditionalShadowParams[x_1228].x;
      u_xlat10.x = (1.0f + -(x_1230));
      let x_1234 : f32 = u_xlat45;
      let x_1235 : i32 = u_xlati6;
      let x_1237 : f32 = x_131.x_AdditionalShadowParams[x_1235].x;
      let x_1240 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1234 * x_1237) + x_1240);
      let x_1243 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1243);
      let x_1248 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1248 >= 1.0f);
      let x_1250 : bool = u_xlatb22;
      let x_1252 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1250 | x_1252);
      let x_1256 : bool = u_xlatb10.x;
      let x_1257 : f32 = u_xlat45;
      u_xlat45 = select(x_1257, 1.0f, x_1256);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1260 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1260) + 1.0f);
    let x_1264 : f32 = u_xlat39;
    let x_1266 : f32 = u_xlat10.x;
    let x_1268 : f32 = u_xlat45;
    u_xlat45 = ((x_1264 * x_1266) + x_1268);
    let x_1270 : f32 = u_xlat43;
    let x_1271 : f32 = u_xlat45;
    u_xlat43 = (x_1270 * x_1271);
    let x_1273 : vec4<f32> = u_xlat1;
    let x_1275 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1273.x, x_1273.z, x_1273.w), x_1275);
    let x_1277 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1277, 0.0f, 1.0f);
    let x_1279 : f32 = u_xlat43;
    let x_1280 : f32 = u_xlat45;
    u_xlat43 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat43;
    let x_1284 : i32 = u_xlati6;
    let x_1286 : vec4<f32> = x_984.x_AdditionalLightsColor[x_1284];
    let x_1288 : vec3<f32> = (vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
    let x_1289 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1291 : vec4<f32> = u_xlat8;
    let x_1293 : f32 = u_xlat44;
    let x_1296 : vec3<f32> = u_xlat5;
    let x_1297 : vec3<f32> = ((vec3<f32>(x_1291.x, x_1291.y, x_1291.z) * vec3<f32>(x_1293, x_1293, x_1293)) + x_1296);
    let x_1298 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
    let x_1300 : vec4<f32> = u_xlat8;
    let x_1302 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
    let x_1307 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1307, 1.17549435e-38f);
    let x_1311 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1311);
    let x_1314 : vec3<f32> = u_xlat6;
    let x_1316 : vec4<f32> = u_xlat8;
    let x_1318 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.x, x_1314.x) * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
    let x_1319 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
    let x_1321 : vec4<f32> = u_xlat1;
    let x_1323 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1321.x, x_1321.z, x_1321.w), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
    let x_1328 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1328, 0.0f, 1.0f);
    let x_1331 : vec3<f32> = u_xlat9;
    let x_1332 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1331, vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1335, 0.0f, 1.0f);
    let x_1338 : f32 = u_xlat6.x;
    let x_1340 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1338 * x_1340);
    let x_1344 : f32 = u_xlat6.x;
    let x_1346 : f32 = u_xlat4.x;
    u_xlat6.x = ((x_1344 * x_1346) + 1.00001001358032226562f);
    let x_1350 : f32 = u_xlat43;
    let x_1351 : f32 = u_xlat43;
    u_xlat43 = (x_1350 * x_1351);
    let x_1354 : f32 = u_xlat6.x;
    let x_1356 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1354 * x_1356);
    let x_1359 : f32 = u_xlat43;
    u_xlat43 = max(x_1359, 0.10000000149011611938f);
    let x_1362 : f32 = u_xlat6.x;
    let x_1363 : f32 = u_xlat43;
    u_xlat6.x = (x_1362 * x_1363);
    let x_1366 : f32 = u_xlat40;
    let x_1368 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1366 * x_1368);
    let x_1371 : f32 = u_xlat28;
    let x_1373 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1371 / x_1373);
    let x_1376 : vec3<f32> = u_xlat6;
    let x_1379 : vec3<f32> = u_xlat2;
    let x_1380 : vec3<f32> = ((vec3<f32>(x_1376.x, x_1376.x, x_1376.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1379);
    let x_1381 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : vec4<f32> = u_xlat8;
    let x_1385 : vec4<f32> = u_xlat10;
    let x_1388 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + x_1388);

    continuing {
      let x_1390 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1390 + bitcast<u32>(1i));
    }
  }
  let x_1392 : vec4<f32> = u_xlat3;
  let x_1394 : f32 = u_xlat41;
  let x_1397 : vec3<f32> = u_xlat18;
  let x_1398 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(x_1394, x_1394, x_1394)) + x_1397);
  let x_1399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1398.z);
  let x_1401 : vec3<f32> = u_xlat7;
  let x_1402 : vec4<f32> = u_xlat1;
  let x_1404 : vec3<f32> = (x_1401 + vec3<f32>(x_1402.x, x_1402.z, x_1402.w));
  let x_1405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1404.z);
  let x_1409 : vec4<f32> = vs_INTERP6;
  let x_1411 : vec3<f32> = u_xlat0;
  let x_1413 : vec4<f32> = u_xlat1;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1409.w, x_1409.w, x_1409.w) * x_1411) + vec3<f32>(x_1413.x, x_1413.z, x_1413.w));
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : bool = u_xlatb13;
  let x_1419 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1419, x_1418);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


