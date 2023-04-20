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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_123 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat18 : f32;

var<private> u_xlatb18 : bool;

var<private> u_xlatb32 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat32 : f32;

@group(1) @binding(5) var<uniform> x_559 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_734 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu35 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlati35 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_985 : AdditionalLights;

var<private> u_xlat51 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlati52 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb25 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb40 : vec2<bool>;

var<private> u_xlat40 : vec2<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat53 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu18 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_96 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_514 : f32;
  var x_643 : f32;
  var x_654 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1120 : f32;
  var x_1132 : f32;
  var txVec1 : vec3<f32>;
  var x_1595 : f32;
  var x_1608 : f32;
  var x_1666 : f32;
  var x_1677 : vec3<f32>;
  var x_1858 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb42 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat44;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb42;
  if (x_94) {
    let x_99 : vec3<f32> = u_xlat2;
    x_96 = x_99;
  } else {
    let x_101 : vec3<f32> = u_xlat3;
    x_96 = x_101;
  }
  let x_102 : vec3<f32> = x_96;
  u_xlat2 = x_102;
  let x_105 : vec3<f32> = vs_TEXCOORD2;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_105, x_106);
  let x_108 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_108);
  let x_110 : f32 = u_xlat42;
  let x_112 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_110, x_110, x_110) * x_112);
  let x_115 : vec3<f32> = vs_TEXCOORD1;
  let x_125 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres0;
  let x_128 : vec3<f32> = (x_115 + -(vec3<f32>(x_125.x, x_125.y, x_125.z)));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec3<f32> = vs_TEXCOORD1;
  let x_134 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres1;
  let x_137 : vec3<f32> = (x_132 + -(vec3<f32>(x_134.x, x_134.y, x_134.z)));
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_141 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_141 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_151 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres3;
  let x_154 : vec3<f32> = (x_149 + -(vec3<f32>(x_151.x, x_151.y, x_151.z)));
  let x_155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat4;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec3<f32> = u_xlat6;
  let x_170 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat7;
  let x_175 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_182 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = x_123.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_182 < x_185);
  let x_188 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_188);
  let x_193 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_193);
  let x_197 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_197);
  let x_201 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_201);
  let x_205 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_205);
  let x_211 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_211);
  let x_215 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_215);
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec4<f32> = u_xlat5;
  let x_222 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(x_220.y, x_220.z, x_220.w));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = max(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_229.x, x_228.x, x_228.y, x_228.z);
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_231, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_237 : f32 = u_xlat42;
  u_xlat42 = (-(x_237) + 4.0f);
  let x_242 : f32 = u_xlat42;
  u_xlatu42 = u32(x_242);
  let x_246 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_246) << bitcast<u32>(2i));
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : i32 = u_xlati42;
  let x_254 : i32 = u_xlati42;
  let x_258 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_251 + 1i) / 4i)][((x_254 + 1i) % 4i)];
  let x_260 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : i32 = u_xlati42;
  let x_265 : i32 = u_xlati42;
  let x_268 : vec4<f32> = x_123.x_MainLightWorldToShadow[(x_263 / 4i)][(x_265 % 4i)];
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.x, x_270.x, x_270.x)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati42;
  let x_281 : i32 = u_xlati42;
  let x_285 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_278 + 2i) / 4i)][((x_281 + 2i) % 4i)];
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.z, x_287.z, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : i32 = u_xlati42;
  let x_300 : i32 = u_xlati42;
  let x_304 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_297 + 3i) / 4i)][((x_300 + 3i) % 4i)];
  let x_306 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : f32 = vs_TEXCOORD1.y;
  let x_313 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat42 = (x_311 * x_313);
  let x_316 : f32 = x_28.unity_MatrixV[0i].z;
  let x_318 : f32 = vs_TEXCOORD1.x;
  let x_320 : f32 = u_xlat42;
  u_xlat42 = ((x_316 * x_318) + x_320);
  let x_323 : f32 = x_28.unity_MatrixV[2i].z;
  let x_325 : f32 = vs_TEXCOORD1.z;
  let x_327 : f32 = u_xlat42;
  u_xlat42 = ((x_323 * x_325) + x_327);
  let x_329 : f32 = u_xlat42;
  let x_331 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat42 = (x_329 + x_331);
  let x_333 : f32 = u_xlat42;
  let x_336 : f32 = x_28.x_ProjectionParams.y;
  u_xlat42 = (-(x_333) + -(x_336));
  let x_339 : f32 = u_xlat42;
  u_xlat42 = max(x_339, 0.0f);
  let x_341 : f32 = u_xlat42;
  let x_344 : f32 = x_28.unity_FogParams.x;
  u_xlat42 = (x_341 * x_344);
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_28.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat5 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD8;
  let x_362 : f32 = x_28.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  u_xlat6 = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat44 = dot(x_372, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat44;
  u_xlat44 = (x_376 + 0.5f);
  let x_379 : f32 = u_xlat44;
  let x_381 : vec3<f32> = u_xlat6;
  let x_382 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat5.w;
  u_xlat44 = max(x_386, 0.00009999999747378752f);
  let x_389 : vec4<f32> = u_xlat5;
  let x_391 : f32 = u_xlat44;
  let x_393 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) / vec3<f32>(x_391, x_391, x_391));
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = x_42.x_Metallic;
  u_xlat44 = ((-(x_397) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_403 : f32 = u_xlat44;
  let x_406 : f32 = x_42.x_Smoothness;
  u_xlat45 = (-(x_403) + x_406);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_409.y, x_409.z, x_409.w) * vec3<f32>(x_411, x_411, x_411));
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = x_42.x_BaseColor;
  let x_422 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : f32 = x_42.x_Metallic;
  let x_428 : f32 = x_42.x_Metallic;
  let x_430 : f32 = x_42.x_Metallic;
  let x_431 : vec3<f32> = vec3<f32>(x_426, x_428, x_430);
  let x_436 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : f32 = x_42.x_Smoothness;
  u_xlat44 = (-(x_445) + 1.0f);
  let x_449 : f32 = u_xlat44;
  let x_450 : f32 = u_xlat44;
  u_xlat46 = (x_449 * x_450);
  let x_452 : f32 = u_xlat46;
  u_xlat46 = max(x_452, 0.0078125f);
  let x_456 : f32 = u_xlat46;
  let x_457 : f32 = u_xlat46;
  u_xlat47 = (x_456 * x_457);
  let x_459 : f32 = u_xlat45;
  u_xlat45 = (x_459 + 1.0f);
  let x_461 : f32 = u_xlat45;
  u_xlat45 = clamp(x_461, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat46;
  u_xlat6.x = ((x_463 * 4.0f) + 2.0f);
  let x_468 : vec4<f32> = u_xlat4;
  let x_469 : vec2<f32> = vec2<f32>(x_468.x, x_468.y);
  let x_471 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_469.x, x_469.y, x_471);
  let x_483 : vec3<f32> = txVec0;
  let x_485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_483.xy, x_483.z);
  u_xlat4.x = x_485;
  let x_490 : f32 = x_123.x_MainLightShadowParams.x;
  u_xlat18 = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat4.x;
  let x_496 : f32 = x_123.x_MainLightShadowParams.x;
  let x_498 : f32 = u_xlat18;
  u_xlat4.x = ((x_494 * x_496) + x_498);
  let x_503 : f32 = u_xlat4.z;
  u_xlatb18 = (0.0f >= x_503);
  let x_507 : f32 = u_xlat4.z;
  u_xlatb32 = (x_507 >= 1.0f);
  let x_509 : bool = u_xlatb32;
  let x_510 : bool = u_xlatb18;
  u_xlatb18 = (x_509 | x_510);
  let x_512 : bool = u_xlatb18;
  if (x_512) {
    x_514 = 1.0f;
  } else {
    let x_519 : f32 = u_xlat4.x;
    x_514 = x_519;
  }
  let x_520 : f32 = x_514;
  u_xlat4.x = x_520;
  let x_523 : vec3<f32> = vs_TEXCOORD1;
  let x_525 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat20 = (x_523 + -(x_525));
  let x_528 : vec3<f32> = u_xlat20;
  let x_529 : vec3<f32> = u_xlat20;
  u_xlat18 = dot(x_528, x_529);
  let x_532 : f32 = u_xlat18;
  let x_534 : f32 = x_123.x_MainLightShadowParams.z;
  let x_537 : f32 = x_123.x_MainLightShadowParams.w;
  u_xlat32 = ((x_532 * x_534) + x_537);
  let x_539 : f32 = u_xlat32;
  u_xlat32 = clamp(x_539, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat4.x;
  u_xlat20.x = (-(x_542) + 1.0f);
  let x_546 : f32 = u_xlat32;
  let x_548 : f32 = u_xlat20.x;
  let x_551 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_546 * x_548) + x_551);
  let x_561 : f32 = x_559.x_MainLightCookieTextureFormat;
  u_xlatb32 = !((x_561 == -1.0f));
  let x_563 : bool = u_xlatb32;
  if (x_563) {
    let x_566 : vec3<f32> = vs_TEXCOORD1;
    let x_569 : vec4<f32> = x_559.x_MainLightWorldToLight[1i];
    let x_571 : vec2<f32> = (vec2<f32>(x_566.y, x_566.y) * vec2<f32>(x_569.x, x_569.y));
    let x_572 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_571.x, x_571.y, x_572.z);
    let x_575 : vec4<f32> = x_559.x_MainLightWorldToLight[0i];
    let x_577 : vec3<f32> = vs_TEXCOORD1;
    let x_580 : vec3<f32> = u_xlat20;
    let x_582 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_577.x, x_577.x)) + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_582.x, x_582.y, x_583.z);
    let x_586 : vec4<f32> = x_559.x_MainLightWorldToLight[2i];
    let x_588 : vec3<f32> = vs_TEXCOORD1;
    let x_591 : vec3<f32> = u_xlat20;
    let x_593 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_588.z, x_588.z)) + vec2<f32>(x_591.x, x_591.y));
    let x_594 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_593.x, x_593.y, x_594.z);
    let x_596 : vec3<f32> = u_xlat20;
    let x_599 : vec4<f32> = x_559.x_MainLightWorldToLight[3i];
    let x_601 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) + vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_601.x, x_601.y, x_602.z);
    let x_604 : vec3<f32> = u_xlat20;
    let x_608 : vec2<f32> = ((vec2<f32>(x_604.x, x_604.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_609 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_608.x, x_608.y, x_609.z);
    let x_616 : vec3<f32> = u_xlat20;
    let x_619 : f32 = x_28.x_GlobalMipBias.x;
    let x_620 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_616.x, x_616.y), x_619);
    u_xlat7 = x_620;
    let x_625 : f32 = x_559.x_MainLightCookieTextureFormat;
    let x_627 : f32 = x_559.x_MainLightCookieTextureFormat;
    let x_629 : f32 = x_559.x_MainLightCookieTextureFormat;
    let x_631 : f32 = x_559.x_MainLightCookieTextureFormat;
    let x_632 : vec4<f32> = vec4<f32>(x_625, x_627, x_629, x_631);
    let x_639 : vec4<bool> = (vec4<f32>(x_632.x, x_632.y, x_632.z, x_632.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_639.x, x_639.y);
    let x_642 : bool = u_xlatb20.y;
    if (x_642) {
      let x_647 : f32 = u_xlat7.w;
      x_643 = x_647;
    } else {
      let x_650 : f32 = u_xlat7.x;
      x_643 = x_650;
    }
    let x_651 : f32 = x_643;
    u_xlat32 = x_651;
    let x_653 : bool = u_xlatb20.x;
    if (x_653) {
      let x_657 : vec4<f32> = u_xlat7;
      x_654 = vec3<f32>(x_657.x, x_657.y, x_657.z);
    } else {
      let x_660 : f32 = u_xlat32;
      x_654 = vec3<f32>(x_660, x_660, x_660);
    }
    let x_662 : vec3<f32> = x_654;
    u_xlat20 = x_662;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_667 : vec3<f32> = u_xlat20;
  let x_669 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat20 = (x_667 * vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec3<f32> = u_xlat2;
  let x_674 : vec3<f32> = u_xlat3;
  u_xlat32 = dot(-(x_672), x_674);
  let x_676 : f32 = u_xlat32;
  let x_677 : f32 = u_xlat32;
  u_xlat32 = (x_676 + x_677);
  let x_679 : vec3<f32> = u_xlat3;
  let x_680 : f32 = u_xlat32;
  let x_684 : vec3<f32> = u_xlat2;
  let x_686 : vec3<f32> = ((x_679 * -(vec3<f32>(x_680, x_680, x_680))) + -(x_684));
  let x_687 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat3;
  let x_690 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(x_689, x_690);
  let x_692 : f32 = u_xlat32;
  u_xlat32 = clamp(x_692, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat32;
  u_xlat32 = (-(x_694) + 1.0f);
  let x_697 : f32 = u_xlat32;
  let x_698 : f32 = u_xlat32;
  u_xlat32 = (x_697 * x_698);
  let x_700 : f32 = u_xlat32;
  let x_701 : f32 = u_xlat32;
  u_xlat32 = (x_700 * x_701);
  let x_704 : f32 = u_xlat44;
  u_xlat49 = ((-(x_704) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_710 : f32 = u_xlat44;
  let x_711 : f32 = u_xlat49;
  u_xlat44 = (x_710 * x_711);
  let x_713 : f32 = u_xlat44;
  u_xlat44 = (x_713 * 6.0f);
  let x_724 : vec4<f32> = u_xlat7;
  let x_726 : f32 = u_xlat44;
  let x_727 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_724.x, x_724.y, x_724.z), x_726);
  u_xlat7 = x_727;
  let x_729 : f32 = u_xlat7.w;
  u_xlat44 = (x_729 + -1.0f);
  let x_736 : f32 = x_734.unity_SpecCube0_HDR.w;
  let x_737 : f32 = u_xlat44;
  u_xlat44 = ((x_736 * x_737) + 1.0f);
  let x_740 : f32 = u_xlat44;
  u_xlat44 = max(x_740, 0.0f);
  let x_742 : f32 = u_xlat44;
  u_xlat44 = log2(x_742);
  let x_744 : f32 = u_xlat44;
  let x_746 : f32 = x_734.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_744 * x_746);
  let x_748 : f32 = u_xlat44;
  u_xlat44 = exp2(x_748);
  let x_750 : f32 = u_xlat44;
  let x_752 : f32 = x_734.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_750 * x_752);
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : f32 = u_xlat44;
  let x_758 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_756, x_756, x_756));
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_763 : f32 = u_xlat46;
  let x_765 : f32 = u_xlat46;
  u_xlat8 = ((vec2<f32>(x_763, x_763) * vec2<f32>(x_765, x_765)) + vec2<f32>(-1.0f, 1.0f));
  let x_771 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_771);
  let x_774 : vec4<f32> = u_xlat0;
  let x_777 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_774.x, x_774.y, x_774.z)) + vec3<f32>(x_777, x_777, x_777));
  let x_780 : f32 = u_xlat32;
  let x_782 : vec3<f32> = u_xlat22;
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_780, x_780, x_780) * x_782) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : f32 = u_xlat44;
  let x_789 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_787, x_787, x_787) * x_789);
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec3<f32> = u_xlat22;
  let x_794 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * x_793);
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat5;
  let x_799 : vec3<f32> = u_xlat15;
  let x_801 : vec4<f32> = u_xlat7;
  let x_803 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * x_799) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : f32 = u_xlat4.x;
  let x_809 : f32 = x_734.unity_LightData.z;
  u_xlat44 = (x_807 * x_809);
  let x_811 : vec3<f32> = u_xlat3;
  let x_813 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat45 = dot(x_811, vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : f32 = u_xlat45;
  u_xlat45 = clamp(x_816, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat44;
  let x_819 : f32 = u_xlat45;
  u_xlat44 = (x_818 * x_819);
  let x_821 : f32 = u_xlat44;
  let x_823 : vec3<f32> = u_xlat20;
  let x_824 : vec3<f32> = (vec3<f32>(x_821, x_821, x_821) * x_823);
  let x_825 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_824.x, x_825.y, x_824.y, x_824.z);
  let x_827 : vec3<f32> = u_xlat2;
  let x_829 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat20 = (x_827 + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec3<f32> = u_xlat20;
  let x_833 : vec3<f32> = u_xlat20;
  u_xlat44 = dot(x_832, x_833);
  let x_835 : f32 = u_xlat44;
  u_xlat44 = max(x_835, 1.17549435e-38f);
  let x_838 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat44;
  let x_842 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_840, x_840, x_840) * x_842);
  let x_844 : vec3<f32> = u_xlat3;
  let x_845 : vec3<f32> = u_xlat20;
  u_xlat44 = dot(x_844, x_845);
  let x_847 : f32 = u_xlat44;
  u_xlat44 = clamp(x_847, 0.0f, 1.0f);
  let x_850 : vec4<f32> = x_28.x_MainLightPosition;
  let x_852 : vec3<f32> = u_xlat20;
  u_xlat45 = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), x_852);
  let x_854 : f32 = u_xlat45;
  u_xlat45 = clamp(x_854, 0.0f, 1.0f);
  let x_856 : f32 = u_xlat44;
  let x_857 : f32 = u_xlat44;
  u_xlat44 = (x_856 * x_857);
  let x_859 : f32 = u_xlat44;
  let x_861 : f32 = u_xlat8.x;
  u_xlat44 = ((x_859 * x_861) + 1.00001001358032226562f);
  let x_865 : f32 = u_xlat45;
  let x_866 : f32 = u_xlat45;
  u_xlat45 = (x_865 * x_866);
  let x_868 : f32 = u_xlat44;
  let x_869 : f32 = u_xlat44;
  u_xlat44 = (x_868 * x_869);
  let x_871 : f32 = u_xlat45;
  u_xlat45 = max(x_871, 0.10000000149011611938f);
  let x_874 : f32 = u_xlat44;
  let x_875 : f32 = u_xlat45;
  u_xlat44 = (x_874 * x_875);
  let x_878 : f32 = u_xlat6.x;
  let x_879 : f32 = u_xlat44;
  u_xlat44 = (x_878 * x_879);
  let x_881 : f32 = u_xlat47;
  let x_882 : f32 = u_xlat44;
  u_xlat44 = (x_881 / x_882);
  let x_884 : vec4<f32> = u_xlat0;
  let x_886 : f32 = u_xlat44;
  let x_889 : vec3<f32> = u_xlat15;
  u_xlat20 = ((vec3<f32>(x_884.x, x_884.y, x_884.z) * vec3<f32>(x_886, x_886, x_886)) + x_889);
  let x_892 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_894 : f32 = x_734.unity_LightData.y;
  u_xlat44 = min(x_892, x_894);
  let x_897 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_897));
  let x_900 : f32 = u_xlat18;
  let x_903 : f32 = x_123.x_AdditionalShadowFadeParams.x;
  let x_906 : f32 = x_123.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_900 * x_903) + x_906);
  let x_908 : f32 = u_xlat45;
  u_xlat45 = clamp(x_908, 0.0f, 1.0f);
  let x_912 : f32 = x_559.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_914 : f32 = x_559.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_916 : f32 = x_559.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_918 : f32 = x_559.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_919 : vec4<f32> = vec4<f32>(x_912, x_914, x_916, x_918);
  let x_925 : vec4<bool> = (vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_925.x, x_925.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_937 : u32 = u_xlatu_loop_1;
    let x_938 : u32 = u_xlatu44;
    if ((x_937 < x_938)) {
    } else {
      break;
    }
    let x_941 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_941 >> 2u);
    let x_944 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_944 & 3u));
    let x_948 : u32 = u_xlatu35;
    let x_951 : vec4<f32> = x_734.unity_LightIndices[bitcast<i32>(x_948)];
    let x_961 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_966 : vec4<u32> = indexable[x_961];
    u_xlat35.x = dot(x_951, bitcast<vec4<f32>>(x_966));
    let x_972 : f32 = u_xlat35.x;
    u_xlati35 = i32(x_972);
    let x_975 : vec3<f32> = vs_TEXCOORD1;
    let x_986 : i32 = u_xlati35;
    let x_988 : vec4<f32> = x_985.x_AdditionalLightsPosition[x_986];
    let x_991 : i32 = u_xlati35;
    let x_993 : vec4<f32> = x_985.x_AdditionalLightsPosition[x_991];
    u_xlat9 = ((-(x_975) * vec3<f32>(x_988.w, x_988.w, x_988.w)) + vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec3<f32> = u_xlat9;
    let x_997 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_996, x_997);
    let x_999 : f32 = u_xlat49;
    u_xlat49 = max(x_999, 0.00006103515625f);
    let x_1003 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1003);
    let x_1006 : f32 = u_xlat51;
    let x_1008 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1006, x_1006, x_1006) * x_1008);
    let x_1011 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_1011);
    let x_1013 : f32 = u_xlat49;
    let x_1014 : i32 = u_xlati35;
    let x_1016 : f32 = x_985.x_AdditionalLightsAttenuation[x_1014].x;
    u_xlat49 = (x_1013 * x_1016);
    let x_1018 : f32 = u_xlat49;
    let x_1020 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1018) * x_1020) + 1.0f);
    let x_1023 : f32 = u_xlat49;
    u_xlat49 = max(x_1023, 0.0f);
    let x_1025 : f32 = u_xlat49;
    let x_1026 : f32 = u_xlat49;
    u_xlat49 = (x_1025 * x_1026);
    let x_1028 : f32 = u_xlat49;
    let x_1029 : f32 = u_xlat52;
    u_xlat49 = (x_1028 * x_1029);
    let x_1031 : i32 = u_xlati35;
    let x_1033 : vec4<f32> = x_985.x_AdditionalLightsSpotDir[x_1031];
    let x_1035 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1035);
    let x_1037 : f32 = u_xlat52;
    let x_1038 : i32 = u_xlati35;
    let x_1040 : f32 = x_985.x_AdditionalLightsAttenuation[x_1038].z;
    let x_1042 : i32 = u_xlati35;
    let x_1044 : f32 = x_985.x_AdditionalLightsAttenuation[x_1042].w;
    u_xlat52 = ((x_1037 * x_1040) + x_1044);
    let x_1046 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1046, 0.0f, 1.0f);
    let x_1048 : f32 = u_xlat52;
    let x_1049 : f32 = u_xlat52;
    u_xlat52 = (x_1048 * x_1049);
    let x_1051 : f32 = u_xlat49;
    let x_1052 : f32 = u_xlat52;
    u_xlat49 = (x_1051 * x_1052);
    let x_1056 : i32 = u_xlati35;
    let x_1058 : f32 = x_123.x_AdditionalShadowParams[x_1056].w;
    u_xlati52 = i32(x_1058);
    let x_1063 : i32 = u_xlati52;
    u_xlatb11.x = (x_1063 >= 0i);
    let x_1067 : bool = u_xlatb11.x;
    if (x_1067) {
      let x_1071 : i32 = u_xlati35;
      let x_1073 : f32 = x_123.x_AdditionalShadowParams[x_1071].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1073, x_1073, x_1073, x_1073))));
      let x_1079 : bool = u_xlatb11.x;
      if (x_1079) {
        let x_1082 : vec3<f32> = u_xlat10;
        let x_1085 : vec3<f32> = u_xlat10;
        let x_1088 : vec4<bool> = (abs(vec4<f32>(x_1082.z, x_1082.z, x_1082.y, x_1082.z)) >= abs(vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.x)));
        u_xlatb11 = vec3<bool>(x_1088.x, x_1088.y, x_1088.z);
        let x_1091 : bool = u_xlatb11.y;
        let x_1093 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_1091 & x_1093);
        let x_1097 : vec3<f32> = u_xlat10;
        let x_1100 : vec4<bool> = (-(vec4<f32>(x_1097.z, x_1097.y, x_1097.x, x_1097.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_1100.x, x_1100.y, x_1100.z);
        let x_1104 : bool = u_xlatb12.x;
        u_xlat25.x = select(4.0f, 5.0f, x_1104);
        let x_1109 : bool = u_xlatb12.y;
        u_xlat25.z = select(2.0f, 3.0f, x_1109);
        let x_1114 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_1114);
        let x_1119 : bool = u_xlatb11.z;
        if (x_1119) {
          let x_1124 : f32 = u_xlat25.z;
          x_1120 = x_1124;
        } else {
          let x_1127 : f32 = u_xlat12.x;
          x_1120 = x_1127;
        }
        let x_1128 : f32 = x_1120;
        u_xlat39 = x_1128;
        let x_1131 : bool = u_xlatb11.x;
        if (x_1131) {
          let x_1136 : f32 = u_xlat25.x;
          x_1132 = x_1136;
        } else {
          let x_1138 : f32 = u_xlat39;
          x_1132 = x_1138;
        }
        let x_1139 : f32 = x_1132;
        u_xlat11.x = x_1139;
        let x_1141 : i32 = u_xlati35;
        let x_1143 : f32 = x_123.x_AdditionalShadowParams[x_1141].w;
        u_xlat25.x = trunc(x_1143);
        let x_1147 : f32 = u_xlat11.x;
        let x_1149 : f32 = u_xlat25.x;
        u_xlat11.x = (x_1147 + x_1149);
        let x_1153 : f32 = u_xlat11.x;
        u_xlati52 = i32(x_1153);
      }
      let x_1155 : i32 = u_xlati52;
      u_xlati52 = (x_1155 << bitcast<u32>(2i));
      let x_1157 : vec3<f32> = vs_TEXCOORD1;
      let x_1160 : i32 = u_xlati52;
      let x_1163 : i32 = u_xlati52;
      let x_1167 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_1160 + 1i) / 4i)][((x_1163 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1157.y, x_1157.y, x_1157.y, x_1157.y) * x_1167);
      let x_1169 : i32 = u_xlati52;
      let x_1171 : i32 = u_xlati52;
      let x_1174 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[(x_1169 / 4i)][(x_1171 % 4i)];
      let x_1175 : vec3<f32> = vs_TEXCOORD1;
      let x_1178 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1174 * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x)) + x_1178);
      let x_1180 : i32 = u_xlati52;
      let x_1183 : i32 = u_xlati52;
      let x_1187 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_1180 + 2i) / 4i)][((x_1183 + 2i) % 4i)];
      let x_1188 : vec3<f32> = vs_TEXCOORD1;
      let x_1191 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1187 * vec4<f32>(x_1188.z, x_1188.z, x_1188.z, x_1188.z)) + x_1191);
      let x_1193 : vec4<f32> = u_xlat11;
      let x_1194 : i32 = u_xlati52;
      let x_1197 : i32 = u_xlati52;
      let x_1201 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_1194 + 3i) / 4i)][((x_1197 + 3i) % 4i)];
      u_xlat11 = (x_1193 + x_1201);
      let x_1203 : vec4<f32> = u_xlat11;
      let x_1205 : vec4<f32> = u_xlat11;
      let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) / vec3<f32>(x_1205.w, x_1205.w, x_1205.w));
      let x_1208 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
      let x_1211 : vec4<f32> = u_xlat11;
      let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
      let x_1214 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
      let x_1222 : vec3<f32> = txVec1;
      let x_1224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1222.xy, x_1222.z);
      u_xlat52 = x_1224;
      let x_1225 : i32 = u_xlati35;
      let x_1227 : f32 = x_123.x_AdditionalShadowParams[x_1225].x;
      u_xlat11.x = (1.0f + -(x_1227));
      let x_1231 : f32 = u_xlat52;
      let x_1232 : i32 = u_xlati35;
      let x_1234 : f32 = x_123.x_AdditionalShadowParams[x_1232].x;
      let x_1237 : f32 = u_xlat11.x;
      u_xlat52 = ((x_1231 * x_1234) + x_1237);
      let x_1240 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_1240);
      let x_1245 : f32 = u_xlat11.z;
      u_xlatb25 = (x_1245 >= 1.0f);
      let x_1247 : bool = u_xlatb25;
      let x_1249 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_1247 | x_1249);
      let x_1253 : bool = u_xlatb11.x;
      let x_1254 : f32 = u_xlat52;
      u_xlat52 = select(x_1254, 1.0f, x_1253);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1257 : f32 = u_xlat52;
    u_xlat11.x = (-(x_1257) + 1.0f);
    let x_1261 : f32 = u_xlat45;
    let x_1263 : f32 = u_xlat11.x;
    let x_1265 : f32 = u_xlat52;
    u_xlat52 = ((x_1261 * x_1263) + x_1265);
    let x_1268 : i32 = u_xlati35;
    u_xlati11 = (1i << bitcast<u32>((x_1268 & 31i)));
    let x_1272 : i32 = u_xlati11;
    let x_1275 : f32 = x_559.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1272) & bitcast<u32>(x_1275)));
    let x_1279 : i32 = u_xlati11;
    if ((x_1279 != 0i)) {
      let x_1283 : i32 = u_xlati35;
      let x_1285 : f32 = x_559.x_AdditionalLightsLightTypes[x_1283].el;
      u_xlati11 = i32(x_1285);
      let x_1288 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1288 != 0i));
      let x_1292 : i32 = u_xlati35;
      u_xlati39 = (x_1292 << bitcast<u32>(2i));
      let x_1294 : i32 = u_xlati25;
      if ((x_1294 != 0i)) {
        let x_1298 : vec3<f32> = vs_TEXCOORD1;
        let x_1300 : i32 = u_xlati39;
        let x_1303 : i32 = u_xlati39;
        let x_1307 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1300 + 1i) / 4i)][((x_1303 + 1i) % 4i)];
        let x_1309 : vec3<f32> = (vec3<f32>(x_1298.y, x_1298.y, x_1298.y) * vec3<f32>(x_1307.x, x_1307.y, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
        let x_1312 : i32 = u_xlati39;
        let x_1314 : i32 = u_xlati39;
        let x_1317 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[(x_1312 / 4i)][(x_1314 % 4i)];
        let x_1319 : vec3<f32> = vs_TEXCOORD1;
        let x_1322 : vec4<f32> = u_xlat12;
        let x_1324 : vec3<f32> = ((vec3<f32>(x_1317.x, x_1317.y, x_1317.w) * vec3<f32>(x_1319.x, x_1319.x, x_1319.x)) + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
        let x_1325 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
        let x_1327 : i32 = u_xlati39;
        let x_1330 : i32 = u_xlati39;
        let x_1334 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1327 + 2i) / 4i)][((x_1330 + 2i) % 4i)];
        let x_1336 : vec3<f32> = vs_TEXCOORD1;
        let x_1339 : vec4<f32> = u_xlat12;
        let x_1341 : vec3<f32> = ((vec3<f32>(x_1334.x, x_1334.y, x_1334.w) * vec3<f32>(x_1336.z, x_1336.z, x_1336.z)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
        let x_1342 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
        let x_1344 : vec4<f32> = u_xlat12;
        let x_1346 : i32 = u_xlati39;
        let x_1349 : i32 = u_xlati39;
        let x_1353 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1346 + 3i) / 4i)][((x_1349 + 3i) % 4i)];
        let x_1355 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) + vec3<f32>(x_1353.x, x_1353.y, x_1353.w));
        let x_1356 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat12;
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1362 : vec2<f32> = (vec2<f32>(x_1358.x, x_1358.y) / vec2<f32>(x_1360.z, x_1360.z));
        let x_1363 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1362.x, x_1363.y, x_1362.y);
        let x_1365 : vec3<f32> = u_xlat25;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1369 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1368.x, x_1369.y, x_1368.y);
        let x_1371 : vec3<f32> = u_xlat25;
        let x_1375 : vec2<f32> = clamp(vec2<f32>(x_1371.x, x_1371.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1376 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1375.x, x_1376.y, x_1375.y);
        let x_1378 : i32 = u_xlati35;
        let x_1380 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1378];
        let x_1382 : vec3<f32> = u_xlat25;
        let x_1385 : i32 = u_xlati35;
        let x_1387 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1385];
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(x_1382.x, x_1382.z)) + vec2<f32>(x_1387.z, x_1387.w));
        let x_1390 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1389.x, x_1390.y, x_1389.y);
      } else {
        let x_1393 : i32 = u_xlati11;
        u_xlatb11.x = (x_1393 == 1i);
        let x_1397 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_1397);
        let x_1399 : i32 = u_xlati11;
        if ((x_1399 != 0i)) {
          let x_1403 : vec3<f32> = vs_TEXCOORD1;
          let x_1405 : i32 = u_xlati39;
          let x_1408 : i32 = u_xlati39;
          let x_1412 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1405 + 1i) / 4i)][((x_1408 + 1i) % 4i)];
          let x_1414 : vec2<f32> = (vec2<f32>(x_1403.y, x_1403.y) * vec2<f32>(x_1412.x, x_1412.y));
          let x_1415 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
          let x_1417 : i32 = u_xlati39;
          let x_1419 : i32 = u_xlati39;
          let x_1422 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[(x_1417 / 4i)][(x_1419 % 4i)];
          let x_1424 : vec3<f32> = vs_TEXCOORD1;
          let x_1427 : vec4<f32> = u_xlat12;
          let x_1429 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.y) * vec2<f32>(x_1424.x, x_1424.x)) + vec2<f32>(x_1427.x, x_1427.y));
          let x_1430 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1429.x, x_1429.y, x_1430.z, x_1430.w);
          let x_1432 : i32 = u_xlati39;
          let x_1435 : i32 = u_xlati39;
          let x_1439 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1432 + 2i) / 4i)][((x_1435 + 2i) % 4i)];
          let x_1441 : vec3<f32> = vs_TEXCOORD1;
          let x_1444 : vec4<f32> = u_xlat12;
          let x_1446 : vec2<f32> = ((vec2<f32>(x_1439.x, x_1439.y) * vec2<f32>(x_1441.z, x_1441.z)) + vec2<f32>(x_1444.x, x_1444.y));
          let x_1447 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
          let x_1449 : vec4<f32> = u_xlat12;
          let x_1451 : i32 = u_xlati39;
          let x_1454 : i32 = u_xlati39;
          let x_1458 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1451 + 3i) / 4i)][((x_1454 + 3i) % 4i)];
          let x_1460 : vec2<f32> = (vec2<f32>(x_1449.x, x_1449.y) + vec2<f32>(x_1458.x, x_1458.y));
          let x_1461 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1460.x, x_1460.y, x_1461.z, x_1461.w);
          let x_1463 : vec4<f32> = u_xlat12;
          let x_1466 : vec2<f32> = ((vec2<f32>(x_1463.x, x_1463.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1467 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
          let x_1469 : vec4<f32> = u_xlat12;
          let x_1471 : vec2<f32> = fract(vec2<f32>(x_1469.x, x_1469.y));
          let x_1472 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
          let x_1474 : i32 = u_xlati35;
          let x_1476 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1474];
          let x_1478 : vec4<f32> = u_xlat12;
          let x_1481 : i32 = u_xlati35;
          let x_1483 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1481];
          let x_1485 : vec2<f32> = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1478.x, x_1478.y)) + vec2<f32>(x_1483.z, x_1483.w));
          let x_1486 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1485.x, x_1486.y, x_1485.y);
        } else {
          let x_1489 : vec3<f32> = vs_TEXCOORD1;
          let x_1491 : i32 = u_xlati39;
          let x_1494 : i32 = u_xlati39;
          let x_1498 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1491 + 1i) / 4i)][((x_1494 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1489.y, x_1489.y, x_1489.y, x_1489.y) * x_1498);
          let x_1500 : i32 = u_xlati39;
          let x_1502 : i32 = u_xlati39;
          let x_1505 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[(x_1500 / 4i)][(x_1502 % 4i)];
          let x_1506 : vec3<f32> = vs_TEXCOORD1;
          let x_1509 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1505 * vec4<f32>(x_1506.x, x_1506.x, x_1506.x, x_1506.x)) + x_1509);
          let x_1511 : i32 = u_xlati39;
          let x_1514 : i32 = u_xlati39;
          let x_1518 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1511 + 2i) / 4i)][((x_1514 + 2i) % 4i)];
          let x_1519 : vec3<f32> = vs_TEXCOORD1;
          let x_1522 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1518 * vec4<f32>(x_1519.z, x_1519.z, x_1519.z, x_1519.z)) + x_1522);
          let x_1524 : vec4<f32> = u_xlat12;
          let x_1525 : i32 = u_xlati39;
          let x_1528 : i32 = u_xlati39;
          let x_1532 : vec4<f32> = x_559.x_AdditionalLightsWorldToLights[((x_1525 + 3i) / 4i)][((x_1528 + 3i) % 4i)];
          u_xlat12 = (x_1524 + x_1532);
          let x_1534 : vec4<f32> = u_xlat12;
          let x_1536 : vec4<f32> = u_xlat12;
          let x_1538 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.y, x_1534.z) / vec3<f32>(x_1536.w, x_1536.w, x_1536.w));
          let x_1539 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
          let x_1541 : vec4<f32> = u_xlat12;
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1541.x, x_1541.y, x_1541.z), vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
          let x_1548 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1548);
          let x_1551 : vec4<f32> = u_xlat11;
          let x_1553 : vec4<f32> = u_xlat12;
          let x_1555 : vec3<f32> = (vec3<f32>(x_1551.x, x_1551.x, x_1551.x) * vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
          let x_1556 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
          let x_1558 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1558.x, x_1558.y, x_1558.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1565 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1565, 0.00000099999999747524f);
          let x_1570 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1570);
          let x_1574 : vec4<f32> = u_xlat11;
          let x_1576 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1574.x, x_1574.x, x_1574.x) * vec3<f32>(x_1576.z, x_1576.x, x_1576.y));
          let x_1580 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1580);
          let x_1584 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1584, 0.0f, 1.0f);
          let x_1588 : vec3<f32> = u_xlat13;
          let x_1590 : vec4<bool> = (vec4<f32>(x_1588.y, x_1588.z, x_1588.y, x_1588.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1590.x, x_1590.y);
          let x_1594 : bool = u_xlatb40.x;
          if (x_1594) {
            let x_1599 : f32 = u_xlat13.x;
            x_1595 = x_1599;
          } else {
            let x_1602 : f32 = u_xlat13.x;
            x_1595 = -(x_1602);
          }
          let x_1604 : f32 = x_1595;
          u_xlat40.x = x_1604;
          let x_1607 : bool = u_xlatb40.y;
          if (x_1607) {
            let x_1612 : f32 = u_xlat13.x;
            x_1608 = x_1612;
          } else {
            let x_1615 : f32 = u_xlat13.x;
            x_1608 = -(x_1615);
          }
          let x_1617 : f32 = x_1608;
          u_xlat40.y = x_1617;
          let x_1619 : vec4<f32> = u_xlat12;
          let x_1621 : vec4<f32> = u_xlat11;
          let x_1624 : vec2<f32> = u_xlat40;
          let x_1625 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.y) * vec2<f32>(x_1621.x, x_1621.x)) + x_1624);
          let x_1626 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1625.x, x_1626.y, x_1625.y, x_1626.w);
          let x_1628 : vec4<f32> = u_xlat11;
          let x_1631 : vec2<f32> = ((vec2<f32>(x_1628.x, x_1628.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1632 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1631.x, x_1632.y, x_1631.y, x_1632.w);
          let x_1634 : vec4<f32> = u_xlat11;
          let x_1638 : vec2<f32> = clamp(vec2<f32>(x_1634.x, x_1634.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1639 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1639.w);
          let x_1641 : i32 = u_xlati35;
          let x_1643 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1641];
          let x_1645 : vec4<f32> = u_xlat11;
          let x_1648 : i32 = u_xlati35;
          let x_1650 : vec4<f32> = x_559.x_AdditionalLightsCookieAtlasUVRects[x_1648];
          let x_1652 : vec2<f32> = ((vec2<f32>(x_1643.x, x_1643.y) * vec2<f32>(x_1645.x, x_1645.z)) + vec2<f32>(x_1650.z, x_1650.w));
          let x_1653 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1652.x, x_1653.y, x_1652.y);
        }
      }
      let x_1660 : vec3<f32> = u_xlat25;
      let x_1662 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1660.x, x_1660.z), 0.0f);
      u_xlat11 = x_1662;
      let x_1665 : bool = u_xlatb7.y;
      if (x_1665) {
        let x_1670 : f32 = u_xlat11.w;
        x_1666 = x_1670;
      } else {
        let x_1673 : f32 = u_xlat11.x;
        x_1666 = x_1673;
      }
      let x_1674 : f32 = x_1666;
      u_xlat53 = x_1674;
      let x_1676 : bool = u_xlatb7.x;
      if (x_1676) {
        let x_1680 : vec4<f32> = u_xlat11;
        x_1677 = vec3<f32>(x_1680.x, x_1680.y, x_1680.z);
      } else {
        let x_1683 : f32 = u_xlat53;
        x_1677 = vec3<f32>(x_1683, x_1683, x_1683);
      }
      let x_1685 : vec3<f32> = x_1677;
      let x_1686 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1692 : vec4<f32> = u_xlat11;
    let x_1694 : i32 = u_xlati35;
    let x_1696 : vec4<f32> = x_985.x_AdditionalLightsColor[x_1694];
    let x_1698 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
    let x_1699 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
    let x_1701 : f32 = u_xlat49;
    let x_1702 : f32 = u_xlat52;
    u_xlat35.x = (x_1701 * x_1702);
    let x_1705 : vec3<f32> = u_xlat3;
    let x_1706 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1705, x_1706);
    let x_1708 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1708, 0.0f, 1.0f);
    let x_1710 : f32 = u_xlat49;
    let x_1712 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1710 * x_1712);
    let x_1715 : vec2<f32> = u_xlat35;
    let x_1717 : vec4<f32> = u_xlat11;
    let x_1719 : vec3<f32> = (vec3<f32>(x_1715.x, x_1715.x, x_1715.x) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
    let x_1720 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
    let x_1722 : vec3<f32> = u_xlat9;
    let x_1723 : f32 = u_xlat51;
    let x_1726 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1722 * vec3<f32>(x_1723, x_1723, x_1723)) + x_1726);
    let x_1728 : vec3<f32> = u_xlat9;
    let x_1729 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1728, x_1729);
    let x_1733 : f32 = u_xlat35.x;
    u_xlat35.x = max(x_1733, 1.17549435e-38f);
    let x_1737 : f32 = u_xlat35.x;
    u_xlat35.x = inverseSqrt(x_1737);
    let x_1740 : vec2<f32> = u_xlat35;
    let x_1742 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1740.x, x_1740.x, x_1740.x) * x_1742);
    let x_1744 : vec3<f32> = u_xlat3;
    let x_1745 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1744, x_1745);
    let x_1749 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1749, 0.0f, 1.0f);
    let x_1752 : vec3<f32> = u_xlat10;
    let x_1753 : vec3<f32> = u_xlat9;
    u_xlat35.y = dot(x_1752, x_1753);
    let x_1757 : f32 = u_xlat35.y;
    u_xlat35.y = clamp(x_1757, 0.0f, 1.0f);
    let x_1760 : vec2<f32> = u_xlat35;
    let x_1761 : vec2<f32> = u_xlat35;
    u_xlat35 = (x_1760 * x_1761);
    let x_1764 : f32 = u_xlat35.x;
    let x_1766 : f32 = u_xlat8.x;
    u_xlat35.x = ((x_1764 * x_1766) + 1.00001001358032226562f);
    let x_1771 : f32 = u_xlat35.x;
    let x_1773 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1771 * x_1773);
    let x_1777 : f32 = u_xlat35.y;
    u_xlat49 = max(x_1777, 0.10000000149011611938f);
    let x_1779 : f32 = u_xlat49;
    let x_1781 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1779 * x_1781);
    let x_1785 : f32 = u_xlat6.x;
    let x_1787 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1785 * x_1787);
    let x_1790 : f32 = u_xlat47;
    let x_1792 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1790 / x_1792);
    let x_1795 : vec4<f32> = u_xlat0;
    let x_1797 : vec2<f32> = u_xlat35;
    let x_1800 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1795.x, x_1795.y, x_1795.z) * vec3<f32>(x_1797.x, x_1797.x, x_1797.x)) + x_1800);
    let x_1802 : vec3<f32> = u_xlat9;
    let x_1803 : vec4<f32> = u_xlat11;
    let x_1806 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1802 * vec3<f32>(x_1803.x, x_1803.y, x_1803.z)) + x_1806);

    continuing {
      let x_1808 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1808 + bitcast<u32>(1i));
    }
  }
  let x_1810 : vec3<f32> = u_xlat20;
  let x_1811 : vec4<f32> = u_xlat4;
  let x_1814 : vec4<f32> = u_xlat5;
  let x_1816 : vec3<f32> = ((x_1810 * vec3<f32>(x_1811.x, x_1811.z, x_1811.w)) + vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : vec3<f32> = u_xlat22;
  let x_1820 : vec4<f32> = u_xlat0;
  let x_1822 : vec3<f32> = (x_1819 + vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1823 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
  let x_1825 : f32 = u_xlat42;
  let x_1826 : f32 = u_xlat42;
  u_xlat42 = (x_1825 * -(x_1826));
  let x_1829 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1829);
  let x_1831 : vec4<f32> = u_xlat0;
  let x_1834 : vec4<f32> = x_28.unity_FogColor;
  let x_1837 : vec3<f32> = (vec3<f32>(x_1831.x, x_1831.y, x_1831.z) + -(vec3<f32>(x_1834.x, x_1834.y, x_1834.z)));
  let x_1838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1842 : f32 = u_xlat42;
  let x_1844 : vec4<f32> = u_xlat0;
  let x_1848 : vec4<f32> = x_28.unity_FogColor;
  let x_1850 : vec3<f32> = ((vec3<f32>(x_1842, x_1842, x_1842) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z)) + vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1855 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1855 == 1.0f);
  let x_1857 : bool = u_xlatb0;
  if (x_1857) {
    let x_1862 : f32 = u_xlat1.x;
    x_1858 = x_1862;
  } else {
    x_1858 = 1.0f;
  }
  let x_1864 : f32 = x_1858;
  SV_Target0.w = x_1864;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


