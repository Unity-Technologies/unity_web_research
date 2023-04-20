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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat44 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb1 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_337 : UnityPerDraw;

var<private> u_xlatb17 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_666 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat45 : f32;

var<private> u_xlatu44 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1133 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu18 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_455 : f32;
  var x_467 : f32;
  var x_478 : f32;
  var txVec1 : vec3<f32>;
  var x_751 : f32;
  var x_762 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1265 : f32;
  var x_1275 : f32;
  var txVec2 : vec3<f32>;
  var x_1705 : f32;
  var x_1718 : f32;
  var x_1776 : f32;
  var x_1787 : vec3<f32>;
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
  u_xlat42 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat42;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat42;
  u_xlat42 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat42;
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
  u_xlat42 = x_191;
  let x_195 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_195) + 1.0f);
  let x_198 : f32 = u_xlat42;
  let x_200 : f32 = x_131.x_MainLightShadowParams.x;
  let x_202 : f32 = u_xlat44;
  u_xlat42 = ((x_198 * x_200) + x_202);
  let x_208 : f32 = u_xlat4.z;
  u_xlatb4 = (0.0f >= x_208);
  let x_212 : f32 = u_xlat4.z;
  u_xlatb18 = (x_212 >= 1.0f);
  let x_214 : bool = u_xlatb18;
  let x_215 : bool = u_xlatb4;
  u_xlatb4 = (x_214 | x_215);
  let x_217 : bool = u_xlatb4;
  let x_218 : f32 = u_xlat42;
  u_xlat42 = select(x_218, 1.0f, x_217);
  let x_220 : vec3<f32> = u_xlat0;
  let x_222 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_220, -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_228 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_228, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat42;
  let x_235 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_232, x_232, x_232) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec3<f32> = u_xlat14;
  let x_239 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_238 * vec3<f32>(x_239.x, x_239.x, x_239.x));
  let x_242 : vec3<f32> = u_xlat0;
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_242 * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_249 : f32 = u_xlat1.w;
  u_xlatb42 = (x_249 >= 0.40000000596046447754f);
  let x_252 : bool = u_xlatb42;
  if (x_252) {
    let x_258 : f32 = u_xlat1.w;
    x_254 = x_258;
  } else {
    x_254 = 0.0f;
  }
  let x_260 : f32 = x_254;
  u_xlat42 = x_260;
  let x_262 : f32 = u_xlat1.w;
  u_xlat1.x = (x_262 + -0.40000000596046447754f);
  let x_268 : f32 = u_xlat1.w;
  u_xlat15 = dpdxCoarse(x_268);
  let x_272 : f32 = u_xlat1.w;
  u_xlat29 = dpdyCoarse(x_272);
  let x_274 : f32 = u_xlat29;
  let x_276 : f32 = u_xlat15;
  u_xlat15 = (abs(x_274) + abs(x_276));
  let x_279 : f32 = u_xlat15;
  u_xlat15 = max(x_279, 0.00009999999747378752f);
  let x_283 : f32 = u_xlat1.x;
  let x_284 : f32 = u_xlat15;
  u_xlat1.x = (x_283 / x_284);
  let x_288 : f32 = u_xlat1.x;
  u_xlat1.x = (x_288 + 0.5f);
  let x_293 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_293, 0.0f, 1.0f);
  let x_298 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb15 = !((x_298 == 0.0f));
  let x_300 : bool = u_xlatb15;
  if (x_300) {
    let x_305 : f32 = u_xlat1.x;
    x_301 = x_305;
  } else {
    let x_307 : f32 = u_xlat42;
    x_301 = x_307;
  }
  let x_308 : f32 = x_301;
  u_xlat42 = x_308;
  let x_309 : f32 = u_xlat42;
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
  let x_383 : vec3<f32> = u_xlat17;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.z, x_381.w) * vec3<f32>(x_383.y, x_383.y, x_383.y));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_388 : vec3<f32> = u_xlat17;
  let x_390 : vec4<f32> = vs_INTERP4;
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.x, x_388.x) * vec3<f32>(x_390.x, x_390.y, x_390.z)) + vec3<f32>(x_393.x, x_393.z, x_393.w));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_396.y, x_395.y, x_395.z);
  let x_398 : vec3<f32> = u_xlat17;
  let x_400 : vec3<f32> = vs_INTERP9;
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = ((vec3<f32>(x_398.z, x_398.z, x_398.z) * x_400) + vec3<f32>(x_402.x, x_402.z, x_402.w));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_405.y, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(vec3<f32>(x_407.x, x_407.z, x_407.w), vec3<f32>(x_409.x, x_409.z, x_409.w));
  let x_414 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_414);
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = u_xlat17;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.z, x_417.w) * vec3<f32>(x_419.x, x_419.x, x_419.x));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_421.z);
  let x_427 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb17 = (x_427 == 0.0f);
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_434 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_435 : vec3<f32> = (-(x_429) + x_434);
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_444);
  let x_446 : f32 = u_xlat31;
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec3<f32> = (vec3<f32>(x_446, x_446, x_446) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : bool = u_xlatb17;
  if (x_454) {
    let x_459 : f32 = u_xlat4.x;
    x_455 = x_459;
  } else {
    let x_463 : f32 = x_53.unity_MatrixV[0i].z;
    x_455 = x_463;
  }
  let x_464 : f32 = x_455;
  u_xlat5.x = x_464;
  let x_466 : bool = u_xlatb17;
  if (x_466) {
    let x_471 : f32 = u_xlat4.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = x_53.unity_MatrixV[1i].z;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat5.y = x_475;
  let x_477 : bool = u_xlatb17;
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
  u_xlat17 = vec3<f32>(x_506.x, x_506.y, x_506.z);
  let x_508 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_515.x, x_515.z, x_515.w), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_522 : f32 = u_xlat4.x;
  u_xlat4.x = (x_522 + 0.5f);
  let x_525 : vec3<f32> = u_xlat17;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_525 * vec3<f32>(x_526.x, x_526.x, x_526.x));
  let x_530 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_530, 0.00009999999747378752f);
  let x_533 : vec3<f32> = u_xlat17;
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_533 / vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = u_xlat3.x;
  u_xlat3.x = x_538;
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_541, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat42;
  u_xlat42 = min(x_544, 1.0f);
  let x_546 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_546 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_551 : f32 = u_xlat3.x;
  u_xlat4.x = (-(x_551) + 1.0f);
  let x_557 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat4.x;
  u_xlat18 = (x_557 * x_559);
  let x_561 : f32 = u_xlat18;
  u_xlat18 = max(x_561, 0.0078125f);
  let x_565 : f32 = u_xlat18;
  let x_566 : f32 = u_xlat18;
  u_xlat32 = (x_565 * x_566);
  let x_569 : f32 = u_xlat3.x;
  u_xlat3.x = (x_569 + 0.04000002145767211914f);
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_574, 1.0f);
  let x_578 : f32 = u_xlat18;
  u_xlat46 = ((x_578 * 4.0f) + 2.0f);
  let x_584 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_584, 1.0f);
  let x_588 : vec4<f32> = vs_INTERP3;
  let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
  let x_591 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_589.x, x_589.y, x_591);
  let x_599 : vec3<f32> = txVec1;
  let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
  u_xlat6.x = x_601;
  let x_604 : f32 = u_xlat6.x;
  let x_606 : f32 = x_131.x_MainLightShadowParams.x;
  let x_608 : f32 = u_xlat44;
  u_xlat44 = ((x_604 * x_606) + x_608);
  let x_612 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_612);
  let x_618 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_618 >= 1.0f);
  let x_622 : bool = u_xlatb20.x;
  let x_623 : bool = u_xlatb6;
  u_xlatb6 = (x_622 | x_623);
  let x_625 : bool = u_xlatb6;
  let x_626 : f32 = u_xlat44;
  u_xlat44 = select(x_626, 1.0f, x_625);
  let x_628 : vec3<f32> = vs_INTERP8;
  let x_630 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_628 + -(x_630));
  let x_633 : vec3<f32> = u_xlat6;
  let x_634 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_633, x_634);
  let x_639 : f32 = u_xlat6.x;
  let x_641 : f32 = x_131.x_MainLightShadowParams.z;
  let x_644 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_639 * x_641) + x_644);
  let x_648 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_648, 0.0f, 1.0f);
  let x_652 : f32 = u_xlat44;
  u_xlat34 = (-(x_652) + 1.0f);
  let x_656 : f32 = u_xlat20.x;
  let x_657 : f32 = u_xlat34;
  let x_659 : f32 = u_xlat44;
  u_xlat44 = ((x_656 * x_657) + x_659);
  let x_668 : f32 = x_666.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_668 == -1.0f));
  let x_672 : bool = u_xlatb20.x;
  if (x_672) {
    let x_675 : vec3<f32> = vs_INTERP8;
    let x_678 : vec4<f32> = x_666.x_MainLightWorldToLight[1i];
    let x_680 : vec2<f32> = (vec2<f32>(x_675.y, x_675.y) * vec2<f32>(x_678.x, x_678.y));
    let x_681 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_680.x, x_680.y, x_681.z);
    let x_684 : vec4<f32> = x_666.x_MainLightWorldToLight[0i];
    let x_686 : vec3<f32> = vs_INTERP8;
    let x_689 : vec3<f32> = u_xlat20;
    let x_691 : vec2<f32> = ((vec2<f32>(x_684.x, x_684.y) * vec2<f32>(x_686.x, x_686.x)) + vec2<f32>(x_689.x, x_689.y));
    let x_692 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_691.x, x_691.y, x_692.z);
    let x_695 : vec4<f32> = x_666.x_MainLightWorldToLight[2i];
    let x_697 : vec3<f32> = vs_INTERP8;
    let x_700 : vec3<f32> = u_xlat20;
    let x_702 : vec2<f32> = ((vec2<f32>(x_695.x, x_695.y) * vec2<f32>(x_697.z, x_697.z)) + vec2<f32>(x_700.x, x_700.y));
    let x_703 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_702.x, x_702.y, x_703.z);
    let x_705 : vec3<f32> = u_xlat20;
    let x_708 : vec4<f32> = x_666.x_MainLightWorldToLight[3i];
    let x_710 : vec2<f32> = (vec2<f32>(x_705.x, x_705.y) + vec2<f32>(x_708.x, x_708.y));
    let x_711 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_710.x, x_710.y, x_711.z);
    let x_713 : vec3<f32> = u_xlat20;
    let x_717 : vec2<f32> = ((vec2<f32>(x_713.x, x_713.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_718 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_717.x, x_717.y, x_718.z);
    let x_726 : vec3<f32> = u_xlat20;
    let x_729 : f32 = x_53.x_GlobalMipBias.x;
    let x_730 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_726.x, x_726.y), x_729);
    u_xlat7 = x_730;
    let x_732 : f32 = x_666.x_MainLightCookieTextureFormat;
    let x_734 : f32 = x_666.x_MainLightCookieTextureFormat;
    let x_736 : f32 = x_666.x_MainLightCookieTextureFormat;
    let x_738 : f32 = x_666.x_MainLightCookieTextureFormat;
    let x_739 : vec4<f32> = vec4<f32>(x_732, x_734, x_736, x_738);
    let x_747 : vec4<bool> = (vec4<f32>(x_739.x, x_739.y, x_739.z, x_739.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_747.x, x_747.y);
    let x_750 : bool = u_xlatb20.y;
    if (x_750) {
      let x_755 : f32 = u_xlat7.w;
      x_751 = x_755;
    } else {
      let x_758 : f32 = u_xlat7.x;
      x_751 = x_758;
    }
    let x_759 : f32 = x_751;
    u_xlat34 = x_759;
    let x_761 : bool = u_xlatb20.x;
    if (x_761) {
      let x_765 : vec4<f32> = u_xlat7;
      x_762 = vec3<f32>(x_765.x, x_765.y, x_765.z);
    } else {
      let x_768 : f32 = u_xlat34;
      x_762 = vec3<f32>(x_768, x_768, x_768);
    }
    let x_770 : vec3<f32> = x_762;
    u_xlat20 = x_770;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_775 : vec3<f32> = u_xlat20;
  let x_777 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat20 = (x_775 * vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec3<f32> = u_xlat5;
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_780), vec3<f32>(x_782.x, x_782.z, x_782.w));
  let x_787 : f32 = u_xlat7.x;
  let x_789 : f32 = u_xlat7.x;
  u_xlat7.x = (x_787 + x_789);
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat7;
  let x_798 : vec3<f32> = u_xlat5;
  let x_800 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.z, x_792.w) * -(vec3<f32>(x_794.x, x_794.x, x_794.x))) + -(x_798));
  let x_801 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_804.x, x_804.z, x_804.w), x_806);
  let x_808 : f32 = u_xlat49;
  u_xlat49 = clamp(x_808, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat49;
  u_xlat49 = (-(x_810) + 1.0f);
  let x_813 : f32 = u_xlat49;
  let x_814 : f32 = u_xlat49;
  u_xlat49 = (x_813 * x_814);
  let x_816 : f32 = u_xlat49;
  let x_817 : f32 = u_xlat49;
  u_xlat49 = (x_816 * x_817);
  let x_821 : f32 = u_xlat4.x;
  u_xlat8.x = ((-(x_821) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_829 : f32 = u_xlat4.x;
  let x_831 : f32 = u_xlat8.x;
  u_xlat4.x = (x_829 * x_831);
  let x_835 : f32 = u_xlat4.x;
  u_xlat4.x = (x_835 * 6.0f);
  let x_847 : vec4<f32> = u_xlat7;
  let x_850 : f32 = u_xlat4.x;
  let x_851 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_847.x, x_847.y, x_847.z), x_850);
  u_xlat8 = x_851;
  let x_853 : f32 = u_xlat8.w;
  u_xlat4.x = (x_853 + -1.0f);
  let x_857 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_859 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_857 * x_859) + 1.0f);
  let x_864 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_864, 0.0f);
  let x_868 : f32 = u_xlat4.x;
  u_xlat4.x = log2(x_868);
  let x_872 : f32 = u_xlat4.x;
  let x_874 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat4.x = (x_872 * x_874);
  let x_878 : f32 = u_xlat4.x;
  u_xlat4.x = exp2(x_878);
  let x_882 : f32 = u_xlat4.x;
  let x_884 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat4.x = (x_882 * x_884);
  let x_887 : vec4<f32> = u_xlat8;
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_889.x, x_889.x, x_889.x));
  let x_892 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : f32 = u_xlat18;
  let x_896 : f32 = u_xlat18;
  let x_900 : vec2<f32> = ((vec2<f32>(x_894, x_894) * vec2<f32>(x_896, x_896)) + vec2<f32>(-1.0f, 1.0f));
  let x_901 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
  let x_904 : f32 = u_xlat4.y;
  u_xlat18 = (1.0f / x_904);
  let x_907 : f32 = u_xlat3.x;
  u_xlat3.x = (x_907 + -0.03999999910593032837f);
  let x_911 : f32 = u_xlat49;
  let x_913 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_911 * x_913) + 0.03999999910593032837f);
  let x_919 : f32 = u_xlat3.x;
  let x_920 : f32 = u_xlat18;
  u_xlat3.x = (x_919 * x_920);
  let x_923 : vec4<f32> = u_xlat3;
  let x_925 : vec4<f32> = u_xlat7;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.x, x_923.x) * vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec3<f32> = u_xlat17;
  let x_931 : vec3<f32> = u_xlat2;
  let x_933 : vec4<f32> = u_xlat7;
  let x_935 : vec3<f32> = ((x_930 * x_931) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : f32 = u_xlat44;
  let x_940 : f32 = x_337.unity_LightData.z;
  u_xlat44 = (x_938 * x_940);
  let x_943 : vec4<f32> = u_xlat1;
  let x_946 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_943.x, x_943.z, x_943.w), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat45;
  u_xlat45 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat44;
  let x_952 : f32 = u_xlat45;
  u_xlat44 = (x_951 * x_952);
  let x_954 : f32 = u_xlat44;
  let x_956 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_958 : vec3<f32> = u_xlat5;
  let x_960 : vec4<f32> = x_53.x_MainLightPosition;
  let x_962 : vec3<f32> = (x_958 + vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat7;
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : f32 = u_xlat44;
  u_xlat44 = max(x_970, 1.17549435e-38f);
  let x_973 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_973);
  let x_975 : f32 = u_xlat44;
  let x_977 : vec4<f32> = u_xlat7;
  let x_979 : vec3<f32> = (vec3<f32>(x_975, x_975, x_975) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat1;
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_982.x, x_982.z, x_982.w), vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : f32 = u_xlat44;
  u_xlat44 = clamp(x_987, 0.0f, 1.0f);
  let x_990 : vec4<f32> = x_53.x_MainLightPosition;
  let x_992 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat45;
  u_xlat45 = clamp(x_995, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat44;
  let x_998 : f32 = u_xlat44;
  u_xlat44 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat44;
  let x_1002 : f32 = u_xlat4.x;
  u_xlat44 = ((x_1000 * x_1002) + 1.00001001358032226562f);
  let x_1006 : f32 = u_xlat45;
  let x_1007 : f32 = u_xlat45;
  u_xlat45 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat44;
  let x_1010 : f32 = u_xlat44;
  u_xlat44 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat45;
  u_xlat45 = max(x_1012, 0.10000000149011611938f);
  let x_1015 : f32 = u_xlat44;
  let x_1016 : f32 = u_xlat45;
  u_xlat44 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat46;
  let x_1019 : f32 = u_xlat44;
  u_xlat44 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat32;
  let x_1022 : f32 = u_xlat44;
  u_xlat44 = (x_1021 / x_1022);
  let x_1024 : f32 = u_xlat44;
  let x_1028 : vec3<f32> = u_xlat2;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1024, x_1024, x_1024) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1028);
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec3<f32> = u_xlat20;
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1032 * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1038 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1040 : f32 = x_337.unity_LightData.y;
  u_xlat44 = min(x_1038, x_1040);
  let x_1044 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1044));
  let x_1048 : f32 = u_xlat6.x;
  let x_1051 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_1054 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1048 * x_1051) + x_1054);
  let x_1056 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1056, 0.0f, 1.0f);
  let x_1060 : f32 = x_666.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1062 : f32 = x_666.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1064 : f32 = x_666.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1066 : f32 = x_666.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1067 : vec4<f32> = vec4<f32>(x_1060, x_1062, x_1064, x_1066);
  let x_1073 : vec4<bool> = (vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1067.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1073.x, x_1073.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1085 : u32 = u_xlatu_loop_1;
    let x_1086 : u32 = u_xlatu44;
    if ((x_1085 < x_1086)) {
    } else {
      break;
    }
    let x_1089 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1089 >> 2u);
    let x_1093 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1093 & 3u));
    let x_1096 : u32 = u_xlatu6;
    let x_1099 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_1096)];
    let x_1109 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1114 : vec4<u32> = indexable[x_1109];
    u_xlat6.x = dot(x_1099, bitcast<vec4<f32>>(x_1114));
    let x_1120 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1120);
    let x_1123 : vec3<f32> = vs_INTERP8;
    let x_1134 : i32 = u_xlati6;
    let x_1136 : vec4<f32> = x_1133.x_AdditionalLightsPosition[x_1134];
    let x_1139 : i32 = u_xlati6;
    let x_1141 : vec4<f32> = x_1133.x_AdditionalLightsPosition[x_1139];
    u_xlat9 = ((-(x_1123) * vec3<f32>(x_1136.w, x_1136.w, x_1136.w)) + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
    let x_1145 : vec3<f32> = u_xlat9;
    let x_1146 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1145, x_1146);
    let x_1148 : f32 = u_xlat35;
    u_xlat35 = max(x_1148, 0.00006103515625f);
    let x_1151 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1151);
    let x_1154 : f32 = u_xlat49;
    let x_1156 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1154, x_1154, x_1154) * x_1156);
    let x_1159 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1159);
    let x_1161 : f32 = u_xlat35;
    let x_1162 : i32 = u_xlati6;
    let x_1164 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1162].x;
    u_xlat35 = (x_1161 * x_1164);
    let x_1166 : f32 = u_xlat35;
    let x_1168 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1166) * x_1168) + 1.0f);
    let x_1171 : f32 = u_xlat35;
    u_xlat35 = max(x_1171, 0.0f);
    let x_1173 : f32 = u_xlat35;
    let x_1174 : f32 = u_xlat35;
    u_xlat35 = (x_1173 * x_1174);
    let x_1176 : f32 = u_xlat35;
    let x_1177 : f32 = u_xlat50;
    u_xlat35 = (x_1176 * x_1177);
    let x_1179 : i32 = u_xlati6;
    let x_1181 : vec4<f32> = x_1133.x_AdditionalLightsSpotDir[x_1179];
    let x_1183 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), x_1183);
    let x_1185 : f32 = u_xlat50;
    let x_1186 : i32 = u_xlati6;
    let x_1188 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1186].z;
    let x_1190 : i32 = u_xlati6;
    let x_1192 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1190].w;
    u_xlat50 = ((x_1185 * x_1188) + x_1192);
    let x_1194 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1194, 0.0f, 1.0f);
    let x_1196 : f32 = u_xlat50;
    let x_1197 : f32 = u_xlat50;
    u_xlat50 = (x_1196 * x_1197);
    let x_1199 : f32 = u_xlat35;
    let x_1200 : f32 = u_xlat50;
    u_xlat35 = (x_1199 * x_1200);
    let x_1204 : i32 = u_xlati6;
    let x_1206 : f32 = x_131.x_AdditionalShadowParams[x_1204].w;
    u_xlati50 = i32(x_1206);
    let x_1209 : i32 = u_xlati50;
    u_xlatb51 = (x_1209 >= 0i);
    let x_1211 : bool = u_xlatb51;
    if (x_1211) {
      let x_1215 : i32 = u_xlati6;
      let x_1217 : f32 = x_131.x_AdditionalShadowParams[x_1215].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1217, x_1217, x_1217, x_1217))));
      let x_1221 : bool = u_xlatb51;
      if (x_1221) {
        let x_1226 : vec3<f32> = u_xlat10;
        let x_1229 : vec3<f32> = u_xlat10;
        let x_1232 : vec4<bool> = (abs(vec4<f32>(x_1226.z, x_1226.z, x_1226.y, x_1226.z)) >= abs(vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.x)));
        let x_1233 : vec3<bool> = vec3<bool>(x_1232.x, x_1232.y, x_1232.z);
        let x_1234 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
        let x_1237 : bool = u_xlatb11.y;
        let x_1239 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1237 & x_1239);
        let x_1241 : vec3<f32> = u_xlat10;
        let x_1244 : vec4<bool> = (-(vec4<f32>(x_1241.z, x_1241.y, x_1241.z, x_1241.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1245 : vec3<bool> = vec3<bool>(x_1244.x, x_1244.y, x_1244.w);
        let x_1246 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1245.x, x_1245.y, x_1246.z, x_1245.z);
        let x_1250 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1250);
        let x_1255 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1255);
        let x_1261 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1261);
        let x_1264 : bool = u_xlatb11.z;
        if (x_1264) {
          let x_1269 : f32 = u_xlat11.y;
          x_1265 = x_1269;
        } else {
          let x_1271 : f32 = u_xlat52;
          x_1265 = x_1271;
        }
        let x_1272 : f32 = x_1265;
        u_xlat52 = x_1272;
        let x_1274 : bool = u_xlatb51;
        if (x_1274) {
          let x_1279 : f32 = u_xlat11.x;
          x_1275 = x_1279;
        } else {
          let x_1281 : f32 = u_xlat52;
          x_1275 = x_1281;
        }
        let x_1282 : f32 = x_1275;
        u_xlat51 = x_1282;
        let x_1283 : i32 = u_xlati6;
        let x_1285 : f32 = x_131.x_AdditionalShadowParams[x_1283].w;
        u_xlat52 = trunc(x_1285);
        let x_1287 : f32 = u_xlat51;
        let x_1288 : f32 = u_xlat52;
        u_xlat51 = (x_1287 + x_1288);
        let x_1290 : f32 = u_xlat51;
        u_xlati50 = i32(x_1290);
      }
      let x_1292 : i32 = u_xlati50;
      u_xlati50 = (x_1292 << bitcast<u32>(2i));
      let x_1294 : vec3<f32> = vs_INTERP8;
      let x_1297 : i32 = u_xlati50;
      let x_1300 : i32 = u_xlati50;
      let x_1304 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1297 + 1i) / 4i)][((x_1300 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1294.y, x_1294.y, x_1294.y, x_1294.y) * x_1304);
      let x_1306 : i32 = u_xlati50;
      let x_1308 : i32 = u_xlati50;
      let x_1311 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1306 / 4i)][(x_1308 % 4i)];
      let x_1312 : vec3<f32> = vs_INTERP8;
      let x_1315 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1311 * vec4<f32>(x_1312.x, x_1312.x, x_1312.x, x_1312.x)) + x_1315);
      let x_1317 : i32 = u_xlati50;
      let x_1320 : i32 = u_xlati50;
      let x_1324 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1317 + 2i) / 4i)][((x_1320 + 2i) % 4i)];
      let x_1325 : vec3<f32> = vs_INTERP8;
      let x_1328 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1324 * vec4<f32>(x_1325.z, x_1325.z, x_1325.z, x_1325.z)) + x_1328);
      let x_1330 : vec4<f32> = u_xlat11;
      let x_1331 : i32 = u_xlati50;
      let x_1334 : i32 = u_xlati50;
      let x_1338 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1331 + 3i) / 4i)][((x_1334 + 3i) % 4i)];
      u_xlat11 = (x_1330 + x_1338);
      let x_1340 : vec4<f32> = u_xlat11;
      let x_1342 : vec4<f32> = u_xlat11;
      let x_1344 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) / vec3<f32>(x_1342.w, x_1342.w, x_1342.w));
      let x_1345 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
      let x_1348 : vec4<f32> = u_xlat11;
      let x_1349 : vec2<f32> = vec2<f32>(x_1348.x, x_1348.y);
      let x_1351 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
      let x_1359 : vec3<f32> = txVec2;
      let x_1361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
      u_xlat50 = x_1361;
      let x_1362 : i32 = u_xlati6;
      let x_1364 : f32 = x_131.x_AdditionalShadowParams[x_1362].x;
      u_xlat51 = (1.0f + -(x_1364));
      let x_1367 : f32 = u_xlat50;
      let x_1368 : i32 = u_xlati6;
      let x_1370 : f32 = x_131.x_AdditionalShadowParams[x_1368].x;
      let x_1372 : f32 = u_xlat51;
      u_xlat50 = ((x_1367 * x_1370) + x_1372);
      let x_1375 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1375);
      let x_1379 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1379 >= 1.0f);
      let x_1381 : bool = u_xlatb51;
      let x_1382 : bool = u_xlatb52;
      u_xlatb51 = (x_1381 | x_1382);
      let x_1384 : bool = u_xlatb51;
      let x_1385 : f32 = u_xlat50;
      u_xlat50 = select(x_1385, 1.0f, x_1384);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1388 : f32 = u_xlat50;
    u_xlat51 = (-(x_1388) + 1.0f);
    let x_1391 : f32 = u_xlat45;
    let x_1392 : f32 = u_xlat51;
    let x_1394 : f32 = u_xlat50;
    u_xlat50 = ((x_1391 * x_1392) + x_1394);
    let x_1397 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1397 & 31i)));
    let x_1401 : i32 = u_xlati51;
    let x_1404 : f32 = x_666.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1401) & bitcast<u32>(x_1404)));
    let x_1408 : i32 = u_xlati51;
    if ((x_1408 != 0i)) {
      let x_1412 : i32 = u_xlati6;
      let x_1414 : f32 = x_666.x_AdditionalLightsLightTypes[x_1412].el;
      u_xlati51 = i32(x_1414);
      let x_1417 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1417 != 0i));
      let x_1421 : i32 = u_xlati6;
      u_xlati11 = (x_1421 << bitcast<u32>(2i));
      let x_1423 : i32 = u_xlati52;
      if ((x_1423 != 0i)) {
        let x_1428 : vec3<f32> = vs_INTERP8;
        let x_1430 : i32 = u_xlati11;
        let x_1433 : i32 = u_xlati11;
        let x_1437 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1430 + 1i) / 4i)][((x_1433 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1428.y, x_1428.y, x_1428.y) * vec3<f32>(x_1437.x, x_1437.y, x_1437.w));
        let x_1440 : i32 = u_xlati11;
        let x_1442 : i32 = u_xlati11;
        let x_1445 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[(x_1440 / 4i)][(x_1442 % 4i)];
        let x_1447 : vec3<f32> = vs_INTERP8;
        let x_1450 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1445.x, x_1445.y, x_1445.w) * vec3<f32>(x_1447.x, x_1447.x, x_1447.x)) + x_1450);
        let x_1452 : i32 = u_xlati11;
        let x_1455 : i32 = u_xlati11;
        let x_1459 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1452 + 2i) / 4i)][((x_1455 + 2i) % 4i)];
        let x_1461 : vec3<f32> = vs_INTERP8;
        let x_1464 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1459.x, x_1459.y, x_1459.w) * vec3<f32>(x_1461.z, x_1461.z, x_1461.z)) + x_1464);
        let x_1466 : vec3<f32> = u_xlat25;
        let x_1467 : i32 = u_xlati11;
        let x_1470 : i32 = u_xlati11;
        let x_1474 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1467 + 3i) / 4i)][((x_1470 + 3i) % 4i)];
        u_xlat25 = (x_1466 + vec3<f32>(x_1474.x, x_1474.y, x_1474.w));
        let x_1477 : vec3<f32> = u_xlat25;
        let x_1479 : vec3<f32> = u_xlat25;
        let x_1481 : vec2<f32> = (vec2<f32>(x_1477.x, x_1477.y) / vec2<f32>(x_1479.z, x_1479.z));
        let x_1482 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1481.x, x_1481.y, x_1482.z);
        let x_1484 : vec3<f32> = u_xlat25;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1488 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1487.x, x_1487.y, x_1488.z);
        let x_1490 : vec3<f32> = u_xlat25;
        let x_1494 : vec2<f32> = clamp(vec2<f32>(x_1490.x, x_1490.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1495 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1494.x, x_1494.y, x_1495.z);
        let x_1497 : i32 = u_xlati6;
        let x_1499 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1497];
        let x_1501 : vec3<f32> = u_xlat25;
        let x_1504 : i32 = u_xlati6;
        let x_1506 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1504];
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1501.x, x_1501.y)) + vec2<f32>(x_1506.z, x_1506.w));
        let x_1509 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1508.x, x_1508.y, x_1509.z);
      } else {
        let x_1512 : i32 = u_xlati51;
        u_xlatb51 = (x_1512 == 1i);
        let x_1514 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1514);
        let x_1516 : i32 = u_xlati51;
        if ((x_1516 != 0i)) {
          let x_1521 : vec3<f32> = vs_INTERP8;
          let x_1523 : i32 = u_xlati11;
          let x_1526 : i32 = u_xlati11;
          let x_1530 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1523 + 1i) / 4i)][((x_1526 + 1i) % 4i)];
          let x_1532 : vec2<f32> = (vec2<f32>(x_1521.y, x_1521.y) * vec2<f32>(x_1530.x, x_1530.y));
          let x_1533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
          let x_1535 : i32 = u_xlati11;
          let x_1537 : i32 = u_xlati11;
          let x_1540 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[(x_1535 / 4i)][(x_1537 % 4i)];
          let x_1542 : vec3<f32> = vs_INTERP8;
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(x_1542.x, x_1542.x)) + vec2<f32>(x_1545.x, x_1545.y));
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
          let x_1550 : i32 = u_xlati11;
          let x_1553 : i32 = u_xlati11;
          let x_1557 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1550 + 2i) / 4i)][((x_1553 + 2i) % 4i)];
          let x_1559 : vec3<f32> = vs_INTERP8;
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec2<f32> = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1559.z, x_1559.z)) + vec2<f32>(x_1562.x, x_1562.y));
          let x_1565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
          let x_1567 : vec4<f32> = u_xlat12;
          let x_1569 : i32 = u_xlati11;
          let x_1572 : i32 = u_xlati11;
          let x_1576 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1569 + 3i) / 4i)][((x_1572 + 3i) % 4i)];
          let x_1578 : vec2<f32> = (vec2<f32>(x_1567.x, x_1567.y) + vec2<f32>(x_1576.x, x_1576.y));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
          let x_1581 : vec4<f32> = u_xlat12;
          let x_1584 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1585 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
          let x_1587 : vec4<f32> = u_xlat12;
          let x_1589 : vec2<f32> = fract(vec2<f32>(x_1587.x, x_1587.y));
          let x_1590 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
          let x_1592 : i32 = u_xlati6;
          let x_1594 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1592];
          let x_1596 : vec4<f32> = u_xlat12;
          let x_1599 : i32 = u_xlati6;
          let x_1601 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1599];
          let x_1603 : vec2<f32> = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1601.z, x_1601.w));
          let x_1604 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1603.x, x_1603.y, x_1604.z);
        } else {
          let x_1607 : vec3<f32> = vs_INTERP8;
          let x_1609 : i32 = u_xlati11;
          let x_1612 : i32 = u_xlati11;
          let x_1616 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1609 + 1i) / 4i)][((x_1612 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1607.y, x_1607.y, x_1607.y, x_1607.y) * x_1616);
          let x_1618 : i32 = u_xlati11;
          let x_1620 : i32 = u_xlati11;
          let x_1623 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[(x_1618 / 4i)][(x_1620 % 4i)];
          let x_1624 : vec3<f32> = vs_INTERP8;
          let x_1627 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1623 * vec4<f32>(x_1624.x, x_1624.x, x_1624.x, x_1624.x)) + x_1627);
          let x_1629 : i32 = u_xlati11;
          let x_1632 : i32 = u_xlati11;
          let x_1636 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1629 + 2i) / 4i)][((x_1632 + 2i) % 4i)];
          let x_1637 : vec3<f32> = vs_INTERP8;
          let x_1640 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1636 * vec4<f32>(x_1637.z, x_1637.z, x_1637.z, x_1637.z)) + x_1640);
          let x_1642 : vec4<f32> = u_xlat12;
          let x_1643 : i32 = u_xlati11;
          let x_1646 : i32 = u_xlati11;
          let x_1650 : vec4<f32> = x_666.x_AdditionalLightsWorldToLights[((x_1643 + 3i) / 4i)][((x_1646 + 3i) % 4i)];
          u_xlat12 = (x_1642 + x_1650);
          let x_1652 : vec4<f32> = u_xlat12;
          let x_1654 : vec4<f32> = u_xlat12;
          let x_1656 : vec3<f32> = (vec3<f32>(x_1652.x, x_1652.y, x_1652.z) / vec3<f32>(x_1654.w, x_1654.w, x_1654.w));
          let x_1657 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
          let x_1659 : vec4<f32> = u_xlat12;
          let x_1661 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1659.x, x_1659.y, x_1659.z), vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
          let x_1664 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1664);
          let x_1666 : f32 = u_xlat51;
          let x_1668 : vec4<f32> = u_xlat12;
          let x_1670 : vec3<f32> = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
          let x_1671 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
          let x_1673 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1673.x, x_1673.y, x_1673.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1678 : f32 = u_xlat51;
          u_xlat51 = max(x_1678, 0.00000099999999747524f);
          let x_1681 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1681);
          let x_1684 : f32 = u_xlat51;
          let x_1686 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1684, x_1684, x_1684) * vec3<f32>(x_1686.z, x_1686.x, x_1686.y));
          let x_1690 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1690);
          let x_1694 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1694, 0.0f, 1.0f);
          let x_1697 : vec3<f32> = u_xlat13;
          let x_1699 : vec4<bool> = (vec4<f32>(x_1697.y, x_1697.y, x_1697.y, x_1697.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1700 : vec2<bool> = vec2<bool>(x_1699.x, x_1699.w);
          let x_1701 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1700.x, x_1701.y, x_1701.z, x_1700.y);
          let x_1704 : bool = u_xlatb11.x;
          if (x_1704) {
            let x_1709 : f32 = u_xlat13.x;
            x_1705 = x_1709;
          } else {
            let x_1712 : f32 = u_xlat13.x;
            x_1705 = -(x_1712);
          }
          let x_1714 : f32 = x_1705;
          u_xlat11.x = x_1714;
          let x_1717 : bool = u_xlatb11.w;
          if (x_1717) {
            let x_1722 : f32 = u_xlat13.x;
            x_1718 = x_1722;
          } else {
            let x_1725 : f32 = u_xlat13.x;
            x_1718 = -(x_1725);
          }
          let x_1727 : f32 = x_1718;
          u_xlat11.w = x_1727;
          let x_1729 : vec4<f32> = u_xlat12;
          let x_1731 : f32 = u_xlat51;
          let x_1734 : vec4<f32> = u_xlat11;
          let x_1736 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1731, x_1731)) + vec2<f32>(x_1734.x, x_1734.w));
          let x_1737 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1736.x, x_1737.y, x_1737.z, x_1736.y);
          let x_1739 : vec4<f32> = u_xlat11;
          let x_1742 : vec2<f32> = ((vec2<f32>(x_1739.x, x_1739.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1743 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1742.x, x_1743.y, x_1743.z, x_1742.y);
          let x_1745 : vec4<f32> = u_xlat11;
          let x_1749 : vec2<f32> = clamp(vec2<f32>(x_1745.x, x_1745.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1750 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1749.x, x_1750.y, x_1750.z, x_1749.y);
          let x_1752 : i32 = u_xlati6;
          let x_1754 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1752];
          let x_1756 : vec4<f32> = u_xlat11;
          let x_1759 : i32 = u_xlati6;
          let x_1761 : vec4<f32> = x_666.x_AdditionalLightsCookieAtlasUVRects[x_1759];
          let x_1763 : vec2<f32> = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1756.x, x_1756.w)) + vec2<f32>(x_1761.z, x_1761.w));
          let x_1764 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1763.x, x_1763.y, x_1764.z);
        }
      }
      let x_1771 : vec3<f32> = u_xlat25;
      let x_1773 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1771.x, x_1771.y), 0.0f);
      u_xlat11 = x_1773;
      let x_1775 : bool = u_xlatb7.y;
      if (x_1775) {
        let x_1780 : f32 = u_xlat11.w;
        x_1776 = x_1780;
      } else {
        let x_1783 : f32 = u_xlat11.x;
        x_1776 = x_1783;
      }
      let x_1784 : f32 = x_1776;
      u_xlat51 = x_1784;
      let x_1786 : bool = u_xlatb7.x;
      if (x_1786) {
        let x_1790 : vec4<f32> = u_xlat11;
        x_1787 = vec3<f32>(x_1790.x, x_1790.y, x_1790.z);
      } else {
        let x_1793 : f32 = u_xlat51;
        x_1787 = vec3<f32>(x_1793, x_1793, x_1793);
      }
      let x_1795 : vec3<f32> = x_1787;
      let x_1796 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1802 : vec4<f32> = u_xlat11;
    let x_1804 : i32 = u_xlati6;
    let x_1806 : vec4<f32> = x_1133.x_AdditionalLightsColor[x_1804];
    let x_1808 : vec3<f32> = (vec3<f32>(x_1802.x, x_1802.y, x_1802.z) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
    let x_1809 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
    let x_1811 : f32 = u_xlat35;
    let x_1812 : f32 = u_xlat50;
    u_xlat6.x = (x_1811 * x_1812);
    let x_1815 : vec4<f32> = u_xlat1;
    let x_1817 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1815.x, x_1815.z, x_1815.w), x_1817);
    let x_1819 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1819, 0.0f, 1.0f);
    let x_1822 : f32 = u_xlat6.x;
    let x_1823 : f32 = u_xlat35;
    u_xlat6.x = (x_1822 * x_1823);
    let x_1826 : vec3<f32> = u_xlat6;
    let x_1828 : vec4<f32> = u_xlat11;
    let x_1830 : vec3<f32> = (vec3<f32>(x_1826.x, x_1826.x, x_1826.x) * vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
    let x_1833 : vec3<f32> = u_xlat9;
    let x_1834 : f32 = u_xlat49;
    let x_1837 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1833 * vec3<f32>(x_1834, x_1834, x_1834)) + x_1837);
    let x_1839 : vec3<f32> = u_xlat9;
    let x_1840 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1839, x_1840);
    let x_1844 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1844, 1.17549435e-38f);
    let x_1848 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1848);
    let x_1851 : vec3<f32> = u_xlat6;
    let x_1853 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1851.x, x_1851.x, x_1851.x) * x_1853);
    let x_1855 : vec4<f32> = u_xlat1;
    let x_1857 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_1855.x, x_1855.z, x_1855.w), x_1857);
    let x_1861 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1861, 0.0f, 1.0f);
    let x_1864 : vec3<f32> = u_xlat10;
    let x_1865 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1864, x_1865);
    let x_1867 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1867, 0.0f, 1.0f);
    let x_1870 : f32 = u_xlat6.x;
    let x_1872 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1870 * x_1872);
    let x_1876 : f32 = u_xlat6.x;
    let x_1878 : f32 = u_xlat4.x;
    u_xlat6.x = ((x_1876 * x_1878) + 1.00001001358032226562f);
    let x_1882 : f32 = u_xlat35;
    let x_1883 : f32 = u_xlat35;
    u_xlat35 = (x_1882 * x_1883);
    let x_1886 : f32 = u_xlat6.x;
    let x_1888 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1886 * x_1888);
    let x_1891 : f32 = u_xlat35;
    u_xlat35 = max(x_1891, 0.10000000149011611938f);
    let x_1894 : f32 = u_xlat6.x;
    let x_1895 : f32 = u_xlat35;
    u_xlat6.x = (x_1894 * x_1895);
    let x_1898 : f32 = u_xlat46;
    let x_1900 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1898 * x_1900);
    let x_1903 : f32 = u_xlat32;
    let x_1905 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1903 / x_1905);
    let x_1908 : vec3<f32> = u_xlat6;
    let x_1911 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1908.x, x_1908.x, x_1908.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1911);
    let x_1913 : vec3<f32> = u_xlat9;
    let x_1914 : vec4<f32> = u_xlat11;
    let x_1917 : vec4<f32> = u_xlat8;
    let x_1919 : vec3<f32> = ((x_1913 * vec3<f32>(x_1914.x, x_1914.y, x_1914.z)) + vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
    let x_1920 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);

    continuing {
      let x_1922 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1922 + bitcast<u32>(1i));
    }
  }
  let x_1924 : vec4<f32> = u_xlat3;
  let x_1926 : f32 = u_xlat47;
  let x_1929 : vec3<f32> = u_xlat20;
  let x_1930 : vec3<f32> = ((vec3<f32>(x_1924.x, x_1924.y, x_1924.z) * vec3<f32>(x_1926, x_1926, x_1926)) + x_1929);
  let x_1931 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1930.x, x_1931.y, x_1930.y, x_1930.z);
  let x_1933 : vec4<f32> = u_xlat8;
  let x_1935 : vec4<f32> = u_xlat1;
  let x_1937 : vec3<f32> = (vec3<f32>(x_1933.x, x_1933.y, x_1933.z) + vec3<f32>(x_1935.x, x_1935.z, x_1935.w));
  let x_1938 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1937.x, x_1938.y, x_1937.y, x_1937.z);
  let x_1942 : vec4<f32> = vs_INTERP6;
  let x_1944 : vec3<f32> = u_xlat0;
  let x_1946 : vec4<f32> = u_xlat1;
  let x_1948 : vec3<f32> = ((vec3<f32>(x_1942.w, x_1942.w, x_1942.w) * x_1944) + vec3<f32>(x_1946.x, x_1946.z, x_1946.w));
  let x_1949 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
  let x_1951 : bool = u_xlatb15;
  let x_1952 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1952, x_1951);
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


