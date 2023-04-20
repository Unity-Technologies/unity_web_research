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

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1025 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlatb43 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_465 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1170 : f32;
  var x_1181 : f32;
  var txVec2 : vec3<f32>;
  var x_1298 : f32;
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
  let x_456 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_456;
  let x_459 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_459;
  let x_462 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_462;
  let x_464 : bool = u_xlatb15;
  if (x_464) {
    let x_468 : vec4<f32> = u_xlat4;
    x_465 = vec3<f32>(x_468.x, x_468.y, x_468.z);
  } else {
    let x_471 : vec4<f32> = u_xlat5;
    x_465 = vec3<f32>(x_471.x, x_471.y, x_471.z);
  }
  let x_473 : vec3<f32> = x_465;
  u_xlat15 = x_473;
  let x_475 : f32 = vs_INTERP8.y;
  let x_477 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat4.x = (x_475 * x_477);
  let x_481 : f32 = x_53.unity_MatrixV[0i].z;
  let x_483 : f32 = vs_INTERP8.x;
  let x_486 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_481 * x_483) + x_486);
  let x_490 : f32 = x_53.unity_MatrixV[2i].z;
  let x_492 : f32 = vs_INTERP8.z;
  let x_495 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_490 * x_492) + x_495);
  let x_499 : f32 = u_xlat4.x;
  let x_501 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat4.x = (x_499 + x_501);
  let x_505 : f32 = u_xlat4.x;
  let x_509 : f32 = x_53.x_ProjectionParams.y;
  u_xlat4.x = (-(x_505) + -(x_509));
  let x_514 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_514, 0.0f);
  let x_518 : f32 = u_xlat4.x;
  let x_520 : f32 = x_53.unity_FogParams.x;
  u_xlat4.x = (x_518 * x_520);
  let x_530 : vec2<f32> = vs_INTERP0;
  let x_532 : f32 = x_53.x_GlobalMipBias.x;
  let x_533 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_530, x_532);
  u_xlat5 = x_533;
  let x_539 : vec2<f32> = vs_INTERP0;
  let x_541 : f32 = x_53.x_GlobalMipBias.x;
  let x_542 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_539, x_541);
  u_xlat16 = vec3<f32>(x_542.x, x_542.y, x_542.z);
  let x_544 : vec4<f32> = u_xlat5;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_549 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_551.x, x_551.z, x_551.w), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_558 : f32 = u_xlat5.x;
  u_xlat5.x = (x_558 + 0.5f);
  let x_561 : vec3<f32> = u_xlat16;
  let x_562 : vec4<f32> = u_xlat5;
  u_xlat16 = (x_561 * vec3<f32>(x_562.x, x_562.x, x_562.x));
  let x_566 : f32 = u_xlat5.w;
  u_xlat5.x = max(x_566, 0.00009999999747378752f);
  let x_569 : vec3<f32> = u_xlat16;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat16 = (x_569 / vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = x_574;
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_577, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat36;
  u_xlat36 = min(x_580, 1.0f);
  let x_582 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_582 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_587 : f32 = u_xlat3.x;
  u_xlat5.x = (-(x_587) + 1.0f);
  let x_593 : f32 = u_xlat5.x;
  let x_595 : f32 = u_xlat5.x;
  u_xlat17 = (x_593 * x_595);
  let x_597 : f32 = u_xlat17;
  u_xlat17 = max(x_597, 0.0078125f);
  let x_601 : f32 = u_xlat17;
  let x_602 : f32 = u_xlat17;
  u_xlat29 = (x_601 * x_602);
  let x_605 : f32 = u_xlat3.x;
  u_xlat3.x = (x_605 + 0.04000002145767211914f);
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_610, 1.0f);
  let x_614 : f32 = u_xlat17;
  u_xlat41 = ((x_614 * 4.0f) + 2.0f);
  let x_620 : f32 = vs_INTERP6.w;
  u_xlat6 = min(x_620, 1.0f);
  let x_624 : vec4<f32> = vs_INTERP3;
  let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
  let x_627 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_625.x, x_625.y, x_627);
  let x_635 : vec3<f32> = txVec1;
  let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
  u_xlat18.x = x_637;
  let x_640 : f32 = u_xlat18.x;
  let x_642 : f32 = x_131.x_MainLightShadowParams.x;
  let x_644 : f32 = u_xlat38;
  u_xlat38 = ((x_640 * x_642) + x_644);
  let x_648 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_648);
  let x_652 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_652 >= 1.0f);
  let x_654 : bool = u_xlatb30;
  let x_655 : bool = u_xlatb18;
  u_xlatb18 = (x_654 | x_655);
  let x_657 : bool = u_xlatb18;
  let x_658 : f32 = u_xlat38;
  u_xlat38 = select(x_658, 1.0f, x_657);
  let x_660 : vec3<f32> = vs_INTERP8;
  let x_662 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat18 = (x_660 + -(x_662));
  let x_665 : vec3<f32> = u_xlat18;
  let x_666 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_665, x_666);
  let x_671 : f32 = u_xlat18.x;
  let x_673 : f32 = x_131.x_MainLightShadowParams.z;
  let x_676 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat30 = ((x_671 * x_673) + x_676);
  let x_678 : f32 = u_xlat30;
  u_xlat30 = clamp(x_678, 0.0f, 1.0f);
  let x_681 : f32 = u_xlat38;
  u_xlat42 = (-(x_681) + 1.0f);
  let x_684 : f32 = u_xlat30;
  let x_685 : f32 = u_xlat42;
  let x_687 : f32 = u_xlat38;
  u_xlat38 = ((x_684 * x_685) + x_687);
  let x_689 : vec3<f32> = u_xlat15;
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(x_689), vec3<f32>(x_691.x, x_691.z, x_691.w));
  let x_694 : f32 = u_xlat30;
  let x_695 : f32 = u_xlat30;
  u_xlat30 = (x_694 + x_695);
  let x_698 : vec4<f32> = u_xlat1;
  let x_700 : f32 = u_xlat30;
  let x_704 : vec3<f32> = u_xlat15;
  let x_706 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.z, x_698.w) * -(vec3<f32>(x_700, x_700, x_700))) + -(x_704));
  let x_707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_711 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_709.x, x_709.z, x_709.w), x_711);
  let x_713 : f32 = u_xlat30;
  u_xlat30 = clamp(x_713, 0.0f, 1.0f);
  let x_715 : f32 = u_xlat30;
  u_xlat30 = (-(x_715) + 1.0f);
  let x_718 : f32 = u_xlat30;
  let x_719 : f32 = u_xlat30;
  u_xlat30 = (x_718 * x_719);
  let x_721 : f32 = u_xlat30;
  let x_722 : f32 = u_xlat30;
  u_xlat30 = (x_721 * x_722);
  let x_725 : f32 = u_xlat5.x;
  u_xlat42 = ((-(x_725) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_732 : f32 = u_xlat5.x;
  let x_733 : f32 = u_xlat42;
  u_xlat5.x = (x_732 * x_733);
  let x_737 : f32 = u_xlat5.x;
  u_xlat5.x = (x_737 * 6.0f);
  let x_749 : vec4<f32> = u_xlat7;
  let x_752 : f32 = u_xlat5.x;
  let x_753 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_749.x, x_749.y, x_749.z), x_752);
  u_xlat7 = x_753;
  let x_755 : f32 = u_xlat7.w;
  u_xlat5.x = (x_755 + -1.0f);
  let x_759 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_761 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_759 * x_761) + 1.0f);
  let x_766 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_766, 0.0f);
  let x_770 : f32 = u_xlat5.x;
  u_xlat5.x = log2(x_770);
  let x_774 : f32 = u_xlat5.x;
  let x_776 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat5.x = (x_774 * x_776);
  let x_780 : f32 = u_xlat5.x;
  u_xlat5.x = exp2(x_780);
  let x_784 : f32 = u_xlat5.x;
  let x_786 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat5.x = (x_784 * x_786);
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec4<f32> = u_xlat5;
  let x_793 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_791.x, x_791.x, x_791.x));
  let x_794 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : f32 = u_xlat17;
  let x_798 : f32 = u_xlat17;
  let x_802 : vec2<f32> = ((vec2<f32>(x_796, x_796) * vec2<f32>(x_798, x_798)) + vec2<f32>(-1.0f, 1.0f));
  let x_803 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
  let x_806 : f32 = u_xlat5.y;
  u_xlat17 = (1.0f / x_806);
  let x_809 : f32 = u_xlat3.x;
  u_xlat3.x = (x_809 + -0.03999999910593032837f);
  let x_813 : f32 = u_xlat30;
  let x_815 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_813 * x_815) + 0.03999999910593032837f);
  let x_821 : f32 = u_xlat3.x;
  let x_822 : f32 = u_xlat17;
  u_xlat3.x = (x_821 * x_822);
  let x_825 : vec4<f32> = u_xlat3;
  let x_827 : vec4<f32> = u_xlat7;
  let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.x, x_825.x) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat16;
  let x_833 : vec3<f32> = u_xlat2;
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_832 * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat38;
  let x_840 : f32 = x_337.unity_LightData.z;
  u_xlat38 = (x_838 * x_840);
  let x_842 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_842.x, x_842.z, x_842.w), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_850 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_850, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat38;
  let x_855 : f32 = u_xlat3.x;
  u_xlat38 = (x_853 * x_855);
  let x_857 : f32 = u_xlat38;
  let x_860 : vec4<f32> = x_53.x_MainLightColor;
  let x_862 : vec3<f32> = (vec3<f32>(x_857, x_857, x_857) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : vec3<f32> = u_xlat15;
  let x_868 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat8 = (x_866 + vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec3<f32> = u_xlat8;
  let x_872 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(x_871, x_872);
  let x_874 : f32 = u_xlat38;
  u_xlat38 = max(x_874, 1.17549435e-38f);
  let x_877 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_877);
  let x_879 : f32 = u_xlat38;
  let x_881 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_879, x_879, x_879) * x_881);
  let x_883 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_883.x, x_883.z, x_883.w), x_885);
  let x_887 : f32 = u_xlat38;
  u_xlat38 = clamp(x_887, 0.0f, 1.0f);
  let x_890 : vec4<f32> = x_53.x_MainLightPosition;
  let x_892 : vec3<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), x_892);
  let x_896 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_896, 0.0f, 1.0f);
  let x_899 : f32 = u_xlat38;
  let x_900 : f32 = u_xlat38;
  u_xlat38 = (x_899 * x_900);
  let x_902 : f32 = u_xlat38;
  let x_904 : f32 = u_xlat5.x;
  u_xlat38 = ((x_902 * x_904) + 1.00001001358032226562f);
  let x_909 : f32 = u_xlat3.x;
  let x_911 : f32 = u_xlat3.x;
  u_xlat3.x = (x_909 * x_911);
  let x_914 : f32 = u_xlat38;
  let x_915 : f32 = u_xlat38;
  u_xlat38 = (x_914 * x_915);
  let x_918 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_918, 0.10000000149011611938f);
  let x_922 : f32 = u_xlat38;
  let x_924 : f32 = u_xlat3.x;
  u_xlat38 = (x_922 * x_924);
  let x_926 : f32 = u_xlat41;
  let x_927 : f32 = u_xlat38;
  u_xlat38 = (x_926 * x_927);
  let x_929 : f32 = u_xlat29;
  let x_930 : f32 = u_xlat38;
  u_xlat38 = (x_929 / x_930);
  let x_932 : f32 = u_xlat38;
  let x_936 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_932, x_932, x_932) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_936);
  let x_938 : vec4<f32> = u_xlat7;
  let x_940 : vec3<f32> = u_xlat8;
  let x_941 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) * x_940);
  let x_942 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_946 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_948 : f32 = x_337.unity_LightData.y;
  u_xlat38 = min(x_946, x_948);
  let x_952 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_952));
  let x_956 : f32 = u_xlat18.x;
  let x_959 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_962 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_956 * x_959) + x_962);
  let x_966 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_966, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_979 : u32 = u_xlatu_loop_1;
    let x_980 : u32 = u_xlatu38;
    if ((x_979 < x_980)) {
    } else {
      break;
    }
    let x_983 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_983 >> 2u);
    let x_987 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_987 & 3u));
    let x_991 : u32 = u_xlatu43;
    let x_994 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_991)];
    let x_1004 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1009 : vec4<u32> = indexable[x_1004];
    u_xlat43 = dot(x_994, bitcast<vec4<f32>>(x_1009));
    let x_1013 : f32 = u_xlat43;
    u_xlati43 = i32(x_1013);
    let x_1015 : vec3<f32> = vs_INTERP8;
    let x_1026 : i32 = u_xlati43;
    let x_1028 : vec4<f32> = x_1025.x_AdditionalLightsPosition[x_1026];
    let x_1031 : i32 = u_xlati43;
    let x_1033 : vec4<f32> = x_1025.x_AdditionalLightsPosition[x_1031];
    u_xlat8 = ((-(x_1015) * vec3<f32>(x_1028.w, x_1028.w, x_1028.w)) + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1037 : vec3<f32> = u_xlat8;
    let x_1038 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1037, x_1038);
    let x_1040 : f32 = u_xlat44;
    u_xlat44 = max(x_1040, 0.00006103515625f);
    let x_1044 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_1044);
    let x_1047 : vec3<f32> = u_xlat8;
    let x_1048 : f32 = u_xlat9;
    u_xlat21 = (x_1047 * vec3<f32>(x_1048, x_1048, x_1048));
    let x_1052 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1052);
    let x_1055 : f32 = u_xlat44;
    let x_1056 : i32 = u_xlati43;
    let x_1058 : f32 = x_1025.x_AdditionalLightsAttenuation[x_1056].x;
    u_xlat44 = (x_1055 * x_1058);
    let x_1060 : f32 = u_xlat44;
    let x_1062 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1060) * x_1062) + 1.0f);
    let x_1065 : f32 = u_xlat44;
    u_xlat44 = max(x_1065, 0.0f);
    let x_1067 : f32 = u_xlat44;
    let x_1068 : f32 = u_xlat44;
    u_xlat44 = (x_1067 * x_1068);
    let x_1070 : f32 = u_xlat44;
    let x_1072 : f32 = u_xlat10.x;
    u_xlat44 = (x_1070 * x_1072);
    let x_1074 : i32 = u_xlati43;
    let x_1076 : vec4<f32> = x_1025.x_AdditionalLightsSpotDir[x_1074];
    let x_1078 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), x_1078);
    let x_1082 : f32 = u_xlat10.x;
    let x_1083 : i32 = u_xlati43;
    let x_1085 : f32 = x_1025.x_AdditionalLightsAttenuation[x_1083].z;
    let x_1087 : i32 = u_xlati43;
    let x_1089 : f32 = x_1025.x_AdditionalLightsAttenuation[x_1087].w;
    u_xlat10.x = ((x_1082 * x_1085) + x_1089);
    let x_1093 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1093, 0.0f, 1.0f);
    let x_1097 : f32 = u_xlat10.x;
    let x_1099 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1097 * x_1099);
    let x_1102 : f32 = u_xlat44;
    let x_1104 : f32 = u_xlat10.x;
    u_xlat44 = (x_1102 * x_1104);
    let x_1108 : i32 = u_xlati43;
    let x_1110 : f32 = x_131.x_AdditionalShadowParams[x_1108].w;
    u_xlati10 = i32(x_1110);
    let x_1113 : i32 = u_xlati10;
    u_xlatb22.x = (x_1113 >= 0i);
    let x_1117 : bool = u_xlatb22.x;
    if (x_1117) {
      let x_1121 : i32 = u_xlati43;
      let x_1123 : f32 = x_131.x_AdditionalShadowParams[x_1121].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1123, x_1123, x_1123, x_1123))));
      let x_1130 : bool = u_xlatb22.x;
      if (x_1130) {
        let x_1133 : vec3<f32> = u_xlat21;
        let x_1136 : vec3<f32> = u_xlat21;
        let x_1139 : vec4<bool> = (abs(vec4<f32>(x_1133.z, x_1133.z, x_1133.y, x_1133.y)) >= abs(vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.x)));
        u_xlatb22 = vec3<bool>(x_1139.x, x_1139.y, x_1139.z);
        let x_1142 : bool = u_xlatb22.y;
        let x_1144 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1142 & x_1144);
        let x_1148 : vec3<f32> = u_xlat21;
        let x_1151 : vec4<bool> = (-(vec4<f32>(x_1148.z, x_1148.y, x_1148.x, x_1148.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1151.x, x_1151.y, x_1151.z);
        let x_1155 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1155);
        let x_1160 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1160);
        let x_1166 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1166);
        let x_1169 : bool = u_xlatb22.z;
        if (x_1169) {
          let x_1174 : f32 = u_xlat11.y;
          x_1170 = x_1174;
        } else {
          let x_1176 : f32 = u_xlat34;
          x_1170 = x_1176;
        }
        let x_1177 : f32 = x_1170;
        u_xlat34 = x_1177;
        let x_1180 : bool = u_xlatb22.x;
        if (x_1180) {
          let x_1185 : f32 = u_xlat11.x;
          x_1181 = x_1185;
        } else {
          let x_1187 : f32 = u_xlat34;
          x_1181 = x_1187;
        }
        let x_1188 : f32 = x_1181;
        u_xlat22 = x_1188;
        let x_1189 : i32 = u_xlati43;
        let x_1191 : f32 = x_131.x_AdditionalShadowParams[x_1189].w;
        u_xlat34 = trunc(x_1191);
        let x_1193 : f32 = u_xlat22;
        let x_1194 : f32 = u_xlat34;
        u_xlat22 = (x_1193 + x_1194);
        let x_1196 : f32 = u_xlat22;
        u_xlati10 = i32(x_1196);
      }
      let x_1198 : i32 = u_xlati10;
      u_xlati10 = (x_1198 << bitcast<u32>(2i));
      let x_1200 : vec3<f32> = vs_INTERP8;
      let x_1203 : i32 = u_xlati10;
      let x_1206 : i32 = u_xlati10;
      let x_1210 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1203 + 1i) / 4i)][((x_1206 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1210);
      let x_1212 : i32 = u_xlati10;
      let x_1214 : i32 = u_xlati10;
      let x_1217 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1212 / 4i)][(x_1214 % 4i)];
      let x_1218 : vec3<f32> = vs_INTERP8;
      let x_1221 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1217 * vec4<f32>(x_1218.x, x_1218.x, x_1218.x, x_1218.x)) + x_1221);
      let x_1223 : i32 = u_xlati10;
      let x_1226 : i32 = u_xlati10;
      let x_1230 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1223 + 2i) / 4i)][((x_1226 + 2i) % 4i)];
      let x_1231 : vec3<f32> = vs_INTERP8;
      let x_1234 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1230 * vec4<f32>(x_1231.z, x_1231.z, x_1231.z, x_1231.z)) + x_1234);
      let x_1236 : vec4<f32> = u_xlat11;
      let x_1237 : i32 = u_xlati10;
      let x_1240 : i32 = u_xlati10;
      let x_1244 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1237 + 3i) / 4i)][((x_1240 + 3i) % 4i)];
      u_xlat10 = (x_1236 + x_1244);
      let x_1246 : vec4<f32> = u_xlat10;
      let x_1248 : vec4<f32> = u_xlat10;
      let x_1250 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) / vec3<f32>(x_1248.w, x_1248.w, x_1248.w));
      let x_1251 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
      let x_1254 : vec4<f32> = u_xlat10;
      let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
      let x_1257 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
      let x_1265 : vec3<f32> = txVec2;
      let x_1267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
      u_xlat10.x = x_1267;
      let x_1269 : i32 = u_xlati43;
      let x_1271 : f32 = x_131.x_AdditionalShadowParams[x_1269].x;
      u_xlat22 = (1.0f + -(x_1271));
      let x_1275 : f32 = u_xlat10.x;
      let x_1276 : i32 = u_xlati43;
      let x_1278 : f32 = x_131.x_AdditionalShadowParams[x_1276].x;
      let x_1280 : f32 = u_xlat22;
      u_xlat10.x = ((x_1275 * x_1278) + x_1280);
      let x_1284 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1284);
      let x_1289 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1289 >= 1.0f);
      let x_1291 : bool = u_xlatb34;
      let x_1293 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1291 | x_1293);
      let x_1297 : bool = u_xlatb22.x;
      if (x_1297) {
        x_1298 = 1.0f;
      } else {
        let x_1303 : f32 = u_xlat10.x;
        x_1298 = x_1303;
      }
      let x_1304 : f32 = x_1298;
      u_xlat10.x = x_1304;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1309 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1309) + 1.0f);
    let x_1313 : f32 = u_xlat3.x;
    let x_1314 : f32 = u_xlat22;
    let x_1317 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1313 * x_1314) + x_1317);
    let x_1320 : f32 = u_xlat44;
    let x_1322 : f32 = u_xlat10.x;
    u_xlat44 = (x_1320 * x_1322);
    let x_1324 : vec4<f32> = u_xlat1;
    let x_1326 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1324.x, x_1324.z, x_1324.w), x_1326);
    let x_1330 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1330, 0.0f, 1.0f);
    let x_1333 : f32 = u_xlat44;
    let x_1335 : f32 = u_xlat10.x;
    u_xlat44 = (x_1333 * x_1335);
    let x_1337 : f32 = u_xlat44;
    let x_1339 : i32 = u_xlati43;
    let x_1341 : vec4<f32> = x_1025.x_AdditionalLightsColor[x_1339];
    let x_1343 : vec3<f32> = (vec3<f32>(x_1337, x_1337, x_1337) * vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    let x_1346 : vec3<f32> = u_xlat8;
    let x_1347 : f32 = u_xlat9;
    let x_1350 : vec3<f32> = u_xlat15;
    u_xlat8 = ((x_1346 * vec3<f32>(x_1347, x_1347, x_1347)) + x_1350);
    let x_1352 : vec3<f32> = u_xlat8;
    let x_1353 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1352, x_1353);
    let x_1355 : f32 = u_xlat43;
    u_xlat43 = max(x_1355, 1.17549435e-38f);
    let x_1357 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1357);
    let x_1359 : f32 = u_xlat43;
    let x_1361 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1359, x_1359, x_1359) * x_1361);
    let x_1363 : vec4<f32> = u_xlat1;
    let x_1365 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1363.x, x_1363.z, x_1363.w), x_1365);
    let x_1367 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1367, 0.0f, 1.0f);
    let x_1369 : vec3<f32> = u_xlat21;
    let x_1370 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1369, x_1370);
    let x_1374 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1374, 0.0f, 1.0f);
    let x_1377 : f32 = u_xlat43;
    let x_1378 : f32 = u_xlat43;
    u_xlat43 = (x_1377 * x_1378);
    let x_1380 : f32 = u_xlat43;
    let x_1382 : f32 = u_xlat5.x;
    u_xlat43 = ((x_1380 * x_1382) + 1.00001001358032226562f);
    let x_1386 : f32 = u_xlat8.x;
    let x_1388 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1386 * x_1388);
    let x_1391 : f32 = u_xlat43;
    let x_1392 : f32 = u_xlat43;
    u_xlat43 = (x_1391 * x_1392);
    let x_1395 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1395, 0.10000000149011611938f);
    let x_1398 : f32 = u_xlat43;
    let x_1400 : f32 = u_xlat8.x;
    u_xlat43 = (x_1398 * x_1400);
    let x_1402 : f32 = u_xlat41;
    let x_1403 : f32 = u_xlat43;
    u_xlat43 = (x_1402 * x_1403);
    let x_1405 : f32 = u_xlat29;
    let x_1406 : f32 = u_xlat43;
    u_xlat43 = (x_1405 / x_1406);
    let x_1408 : f32 = u_xlat43;
    let x_1411 : vec3<f32> = u_xlat2;
    u_xlat8 = ((vec3<f32>(x_1408, x_1408, x_1408) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1411);
    let x_1413 : vec3<f32> = u_xlat8;
    let x_1414 : vec4<f32> = u_xlat10;
    let x_1417 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1413 * vec3<f32>(x_1414.x, x_1414.y, x_1414.z)) + x_1417);

    continuing {
      let x_1419 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1419 + bitcast<u32>(1i));
    }
  }
  let x_1421 : vec3<f32> = u_xlat16;
  let x_1422 : f32 = u_xlat6;
  let x_1425 : vec4<f32> = u_xlat7;
  let x_1427 : vec3<f32> = ((x_1421 * vec3<f32>(x_1422, x_1422, x_1422)) + vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
  let x_1428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1427.x, x_1428.y, x_1427.y, x_1427.z);
  let x_1430 : vec3<f32> = u_xlat18;
  let x_1431 : vec4<f32> = u_xlat1;
  let x_1433 : vec3<f32> = (x_1430 + vec3<f32>(x_1431.x, x_1431.z, x_1431.w));
  let x_1434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1433.x, x_1434.y, x_1433.y, x_1433.z);
  let x_1436 : vec4<f32> = vs_INTERP6;
  let x_1438 : vec3<f32> = u_xlat0;
  let x_1440 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1436.w, x_1436.w, x_1436.w) * x_1438) + vec3<f32>(x_1440.x, x_1440.z, x_1440.w));
  let x_1444 : f32 = u_xlat4.x;
  let x_1446 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1444 * -(x_1446));
  let x_1451 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1451);
  let x_1454 : vec3<f32> = u_xlat0;
  let x_1457 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_1454 + -(vec3<f32>(x_1457.x, x_1457.y, x_1457.z)));
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1468 : vec4<f32> = x_53.unity_FogColor;
  let x_1470 : vec3<f32> = ((vec3<f32>(x_1463.x, x_1463.x, x_1463.x) * x_1465) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : bool = u_xlatb13;
  let x_1474 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1474, x_1473);
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


