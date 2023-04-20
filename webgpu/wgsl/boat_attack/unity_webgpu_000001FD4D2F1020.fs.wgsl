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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb29 : vec2<bool>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(1) @binding(2) var<uniform> x_447 : UnityPerDraw;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb55 : bool;

var<private> u_xlatb81 : bool;

var<private> u_xlat81 : f32;

@group(1) @binding(5) var<uniform> x_1899 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2352 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

fn main_1() {
  var x_187 : f32;
  var x_200 : f32;
  var x_213 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1853 : f32;
  var x_1980 : f32;
  var x_1991 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2482 : f32;
  var x_2492 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_4067 : f32;
  var x_4080 : f32;
  var x_4128 : f32;
  var x_4139 : vec3<f32>;
  var x_4279 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  u_xlat1 = vec2<f32>(x_47.x, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_54.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_50.w, x_50.x, x_50.y, x_50.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : f32 = x_28.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_68, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.w);
  let x_75 : f32 = u_xlat3.x;
  let x_78 : f32 = u_xlat3.z;
  u_xlat3.x = (x_75 * x_78);
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat53 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat53;
  let x_92 : vec2<f32> = u_xlat53;
  u_xlat78 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat78;
  u_xlat78 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat78;
  u_xlat78 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_100);
  let x_102 : f32 = u_xlat78;
  u_xlat78 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat53;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat53 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat29.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat29.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_151 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb29.x = (x_151 == 0.0f);
  let x_159 : vec3<f32> = vs_TEXCOORD1;
  let x_164 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_165 : vec3<f32> = (-(x_159) + x_164);
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat55;
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : bool = u_xlatb29.x;
  if (x_185) {
    let x_191 : f32 = u_xlat4.x;
    x_187 = x_191;
  } else {
    let x_195 : f32 = x_28.unity_MatrixV[0i].z;
    x_187 = x_195;
  }
  let x_196 : f32 = x_187;
  u_xlat5.x = x_196;
  let x_199 : bool = u_xlatb29.x;
  if (x_199) {
    let x_204 : f32 = u_xlat4.y;
    x_200 = x_204;
  } else {
    let x_208 : f32 = x_28.unity_MatrixV[1i].z;
    x_200 = x_208;
  }
  let x_209 : f32 = x_200;
  u_xlat5.y = x_209;
  let x_212 : bool = u_xlatb29.x;
  if (x_212) {
    let x_217 : f32 = u_xlat4.z;
    x_213 = x_217;
  } else {
    let x_220 : f32 = x_28.unity_MatrixV[2i].z;
    x_213 = x_220;
  }
  let x_221 : f32 = x_213;
  u_xlat5.z = x_221;
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_228 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (vec3<f32>(x_224.z, x_224.x, x_224.y) * vec3<f32>(x_228.y, x_228.z, x_228.x));
  let x_231 : vec3<f32> = vs_TEXCOORD2;
  let x_233 : vec4<f32> = vs_TEXCOORD3;
  let x_236 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_231.y, x_231.z, x_231.x) * vec3<f32>(x_233.z, x_233.x, x_233.y)) + -(x_236));
  let x_239 : vec3<f32> = u_xlat29;
  let x_240 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (x_239 * vec3<f32>(x_240.w, x_240.w, x_240.w));
  let x_243 : vec2<f32> = u_xlat53;
  let x_245 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_243.y, x_243.y, x_243.y) * x_245);
  let x_247 : vec2<f32> = u_xlat53;
  let x_249 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_247.x, x_247.x, x_247.x) * vec3<f32>(x_249.x, x_249.y, x_249.z)) + x_252);
  let x_254 : f32 = u_xlat78;
  let x_256 : vec3<f32> = vs_TEXCOORD2;
  let x_258 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_254, x_254, x_254) * x_256) + x_258);
  let x_260 : vec3<f32> = u_xlat29;
  let x_261 : vec3<f32> = u_xlat29;
  u_xlat78 = dot(x_260, x_261);
  let x_263 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_263);
  let x_265 : f32 = u_xlat78;
  let x_267 : vec3<f32> = u_xlat29;
  let x_268 : vec3<f32> = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres0;
  u_xlat29 = (x_271 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres2;
  let x_299 : vec3<f32> = (x_293 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres3;
  let x_308 : vec3<f32> = (x_303 + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_312 : vec3<f32> = u_xlat29;
  let x_313 : vec3<f32> = u_xlat29;
  u_xlat9.x = dot(x_312, x_313);
  let x_316 : vec3<f32> = u_xlat6;
  let x_317 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_316, x_317);
  let x_320 : vec4<f32> = u_xlat7;
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec4<f32> = u_xlat8;
  let x_328 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_335 : vec4<f32> = u_xlat9;
  let x_337 : vec4<f32> = x_279.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_335 < x_337);
  let x_340 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_340);
  let x_344 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb6.x;
  u_xlat29.x = select(-0.0f, -1.0f, x_356);
  let x_361 : bool = u_xlatb6.y;
  u_xlat29.y = select(-0.0f, -1.0f, x_361);
  let x_365 : bool = u_xlatb6.z;
  u_xlat29.z = select(-0.0f, -1.0f, x_365);
  let x_368 : vec3<f32> = u_xlat29;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat29 = (x_368 + vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec3<f32> = u_xlat29;
  let x_374 : vec3<f32> = max(x_372, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_375.x, x_374.x, x_374.y, x_374.z);
  let x_377 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_377, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_382 : f32 = u_xlat78;
  u_xlat78 = (-(x_382) + 4.0f);
  let x_387 : f32 = u_xlat78;
  u_xlatu78 = u32(x_387);
  let x_391 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_391) << bitcast<u32>(2i));
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_396 : i32 = u_xlati78;
  let x_399 : i32 = u_xlati78;
  let x_403 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_396 + 1i) / 4i)][((x_399 + 1i) % 4i)];
  u_xlat29 = (vec3<f32>(x_394.y, x_394.y, x_394.y) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : i32 = u_xlati78;
  let x_408 : i32 = u_xlati78;
  let x_411 : vec4<f32> = x_279.x_MainLightWorldToShadow[(x_406 / 4i)][(x_408 % 4i)];
  let x_413 : vec3<f32> = vs_TEXCOORD1;
  let x_416 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.x, x_413.x)) + x_416);
  let x_418 : i32 = u_xlati78;
  let x_421 : i32 = u_xlati78;
  let x_425 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_418 + 2i) / 4i)][((x_421 + 2i) % 4i)];
  let x_427 : vec3<f32> = vs_TEXCOORD1;
  let x_430 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.z, x_427.z, x_427.z)) + x_430);
  let x_432 : vec3<f32> = u_xlat29;
  let x_433 : i32 = u_xlati78;
  let x_436 : i32 = u_xlati78;
  let x_440 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_433 + 3i) / 4i)][((x_436 + 3i) % 4i)];
  u_xlat29 = (x_432 + vec3<f32>(x_440.x, x_440.y, x_440.z));
  u_xlat4.w = 1.0f;
  let x_450 : vec4<f32> = x_447.unity_SHAr;
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_450, x_451);
  let x_456 : vec4<f32> = x_447.unity_SHAg;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_456, x_457);
  let x_462 : vec4<f32> = x_447.unity_SHAb;
  let x_463 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_462, x_463);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_466.y, x_466.z, x_466.z, x_466.x) * vec4<f32>(x_468.x, x_468.y, x_468.z, x_468.z));
  let x_473 : vec4<f32> = x_447.unity_SHBr;
  let x_474 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_473, x_474);
  let x_479 : vec4<f32> = x_447.unity_SHBg;
  let x_480 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_479, x_480);
  let x_485 : vec4<f32> = x_447.unity_SHBb;
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_485, x_486);
  let x_490 : f32 = u_xlat4.y;
  let x_492 : f32 = u_xlat4.y;
  u_xlat78 = (x_490 * x_492);
  let x_495 : f32 = u_xlat4.x;
  let x_497 : f32 = u_xlat4.x;
  let x_499 : f32 = u_xlat78;
  u_xlat78 = ((x_495 * x_497) + -(x_499));
  let x_504 : vec4<f32> = x_447.unity_SHC;
  let x_506 : f32 = u_xlat78;
  let x_509 : vec4<f32> = u_xlat8;
  let x_511 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_506, x_506, x_506)) + vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec3<f32> = u_xlat6;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_514 + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_518, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_521 : f32 = u_xlat1.x;
  u_xlat78 = ((-(x_521) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_526 : f32 = u_xlat78;
  u_xlat53.x = (-(x_526) + 1.0f);
  let x_531 : f32 = u_xlat78;
  let x_533 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.y, x_533.z, x_533.w));
  let x_536 : vec4<f32> = u_xlat0;
  let x_539 : vec4<f32> = x_54.x_BaseColor;
  let x_544 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_539.x, x_539.y, x_539.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec2<f32> = u_xlat1;
  let x_549 : vec4<f32> = u_xlat0;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : f32 = u_xlat1.y;
  let x_561 : f32 = x_54.x_Smoothness;
  u_xlat78 = ((-(x_558) * x_561) + 1.0f);
  let x_564 : f32 = u_xlat78;
  let x_565 : f32 = u_xlat78;
  u_xlat1.x = (x_564 * x_565);
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_569, 0.0078125f);
  let x_575 : f32 = u_xlat1.x;
  let x_577 : f32 = u_xlat1.x;
  u_xlat79 = (x_575 * x_577);
  let x_581 : f32 = u_xlat1.y;
  let x_583 : f32 = x_54.x_Smoothness;
  let x_586 : f32 = u_xlat53.x;
  u_xlat27 = ((x_581 * x_583) + x_586);
  let x_588 : f32 = u_xlat27;
  u_xlat27 = clamp(x_588, 0.0f, 1.0f);
  let x_591 : f32 = u_xlat1.x;
  u_xlat53.x = ((x_591 * 4.0f) + 2.0f);
  let x_596 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_596, 1.0f);
  let x_601 : f32 = x_279.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_601);
  let x_603 : bool = u_xlatb82;
  if (x_603) {
    let x_607 : f32 = x_279.x_MainLightShadowParams.y;
    u_xlatb82 = (x_607 == 1.0f);
    let x_609 : bool = u_xlatb82;
    if (x_609) {
      let x_612 : vec3<f32> = u_xlat29;
      let x_615 : vec4<f32> = x_279.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y) + x_615);
      let x_619 : vec4<f32> = u_xlat7;
      let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
      let x_622 : f32 = u_xlat29.z;
      txVec0 = vec3<f32>(x_620.x, x_620.y, x_622);
      let x_634 : vec3<f32> = txVec0;
      let x_636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_634.xy, x_634.z);
      u_xlat8.x = x_636;
      let x_639 : vec4<f32> = u_xlat7;
      let x_640 : vec2<f32> = vec2<f32>(x_639.z, x_639.w);
      let x_642 : f32 = u_xlat29.z;
      txVec1 = vec3<f32>(x_640.x, x_640.y, x_642);
      let x_649 : vec3<f32> = txVec1;
      let x_651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_649.xy, x_649.z);
      u_xlat8.y = x_651;
      let x_653 : vec3<f32> = u_xlat29;
      let x_657 : vec4<f32> = x_279.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y) + x_657);
      let x_660 : vec4<f32> = u_xlat7;
      let x_661 : vec2<f32> = vec2<f32>(x_660.x, x_660.y);
      let x_663 : f32 = u_xlat29.z;
      txVec2 = vec3<f32>(x_661.x, x_661.y, x_663);
      let x_670 : vec3<f32> = txVec2;
      let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
      u_xlat8.z = x_672;
      let x_675 : vec4<f32> = u_xlat7;
      let x_676 : vec2<f32> = vec2<f32>(x_675.z, x_675.w);
      let x_678 : f32 = u_xlat29.z;
      txVec3 = vec3<f32>(x_676.x, x_676.y, x_678);
      let x_685 : vec3<f32> = txVec3;
      let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_685.xy, x_685.z);
      u_xlat8.w = x_687;
      let x_690 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_690, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_697 : f32 = x_279.x_MainLightShadowParams.y;
      u_xlatb83 = (x_697 == 2.0f);
      let x_699 : bool = u_xlatb83;
      if (x_699) {
        let x_702 : vec3<f32> = u_xlat29;
        let x_706 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_711 : vec2<f32> = ((vec2<f32>(x_702.x, x_702.y) * vec2<f32>(x_706.z, x_706.w)) + vec2<f32>(0.5f, 0.5f));
        let x_712 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = floor(vec2<f32>(x_714.x, x_714.y));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_720 : vec3<f32> = u_xlat29;
        let x_723 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_723.z, x_723.w)) + -(vec2<f32>(x_726.x, x_726.y)));
        let x_730 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_730.x, x_730.x, x_730.y, x_730.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_734 : vec4<f32> = u_xlat8;
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_734.x, x_734.x, x_734.z, x_734.z) * vec4<f32>(x_736.x, x_736.x, x_736.z, x_736.z));
        let x_739 : vec4<f32> = u_xlat9;
        let x_743 : vec2<f32> = (vec2<f32>(x_739.y, x_739.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_744.y, x_743.y, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_749 : vec2<f32> = u_xlat59;
        let x_751 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.z) * vec2<f32>(0.5f, 0.5f)) + -(x_749));
        let x_752 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_755 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_755) + vec2<f32>(1.0f, 1.0f));
        let x_760 : vec2<f32> = u_xlat59;
        let x_762 : vec2<f32> = min(x_760, vec2<f32>(0.0f, 0.0f));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat10;
        let x_768 : vec4<f32> = u_xlat10;
        let x_771 : vec2<f32> = u_xlat61;
        let x_772 : vec2<f32> = ((-(vec2<f32>(x_765.x, x_765.y)) * vec2<f32>(x_768.x, x_768.y)) + x_771);
        let x_773 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_775 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_775, vec2<f32>(0.0f, 0.0f));
        let x_777 : vec2<f32> = u_xlat59;
        let x_779 : vec2<f32> = u_xlat59;
        let x_781 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_777) * x_779) + vec2<f32>(x_781.y, x_781.w));
        let x_784 : vec4<f32> = u_xlat10;
        let x_786 : vec2<f32> = (vec2<f32>(x_784.x, x_784.y) + vec2<f32>(1.0f, 1.0f));
        let x_787 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
        let x_789 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_789 + vec2<f32>(1.0f, 1.0f));
        let x_792 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = (vec2<f32>(x_792.x, x_792.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_797 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
        let x_799 : vec2<f32> = u_xlat61;
        let x_800 : vec2<f32> = (x_799 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat10;
        let x_805 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_809 : vec2<f32> = u_xlat59;
        let x_810 : vec2<f32> = (x_809 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_811 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_813.y, x_813.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_817 : f32 = u_xlat10.x;
        u_xlat11.z = x_817;
        let x_820 : f32 = u_xlat59.x;
        u_xlat11.w = x_820;
        let x_823 : f32 = u_xlat12.x;
        u_xlat9.z = x_823;
        let x_826 : f32 = u_xlat8.x;
        u_xlat9.w = x_826;
        let x_829 : vec4<f32> = u_xlat9;
        let x_831 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_829.z, x_829.w, x_829.x, x_829.z) + vec4<f32>(x_831.z, x_831.w, x_831.x, x_831.z));
        let x_835 : f32 = u_xlat11.y;
        u_xlat10.z = x_835;
        let x_838 : f32 = u_xlat59.y;
        u_xlat10.w = x_838;
        let x_841 : f32 = u_xlat9.y;
        u_xlat12.z = x_841;
        let x_844 : f32 = u_xlat8.z;
        u_xlat12.w = x_844;
        let x_846 : vec4<f32> = u_xlat10;
        let x_848 : vec4<f32> = u_xlat12;
        let x_850 : vec3<f32> = (vec3<f32>(x_846.z, x_846.y, x_846.w) + vec3<f32>(x_848.z, x_848.y, x_848.w));
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat9;
        let x_855 : vec4<f32> = u_xlat13;
        let x_857 : vec3<f32> = (vec3<f32>(x_853.x, x_853.z, x_853.w) / vec3<f32>(x_855.z, x_855.w, x_855.y));
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat9;
        let x_866 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_867 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat12;
        let x_871 : vec4<f32> = u_xlat8;
        let x_873 : vec3<f32> = (vec3<f32>(x_869.z, x_869.y, x_869.w) / vec3<f32>(x_871.x, x_871.y, x_871.z));
        let x_874 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat10;
        let x_878 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_879 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat9;
        let x_884 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_886 : vec3<f32> = (vec3<f32>(x_881.y, x_881.x, x_881.z) * vec3<f32>(x_884.x, x_884.x, x_884.x));
        let x_887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat10;
        let x_892 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_894 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(x_892.y, x_892.y, x_892.y));
        let x_895 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_898 : f32 = u_xlat10.x;
        u_xlat9.w = x_898;
        let x_900 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) * vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y)) + vec4<f32>(x_906.y, x_906.w, x_906.x, x_906.w));
        let x_909 : vec4<f32> = u_xlat7;
        let x_912 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.x, x_912.y)) + vec2<f32>(x_915.z, x_915.w));
        let x_919 : f32 = u_xlat9.y;
        u_xlat10.w = x_919;
        let x_921 : vec4<f32> = u_xlat10;
        let x_922 : vec2<f32> = vec2<f32>(x_921.y, x_921.z);
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec4<f32> = u_xlat7;
        let x_928 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y) * vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y)) + vec4<f32>(x_931.x, x_931.y, x_931.z, x_931.y));
        let x_934 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_940 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_934.x, x_934.y, x_934.x, x_934.y) * vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y)) + vec4<f32>(x_940.w, x_940.y, x_940.w, x_940.z));
        let x_943 : vec4<f32> = u_xlat7;
        let x_946 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y) * vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y)) + vec4<f32>(x_949.x, x_949.w, x_949.z, x_949.w));
        let x_953 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_953.x, x_953.x, x_953.x, x_953.y) * vec4<f32>(x_955.z, x_955.w, x_955.y, x_955.z));
        let x_959 : vec4<f32> = u_xlat8;
        let x_961 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_959.y, x_959.y, x_959.z, x_959.z) * x_961);
        let x_965 : f32 = u_xlat8.z;
        let x_967 : f32 = u_xlat13.y;
        u_xlat83 = (x_965 * x_967);
        let x_970 : vec4<f32> = u_xlat11;
        let x_971 : vec2<f32> = vec2<f32>(x_970.x, x_970.y);
        let x_973 : f32 = u_xlat29.z;
        txVec4 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_981 : vec3<f32> = txVec4;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
        u_xlat84 = x_983;
        let x_985 : vec4<f32> = u_xlat11;
        let x_986 : vec2<f32> = vec2<f32>(x_985.z, x_985.w);
        let x_988 : f32 = u_xlat29.z;
        txVec5 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec5;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
        u_xlat7.x = x_997;
        let x_1000 : f32 = u_xlat7.x;
        let x_1002 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1000 * x_1002);
        let x_1006 : f32 = u_xlat14.x;
        let x_1007 : f32 = u_xlat84;
        let x_1010 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1006 * x_1007) + x_1010);
        let x_1013 : vec2<f32> = u_xlat59;
        let x_1015 : f32 = u_xlat29.z;
        txVec6 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec6;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat7.x = x_1024;
        let x_1027 : f32 = u_xlat14.z;
        let x_1029 : f32 = u_xlat7.x;
        let x_1031 : f32 = u_xlat84;
        u_xlat84 = ((x_1027 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat10;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
        let x_1037 : f32 = u_xlat29.z;
        txVec7 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec7;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
        u_xlat7.x = x_1046;
        let x_1049 : f32 = u_xlat14.w;
        let x_1051 : f32 = u_xlat7.x;
        let x_1053 : f32 = u_xlat84;
        u_xlat84 = ((x_1049 * x_1051) + x_1053);
        let x_1056 : vec4<f32> = u_xlat12;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.x, x_1056.y);
        let x_1059 : f32 = u_xlat29.z;
        txVec8 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec8;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1066.xy, x_1066.z);
        u_xlat7.x = x_1068;
        let x_1071 : f32 = u_xlat15.x;
        let x_1073 : f32 = u_xlat7.x;
        let x_1075 : f32 = u_xlat84;
        u_xlat84 = ((x_1071 * x_1073) + x_1075);
        let x_1078 : vec4<f32> = u_xlat12;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
        let x_1081 : f32 = u_xlat29.z;
        txVec9 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec9;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
        u_xlat7.x = x_1090;
        let x_1093 : f32 = u_xlat15.y;
        let x_1095 : f32 = u_xlat7.x;
        let x_1097 : f32 = u_xlat84;
        u_xlat84 = ((x_1093 * x_1095) + x_1097);
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat29.z;
        txVec10 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec10;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1110.xy, x_1110.z);
        u_xlat7.x = x_1112;
        let x_1115 : f32 = u_xlat15.z;
        let x_1117 : f32 = u_xlat7.x;
        let x_1119 : f32 = u_xlat84;
        u_xlat84 = ((x_1115 * x_1117) + x_1119);
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = u_xlat29.z;
        txVec11 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec11;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1132.xy, x_1132.z);
        u_xlat7.x = x_1134;
        let x_1137 : f32 = u_xlat15.w;
        let x_1139 : f32 = u_xlat7.x;
        let x_1141 : f32 = u_xlat84;
        u_xlat84 = ((x_1137 * x_1139) + x_1141);
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = u_xlat29.z;
        txVec12 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec12;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1154.xy, x_1154.z);
        u_xlat7.x = x_1156;
        let x_1158 : f32 = u_xlat83;
        let x_1160 : f32 = u_xlat7.x;
        let x_1162 : f32 = u_xlat84;
        u_xlat82 = ((x_1158 * x_1160) + x_1162);
      } else {
        let x_1165 : vec3<f32> = u_xlat29;
        let x_1168 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.z, x_1168.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1176 : vec2<f32> = floor(vec2<f32>(x_1174.x, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec3<f32> = u_xlat29;
        let x_1182 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.z, x_1182.w)) + -(vec2<f32>(x_1185.x, x_1185.y)));
        let x_1189 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1189.x, x_1189.x, x_1189.y, x_1189.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1192 : vec4<f32> = u_xlat8;
        let x_1194 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1192.x, x_1192.x, x_1192.z, x_1192.z) * vec4<f32>(x_1194.x, x_1194.x, x_1194.z, x_1194.z));
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1197.y, x_1197.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1207 : vec2<f32> = u_xlat59;
        let x_1209 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1207));
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1210.w);
        let x_1212 : vec2<f32> = u_xlat59;
        let x_1214 : vec2<f32> = (-(x_1212) + vec2<f32>(1.0f, 1.0f));
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1217, vec2<f32>(0.0f, 0.0f));
        let x_1219 : vec2<f32> = u_xlat61;
        let x_1221 : vec2<f32> = u_xlat61;
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1225 : vec2<f32> = ((-(x_1219) * x_1221) + vec2<f32>(x_1223.x, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1228 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1228, vec2<f32>(0.0f, 0.0f));
        let x_1231 : vec2<f32> = u_xlat61;
        let x_1233 : vec2<f32> = u_xlat61;
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1237 : vec2<f32> = ((-(x_1231) * x_1233) + vec2<f32>(x_1235.y, x_1235.w));
        let x_1238 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1237.x, x_1238.y, x_1237.y);
        let x_1240 : vec4<f32> = u_xlat9;
        let x_1242 : vec2<f32> = (vec2<f32>(x_1240.x, x_1240.y) + vec2<f32>(2.0f, 2.0f));
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
        let x_1245 : vec3<f32> = u_xlat34;
        let x_1247 : vec2<f32> = (vec2<f32>(x_1245.x, x_1245.z) + vec2<f32>(2.0f, 2.0f));
        let x_1248 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1248.x, x_1247.x, x_1248.z, x_1247.y);
        let x_1251 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1251 * 0.08163200318813323975f);
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1255.z, x_1255.x, x_1255.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        let x_1268 : f32 = u_xlat12.y;
        u_xlat11.x = x_1268;
        let x_1270 : vec2<f32> = u_xlat59;
        let x_1277 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1278.x, x_1277.x, x_1278.z, x_1277.y);
        let x_1280 : vec2<f32> = u_xlat59;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1280.x, x_1280.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1284.x, x_1285.y, x_1284.y, x_1285.w);
        let x_1288 : f32 = u_xlat8.x;
        u_xlat9.y = x_1288;
        let x_1291 : f32 = u_xlat10.y;
        u_xlat9.w = x_1291;
        let x_1293 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1293 + x_1294);
        let x_1296 : vec2<f32> = u_xlat59;
        let x_1299 : vec2<f32> = ((vec2<f32>(x_1296.y, x_1296.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1300 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1300.x, x_1299.x, x_1300.z, x_1299.y);
        let x_1302 : vec2<f32> = u_xlat59;
        let x_1305 : vec2<f32> = ((vec2<f32>(x_1302.y, x_1302.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1306 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1306.w);
        let x_1309 : f32 = u_xlat8.y;
        u_xlat10.y = x_1309;
        let x_1311 : vec4<f32> = u_xlat10;
        let x_1312 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1311 + x_1312);
        let x_1314 : vec4<f32> = u_xlat9;
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1314 / x_1315);
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1317 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1323 : vec4<f32> = u_xlat10;
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1323 / x_1324);
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1326 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1328 : vec4<f32> = u_xlat9;
        let x_1331 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1328.w, x_1328.x, x_1328.y, x_1328.z) * vec4<f32>(x_1331.x, x_1331.x, x_1331.x, x_1331.x));
        let x_1334 : vec4<f32> = u_xlat10;
        let x_1337 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1334.x, x_1334.w, x_1334.y, x_1334.z) * vec4<f32>(x_1337.y, x_1337.y, x_1337.y, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1341 : vec3<f32> = vec3<f32>(x_1340.y, x_1340.z, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1341.x, x_1342.y, x_1341.y, x_1341.z);
        let x_1345 : f32 = u_xlat10.x;
        u_xlat12.y = x_1345;
        let x_1347 : vec4<f32> = u_xlat7;
        let x_1350 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) * vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y)) + vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1359 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.w, x_1362.y));
        let x_1366 : f32 = u_xlat12.y;
        u_xlat9.y = x_1366;
        let x_1369 : f32 = u_xlat10.z;
        u_xlat12.y = x_1369;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y) * vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y)) + vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat7;
        let x_1383 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat12;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(x_1383.x, x_1383.y)) + vec2<f32>(x_1386.w, x_1386.y));
        let x_1389 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1392 : f32 = u_xlat12.y;
        u_xlat9.z = x_1392;
        let x_1395 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.z));
        let x_1405 : f32 = u_xlat10.w;
        u_xlat12.y = x_1405;
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1411 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y) * vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y)) + vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1414.y));
        let x_1418 : vec4<f32> = u_xlat7;
        let x_1421 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1424 : vec4<f32> = u_xlat12;
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1418.x, x_1418.y) * vec2<f32>(x_1421.x, x_1421.y)) + vec2<f32>(x_1424.w, x_1424.y));
        let x_1427 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1426.x, x_1426.y, x_1427.z);
        let x_1430 : f32 = u_xlat12.y;
        u_xlat9.w = x_1430;
        let x_1433 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1439 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(x_1436.x, x_1436.y)) + vec2<f32>(x_1439.x, x_1439.w));
        let x_1442 : vec4<f32> = u_xlat12;
        let x_1443 : vec3<f32> = vec3<f32>(x_1442.x, x_1442.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1443.x, x_1444.y, x_1443.y, x_1443.z);
        let x_1446 : vec4<f32> = u_xlat7;
        let x_1449 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y) * vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y)) + vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1452.y));
        let x_1456 : vec4<f32> = u_xlat7;
        let x_1459 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1462 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1459.x, x_1459.y)) + vec2<f32>(x_1462.w, x_1462.y));
        let x_1466 : f32 = u_xlat9.x;
        u_xlat10.x = x_1466;
        let x_1468 : vec4<f32> = u_xlat7;
        let x_1471 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat10;
        let x_1476 : vec2<f32> = ((vec2<f32>(x_1468.x, x_1468.y) * vec2<f32>(x_1471.x, x_1471.y)) + vec2<f32>(x_1474.x, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
        let x_1480 : vec4<f32> = u_xlat8;
        let x_1482 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1480.x, x_1480.x, x_1480.x, x_1480.x) * x_1482);
        let x_1485 : vec4<f32> = u_xlat8;
        let x_1487 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1485.y, x_1485.y, x_1485.y, x_1485.y) * x_1487);
        let x_1490 : vec4<f32> = u_xlat8;
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1490.z, x_1490.z, x_1490.z, x_1490.z) * x_1492);
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1496 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1494.w, x_1494.w, x_1494.w, x_1494.w) * x_1496);
        let x_1499 : vec4<f32> = u_xlat13;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.x, x_1499.y);
        let x_1502 : f32 = u_xlat29.z;
        txVec13 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec13;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat83 = x_1511;
        let x_1513 : vec4<f32> = u_xlat13;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat29.z;
        txVec14 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec14;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat84 = x_1525;
        let x_1526 : f32 = u_xlat84;
        let x_1528 : f32 = u_xlat18.y;
        u_xlat84 = (x_1526 * x_1528);
        let x_1531 : f32 = u_xlat18.x;
        let x_1532 : f32 = u_xlat83;
        let x_1534 : f32 = u_xlat84;
        u_xlat83 = ((x_1531 * x_1532) + x_1534);
        let x_1537 : vec2<f32> = u_xlat59;
        let x_1539 : f32 = u_xlat29.z;
        txVec15 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec15;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat84 = x_1548;
        let x_1550 : f32 = u_xlat18.z;
        let x_1551 : f32 = u_xlat84;
        let x_1553 : f32 = u_xlat83;
        u_xlat83 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat16;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = u_xlat29.z;
        txVec16 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec16;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat84 = x_1568;
        let x_1570 : f32 = u_xlat18.w;
        let x_1571 : f32 = u_xlat84;
        let x_1573 : f32 = u_xlat83;
        u_xlat83 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat14;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat29.z;
        txVec17 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec17;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat84 = x_1588;
        let x_1590 : f32 = u_xlat19.x;
        let x_1591 : f32 = u_xlat84;
        let x_1593 : f32 = u_xlat83;
        u_xlat83 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat14;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat29.z;
        txVec18 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec18;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat84 = x_1608;
        let x_1610 : f32 = u_xlat19.y;
        let x_1611 : f32 = u_xlat84;
        let x_1613 : f32 = u_xlat83;
        u_xlat83 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat15;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
        let x_1619 : f32 = u_xlat29.z;
        txVec19 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec19;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat84 = x_1628;
        let x_1630 : f32 = u_xlat19.z;
        let x_1631 : f32 = u_xlat84;
        let x_1633 : f32 = u_xlat83;
        u_xlat83 = ((x_1630 * x_1631) + x_1633);
        let x_1636 : vec4<f32> = u_xlat16;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = u_xlat29.z;
        txVec20 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec20;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat84 = x_1648;
        let x_1650 : f32 = u_xlat19.w;
        let x_1651 : f32 = u_xlat84;
        let x_1653 : f32 = u_xlat83;
        u_xlat83 = ((x_1650 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat17;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat29.z;
        txVec21 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec21;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat84 = x_1668;
        let x_1670 : f32 = u_xlat20.x;
        let x_1671 : f32 = u_xlat84;
        let x_1673 : f32 = u_xlat83;
        u_xlat83 = ((x_1670 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat17;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat29.z;
        txVec22 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec22;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat84 = x_1688;
        let x_1690 : f32 = u_xlat20.y;
        let x_1691 : f32 = u_xlat84;
        let x_1693 : f32 = u_xlat83;
        u_xlat83 = ((x_1690 * x_1691) + x_1693);
        let x_1696 : vec3<f32> = u_xlat35;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = u_xlat29.z;
        txVec23 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec23;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat84 = x_1708;
        let x_1710 : f32 = u_xlat20.z;
        let x_1711 : f32 = u_xlat84;
        let x_1713 : f32 = u_xlat83;
        u_xlat83 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec2<f32> = u_xlat67;
        let x_1718 : f32 = u_xlat29.z;
        txVec24 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1725 : vec3<f32> = txVec24;
        let x_1727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1725.xy, x_1725.z);
        u_xlat84 = x_1727;
        let x_1729 : f32 = u_xlat20.w;
        let x_1730 : f32 = u_xlat84;
        let x_1732 : f32 = u_xlat83;
        u_xlat83 = ((x_1729 * x_1730) + x_1732);
        let x_1735 : vec4<f32> = u_xlat12;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
        let x_1738 : f32 = u_xlat29.z;
        txVec25 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec25;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat84 = x_1747;
        let x_1749 : f32 = u_xlat8.x;
        let x_1750 : f32 = u_xlat84;
        let x_1752 : f32 = u_xlat83;
        u_xlat83 = ((x_1749 * x_1750) + x_1752);
        let x_1755 : vec4<f32> = u_xlat12;
        let x_1756 : vec2<f32> = vec2<f32>(x_1755.z, x_1755.w);
        let x_1758 : f32 = u_xlat29.z;
        txVec26 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec26;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat84 = x_1767;
        let x_1769 : f32 = u_xlat8.y;
        let x_1770 : f32 = u_xlat84;
        let x_1772 : f32 = u_xlat83;
        u_xlat83 = ((x_1769 * x_1770) + x_1772);
        let x_1775 : vec2<f32> = u_xlat62;
        let x_1777 : f32 = u_xlat29.z;
        txVec27 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec27;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1784.xy, x_1784.z);
        u_xlat84 = x_1786;
        let x_1788 : f32 = u_xlat8.z;
        let x_1789 : f32 = u_xlat84;
        let x_1791 : f32 = u_xlat83;
        u_xlat83 = ((x_1788 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat7;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = u_xlat29.z;
        txVec28 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec28;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat84 = x_1806;
        let x_1808 : f32 = u_xlat8.w;
        let x_1809 : f32 = u_xlat84;
        let x_1811 : f32 = u_xlat83;
        u_xlat82 = ((x_1808 * x_1809) + x_1811);
      }
    }
  } else {
    let x_1815 : vec3<f32> = u_xlat29;
    let x_1816 : vec2<f32> = vec2<f32>(x_1815.x, x_1815.y);
    let x_1818 : f32 = u_xlat29.z;
    txVec29 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
    let x_1825 : vec3<f32> = txVec29;
    let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
    u_xlat82 = x_1827;
  }
  let x_1829 : f32 = x_279.x_MainLightShadowParams.x;
  u_xlat29.x = (-(x_1829) + 1.0f);
  let x_1833 : f32 = u_xlat82;
  let x_1835 : f32 = x_279.x_MainLightShadowParams.x;
  let x_1838 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1833 * x_1835) + x_1838);
  let x_1843 : f32 = u_xlat29.z;
  u_xlatb55 = (0.0f >= x_1843);
  let x_1847 : f32 = u_xlat29.z;
  u_xlatb81 = (x_1847 >= 1.0f);
  let x_1849 : bool = u_xlatb81;
  let x_1850 : bool = u_xlatb55;
  u_xlatb55 = (x_1849 | x_1850);
  let x_1852 : bool = u_xlatb55;
  if (x_1852) {
    x_1853 = 1.0f;
  } else {
    let x_1858 : f32 = u_xlat29.x;
    x_1853 = x_1858;
  }
  let x_1859 : f32 = x_1853;
  u_xlat29.x = x_1859;
  let x_1861 : vec3<f32> = vs_TEXCOORD1;
  let x_1863 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1865 : vec3<f32> = (x_1861 + -(x_1863));
  let x_1866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec4<f32> = u_xlat7;
  let x_1870 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(vec3<f32>(x_1868.x, x_1868.y, x_1868.z), vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1874 : f32 = u_xlat55;
  let x_1876 : f32 = x_279.x_MainLightShadowParams.z;
  let x_1879 : f32 = x_279.x_MainLightShadowParams.w;
  u_xlat81 = ((x_1874 * x_1876) + x_1879);
  let x_1881 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1881, 0.0f, 1.0f);
  let x_1884 : f32 = u_xlat29.x;
  u_xlat82 = (-(x_1884) + 1.0f);
  let x_1887 : f32 = u_xlat81;
  let x_1888 : f32 = u_xlat82;
  let x_1891 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1887 * x_1888) + x_1891);
  let x_1901 : f32 = x_1899.x_MainLightCookieTextureFormat;
  u_xlatb81 = !((x_1901 == -1.0f));
  let x_1903 : bool = u_xlatb81;
  if (x_1903) {
    let x_1906 : vec3<f32> = vs_TEXCOORD1;
    let x_1909 : vec4<f32> = x_1899.x_MainLightWorldToLight[1i];
    let x_1911 : vec2<f32> = (vec2<f32>(x_1906.y, x_1906.y) * vec2<f32>(x_1909.x, x_1909.y));
    let x_1912 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1911.x, x_1911.y, x_1912.z, x_1912.w);
    let x_1915 : vec4<f32> = x_1899.x_MainLightWorldToLight[0i];
    let x_1917 : vec3<f32> = vs_TEXCOORD1;
    let x_1920 : vec4<f32> = u_xlat7;
    let x_1922 : vec2<f32> = ((vec2<f32>(x_1915.x, x_1915.y) * vec2<f32>(x_1917.x, x_1917.x)) + vec2<f32>(x_1920.x, x_1920.y));
    let x_1923 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
    let x_1926 : vec4<f32> = x_1899.x_MainLightWorldToLight[2i];
    let x_1928 : vec3<f32> = vs_TEXCOORD1;
    let x_1931 : vec4<f32> = u_xlat7;
    let x_1933 : vec2<f32> = ((vec2<f32>(x_1926.x, x_1926.y) * vec2<f32>(x_1928.z, x_1928.z)) + vec2<f32>(x_1931.x, x_1931.y));
    let x_1934 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1934.z, x_1934.w);
    let x_1936 : vec4<f32> = u_xlat7;
    let x_1939 : vec4<f32> = x_1899.x_MainLightWorldToLight[3i];
    let x_1941 : vec2<f32> = (vec2<f32>(x_1936.x, x_1936.y) + vec2<f32>(x_1939.x, x_1939.y));
    let x_1942 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1941.x, x_1941.y, x_1942.z, x_1942.w);
    let x_1944 : vec4<f32> = u_xlat7;
    let x_1947 : vec2<f32> = ((vec2<f32>(x_1944.x, x_1944.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1948 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1947.x, x_1947.y, x_1948.z, x_1948.w);
    let x_1955 : vec4<f32> = u_xlat7;
    let x_1958 : f32 = x_28.x_GlobalMipBias.x;
    let x_1959 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1955.x, x_1955.y), x_1958);
    u_xlat7 = x_1959;
    let x_1962 : f32 = x_1899.x_MainLightCookieTextureFormat;
    let x_1964 : f32 = x_1899.x_MainLightCookieTextureFormat;
    let x_1966 : f32 = x_1899.x_MainLightCookieTextureFormat;
    let x_1968 : f32 = x_1899.x_MainLightCookieTextureFormat;
    let x_1969 : vec4<f32> = vec4<f32>(x_1962, x_1964, x_1966, x_1968);
    let x_1976 : vec4<bool> = (vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1969.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1976.x, x_1976.y);
    let x_1979 : bool = u_xlatb8.y;
    if (x_1979) {
      let x_1984 : f32 = u_xlat7.w;
      x_1980 = x_1984;
    } else {
      let x_1987 : f32 = u_xlat7.x;
      x_1980 = x_1987;
    }
    let x_1988 : f32 = x_1980;
    u_xlat81 = x_1988;
    let x_1990 : bool = u_xlatb8.x;
    if (x_1990) {
      let x_1994 : vec4<f32> = u_xlat7;
      x_1991 = vec3<f32>(x_1994.x, x_1994.y, x_1994.z);
    } else {
      let x_1997 : f32 = u_xlat81;
      x_1991 = vec3<f32>(x_1997, x_1997, x_1997);
    }
    let x_1999 : vec3<f32> = x_1991;
    let x_2000 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2006 : vec4<f32> = u_xlat7;
  let x_2009 : vec4<f32> = x_28.x_MainLightColor;
  let x_2011 : vec3<f32> = (vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec3<f32> = u_xlat5;
  let x_2016 : vec4<f32> = u_xlat4;
  u_xlat81 = dot(-(x_2014), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : f32 = u_xlat81;
  let x_2020 : f32 = u_xlat81;
  u_xlat81 = (x_2019 + x_2020);
  let x_2022 : vec4<f32> = u_xlat4;
  let x_2024 : f32 = u_xlat81;
  let x_2028 : vec3<f32> = u_xlat5;
  let x_2030 : vec3<f32> = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * -(vec3<f32>(x_2024, x_2024, x_2024))) + -(x_2028));
  let x_2031 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2033 : vec4<f32> = u_xlat4;
  let x_2035 : vec3<f32> = u_xlat5;
  u_xlat81 = dot(vec3<f32>(x_2033.x, x_2033.y, x_2033.z), x_2035);
  let x_2037 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2037, 0.0f, 1.0f);
  let x_2039 : f32 = u_xlat81;
  u_xlat81 = (-(x_2039) + 1.0f);
  let x_2042 : f32 = u_xlat81;
  let x_2043 : f32 = u_xlat81;
  u_xlat81 = (x_2042 * x_2043);
  let x_2045 : f32 = u_xlat81;
  let x_2046 : f32 = u_xlat81;
  u_xlat81 = (x_2045 * x_2046);
  let x_2048 : f32 = u_xlat78;
  u_xlat82 = ((-(x_2048) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2054 : f32 = u_xlat78;
  let x_2055 : f32 = u_xlat82;
  u_xlat78 = (x_2054 * x_2055);
  let x_2057 : f32 = u_xlat78;
  u_xlat78 = (x_2057 * 6.0f);
  let x_2068 : vec4<f32> = u_xlat8;
  let x_2070 : f32 = u_xlat78;
  let x_2071 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2068.x, x_2068.y, x_2068.z), x_2070);
  u_xlat8 = x_2071;
  let x_2073 : f32 = u_xlat8.w;
  u_xlat78 = (x_2073 + -1.0f);
  let x_2076 : f32 = x_447.unity_SpecCube0_HDR.w;
  let x_2077 : f32 = u_xlat78;
  u_xlat78 = ((x_2076 * x_2077) + 1.0f);
  let x_2080 : f32 = u_xlat78;
  u_xlat78 = max(x_2080, 0.0f);
  let x_2082 : f32 = u_xlat78;
  u_xlat78 = log2(x_2082);
  let x_2084 : f32 = u_xlat78;
  let x_2086 : f32 = x_447.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2084 * x_2086);
  let x_2088 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2088);
  let x_2090 : f32 = u_xlat78;
  let x_2092 : f32 = x_447.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2090 * x_2092);
  let x_2094 : vec4<f32> = u_xlat8;
  let x_2096 : f32 = u_xlat78;
  let x_2098 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.y, x_2094.z) * vec3<f32>(x_2096, x_2096, x_2096));
  let x_2099 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
  let x_2101 : vec2<f32> = u_xlat1;
  let x_2103 : vec2<f32> = u_xlat1;
  let x_2107 : vec2<f32> = ((vec2<f32>(x_2101.x, x_2101.x) * vec2<f32>(x_2103.x, x_2103.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2108 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2108.w);
  let x_2111 : f32 = u_xlat9.y;
  u_xlat78 = (1.0f / x_2111);
  let x_2113 : vec4<f32> = u_xlat0;
  let x_2116 : f32 = u_xlat27;
  u_xlat35 = (-(vec3<f32>(x_2113.x, x_2113.y, x_2113.z)) + vec3<f32>(x_2116, x_2116, x_2116));
  let x_2119 : f32 = u_xlat81;
  let x_2121 : vec3<f32> = u_xlat35;
  let x_2123 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2119, x_2119, x_2119) * x_2121) + vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : f32 = u_xlat78;
  let x_2128 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2126, x_2126, x_2126) * x_2128);
  let x_2130 : vec4<f32> = u_xlat8;
  let x_2132 : vec3<f32> = u_xlat35;
  let x_2133 : vec3<f32> = (vec3<f32>(x_2130.x, x_2130.y, x_2130.z) * x_2132);
  let x_2134 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
  let x_2136 : vec3<f32> = u_xlat6;
  let x_2137 : vec3<f32> = u_xlat28;
  let x_2139 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_2136 * x_2137) + vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2143 : f32 = u_xlat29.x;
  let x_2145 : f32 = x_447.unity_LightData.z;
  u_xlat78 = (x_2143 * x_2145);
  let x_2147 : vec4<f32> = u_xlat4;
  let x_2150 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2147.x, x_2147.y, x_2147.z), vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
  let x_2155 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2155, 0.0f, 1.0f);
  let x_2158 : f32 = u_xlat78;
  let x_2160 : f32 = u_xlat1.x;
  u_xlat78 = (x_2158 * x_2160);
  let x_2162 : f32 = u_xlat78;
  let x_2164 : vec4<f32> = u_xlat7;
  let x_2166 : vec3<f32> = (vec3<f32>(x_2162, x_2162, x_2162) * vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec3<f32> = u_xlat5;
  let x_2171 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2173 : vec3<f32> = (x_2169 + vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec4<f32> = u_xlat8;
  let x_2178 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_2176.x, x_2176.y, x_2176.z), vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : f32 = u_xlat78;
  u_xlat78 = max(x_2181, 1.17549435e-38f);
  let x_2184 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2184);
  let x_2186 : f32 = u_xlat78;
  let x_2188 : vec4<f32> = u_xlat8;
  let x_2190 : vec3<f32> = (vec3<f32>(x_2186, x_2186, x_2186) * vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2191 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat4;
  let x_2195 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
  let x_2198 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2198, 0.0f, 1.0f);
  let x_2201 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat1.x = dot(vec3<f32>(x_2201.x, x_2201.y, x_2201.z), vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2208 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2208, 0.0f, 1.0f);
  let x_2211 : f32 = u_xlat78;
  let x_2212 : f32 = u_xlat78;
  u_xlat78 = (x_2211 * x_2212);
  let x_2214 : f32 = u_xlat78;
  let x_2216 : f32 = u_xlat9.x;
  u_xlat78 = ((x_2214 * x_2216) + 1.00001001358032226562f);
  let x_2221 : f32 = u_xlat1.x;
  let x_2223 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2221 * x_2223);
  let x_2226 : f32 = u_xlat78;
  let x_2227 : f32 = u_xlat78;
  u_xlat78 = (x_2226 * x_2227);
  let x_2230 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2230, 0.10000000149011611938f);
  let x_2234 : f32 = u_xlat78;
  let x_2236 : f32 = u_xlat1.x;
  u_xlat78 = (x_2234 * x_2236);
  let x_2239 : f32 = u_xlat53.x;
  let x_2240 : f32 = u_xlat78;
  u_xlat78 = (x_2239 * x_2240);
  let x_2242 : f32 = u_xlat79;
  let x_2243 : f32 = u_xlat78;
  u_xlat78 = (x_2242 / x_2243);
  let x_2245 : vec4<f32> = u_xlat0;
  let x_2247 : f32 = u_xlat78;
  let x_2250 : vec3<f32> = u_xlat28;
  let x_2251 : vec3<f32> = ((vec3<f32>(x_2245.x, x_2245.y, x_2245.z) * vec3<f32>(x_2247, x_2247, x_2247)) + x_2250);
  let x_2252 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec4<f32> = u_xlat8;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2254.x, x_2254.y, x_2254.z) * vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2262 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2264 : f32 = x_447.unity_LightData.y;
  u_xlat78 = min(x_2262, x_2264);
  let x_2266 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2266));
  let x_2269 : f32 = u_xlat55;
  let x_2272 : f32 = x_279.x_AdditionalShadowFadeParams.x;
  let x_2275 : f32 = x_279.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2269 * x_2272) + x_2275);
  let x_2279 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2279, 0.0f, 1.0f);
  let x_2283 : f32 = x_1899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2285 : f32 = x_1899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2287 : f32 = x_1899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2289 : f32 = x_1899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2290 : vec4<f32> = vec4<f32>(x_2283, x_2285, x_2287, x_2289);
  let x_2296 : vec4<bool> = (vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2290.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb29 = vec2<bool>(x_2296.x, x_2296.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2308 : u32 = u_xlatu_loop_1;
    let x_2309 : u32 = u_xlatu78;
    if ((x_2308 < x_2309)) {
    } else {
      break;
    }
    let x_2312 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2312 >> 2u);
    let x_2315 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2315 & 3u));
    let x_2318 : u32 = u_xlatu81;
    let x_2321 : vec4<f32> = x_447.unity_LightIndices[bitcast<i32>(x_2318)];
    let x_2331 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2336 : vec4<u32> = indexable[x_2331];
    u_xlat81 = dot(x_2321, bitcast<vec4<f32>>(x_2336));
    let x_2340 : f32 = u_xlat81;
    u_xlati81 = i32(x_2340);
    let x_2342 : vec3<f32> = vs_TEXCOORD1;
    let x_2353 : i32 = u_xlati81;
    let x_2355 : vec4<f32> = x_2352.x_AdditionalLightsPosition[x_2353];
    let x_2358 : i32 = u_xlati81;
    let x_2360 : vec4<f32> = x_2352.x_AdditionalLightsPosition[x_2358];
    u_xlat35 = ((-(x_2342) * vec3<f32>(x_2355.w, x_2355.w, x_2355.w)) + vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
    let x_2363 : vec3<f32> = u_xlat35;
    let x_2364 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2363, x_2364);
    let x_2366 : f32 = u_xlat82;
    u_xlat82 = max(x_2366, 0.00006103515625f);
    let x_2369 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2369);
    let x_2371 : f32 = u_xlat83;
    let x_2373 : vec3<f32> = u_xlat35;
    let x_2374 : vec3<f32> = (vec3<f32>(x_2371, x_2371, x_2371) * x_2373);
    let x_2375 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
    let x_2377 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2377);
    let x_2379 : f32 = u_xlat82;
    let x_2380 : i32 = u_xlati81;
    let x_2382 : f32 = x_2352.x_AdditionalLightsAttenuation[x_2380].x;
    u_xlat82 = (x_2379 * x_2382);
    let x_2384 : f32 = u_xlat82;
    let x_2386 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2384) * x_2386) + 1.0f);
    let x_2389 : f32 = u_xlat82;
    u_xlat82 = max(x_2389, 0.0f);
    let x_2391 : f32 = u_xlat82;
    let x_2392 : f32 = u_xlat82;
    u_xlat82 = (x_2391 * x_2392);
    let x_2394 : f32 = u_xlat82;
    let x_2395 : f32 = u_xlat84;
    u_xlat82 = (x_2394 * x_2395);
    let x_2397 : i32 = u_xlati81;
    let x_2399 : vec4<f32> = x_2352.x_AdditionalLightsSpotDir[x_2397];
    let x_2401 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2399.x, x_2399.y, x_2399.z), vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
    let x_2404 : f32 = u_xlat84;
    let x_2405 : i32 = u_xlati81;
    let x_2407 : f32 = x_2352.x_AdditionalLightsAttenuation[x_2405].z;
    let x_2409 : i32 = u_xlati81;
    let x_2411 : f32 = x_2352.x_AdditionalLightsAttenuation[x_2409].w;
    u_xlat84 = ((x_2404 * x_2407) + x_2411);
    let x_2413 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2413, 0.0f, 1.0f);
    let x_2415 : f32 = u_xlat84;
    let x_2416 : f32 = u_xlat84;
    u_xlat84 = (x_2415 * x_2416);
    let x_2418 : f32 = u_xlat82;
    let x_2419 : f32 = u_xlat84;
    u_xlat82 = (x_2418 * x_2419);
    let x_2423 : i32 = u_xlati81;
    let x_2425 : f32 = x_279.x_AdditionalShadowParams[x_2423].w;
    u_xlati84 = i32(x_2425);
    let x_2428 : i32 = u_xlati84;
    u_xlatb85 = (x_2428 >= 0i);
    let x_2430 : bool = u_xlatb85;
    if (x_2430) {
      let x_2434 : i32 = u_xlati81;
      let x_2436 : f32 = x_279.x_AdditionalShadowParams[x_2434].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2436, x_2436, x_2436, x_2436))));
      let x_2440 : bool = u_xlatb85;
      if (x_2440) {
        let x_2444 : vec4<f32> = u_xlat10;
        let x_2447 : vec4<f32> = u_xlat10;
        let x_2450 : vec4<bool> = (abs(vec4<f32>(x_2444.z, x_2444.z, x_2444.y, x_2444.z)) >= abs(vec4<f32>(x_2447.x, x_2447.y, x_2447.x, x_2447.x)));
        let x_2452 : vec3<bool> = vec3<bool>(x_2450.x, x_2450.y, x_2450.z);
        let x_2453 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
        let x_2456 : bool = u_xlatb11.y;
        let x_2458 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2456 & x_2458);
        let x_2460 : vec4<f32> = u_xlat10;
        let x_2463 : vec4<bool> = (-(vec4<f32>(x_2460.z, x_2460.y, x_2460.z, x_2460.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2464 : vec3<bool> = vec3<bool>(x_2463.x, x_2463.y, x_2463.w);
        let x_2465 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2464.x, x_2464.y, x_2465.z, x_2464.z);
        let x_2468 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2468);
        let x_2473 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2473);
        let x_2478 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2478);
        let x_2481 : bool = u_xlatb11.z;
        if (x_2481) {
          let x_2486 : f32 = u_xlat11.y;
          x_2482 = x_2486;
        } else {
          let x_2488 : f32 = u_xlat86;
          x_2482 = x_2488;
        }
        let x_2489 : f32 = x_2482;
        u_xlat86 = x_2489;
        let x_2491 : bool = u_xlatb85;
        if (x_2491) {
          let x_2496 : f32 = u_xlat11.x;
          x_2492 = x_2496;
        } else {
          let x_2498 : f32 = u_xlat86;
          x_2492 = x_2498;
        }
        let x_2499 : f32 = x_2492;
        u_xlat85 = x_2499;
        let x_2500 : i32 = u_xlati81;
        let x_2502 : f32 = x_279.x_AdditionalShadowParams[x_2500].w;
        u_xlat86 = trunc(x_2502);
        let x_2504 : f32 = u_xlat85;
        let x_2505 : f32 = u_xlat86;
        u_xlat85 = (x_2504 + x_2505);
        let x_2507 : f32 = u_xlat85;
        u_xlati84 = i32(x_2507);
      }
      let x_2509 : i32 = u_xlati84;
      u_xlati84 = (x_2509 << bitcast<u32>(2i));
      let x_2511 : vec3<f32> = vs_TEXCOORD1;
      let x_2514 : i32 = u_xlati84;
      let x_2517 : i32 = u_xlati84;
      let x_2521 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_2514 + 1i) / 4i)][((x_2517 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2511.y, x_2511.y, x_2511.y, x_2511.y) * x_2521);
      let x_2523 : i32 = u_xlati84;
      let x_2525 : i32 = u_xlati84;
      let x_2528 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[(x_2523 / 4i)][(x_2525 % 4i)];
      let x_2529 : vec3<f32> = vs_TEXCOORD1;
      let x_2532 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2528 * vec4<f32>(x_2529.x, x_2529.x, x_2529.x, x_2529.x)) + x_2532);
      let x_2534 : i32 = u_xlati84;
      let x_2537 : i32 = u_xlati84;
      let x_2541 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_2534 + 2i) / 4i)][((x_2537 + 2i) % 4i)];
      let x_2542 : vec3<f32> = vs_TEXCOORD1;
      let x_2545 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2541 * vec4<f32>(x_2542.z, x_2542.z, x_2542.z, x_2542.z)) + x_2545);
      let x_2547 : vec4<f32> = u_xlat11;
      let x_2548 : i32 = u_xlati84;
      let x_2551 : i32 = u_xlati84;
      let x_2555 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_2548 + 3i) / 4i)][((x_2551 + 3i) % 4i)];
      u_xlat11 = (x_2547 + x_2555);
      let x_2557 : vec4<f32> = u_xlat11;
      let x_2559 : vec4<f32> = u_xlat11;
      let x_2561 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.y, x_2557.z) / vec3<f32>(x_2559.w, x_2559.w, x_2559.w));
      let x_2562 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
      let x_2565 : i32 = u_xlati81;
      let x_2567 : f32 = x_279.x_AdditionalShadowParams[x_2565].y;
      u_xlatb84 = (0.0f < x_2567);
      let x_2569 : bool = u_xlatb84;
      if (x_2569) {
        let x_2572 : i32 = u_xlati81;
        let x_2574 : f32 = x_279.x_AdditionalShadowParams[x_2572].y;
        u_xlatb84 = (1.0f == x_2574);
        let x_2576 : bool = u_xlatb84;
        if (x_2576) {
          let x_2579 : vec4<f32> = u_xlat11;
          let x_2582 : vec4<f32> = x_279.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) + x_2582);
          let x_2585 : vec4<f32> = u_xlat12;
          let x_2586 : vec2<f32> = vec2<f32>(x_2585.x, x_2585.y);
          let x_2588 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2586.x, x_2586.y, x_2588);
          let x_2596 : vec3<f32> = txVec30;
          let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
          u_xlat13.x = x_2598;
          let x_2601 : vec4<f32> = u_xlat12;
          let x_2602 : vec2<f32> = vec2<f32>(x_2601.z, x_2601.w);
          let x_2604 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
          let x_2611 : vec3<f32> = txVec31;
          let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
          u_xlat13.y = x_2613;
          let x_2615 : vec4<f32> = u_xlat11;
          let x_2619 : vec4<f32> = x_279.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) + x_2619);
          let x_2622 : vec4<f32> = u_xlat12;
          let x_2623 : vec2<f32> = vec2<f32>(x_2622.x, x_2622.y);
          let x_2625 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2623.x, x_2623.y, x_2625);
          let x_2632 : vec3<f32> = txVec32;
          let x_2634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2632.xy, x_2632.z);
          u_xlat13.z = x_2634;
          let x_2637 : vec4<f32> = u_xlat12;
          let x_2638 : vec2<f32> = vec2<f32>(x_2637.z, x_2637.w);
          let x_2640 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2638.x, x_2638.y, x_2640);
          let x_2647 : vec3<f32> = txVec33;
          let x_2649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2647.xy, x_2647.z);
          u_xlat13.w = x_2649;
          let x_2651 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2651, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2654 : i32 = u_xlati81;
          let x_2656 : f32 = x_279.x_AdditionalShadowParams[x_2654].y;
          u_xlatb85 = (2.0f == x_2656);
          let x_2658 : bool = u_xlatb85;
          if (x_2658) {
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2665 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2668 : vec2<f32> = ((vec2<f32>(x_2661.x, x_2661.y) * vec2<f32>(x_2665.z, x_2665.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2669 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2668.x, x_2668.y, x_2669.z, x_2669.w);
            let x_2671 : vec4<f32> = u_xlat12;
            let x_2673 : vec2<f32> = floor(vec2<f32>(x_2671.x, x_2671.y));
            let x_2674 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2673.x, x_2673.y, x_2674.z, x_2674.w);
            let x_2677 : vec4<f32> = u_xlat11;
            let x_2680 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2683 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(x_2680.z, x_2680.w)) + -(vec2<f32>(x_2683.x, x_2683.y)));
            let x_2687 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2687.x, x_2687.x, x_2687.y, x_2687.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2690 : vec4<f32> = u_xlat13;
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2690.x, x_2690.x, x_2690.z, x_2690.z) * vec4<f32>(x_2692.x, x_2692.x, x_2692.z, x_2692.z));
            let x_2695 : vec4<f32> = u_xlat14;
            let x_2697 : vec2<f32> = (vec2<f32>(x_2695.y, x_2695.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2698 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2697.x, x_2698.y, x_2697.y, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat14;
            let x_2703 : vec2<f32> = u_xlat64;
            let x_2705 : vec2<f32> = ((vec2<f32>(x_2700.x, x_2700.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2703));
            let x_2706 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
            let x_2709 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2709) + vec2<f32>(1.0f, 1.0f));
            let x_2712 : vec2<f32> = u_xlat64;
            let x_2713 : vec2<f32> = min(x_2712, vec2<f32>(0.0f, 0.0f));
            let x_2714 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2713.x, x_2713.y, x_2714.z, x_2714.w);
            let x_2716 : vec4<f32> = u_xlat15;
            let x_2719 : vec4<f32> = u_xlat15;
            let x_2722 : vec2<f32> = u_xlat66;
            let x_2723 : vec2<f32> = ((-(vec2<f32>(x_2716.x, x_2716.y)) * vec2<f32>(x_2719.x, x_2719.y)) + x_2722);
            let x_2724 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2726 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2726, vec2<f32>(0.0f, 0.0f));
            let x_2728 : vec2<f32> = u_xlat64;
            let x_2730 : vec2<f32> = u_xlat64;
            let x_2732 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2728) * x_2730) + vec2<f32>(x_2732.y, x_2732.w));
            let x_2735 : vec4<f32> = u_xlat15;
            let x_2737 : vec2<f32> = (vec2<f32>(x_2735.x, x_2735.y) + vec2<f32>(1.0f, 1.0f));
            let x_2738 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
            let x_2740 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2740 + vec2<f32>(1.0f, 1.0f));
            let x_2742 : vec4<f32> = u_xlat14;
            let x_2744 : vec2<f32> = (vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2745 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
            let x_2747 : vec2<f32> = u_xlat66;
            let x_2748 : vec2<f32> = (x_2747 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2749 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2748.x, x_2748.y, x_2749.z, x_2749.w);
            let x_2751 : vec4<f32> = u_xlat15;
            let x_2753 : vec2<f32> = (vec2<f32>(x_2751.x, x_2751.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2754 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2753.x, x_2753.y, x_2754.z, x_2754.w);
            let x_2756 : vec2<f32> = u_xlat64;
            let x_2757 : vec2<f32> = (x_2756 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2758 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2757.x, x_2757.y, x_2758.z, x_2758.w);
            let x_2760 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2760.y, x_2760.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2764 : f32 = u_xlat15.x;
            u_xlat16.z = x_2764;
            let x_2767 : f32 = u_xlat64.x;
            u_xlat16.w = x_2767;
            let x_2770 : f32 = u_xlat17.x;
            u_xlat14.z = x_2770;
            let x_2773 : f32 = u_xlat13.x;
            u_xlat14.w = x_2773;
            let x_2775 : vec4<f32> = u_xlat14;
            let x_2777 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2775.z, x_2775.w, x_2775.x, x_2775.z) + vec4<f32>(x_2777.z, x_2777.w, x_2777.x, x_2777.z));
            let x_2781 : f32 = u_xlat16.y;
            u_xlat15.z = x_2781;
            let x_2784 : f32 = u_xlat64.y;
            u_xlat15.w = x_2784;
            let x_2787 : f32 = u_xlat14.y;
            u_xlat17.z = x_2787;
            let x_2790 : f32 = u_xlat13.z;
            u_xlat17.w = x_2790;
            let x_2792 : vec4<f32> = u_xlat15;
            let x_2794 : vec4<f32> = u_xlat17;
            let x_2796 : vec3<f32> = (vec3<f32>(x_2792.z, x_2792.y, x_2792.w) + vec3<f32>(x_2794.z, x_2794.y, x_2794.w));
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
            let x_2799 : vec4<f32> = u_xlat14;
            let x_2801 : vec4<f32> = u_xlat18;
            let x_2803 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.z, x_2799.w) / vec3<f32>(x_2801.z, x_2801.w, x_2801.y));
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2808 : vec3<f32> = (vec3<f32>(x_2806.x, x_2806.y, x_2806.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2809 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
            let x_2811 : vec4<f32> = u_xlat17;
            let x_2813 : vec4<f32> = u_xlat13;
            let x_2815 : vec3<f32> = (vec3<f32>(x_2811.z, x_2811.y, x_2811.w) / vec3<f32>(x_2813.x, x_2813.y, x_2813.z));
            let x_2816 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
            let x_2818 : vec4<f32> = u_xlat15;
            let x_2820 : vec3<f32> = (vec3<f32>(x_2818.x, x_2818.y, x_2818.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2821 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2821.w);
            let x_2823 : vec4<f32> = u_xlat14;
            let x_2826 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2828 : vec3<f32> = (vec3<f32>(x_2823.y, x_2823.x, x_2823.z) * vec3<f32>(x_2826.x, x_2826.x, x_2826.x));
            let x_2829 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2828.x, x_2828.y, x_2828.z, x_2829.w);
            let x_2831 : vec4<f32> = u_xlat15;
            let x_2834 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2836 : vec3<f32> = (vec3<f32>(x_2831.x, x_2831.y, x_2831.z) * vec3<f32>(x_2834.y, x_2834.y, x_2834.y));
            let x_2837 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2837.w);
            let x_2840 : f32 = u_xlat15.x;
            u_xlat14.w = x_2840;
            let x_2842 : vec4<f32> = u_xlat12;
            let x_2845 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2848 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.y) * vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y)) + vec4<f32>(x_2848.y, x_2848.w, x_2848.x, x_2848.w));
            let x_2851 : vec4<f32> = u_xlat12;
            let x_2854 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2857 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2854.x, x_2854.y)) + vec2<f32>(x_2857.z, x_2857.w));
            let x_2861 : f32 = u_xlat14.y;
            u_xlat15.w = x_2861;
            let x_2863 : vec4<f32> = u_xlat15;
            let x_2864 : vec2<f32> = vec2<f32>(x_2863.y, x_2863.z);
            let x_2865 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2865.x, x_2864.x, x_2865.z, x_2864.y);
            let x_2867 : vec4<f32> = u_xlat12;
            let x_2870 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2873 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2867.x, x_2867.y, x_2867.x, x_2867.y) * vec4<f32>(x_2870.x, x_2870.y, x_2870.x, x_2870.y)) + vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2873.y));
            let x_2876 : vec4<f32> = u_xlat12;
            let x_2879 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.w, x_2882.y, x_2882.w, x_2882.z));
            let x_2885 : vec4<f32> = u_xlat12;
            let x_2888 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2885.x, x_2885.y, x_2885.x, x_2885.y) * vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y)) + vec4<f32>(x_2891.x, x_2891.w, x_2891.z, x_2891.w));
            let x_2894 : vec4<f32> = u_xlat13;
            let x_2896 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2894.x, x_2894.x, x_2894.x, x_2894.y) * vec4<f32>(x_2896.z, x_2896.w, x_2896.y, x_2896.z));
            let x_2899 : vec4<f32> = u_xlat13;
            let x_2901 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2899.y, x_2899.y, x_2899.z, x_2899.z) * x_2901);
            let x_2904 : f32 = u_xlat13.z;
            let x_2906 : f32 = u_xlat18.y;
            u_xlat85 = (x_2904 * x_2906);
            let x_2909 : vec4<f32> = u_xlat16;
            let x_2910 : vec2<f32> = vec2<f32>(x_2909.x, x_2909.y);
            let x_2912 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2910.x, x_2910.y, x_2912);
            let x_2919 : vec3<f32> = txVec34;
            let x_2921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2919.xy, x_2919.z);
            u_xlat86 = x_2921;
            let x_2923 : vec4<f32> = u_xlat16;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.z, x_2923.w);
            let x_2926 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2934 : vec3<f32> = txVec35;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat88 = x_2936;
            let x_2937 : f32 = u_xlat88;
            let x_2939 : f32 = u_xlat19.y;
            u_xlat88 = (x_2937 * x_2939);
            let x_2942 : f32 = u_xlat19.x;
            let x_2943 : f32 = u_xlat86;
            let x_2945 : f32 = u_xlat88;
            u_xlat86 = ((x_2942 * x_2943) + x_2945);
            let x_2948 : vec2<f32> = u_xlat64;
            let x_2950 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2948.x, x_2948.y, x_2950);
            let x_2957 : vec3<f32> = txVec36;
            let x_2959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2957.xy, x_2957.z);
            u_xlat88 = x_2959;
            let x_2961 : f32 = u_xlat19.z;
            let x_2962 : f32 = u_xlat88;
            let x_2964 : f32 = u_xlat86;
            u_xlat86 = ((x_2961 * x_2962) + x_2964);
            let x_2967 : vec4<f32> = u_xlat15;
            let x_2968 : vec2<f32> = vec2<f32>(x_2967.x, x_2967.y);
            let x_2970 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
            let x_2977 : vec3<f32> = txVec37;
            let x_2979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2977.xy, x_2977.z);
            u_xlat88 = x_2979;
            let x_2981 : f32 = u_xlat19.w;
            let x_2982 : f32 = u_xlat88;
            let x_2984 : f32 = u_xlat86;
            u_xlat86 = ((x_2981 * x_2982) + x_2984);
            let x_2987 : vec4<f32> = u_xlat17;
            let x_2988 : vec2<f32> = vec2<f32>(x_2987.x, x_2987.y);
            let x_2990 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2988.x, x_2988.y, x_2990);
            let x_2997 : vec3<f32> = txVec38;
            let x_2999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2997.xy, x_2997.z);
            u_xlat88 = x_2999;
            let x_3001 : f32 = u_xlat20.x;
            let x_3002 : f32 = u_xlat88;
            let x_3004 : f32 = u_xlat86;
            u_xlat86 = ((x_3001 * x_3002) + x_3004);
            let x_3007 : vec4<f32> = u_xlat17;
            let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
            let x_3010 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
            let x_3017 : vec3<f32> = txVec39;
            let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
            u_xlat88 = x_3019;
            let x_3021 : f32 = u_xlat20.y;
            let x_3022 : f32 = u_xlat88;
            let x_3024 : f32 = u_xlat86;
            u_xlat86 = ((x_3021 * x_3022) + x_3024);
            let x_3027 : vec4<f32> = u_xlat15;
            let x_3028 : vec2<f32> = vec2<f32>(x_3027.z, x_3027.w);
            let x_3030 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
            let x_3037 : vec3<f32> = txVec40;
            let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
            u_xlat88 = x_3039;
            let x_3041 : f32 = u_xlat20.z;
            let x_3042 : f32 = u_xlat88;
            let x_3044 : f32 = u_xlat86;
            u_xlat86 = ((x_3041 * x_3042) + x_3044);
            let x_3047 : vec4<f32> = u_xlat14;
            let x_3048 : vec2<f32> = vec2<f32>(x_3047.x, x_3047.y);
            let x_3050 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3048.x, x_3048.y, x_3050);
            let x_3057 : vec3<f32> = txVec41;
            let x_3059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3057.xy, x_3057.z);
            u_xlat88 = x_3059;
            let x_3061 : f32 = u_xlat20.w;
            let x_3062 : f32 = u_xlat88;
            let x_3064 : f32 = u_xlat86;
            u_xlat86 = ((x_3061 * x_3062) + x_3064);
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3068 : vec2<f32> = vec2<f32>(x_3067.z, x_3067.w);
            let x_3070 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
            let x_3077 : vec3<f32> = txVec42;
            let x_3079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
            u_xlat88 = x_3079;
            let x_3080 : f32 = u_xlat85;
            let x_3081 : f32 = u_xlat88;
            let x_3083 : f32 = u_xlat86;
            u_xlat84 = ((x_3080 * x_3081) + x_3083);
          } else {
            let x_3086 : vec4<f32> = u_xlat11;
            let x_3089 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3092 : vec2<f32> = ((vec2<f32>(x_3086.x, x_3086.y) * vec2<f32>(x_3089.z, x_3089.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3093 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
            let x_3095 : vec4<f32> = u_xlat12;
            let x_3097 : vec2<f32> = floor(vec2<f32>(x_3095.x, x_3095.y));
            let x_3098 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3097.x, x_3097.y, x_3098.z, x_3098.w);
            let x_3100 : vec4<f32> = u_xlat11;
            let x_3103 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3103.z, x_3103.w)) + -(vec2<f32>(x_3106.x, x_3106.y)));
            let x_3110 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3110.x, x_3110.x, x_3110.y, x_3110.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3113 : vec4<f32> = u_xlat13;
            let x_3115 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3113.x, x_3113.x, x_3113.z, x_3113.z) * vec4<f32>(x_3115.x, x_3115.x, x_3115.z, x_3115.z));
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3120 : vec2<f32> = (vec2<f32>(x_3118.y, x_3118.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3121 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3121.x, x_3120.x, x_3121.z, x_3120.y);
            let x_3123 : vec4<f32> = u_xlat14;
            let x_3126 : vec2<f32> = u_xlat64;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3123.x, x_3123.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3126));
            let x_3129 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3128.x, x_3129.y, x_3128.y, x_3129.w);
            let x_3131 : vec2<f32> = u_xlat64;
            let x_3133 : vec2<f32> = (-(x_3131) + vec2<f32>(1.0f, 1.0f));
            let x_3134 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3133.x, x_3133.y, x_3134.z, x_3134.w);
            let x_3136 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3136, vec2<f32>(0.0f, 0.0f));
            let x_3138 : vec2<f32> = u_xlat66;
            let x_3140 : vec2<f32> = u_xlat66;
            let x_3142 : vec4<f32> = u_xlat14;
            let x_3144 : vec2<f32> = ((-(x_3138) * x_3140) + vec2<f32>(x_3142.x, x_3142.y));
            let x_3145 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3144.x, x_3144.y, x_3145.z, x_3145.w);
            let x_3147 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3147, vec2<f32>(0.0f, 0.0f));
            let x_3150 : vec2<f32> = u_xlat66;
            let x_3152 : vec2<f32> = u_xlat66;
            let x_3154 : vec4<f32> = u_xlat13;
            let x_3156 : vec2<f32> = ((-(x_3150) * x_3152) + vec2<f32>(x_3154.y, x_3154.w));
            let x_3157 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3156.x, x_3157.y, x_3156.y);
            let x_3159 : vec4<f32> = u_xlat14;
            let x_3161 : vec2<f32> = (vec2<f32>(x_3159.x, x_3159.y) + vec2<f32>(2.0f, 2.0f));
            let x_3162 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3161.x, x_3161.y, x_3162.z, x_3162.w);
            let x_3164 : vec3<f32> = u_xlat39;
            let x_3166 : vec2<f32> = (vec2<f32>(x_3164.x, x_3164.z) + vec2<f32>(2.0f, 2.0f));
            let x_3167 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3167.x, x_3166.x, x_3167.z, x_3166.y);
            let x_3170 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3170 * 0.08163200318813323975f);
            let x_3173 : vec4<f32> = u_xlat13;
            let x_3175 : vec3<f32> = (vec3<f32>(x_3173.z, x_3173.x, x_3173.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3176 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3175.x, x_3175.y, x_3175.z, x_3176.w);
            let x_3178 : vec4<f32> = u_xlat14;
            let x_3180 : vec2<f32> = (vec2<f32>(x_3178.x, x_3178.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3181 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3180.x, x_3180.y, x_3181.z, x_3181.w);
            let x_3184 : f32 = u_xlat17.y;
            u_xlat16.x = x_3184;
            let x_3186 : vec2<f32> = u_xlat64;
            let x_3189 : vec2<f32> = ((vec2<f32>(x_3186.x, x_3186.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3190 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3190.x, x_3189.x, x_3190.z, x_3189.y);
            let x_3192 : vec2<f32> = u_xlat64;
            let x_3195 : vec2<f32> = ((vec2<f32>(x_3192.x, x_3192.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3196 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3195.x, x_3196.y, x_3195.y, x_3196.w);
            let x_3199 : f32 = u_xlat13.x;
            u_xlat14.y = x_3199;
            let x_3202 : f32 = u_xlat15.y;
            u_xlat14.w = x_3202;
            let x_3204 : vec4<f32> = u_xlat14;
            let x_3205 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3204 + x_3205);
            let x_3207 : vec2<f32> = u_xlat64;
            let x_3210 : vec2<f32> = ((vec2<f32>(x_3207.y, x_3207.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3211 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3211.x, x_3210.x, x_3211.z, x_3210.y);
            let x_3213 : vec2<f32> = u_xlat64;
            let x_3216 : vec2<f32> = ((vec2<f32>(x_3213.y, x_3213.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3217 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3216.x, x_3217.y, x_3216.y, x_3217.w);
            let x_3220 : f32 = u_xlat13.y;
            u_xlat15.y = x_3220;
            let x_3222 : vec4<f32> = u_xlat15;
            let x_3223 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3222 + x_3223);
            let x_3225 : vec4<f32> = u_xlat14;
            let x_3226 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3225 / x_3226);
            let x_3228 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3228 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3230 : vec4<f32> = u_xlat15;
            let x_3231 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3230 / x_3231);
            let x_3233 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3233 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3238 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3235.w, x_3235.x, x_3235.y, x_3235.z) * vec4<f32>(x_3238.x, x_3238.x, x_3238.x, x_3238.x));
            let x_3241 : vec4<f32> = u_xlat15;
            let x_3244 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3241.x, x_3241.w, x_3241.y, x_3241.z) * vec4<f32>(x_3244.y, x_3244.y, x_3244.y, x_3244.y));
            let x_3247 : vec4<f32> = u_xlat14;
            let x_3248 : vec3<f32> = vec3<f32>(x_3247.y, x_3247.z, x_3247.w);
            let x_3249 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3248.x, x_3249.y, x_3248.y, x_3248.z);
            let x_3252 : f32 = u_xlat15.x;
            u_xlat17.y = x_3252;
            let x_3254 : vec4<f32> = u_xlat12;
            let x_3257 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3260 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3254.x, x_3254.y, x_3254.x, x_3254.y) * vec4<f32>(x_3257.x, x_3257.y, x_3257.x, x_3257.y)) + vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3260.y));
            let x_3263 : vec4<f32> = u_xlat12;
            let x_3266 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3269 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3263.x, x_3263.y) * vec2<f32>(x_3266.x, x_3266.y)) + vec2<f32>(x_3269.w, x_3269.y));
            let x_3273 : f32 = u_xlat17.y;
            u_xlat14.y = x_3273;
            let x_3276 : f32 = u_xlat15.z;
            u_xlat17.y = x_3276;
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3281 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3284 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3278.x, x_3278.y, x_3278.x, x_3278.y) * vec4<f32>(x_3281.x, x_3281.y, x_3281.x, x_3281.y)) + vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3284.y));
            let x_3287 : vec4<f32> = u_xlat12;
            let x_3290 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3293 : vec4<f32> = u_xlat17;
            let x_3295 : vec2<f32> = ((vec2<f32>(x_3287.x, x_3287.y) * vec2<f32>(x_3290.x, x_3290.y)) + vec2<f32>(x_3293.w, x_3293.y));
            let x_3296 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3295.x, x_3295.y, x_3296.z, x_3296.w);
            let x_3299 : f32 = u_xlat17.y;
            u_xlat14.z = x_3299;
            let x_3302 : vec4<f32> = u_xlat12;
            let x_3305 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.y) * vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y)) + vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.z));
            let x_3312 : f32 = u_xlat15.w;
            u_xlat17.y = x_3312;
            let x_3315 : vec4<f32> = u_xlat12;
            let x_3318 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3321 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3315.x, x_3315.y, x_3315.x, x_3315.y) * vec4<f32>(x_3318.x, x_3318.y, x_3318.x, x_3318.y)) + vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3321.y));
            let x_3325 : vec4<f32> = u_xlat12;
            let x_3328 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3331 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3325.x, x_3325.y) * vec2<f32>(x_3328.x, x_3328.y)) + vec2<f32>(x_3331.w, x_3331.y));
            let x_3335 : f32 = u_xlat17.y;
            u_xlat14.w = x_3335;
            let x_3338 : vec4<f32> = u_xlat12;
            let x_3341 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3344 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3338.x, x_3338.y) * vec2<f32>(x_3341.x, x_3341.y)) + vec2<f32>(x_3344.x, x_3344.w));
            let x_3347 : vec4<f32> = u_xlat17;
            let x_3348 : vec3<f32> = vec3<f32>(x_3347.x, x_3347.z, x_3347.w);
            let x_3349 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3348.x, x_3349.y, x_3348.y, x_3348.z);
            let x_3351 : vec4<f32> = u_xlat12;
            let x_3354 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3357 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3351.x, x_3351.y, x_3351.x, x_3351.y) * vec4<f32>(x_3354.x, x_3354.y, x_3354.x, x_3354.y)) + vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3357.y));
            let x_3360 : vec4<f32> = u_xlat12;
            let x_3363 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3366 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3360.x, x_3360.y) * vec2<f32>(x_3363.x, x_3363.y)) + vec2<f32>(x_3366.w, x_3366.y));
            let x_3370 : f32 = u_xlat14.x;
            u_xlat15.x = x_3370;
            let x_3372 : vec4<f32> = u_xlat12;
            let x_3375 : vec4<f32> = x_279.x_AdditionalShadowmapSize;
            let x_3378 : vec4<f32> = u_xlat15;
            let x_3380 : vec2<f32> = ((vec2<f32>(x_3372.x, x_3372.y) * vec2<f32>(x_3375.x, x_3375.y)) + vec2<f32>(x_3378.x, x_3378.y));
            let x_3381 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3380.x, x_3380.y, x_3381.z, x_3381.w);
            let x_3384 : vec4<f32> = u_xlat13;
            let x_3386 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3384.x, x_3384.x, x_3384.x, x_3384.x) * x_3386);
            let x_3389 : vec4<f32> = u_xlat13;
            let x_3391 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3389.y, x_3389.y, x_3389.y, x_3389.y) * x_3391);
            let x_3394 : vec4<f32> = u_xlat13;
            let x_3396 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3394.z, x_3394.z, x_3394.z, x_3394.z) * x_3396);
            let x_3398 : vec4<f32> = u_xlat13;
            let x_3400 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3398.w, x_3398.w, x_3398.w, x_3398.w) * x_3400);
            let x_3403 : vec4<f32> = u_xlat18;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.x, x_3403.y);
            let x_3406 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec43;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat85 = x_3415;
            let x_3417 : vec4<f32> = u_xlat18;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.z, x_3417.w);
            let x_3420 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec44;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat86 = x_3429;
            let x_3430 : f32 = u_xlat86;
            let x_3432 : f32 = u_xlat23.y;
            u_xlat86 = (x_3430 * x_3432);
            let x_3435 : f32 = u_xlat23.x;
            let x_3436 : f32 = u_xlat85;
            let x_3438 : f32 = u_xlat86;
            u_xlat85 = ((x_3435 * x_3436) + x_3438);
            let x_3441 : vec2<f32> = u_xlat64;
            let x_3443 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec45;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat86 = x_3452;
            let x_3454 : f32 = u_xlat23.z;
            let x_3455 : f32 = u_xlat86;
            let x_3457 : f32 = u_xlat85;
            u_xlat85 = ((x_3454 * x_3455) + x_3457);
            let x_3460 : vec4<f32> = u_xlat21;
            let x_3461 : vec2<f32> = vec2<f32>(x_3460.x, x_3460.y);
            let x_3463 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec46;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat86 = x_3472;
            let x_3474 : f32 = u_xlat23.w;
            let x_3475 : f32 = u_xlat86;
            let x_3477 : f32 = u_xlat85;
            u_xlat85 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec4<f32> = u_xlat19;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.x, x_3480.y);
            let x_3483 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3490 : vec3<f32> = txVec47;
            let x_3492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3490.xy, x_3490.z);
            u_xlat86 = x_3492;
            let x_3494 : f32 = u_xlat24.x;
            let x_3495 : f32 = u_xlat86;
            let x_3497 : f32 = u_xlat85;
            u_xlat85 = ((x_3494 * x_3495) + x_3497);
            let x_3500 : vec4<f32> = u_xlat19;
            let x_3501 : vec2<f32> = vec2<f32>(x_3500.z, x_3500.w);
            let x_3503 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3501.x, x_3501.y, x_3503);
            let x_3510 : vec3<f32> = txVec48;
            let x_3512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3510.xy, x_3510.z);
            u_xlat86 = x_3512;
            let x_3514 : f32 = u_xlat24.y;
            let x_3515 : f32 = u_xlat86;
            let x_3517 : f32 = u_xlat85;
            u_xlat85 = ((x_3514 * x_3515) + x_3517);
            let x_3520 : vec4<f32> = u_xlat20;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.x, x_3520.y);
            let x_3523 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec49;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat86 = x_3532;
            let x_3534 : f32 = u_xlat24.z;
            let x_3535 : f32 = u_xlat86;
            let x_3537 : f32 = u_xlat85;
            u_xlat85 = ((x_3534 * x_3535) + x_3537);
            let x_3540 : vec4<f32> = u_xlat21;
            let x_3541 : vec2<f32> = vec2<f32>(x_3540.z, x_3540.w);
            let x_3543 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3541.x, x_3541.y, x_3543);
            let x_3550 : vec3<f32> = txVec50;
            let x_3552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3550.xy, x_3550.z);
            u_xlat86 = x_3552;
            let x_3554 : f32 = u_xlat24.w;
            let x_3555 : f32 = u_xlat86;
            let x_3557 : f32 = u_xlat85;
            u_xlat85 = ((x_3554 * x_3555) + x_3557);
            let x_3560 : vec4<f32> = u_xlat22;
            let x_3561 : vec2<f32> = vec2<f32>(x_3560.x, x_3560.y);
            let x_3563 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec51;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat86 = x_3572;
            let x_3574 : f32 = u_xlat25.x;
            let x_3575 : f32 = u_xlat86;
            let x_3577 : f32 = u_xlat85;
            u_xlat85 = ((x_3574 * x_3575) + x_3577);
            let x_3580 : vec4<f32> = u_xlat22;
            let x_3581 : vec2<f32> = vec2<f32>(x_3580.z, x_3580.w);
            let x_3583 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3581.x, x_3581.y, x_3583);
            let x_3590 : vec3<f32> = txVec52;
            let x_3592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3590.xy, x_3590.z);
            u_xlat86 = x_3592;
            let x_3594 : f32 = u_xlat25.y;
            let x_3595 : f32 = u_xlat86;
            let x_3597 : f32 = u_xlat85;
            u_xlat85 = ((x_3594 * x_3595) + x_3597);
            let x_3600 : vec2<f32> = u_xlat40;
            let x_3602 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3600.x, x_3600.y, x_3602);
            let x_3609 : vec3<f32> = txVec53;
            let x_3611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3609.xy, x_3609.z);
            u_xlat86 = x_3611;
            let x_3613 : f32 = u_xlat25.z;
            let x_3614 : f32 = u_xlat86;
            let x_3616 : f32 = u_xlat85;
            u_xlat85 = ((x_3613 * x_3614) + x_3616);
            let x_3619 : vec2<f32> = u_xlat72;
            let x_3621 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3619.x, x_3619.y, x_3621);
            let x_3628 : vec3<f32> = txVec54;
            let x_3630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3628.xy, x_3628.z);
            u_xlat86 = x_3630;
            let x_3632 : f32 = u_xlat25.w;
            let x_3633 : f32 = u_xlat86;
            let x_3635 : f32 = u_xlat85;
            u_xlat85 = ((x_3632 * x_3633) + x_3635);
            let x_3638 : vec4<f32> = u_xlat17;
            let x_3639 : vec2<f32> = vec2<f32>(x_3638.x, x_3638.y);
            let x_3641 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3639.x, x_3639.y, x_3641);
            let x_3648 : vec3<f32> = txVec55;
            let x_3650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3648.xy, x_3648.z);
            u_xlat86 = x_3650;
            let x_3652 : f32 = u_xlat13.x;
            let x_3653 : f32 = u_xlat86;
            let x_3655 : f32 = u_xlat85;
            u_xlat85 = ((x_3652 * x_3653) + x_3655);
            let x_3658 : vec4<f32> = u_xlat17;
            let x_3659 : vec2<f32> = vec2<f32>(x_3658.z, x_3658.w);
            let x_3661 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3659.x, x_3659.y, x_3661);
            let x_3668 : vec3<f32> = txVec56;
            let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
            u_xlat86 = x_3670;
            let x_3672 : f32 = u_xlat13.y;
            let x_3673 : f32 = u_xlat86;
            let x_3675 : f32 = u_xlat85;
            u_xlat85 = ((x_3672 * x_3673) + x_3675);
            let x_3678 : vec2<f32> = u_xlat67;
            let x_3680 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3678.x, x_3678.y, x_3680);
            let x_3687 : vec3<f32> = txVec57;
            let x_3689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3687.xy, x_3687.z);
            u_xlat86 = x_3689;
            let x_3691 : f32 = u_xlat13.z;
            let x_3692 : f32 = u_xlat86;
            let x_3694 : f32 = u_xlat85;
            u_xlat85 = ((x_3691 * x_3692) + x_3694);
            let x_3697 : vec4<f32> = u_xlat12;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.x, x_3697.y);
            let x_3700 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec58;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat86 = x_3709;
            let x_3711 : f32 = u_xlat13.w;
            let x_3712 : f32 = u_xlat86;
            let x_3714 : f32 = u_xlat85;
            u_xlat84 = ((x_3711 * x_3712) + x_3714);
          }
        }
      } else {
        let x_3718 : vec4<f32> = u_xlat11;
        let x_3719 : vec2<f32> = vec2<f32>(x_3718.x, x_3718.y);
        let x_3721 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3719.x, x_3719.y, x_3721);
        let x_3728 : vec3<f32> = txVec59;
        let x_3730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3728.xy, x_3728.z);
        u_xlat84 = x_3730;
      }
      let x_3731 : i32 = u_xlati81;
      let x_3733 : f32 = x_279.x_AdditionalShadowParams[x_3731].x;
      u_xlat85 = (1.0f + -(x_3733));
      let x_3736 : f32 = u_xlat84;
      let x_3737 : i32 = u_xlati81;
      let x_3739 : f32 = x_279.x_AdditionalShadowParams[x_3737].x;
      let x_3741 : f32 = u_xlat85;
      u_xlat84 = ((x_3736 * x_3739) + x_3741);
      let x_3744 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3744);
      let x_3748 : f32 = u_xlat11.z;
      u_xlatb86 = (x_3748 >= 1.0f);
      let x_3750 : bool = u_xlatb85;
      let x_3751 : bool = u_xlatb86;
      u_xlatb85 = (x_3750 | x_3751);
      let x_3753 : bool = u_xlatb85;
      let x_3754 : f32 = u_xlat84;
      u_xlat84 = select(x_3754, 1.0f, x_3753);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3757 : f32 = u_xlat84;
    u_xlat85 = (-(x_3757) + 1.0f);
    let x_3761 : f32 = u_xlat1.x;
    let x_3762 : f32 = u_xlat85;
    let x_3764 : f32 = u_xlat84;
    u_xlat84 = ((x_3761 * x_3762) + x_3764);
    let x_3767 : i32 = u_xlati81;
    u_xlati85 = (1i << bitcast<u32>((x_3767 & 31i)));
    let x_3771 : i32 = u_xlati85;
    let x_3774 : f32 = x_1899.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3771) & bitcast<u32>(x_3774)));
    let x_3778 : i32 = u_xlati85;
    if ((x_3778 != 0i)) {
      let x_3782 : i32 = u_xlati81;
      let x_3784 : f32 = x_1899.x_AdditionalLightsLightTypes[x_3782].el;
      u_xlati85 = i32(x_3784);
      let x_3787 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_3787 != 0i));
      let x_3791 : i32 = u_xlati81;
      u_xlati88 = (x_3791 << bitcast<u32>(2i));
      let x_3793 : i32 = u_xlati86;
      if ((x_3793 != 0i)) {
        let x_3797 : vec3<f32> = vs_TEXCOORD1;
        let x_3799 : i32 = u_xlati88;
        let x_3802 : i32 = u_xlati88;
        let x_3806 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3799 + 1i) / 4i)][((x_3802 + 1i) % 4i)];
        let x_3808 : vec3<f32> = (vec3<f32>(x_3797.y, x_3797.y, x_3797.y) * vec3<f32>(x_3806.x, x_3806.y, x_3806.w));
        let x_3809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3808.x, x_3808.y, x_3808.z, x_3809.w);
        let x_3811 : i32 = u_xlati88;
        let x_3813 : i32 = u_xlati88;
        let x_3816 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[(x_3811 / 4i)][(x_3813 % 4i)];
        let x_3818 : vec3<f32> = vs_TEXCOORD1;
        let x_3821 : vec4<f32> = u_xlat11;
        let x_3823 : vec3<f32> = ((vec3<f32>(x_3816.x, x_3816.y, x_3816.w) * vec3<f32>(x_3818.x, x_3818.x, x_3818.x)) + vec3<f32>(x_3821.x, x_3821.y, x_3821.z));
        let x_3824 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3823.x, x_3823.y, x_3823.z, x_3824.w);
        let x_3826 : i32 = u_xlati88;
        let x_3829 : i32 = u_xlati88;
        let x_3833 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3826 + 2i) / 4i)][((x_3829 + 2i) % 4i)];
        let x_3835 : vec3<f32> = vs_TEXCOORD1;
        let x_3838 : vec4<f32> = u_xlat11;
        let x_3840 : vec3<f32> = ((vec3<f32>(x_3833.x, x_3833.y, x_3833.w) * vec3<f32>(x_3835.z, x_3835.z, x_3835.z)) + vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
        let x_3841 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
        let x_3843 : vec4<f32> = u_xlat11;
        let x_3845 : i32 = u_xlati88;
        let x_3848 : i32 = u_xlati88;
        let x_3852 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3845 + 3i) / 4i)][((x_3848 + 3i) % 4i)];
        let x_3854 : vec3<f32> = (vec3<f32>(x_3843.x, x_3843.y, x_3843.z) + vec3<f32>(x_3852.x, x_3852.y, x_3852.w));
        let x_3855 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3854.x, x_3854.y, x_3854.z, x_3855.w);
        let x_3857 : vec4<f32> = u_xlat11;
        let x_3859 : vec4<f32> = u_xlat11;
        let x_3861 : vec2<f32> = (vec2<f32>(x_3857.x, x_3857.y) / vec2<f32>(x_3859.z, x_3859.z));
        let x_3862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3861.x, x_3861.y, x_3862.z, x_3862.w);
        let x_3864 : vec4<f32> = u_xlat11;
        let x_3867 : vec2<f32> = ((vec2<f32>(x_3864.x, x_3864.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3868 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3867.x, x_3867.y, x_3868.z, x_3868.w);
        let x_3870 : vec4<f32> = u_xlat11;
        let x_3874 : vec2<f32> = clamp(vec2<f32>(x_3870.x, x_3870.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3875 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3874.x, x_3874.y, x_3875.z, x_3875.w);
        let x_3877 : i32 = u_xlati81;
        let x_3879 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_3877];
        let x_3881 : vec4<f32> = u_xlat11;
        let x_3884 : i32 = u_xlati81;
        let x_3886 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_3884];
        let x_3888 : vec2<f32> = ((vec2<f32>(x_3879.x, x_3879.y) * vec2<f32>(x_3881.x, x_3881.y)) + vec2<f32>(x_3886.z, x_3886.w));
        let x_3889 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3888.x, x_3888.y, x_3889.z, x_3889.w);
      } else {
        let x_3892 : i32 = u_xlati85;
        u_xlatb85 = (x_3892 == 1i);
        let x_3894 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3894);
        let x_3896 : i32 = u_xlati85;
        if ((x_3896 != 0i)) {
          let x_3901 : vec3<f32> = vs_TEXCOORD1;
          let x_3903 : i32 = u_xlati88;
          let x_3906 : i32 = u_xlati88;
          let x_3910 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3903 + 1i) / 4i)][((x_3906 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_3901.y, x_3901.y) * vec2<f32>(x_3910.x, x_3910.y));
          let x_3913 : i32 = u_xlati88;
          let x_3915 : i32 = u_xlati88;
          let x_3918 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[(x_3913 / 4i)][(x_3915 % 4i)];
          let x_3920 : vec3<f32> = vs_TEXCOORD1;
          let x_3923 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3918.x, x_3918.y) * vec2<f32>(x_3920.x, x_3920.x)) + x_3923);
          let x_3925 : i32 = u_xlati88;
          let x_3928 : i32 = u_xlati88;
          let x_3932 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3925 + 2i) / 4i)][((x_3928 + 2i) % 4i)];
          let x_3934 : vec3<f32> = vs_TEXCOORD1;
          let x_3937 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3932.x, x_3932.y) * vec2<f32>(x_3934.z, x_3934.z)) + x_3937);
          let x_3939 : vec2<f32> = u_xlat63;
          let x_3940 : i32 = u_xlati88;
          let x_3943 : i32 = u_xlati88;
          let x_3947 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3940 + 3i) / 4i)][((x_3943 + 3i) % 4i)];
          u_xlat63 = (x_3939 + vec2<f32>(x_3947.x, x_3947.y));
          let x_3950 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3950 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3953 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_3953);
          let x_3955 : i32 = u_xlati81;
          let x_3957 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_3955];
          let x_3959 : vec2<f32> = u_xlat63;
          let x_3961 : i32 = u_xlati81;
          let x_3963 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_3961];
          let x_3965 : vec2<f32> = ((vec2<f32>(x_3957.x, x_3957.y) * x_3959) + vec2<f32>(x_3963.z, x_3963.w));
          let x_3966 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3965.x, x_3965.y, x_3966.z, x_3966.w);
        } else {
          let x_3969 : vec3<f32> = vs_TEXCOORD1;
          let x_3971 : i32 = u_xlati88;
          let x_3974 : i32 = u_xlati88;
          let x_3978 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3971 + 1i) / 4i)][((x_3974 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3969.y, x_3969.y, x_3969.y, x_3969.y) * x_3978);
          let x_3980 : i32 = u_xlati88;
          let x_3982 : i32 = u_xlati88;
          let x_3985 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[(x_3980 / 4i)][(x_3982 % 4i)];
          let x_3986 : vec3<f32> = vs_TEXCOORD1;
          let x_3989 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3985 * vec4<f32>(x_3986.x, x_3986.x, x_3986.x, x_3986.x)) + x_3989);
          let x_3991 : i32 = u_xlati88;
          let x_3994 : i32 = u_xlati88;
          let x_3998 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_3991 + 2i) / 4i)][((x_3994 + 2i) % 4i)];
          let x_3999 : vec3<f32> = vs_TEXCOORD1;
          let x_4002 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3998 * vec4<f32>(x_3999.z, x_3999.z, x_3999.z, x_3999.z)) + x_4002);
          let x_4004 : vec4<f32> = u_xlat12;
          let x_4005 : i32 = u_xlati88;
          let x_4008 : i32 = u_xlati88;
          let x_4012 : vec4<f32> = x_1899.x_AdditionalLightsWorldToLights[((x_4005 + 3i) / 4i)][((x_4008 + 3i) % 4i)];
          u_xlat12 = (x_4004 + x_4012);
          let x_4014 : vec4<f32> = u_xlat12;
          let x_4016 : vec4<f32> = u_xlat12;
          let x_4018 : vec3<f32> = (vec3<f32>(x_4014.x, x_4014.y, x_4014.z) / vec3<f32>(x_4016.w, x_4016.w, x_4016.w));
          let x_4019 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
          let x_4021 : vec4<f32> = u_xlat12;
          let x_4023 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4021.x, x_4021.y, x_4021.z), vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
          let x_4026 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4026);
          let x_4028 : f32 = u_xlat85;
          let x_4030 : vec4<f32> = u_xlat12;
          let x_4032 : vec3<f32> = (vec3<f32>(x_4028, x_4028, x_4028) * vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
          let x_4033 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
          let x_4035 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4035.x, x_4035.y, x_4035.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4040 : f32 = u_xlat85;
          u_xlat85 = max(x_4040, 0.00000099999999747524f);
          let x_4043 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4043);
          let x_4045 : f32 = u_xlat85;
          let x_4047 : vec4<f32> = u_xlat12;
          let x_4049 : vec3<f32> = (vec3<f32>(x_4045, x_4045, x_4045) * vec3<f32>(x_4047.z, x_4047.x, x_4047.y));
          let x_4050 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4050.w);
          let x_4053 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4053);
          let x_4057 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4057, 0.0f, 1.0f);
          let x_4061 : vec4<f32> = u_xlat13;
          let x_4063 : vec4<bool> = (vec4<f32>(x_4061.y, x_4061.z, x_4061.y, x_4061.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4063.x, x_4063.y);
          let x_4066 : bool = u_xlatb63.x;
          if (x_4066) {
            let x_4071 : f32 = u_xlat13.x;
            x_4067 = x_4071;
          } else {
            let x_4074 : f32 = u_xlat13.x;
            x_4067 = -(x_4074);
          }
          let x_4076 : f32 = x_4067;
          u_xlat63.x = x_4076;
          let x_4079 : bool = u_xlatb63.y;
          if (x_4079) {
            let x_4084 : f32 = u_xlat13.x;
            x_4080 = x_4084;
          } else {
            let x_4087 : f32 = u_xlat13.x;
            x_4080 = -(x_4087);
          }
          let x_4089 : f32 = x_4080;
          u_xlat63.y = x_4089;
          let x_4091 : vec4<f32> = u_xlat12;
          let x_4093 : f32 = u_xlat85;
          let x_4096 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4091.x, x_4091.y) * vec2<f32>(x_4093, x_4093)) + x_4096);
          let x_4098 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4098 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4101 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4101, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4105 : i32 = u_xlati81;
          let x_4107 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_4105];
          let x_4109 : vec2<f32> = u_xlat63;
          let x_4111 : i32 = u_xlati81;
          let x_4113 : vec4<f32> = x_1899.x_AdditionalLightsCookieAtlasUVRects[x_4111];
          let x_4115 : vec2<f32> = ((vec2<f32>(x_4107.x, x_4107.y) * x_4109) + vec2<f32>(x_4113.z, x_4113.w));
          let x_4116 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4115.x, x_4115.y, x_4116.z, x_4116.w);
        }
      }
      let x_4123 : vec4<f32> = u_xlat11;
      let x_4125 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4123.x, x_4123.y), 0.0f);
      u_xlat11 = x_4125;
      let x_4127 : bool = u_xlatb29.y;
      if (x_4127) {
        let x_4132 : f32 = u_xlat11.w;
        x_4128 = x_4132;
      } else {
        let x_4135 : f32 = u_xlat11.x;
        x_4128 = x_4135;
      }
      let x_4136 : f32 = x_4128;
      u_xlat85 = x_4136;
      let x_4138 : bool = u_xlatb29.x;
      if (x_4138) {
        let x_4142 : vec4<f32> = u_xlat11;
        x_4139 = vec3<f32>(x_4142.x, x_4142.y, x_4142.z);
      } else {
        let x_4145 : f32 = u_xlat85;
        x_4139 = vec3<f32>(x_4145, x_4145, x_4145);
      }
      let x_4147 : vec3<f32> = x_4139;
      let x_4148 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4147.x, x_4147.y, x_4147.z, x_4148.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4154 : vec4<f32> = u_xlat11;
    let x_4156 : i32 = u_xlati81;
    let x_4158 : vec4<f32> = x_2352.x_AdditionalLightsColor[x_4156];
    let x_4160 : vec3<f32> = (vec3<f32>(x_4154.x, x_4154.y, x_4154.z) * vec3<f32>(x_4158.x, x_4158.y, x_4158.z));
    let x_4161 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4160.x, x_4160.y, x_4160.z, x_4161.w);
    let x_4163 : f32 = u_xlat82;
    let x_4164 : f32 = u_xlat84;
    u_xlat81 = (x_4163 * x_4164);
    let x_4166 : vec4<f32> = u_xlat4;
    let x_4168 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4166.x, x_4166.y, x_4166.z), vec3<f32>(x_4168.x, x_4168.y, x_4168.z));
    let x_4171 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4171, 0.0f, 1.0f);
    let x_4173 : f32 = u_xlat81;
    let x_4174 : f32 = u_xlat82;
    u_xlat81 = (x_4173 * x_4174);
    let x_4176 : f32 = u_xlat81;
    let x_4178 : vec4<f32> = u_xlat11;
    let x_4180 : vec3<f32> = (vec3<f32>(x_4176, x_4176, x_4176) * vec3<f32>(x_4178.x, x_4178.y, x_4178.z));
    let x_4181 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4180.x, x_4180.y, x_4180.z, x_4181.w);
    let x_4183 : vec3<f32> = u_xlat35;
    let x_4184 : f32 = u_xlat83;
    let x_4187 : vec3<f32> = u_xlat5;
    u_xlat35 = ((x_4183 * vec3<f32>(x_4184, x_4184, x_4184)) + x_4187);
    let x_4189 : vec3<f32> = u_xlat35;
    let x_4190 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(x_4189, x_4190);
    let x_4192 : f32 = u_xlat81;
    u_xlat81 = max(x_4192, 1.17549435e-38f);
    let x_4194 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4194);
    let x_4196 : f32 = u_xlat81;
    let x_4198 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4196, x_4196, x_4196) * x_4198);
    let x_4200 : vec4<f32> = u_xlat4;
    let x_4202 : vec3<f32> = u_xlat35;
    u_xlat81 = dot(vec3<f32>(x_4200.x, x_4200.y, x_4200.z), x_4202);
    let x_4204 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4204, 0.0f, 1.0f);
    let x_4206 : vec4<f32> = u_xlat10;
    let x_4208 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4206.x, x_4206.y, x_4206.z), x_4208);
    let x_4210 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4210, 0.0f, 1.0f);
    let x_4212 : f32 = u_xlat81;
    let x_4213 : f32 = u_xlat81;
    u_xlat81 = (x_4212 * x_4213);
    let x_4215 : f32 = u_xlat81;
    let x_4217 : f32 = u_xlat9.x;
    u_xlat81 = ((x_4215 * x_4217) + 1.00001001358032226562f);
    let x_4220 : f32 = u_xlat82;
    let x_4221 : f32 = u_xlat82;
    u_xlat82 = (x_4220 * x_4221);
    let x_4223 : f32 = u_xlat81;
    let x_4224 : f32 = u_xlat81;
    u_xlat81 = (x_4223 * x_4224);
    let x_4226 : f32 = u_xlat82;
    u_xlat82 = max(x_4226, 0.10000000149011611938f);
    let x_4228 : f32 = u_xlat81;
    let x_4229 : f32 = u_xlat82;
    u_xlat81 = (x_4228 * x_4229);
    let x_4232 : f32 = u_xlat53.x;
    let x_4233 : f32 = u_xlat81;
    u_xlat81 = (x_4232 * x_4233);
    let x_4235 : f32 = u_xlat79;
    let x_4236 : f32 = u_xlat81;
    u_xlat81 = (x_4235 / x_4236);
    let x_4238 : vec4<f32> = u_xlat0;
    let x_4240 : f32 = u_xlat81;
    let x_4243 : vec3<f32> = u_xlat28;
    u_xlat35 = ((vec3<f32>(x_4238.x, x_4238.y, x_4238.z) * vec3<f32>(x_4240, x_4240, x_4240)) + x_4243);
    let x_4245 : vec3<f32> = u_xlat35;
    let x_4246 : vec4<f32> = u_xlat11;
    let x_4249 : vec4<f32> = u_xlat8;
    let x_4251 : vec3<f32> = ((x_4245 * vec3<f32>(x_4246.x, x_4246.y, x_4246.z)) + vec3<f32>(x_4249.x, x_4249.y, x_4249.z));
    let x_4252 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4251.x, x_4251.y, x_4251.z, x_4252.w);

    continuing {
      let x_4254 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4254 + bitcast<u32>(1i));
    }
  }
  let x_4256 : vec3<f32> = u_xlat6;
  let x_4257 : vec3<f32> = u_xlat3;
  let x_4260 : vec4<f32> = u_xlat7;
  let x_4262 : vec3<f32> = ((x_4256 * vec3<f32>(x_4257.x, x_4257.x, x_4257.x)) + vec3<f32>(x_4260.x, x_4260.y, x_4260.z));
  let x_4263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4262.x, x_4262.y, x_4262.z, x_4263.w);
  let x_4267 : vec4<f32> = u_xlat8;
  let x_4269 : vec4<f32> = u_xlat0;
  let x_4271 : vec3<f32> = (vec3<f32>(x_4267.x, x_4267.y, x_4267.z) + vec3<f32>(x_4269.x, x_4269.y, x_4269.z));
  let x_4272 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4271.x, x_4271.y, x_4271.z, x_4272.w);
  let x_4276 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_4276 == 1.0f);
  let x_4278 : bool = u_xlatb0;
  if (x_4278) {
    let x_4283 : f32 = u_xlat2.x;
    x_4279 = x_4283;
  } else {
    x_4279 = 1.0f;
  }
  let x_4285 : f32 = x_4279;
  SV_Target0.w = x_4285;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


