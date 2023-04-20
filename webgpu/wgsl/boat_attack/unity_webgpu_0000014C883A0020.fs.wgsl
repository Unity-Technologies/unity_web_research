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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_696 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu44 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1177 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_448 : f32;
  var x_461 : f32;
  var x_473 : f32;
  var txVec1 : vec3<f32>;
  var x_780 : f32;
  var x_791 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1309 : f32;
  var x_1319 : f32;
  var txVec2 : vec3<f32>;
  var x_1750 : f32;
  var x_1763 : f32;
  var x_1821 : f32;
  var x_1832 : vec3<f32>;
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
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_426 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb1.x = (x_426 == 0.0f);
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_434 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_429) + x_434);
  let x_436 : vec3<f32> = u_xlat17;
  let x_437 : vec3<f32> = u_xlat17;
  u_xlat29 = dot(x_436, x_437);
  let x_439 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_439);
  let x_441 : f32 = u_xlat29;
  let x_443 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_441, x_441, x_441) * x_443);
  let x_447 : bool = u_xlatb1.x;
  if (x_447) {
    let x_452 : f32 = u_xlat17.x;
    x_448 = x_452;
  } else {
    let x_456 : f32 = x_53.unity_MatrixV[0i].z;
    x_448 = x_456;
  }
  let x_457 : f32 = x_448;
  u_xlat5.x = x_457;
  let x_460 : bool = u_xlatb1.x;
  if (x_460) {
    let x_465 : f32 = u_xlat17.y;
    x_461 = x_465;
  } else {
    let x_468 : f32 = x_53.unity_MatrixV[1i].z;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat5.y = x_469;
  let x_472 : bool = u_xlatb1.x;
  if (x_472) {
    let x_477 : f32 = u_xlat17.z;
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
  let x_575 : f32 = u_xlat42;
  u_xlat42 = min(x_575, 1.0f);
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_577 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_582 : f32 = u_xlat3.x;
  u_xlat17.x = (-(x_582) + 1.0f);
  let x_588 : f32 = u_xlat17.x;
  let x_590 : f32 = u_xlat17.x;
  u_xlat31 = (x_588 * x_590);
  let x_592 : f32 = u_xlat31;
  u_xlat31 = max(x_592, 0.0078125f);
  let x_596 : f32 = u_xlat31;
  let x_597 : f32 = u_xlat31;
  u_xlat45 = (x_596 * x_597);
  let x_600 : f32 = u_xlat3.x;
  u_xlat3.x = (x_600 + 0.04000002145767211914f);
  let x_605 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_605, 1.0f);
  let x_609 : f32 = u_xlat31;
  u_xlat46 = ((x_609 * 4.0f) + 2.0f);
  let x_615 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_615, 1.0f);
  let x_619 : vec4<f32> = vs_INTERP3;
  let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
  let x_622 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_620.x, x_620.y, x_622);
  let x_629 : vec3<f32> = txVec1;
  let x_631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_629.xy, x_629.z);
  u_xlat6.x = x_631;
  let x_634 : f32 = u_xlat6.x;
  let x_636 : f32 = x_131.x_MainLightShadowParams.x;
  let x_638 : f32 = u_xlat44;
  u_xlat44 = ((x_634 * x_636) + x_638);
  let x_642 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_642);
  let x_648 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_648 >= 1.0f);
  let x_652 : bool = u_xlatb20.x;
  let x_653 : bool = u_xlatb6;
  u_xlatb6 = (x_652 | x_653);
  let x_655 : bool = u_xlatb6;
  let x_656 : f32 = u_xlat44;
  u_xlat44 = select(x_656, 1.0f, x_655);
  let x_658 : vec3<f32> = vs_INTERP8;
  let x_660 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_658 + -(x_660));
  let x_663 : vec3<f32> = u_xlat6;
  let x_664 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_663, x_664);
  let x_669 : f32 = u_xlat6.x;
  let x_671 : f32 = x_131.x_MainLightShadowParams.z;
  let x_674 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_669 * x_671) + x_674);
  let x_678 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_678, 0.0f, 1.0f);
  let x_682 : f32 = u_xlat44;
  u_xlat34 = (-(x_682) + 1.0f);
  let x_686 : f32 = u_xlat20.x;
  let x_687 : f32 = u_xlat34;
  let x_689 : f32 = u_xlat44;
  u_xlat44 = ((x_686 * x_687) + x_689);
  let x_698 : f32 = x_696.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_698 == -1.0f));
  let x_702 : bool = u_xlatb20.x;
  if (x_702) {
    let x_705 : vec3<f32> = vs_INTERP8;
    let x_708 : vec4<f32> = x_696.x_MainLightWorldToLight[1i];
    let x_710 : vec2<f32> = (vec2<f32>(x_705.y, x_705.y) * vec2<f32>(x_708.x, x_708.y));
    let x_711 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_710.x, x_710.y, x_711.z);
    let x_714 : vec4<f32> = x_696.x_MainLightWorldToLight[0i];
    let x_716 : vec3<f32> = vs_INTERP8;
    let x_719 : vec3<f32> = u_xlat20;
    let x_721 : vec2<f32> = ((vec2<f32>(x_714.x, x_714.y) * vec2<f32>(x_716.x, x_716.x)) + vec2<f32>(x_719.x, x_719.y));
    let x_722 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_721.x, x_721.y, x_722.z);
    let x_725 : vec4<f32> = x_696.x_MainLightWorldToLight[2i];
    let x_727 : vec3<f32> = vs_INTERP8;
    let x_730 : vec3<f32> = u_xlat20;
    let x_732 : vec2<f32> = ((vec2<f32>(x_725.x, x_725.y) * vec2<f32>(x_727.z, x_727.z)) + vec2<f32>(x_730.x, x_730.y));
    let x_733 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_732.x, x_732.y, x_733.z);
    let x_735 : vec3<f32> = u_xlat20;
    let x_738 : vec4<f32> = x_696.x_MainLightWorldToLight[3i];
    let x_740 : vec2<f32> = (vec2<f32>(x_735.x, x_735.y) + vec2<f32>(x_738.x, x_738.y));
    let x_741 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_740.x, x_740.y, x_741.z);
    let x_743 : vec3<f32> = u_xlat20;
    let x_747 : vec2<f32> = ((vec2<f32>(x_743.x, x_743.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_748 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_747.x, x_747.y, x_748.z);
    let x_755 : vec3<f32> = u_xlat20;
    let x_758 : f32 = x_53.x_GlobalMipBias.x;
    let x_759 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_755.x, x_755.y), x_758);
    u_xlat7 = x_759;
    let x_761 : f32 = x_696.x_MainLightCookieTextureFormat;
    let x_763 : f32 = x_696.x_MainLightCookieTextureFormat;
    let x_765 : f32 = x_696.x_MainLightCookieTextureFormat;
    let x_767 : f32 = x_696.x_MainLightCookieTextureFormat;
    let x_768 : vec4<f32> = vec4<f32>(x_761, x_763, x_765, x_767);
    let x_776 : vec4<bool> = (vec4<f32>(x_768.x, x_768.y, x_768.z, x_768.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_776.x, x_776.y);
    let x_779 : bool = u_xlatb20.y;
    if (x_779) {
      let x_784 : f32 = u_xlat7.w;
      x_780 = x_784;
    } else {
      let x_787 : f32 = u_xlat7.x;
      x_780 = x_787;
    }
    let x_788 : f32 = x_780;
    u_xlat34 = x_788;
    let x_790 : bool = u_xlatb20.x;
    if (x_790) {
      let x_794 : vec4<f32> = u_xlat7;
      x_791 = vec3<f32>(x_794.x, x_794.y, x_794.z);
    } else {
      let x_797 : f32 = u_xlat34;
      x_791 = vec3<f32>(x_797, x_797, x_797);
    }
    let x_799 : vec3<f32> = x_791;
    u_xlat20 = x_799;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_804 : vec3<f32> = u_xlat20;
  let x_806 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat20 = (x_804 * vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec3<f32> = u_xlat5;
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_809), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_816 : f32 = u_xlat7.x;
  let x_818 : f32 = u_xlat7.x;
  u_xlat7.x = (x_816 + x_818);
  let x_821 : vec4<f32> = u_xlat4;
  let x_823 : vec4<f32> = u_xlat7;
  let x_827 : vec3<f32> = u_xlat5;
  let x_829 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * -(vec3<f32>(x_823.x, x_823.x, x_823.x))) + -(x_827));
  let x_830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_833 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), x_835);
  let x_837 : f32 = u_xlat49;
  u_xlat49 = clamp(x_837, 0.0f, 1.0f);
  let x_839 : f32 = u_xlat49;
  u_xlat49 = (-(x_839) + 1.0f);
  let x_842 : f32 = u_xlat49;
  let x_843 : f32 = u_xlat49;
  u_xlat49 = (x_842 * x_843);
  let x_845 : f32 = u_xlat49;
  let x_846 : f32 = u_xlat49;
  u_xlat49 = (x_845 * x_846);
  let x_849 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_849) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_857 : f32 = u_xlat17.x;
  let x_859 : f32 = u_xlat8.x;
  u_xlat17.x = (x_857 * x_859);
  let x_863 : f32 = u_xlat17.x;
  u_xlat17.x = (x_863 * 6.0f);
  let x_875 : vec4<f32> = u_xlat7;
  let x_878 : f32 = u_xlat17.x;
  let x_879 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_875.x, x_875.y, x_875.z), x_878);
  u_xlat8 = x_879;
  let x_881 : f32 = u_xlat8.w;
  u_xlat17.x = (x_881 + -1.0f);
  let x_885 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_887 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_885 * x_887) + 1.0f);
  let x_892 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_892, 0.0f);
  let x_896 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_896);
  let x_900 : f32 = u_xlat17.x;
  let x_902 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_900 * x_902);
  let x_906 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_906);
  let x_910 : f32 = u_xlat17.x;
  let x_912 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_910 * x_912);
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec3<f32> = u_xlat17;
  let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917.x, x_917.x, x_917.x));
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat31;
  let x_924 : f32 = u_xlat31;
  let x_928 : vec2<f32> = ((vec2<f32>(x_922, x_922) * vec2<f32>(x_924, x_924)) + vec2<f32>(-1.0f, 1.0f));
  let x_929 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_928.x, x_928.y, x_929.z);
  let x_932 : f32 = u_xlat17.y;
  u_xlat31 = (1.0f / x_932);
  let x_935 : f32 = u_xlat3.x;
  u_xlat3.x = (x_935 + -0.03999999910593032837f);
  let x_939 : f32 = u_xlat49;
  let x_941 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_939 * x_941) + 0.03999999910593032837f);
  let x_947 : f32 = u_xlat3.x;
  let x_948 : f32 = u_xlat31;
  u_xlat3.x = (x_947 * x_948);
  let x_951 : vec4<f32> = u_xlat3;
  let x_953 : vec4<f32> = u_xlat7;
  let x_955 : vec3<f32> = (vec3<f32>(x_951.x, x_951.x, x_951.x) * vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat1;
  let x_960 : vec3<f32> = u_xlat2;
  let x_962 : vec4<f32> = u_xlat7;
  let x_964 : vec3<f32> = ((vec3<f32>(x_958.x, x_958.z, x_958.w) * x_960) + vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_964.x, x_965.y, x_964.y, x_964.z);
  let x_967 : f32 = u_xlat44;
  let x_969 : f32 = x_337.unity_LightData.z;
  u_xlat44 = (x_967 * x_969);
  let x_971 : vec4<f32> = u_xlat4;
  let x_974 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_979 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_979, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat44;
  let x_984 : f32 = u_xlat3.x;
  u_xlat44 = (x_982 * x_984);
  let x_986 : f32 = u_xlat44;
  let x_988 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_986, x_986, x_986) * x_988);
  let x_990 : vec3<f32> = u_xlat5;
  let x_992 : vec4<f32> = x_53.x_MainLightPosition;
  let x_994 : vec3<f32> = (x_990 + vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_997.x, x_997.y, x_997.z), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : f32 = u_xlat44;
  u_xlat44 = max(x_1002, 1.17549435e-38f);
  let x_1005 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1005);
  let x_1007 : f32 = u_xlat44;
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec3<f32> = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat4;
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1019, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1029 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat44;
  let x_1033 : f32 = u_xlat44;
  u_xlat44 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat44;
  let x_1037 : f32 = u_xlat17.x;
  u_xlat44 = ((x_1035 * x_1037) + 1.00001001358032226562f);
  let x_1042 : f32 = u_xlat3.x;
  let x_1044 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1042 * x_1044);
  let x_1047 : f32 = u_xlat44;
  let x_1048 : f32 = u_xlat44;
  u_xlat44 = (x_1047 * x_1048);
  let x_1051 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1051, 0.10000000149011611938f);
  let x_1055 : f32 = u_xlat44;
  let x_1057 : f32 = u_xlat3.x;
  u_xlat44 = (x_1055 * x_1057);
  let x_1059 : f32 = u_xlat46;
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat45;
  let x_1063 : f32 = u_xlat44;
  u_xlat44 = (x_1062 / x_1063);
  let x_1065 : f32 = u_xlat44;
  let x_1069 : vec3<f32> = u_xlat2;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1069);
  let x_1071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec3<f32> = u_xlat20;
  let x_1074 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1073 * vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1081 : f32 = x_337.unity_LightData.y;
  u_xlat44 = min(x_1079, x_1081);
  let x_1085 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1085));
  let x_1089 : f32 = u_xlat6.x;
  let x_1092 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_1095 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1089 * x_1092) + x_1095);
  let x_1099 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1099, 0.0f, 1.0f);
  let x_1104 : f32 = x_696.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1106 : f32 = x_696.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1108 : f32 = x_696.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1110 : f32 = x_696.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1111 : vec4<f32> = vec4<f32>(x_1104, x_1106, x_1108, x_1110);
  let x_1117 : vec4<bool> = (vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1111.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1117.x, x_1117.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1129 : u32 = u_xlatu_loop_1;
    let x_1130 : u32 = u_xlatu44;
    if ((x_1129 < x_1130)) {
    } else {
      break;
    }
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1133 >> 2u);
    let x_1137 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1137 & 3u));
    let x_1140 : u32 = u_xlatu6;
    let x_1143 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_1140)];
    let x_1153 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1158 : vec4<u32> = indexable[x_1153];
    u_xlat6.x = dot(x_1143, bitcast<vec4<f32>>(x_1158));
    let x_1164 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1164);
    let x_1167 : vec3<f32> = vs_INTERP8;
    let x_1178 : i32 = u_xlati6;
    let x_1180 : vec4<f32> = x_1177.x_AdditionalLightsPosition[x_1178];
    let x_1183 : i32 = u_xlati6;
    let x_1185 : vec4<f32> = x_1177.x_AdditionalLightsPosition[x_1183];
    u_xlat9 = ((-(x_1167) * vec3<f32>(x_1180.w, x_1180.w, x_1180.w)) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
    let x_1189 : vec3<f32> = u_xlat9;
    let x_1190 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1189, x_1190);
    let x_1192 : f32 = u_xlat35;
    u_xlat35 = max(x_1192, 0.00006103515625f);
    let x_1195 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1195);
    let x_1198 : f32 = u_xlat49;
    let x_1200 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1198, x_1198, x_1198) * x_1200);
    let x_1203 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1203);
    let x_1205 : f32 = u_xlat35;
    let x_1206 : i32 = u_xlati6;
    let x_1208 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1206].x;
    u_xlat35 = (x_1205 * x_1208);
    let x_1210 : f32 = u_xlat35;
    let x_1212 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1210) * x_1212) + 1.0f);
    let x_1215 : f32 = u_xlat35;
    u_xlat35 = max(x_1215, 0.0f);
    let x_1217 : f32 = u_xlat35;
    let x_1218 : f32 = u_xlat35;
    u_xlat35 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat35;
    let x_1221 : f32 = u_xlat50;
    u_xlat35 = (x_1220 * x_1221);
    let x_1223 : i32 = u_xlati6;
    let x_1225 : vec4<f32> = x_1177.x_AdditionalLightsSpotDir[x_1223];
    let x_1227 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), x_1227);
    let x_1229 : f32 = u_xlat50;
    let x_1230 : i32 = u_xlati6;
    let x_1232 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1230].z;
    let x_1234 : i32 = u_xlati6;
    let x_1236 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1234].w;
    u_xlat50 = ((x_1229 * x_1232) + x_1236);
    let x_1238 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1238, 0.0f, 1.0f);
    let x_1240 : f32 = u_xlat50;
    let x_1241 : f32 = u_xlat50;
    u_xlat50 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat35;
    let x_1244 : f32 = u_xlat50;
    u_xlat35 = (x_1243 * x_1244);
    let x_1248 : i32 = u_xlati6;
    let x_1250 : f32 = x_131.x_AdditionalShadowParams[x_1248].w;
    u_xlati50 = i32(x_1250);
    let x_1253 : i32 = u_xlati50;
    u_xlatb51 = (x_1253 >= 0i);
    let x_1255 : bool = u_xlatb51;
    if (x_1255) {
      let x_1259 : i32 = u_xlati6;
      let x_1261 : f32 = x_131.x_AdditionalShadowParams[x_1259].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1261, x_1261, x_1261, x_1261))));
      let x_1265 : bool = u_xlatb51;
      if (x_1265) {
        let x_1270 : vec3<f32> = u_xlat10;
        let x_1273 : vec3<f32> = u_xlat10;
        let x_1276 : vec4<bool> = (abs(vec4<f32>(x_1270.z, x_1270.z, x_1270.y, x_1270.z)) >= abs(vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.x)));
        let x_1277 : vec3<bool> = vec3<bool>(x_1276.x, x_1276.y, x_1276.z);
        let x_1278 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1281 : bool = u_xlatb11.y;
        let x_1283 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1281 & x_1283);
        let x_1285 : vec3<f32> = u_xlat10;
        let x_1288 : vec4<bool> = (-(vec4<f32>(x_1285.z, x_1285.y, x_1285.z, x_1285.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1289 : vec3<bool> = vec3<bool>(x_1288.x, x_1288.y, x_1288.w);
        let x_1290 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1289.x, x_1289.y, x_1290.z, x_1289.z);
        let x_1294 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1294);
        let x_1299 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1299);
        let x_1305 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1305);
        let x_1308 : bool = u_xlatb11.z;
        if (x_1308) {
          let x_1313 : f32 = u_xlat11.y;
          x_1309 = x_1313;
        } else {
          let x_1315 : f32 = u_xlat52;
          x_1309 = x_1315;
        }
        let x_1316 : f32 = x_1309;
        u_xlat52 = x_1316;
        let x_1318 : bool = u_xlatb51;
        if (x_1318) {
          let x_1323 : f32 = u_xlat11.x;
          x_1319 = x_1323;
        } else {
          let x_1325 : f32 = u_xlat52;
          x_1319 = x_1325;
        }
        let x_1326 : f32 = x_1319;
        u_xlat51 = x_1326;
        let x_1327 : i32 = u_xlati6;
        let x_1329 : f32 = x_131.x_AdditionalShadowParams[x_1327].w;
        u_xlat52 = trunc(x_1329);
        let x_1331 : f32 = u_xlat51;
        let x_1332 : f32 = u_xlat52;
        u_xlat51 = (x_1331 + x_1332);
        let x_1334 : f32 = u_xlat51;
        u_xlati50 = i32(x_1334);
      }
      let x_1336 : i32 = u_xlati50;
      u_xlati50 = (x_1336 << bitcast<u32>(2i));
      let x_1338 : vec3<f32> = vs_INTERP8;
      let x_1341 : i32 = u_xlati50;
      let x_1344 : i32 = u_xlati50;
      let x_1348 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1341 + 1i) / 4i)][((x_1344 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1338.y, x_1338.y, x_1338.y, x_1338.y) * x_1348);
      let x_1350 : i32 = u_xlati50;
      let x_1352 : i32 = u_xlati50;
      let x_1355 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1350 / 4i)][(x_1352 % 4i)];
      let x_1356 : vec3<f32> = vs_INTERP8;
      let x_1359 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1355 * vec4<f32>(x_1356.x, x_1356.x, x_1356.x, x_1356.x)) + x_1359);
      let x_1361 : i32 = u_xlati50;
      let x_1364 : i32 = u_xlati50;
      let x_1368 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1361 + 2i) / 4i)][((x_1364 + 2i) % 4i)];
      let x_1369 : vec3<f32> = vs_INTERP8;
      let x_1372 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1368 * vec4<f32>(x_1369.z, x_1369.z, x_1369.z, x_1369.z)) + x_1372);
      let x_1374 : vec4<f32> = u_xlat11;
      let x_1375 : i32 = u_xlati50;
      let x_1378 : i32 = u_xlati50;
      let x_1382 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1375 + 3i) / 4i)][((x_1378 + 3i) % 4i)];
      u_xlat11 = (x_1374 + x_1382);
      let x_1384 : vec4<f32> = u_xlat11;
      let x_1386 : vec4<f32> = u_xlat11;
      let x_1388 : vec3<f32> = (vec3<f32>(x_1384.x, x_1384.y, x_1384.z) / vec3<f32>(x_1386.w, x_1386.w, x_1386.w));
      let x_1389 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
      let x_1392 : vec4<f32> = u_xlat11;
      let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
      let x_1395 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
      let x_1403 : vec3<f32> = txVec2;
      let x_1405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
      u_xlat50 = x_1405;
      let x_1406 : i32 = u_xlati6;
      let x_1408 : f32 = x_131.x_AdditionalShadowParams[x_1406].x;
      u_xlat51 = (1.0f + -(x_1408));
      let x_1411 : f32 = u_xlat50;
      let x_1412 : i32 = u_xlati6;
      let x_1414 : f32 = x_131.x_AdditionalShadowParams[x_1412].x;
      let x_1416 : f32 = u_xlat51;
      u_xlat50 = ((x_1411 * x_1414) + x_1416);
      let x_1419 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1419);
      let x_1423 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1423 >= 1.0f);
      let x_1425 : bool = u_xlatb51;
      let x_1426 : bool = u_xlatb52;
      u_xlatb51 = (x_1425 | x_1426);
      let x_1428 : bool = u_xlatb51;
      let x_1429 : f32 = u_xlat50;
      u_xlat50 = select(x_1429, 1.0f, x_1428);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1432 : f32 = u_xlat50;
    u_xlat51 = (-(x_1432) + 1.0f);
    let x_1436 : f32 = u_xlat3.x;
    let x_1437 : f32 = u_xlat51;
    let x_1439 : f32 = u_xlat50;
    u_xlat50 = ((x_1436 * x_1437) + x_1439);
    let x_1442 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1442 & 31i)));
    let x_1446 : i32 = u_xlati51;
    let x_1449 : f32 = x_696.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1446) & bitcast<u32>(x_1449)));
    let x_1453 : i32 = u_xlati51;
    if ((x_1453 != 0i)) {
      let x_1457 : i32 = u_xlati6;
      let x_1459 : f32 = x_696.x_AdditionalLightsLightTypes[x_1457].el;
      u_xlati51 = i32(x_1459);
      let x_1462 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1462 != 0i));
      let x_1466 : i32 = u_xlati6;
      u_xlati11 = (x_1466 << bitcast<u32>(2i));
      let x_1468 : i32 = u_xlati52;
      if ((x_1468 != 0i)) {
        let x_1473 : vec3<f32> = vs_INTERP8;
        let x_1475 : i32 = u_xlati11;
        let x_1478 : i32 = u_xlati11;
        let x_1482 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1475 + 1i) / 4i)][((x_1478 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1473.y, x_1473.y, x_1473.y) * vec3<f32>(x_1482.x, x_1482.y, x_1482.w));
        let x_1485 : i32 = u_xlati11;
        let x_1487 : i32 = u_xlati11;
        let x_1490 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[(x_1485 / 4i)][(x_1487 % 4i)];
        let x_1492 : vec3<f32> = vs_INTERP8;
        let x_1495 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1490.x, x_1490.y, x_1490.w) * vec3<f32>(x_1492.x, x_1492.x, x_1492.x)) + x_1495);
        let x_1497 : i32 = u_xlati11;
        let x_1500 : i32 = u_xlati11;
        let x_1504 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1497 + 2i) / 4i)][((x_1500 + 2i) % 4i)];
        let x_1506 : vec3<f32> = vs_INTERP8;
        let x_1509 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1504.x, x_1504.y, x_1504.w) * vec3<f32>(x_1506.z, x_1506.z, x_1506.z)) + x_1509);
        let x_1511 : vec3<f32> = u_xlat25;
        let x_1512 : i32 = u_xlati11;
        let x_1515 : i32 = u_xlati11;
        let x_1519 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1512 + 3i) / 4i)][((x_1515 + 3i) % 4i)];
        u_xlat25 = (x_1511 + vec3<f32>(x_1519.x, x_1519.y, x_1519.w));
        let x_1522 : vec3<f32> = u_xlat25;
        let x_1524 : vec3<f32> = u_xlat25;
        let x_1526 : vec2<f32> = (vec2<f32>(x_1522.x, x_1522.y) / vec2<f32>(x_1524.z, x_1524.z));
        let x_1527 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1526.x, x_1526.y, x_1527.z);
        let x_1529 : vec3<f32> = u_xlat25;
        let x_1532 : vec2<f32> = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1533 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1532.x, x_1532.y, x_1533.z);
        let x_1535 : vec3<f32> = u_xlat25;
        let x_1539 : vec2<f32> = clamp(vec2<f32>(x_1535.x, x_1535.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1540 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1539.x, x_1539.y, x_1540.z);
        let x_1542 : i32 = u_xlati6;
        let x_1544 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1542];
        let x_1546 : vec3<f32> = u_xlat25;
        let x_1549 : i32 = u_xlati6;
        let x_1551 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1549];
        let x_1553 : vec2<f32> = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1551.z, x_1551.w));
        let x_1554 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1553.x, x_1553.y, x_1554.z);
      } else {
        let x_1557 : i32 = u_xlati51;
        u_xlatb51 = (x_1557 == 1i);
        let x_1559 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1559);
        let x_1561 : i32 = u_xlati51;
        if ((x_1561 != 0i)) {
          let x_1566 : vec3<f32> = vs_INTERP8;
          let x_1568 : i32 = u_xlati11;
          let x_1571 : i32 = u_xlati11;
          let x_1575 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
          let x_1577 : vec2<f32> = (vec2<f32>(x_1566.y, x_1566.y) * vec2<f32>(x_1575.x, x_1575.y));
          let x_1578 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
          let x_1580 : i32 = u_xlati11;
          let x_1582 : i32 = u_xlati11;
          let x_1585 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[(x_1580 / 4i)][(x_1582 % 4i)];
          let x_1587 : vec3<f32> = vs_INTERP8;
          let x_1590 : vec4<f32> = u_xlat12;
          let x_1592 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.x, x_1587.x)) + vec2<f32>(x_1590.x, x_1590.y));
          let x_1593 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
          let x_1595 : i32 = u_xlati11;
          let x_1598 : i32 = u_xlati11;
          let x_1602 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1595 + 2i) / 4i)][((x_1598 + 2i) % 4i)];
          let x_1604 : vec3<f32> = vs_INTERP8;
          let x_1607 : vec4<f32> = u_xlat12;
          let x_1609 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1604.z, x_1604.z)) + vec2<f32>(x_1607.x, x_1607.y));
          let x_1610 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1609.x, x_1609.y, x_1610.z, x_1610.w);
          let x_1612 : vec4<f32> = u_xlat12;
          let x_1614 : i32 = u_xlati11;
          let x_1617 : i32 = u_xlati11;
          let x_1621 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1614 + 3i) / 4i)][((x_1617 + 3i) % 4i)];
          let x_1623 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.y) + vec2<f32>(x_1621.x, x_1621.y));
          let x_1624 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
          let x_1626 : vec4<f32> = u_xlat12;
          let x_1629 : vec2<f32> = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1630 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
          let x_1632 : vec4<f32> = u_xlat12;
          let x_1634 : vec2<f32> = fract(vec2<f32>(x_1632.x, x_1632.y));
          let x_1635 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
          let x_1637 : i32 = u_xlati6;
          let x_1639 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1637];
          let x_1641 : vec4<f32> = u_xlat12;
          let x_1644 : i32 = u_xlati6;
          let x_1646 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1644];
          let x_1648 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.y) * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1646.z, x_1646.w));
          let x_1649 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1648.x, x_1648.y, x_1649.z);
        } else {
          let x_1652 : vec3<f32> = vs_INTERP8;
          let x_1654 : i32 = u_xlati11;
          let x_1657 : i32 = u_xlati11;
          let x_1661 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1654 + 1i) / 4i)][((x_1657 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1652.y, x_1652.y, x_1652.y, x_1652.y) * x_1661);
          let x_1663 : i32 = u_xlati11;
          let x_1665 : i32 = u_xlati11;
          let x_1668 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[(x_1663 / 4i)][(x_1665 % 4i)];
          let x_1669 : vec3<f32> = vs_INTERP8;
          let x_1672 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1668 * vec4<f32>(x_1669.x, x_1669.x, x_1669.x, x_1669.x)) + x_1672);
          let x_1674 : i32 = u_xlati11;
          let x_1677 : i32 = u_xlati11;
          let x_1681 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1674 + 2i) / 4i)][((x_1677 + 2i) % 4i)];
          let x_1682 : vec3<f32> = vs_INTERP8;
          let x_1685 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1681 * vec4<f32>(x_1682.z, x_1682.z, x_1682.z, x_1682.z)) + x_1685);
          let x_1687 : vec4<f32> = u_xlat12;
          let x_1688 : i32 = u_xlati11;
          let x_1691 : i32 = u_xlati11;
          let x_1695 : vec4<f32> = x_696.x_AdditionalLightsWorldToLights[((x_1688 + 3i) / 4i)][((x_1691 + 3i) % 4i)];
          u_xlat12 = (x_1687 + x_1695);
          let x_1697 : vec4<f32> = u_xlat12;
          let x_1699 : vec4<f32> = u_xlat12;
          let x_1701 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.y, x_1697.z) / vec3<f32>(x_1699.w, x_1699.w, x_1699.w));
          let x_1702 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
          let x_1704 : vec4<f32> = u_xlat12;
          let x_1706 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
          let x_1709 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1709);
          let x_1711 : f32 = u_xlat51;
          let x_1713 : vec4<f32> = u_xlat12;
          let x_1715 : vec3<f32> = (vec3<f32>(x_1711, x_1711, x_1711) * vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
          let x_1716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
          let x_1718 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1718.x, x_1718.y, x_1718.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1723 : f32 = u_xlat51;
          u_xlat51 = max(x_1723, 0.00000099999999747524f);
          let x_1726 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1726);
          let x_1729 : f32 = u_xlat51;
          let x_1731 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1729, x_1729, x_1729) * vec3<f32>(x_1731.z, x_1731.x, x_1731.y));
          let x_1735 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1735);
          let x_1739 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1739, 0.0f, 1.0f);
          let x_1742 : vec3<f32> = u_xlat13;
          let x_1744 : vec4<bool> = (vec4<f32>(x_1742.y, x_1742.y, x_1742.y, x_1742.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1745 : vec2<bool> = vec2<bool>(x_1744.x, x_1744.w);
          let x_1746 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1745.x, x_1746.y, x_1746.z, x_1745.y);
          let x_1749 : bool = u_xlatb11.x;
          if (x_1749) {
            let x_1754 : f32 = u_xlat13.x;
            x_1750 = x_1754;
          } else {
            let x_1757 : f32 = u_xlat13.x;
            x_1750 = -(x_1757);
          }
          let x_1759 : f32 = x_1750;
          u_xlat11.x = x_1759;
          let x_1762 : bool = u_xlatb11.w;
          if (x_1762) {
            let x_1767 : f32 = u_xlat13.x;
            x_1763 = x_1767;
          } else {
            let x_1770 : f32 = u_xlat13.x;
            x_1763 = -(x_1770);
          }
          let x_1772 : f32 = x_1763;
          u_xlat11.w = x_1772;
          let x_1774 : vec4<f32> = u_xlat12;
          let x_1776 : f32 = u_xlat51;
          let x_1779 : vec4<f32> = u_xlat11;
          let x_1781 : vec2<f32> = ((vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(x_1776, x_1776)) + vec2<f32>(x_1779.x, x_1779.w));
          let x_1782 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1781.x, x_1782.y, x_1782.z, x_1781.y);
          let x_1784 : vec4<f32> = u_xlat11;
          let x_1787 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1788 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1787.x, x_1788.y, x_1788.z, x_1787.y);
          let x_1790 : vec4<f32> = u_xlat11;
          let x_1794 : vec2<f32> = clamp(vec2<f32>(x_1790.x, x_1790.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1795 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1794.x, x_1795.y, x_1795.z, x_1794.y);
          let x_1797 : i32 = u_xlati6;
          let x_1799 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1797];
          let x_1801 : vec4<f32> = u_xlat11;
          let x_1804 : i32 = u_xlati6;
          let x_1806 : vec4<f32> = x_696.x_AdditionalLightsCookieAtlasUVRects[x_1804];
          let x_1808 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1801.x, x_1801.w)) + vec2<f32>(x_1806.z, x_1806.w));
          let x_1809 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1808.x, x_1808.y, x_1809.z);
        }
      }
      let x_1816 : vec3<f32> = u_xlat25;
      let x_1818 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1816.x, x_1816.y), 0.0f);
      u_xlat11 = x_1818;
      let x_1820 : bool = u_xlatb7.y;
      if (x_1820) {
        let x_1825 : f32 = u_xlat11.w;
        x_1821 = x_1825;
      } else {
        let x_1828 : f32 = u_xlat11.x;
        x_1821 = x_1828;
      }
      let x_1829 : f32 = x_1821;
      u_xlat51 = x_1829;
      let x_1831 : bool = u_xlatb7.x;
      if (x_1831) {
        let x_1835 : vec4<f32> = u_xlat11;
        x_1832 = vec3<f32>(x_1835.x, x_1835.y, x_1835.z);
      } else {
        let x_1838 : f32 = u_xlat51;
        x_1832 = vec3<f32>(x_1838, x_1838, x_1838);
      }
      let x_1840 : vec3<f32> = x_1832;
      let x_1841 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1847 : vec4<f32> = u_xlat11;
    let x_1849 : i32 = u_xlati6;
    let x_1851 : vec4<f32> = x_1177.x_AdditionalLightsColor[x_1849];
    let x_1853 : vec3<f32> = (vec3<f32>(x_1847.x, x_1847.y, x_1847.z) * vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
    let x_1856 : f32 = u_xlat35;
    let x_1857 : f32 = u_xlat50;
    u_xlat6.x = (x_1856 * x_1857);
    let x_1860 : vec4<f32> = u_xlat4;
    let x_1862 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1860.x, x_1860.y, x_1860.z), x_1862);
    let x_1864 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1864, 0.0f, 1.0f);
    let x_1867 : f32 = u_xlat6.x;
    let x_1868 : f32 = u_xlat35;
    u_xlat6.x = (x_1867 * x_1868);
    let x_1871 : vec3<f32> = u_xlat6;
    let x_1873 : vec4<f32> = u_xlat11;
    let x_1875 : vec3<f32> = (vec3<f32>(x_1871.x, x_1871.x, x_1871.x) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : vec3<f32> = u_xlat9;
    let x_1879 : f32 = u_xlat49;
    let x_1882 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1878 * vec3<f32>(x_1879, x_1879, x_1879)) + x_1882);
    let x_1884 : vec3<f32> = u_xlat9;
    let x_1885 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1884, x_1885);
    let x_1889 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1889, 1.17549435e-38f);
    let x_1893 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1893);
    let x_1896 : vec3<f32> = u_xlat6;
    let x_1898 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1896.x, x_1896.x, x_1896.x) * x_1898);
    let x_1900 : vec4<f32> = u_xlat4;
    let x_1902 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_1900.x, x_1900.y, x_1900.z), x_1902);
    let x_1906 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1906, 0.0f, 1.0f);
    let x_1909 : vec3<f32> = u_xlat10;
    let x_1910 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1909, x_1910);
    let x_1912 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1912, 0.0f, 1.0f);
    let x_1915 : f32 = u_xlat6.x;
    let x_1917 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1915 * x_1917);
    let x_1921 : f32 = u_xlat6.x;
    let x_1923 : f32 = u_xlat17.x;
    u_xlat6.x = ((x_1921 * x_1923) + 1.00001001358032226562f);
    let x_1927 : f32 = u_xlat35;
    let x_1928 : f32 = u_xlat35;
    u_xlat35 = (x_1927 * x_1928);
    let x_1931 : f32 = u_xlat6.x;
    let x_1933 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1931 * x_1933);
    let x_1936 : f32 = u_xlat35;
    u_xlat35 = max(x_1936, 0.10000000149011611938f);
    let x_1939 : f32 = u_xlat6.x;
    let x_1940 : f32 = u_xlat35;
    u_xlat6.x = (x_1939 * x_1940);
    let x_1943 : f32 = u_xlat46;
    let x_1945 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1943 * x_1945);
    let x_1948 : f32 = u_xlat45;
    let x_1950 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1948 / x_1950);
    let x_1953 : vec3<f32> = u_xlat6;
    let x_1956 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1953.x, x_1953.x, x_1953.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1956);
    let x_1958 : vec3<f32> = u_xlat9;
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1962 : vec4<f32> = u_xlat8;
    let x_1964 : vec3<f32> = ((x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);

    continuing {
      let x_1967 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1967 + bitcast<u32>(1i));
    }
  }
  let x_1969 : vec4<f32> = u_xlat1;
  let x_1971 : f32 = u_xlat47;
  let x_1974 : vec3<f32> = u_xlat20;
  let x_1975 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.z, x_1969.w) * vec3<f32>(x_1971, x_1971, x_1971)) + x_1974);
  let x_1976 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1975.x, x_1976.y, x_1975.y, x_1975.z);
  let x_1978 : vec4<f32> = u_xlat8;
  let x_1980 : vec4<f32> = u_xlat1;
  let x_1982 : vec3<f32> = (vec3<f32>(x_1978.x, x_1978.y, x_1978.z) + vec3<f32>(x_1980.x, x_1980.z, x_1980.w));
  let x_1983 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1982.x, x_1983.y, x_1982.y, x_1982.z);
  let x_1987 : vec4<f32> = vs_INTERP6;
  let x_1989 : vec3<f32> = u_xlat0;
  let x_1991 : vec4<f32> = u_xlat1;
  let x_1993 : vec3<f32> = ((vec3<f32>(x_1987.w, x_1987.w, x_1987.w) * x_1989) + vec3<f32>(x_1991.x, x_1991.z, x_1991.w));
  let x_1994 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : bool = u_xlatb15;
  let x_1997 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_1997, x_1996);
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


