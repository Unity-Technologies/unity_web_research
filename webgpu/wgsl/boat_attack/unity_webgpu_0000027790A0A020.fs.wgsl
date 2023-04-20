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
  /* @offset(208) */
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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(11) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_PointRepeat : sampler;

var<private> u_xlatb55 : bool;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_503 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1851 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu27 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2347 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu83 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_192 : f32;
  var x_262 : vec3<f32>;
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
  var x_1934 : f32;
  var x_1946 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2485 : f32;
  var x_2495 : f32;
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
  var x_4078 : f32;
  var x_4091 : f32;
  var x_4149 : f32;
  var x_4160 : vec3<f32>;
  var x_4362 : f32;
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
  u_xlat53 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat53;
  let x_108 : vec2<f32> = u_xlat53;
  u_xlat78 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat78;
  u_xlat78 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat78;
  u_xlat78 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_115);
  let x_117 : f32 = u_xlat78;
  u_xlat78 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat53;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat53 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat29.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat29.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_45.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat29;
  let x_175 : f32 = x_45.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat29.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb55 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb55;
  if (x_190) {
    let x_196 : f32 = u_xlat29.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat29.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat29.x = x_203;
  let x_206 : f32 = u_xlat29.x;
  let x_209 : f32 = x_185.unity_LODFade.x;
  u_xlat29.x = (-(x_206) + x_209);
  let x_214 : f32 = u_xlat29.x;
  u_xlatb29 = (x_214 < 0.0f);
  let x_216 : bool = u_xlatb29;
  if (((select(0i, 1i, x_216) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb29 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_232) + x_237);
  let x_240 : vec3<f32> = u_xlat4;
  let x_241 : vec3<f32> = u_xlat4;
  u_xlat55 = dot(x_240, x_241);
  let x_243 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat55;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_245, x_245, x_245) * x_247);
  let x_252 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_252;
  let x_255 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_255;
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_258;
  let x_260 : bool = u_xlatb29;
  if (x_260) {
    let x_265 : vec3<f32> = u_xlat4;
    x_262 = x_265;
  } else {
    let x_267 : vec4<f32> = u_xlat5;
    x_262 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  }
  let x_269 : vec3<f32> = x_262;
  u_xlat29 = x_269;
  let x_271 : vec3<f32> = vs_TEXCOORD2;
  let x_274 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_271.z, x_271.x, x_271.y) * vec3<f32>(x_274.y, x_274.z, x_274.x));
  let x_277 : vec3<f32> = vs_TEXCOORD2;
  let x_279 : vec4<f32> = vs_TEXCOORD3;
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_277.y, x_277.z, x_277.x) * vec3<f32>(x_279.z, x_279.x, x_279.y)) + -(x_282));
  let x_285 : vec3<f32> = u_xlat4;
  let x_286 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_285 * vec3<f32>(x_286.w, x_286.w, x_286.w));
  let x_289 : vec2<f32> = u_xlat53;
  let x_291 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_289.y, x_289.y, x_289.y) * x_291);
  let x_293 : vec2<f32> = u_xlat53;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + x_298);
  let x_300 : f32 = u_xlat78;
  let x_302 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_300, x_300, x_300) * x_302) + x_304);
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat78 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_309);
  let x_311 : f32 = u_xlat78;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_316 : f32 = vs_TEXCOORD1.y;
  let x_318 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_316 * x_318);
  let x_321 : f32 = x_45.unity_MatrixV[0i].z;
  let x_323 : f32 = vs_TEXCOORD1.x;
  let x_325 : f32 = u_xlat78;
  u_xlat78 = ((x_321 * x_323) + x_325);
  let x_328 : f32 = x_45.unity_MatrixV[2i].z;
  let x_330 : f32 = vs_TEXCOORD1.z;
  let x_332 : f32 = u_xlat78;
  u_xlat78 = ((x_328 * x_330) + x_332);
  let x_334 : f32 = u_xlat78;
  let x_337 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_334 + x_337);
  let x_339 : f32 = u_xlat78;
  let x_343 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_339) + -(x_343));
  let x_346 : f32 = u_xlat78;
  u_xlat78 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat78;
  let x_351 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_348 * x_351);
  let x_359 : vec2<f32> = vs_TEXCOORD8;
  let x_361 : f32 = x_45.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_359, x_361);
  u_xlat5 = x_362;
  let x_368 : vec2<f32> = vs_TEXCOORD8;
  let x_370 : f32 = x_45.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_368, x_370);
  let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat5;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat4;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat53.x = dot(x_382, vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_388 : f32 = u_xlat53.x;
  u_xlat53.x = (x_388 + 0.5f);
  let x_392 : vec2<f32> = u_xlat53;
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.x, x_392.x) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : f32 = u_xlat5.w;
  u_xlat53.x = max(x_400, 0.00009999999747378752f);
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec2<f32> = u_xlat53;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) / vec3<f32>(x_406.x, x_406.x, x_406.x));
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat1.x;
  u_xlat53.x = ((-(x_412) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_420 : f32 = u_xlat1.y;
  let x_422 : f32 = x_70.x_Smoothness;
  let x_425 : f32 = u_xlat53.x;
  u_xlat79 = ((x_420 * x_422) + -(x_425));
  let x_429 : vec2<f32> = u_xlat53;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_429.x, x_429.x, x_429.x) * vec3<f32>(x_431.y, x_431.z, x_431.w));
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_70.x_BaseColor;
  let x_442 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_437.x, x_437.y, x_437.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec2<f32> = u_xlat1;
  let x_447 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = ((vec3<f32>(x_445.x, x_445.x, x_445.x) * vec3<f32>(x_447.x, x_447.y, x_447.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_456 : f32 = u_xlat1.y;
  let x_459 : f32 = x_70.x_Smoothness;
  u_xlat1.x = ((-(x_456) * x_459) + 1.0f);
  let x_465 : f32 = u_xlat1.x;
  let x_467 : f32 = u_xlat1.x;
  u_xlat27.x = (x_465 * x_467);
  let x_471 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_471, 0.0078125f);
  let x_476 : f32 = u_xlat27.x;
  let x_478 : f32 = u_xlat27.x;
  u_xlat53.x = (x_476 * x_478);
  let x_481 : f32 = u_xlat79;
  u_xlat79 = (x_481 + 1.0f);
  let x_483 : f32 = u_xlat79;
  u_xlat79 = clamp(x_483, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat27.x;
  u_xlat82 = ((x_487 * 4.0f) + 2.0f);
  let x_492 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_492, 1.0f);
  let x_505 : f32 = x_503.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_505);
  let x_507 : bool = u_xlatb83;
  if (x_507) {
    let x_511 : f32 = x_503.x_MainLightShadowParams.y;
    u_xlatb83 = (x_511 == 1.0f);
    let x_513 : bool = u_xlatb83;
    if (x_513) {
      let x_517 : vec4<f32> = vs_TEXCOORD6;
      let x_520 : vec4<f32> = x_503.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) + x_520);
      let x_523 : vec4<f32> = u_xlat6;
      let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
      let x_526 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_539 : vec3<f32> = txVec0;
      let x_541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_539.xy, x_539.z);
      u_xlat7.x = x_541;
      let x_544 : vec4<f32> = u_xlat6;
      let x_545 : vec2<f32> = vec2<f32>(x_544.z, x_544.w);
      let x_547 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_545.x, x_545.y, x_547);
      let x_554 : vec3<f32> = txVec1;
      let x_556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_554.xy, x_554.z);
      u_xlat7.y = x_556;
      let x_558 : vec4<f32> = vs_TEXCOORD6;
      let x_561 : vec4<f32> = x_503.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y) + x_561);
      let x_564 : vec4<f32> = u_xlat6;
      let x_565 : vec2<f32> = vec2<f32>(x_564.x, x_564.y);
      let x_567 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_565.x, x_565.y, x_567);
      let x_574 : vec3<f32> = txVec2;
      let x_576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_574.xy, x_574.z);
      u_xlat7.z = x_576;
      let x_579 : vec4<f32> = u_xlat6;
      let x_580 : vec2<f32> = vec2<f32>(x_579.z, x_579.w);
      let x_582 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_580.x, x_580.y, x_582);
      let x_589 : vec3<f32> = txVec3;
      let x_591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_589.xy, x_589.z);
      u_xlat7.w = x_591;
      let x_594 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_594, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_601 : f32 = x_503.x_MainLightShadowParams.y;
      u_xlatb6 = (x_601 == 2.0f);
      let x_603 : bool = u_xlatb6;
      if (x_603) {
        let x_606 : vec4<f32> = vs_TEXCOORD6;
        let x_609 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_613 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_609.z, x_609.w)) + vec2<f32>(0.5f, 0.5f));
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        let x_618 : vec2<f32> = floor(vec2<f32>(x_616.x, x_616.y));
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec4<f32> = vs_TEXCOORD6;
        let x_625 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_622.x, x_622.y) * vec2<f32>(x_625.z, x_625.w)) + -(vec2<f32>(x_628.x, x_628.y)));
        let x_632 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_632.x, x_632.x, x_632.y, x_632.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_637 : vec4<f32> = u_xlat7;
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_637.x, x_637.x, x_637.z, x_637.z) * vec4<f32>(x_639.x, x_639.x, x_639.z, x_639.z));
        let x_642 : vec4<f32> = u_xlat8;
        let x_646 : vec2<f32> = (vec2<f32>(x_642.y, x_642.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_646.x, x_647.y, x_646.y, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_652 : vec2<f32> = u_xlat58;
        let x_654 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.z) * vec2<f32>(0.5f, 0.5f)) + -(x_652));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_658 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_658) + vec2<f32>(1.0f, 1.0f));
        let x_663 : vec2<f32> = u_xlat58;
        let x_665 : vec2<f32> = min(x_663, vec2<f32>(0.0f, 0.0f));
        let x_666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat9;
        let x_671 : vec4<f32> = u_xlat9;
        let x_674 : vec2<f32> = u_xlat60;
        let x_675 : vec2<f32> = ((-(vec2<f32>(x_668.x, x_668.y)) * vec2<f32>(x_671.x, x_671.y)) + x_674);
        let x_676 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_678, vec2<f32>(0.0f, 0.0f));
        let x_680 : vec2<f32> = u_xlat58;
        let x_682 : vec2<f32> = u_xlat58;
        let x_684 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_680) * x_682) + vec2<f32>(x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) + vec2<f32>(1.0f, 1.0f));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_692 + vec2<f32>(1.0f, 1.0f));
        let x_695 : vec4<f32> = u_xlat8;
        let x_699 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec2<f32> = u_xlat60;
        let x_703 : vec2<f32> = (x_702 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = (vec2<f32>(x_706.x, x_706.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_712 : vec2<f32> = u_xlat58;
        let x_713 : vec2<f32> = (x_712 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_716.y, x_716.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_720 : f32 = u_xlat9.x;
        u_xlat10.z = x_720;
        let x_723 : f32 = u_xlat58.x;
        u_xlat10.w = x_723;
        let x_726 : f32 = u_xlat11.x;
        u_xlat8.z = x_726;
        let x_729 : f32 = u_xlat7.x;
        u_xlat8.w = x_729;
        let x_732 : vec4<f32> = u_xlat8;
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_732.z, x_732.w, x_732.x, x_732.z) + vec4<f32>(x_734.z, x_734.w, x_734.x, x_734.z));
        let x_738 : f32 = u_xlat10.y;
        u_xlat9.z = x_738;
        let x_741 : f32 = u_xlat58.y;
        u_xlat9.w = x_741;
        let x_744 : f32 = u_xlat8.y;
        u_xlat11.z = x_744;
        let x_747 : f32 = u_xlat7.z;
        u_xlat11.w = x_747;
        let x_749 : vec4<f32> = u_xlat9;
        let x_751 : vec4<f32> = u_xlat11;
        let x_753 : vec3<f32> = (vec3<f32>(x_749.z, x_749.y, x_749.w) + vec3<f32>(x_751.z, x_751.y, x_751.w));
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec4<f32> = u_xlat12;
        let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.z, x_756.w) / vec3<f32>(x_758.z, x_758.w, x_758.y));
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_769 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat11;
        let x_773 : vec4<f32> = u_xlat7;
        let x_775 : vec3<f32> = (vec3<f32>(x_771.z, x_771.y, x_771.w) / vec3<f32>(x_773.x, x_773.y, x_773.z));
        let x_776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat9;
        let x_780 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat8;
        let x_786 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_788 : vec3<f32> = (vec3<f32>(x_783.y, x_783.x, x_783.z) * vec3<f32>(x_786.x, x_786.x, x_786.x));
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat9;
        let x_794 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_796 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794.y, x_794.y, x_794.y));
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_800 : f32 = u_xlat9.x;
        u_xlat8.w = x_800;
        let x_802 : vec4<f32> = u_xlat6;
        let x_805 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y) * vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) + vec4<f32>(x_808.y, x_808.w, x_808.x, x_808.w));
        let x_811 : vec4<f32> = u_xlat6;
        let x_814 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_814.x, x_814.y)) + vec2<f32>(x_817.z, x_817.w));
        let x_821 : f32 = u_xlat8.y;
        u_xlat9.w = x_821;
        let x_823 : vec4<f32> = u_xlat9;
        let x_824 : vec2<f32> = vec2<f32>(x_823.y, x_823.z);
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_825.x, x_824.x, x_825.z, x_824.y);
        let x_827 : vec4<f32> = u_xlat6;
        let x_830 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y) * vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y)) + vec4<f32>(x_833.x, x_833.y, x_833.z, x_833.y));
        let x_836 : vec4<f32> = u_xlat6;
        let x_839 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_842 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_836.x, x_836.y, x_836.x, x_836.y) * vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y)) + vec4<f32>(x_842.w, x_842.y, x_842.w, x_842.z));
        let x_845 : vec4<f32> = u_xlat6;
        let x_848 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) * vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y)) + vec4<f32>(x_851.x, x_851.w, x_851.z, x_851.w));
        let x_855 : vec4<f32> = u_xlat7;
        let x_857 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_855.x, x_855.x, x_855.x, x_855.y) * vec4<f32>(x_857.z, x_857.w, x_857.y, x_857.z));
        let x_861 : vec4<f32> = u_xlat7;
        let x_863 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_861.y, x_861.y, x_861.z, x_861.z) * x_863);
        let x_866 : f32 = u_xlat7.z;
        let x_868 : f32 = u_xlat12.y;
        u_xlat6.x = (x_866 * x_868);
        let x_872 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = vec2<f32>(x_872.x, x_872.y);
        let x_875 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_883 : vec3<f32> = txVec4;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat32.x = x_885;
        let x_888 : vec4<f32> = u_xlat10;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec5;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat7.x = x_900;
        let x_903 : f32 = u_xlat7.x;
        let x_905 : f32 = u_xlat13.y;
        u_xlat7.x = (x_903 * x_905);
        let x_909 : f32 = u_xlat13.x;
        let x_911 : f32 = u_xlat32.x;
        let x_914 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_909 * x_911) + x_914);
        let x_918 : vec2<f32> = u_xlat58;
        let x_920 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec6;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_927.xy, x_927.z);
        u_xlat58.x = x_929;
        let x_932 : f32 = u_xlat13.z;
        let x_934 : f32 = u_xlat58.x;
        let x_937 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_932 * x_934) + x_937);
        let x_941 : vec4<f32> = u_xlat9;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec7;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat58.x = x_953;
        let x_956 : f32 = u_xlat13.w;
        let x_958 : f32 = u_xlat58.x;
        let x_961 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_956 * x_958) + x_961);
        let x_965 : vec4<f32> = u_xlat11;
        let x_966 : vec2<f32> = vec2<f32>(x_965.x, x_965.y);
        let x_968 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec8;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
        u_xlat58.x = x_977;
        let x_980 : f32 = u_xlat14.x;
        let x_982 : f32 = u_xlat58.x;
        let x_985 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_980 * x_982) + x_985);
        let x_989 : vec4<f32> = u_xlat11;
        let x_990 : vec2<f32> = vec2<f32>(x_989.z, x_989.w);
        let x_992 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec9;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_999.xy, x_999.z);
        u_xlat58.x = x_1001;
        let x_1004 : f32 = u_xlat14.y;
        let x_1006 : f32 = u_xlat58.x;
        let x_1009 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1004 * x_1006) + x_1009);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.z, x_1013.w);
        let x_1016 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec10;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1023.xy, x_1023.z);
        u_xlat58.x = x_1025;
        let x_1028 : f32 = u_xlat14.z;
        let x_1030 : f32 = u_xlat58.x;
        let x_1033 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1028 * x_1030) + x_1033);
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
        let x_1040 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec11;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
        u_xlat58.x = x_1049;
        let x_1052 : f32 = u_xlat14.w;
        let x_1054 : f32 = u_xlat58.x;
        let x_1057 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1052 * x_1054) + x_1057);
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec12;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat58.x = x_1073;
        let x_1076 : f32 = u_xlat6.x;
        let x_1078 : f32 = u_xlat58.x;
        let x_1081 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1076 * x_1078) + x_1081);
      } else {
        let x_1084 : vec4<f32> = vs_TEXCOORD6;
        let x_1087 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1095 : vec2<f32> = floor(vec2<f32>(x_1093.x, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = vs_TEXCOORD6;
        let x_1101 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.z, x_1101.w)) + -(vec2<f32>(x_1104.x, x_1104.y)));
        let x_1108 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1108.x, x_1108.x, x_1108.y, x_1108.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat7;
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1111.x, x_1111.x, x_1111.z, x_1111.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1120 : vec2<f32> = (vec2<f32>(x_1116.y, x_1116.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1126 : vec2<f32> = u_xlat58;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1126));
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat58;
        let x_1133 : vec2<f32> = (-(x_1131) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1136, vec2<f32>(0.0f, 0.0f));
        let x_1138 : vec2<f32> = u_xlat60;
        let x_1140 : vec2<f32> = u_xlat60;
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1144 : vec2<f32> = ((-(x_1138) * x_1140) + vec2<f32>(x_1142.x, x_1142.y));
        let x_1145 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1147, vec2<f32>(0.0f, 0.0f));
        let x_1150 : vec2<f32> = u_xlat60;
        let x_1152 : vec2<f32> = u_xlat60;
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1156 : vec2<f32> = ((-(x_1150) * x_1152) + vec2<f32>(x_1154.y, x_1154.w));
        let x_1157 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1156.x, x_1157.y, x_1156.y);
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1159.x, x_1159.y) + vec2<f32>(2.0f, 2.0f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec3<f32> = u_xlat33;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.z) + vec2<f32>(2.0f, 2.0f));
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1166.x, x_1167.z, x_1166.y);
        let x_1170 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1170 * 0.08163200318813323975f);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1174.z, x_1174.x, x_1174.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat11.y;
        u_xlat10.x = x_1187;
        let x_1189 : vec2<f32> = u_xlat58;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1189.x, x_1189.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1196.x, x_1197.z, x_1196.y);
        let x_1199 : vec2<f32> = u_xlat58;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1199.x, x_1199.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat7.x;
        u_xlat8.y = x_1207;
        let x_1210 : f32 = u_xlat9.y;
        u_xlat8.w = x_1210;
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1212 + x_1213);
        let x_1215 : vec2<f32> = u_xlat58;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1215.y, x_1215.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec2<f32> = u_xlat58;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1228 : f32 = u_xlat7.y;
        u_xlat9.y = x_1228;
        let x_1230 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1230 + x_1231);
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1233 / x_1234);
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1236 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1243 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1242 / x_1243);
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1245 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1247.w, x_1247.x, x_1247.y, x_1247.z) * vec4<f32>(x_1250.x, x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1253.x, x_1253.w, x_1253.y, x_1253.z) * vec4<f32>(x_1256.y, x_1256.y, x_1256.y, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec3<f32> = vec3<f32>(x_1259.y, x_1259.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1260.x, x_1261.y, x_1260.y, x_1260.z);
        let x_1264 : f32 = u_xlat9.x;
        u_xlat11.y = x_1264;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.w, x_1281.y));
        let x_1285 : f32 = u_xlat11.y;
        u_xlat8.y = x_1285;
        let x_1288 : f32 = u_xlat9.z;
        u_xlat11.y = x_1288;
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat6;
        let x_1302 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1308 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.y;
        u_xlat8.z = x_1311;
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.z));
        let x_1324 : f32 = u_xlat9.w;
        u_xlat11.y = x_1324;
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1330 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y) * vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y)) + vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1333.y));
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat11.y;
        u_xlat8.w = x_1347;
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.x, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1360 : vec3<f32> = vec3<f32>(x_1359.x, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1360.x, x_1361.y, x_1360.y, x_1360.z);
        let x_1363 : vec4<f32> = u_xlat6;
        let x_1366 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.y));
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat8.x;
        u_xlat9.x = x_1383;
        let x_1385 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1393 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.y));
        let x_1394 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.x) * x_1399);
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1404);
        let x_1407 : vec4<f32> = u_xlat7;
        let x_1409 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1407.z, x_1407.z, x_1407.z, x_1407.z) * x_1409);
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1413 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1411.w, x_1411.w, x_1411.w, x_1411.w) * x_1413);
        let x_1416 : vec4<f32> = u_xlat12;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec13;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat8.x = x_1428;
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1442 : vec3<f32> = txVec14;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat86 = x_1444;
        let x_1445 : f32 = u_xlat86;
        let x_1447 : f32 = u_xlat17.y;
        u_xlat86 = (x_1445 * x_1447);
        let x_1450 : f32 = u_xlat17.x;
        let x_1452 : f32 = u_xlat8.x;
        let x_1454 : f32 = u_xlat86;
        u_xlat8.x = ((x_1450 * x_1452) + x_1454);
        let x_1458 : vec2<f32> = u_xlat58;
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec15;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat58.x = x_1469;
        let x_1472 : f32 = u_xlat17.z;
        let x_1474 : f32 = u_xlat58.x;
        let x_1477 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1472 * x_1474) + x_1477);
        let x_1481 : vec4<f32> = u_xlat15;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1492 : vec3<f32> = txVec16;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat84 = x_1494;
        let x_1496 : f32 = u_xlat17.w;
        let x_1497 : f32 = u_xlat84;
        let x_1500 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat13;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec17;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat84 = x_1516;
        let x_1518 : f32 = u_xlat18.x;
        let x_1519 : f32 = u_xlat84;
        let x_1522 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat13;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec18;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat84 = x_1538;
        let x_1540 : f32 = u_xlat18.y;
        let x_1541 : f32 = u_xlat84;
        let x_1544 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1540 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat14;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.y);
        let x_1551 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec19;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat84 = x_1560;
        let x_1562 : f32 = u_xlat18.z;
        let x_1563 : f32 = u_xlat84;
        let x_1566 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat15;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.z, x_1570.w);
        let x_1573 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec20;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat84 = x_1582;
        let x_1584 : f32 = u_xlat18.w;
        let x_1585 : f32 = u_xlat84;
        let x_1588 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec4<f32> = u_xlat16;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
        let x_1595 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec21;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
        u_xlat84 = x_1604;
        let x_1606 : f32 = u_xlat19.x;
        let x_1607 : f32 = u_xlat84;
        let x_1610 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec4<f32> = u_xlat16;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.z, x_1614.w);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec22;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat84 = x_1626;
        let x_1628 : f32 = u_xlat19.y;
        let x_1629 : f32 = u_xlat84;
        let x_1632 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec2<f32> = u_xlat34;
        let x_1638 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec23;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat84 = x_1647;
        let x_1649 : f32 = u_xlat19.z;
        let x_1650 : f32 = u_xlat84;
        let x_1653 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1649 * x_1650) + x_1653);
        let x_1657 : vec2<f32> = u_xlat66;
        let x_1659 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec24;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat84 = x_1668;
        let x_1670 : f32 = u_xlat19.w;
        let x_1671 : f32 = u_xlat84;
        let x_1674 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1670 * x_1671) + x_1674);
        let x_1678 : vec4<f32> = u_xlat11;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec25;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat84 = x_1690;
        let x_1692 : f32 = u_xlat7.x;
        let x_1693 : f32 = u_xlat84;
        let x_1696 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1692 * x_1693) + x_1696);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec26;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat84 = x_1712;
        let x_1714 : f32 = u_xlat7.y;
        let x_1715 : f32 = u_xlat84;
        let x_1718 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1714 * x_1715) + x_1718);
        let x_1722 : vec2<f32> = u_xlat61;
        let x_1724 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec27;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat84 = x_1733;
        let x_1735 : f32 = u_xlat7.z;
        let x_1736 : f32 = u_xlat84;
        let x_1739 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1735 * x_1736) + x_1739);
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.x, x_1743.y);
        let x_1746 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec28;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat6.x = x_1755;
        let x_1758 : f32 = u_xlat7.w;
        let x_1760 : f32 = u_xlat6.x;
        let x_1763 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1758 * x_1760) + x_1763);
      }
    }
  } else {
    let x_1767 : vec4<f32> = vs_TEXCOORD6;
    let x_1768 : vec2<f32> = vec2<f32>(x_1767.x, x_1767.y);
    let x_1770 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1768.x, x_1768.y, x_1770);
    let x_1777 : vec3<f32> = txVec29;
    let x_1779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1777.xy, x_1777.z);
    u_xlat83 = x_1779;
  }
  let x_1781 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1781) + 1.0f);
  let x_1785 : f32 = u_xlat83;
  let x_1787 : f32 = x_503.x_MainLightShadowParams.x;
  let x_1790 : f32 = u_xlat6.x;
  u_xlat83 = ((x_1785 * x_1787) + x_1790);
  let x_1793 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1793);
  let x_1799 : f32 = vs_TEXCOORD6.z;
  u_xlatb32.x = (x_1799 >= 1.0f);
  let x_1803 : bool = u_xlatb32.x;
  let x_1804 : bool = u_xlatb6;
  u_xlatb6 = (x_1803 | x_1804);
  let x_1806 : bool = u_xlatb6;
  let x_1807 : f32 = u_xlat83;
  u_xlat83 = select(x_1807, 1.0f, x_1806);
  let x_1809 : vec3<f32> = vs_TEXCOORD1;
  let x_1811 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1813 : vec3<f32> = (x_1809 + -(x_1811));
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat6;
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1823 : f32 = u_xlat6.x;
  let x_1825 : f32 = x_503.x_MainLightShadowParams.z;
  let x_1828 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_1823 * x_1825) + x_1828);
  let x_1832 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1832, 0.0f, 1.0f);
  let x_1835 : f32 = u_xlat83;
  u_xlat58.x = (-(x_1835) + 1.0f);
  let x_1840 : f32 = u_xlat32.x;
  let x_1842 : f32 = u_xlat58.x;
  let x_1844 : f32 = u_xlat83;
  u_xlat83 = ((x_1840 * x_1842) + x_1844);
  let x_1853 : f32 = x_1851.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_1853 == -1.0f));
  let x_1857 : bool = u_xlatb32.x;
  if (x_1857) {
    let x_1860 : vec3<f32> = vs_TEXCOORD1;
    let x_1863 : vec4<f32> = x_1851.x_MainLightWorldToLight[1i];
    let x_1865 : vec2<f32> = (vec2<f32>(x_1860.y, x_1860.y) * vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1865.x, x_1865.y, x_1866.z);
    let x_1869 : vec4<f32> = x_1851.x_MainLightWorldToLight[0i];
    let x_1871 : vec3<f32> = vs_TEXCOORD1;
    let x_1874 : vec3<f32> = u_xlat32;
    let x_1876 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1871.x, x_1871.x)) + vec2<f32>(x_1874.x, x_1874.y));
    let x_1877 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1876.x, x_1876.y, x_1877.z);
    let x_1880 : vec4<f32> = x_1851.x_MainLightWorldToLight[2i];
    let x_1882 : vec3<f32> = vs_TEXCOORD1;
    let x_1885 : vec3<f32> = u_xlat32;
    let x_1887 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(x_1882.z, x_1882.z)) + vec2<f32>(x_1885.x, x_1885.y));
    let x_1888 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1887.x, x_1887.y, x_1888.z);
    let x_1890 : vec3<f32> = u_xlat32;
    let x_1893 : vec4<f32> = x_1851.x_MainLightWorldToLight[3i];
    let x_1895 : vec2<f32> = (vec2<f32>(x_1890.x, x_1890.y) + vec2<f32>(x_1893.x, x_1893.y));
    let x_1896 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1895.x, x_1895.y, x_1896.z);
    let x_1898 : vec3<f32> = u_xlat32;
    let x_1901 : vec2<f32> = ((vec2<f32>(x_1898.x, x_1898.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1902 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1901.x, x_1901.y, x_1902.z);
    let x_1909 : vec3<f32> = u_xlat32;
    let x_1912 : f32 = x_45.x_GlobalMipBias.x;
    let x_1913 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1909.x, x_1909.y), x_1912);
    u_xlat7 = x_1913;
    let x_1915 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1917 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1922 : vec4<f32> = vec4<f32>(x_1915, x_1917, x_1919, x_1921);
    let x_1930 : vec4<bool> = (vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_1930.x, x_1930.y);
    let x_1933 : bool = u_xlatb32.y;
    if (x_1933) {
      let x_1938 : f32 = u_xlat7.w;
      x_1934 = x_1938;
    } else {
      let x_1941 : f32 = u_xlat7.x;
      x_1934 = x_1941;
    }
    let x_1942 : f32 = x_1934;
    u_xlat58.x = x_1942;
    let x_1945 : bool = u_xlatb32.x;
    if (x_1945) {
      let x_1949 : vec4<f32> = u_xlat7;
      x_1946 = vec3<f32>(x_1949.x, x_1949.y, x_1949.z);
    } else {
      let x_1952 : vec2<f32> = u_xlat58;
      x_1946 = vec3<f32>(x_1952.x, x_1952.x, x_1952.x);
    }
    let x_1954 : vec3<f32> = x_1946;
    u_xlat32 = x_1954;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_1959 : vec3<f32> = u_xlat32;
  let x_1961 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat32 = (x_1959 * vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec3<f32> = u_xlat29;
  let x_1966 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_1964), x_1966);
  let x_1970 : f32 = u_xlat7.x;
  let x_1972 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1970 + x_1972);
  let x_1975 : vec3<f32> = u_xlat4;
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1980 : vec3<f32> = u_xlat29;
  let x_1982 : vec3<f32> = ((x_1975 * -(vec3<f32>(x_1976.x, x_1976.x, x_1976.x))) + -(x_1980));
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1986 : vec3<f32> = u_xlat4;
  let x_1987 : vec3<f32> = u_xlat29;
  u_xlat85 = dot(x_1986, x_1987);
  let x_1989 : f32 = u_xlat85;
  u_xlat85 = clamp(x_1989, 0.0f, 1.0f);
  let x_1991 : f32 = u_xlat85;
  u_xlat85 = (-(x_1991) + 1.0f);
  let x_1994 : f32 = u_xlat85;
  let x_1995 : f32 = u_xlat85;
  u_xlat85 = (x_1994 * x_1995);
  let x_1997 : f32 = u_xlat85;
  let x_1998 : f32 = u_xlat85;
  u_xlat85 = (x_1997 * x_1998);
  let x_2001 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_2001) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2009 : f32 = u_xlat1.x;
  let x_2011 : f32 = u_xlat8.x;
  u_xlat1.x = (x_2009 * x_2011);
  let x_2015 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2015 * 6.0f);
  let x_2027 : vec4<f32> = u_xlat7;
  let x_2030 : f32 = u_xlat1.x;
  let x_2031 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2027.x, x_2027.y, x_2027.z), x_2030);
  u_xlat8 = x_2031;
  let x_2033 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2033 + -1.0f);
  let x_2037 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_2039 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2037 * x_2039) + 1.0f);
  let x_2044 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2044, 0.0f);
  let x_2048 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2048);
  let x_2052 : f32 = u_xlat1.x;
  let x_2054 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2052 * x_2054);
  let x_2058 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2058);
  let x_2062 : f32 = u_xlat1.x;
  let x_2064 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2062 * x_2064);
  let x_2067 : vec4<f32> = u_xlat8;
  let x_2069 : vec2<f32> = u_xlat1;
  let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * vec3<f32>(x_2069.x, x_2069.x, x_2069.x));
  let x_2072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2074 : vec3<f32> = u_xlat27;
  let x_2076 : vec3<f32> = u_xlat27;
  u_xlat1 = ((vec2<f32>(x_2074.x, x_2074.x) * vec2<f32>(x_2076.x, x_2076.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2082 : f32 = u_xlat1.y;
  u_xlat27.x = (1.0f / x_2082);
  let x_2085 : vec4<f32> = u_xlat0;
  let x_2088 : f32 = u_xlat79;
  let x_2090 : vec3<f32> = (-(vec3<f32>(x_2085.x, x_2085.y, x_2085.z)) + vec3<f32>(x_2088, x_2088, x_2088));
  let x_2091 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2093 : f32 = u_xlat85;
  let x_2095 : vec4<f32> = u_xlat8;
  let x_2098 : vec4<f32> = u_xlat0;
  let x_2100 : vec3<f32> = ((vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z)) + vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec3<f32> = u_xlat27;
  let x_2105 : vec4<f32> = u_xlat8;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103.x, x_2103.x, x_2103.x) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec4<f32> = u_xlat7;
  let x_2112 : vec4<f32> = u_xlat8;
  let x_2114 : vec3<f32> = (vec3<f32>(x_2110.x, x_2110.y, x_2110.z) * vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec4<f32> = u_xlat5;
  let x_2119 : vec3<f32> = u_xlat28;
  let x_2121 : vec4<f32> = u_xlat7;
  let x_2123 : vec3<f32> = ((vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * x_2119) + vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
  let x_2126 : f32 = u_xlat83;
  let x_2128 : f32 = x_185.unity_LightData.z;
  u_xlat27.x = (x_2126 * x_2128);
  let x_2131 : vec3<f32> = u_xlat4;
  let x_2133 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat79 = dot(x_2131, vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2136, 0.0f, 1.0f);
  let x_2138 : f32 = u_xlat79;
  let x_2140 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2138 * x_2140);
  let x_2143 : vec3<f32> = u_xlat27;
  let x_2145 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2143.x, x_2143.x, x_2143.x) * x_2145);
  let x_2147 : vec3<f32> = u_xlat29;
  let x_2149 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2151 : vec3<f32> = (x_2147 + vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec4<f32> = u_xlat7;
  let x_2156 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2161 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_2161, 1.17549435e-38f);
  let x_2166 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_2166);
  let x_2169 : vec3<f32> = u_xlat27;
  let x_2171 : vec4<f32> = u_xlat7;
  let x_2173 : vec3<f32> = (vec3<f32>(x_2169.x, x_2169.x, x_2169.x) * vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec3<f32> = u_xlat4;
  let x_2177 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(x_2176, vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2182 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2182, 0.0f, 1.0f);
  let x_2186 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2188 : vec4<f32> = u_xlat7;
  u_xlat27.z = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2193 : f32 = u_xlat27.z;
  u_xlat27.z = clamp(x_2193, 0.0f, 1.0f);
  let x_2196 : vec3<f32> = u_xlat27;
  let x_2198 : vec3<f32> = u_xlat27;
  let x_2200 : vec2<f32> = (vec2<f32>(x_2196.x, x_2196.z) * vec2<f32>(x_2198.x, x_2198.z));
  let x_2201 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_2200.x, x_2201.y, x_2200.y);
  let x_2204 : f32 = u_xlat27.x;
  let x_2206 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_2204 * x_2206) + 1.00001001358032226562f);
  let x_2212 : f32 = u_xlat27.x;
  let x_2214 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2212 * x_2214);
  let x_2218 : f32 = u_xlat27.z;
  u_xlat79 = max(x_2218, 0.10000000149011611938f);
  let x_2221 : f32 = u_xlat79;
  let x_2223 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2221 * x_2223);
  let x_2226 : f32 = u_xlat82;
  let x_2228 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2226 * x_2228);
  let x_2232 : f32 = u_xlat53.x;
  let x_2234 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2232 / x_2234);
  let x_2237 : vec4<f32> = u_xlat0;
  let x_2239 : vec3<f32> = u_xlat27;
  let x_2242 : vec3<f32> = u_xlat28;
  let x_2243 : vec3<f32> = ((vec3<f32>(x_2237.x, x_2237.y, x_2237.z) * vec3<f32>(x_2239.x, x_2239.x, x_2239.x)) + x_2242);
  let x_2244 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
  let x_2246 : vec3<f32> = u_xlat32;
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2246 * vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2251 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2253 : f32 = x_185.unity_LightData.y;
  u_xlat27.x = min(x_2251, x_2253);
  let x_2259 : f32 = u_xlat27.x;
  u_xlatu27 = bitcast<u32>(i32(x_2259));
  let x_2263 : f32 = u_xlat6.x;
  let x_2266 : f32 = x_503.x_AdditionalShadowFadeParams.x;
  let x_2269 : f32 = x_503.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2263 * x_2266) + x_2269);
  let x_2271 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2271, 0.0f, 1.0f);
  let x_2275 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2277 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2279 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2281 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2282 : vec4<f32> = vec4<f32>(x_2275, x_2277, x_2279, x_2281);
  let x_2288 : vec4<bool> = (vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2282.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2288.x, x_2288.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2300 : u32 = u_xlatu_loop_1;
    let x_2301 : u32 = u_xlatu27;
    if ((x_2300 < x_2301)) {
    } else {
      break;
    }
    let x_2304 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2304 >> 2u);
    let x_2308 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2308 & 3u));
    let x_2311 : u32 = u_xlatu6;
    let x_2314 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2311)];
    let x_2324 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2329 : vec4<u32> = indexable[x_2324];
    u_xlat6.x = dot(x_2314, bitcast<vec4<f32>>(x_2329));
    let x_2335 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2335);
    let x_2337 : vec3<f32> = vs_TEXCOORD1;
    let x_2348 : i32 = u_xlati6;
    let x_2350 : vec4<f32> = x_2347.x_AdditionalLightsPosition[x_2348];
    let x_2353 : i32 = u_xlati6;
    let x_2355 : vec4<f32> = x_2347.x_AdditionalLightsPosition[x_2353];
    let x_2357 : vec3<f32> = ((-(x_2337) * vec3<f32>(x_2350.w, x_2350.w, x_2350.w)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
    let x_2358 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
    let x_2361 : vec4<f32> = u_xlat9;
    let x_2363 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2361.x, x_2361.y, x_2361.z), vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
    let x_2366 : f32 = u_xlat59;
    u_xlat59 = max(x_2366, 0.00006103515625f);
    let x_2369 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2369);
    let x_2371 : f32 = u_xlat85;
    let x_2373 : vec4<f32> = u_xlat9;
    let x_2375 : vec3<f32> = (vec3<f32>(x_2371, x_2371, x_2371) * vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
    let x_2376 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
    let x_2378 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2378);
    let x_2380 : f32 = u_xlat59;
    let x_2381 : i32 = u_xlati6;
    let x_2383 : f32 = x_2347.x_AdditionalLightsAttenuation[x_2381].x;
    u_xlat59 = (x_2380 * x_2383);
    let x_2385 : f32 = u_xlat59;
    let x_2387 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2385) * x_2387) + 1.0f);
    let x_2390 : f32 = u_xlat59;
    u_xlat59 = max(x_2390, 0.0f);
    let x_2392 : f32 = u_xlat59;
    let x_2393 : f32 = u_xlat59;
    u_xlat59 = (x_2392 * x_2393);
    let x_2395 : f32 = u_xlat59;
    let x_2396 : f32 = u_xlat86;
    u_xlat59 = (x_2395 * x_2396);
    let x_2398 : i32 = u_xlati6;
    let x_2400 : vec4<f32> = x_2347.x_AdditionalLightsSpotDir[x_2398];
    let x_2402 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2400.x, x_2400.y, x_2400.z), vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
    let x_2405 : f32 = u_xlat86;
    let x_2406 : i32 = u_xlati6;
    let x_2408 : f32 = x_2347.x_AdditionalLightsAttenuation[x_2406].z;
    let x_2410 : i32 = u_xlati6;
    let x_2412 : f32 = x_2347.x_AdditionalLightsAttenuation[x_2410].w;
    u_xlat86 = ((x_2405 * x_2408) + x_2412);
    let x_2414 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2414, 0.0f, 1.0f);
    let x_2416 : f32 = u_xlat86;
    let x_2417 : f32 = u_xlat86;
    u_xlat86 = (x_2416 * x_2417);
    let x_2419 : f32 = u_xlat59;
    let x_2420 : f32 = u_xlat86;
    u_xlat59 = (x_2419 * x_2420);
    let x_2424 : i32 = u_xlati6;
    let x_2426 : f32 = x_503.x_AdditionalShadowParams[x_2424].w;
    u_xlati86 = i32(x_2426);
    let x_2429 : i32 = u_xlati86;
    u_xlatb87 = (x_2429 >= 0i);
    let x_2431 : bool = u_xlatb87;
    if (x_2431) {
      let x_2435 : i32 = u_xlati6;
      let x_2437 : f32 = x_503.x_AdditionalShadowParams[x_2435].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2437, x_2437, x_2437, x_2437))));
      let x_2441 : bool = u_xlatb87;
      if (x_2441) {
        let x_2446 : vec4<f32> = u_xlat10;
        let x_2449 : vec4<f32> = u_xlat10;
        let x_2452 : vec4<bool> = (abs(vec4<f32>(x_2446.z, x_2446.z, x_2446.y, x_2446.z)) >= abs(vec4<f32>(x_2449.x, x_2449.y, x_2449.x, x_2449.x)));
        let x_2454 : vec3<bool> = vec3<bool>(x_2452.x, x_2452.y, x_2452.z);
        let x_2455 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
        let x_2458 : bool = u_xlatb11.y;
        let x_2460 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2458 & x_2460);
        let x_2462 : vec4<f32> = u_xlat10;
        let x_2465 : vec4<bool> = (-(vec4<f32>(x_2462.z, x_2462.y, x_2462.z, x_2462.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2466 : vec3<bool> = vec3<bool>(x_2465.x, x_2465.y, x_2465.w);
        let x_2467 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2466.x, x_2466.y, x_2467.z, x_2466.z);
        let x_2470 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2470);
        let x_2475 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2475);
        let x_2481 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2481);
        let x_2484 : bool = u_xlatb11.z;
        if (x_2484) {
          let x_2489 : f32 = u_xlat11.y;
          x_2485 = x_2489;
        } else {
          let x_2491 : f32 = u_xlat88;
          x_2485 = x_2491;
        }
        let x_2492 : f32 = x_2485;
        u_xlat88 = x_2492;
        let x_2494 : bool = u_xlatb87;
        if (x_2494) {
          let x_2499 : f32 = u_xlat11.x;
          x_2495 = x_2499;
        } else {
          let x_2501 : f32 = u_xlat88;
          x_2495 = x_2501;
        }
        let x_2502 : f32 = x_2495;
        u_xlat87 = x_2502;
        let x_2503 : i32 = u_xlati6;
        let x_2505 : f32 = x_503.x_AdditionalShadowParams[x_2503].w;
        u_xlat88 = trunc(x_2505);
        let x_2507 : f32 = u_xlat87;
        let x_2508 : f32 = u_xlat88;
        u_xlat87 = (x_2507 + x_2508);
        let x_2510 : f32 = u_xlat87;
        u_xlati86 = i32(x_2510);
      }
      let x_2512 : i32 = u_xlati86;
      u_xlati86 = (x_2512 << bitcast<u32>(2i));
      let x_2514 : vec3<f32> = vs_TEXCOORD1;
      let x_2517 : i32 = u_xlati86;
      let x_2520 : i32 = u_xlati86;
      let x_2524 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2517 + 1i) / 4i)][((x_2520 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2514.y, x_2514.y, x_2514.y, x_2514.y) * x_2524);
      let x_2526 : i32 = u_xlati86;
      let x_2528 : i32 = u_xlati86;
      let x_2531 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[(x_2526 / 4i)][(x_2528 % 4i)];
      let x_2532 : vec3<f32> = vs_TEXCOORD1;
      let x_2535 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2531 * vec4<f32>(x_2532.x, x_2532.x, x_2532.x, x_2532.x)) + x_2535);
      let x_2537 : i32 = u_xlati86;
      let x_2540 : i32 = u_xlati86;
      let x_2544 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2537 + 2i) / 4i)][((x_2540 + 2i) % 4i)];
      let x_2545 : vec3<f32> = vs_TEXCOORD1;
      let x_2548 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2544 * vec4<f32>(x_2545.z, x_2545.z, x_2545.z, x_2545.z)) + x_2548);
      let x_2550 : vec4<f32> = u_xlat11;
      let x_2551 : i32 = u_xlati86;
      let x_2554 : i32 = u_xlati86;
      let x_2558 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_2551 + 3i) / 4i)][((x_2554 + 3i) % 4i)];
      u_xlat11 = (x_2550 + x_2558);
      let x_2560 : vec4<f32> = u_xlat11;
      let x_2562 : vec4<f32> = u_xlat11;
      let x_2564 : vec3<f32> = (vec3<f32>(x_2560.x, x_2560.y, x_2560.z) / vec3<f32>(x_2562.w, x_2562.w, x_2562.w));
      let x_2565 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
      let x_2568 : i32 = u_xlati6;
      let x_2570 : f32 = x_503.x_AdditionalShadowParams[x_2568].y;
      u_xlatb86 = (0.0f < x_2570);
      let x_2572 : bool = u_xlatb86;
      if (x_2572) {
        let x_2575 : i32 = u_xlati6;
        let x_2577 : f32 = x_503.x_AdditionalShadowParams[x_2575].y;
        u_xlatb86 = (1.0f == x_2577);
        let x_2579 : bool = u_xlatb86;
        if (x_2579) {
          let x_2582 : vec4<f32> = u_xlat11;
          let x_2585 : vec4<f32> = x_503.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y) + x_2585);
          let x_2588 : vec4<f32> = u_xlat12;
          let x_2589 : vec2<f32> = vec2<f32>(x_2588.x, x_2588.y);
          let x_2591 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2589.x, x_2589.y, x_2591);
          let x_2599 : vec3<f32> = txVec30;
          let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
          u_xlat13.x = x_2601;
          let x_2604 : vec4<f32> = u_xlat12;
          let x_2605 : vec2<f32> = vec2<f32>(x_2604.z, x_2604.w);
          let x_2607 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2605.x, x_2605.y, x_2607);
          let x_2614 : vec3<f32> = txVec31;
          let x_2616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2614.xy, x_2614.z);
          u_xlat13.y = x_2616;
          let x_2618 : vec4<f32> = u_xlat11;
          let x_2622 : vec4<f32> = x_503.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2618.x, x_2618.y, x_2618.x, x_2618.y) + x_2622);
          let x_2625 : vec4<f32> = u_xlat12;
          let x_2626 : vec2<f32> = vec2<f32>(x_2625.x, x_2625.y);
          let x_2628 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
          let x_2635 : vec3<f32> = txVec32;
          let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
          u_xlat13.z = x_2637;
          let x_2640 : vec4<f32> = u_xlat12;
          let x_2641 : vec2<f32> = vec2<f32>(x_2640.z, x_2640.w);
          let x_2643 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
          let x_2650 : vec3<f32> = txVec33;
          let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
          u_xlat13.w = x_2652;
          let x_2654 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2654, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2657 : i32 = u_xlati6;
          let x_2659 : f32 = x_503.x_AdditionalShadowParams[x_2657].y;
          u_xlatb87 = (2.0f == x_2659);
          let x_2661 : bool = u_xlatb87;
          if (x_2661) {
            let x_2664 : vec4<f32> = u_xlat11;
            let x_2668 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2671 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.y) * vec2<f32>(x_2668.z, x_2668.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2672 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec4<f32> = u_xlat12;
            let x_2676 : vec2<f32> = floor(vec2<f32>(x_2674.x, x_2674.y));
            let x_2677 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2680 : vec4<f32> = u_xlat11;
            let x_2683 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2686 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(x_2683.z, x_2683.w)) + -(vec2<f32>(x_2686.x, x_2686.y)));
            let x_2690 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2690.x, x_2690.x, x_2690.y, x_2690.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2693 : vec4<f32> = u_xlat13;
            let x_2695 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2693.x, x_2693.x, x_2693.z, x_2693.z) * vec4<f32>(x_2695.x, x_2695.x, x_2695.z, x_2695.z));
            let x_2698 : vec4<f32> = u_xlat14;
            let x_2700 : vec2<f32> = (vec2<f32>(x_2698.y, x_2698.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2701 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2700.x, x_2701.y, x_2700.y, x_2701.w);
            let x_2703 : vec4<f32> = u_xlat14;
            let x_2706 : vec2<f32> = u_xlat64;
            let x_2708 : vec2<f32> = ((vec2<f32>(x_2703.x, x_2703.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2706));
            let x_2709 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2708.x, x_2708.y, x_2709.z, x_2709.w);
            let x_2711 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2711) + vec2<f32>(1.0f, 1.0f));
            let x_2714 : vec2<f32> = u_xlat64;
            let x_2715 : vec2<f32> = min(x_2714, vec2<f32>(0.0f, 0.0f));
            let x_2716 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2715.x, x_2715.y, x_2716.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat15;
            let x_2721 : vec4<f32> = u_xlat15;
            let x_2724 : vec2<f32> = u_xlat66;
            let x_2725 : vec2<f32> = ((-(vec2<f32>(x_2718.x, x_2718.y)) * vec2<f32>(x_2721.x, x_2721.y)) + x_2724);
            let x_2726 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2728, vec2<f32>(0.0f, 0.0f));
            let x_2730 : vec2<f32> = u_xlat64;
            let x_2732 : vec2<f32> = u_xlat64;
            let x_2734 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2730) * x_2732) + vec2<f32>(x_2734.y, x_2734.w));
            let x_2737 : vec4<f32> = u_xlat15;
            let x_2739 : vec2<f32> = (vec2<f32>(x_2737.x, x_2737.y) + vec2<f32>(1.0f, 1.0f));
            let x_2740 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
            let x_2742 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2742 + vec2<f32>(1.0f, 1.0f));
            let x_2744 : vec4<f32> = u_xlat14;
            let x_2746 : vec2<f32> = (vec2<f32>(x_2744.x, x_2744.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2747 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
            let x_2749 : vec2<f32> = u_xlat66;
            let x_2750 : vec2<f32> = (x_2749 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat15;
            let x_2755 : vec2<f32> = (vec2<f32>(x_2753.x, x_2753.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2756 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2755.x, x_2755.y, x_2756.z, x_2756.w);
            let x_2758 : vec2<f32> = u_xlat64;
            let x_2759 : vec2<f32> = (x_2758 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2760 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
            let x_2762 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2762.y, x_2762.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2766 : f32 = u_xlat15.x;
            u_xlat16.z = x_2766;
            let x_2769 : f32 = u_xlat64.x;
            u_xlat16.w = x_2769;
            let x_2772 : f32 = u_xlat17.x;
            u_xlat14.z = x_2772;
            let x_2775 : f32 = u_xlat13.x;
            u_xlat14.w = x_2775;
            let x_2777 : vec4<f32> = u_xlat14;
            let x_2779 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2777.z, x_2777.w, x_2777.x, x_2777.z) + vec4<f32>(x_2779.z, x_2779.w, x_2779.x, x_2779.z));
            let x_2783 : f32 = u_xlat16.y;
            u_xlat15.z = x_2783;
            let x_2786 : f32 = u_xlat64.y;
            u_xlat15.w = x_2786;
            let x_2789 : f32 = u_xlat14.y;
            u_xlat17.z = x_2789;
            let x_2792 : f32 = u_xlat13.z;
            u_xlat17.w = x_2792;
            let x_2794 : vec4<f32> = u_xlat15;
            let x_2796 : vec4<f32> = u_xlat17;
            let x_2798 : vec3<f32> = (vec3<f32>(x_2794.z, x_2794.y, x_2794.w) + vec3<f32>(x_2796.z, x_2796.y, x_2796.w));
            let x_2799 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);
            let x_2801 : vec4<f32> = u_xlat14;
            let x_2803 : vec4<f32> = u_xlat18;
            let x_2805 : vec3<f32> = (vec3<f32>(x_2801.x, x_2801.z, x_2801.w) / vec3<f32>(x_2803.z, x_2803.w, x_2803.y));
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat14;
            let x_2810 : vec3<f32> = (vec3<f32>(x_2808.x, x_2808.y, x_2808.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2811 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
            let x_2813 : vec4<f32> = u_xlat17;
            let x_2815 : vec4<f32> = u_xlat13;
            let x_2817 : vec3<f32> = (vec3<f32>(x_2813.z, x_2813.y, x_2813.w) / vec3<f32>(x_2815.x, x_2815.y, x_2815.z));
            let x_2818 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat15;
            let x_2822 : vec3<f32> = (vec3<f32>(x_2820.x, x_2820.y, x_2820.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2823 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2823.w);
            let x_2825 : vec4<f32> = u_xlat14;
            let x_2828 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2830 : vec3<f32> = (vec3<f32>(x_2825.y, x_2825.x, x_2825.z) * vec3<f32>(x_2828.x, x_2828.x, x_2828.x));
            let x_2831 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat15;
            let x_2836 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2838 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.y, x_2833.z) * vec3<f32>(x_2836.y, x_2836.y, x_2836.y));
            let x_2839 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
            let x_2842 : f32 = u_xlat15.x;
            u_xlat14.w = x_2842;
            let x_2844 : vec4<f32> = u_xlat12;
            let x_2847 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y) * vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y)) + vec4<f32>(x_2850.y, x_2850.w, x_2850.x, x_2850.w));
            let x_2853 : vec4<f32> = u_xlat12;
            let x_2856 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2856.x, x_2856.y)) + vec2<f32>(x_2859.z, x_2859.w));
            let x_2863 : f32 = u_xlat14.y;
            u_xlat15.w = x_2863;
            let x_2865 : vec4<f32> = u_xlat15;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.y, x_2865.z);
            let x_2867 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2867.x, x_2866.x, x_2867.z, x_2866.y);
            let x_2869 : vec4<f32> = u_xlat12;
            let x_2872 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2869.x, x_2869.y, x_2869.x, x_2869.y) * vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y)) + vec4<f32>(x_2875.x, x_2875.y, x_2875.z, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat12;
            let x_2881 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2884 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2878.x, x_2878.y, x_2878.x, x_2878.y) * vec4<f32>(x_2881.x, x_2881.y, x_2881.x, x_2881.y)) + vec4<f32>(x_2884.w, x_2884.y, x_2884.w, x_2884.z));
            let x_2887 : vec4<f32> = u_xlat12;
            let x_2890 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_2893 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y) * vec4<f32>(x_2890.x, x_2890.y, x_2890.x, x_2890.y)) + vec4<f32>(x_2893.x, x_2893.w, x_2893.z, x_2893.w));
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2898 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2896.x, x_2896.x, x_2896.x, x_2896.y) * vec4<f32>(x_2898.z, x_2898.w, x_2898.y, x_2898.z));
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2904 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2902.y, x_2902.y, x_2902.z, x_2902.z) * x_2904);
            let x_2907 : f32 = u_xlat13.z;
            let x_2909 : f32 = u_xlat18.y;
            u_xlat87 = (x_2907 * x_2909);
            let x_2912 : vec4<f32> = u_xlat16;
            let x_2913 : vec2<f32> = vec2<f32>(x_2912.x, x_2912.y);
            let x_2915 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
            let x_2922 : vec3<f32> = txVec34;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat88 = x_2924;
            let x_2926 : vec4<f32> = u_xlat16;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.z, x_2926.w);
            let x_2929 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2937 : vec3<f32> = txVec35;
            let x_2939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
            u_xlat89 = x_2939;
            let x_2940 : f32 = u_xlat89;
            let x_2942 : f32 = u_xlat19.y;
            u_xlat89 = (x_2940 * x_2942);
            let x_2945 : f32 = u_xlat19.x;
            let x_2946 : f32 = u_xlat88;
            let x_2948 : f32 = u_xlat89;
            u_xlat88 = ((x_2945 * x_2946) + x_2948);
            let x_2951 : vec2<f32> = u_xlat64;
            let x_2953 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec36;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat89 = x_2962;
            let x_2964 : f32 = u_xlat19.z;
            let x_2965 : f32 = u_xlat89;
            let x_2967 : f32 = u_xlat88;
            u_xlat88 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat15;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.x, x_2970.y);
            let x_2973 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec37;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat89 = x_2982;
            let x_2984 : f32 = u_xlat19.w;
            let x_2985 : f32 = u_xlat89;
            let x_2987 : f32 = u_xlat88;
            u_xlat88 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat17;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec38;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat89 = x_3002;
            let x_3004 : f32 = u_xlat20.x;
            let x_3005 : f32 = u_xlat89;
            let x_3007 : f32 = u_xlat88;
            u_xlat88 = ((x_3004 * x_3005) + x_3007);
            let x_3010 : vec4<f32> = u_xlat17;
            let x_3011 : vec2<f32> = vec2<f32>(x_3010.z, x_3010.w);
            let x_3013 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec39;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat89 = x_3022;
            let x_3024 : f32 = u_xlat20.y;
            let x_3025 : f32 = u_xlat89;
            let x_3027 : f32 = u_xlat88;
            u_xlat88 = ((x_3024 * x_3025) + x_3027);
            let x_3030 : vec4<f32> = u_xlat15;
            let x_3031 : vec2<f32> = vec2<f32>(x_3030.z, x_3030.w);
            let x_3033 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
            let x_3040 : vec3<f32> = txVec40;
            let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
            u_xlat89 = x_3042;
            let x_3044 : f32 = u_xlat20.z;
            let x_3045 : f32 = u_xlat89;
            let x_3047 : f32 = u_xlat88;
            u_xlat88 = ((x_3044 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
            let x_3053 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec41;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat89 = x_3062;
            let x_3064 : f32 = u_xlat20.w;
            let x_3065 : f32 = u_xlat89;
            let x_3067 : f32 = u_xlat88;
            u_xlat88 = ((x_3064 * x_3065) + x_3067);
            let x_3070 : vec4<f32> = u_xlat14;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.z, x_3070.w);
            let x_3073 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec42;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat89 = x_3082;
            let x_3083 : f32 = u_xlat87;
            let x_3084 : f32 = u_xlat89;
            let x_3086 : f32 = u_xlat88;
            u_xlat86 = ((x_3083 * x_3084) + x_3086);
          } else {
            let x_3089 : vec4<f32> = u_xlat11;
            let x_3092 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3095 : vec2<f32> = ((vec2<f32>(x_3089.x, x_3089.y) * vec2<f32>(x_3092.z, x_3092.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3096 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3095.x, x_3095.y, x_3096.z, x_3096.w);
            let x_3098 : vec4<f32> = u_xlat12;
            let x_3100 : vec2<f32> = floor(vec2<f32>(x_3098.x, x_3098.y));
            let x_3101 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3103 : vec4<f32> = u_xlat11;
            let x_3106 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3106.z, x_3106.w)) + -(vec2<f32>(x_3109.x, x_3109.y)));
            let x_3113 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3113.x, x_3113.x, x_3113.y, x_3113.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3116 : vec4<f32> = u_xlat13;
            let x_3118 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3116.x, x_3116.x, x_3116.z, x_3116.z) * vec4<f32>(x_3118.x, x_3118.x, x_3118.z, x_3118.z));
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3123 : vec2<f32> = (vec2<f32>(x_3121.y, x_3121.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3124 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3124.x, x_3123.x, x_3124.z, x_3123.y);
            let x_3126 : vec4<f32> = u_xlat14;
            let x_3129 : vec2<f32> = u_xlat64;
            let x_3131 : vec2<f32> = ((vec2<f32>(x_3126.x, x_3126.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3129));
            let x_3132 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3131.x, x_3132.y, x_3131.y, x_3132.w);
            let x_3134 : vec2<f32> = u_xlat64;
            let x_3136 : vec2<f32> = (-(x_3134) + vec2<f32>(1.0f, 1.0f));
            let x_3137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3136.x, x_3136.y, x_3137.z, x_3137.w);
            let x_3139 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3139, vec2<f32>(0.0f, 0.0f));
            let x_3141 : vec2<f32> = u_xlat66;
            let x_3143 : vec2<f32> = u_xlat66;
            let x_3145 : vec4<f32> = u_xlat14;
            let x_3147 : vec2<f32> = ((-(x_3141) * x_3143) + vec2<f32>(x_3145.x, x_3145.y));
            let x_3148 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3147.x, x_3147.y, x_3148.z, x_3148.w);
            let x_3150 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3150, vec2<f32>(0.0f, 0.0f));
            let x_3153 : vec2<f32> = u_xlat66;
            let x_3155 : vec2<f32> = u_xlat66;
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3159 : vec2<f32> = ((-(x_3153) * x_3155) + vec2<f32>(x_3157.y, x_3157.w));
            let x_3160 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3159.x, x_3160.y, x_3159.y);
            let x_3162 : vec4<f32> = u_xlat14;
            let x_3164 : vec2<f32> = (vec2<f32>(x_3162.x, x_3162.y) + vec2<f32>(2.0f, 2.0f));
            let x_3165 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3167 : vec3<f32> = u_xlat39;
            let x_3169 : vec2<f32> = (vec2<f32>(x_3167.x, x_3167.z) + vec2<f32>(2.0f, 2.0f));
            let x_3170 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3170.x, x_3169.x, x_3170.z, x_3169.y);
            let x_3173 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3173 * 0.08163200318813323975f);
            let x_3176 : vec4<f32> = u_xlat13;
            let x_3178 : vec3<f32> = (vec3<f32>(x_3176.z, x_3176.x, x_3176.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3179 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
            let x_3181 : vec4<f32> = u_xlat14;
            let x_3183 : vec2<f32> = (vec2<f32>(x_3181.x, x_3181.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3184 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3187 : f32 = u_xlat17.y;
            u_xlat16.x = x_3187;
            let x_3189 : vec2<f32> = u_xlat64;
            let x_3192 : vec2<f32> = ((vec2<f32>(x_3189.x, x_3189.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3193 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3193.x, x_3192.x, x_3193.z, x_3192.y);
            let x_3195 : vec2<f32> = u_xlat64;
            let x_3198 : vec2<f32> = ((vec2<f32>(x_3195.x, x_3195.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3199 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3198.x, x_3199.y, x_3198.y, x_3199.w);
            let x_3202 : f32 = u_xlat13.x;
            u_xlat14.y = x_3202;
            let x_3205 : f32 = u_xlat15.y;
            u_xlat14.w = x_3205;
            let x_3207 : vec4<f32> = u_xlat14;
            let x_3208 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3207 + x_3208);
            let x_3210 : vec2<f32> = u_xlat64;
            let x_3213 : vec2<f32> = ((vec2<f32>(x_3210.y, x_3210.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3214 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3214.x, x_3213.x, x_3214.z, x_3213.y);
            let x_3216 : vec2<f32> = u_xlat64;
            let x_3219 : vec2<f32> = ((vec2<f32>(x_3216.y, x_3216.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3220 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3219.x, x_3220.y, x_3219.y, x_3220.w);
            let x_3223 : f32 = u_xlat13.y;
            u_xlat15.y = x_3223;
            let x_3225 : vec4<f32> = u_xlat15;
            let x_3226 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3225 + x_3226);
            let x_3228 : vec4<f32> = u_xlat14;
            let x_3229 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3228 / x_3229);
            let x_3231 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3231 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3233 : vec4<f32> = u_xlat15;
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3233 / x_3234);
            let x_3236 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3236 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3238 : vec4<f32> = u_xlat14;
            let x_3241 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3238.w, x_3238.x, x_3238.y, x_3238.z) * vec4<f32>(x_3241.x, x_3241.x, x_3241.x, x_3241.x));
            let x_3244 : vec4<f32> = u_xlat15;
            let x_3247 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3244.x, x_3244.w, x_3244.y, x_3244.z) * vec4<f32>(x_3247.y, x_3247.y, x_3247.y, x_3247.y));
            let x_3250 : vec4<f32> = u_xlat14;
            let x_3251 : vec3<f32> = vec3<f32>(x_3250.y, x_3250.z, x_3250.w);
            let x_3252 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3251.x, x_3252.y, x_3251.y, x_3251.z);
            let x_3255 : f32 = u_xlat15.x;
            u_xlat17.y = x_3255;
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3257.x, x_3257.y, x_3257.x, x_3257.y) * vec4<f32>(x_3260.x, x_3260.y, x_3260.x, x_3260.y)) + vec4<f32>(x_3263.x, x_3263.y, x_3263.z, x_3263.y));
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(x_3269.x, x_3269.y)) + vec2<f32>(x_3272.w, x_3272.y));
            let x_3276 : f32 = u_xlat17.y;
            u_xlat14.y = x_3276;
            let x_3279 : f32 = u_xlat15.z;
            u_xlat17.y = x_3279;
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3284 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3287 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3281.x, x_3281.y, x_3281.x, x_3281.y) * vec4<f32>(x_3284.x, x_3284.y, x_3284.x, x_3284.y)) + vec4<f32>(x_3287.x, x_3287.y, x_3287.z, x_3287.y));
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3293 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat17;
            let x_3298 : vec2<f32> = ((vec2<f32>(x_3290.x, x_3290.y) * vec2<f32>(x_3293.x, x_3293.y)) + vec2<f32>(x_3296.w, x_3296.y));
            let x_3299 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
            let x_3302 : f32 = u_xlat17.y;
            u_xlat14.z = x_3302;
            let x_3305 : vec4<f32> = u_xlat12;
            let x_3308 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3311 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y) * vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.y)) + vec4<f32>(x_3311.x, x_3311.y, x_3311.x, x_3311.z));
            let x_3315 : f32 = u_xlat15.w;
            u_xlat17.y = x_3315;
            let x_3318 : vec4<f32> = u_xlat12;
            let x_3321 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3324 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3318.x, x_3318.y, x_3318.x, x_3318.y) * vec4<f32>(x_3321.x, x_3321.y, x_3321.x, x_3321.y)) + vec4<f32>(x_3324.x, x_3324.y, x_3324.z, x_3324.y));
            let x_3328 : vec4<f32> = u_xlat12;
            let x_3331 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3328.x, x_3328.y) * vec2<f32>(x_3331.x, x_3331.y)) + vec2<f32>(x_3334.w, x_3334.y));
            let x_3338 : f32 = u_xlat17.y;
            u_xlat14.w = x_3338;
            let x_3341 : vec4<f32> = u_xlat12;
            let x_3344 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(x_3344.x, x_3344.y)) + vec2<f32>(x_3347.x, x_3347.w));
            let x_3350 : vec4<f32> = u_xlat17;
            let x_3351 : vec3<f32> = vec3<f32>(x_3350.x, x_3350.z, x_3350.w);
            let x_3352 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3351.x, x_3352.y, x_3351.y, x_3351.z);
            let x_3354 : vec4<f32> = u_xlat12;
            let x_3357 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3354.x, x_3354.y, x_3354.x, x_3354.y) * vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y)) + vec4<f32>(x_3360.x, x_3360.y, x_3360.z, x_3360.y));
            let x_3364 : vec4<f32> = u_xlat12;
            let x_3367 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3370 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3364.x, x_3364.y) * vec2<f32>(x_3367.x, x_3367.y)) + vec2<f32>(x_3370.w, x_3370.y));
            let x_3374 : f32 = u_xlat14.x;
            u_xlat15.x = x_3374;
            let x_3376 : vec4<f32> = u_xlat12;
            let x_3379 : vec4<f32> = x_503.x_AdditionalShadowmapSize;
            let x_3382 : vec4<f32> = u_xlat15;
            let x_3384 : vec2<f32> = ((vec2<f32>(x_3376.x, x_3376.y) * vec2<f32>(x_3379.x, x_3379.y)) + vec2<f32>(x_3382.x, x_3382.y));
            let x_3385 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3384.x, x_3384.y, x_3385.z, x_3385.w);
            let x_3388 : vec4<f32> = u_xlat13;
            let x_3390 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3388.x, x_3388.x, x_3388.x, x_3388.x) * x_3390);
            let x_3393 : vec4<f32> = u_xlat13;
            let x_3395 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3393.y, x_3393.y, x_3393.y, x_3393.y) * x_3395);
            let x_3398 : vec4<f32> = u_xlat13;
            let x_3400 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3398.z, x_3398.z, x_3398.z, x_3398.z) * x_3400);
            let x_3402 : vec4<f32> = u_xlat13;
            let x_3404 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3402.w, x_3402.w, x_3402.w, x_3402.w) * x_3404);
            let x_3407 : vec4<f32> = u_xlat18;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec43;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat87 = x_3419;
            let x_3421 : vec4<f32> = u_xlat18;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.z, x_3421.w);
            let x_3424 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec44;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat88 = x_3433;
            let x_3434 : f32 = u_xlat88;
            let x_3436 : f32 = u_xlat23.y;
            u_xlat88 = (x_3434 * x_3436);
            let x_3439 : f32 = u_xlat23.x;
            let x_3440 : f32 = u_xlat87;
            let x_3442 : f32 = u_xlat88;
            u_xlat87 = ((x_3439 * x_3440) + x_3442);
            let x_3445 : vec2<f32> = u_xlat64;
            let x_3447 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec45;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat88 = x_3456;
            let x_3458 : f32 = u_xlat23.z;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat87;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec4<f32> = u_xlat21;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.x, x_3464.y);
            let x_3467 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec46;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat88 = x_3476;
            let x_3478 : f32 = u_xlat23.w;
            let x_3479 : f32 = u_xlat88;
            let x_3481 : f32 = u_xlat87;
            u_xlat87 = ((x_3478 * x_3479) + x_3481);
            let x_3484 : vec4<f32> = u_xlat19;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.x, x_3484.y);
            let x_3487 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec47;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat88 = x_3496;
            let x_3498 : f32 = u_xlat24.x;
            let x_3499 : f32 = u_xlat88;
            let x_3501 : f32 = u_xlat87;
            u_xlat87 = ((x_3498 * x_3499) + x_3501);
            let x_3504 : vec4<f32> = u_xlat19;
            let x_3505 : vec2<f32> = vec2<f32>(x_3504.z, x_3504.w);
            let x_3507 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec48;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat88 = x_3516;
            let x_3518 : f32 = u_xlat24.y;
            let x_3519 : f32 = u_xlat88;
            let x_3521 : f32 = u_xlat87;
            u_xlat87 = ((x_3518 * x_3519) + x_3521);
            let x_3524 : vec4<f32> = u_xlat20;
            let x_3525 : vec2<f32> = vec2<f32>(x_3524.x, x_3524.y);
            let x_3527 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec49;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat88 = x_3536;
            let x_3538 : f32 = u_xlat24.z;
            let x_3539 : f32 = u_xlat88;
            let x_3541 : f32 = u_xlat87;
            u_xlat87 = ((x_3538 * x_3539) + x_3541);
            let x_3544 : vec4<f32> = u_xlat21;
            let x_3545 : vec2<f32> = vec2<f32>(x_3544.z, x_3544.w);
            let x_3547 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec50;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat88 = x_3556;
            let x_3558 : f32 = u_xlat24.w;
            let x_3559 : f32 = u_xlat88;
            let x_3561 : f32 = u_xlat87;
            u_xlat87 = ((x_3558 * x_3559) + x_3561);
            let x_3564 : vec4<f32> = u_xlat22;
            let x_3565 : vec2<f32> = vec2<f32>(x_3564.x, x_3564.y);
            let x_3567 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec51;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat88 = x_3576;
            let x_3578 : f32 = u_xlat25.x;
            let x_3579 : f32 = u_xlat88;
            let x_3581 : f32 = u_xlat87;
            u_xlat87 = ((x_3578 * x_3579) + x_3581);
            let x_3584 : vec4<f32> = u_xlat22;
            let x_3585 : vec2<f32> = vec2<f32>(x_3584.z, x_3584.w);
            let x_3587 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3585.x, x_3585.y, x_3587);
            let x_3594 : vec3<f32> = txVec52;
            let x_3596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3594.xy, x_3594.z);
            u_xlat88 = x_3596;
            let x_3598 : f32 = u_xlat25.y;
            let x_3599 : f32 = u_xlat88;
            let x_3601 : f32 = u_xlat87;
            u_xlat87 = ((x_3598 * x_3599) + x_3601);
            let x_3604 : vec2<f32> = u_xlat40;
            let x_3606 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3604.x, x_3604.y, x_3606);
            let x_3613 : vec3<f32> = txVec53;
            let x_3615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3613.xy, x_3613.z);
            u_xlat88 = x_3615;
            let x_3617 : f32 = u_xlat25.z;
            let x_3618 : f32 = u_xlat88;
            let x_3620 : f32 = u_xlat87;
            u_xlat87 = ((x_3617 * x_3618) + x_3620);
            let x_3623 : vec2<f32> = u_xlat72;
            let x_3625 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3623.x, x_3623.y, x_3625);
            let x_3632 : vec3<f32> = txVec54;
            let x_3634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3632.xy, x_3632.z);
            u_xlat88 = x_3634;
            let x_3636 : f32 = u_xlat25.w;
            let x_3637 : f32 = u_xlat88;
            let x_3639 : f32 = u_xlat87;
            u_xlat87 = ((x_3636 * x_3637) + x_3639);
            let x_3642 : vec4<f32> = u_xlat17;
            let x_3643 : vec2<f32> = vec2<f32>(x_3642.x, x_3642.y);
            let x_3645 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3643.x, x_3643.y, x_3645);
            let x_3652 : vec3<f32> = txVec55;
            let x_3654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3652.xy, x_3652.z);
            u_xlat88 = x_3654;
            let x_3656 : f32 = u_xlat13.x;
            let x_3657 : f32 = u_xlat88;
            let x_3659 : f32 = u_xlat87;
            u_xlat87 = ((x_3656 * x_3657) + x_3659);
            let x_3662 : vec4<f32> = u_xlat17;
            let x_3663 : vec2<f32> = vec2<f32>(x_3662.z, x_3662.w);
            let x_3665 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3663.x, x_3663.y, x_3665);
            let x_3672 : vec3<f32> = txVec56;
            let x_3674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3672.xy, x_3672.z);
            u_xlat88 = x_3674;
            let x_3676 : f32 = u_xlat13.y;
            let x_3677 : f32 = u_xlat88;
            let x_3679 : f32 = u_xlat87;
            u_xlat87 = ((x_3676 * x_3677) + x_3679);
            let x_3682 : vec2<f32> = u_xlat67;
            let x_3684 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3682.x, x_3682.y, x_3684);
            let x_3691 : vec3<f32> = txVec57;
            let x_3693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3691.xy, x_3691.z);
            u_xlat88 = x_3693;
            let x_3695 : f32 = u_xlat13.z;
            let x_3696 : f32 = u_xlat88;
            let x_3698 : f32 = u_xlat87;
            u_xlat87 = ((x_3695 * x_3696) + x_3698);
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3702 : vec2<f32> = vec2<f32>(x_3701.x, x_3701.y);
            let x_3704 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3702.x, x_3702.y, x_3704);
            let x_3711 : vec3<f32> = txVec58;
            let x_3713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3711.xy, x_3711.z);
            u_xlat88 = x_3713;
            let x_3715 : f32 = u_xlat13.w;
            let x_3716 : f32 = u_xlat88;
            let x_3718 : f32 = u_xlat87;
            u_xlat86 = ((x_3715 * x_3716) + x_3718);
          }
        }
      } else {
        let x_3722 : vec4<f32> = u_xlat11;
        let x_3723 : vec2<f32> = vec2<f32>(x_3722.x, x_3722.y);
        let x_3725 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3723.x, x_3723.y, x_3725);
        let x_3732 : vec3<f32> = txVec59;
        let x_3734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3732.xy, x_3732.z);
        u_xlat86 = x_3734;
      }
      let x_3735 : i32 = u_xlati6;
      let x_3737 : f32 = x_503.x_AdditionalShadowParams[x_3735].x;
      u_xlat87 = (1.0f + -(x_3737));
      let x_3740 : f32 = u_xlat86;
      let x_3741 : i32 = u_xlati6;
      let x_3743 : f32 = x_503.x_AdditionalShadowParams[x_3741].x;
      let x_3745 : f32 = u_xlat87;
      u_xlat86 = ((x_3740 * x_3743) + x_3745);
      let x_3748 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3748);
      let x_3752 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3752 >= 1.0f);
      let x_3754 : bool = u_xlatb87;
      let x_3755 : bool = u_xlatb88;
      u_xlatb87 = (x_3754 | x_3755);
      let x_3757 : bool = u_xlatb87;
      let x_3758 : f32 = u_xlat86;
      u_xlat86 = select(x_3758, 1.0f, x_3757);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3761 : f32 = u_xlat86;
    u_xlat87 = (-(x_3761) + 1.0f);
    let x_3764 : f32 = u_xlat79;
    let x_3765 : f32 = u_xlat87;
    let x_3767 : f32 = u_xlat86;
    u_xlat86 = ((x_3764 * x_3765) + x_3767);
    let x_3770 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3770 & 31i)));
    let x_3774 : i32 = u_xlati87;
    let x_3777 : f32 = x_1851.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3774) & bitcast<u32>(x_3777)));
    let x_3781 : i32 = u_xlati87;
    if ((x_3781 != 0i)) {
      let x_3785 : i32 = u_xlati6;
      let x_3787 : f32 = x_1851.x_AdditionalLightsLightTypes[x_3785].el;
      u_xlati87 = i32(x_3787);
      let x_3790 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3790 != 0i));
      let x_3794 : i32 = u_xlati6;
      u_xlati11 = (x_3794 << bitcast<u32>(2i));
      let x_3796 : i32 = u_xlati88;
      if ((x_3796 != 0i)) {
        let x_3801 : vec3<f32> = vs_TEXCOORD1;
        let x_3803 : i32 = u_xlati11;
        let x_3806 : i32 = u_xlati11;
        let x_3810 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3803 + 1i) / 4i)][((x_3806 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3801.y, x_3801.y, x_3801.y) * vec3<f32>(x_3810.x, x_3810.y, x_3810.w));
        let x_3813 : i32 = u_xlati11;
        let x_3815 : i32 = u_xlati11;
        let x_3818 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[(x_3813 / 4i)][(x_3815 % 4i)];
        let x_3820 : vec3<f32> = vs_TEXCOORD1;
        let x_3823 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3818.x, x_3818.y, x_3818.w) * vec3<f32>(x_3820.x, x_3820.x, x_3820.x)) + x_3823);
        let x_3825 : i32 = u_xlati11;
        let x_3828 : i32 = u_xlati11;
        let x_3832 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3825 + 2i) / 4i)][((x_3828 + 2i) % 4i)];
        let x_3834 : vec3<f32> = vs_TEXCOORD1;
        let x_3837 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3832.x, x_3832.y, x_3832.w) * vec3<f32>(x_3834.z, x_3834.z, x_3834.z)) + x_3837);
        let x_3839 : vec3<f32> = u_xlat37;
        let x_3840 : i32 = u_xlati11;
        let x_3843 : i32 = u_xlati11;
        let x_3847 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3840 + 3i) / 4i)][((x_3843 + 3i) % 4i)];
        u_xlat37 = (x_3839 + vec3<f32>(x_3847.x, x_3847.y, x_3847.w));
        let x_3850 : vec3<f32> = u_xlat37;
        let x_3852 : vec3<f32> = u_xlat37;
        let x_3854 : vec2<f32> = (vec2<f32>(x_3850.x, x_3850.y) / vec2<f32>(x_3852.z, x_3852.z));
        let x_3855 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3854.x, x_3854.y, x_3855.z);
        let x_3857 : vec3<f32> = u_xlat37;
        let x_3860 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3861 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3860.x, x_3860.y, x_3861.z);
        let x_3863 : vec3<f32> = u_xlat37;
        let x_3867 : vec2<f32> = clamp(vec2<f32>(x_3863.x, x_3863.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3868 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3867.x, x_3867.y, x_3868.z);
        let x_3870 : i32 = u_xlati6;
        let x_3872 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_3870];
        let x_3874 : vec3<f32> = u_xlat37;
        let x_3877 : i32 = u_xlati6;
        let x_3879 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_3877];
        let x_3881 : vec2<f32> = ((vec2<f32>(x_3872.x, x_3872.y) * vec2<f32>(x_3874.x, x_3874.y)) + vec2<f32>(x_3879.z, x_3879.w));
        let x_3882 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3881.x, x_3881.y, x_3882.z);
      } else {
        let x_3885 : i32 = u_xlati87;
        u_xlatb87 = (x_3885 == 1i);
        let x_3887 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3887);
        let x_3889 : i32 = u_xlati87;
        if ((x_3889 != 0i)) {
          let x_3893 : vec3<f32> = vs_TEXCOORD1;
          let x_3895 : i32 = u_xlati11;
          let x_3898 : i32 = u_xlati11;
          let x_3902 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3895 + 1i) / 4i)][((x_3898 + 1i) % 4i)];
          let x_3904 : vec2<f32> = (vec2<f32>(x_3893.y, x_3893.y) * vec2<f32>(x_3902.x, x_3902.y));
          let x_3905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3905.z, x_3905.w);
          let x_3907 : i32 = u_xlati11;
          let x_3909 : i32 = u_xlati11;
          let x_3912 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[(x_3907 / 4i)][(x_3909 % 4i)];
          let x_3914 : vec3<f32> = vs_TEXCOORD1;
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3919 : vec2<f32> = ((vec2<f32>(x_3912.x, x_3912.y) * vec2<f32>(x_3914.x, x_3914.x)) + vec2<f32>(x_3917.x, x_3917.y));
          let x_3920 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3919.x, x_3919.y, x_3920.z, x_3920.w);
          let x_3922 : i32 = u_xlati11;
          let x_3925 : i32 = u_xlati11;
          let x_3929 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3922 + 2i) / 4i)][((x_3925 + 2i) % 4i)];
          let x_3931 : vec3<f32> = vs_TEXCOORD1;
          let x_3934 : vec4<f32> = u_xlat12;
          let x_3936 : vec2<f32> = ((vec2<f32>(x_3929.x, x_3929.y) * vec2<f32>(x_3931.z, x_3931.z)) + vec2<f32>(x_3934.x, x_3934.y));
          let x_3937 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3936.x, x_3936.y, x_3937.z, x_3937.w);
          let x_3939 : vec4<f32> = u_xlat12;
          let x_3941 : i32 = u_xlati11;
          let x_3944 : i32 = u_xlati11;
          let x_3948 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3941 + 3i) / 4i)][((x_3944 + 3i) % 4i)];
          let x_3950 : vec2<f32> = (vec2<f32>(x_3939.x, x_3939.y) + vec2<f32>(x_3948.x, x_3948.y));
          let x_3951 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3950.x, x_3950.y, x_3951.z, x_3951.w);
          let x_3953 : vec4<f32> = u_xlat12;
          let x_3956 : vec2<f32> = ((vec2<f32>(x_3953.x, x_3953.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3957 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3956.x, x_3956.y, x_3957.z, x_3957.w);
          let x_3959 : vec4<f32> = u_xlat12;
          let x_3961 : vec2<f32> = fract(vec2<f32>(x_3959.x, x_3959.y));
          let x_3962 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3961.x, x_3961.y, x_3962.z, x_3962.w);
          let x_3964 : i32 = u_xlati6;
          let x_3966 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_3964];
          let x_3968 : vec4<f32> = u_xlat12;
          let x_3971 : i32 = u_xlati6;
          let x_3973 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_3971];
          let x_3975 : vec2<f32> = ((vec2<f32>(x_3966.x, x_3966.y) * vec2<f32>(x_3968.x, x_3968.y)) + vec2<f32>(x_3973.z, x_3973.w));
          let x_3976 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3975.x, x_3975.y, x_3976.z);
        } else {
          let x_3979 : vec3<f32> = vs_TEXCOORD1;
          let x_3981 : i32 = u_xlati11;
          let x_3984 : i32 = u_xlati11;
          let x_3988 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_3981 + 1i) / 4i)][((x_3984 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3979.y, x_3979.y, x_3979.y, x_3979.y) * x_3988);
          let x_3990 : i32 = u_xlati11;
          let x_3992 : i32 = u_xlati11;
          let x_3995 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[(x_3990 / 4i)][(x_3992 % 4i)];
          let x_3996 : vec3<f32> = vs_TEXCOORD1;
          let x_3999 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3995 * vec4<f32>(x_3996.x, x_3996.x, x_3996.x, x_3996.x)) + x_3999);
          let x_4001 : i32 = u_xlati11;
          let x_4004 : i32 = u_xlati11;
          let x_4008 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_4001 + 2i) / 4i)][((x_4004 + 2i) % 4i)];
          let x_4009 : vec3<f32> = vs_TEXCOORD1;
          let x_4012 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4008 * vec4<f32>(x_4009.z, x_4009.z, x_4009.z, x_4009.z)) + x_4012);
          let x_4014 : vec4<f32> = u_xlat12;
          let x_4015 : i32 = u_xlati11;
          let x_4018 : i32 = u_xlati11;
          let x_4022 : vec4<f32> = x_1851.x_AdditionalLightsWorldToLights[((x_4015 + 3i) / 4i)][((x_4018 + 3i) % 4i)];
          u_xlat12 = (x_4014 + x_4022);
          let x_4024 : vec4<f32> = u_xlat12;
          let x_4026 : vec4<f32> = u_xlat12;
          let x_4028 : vec3<f32> = (vec3<f32>(x_4024.x, x_4024.y, x_4024.z) / vec3<f32>(x_4026.w, x_4026.w, x_4026.w));
          let x_4029 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
          let x_4031 : vec4<f32> = u_xlat12;
          let x_4033 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4031.x, x_4031.y, x_4031.z), vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
          let x_4036 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4036);
          let x_4038 : f32 = u_xlat87;
          let x_4040 : vec4<f32> = u_xlat12;
          let x_4042 : vec3<f32> = (vec3<f32>(x_4038, x_4038, x_4038) * vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
          let x_4043 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
          let x_4045 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4045.x, x_4045.y, x_4045.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4050 : f32 = u_xlat87;
          u_xlat87 = max(x_4050, 0.00000099999999747524f);
          let x_4053 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4053);
          let x_4055 : f32 = u_xlat87;
          let x_4057 : vec4<f32> = u_xlat12;
          let x_4059 : vec3<f32> = (vec3<f32>(x_4055, x_4055, x_4055) * vec3<f32>(x_4057.z, x_4057.x, x_4057.y));
          let x_4060 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4059.x, x_4059.y, x_4059.z, x_4060.w);
          let x_4063 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4063);
          let x_4067 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4067, 0.0f, 1.0f);
          let x_4070 : vec4<f32> = u_xlat13;
          let x_4072 : vec4<bool> = (vec4<f32>(x_4070.y, x_4070.y, x_4070.y, x_4070.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4073 : vec2<bool> = vec2<bool>(x_4072.x, x_4072.w);
          let x_4074 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4073.x, x_4074.y, x_4074.z, x_4073.y);
          let x_4077 : bool = u_xlatb11.x;
          if (x_4077) {
            let x_4082 : f32 = u_xlat13.x;
            x_4078 = x_4082;
          } else {
            let x_4085 : f32 = u_xlat13.x;
            x_4078 = -(x_4085);
          }
          let x_4087 : f32 = x_4078;
          u_xlat11.x = x_4087;
          let x_4090 : bool = u_xlatb11.w;
          if (x_4090) {
            let x_4095 : f32 = u_xlat13.x;
            x_4091 = x_4095;
          } else {
            let x_4098 : f32 = u_xlat13.x;
            x_4091 = -(x_4098);
          }
          let x_4100 : f32 = x_4091;
          u_xlat11.w = x_4100;
          let x_4102 : vec4<f32> = u_xlat12;
          let x_4104 : f32 = u_xlat87;
          let x_4107 : vec4<f32> = u_xlat11;
          let x_4109 : vec2<f32> = ((vec2<f32>(x_4102.x, x_4102.y) * vec2<f32>(x_4104, x_4104)) + vec2<f32>(x_4107.x, x_4107.w));
          let x_4110 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4109.x, x_4110.y, x_4110.z, x_4109.y);
          let x_4112 : vec4<f32> = u_xlat11;
          let x_4115 : vec2<f32> = ((vec2<f32>(x_4112.x, x_4112.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4116 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4115.x, x_4116.y, x_4116.z, x_4115.y);
          let x_4118 : vec4<f32> = u_xlat11;
          let x_4122 : vec2<f32> = clamp(vec2<f32>(x_4118.x, x_4118.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4123 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4122.x, x_4123.y, x_4123.z, x_4122.y);
          let x_4125 : i32 = u_xlati6;
          let x_4127 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_4125];
          let x_4129 : vec4<f32> = u_xlat11;
          let x_4132 : i32 = u_xlati6;
          let x_4134 : vec4<f32> = x_1851.x_AdditionalLightsCookieAtlasUVRects[x_4132];
          let x_4136 : vec2<f32> = ((vec2<f32>(x_4127.x, x_4127.y) * vec2<f32>(x_4129.x, x_4129.w)) + vec2<f32>(x_4134.z, x_4134.w));
          let x_4137 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4136.x, x_4136.y, x_4137.z);
        }
      }
      let x_4144 : vec3<f32> = u_xlat37;
      let x_4146 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4144.x, x_4144.y), 0.0f);
      u_xlat11 = x_4146;
      let x_4148 : bool = u_xlatb7.y;
      if (x_4148) {
        let x_4153 : f32 = u_xlat11.w;
        x_4149 = x_4153;
      } else {
        let x_4156 : f32 = u_xlat11.x;
        x_4149 = x_4156;
      }
      let x_4157 : f32 = x_4149;
      u_xlat87 = x_4157;
      let x_4159 : bool = u_xlatb7.x;
      if (x_4159) {
        let x_4163 : vec4<f32> = u_xlat11;
        x_4160 = vec3<f32>(x_4163.x, x_4163.y, x_4163.z);
      } else {
        let x_4166 : f32 = u_xlat87;
        x_4160 = vec3<f32>(x_4166, x_4166, x_4166);
      }
      let x_4168 : vec3<f32> = x_4160;
      let x_4169 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4168.x, x_4168.y, x_4168.z, x_4169.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4175 : vec4<f32> = u_xlat11;
    let x_4177 : i32 = u_xlati6;
    let x_4179 : vec4<f32> = x_2347.x_AdditionalLightsColor[x_4177];
    let x_4181 : vec3<f32> = (vec3<f32>(x_4175.x, x_4175.y, x_4175.z) * vec3<f32>(x_4179.x, x_4179.y, x_4179.z));
    let x_4182 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4181.x, x_4181.y, x_4181.z, x_4182.w);
    let x_4184 : f32 = u_xlat59;
    let x_4185 : f32 = u_xlat86;
    u_xlat6.x = (x_4184 * x_4185);
    let x_4188 : vec3<f32> = u_xlat4;
    let x_4189 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(x_4188, vec3<f32>(x_4189.x, x_4189.y, x_4189.z));
    let x_4192 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4192, 0.0f, 1.0f);
    let x_4195 : f32 = u_xlat6.x;
    let x_4196 : f32 = u_xlat59;
    u_xlat6.x = (x_4195 * x_4196);
    let x_4199 : vec4<f32> = u_xlat6;
    let x_4201 : vec4<f32> = u_xlat11;
    let x_4203 : vec3<f32> = (vec3<f32>(x_4199.x, x_4199.x, x_4199.x) * vec3<f32>(x_4201.x, x_4201.y, x_4201.z));
    let x_4204 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
    let x_4206 : vec4<f32> = u_xlat9;
    let x_4208 : f32 = u_xlat85;
    let x_4211 : vec3<f32> = u_xlat29;
    let x_4212 : vec3<f32> = ((vec3<f32>(x_4206.x, x_4206.y, x_4206.z) * vec3<f32>(x_4208, x_4208, x_4208)) + x_4211);
    let x_4213 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4212.x, x_4212.y, x_4212.z, x_4213.w);
    let x_4215 : vec4<f32> = u_xlat9;
    let x_4217 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4215.x, x_4215.y, x_4215.z), vec3<f32>(x_4217.x, x_4217.y, x_4217.z));
    let x_4222 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4222, 1.17549435e-38f);
    let x_4226 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4226);
    let x_4229 : vec4<f32> = u_xlat6;
    let x_4231 : vec4<f32> = u_xlat9;
    let x_4233 : vec3<f32> = (vec3<f32>(x_4229.x, x_4229.x, x_4229.x) * vec3<f32>(x_4231.x, x_4231.y, x_4231.z));
    let x_4234 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4233.x, x_4233.y, x_4233.z, x_4234.w);
    let x_4236 : vec3<f32> = u_xlat4;
    let x_4237 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_4236, vec3<f32>(x_4237.x, x_4237.y, x_4237.z));
    let x_4242 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4242, 0.0f, 1.0f);
    let x_4245 : vec4<f32> = u_xlat10;
    let x_4247 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4245.x, x_4245.y, x_4245.z), vec3<f32>(x_4247.x, x_4247.y, x_4247.z));
    let x_4250 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4250, 0.0f, 1.0f);
    let x_4253 : f32 = u_xlat6.x;
    let x_4255 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4253 * x_4255);
    let x_4259 : f32 = u_xlat6.x;
    let x_4261 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_4259 * x_4261) + 1.00001001358032226562f);
    let x_4265 : f32 = u_xlat59;
    let x_4266 : f32 = u_xlat59;
    u_xlat59 = (x_4265 * x_4266);
    let x_4269 : f32 = u_xlat6.x;
    let x_4271 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4269 * x_4271);
    let x_4274 : f32 = u_xlat59;
    u_xlat59 = max(x_4274, 0.10000000149011611938f);
    let x_4277 : f32 = u_xlat6.x;
    let x_4278 : f32 = u_xlat59;
    u_xlat6.x = (x_4277 * x_4278);
    let x_4281 : f32 = u_xlat82;
    let x_4283 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4281 * x_4283);
    let x_4287 : f32 = u_xlat53.x;
    let x_4289 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4287 / x_4289);
    let x_4292 : vec4<f32> = u_xlat0;
    let x_4294 : vec4<f32> = u_xlat6;
    let x_4297 : vec3<f32> = u_xlat28;
    let x_4298 : vec3<f32> = ((vec3<f32>(x_4292.x, x_4292.y, x_4292.z) * vec3<f32>(x_4294.x, x_4294.x, x_4294.x)) + x_4297);
    let x_4299 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4298.x, x_4298.y, x_4298.z, x_4299.w);
    let x_4301 : vec4<f32> = u_xlat9;
    let x_4303 : vec4<f32> = u_xlat11;
    let x_4306 : vec4<f32> = u_xlat8;
    let x_4308 : vec3<f32> = ((vec3<f32>(x_4301.x, x_4301.y, x_4301.z) * vec3<f32>(x_4303.x, x_4303.y, x_4303.z)) + vec3<f32>(x_4306.x, x_4306.y, x_4306.z));
    let x_4309 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4308.x, x_4308.y, x_4308.z, x_4309.w);

    continuing {
      let x_4311 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4311 + bitcast<u32>(1i));
    }
  }
  let x_4313 : vec4<f32> = u_xlat5;
  let x_4315 : vec3<f32> = u_xlat3;
  let x_4318 : vec3<f32> = u_xlat32;
  let x_4319 : vec3<f32> = ((vec3<f32>(x_4313.x, x_4313.y, x_4313.z) * vec3<f32>(x_4315.x, x_4315.x, x_4315.x)) + x_4318);
  let x_4320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4319.x, x_4319.y, x_4319.z, x_4320.w);
  let x_4322 : vec4<f32> = u_xlat8;
  let x_4324 : vec4<f32> = u_xlat0;
  let x_4326 : vec3<f32> = (vec3<f32>(x_4322.x, x_4322.y, x_4322.z) + vec3<f32>(x_4324.x, x_4324.y, x_4324.z));
  let x_4327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4326.x, x_4326.y, x_4326.z, x_4327.w);
  let x_4329 : f32 = u_xlat78;
  let x_4330 : f32 = u_xlat78;
  u_xlat78 = (x_4329 * -(x_4330));
  let x_4333 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4333);
  let x_4335 : vec4<f32> = u_xlat0;
  let x_4338 : vec4<f32> = x_45.unity_FogColor;
  let x_4341 : vec3<f32> = (vec3<f32>(x_4335.x, x_4335.y, x_4335.z) + -(vec3<f32>(x_4338.x, x_4338.y, x_4338.z)));
  let x_4342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4341.x, x_4341.y, x_4341.z, x_4342.w);
  let x_4346 : f32 = u_xlat78;
  let x_4348 : vec4<f32> = u_xlat0;
  let x_4352 : vec4<f32> = x_45.unity_FogColor;
  let x_4354 : vec3<f32> = ((vec3<f32>(x_4346, x_4346, x_4346) * vec3<f32>(x_4348.x, x_4348.y, x_4348.z)) + vec3<f32>(x_4352.x, x_4352.y, x_4352.z));
  let x_4355 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4354.x, x_4354.y, x_4354.z, x_4355.w);
  let x_4359 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_4359 == 1.0f);
  let x_4361 : bool = u_xlatb0;
  if (x_4361) {
    let x_4366 : f32 = u_xlat2.x;
    x_4362 = x_4366;
  } else {
    x_4362 = 1.0f;
  }
  let x_4368 : f32 = x_4362;
  SV_Target0.w = x_4368;
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


