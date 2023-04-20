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

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat18 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat6 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_707 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu44 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1190 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_254 : f32;
  var x_301 : f32;
  var x_465 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var x_777 : f32;
  var x_788 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1324 : f32;
  var x_1335 : f32;
  var txVec2 : vec3<f32>;
  var x_1781 : f32;
  var x_1794 : f32;
  var x_1852 : f32;
  var x_1863 : vec3<f32>;
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
  let x_456 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_456;
  let x_459 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_459;
  let x_462 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_462;
  let x_464 : bool = u_xlatb17;
  if (x_464) {
    let x_468 : vec4<f32> = u_xlat4;
    x_465 = vec3<f32>(x_468.x, x_468.y, x_468.z);
  } else {
    let x_471 : vec4<f32> = u_xlat5;
    x_465 = vec3<f32>(x_471.x, x_471.y, x_471.z);
  }
  let x_473 : vec3<f32> = x_465;
  u_xlat17 = x_473;
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
  u_xlat18 = vec3<f32>(x_542.x, x_542.y, x_542.z);
  let x_544 : vec4<f32> = u_xlat5;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_549 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_551.x, x_551.z, x_551.w), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_558 : f32 = u_xlat5.x;
  u_xlat5.x = (x_558 + 0.5f);
  let x_561 : vec3<f32> = u_xlat18;
  let x_562 : vec4<f32> = u_xlat5;
  u_xlat18 = (x_561 * vec3<f32>(x_562.x, x_562.x, x_562.x));
  let x_566 : f32 = u_xlat5.w;
  u_xlat5.x = max(x_566, 0.00009999999747378752f);
  let x_569 : vec3<f32> = u_xlat18;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat18 = (x_569 / vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = x_574;
  let x_577 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_577, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat42;
  u_xlat42 = min(x_580, 1.0f);
  let x_582 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_582 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_587 : f32 = u_xlat3.x;
  u_xlat5.x = (-(x_587) + 1.0f);
  let x_593 : f32 = u_xlat5.x;
  let x_595 : f32 = u_xlat5.x;
  u_xlat19 = (x_593 * x_595);
  let x_597 : f32 = u_xlat19;
  u_xlat19 = max(x_597, 0.0078125f);
  let x_601 : f32 = u_xlat19;
  let x_602 : f32 = u_xlat19;
  u_xlat33 = (x_601 * x_602);
  let x_605 : f32 = u_xlat3.x;
  u_xlat3.x = (x_605 + 0.04000002145767211914f);
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_610, 1.0f);
  let x_614 : f32 = u_xlat19;
  u_xlat47 = ((x_614 * 4.0f) + 2.0f);
  let x_620 : f32 = vs_INTERP6.w;
  u_xlat6 = min(x_620, 1.0f);
  let x_624 : vec4<f32> = vs_INTERP3;
  let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
  let x_627 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_625.x, x_625.y, x_627);
  let x_635 : vec3<f32> = txVec1;
  let x_637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_635.xy, x_635.z);
  u_xlat20.x = x_637;
  let x_640 : f32 = u_xlat20.x;
  let x_642 : f32 = x_131.x_MainLightShadowParams.x;
  let x_644 : f32 = u_xlat44;
  u_xlat44 = ((x_640 * x_642) + x_644);
  let x_650 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (0.0f >= x_650);
  let x_655 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_655 >= 1.0f);
  let x_659 : bool = u_xlatb34.x;
  let x_661 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_659 | x_661);
  let x_665 : bool = u_xlatb20.x;
  let x_666 : f32 = u_xlat44;
  u_xlat44 = select(x_666, 1.0f, x_665);
  let x_668 : vec3<f32> = vs_INTERP8;
  let x_670 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat20 = (x_668 + -(x_670));
  let x_673 : vec3<f32> = u_xlat20;
  let x_674 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_673, x_674);
  let x_680 : f32 = u_xlat20.x;
  let x_682 : f32 = x_131.x_MainLightShadowParams.z;
  let x_685 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_680 * x_682) + x_685);
  let x_689 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_689, 0.0f, 1.0f);
  let x_693 : f32 = u_xlat44;
  u_xlat48 = (-(x_693) + 1.0f);
  let x_697 : f32 = u_xlat34.x;
  let x_698 : f32 = u_xlat48;
  let x_700 : f32 = u_xlat44;
  u_xlat44 = ((x_697 * x_698) + x_700);
  let x_709 : f32 = x_707.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_709 == -1.0f));
  let x_713 : bool = u_xlatb34.x;
  if (x_713) {
    let x_716 : vec3<f32> = vs_INTERP8;
    let x_719 : vec4<f32> = x_707.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_716.y, x_716.y) * vec2<f32>(x_719.x, x_719.y));
    let x_723 : vec4<f32> = x_707.x_MainLightWorldToLight[0i];
    let x_725 : vec3<f32> = vs_INTERP8;
    let x_728 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_725.x, x_725.x)) + x_728);
    let x_731 : vec4<f32> = x_707.x_MainLightWorldToLight[2i];
    let x_733 : vec3<f32> = vs_INTERP8;
    let x_736 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_731.x, x_731.y) * vec2<f32>(x_733.z, x_733.z)) + x_736);
    let x_738 : vec2<f32> = u_xlat34;
    let x_740 : vec4<f32> = x_707.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_738 + vec2<f32>(x_740.x, x_740.y));
    let x_743 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_743 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_753 : vec2<f32> = u_xlat34;
    let x_755 : f32 = x_53.x_GlobalMipBias.x;
    let x_756 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_753, x_755);
    u_xlat7 = x_756;
    let x_758 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_760 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_762 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_764 : f32 = x_707.x_MainLightCookieTextureFormat;
    let x_765 : vec4<f32> = vec4<f32>(x_758, x_760, x_762, x_764);
    let x_773 : vec4<bool> = (vec4<f32>(x_765.x, x_765.y, x_765.z, x_765.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_773.x, x_773.y);
    let x_776 : bool = u_xlatb34.y;
    if (x_776) {
      let x_781 : f32 = u_xlat7.w;
      x_777 = x_781;
    } else {
      let x_784 : f32 = u_xlat7.x;
      x_777 = x_784;
    }
    let x_785 : f32 = x_777;
    u_xlat48 = x_785;
    let x_787 : bool = u_xlatb34.x;
    if (x_787) {
      let x_791 : vec4<f32> = u_xlat7;
      x_788 = vec3<f32>(x_791.x, x_791.y, x_791.z);
    } else {
      let x_794 : f32 = u_xlat48;
      x_788 = vec3<f32>(x_794, x_794, x_794);
    }
    let x_796 : vec3<f32> = x_788;
    let x_797 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_803 : vec4<f32> = u_xlat7;
  let x_806 : vec4<f32> = x_53.x_MainLightColor;
  let x_808 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : vec3<f32> = u_xlat17;
  let x_813 : vec4<f32> = u_xlat1;
  u_xlat34.x = dot(-(x_811), vec3<f32>(x_813.x, x_813.z, x_813.w));
  let x_818 : f32 = u_xlat34.x;
  let x_820 : f32 = u_xlat34.x;
  u_xlat34.x = (x_818 + x_820);
  let x_824 : vec4<f32> = u_xlat1;
  let x_826 : vec2<f32> = u_xlat34;
  let x_830 : vec3<f32> = u_xlat17;
  let x_832 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.z, x_824.w) * -(vec3<f32>(x_826.x, x_826.x, x_826.x))) + -(x_830));
  let x_833 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat1;
  let x_837 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_835.x, x_835.z, x_835.w), x_837);
  let x_841 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_841, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_845) + 1.0f);
  let x_850 : f32 = u_xlat34.x;
  let x_852 : f32 = u_xlat34.x;
  u_xlat34.x = (x_850 * x_852);
  let x_856 : f32 = u_xlat34.x;
  let x_858 : f32 = u_xlat34.x;
  u_xlat34.x = (x_856 * x_858);
  let x_862 : f32 = u_xlat5.x;
  u_xlat48 = ((-(x_862) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_869 : f32 = u_xlat5.x;
  let x_870 : f32 = u_xlat48;
  u_xlat5.x = (x_869 * x_870);
  let x_874 : f32 = u_xlat5.x;
  u_xlat5.x = (x_874 * 6.0f);
  let x_886 : vec4<f32> = u_xlat8;
  let x_889 : f32 = u_xlat5.x;
  let x_890 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_886.x, x_886.y, x_886.z), x_889);
  u_xlat8 = x_890;
  let x_892 : f32 = u_xlat8.w;
  u_xlat5.x = (x_892 + -1.0f);
  let x_896 : f32 = x_337.unity_SpecCube0_HDR.w;
  let x_898 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_896 * x_898) + 1.0f);
  let x_903 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_903, 0.0f);
  let x_907 : f32 = u_xlat5.x;
  u_xlat5.x = log2(x_907);
  let x_911 : f32 = u_xlat5.x;
  let x_913 : f32 = x_337.unity_SpecCube0_HDR.y;
  u_xlat5.x = (x_911 * x_913);
  let x_917 : f32 = u_xlat5.x;
  u_xlat5.x = exp2(x_917);
  let x_921 : f32 = u_xlat5.x;
  let x_923 : f32 = x_337.unity_SpecCube0_HDR.x;
  u_xlat5.x = (x_921 * x_923);
  let x_926 : vec4<f32> = u_xlat8;
  let x_928 : vec4<f32> = u_xlat5;
  let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_928.x, x_928.x, x_928.x));
  let x_931 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : f32 = u_xlat19;
  let x_935 : f32 = u_xlat19;
  let x_939 : vec2<f32> = ((vec2<f32>(x_933, x_933) * vec2<f32>(x_935, x_935)) + vec2<f32>(-1.0f, 1.0f));
  let x_940 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
  let x_943 : f32 = u_xlat5.y;
  u_xlat19 = (1.0f / x_943);
  let x_946 : f32 = u_xlat3.x;
  u_xlat3.x = (x_946 + -0.03999999910593032837f);
  let x_951 : f32 = u_xlat34.x;
  let x_953 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_951 * x_953) + 0.03999999910593032837f);
  let x_959 : f32 = u_xlat3.x;
  let x_960 : f32 = u_xlat19;
  u_xlat3.x = (x_959 * x_960);
  let x_963 : vec4<f32> = u_xlat3;
  let x_965 : vec4<f32> = u_xlat8;
  let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.x, x_963.x) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec3<f32> = u_xlat18;
  let x_971 : vec3<f32> = u_xlat2;
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat18 = ((x_970 * x_971) + vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat44;
  let x_978 : f32 = x_337.unity_LightData.z;
  u_xlat44 = (x_976 * x_978);
  let x_980 : vec4<f32> = u_xlat1;
  let x_983 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_980.x, x_980.z, x_980.w), vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_988 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_988, 0.0f, 1.0f);
  let x_991 : f32 = u_xlat44;
  let x_993 : f32 = u_xlat3.x;
  u_xlat44 = (x_991 * x_993);
  let x_995 : f32 = u_xlat44;
  let x_997 : vec4<f32> = u_xlat7;
  let x_999 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat17;
  let x_1004 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1006 : vec3<f32> = (x_1002 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat8;
  let x_1011 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : f32 = u_xlat44;
  u_xlat44 = max(x_1014, 1.17549435e-38f);
  let x_1017 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1017);
  let x_1019 : f32 = u_xlat44;
  let x_1021 : vec4<f32> = u_xlat8;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019, x_1019, x_1019) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat1;
  let x_1028 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1026.x, x_1026.z, x_1026.w), vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1031, 0.0f, 1.0f);
  let x_1034 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1041 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1041, 0.0f, 1.0f);
  let x_1044 : f32 = u_xlat44;
  let x_1045 : f32 = u_xlat44;
  u_xlat44 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat44;
  let x_1049 : f32 = u_xlat5.x;
  u_xlat44 = ((x_1047 * x_1049) + 1.00001001358032226562f);
  let x_1054 : f32 = u_xlat3.x;
  let x_1056 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1054 * x_1056);
  let x_1059 : f32 = u_xlat44;
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = (x_1059 * x_1060);
  let x_1063 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1063, 0.10000000149011611938f);
  let x_1067 : f32 = u_xlat44;
  let x_1069 : f32 = u_xlat3.x;
  u_xlat44 = (x_1067 * x_1069);
  let x_1071 : f32 = u_xlat47;
  let x_1072 : f32 = u_xlat44;
  u_xlat44 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat33;
  let x_1075 : f32 = u_xlat44;
  u_xlat44 = (x_1074 / x_1075);
  let x_1077 : f32 = u_xlat44;
  let x_1081 : vec3<f32> = u_xlat2;
  let x_1082 : vec3<f32> = ((vec3<f32>(x_1077, x_1077, x_1077) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1081);
  let x_1083 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat7;
  let x_1087 : vec4<f32> = u_xlat8;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1094 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1096 : f32 = x_337.unity_LightData.y;
  u_xlat44 = min(x_1094, x_1096);
  let x_1100 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1100));
  let x_1104 : f32 = u_xlat20.x;
  let x_1107 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_1110 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1104 * x_1107) + x_1110);
  let x_1114 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1114, 0.0f, 1.0f);
  let x_1118 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1120 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1122 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1124 : f32 = x_707.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1125 : vec4<f32> = vec4<f32>(x_1118, x_1120, x_1122, x_1124);
  let x_1132 : vec4<bool> = (vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1132.x, x_1132.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1144 : u32 = u_xlatu_loop_1;
    let x_1145 : u32 = u_xlatu44;
    if ((x_1144 < x_1145)) {
    } else {
      break;
    }
    let x_1148 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1148 >> 2u);
    let x_1152 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1152 & 3u));
    let x_1155 : u32 = u_xlatu48;
    let x_1158 : vec4<f32> = x_337.unity_LightIndices[bitcast<i32>(x_1155)];
    let x_1168 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1173 : vec4<u32> = indexable[x_1168];
    u_xlat48 = dot(x_1158, bitcast<vec4<f32>>(x_1173));
    let x_1177 : f32 = u_xlat48;
    u_xlati48 = i32(x_1177);
    let x_1180 : vec3<f32> = vs_INTERP8;
    let x_1191 : i32 = u_xlati48;
    let x_1193 : vec4<f32> = x_1190.x_AdditionalLightsPosition[x_1191];
    let x_1196 : i32 = u_xlati48;
    let x_1198 : vec4<f32> = x_1190.x_AdditionalLightsPosition[x_1196];
    u_xlat9 = ((-(x_1180) * vec3<f32>(x_1193.w, x_1193.w, x_1193.w)) + vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1202 : vec3<f32> = u_xlat9;
    let x_1203 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1202, x_1203);
    let x_1205 : f32 = u_xlat49;
    u_xlat49 = max(x_1205, 0.00006103515625f);
    let x_1209 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1209);
    let x_1212 : f32 = u_xlat50;
    let x_1214 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1212, x_1212, x_1212) * x_1214);
    let x_1217 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1217);
    let x_1219 : f32 = u_xlat49;
    let x_1220 : i32 = u_xlati48;
    let x_1222 : f32 = x_1190.x_AdditionalLightsAttenuation[x_1220].x;
    u_xlat49 = (x_1219 * x_1222);
    let x_1224 : f32 = u_xlat49;
    let x_1226 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1224) * x_1226) + 1.0f);
    let x_1229 : f32 = u_xlat49;
    u_xlat49 = max(x_1229, 0.0f);
    let x_1231 : f32 = u_xlat49;
    let x_1232 : f32 = u_xlat49;
    u_xlat49 = (x_1231 * x_1232);
    let x_1234 : f32 = u_xlat49;
    let x_1235 : f32 = u_xlat51;
    u_xlat49 = (x_1234 * x_1235);
    let x_1237 : i32 = u_xlati48;
    let x_1239 : vec4<f32> = x_1190.x_AdditionalLightsSpotDir[x_1237];
    let x_1241 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1239.x, x_1239.y, x_1239.z), x_1241);
    let x_1243 : f32 = u_xlat51;
    let x_1244 : i32 = u_xlati48;
    let x_1246 : f32 = x_1190.x_AdditionalLightsAttenuation[x_1244].z;
    let x_1248 : i32 = u_xlati48;
    let x_1250 : f32 = x_1190.x_AdditionalLightsAttenuation[x_1248].w;
    u_xlat51 = ((x_1243 * x_1246) + x_1250);
    let x_1252 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1252, 0.0f, 1.0f);
    let x_1254 : f32 = u_xlat51;
    let x_1255 : f32 = u_xlat51;
    u_xlat51 = (x_1254 * x_1255);
    let x_1257 : f32 = u_xlat49;
    let x_1258 : f32 = u_xlat51;
    u_xlat49 = (x_1257 * x_1258);
    let x_1262 : i32 = u_xlati48;
    let x_1264 : f32 = x_131.x_AdditionalShadowParams[x_1262].w;
    u_xlati51 = i32(x_1264);
    let x_1267 : i32 = u_xlati51;
    u_xlatb52 = (x_1267 >= 0i);
    let x_1269 : bool = u_xlatb52;
    if (x_1269) {
      let x_1273 : i32 = u_xlati48;
      let x_1275 : f32 = x_131.x_AdditionalShadowParams[x_1273].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1275, x_1275, x_1275, x_1275))));
      let x_1279 : bool = u_xlatb52;
      if (x_1279) {
        let x_1284 : vec3<f32> = u_xlat10;
        let x_1287 : vec3<f32> = u_xlat10;
        let x_1290 : vec4<bool> = (abs(vec4<f32>(x_1284.z, x_1284.z, x_1284.y, x_1284.z)) >= abs(vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.x)));
        let x_1291 : vec3<bool> = vec3<bool>(x_1290.x, x_1290.y, x_1290.z);
        let x_1292 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
        let x_1295 : bool = u_xlatb11.y;
        let x_1297 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1295 & x_1297);
        let x_1299 : vec3<f32> = u_xlat10;
        let x_1302 : vec4<bool> = (-(vec4<f32>(x_1299.z, x_1299.y, x_1299.z, x_1299.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1303 : vec3<bool> = vec3<bool>(x_1302.x, x_1302.y, x_1302.w);
        let x_1304 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1303.x, x_1303.y, x_1304.z, x_1303.z);
        let x_1308 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1308);
        let x_1313 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1313);
        let x_1319 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1319);
        let x_1323 : bool = u_xlatb11.z;
        if (x_1323) {
          let x_1328 : f32 = u_xlat11.y;
          x_1324 = x_1328;
        } else {
          let x_1330 : f32 = u_xlat53;
          x_1324 = x_1330;
        }
        let x_1331 : f32 = x_1324;
        u_xlat25.x = x_1331;
        let x_1334 : bool = u_xlatb52;
        if (x_1334) {
          let x_1339 : f32 = u_xlat11.x;
          x_1335 = x_1339;
        } else {
          let x_1342 : f32 = u_xlat25.x;
          x_1335 = x_1342;
        }
        let x_1343 : f32 = x_1335;
        u_xlat52 = x_1343;
        let x_1344 : i32 = u_xlati48;
        let x_1346 : f32 = x_131.x_AdditionalShadowParams[x_1344].w;
        u_xlat11.x = trunc(x_1346);
        let x_1349 : f32 = u_xlat52;
        let x_1351 : f32 = u_xlat11.x;
        u_xlat52 = (x_1349 + x_1351);
        let x_1353 : f32 = u_xlat52;
        u_xlati51 = i32(x_1353);
      }
      let x_1355 : i32 = u_xlati51;
      u_xlati51 = (x_1355 << bitcast<u32>(2i));
      let x_1357 : vec3<f32> = vs_INTERP8;
      let x_1360 : i32 = u_xlati51;
      let x_1363 : i32 = u_xlati51;
      let x_1367 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1360 + 1i) / 4i)][((x_1363 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1357.y, x_1357.y, x_1357.y, x_1357.y) * x_1367);
      let x_1369 : i32 = u_xlati51;
      let x_1371 : i32 = u_xlati51;
      let x_1374 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_1369 / 4i)][(x_1371 % 4i)];
      let x_1375 : vec3<f32> = vs_INTERP8;
      let x_1378 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1374 * vec4<f32>(x_1375.x, x_1375.x, x_1375.x, x_1375.x)) + x_1378);
      let x_1380 : i32 = u_xlati51;
      let x_1383 : i32 = u_xlati51;
      let x_1387 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1380 + 2i) / 4i)][((x_1383 + 2i) % 4i)];
      let x_1388 : vec3<f32> = vs_INTERP8;
      let x_1391 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1387 * vec4<f32>(x_1388.z, x_1388.z, x_1388.z, x_1388.z)) + x_1391);
      let x_1393 : vec4<f32> = u_xlat11;
      let x_1394 : i32 = u_xlati51;
      let x_1397 : i32 = u_xlati51;
      let x_1401 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_1394 + 3i) / 4i)][((x_1397 + 3i) % 4i)];
      u_xlat11 = (x_1393 + x_1401);
      let x_1403 : vec4<f32> = u_xlat11;
      let x_1405 : vec4<f32> = u_xlat11;
      let x_1407 : vec3<f32> = (vec3<f32>(x_1403.x, x_1403.y, x_1403.z) / vec3<f32>(x_1405.w, x_1405.w, x_1405.w));
      let x_1408 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
      let x_1411 : vec4<f32> = u_xlat11;
      let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
      let x_1414 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
      let x_1422 : vec3<f32> = txVec2;
      let x_1424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
      u_xlat51 = x_1424;
      let x_1425 : i32 = u_xlati48;
      let x_1427 : f32 = x_131.x_AdditionalShadowParams[x_1425].x;
      u_xlat52 = (1.0f + -(x_1427));
      let x_1430 : f32 = u_xlat51;
      let x_1431 : i32 = u_xlati48;
      let x_1433 : f32 = x_131.x_AdditionalShadowParams[x_1431].x;
      let x_1435 : f32 = u_xlat52;
      u_xlat51 = ((x_1430 * x_1433) + x_1435);
      let x_1438 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1438);
      let x_1441 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1441 >= 1.0f);
      let x_1444 : bool = u_xlatb52;
      let x_1446 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1444 | x_1446);
      let x_1448 : bool = u_xlatb52;
      let x_1449 : f32 = u_xlat51;
      u_xlat51 = select(x_1449, 1.0f, x_1448);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1452 : f32 = u_xlat51;
    u_xlat52 = (-(x_1452) + 1.0f);
    let x_1456 : f32 = u_xlat3.x;
    let x_1457 : f32 = u_xlat52;
    let x_1459 : f32 = u_xlat51;
    u_xlat51 = ((x_1456 * x_1457) + x_1459);
    let x_1462 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1462 & 31i)));
    let x_1466 : i32 = u_xlati52;
    let x_1469 : f32 = x_707.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1466) & bitcast<u32>(x_1469)));
    let x_1473 : i32 = u_xlati52;
    if ((x_1473 != 0i)) {
      let x_1477 : i32 = u_xlati48;
      let x_1479 : f32 = x_707.x_AdditionalLightsLightTypes[x_1477].el;
      u_xlati52 = i32(x_1479);
      let x_1482 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1482 != 0i));
      let x_1486 : i32 = u_xlati48;
      u_xlati25 = (x_1486 << bitcast<u32>(2i));
      let x_1488 : i32 = u_xlati11;
      if ((x_1488 != 0i)) {
        let x_1492 : vec3<f32> = vs_INTERP8;
        let x_1494 : i32 = u_xlati25;
        let x_1497 : i32 = u_xlati25;
        let x_1501 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1494 + 1i) / 4i)][((x_1497 + 1i) % 4i)];
        let x_1503 : vec3<f32> = (vec3<f32>(x_1492.y, x_1492.y, x_1492.y) * vec3<f32>(x_1501.x, x_1501.y, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1504.y, x_1503.y, x_1503.z);
        let x_1506 : i32 = u_xlati25;
        let x_1508 : i32 = u_xlati25;
        let x_1511 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[(x_1506 / 4i)][(x_1508 % 4i)];
        let x_1513 : vec3<f32> = vs_INTERP8;
        let x_1516 : vec4<f32> = u_xlat11;
        let x_1518 : vec3<f32> = ((vec3<f32>(x_1511.x, x_1511.y, x_1511.w) * vec3<f32>(x_1513.x, x_1513.x, x_1513.x)) + vec3<f32>(x_1516.x, x_1516.z, x_1516.w));
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1519.y, x_1518.y, x_1518.z);
        let x_1521 : i32 = u_xlati25;
        let x_1524 : i32 = u_xlati25;
        let x_1528 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1521 + 2i) / 4i)][((x_1524 + 2i) % 4i)];
        let x_1530 : vec3<f32> = vs_INTERP8;
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1535 : vec3<f32> = ((vec3<f32>(x_1528.x, x_1528.y, x_1528.w) * vec3<f32>(x_1530.z, x_1530.z, x_1530.z)) + vec3<f32>(x_1533.x, x_1533.z, x_1533.w));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1535.x, x_1536.y, x_1535.y, x_1535.z);
        let x_1538 : vec4<f32> = u_xlat11;
        let x_1540 : i32 = u_xlati25;
        let x_1543 : i32 = u_xlati25;
        let x_1547 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1540 + 3i) / 4i)][((x_1543 + 3i) % 4i)];
        let x_1549 : vec3<f32> = (vec3<f32>(x_1538.x, x_1538.z, x_1538.w) + vec3<f32>(x_1547.x, x_1547.y, x_1547.w));
        let x_1550 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1549.z);
        let x_1552 : vec4<f32> = u_xlat11;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec2<f32> = (vec2<f32>(x_1552.x, x_1552.z) / vec2<f32>(x_1554.w, x_1554.w));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1556.x, x_1557.y, x_1556.y, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1562 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1563.y, x_1562.y, x_1563.w);
        let x_1565 : vec4<f32> = u_xlat11;
        let x_1569 : vec2<f32> = clamp(vec2<f32>(x_1565.x, x_1565.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1569.x, x_1570.y, x_1569.y, x_1570.w);
        let x_1572 : i32 = u_xlati48;
        let x_1574 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1572];
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1579 : i32 = u_xlati48;
        let x_1581 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1579];
        let x_1583 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * vec2<f32>(x_1576.x, x_1576.z)) + vec2<f32>(x_1581.z, x_1581.w));
        let x_1584 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1583.x, x_1584.y, x_1583.y, x_1584.w);
      } else {
        let x_1587 : i32 = u_xlati52;
        u_xlatb52 = (x_1587 == 1i);
        let x_1589 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1589);
        let x_1591 : i32 = u_xlati52;
        if ((x_1591 != 0i)) {
          let x_1596 : vec3<f32> = vs_INTERP8;
          let x_1598 : i32 = u_xlati25;
          let x_1601 : i32 = u_xlati25;
          let x_1605 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1598 + 1i) / 4i)][((x_1601 + 1i) % 4i)];
          let x_1607 : vec2<f32> = (vec2<f32>(x_1596.y, x_1596.y) * vec2<f32>(x_1605.x, x_1605.y));
          let x_1608 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
          let x_1610 : i32 = u_xlati25;
          let x_1612 : i32 = u_xlati25;
          let x_1615 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[(x_1610 / 4i)][(x_1612 % 4i)];
          let x_1617 : vec3<f32> = vs_INTERP8;
          let x_1620 : vec4<f32> = u_xlat12;
          let x_1622 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(x_1617.x, x_1617.x)) + vec2<f32>(x_1620.x, x_1620.y));
          let x_1623 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1622.x, x_1622.y, x_1623.z, x_1623.w);
          let x_1625 : i32 = u_xlati25;
          let x_1628 : i32 = u_xlati25;
          let x_1632 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1625 + 2i) / 4i)][((x_1628 + 2i) % 4i)];
          let x_1634 : vec3<f32> = vs_INTERP8;
          let x_1637 : vec4<f32> = u_xlat12;
          let x_1639 : vec2<f32> = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634.z, x_1634.z)) + vec2<f32>(x_1637.x, x_1637.y));
          let x_1640 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1639.x, x_1639.y, x_1640.z, x_1640.w);
          let x_1642 : vec4<f32> = u_xlat12;
          let x_1644 : i32 = u_xlati25;
          let x_1647 : i32 = u_xlati25;
          let x_1651 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1644 + 3i) / 4i)][((x_1647 + 3i) % 4i)];
          let x_1653 : vec2<f32> = (vec2<f32>(x_1642.x, x_1642.y) + vec2<f32>(x_1651.x, x_1651.y));
          let x_1654 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
          let x_1656 : vec4<f32> = u_xlat12;
          let x_1659 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1660 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
          let x_1662 : vec4<f32> = u_xlat12;
          let x_1664 : vec2<f32> = fract(vec2<f32>(x_1662.x, x_1662.y));
          let x_1665 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1664.x, x_1664.y, x_1665.z, x_1665.w);
          let x_1667 : i32 = u_xlati48;
          let x_1669 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1667];
          let x_1671 : vec4<f32> = u_xlat12;
          let x_1674 : i32 = u_xlati48;
          let x_1676 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1674];
          let x_1678 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1671.x, x_1671.y)) + vec2<f32>(x_1676.z, x_1676.w));
          let x_1679 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1678.x, x_1679.y, x_1678.y, x_1679.w);
        } else {
          let x_1682 : vec3<f32> = vs_INTERP8;
          let x_1684 : i32 = u_xlati25;
          let x_1687 : i32 = u_xlati25;
          let x_1691 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1684 + 1i) / 4i)][((x_1687 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1682.y, x_1682.y, x_1682.y, x_1682.y) * x_1691);
          let x_1693 : i32 = u_xlati25;
          let x_1695 : i32 = u_xlati25;
          let x_1698 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[(x_1693 / 4i)][(x_1695 % 4i)];
          let x_1699 : vec3<f32> = vs_INTERP8;
          let x_1702 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1698 * vec4<f32>(x_1699.x, x_1699.x, x_1699.x, x_1699.x)) + x_1702);
          let x_1704 : i32 = u_xlati25;
          let x_1707 : i32 = u_xlati25;
          let x_1711 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1704 + 2i) / 4i)][((x_1707 + 2i) % 4i)];
          let x_1712 : vec3<f32> = vs_INTERP8;
          let x_1715 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1711 * vec4<f32>(x_1712.z, x_1712.z, x_1712.z, x_1712.z)) + x_1715);
          let x_1717 : vec4<f32> = u_xlat12;
          let x_1718 : i32 = u_xlati25;
          let x_1721 : i32 = u_xlati25;
          let x_1725 : vec4<f32> = x_707.x_AdditionalLightsWorldToLights[((x_1718 + 3i) / 4i)][((x_1721 + 3i) % 4i)];
          u_xlat12 = (x_1717 + x_1725);
          let x_1727 : vec4<f32> = u_xlat12;
          let x_1729 : vec4<f32> = u_xlat12;
          let x_1731 : vec3<f32> = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) / vec3<f32>(x_1729.w, x_1729.w, x_1729.w));
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
          let x_1734 : vec4<f32> = u_xlat12;
          let x_1736 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1734.x, x_1734.y, x_1734.z), vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
          let x_1739 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1739);
          let x_1741 : f32 = u_xlat52;
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1745 : vec3<f32> = (vec3<f32>(x_1741, x_1741, x_1741) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
          let x_1746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
          let x_1748 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1748.x, x_1748.y, x_1748.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1753 : f32 = u_xlat52;
          u_xlat52 = max(x_1753, 0.00000099999999747524f);
          let x_1756 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1756);
          let x_1759 : f32 = u_xlat52;
          let x_1761 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1759, x_1759, x_1759) * vec3<f32>(x_1761.z, x_1761.x, x_1761.y));
          let x_1765 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1765);
          let x_1769 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1769, 0.0f, 1.0f);
          let x_1773 : vec3<f32> = u_xlat13;
          let x_1775 : vec4<bool> = (vec4<f32>(x_1773.y, x_1773.y, x_1773.z, x_1773.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1776 : vec2<bool> = vec2<bool>(x_1775.x, x_1775.z);
          let x_1777 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1776.x, x_1777.y, x_1776.y);
          let x_1780 : bool = u_xlatb25.x;
          if (x_1780) {
            let x_1785 : f32 = u_xlat13.x;
            x_1781 = x_1785;
          } else {
            let x_1788 : f32 = u_xlat13.x;
            x_1781 = -(x_1788);
          }
          let x_1790 : f32 = x_1781;
          u_xlat25.x = x_1790;
          let x_1793 : bool = u_xlatb25.z;
          if (x_1793) {
            let x_1798 : f32 = u_xlat13.x;
            x_1794 = x_1798;
          } else {
            let x_1801 : f32 = u_xlat13.x;
            x_1794 = -(x_1801);
          }
          let x_1803 : f32 = x_1794;
          u_xlat25.z = x_1803;
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : f32 = u_xlat52;
          let x_1810 : vec3<f32> = u_xlat25;
          let x_1812 : vec2<f32> = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1807, x_1807)) + vec2<f32>(x_1810.x, x_1810.z));
          let x_1813 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1812.x, x_1813.y, x_1812.y);
          let x_1815 : vec3<f32> = u_xlat25;
          let x_1818 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1819 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1818.x, x_1819.y, x_1818.y);
          let x_1821 : vec3<f32> = u_xlat25;
          let x_1825 : vec2<f32> = clamp(vec2<f32>(x_1821.x, x_1821.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1826 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1825.x, x_1826.y, x_1825.y);
          let x_1828 : i32 = u_xlati48;
          let x_1830 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1828];
          let x_1832 : vec3<f32> = u_xlat25;
          let x_1835 : i32 = u_xlati48;
          let x_1837 : vec4<f32> = x_707.x_AdditionalLightsCookieAtlasUVRects[x_1835];
          let x_1839 : vec2<f32> = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1832.x, x_1832.z)) + vec2<f32>(x_1837.z, x_1837.w));
          let x_1840 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1839.x, x_1840.y, x_1839.y, x_1840.w);
        }
      }
      let x_1847 : vec4<f32> = u_xlat11;
      let x_1849 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1847.x, x_1847.z), 0.0f);
      u_xlat11 = x_1849;
      let x_1851 : bool = u_xlatb20.y;
      if (x_1851) {
        let x_1856 : f32 = u_xlat11.w;
        x_1852 = x_1856;
      } else {
        let x_1859 : f32 = u_xlat11.x;
        x_1852 = x_1859;
      }
      let x_1860 : f32 = x_1852;
      u_xlat52 = x_1860;
      let x_1862 : bool = u_xlatb20.x;
      if (x_1862) {
        let x_1866 : vec4<f32> = u_xlat11;
        x_1863 = vec3<f32>(x_1866.x, x_1866.y, x_1866.z);
      } else {
        let x_1869 : f32 = u_xlat52;
        x_1863 = vec3<f32>(x_1869, x_1869, x_1869);
      }
      let x_1871 : vec3<f32> = x_1863;
      let x_1872 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1878 : vec4<f32> = u_xlat11;
    let x_1880 : i32 = u_xlati48;
    let x_1882 : vec4<f32> = x_1190.x_AdditionalLightsColor[x_1880];
    let x_1884 : vec3<f32> = (vec3<f32>(x_1878.x, x_1878.y, x_1878.z) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
    let x_1887 : f32 = u_xlat49;
    let x_1888 : f32 = u_xlat51;
    u_xlat48 = (x_1887 * x_1888);
    let x_1890 : vec4<f32> = u_xlat1;
    let x_1892 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1890.x, x_1890.z, x_1890.w), x_1892);
    let x_1894 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1894, 0.0f, 1.0f);
    let x_1896 : f32 = u_xlat48;
    let x_1897 : f32 = u_xlat49;
    u_xlat48 = (x_1896 * x_1897);
    let x_1899 : f32 = u_xlat48;
    let x_1901 : vec4<f32> = u_xlat11;
    let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
    let x_1906 : vec3<f32> = u_xlat9;
    let x_1907 : f32 = u_xlat50;
    let x_1910 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1906 * vec3<f32>(x_1907, x_1907, x_1907)) + x_1910);
    let x_1912 : vec3<f32> = u_xlat9;
    let x_1913 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1912, x_1913);
    let x_1915 : f32 = u_xlat48;
    u_xlat48 = max(x_1915, 1.17549435e-38f);
    let x_1917 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1917);
    let x_1919 : f32 = u_xlat48;
    let x_1921 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1919, x_1919, x_1919) * x_1921);
    let x_1923 : vec4<f32> = u_xlat1;
    let x_1925 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1923.x, x_1923.z, x_1923.w), x_1925);
    let x_1927 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1927, 0.0f, 1.0f);
    let x_1929 : vec3<f32> = u_xlat10;
    let x_1930 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1929, x_1930);
    let x_1932 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1932, 0.0f, 1.0f);
    let x_1934 : f32 = u_xlat48;
    let x_1935 : f32 = u_xlat48;
    u_xlat48 = (x_1934 * x_1935);
    let x_1937 : f32 = u_xlat48;
    let x_1939 : f32 = u_xlat5.x;
    u_xlat48 = ((x_1937 * x_1939) + 1.00001001358032226562f);
    let x_1942 : f32 = u_xlat49;
    let x_1943 : f32 = u_xlat49;
    u_xlat49 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat48;
    let x_1946 : f32 = u_xlat48;
    u_xlat48 = (x_1945 * x_1946);
    let x_1948 : f32 = u_xlat49;
    u_xlat49 = max(x_1948, 0.10000000149011611938f);
    let x_1950 : f32 = u_xlat48;
    let x_1951 : f32 = u_xlat49;
    u_xlat48 = (x_1950 * x_1951);
    let x_1953 : f32 = u_xlat47;
    let x_1954 : f32 = u_xlat48;
    u_xlat48 = (x_1953 * x_1954);
    let x_1956 : f32 = u_xlat33;
    let x_1957 : f32 = u_xlat48;
    u_xlat48 = (x_1956 / x_1957);
    let x_1959 : f32 = u_xlat48;
    let x_1962 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1959, x_1959, x_1959) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1962);
    let x_1964 : vec3<f32> = u_xlat9;
    let x_1965 : vec4<f32> = u_xlat11;
    let x_1968 : vec4<f32> = u_xlat8;
    let x_1970 : vec3<f32> = ((x_1964 * vec3<f32>(x_1965.x, x_1965.y, x_1965.z)) + vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
    let x_1971 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);

    continuing {
      let x_1973 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1973 + bitcast<u32>(1i));
    }
  }
  let x_1975 : vec3<f32> = u_xlat18;
  let x_1976 : f32 = u_xlat6;
  let x_1979 : vec4<f32> = u_xlat7;
  let x_1981 : vec3<f32> = ((x_1975 * vec3<f32>(x_1976, x_1976, x_1976)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1981.x, x_1982.y, x_1981.y, x_1981.z);
  let x_1984 : vec4<f32> = u_xlat8;
  let x_1986 : vec4<f32> = u_xlat1;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) + vec3<f32>(x_1986.x, x_1986.z, x_1986.w));
  let x_1989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1988.x, x_1989.y, x_1988.y, x_1988.z);
  let x_1991 : vec4<f32> = vs_INTERP6;
  let x_1993 : vec3<f32> = u_xlat0;
  let x_1995 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1991.w, x_1991.w, x_1991.w) * x_1993) + vec3<f32>(x_1995.x, x_1995.z, x_1995.w));
  let x_1999 : f32 = u_xlat4.x;
  let x_2001 : f32 = u_xlat4.x;
  u_xlat1.x = (x_1999 * -(x_2001));
  let x_2006 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2006);
  let x_2009 : vec3<f32> = u_xlat0;
  let x_2012 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_2009 + -(vec3<f32>(x_2012.x, x_2012.y, x_2012.z)));
  let x_2018 : vec4<f32> = u_xlat1;
  let x_2020 : vec3<f32> = u_xlat0;
  let x_2023 : vec4<f32> = x_53.unity_FogColor;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2018.x, x_2018.x, x_2018.x) * x_2020) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : bool = u_xlatb15;
  let x_2029 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2029, x_2028);
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


