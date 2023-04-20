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

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_281 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(1) @binding(2) var<uniform> x_509 : UnityPerDraw;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlatb83 : bool;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlatb57 : vec2<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat57 : vec2<f32>;

@group(1) @binding(5) var<uniform> x_2009 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu27 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2516 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

fn main_1() {
  var x_196 : vec3<f32>;
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
  var x_1960 : f32;
  var x_2076 : f32;
  var x_2087 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2672 : f32;
  var x_2682 : f32;
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
  var x_4265 : f32;
  var x_4278 : f32;
  var x_4336 : f32;
  var x_4347 : vec3<f32>;
  var x_4540 : f32;
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
  let x_48 : vec2<f32> = vec2<f32>(x_47.x, x_47.w);
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : f32 = x_28.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_69, x_71);
  u_xlat3 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_76 : f32 = u_xlat3.x;
  let x_79 : f32 = u_xlat3.z;
  u_xlat3.x = (x_76 * x_79);
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat53 = ((vec2<f32>(x_84.x, x_84.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec2<f32> = u_xlat53;
  let x_94 : vec2<f32> = u_xlat53;
  u_xlat78 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat78;
  u_xlat78 = min(x_96, 1.0f);
  let x_99 : f32 = u_xlat78;
  u_xlat78 = (-(x_99) + 1.0f);
  let x_102 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_102);
  let x_104 : f32 = u_xlat78;
  u_xlat78 = max(x_104, 0.0000000000000001f);
  let x_107 : vec2<f32> = u_xlat53;
  let x_110 : f32 = x_56.x_BumpScale;
  let x_112 : f32 = x_56.x_BumpScale;
  let x_113 : vec2<f32> = vec2<f32>(x_110, x_112);
  u_xlat53 = (x_107 * vec2<f32>(x_113.x, x_113.y));
  let x_123 : vec2<f32> = vs_TEXCOORD0;
  let x_125 : f32 = x_28.x_GlobalMipBias.x;
  let x_126 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_123, x_125);
  u_xlat3.x = x_126.y;
  let x_133 : f32 = x_56.x_OcclusionStrength;
  u_xlat29.x = (-(x_133) + 1.0f);
  let x_138 : f32 = u_xlat3.x;
  let x_140 : f32 = x_56.x_OcclusionStrength;
  let x_143 : f32 = u_xlat29.x;
  u_xlat3.x = ((x_138 * x_140) + x_143);
  let x_152 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb29 = (x_152 == 0.0f);
  let x_158 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_164 : vec3<f32> = (-(x_158) + x_163);
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat55;
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_185 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_185;
  let x_189 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_189;
  let x_192 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_192;
  let x_194 : bool = u_xlatb29;
  if (x_194) {
    let x_199 : vec4<f32> = u_xlat4;
    x_196 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  } else {
    let x_202 : vec4<f32> = u_xlat5;
    x_196 = vec3<f32>(x_202.x, x_202.y, x_202.z);
  }
  let x_204 : vec3<f32> = x_196;
  u_xlat29 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_210 : vec4<f32> = vs_TEXCOORD3;
  let x_212 : vec3<f32> = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_210.y, x_210.z, x_210.x));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec3<f32> = vs_TEXCOORD2;
  let x_217 : vec4<f32> = vs_TEXCOORD3;
  let x_220 : vec4<f32> = u_xlat4;
  let x_223 : vec3<f32> = ((vec3<f32>(x_215.y, x_215.z, x_215.x) * vec3<f32>(x_217.z, x_217.x, x_217.y)) + -(vec3<f32>(x_220.x, x_220.y, x_220.z)));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.w, x_228.w));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec2<f32> = u_xlat53;
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec2<f32> = u_xlat53;
  let x_242 : vec4<f32> = vs_TEXCOORD3;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : f32 = u_xlat78;
  let x_252 : vec3<f32> = vs_TEXCOORD2;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = ((vec3<f32>(x_250, x_250, x_250) * x_252) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_264);
  let x_266 : f32 = u_xlat78;
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = (vec3<f32>(x_266, x_266, x_266) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres0;
  let x_286 : vec3<f32> = (x_273 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres1;
  let x_295 : vec3<f32> = (x_290 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres2;
  let x_305 : vec3<f32> = (x_299 + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres3;
  let x_314 : vec3<f32> = (x_309 + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat5;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : vec4<f32> = u_xlat8;
  let x_337 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_344 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = x_281.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_344 < x_347);
  let x_350 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_366);
  let x_371 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_371);
  let x_375 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_375);
  let x_378 : vec4<f32> = u_xlat5;
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_380.y, x_380.z, x_380.w));
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = max(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_391, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_396 : f32 = u_xlat78;
  u_xlat78 = (-(x_396) + 4.0f);
  let x_401 : f32 = u_xlat78;
  u_xlatu78 = u32(x_401);
  let x_405 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_405) << bitcast<u32>(2i));
  let x_408 : vec3<f32> = vs_TEXCOORD1;
  let x_410 : i32 = u_xlati78;
  let x_413 : i32 = u_xlati78;
  let x_417 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_410 + 1i) / 4i)][((x_413 + 1i) % 4i)];
  let x_419 : vec3<f32> = (vec3<f32>(x_408.y, x_408.y, x_408.y) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati78;
  let x_424 : i32 = u_xlati78;
  let x_427 : vec4<f32> = x_281.x_MainLightWorldToShadow[(x_422 / 4i)][(x_424 % 4i)];
  let x_429 : vec3<f32> = vs_TEXCOORD1;
  let x_432 : vec4<f32> = u_xlat5;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : i32 = u_xlati78;
  let x_440 : i32 = u_xlati78;
  let x_444 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_437 + 2i) / 4i)][((x_440 + 2i) % 4i)];
  let x_446 : vec3<f32> = vs_TEXCOORD1;
  let x_449 : vec4<f32> = u_xlat5;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.z, x_446.z, x_446.z)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat5;
  let x_456 : i32 = u_xlati78;
  let x_459 : i32 = u_xlati78;
  let x_463 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_456 + 3i) / 4i)][((x_459 + 3i) % 4i)];
  let x_465 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_470 : f32 = vs_TEXCOORD1.y;
  let x_472 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_470 * x_472);
  let x_475 : f32 = x_28.unity_MatrixV[0i].z;
  let x_477 : f32 = vs_TEXCOORD1.x;
  let x_479 : f32 = u_xlat78;
  u_xlat78 = ((x_475 * x_477) + x_479);
  let x_482 : f32 = x_28.unity_MatrixV[2i].z;
  let x_484 : f32 = vs_TEXCOORD1.z;
  let x_486 : f32 = u_xlat78;
  u_xlat78 = ((x_482 * x_484) + x_486);
  let x_488 : f32 = u_xlat78;
  let x_490 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_488 + x_490);
  let x_492 : f32 = u_xlat78;
  let x_495 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_492) + -(x_495));
  let x_498 : f32 = u_xlat78;
  u_xlat78 = max(x_498, 0.0f);
  let x_500 : f32 = u_xlat78;
  let x_503 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_500 * x_503);
  u_xlat4.w = 1.0f;
  let x_512 : vec4<f32> = x_509.unity_SHAr;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_512, x_513);
  let x_518 : vec4<f32> = x_509.unity_SHAg;
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_518, x_519);
  let x_524 : vec4<f32> = x_509.unity_SHAb;
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_524, x_525);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_528.y, x_528.z, x_528.z, x_528.x) * vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.z));
  let x_535 : vec4<f32> = x_509.unity_SHBr;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_509.unity_SHBg;
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_541, x_542);
  let x_547 : vec4<f32> = x_509.unity_SHBb;
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_547, x_548);
  let x_552 : f32 = u_xlat4.y;
  let x_554 : f32 = u_xlat4.y;
  u_xlat53.x = (x_552 * x_554);
  let x_558 : f32 = u_xlat4.x;
  let x_560 : f32 = u_xlat4.x;
  let x_563 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_558 * x_560) + -(x_563));
  let x_569 : vec4<f32> = x_509.unity_SHC;
  let x_571 : vec2<f32> = u_xlat53;
  let x_574 : vec4<f32> = u_xlat8;
  let x_576 : vec3<f32> = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.x, x_571.x, x_571.x)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat6;
  let x_581 : vec4<f32> = u_xlat7;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_589 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_592 : f32 = u_xlat1.x;
  u_xlat53.x = ((-(x_592) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_600 : f32 = u_xlat53.x;
  u_xlat79 = (-(x_600) + 1.0f);
  let x_604 : vec2<f32> = u_xlat53;
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_604.x, x_604.x, x_604.x) * vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat0;
  let x_612 : vec4<f32> = x_56.x_BaseColor;
  let x_617 : vec3<f32> = ((vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = u_xlat1;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat1.y;
  let x_634 : f32 = x_56.x_Smoothness;
  u_xlat1.x = ((-(x_631) * x_634) + 1.0f);
  let x_639 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat1.x;
  u_xlat53.x = (x_639 * x_641);
  let x_645 : f32 = u_xlat53.x;
  u_xlat53.x = max(x_645, 0.0078125f);
  let x_651 : f32 = u_xlat53.x;
  let x_653 : f32 = u_xlat53.x;
  u_xlat82 = (x_651 * x_653);
  let x_657 : f32 = u_xlat1.y;
  let x_659 : f32 = x_56.x_Smoothness;
  let x_661 : f32 = u_xlat79;
  u_xlat27.x = ((x_657 * x_659) + x_661);
  let x_665 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_665, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat53.x;
  u_xlat79 = ((x_669 * 4.0f) + 2.0f);
  let x_673 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_673, 1.0f);
  let x_678 : f32 = x_281.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_678);
  let x_680 : bool = u_xlatb83;
  if (x_680) {
    let x_684 : f32 = x_281.x_MainLightShadowParams.y;
    u_xlatb83 = (x_684 == 1.0f);
    let x_686 : bool = u_xlatb83;
    if (x_686) {
      let x_689 : vec4<f32> = u_xlat5;
      let x_692 : vec4<f32> = x_281.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y) + x_692);
      let x_695 : vec4<f32> = u_xlat7;
      let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
      let x_698 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_696.x, x_696.y, x_698);
      let x_710 : vec3<f32> = txVec0;
      let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
      u_xlat8.x = x_712;
      let x_715 : vec4<f32> = u_xlat7;
      let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
      let x_718 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_716.x, x_716.y, x_718);
      let x_725 : vec3<f32> = txVec1;
      let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
      u_xlat8.y = x_727;
      let x_729 : vec4<f32> = u_xlat5;
      let x_732 : vec4<f32> = x_281.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y) + x_732);
      let x_735 : vec4<f32> = u_xlat7;
      let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
      let x_738 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_736.x, x_736.y, x_738);
      let x_745 : vec3<f32> = txVec2;
      let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
      u_xlat8.z = x_747;
      let x_750 : vec4<f32> = u_xlat7;
      let x_751 : vec2<f32> = vec2<f32>(x_750.z, x_750.w);
      let x_753 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_751.x, x_751.y, x_753);
      let x_760 : vec3<f32> = txVec3;
      let x_762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_760.xy, x_760.z);
      u_xlat8.w = x_762;
      let x_765 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_765, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_772 : f32 = x_281.x_MainLightShadowParams.y;
      u_xlatb84 = (x_772 == 2.0f);
      let x_774 : bool = u_xlatb84;
      if (x_774) {
        let x_777 : vec4<f32> = u_xlat5;
        let x_780 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_785 : vec2<f32> = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_780.z, x_780.w)) + vec2<f32>(0.5f, 0.5f));
        let x_786 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat7;
        let x_790 : vec2<f32> = floor(vec2<f32>(x_788.x, x_788.y));
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_794 : vec4<f32> = u_xlat5;
        let x_797 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_797.z, x_797.w)) + -(vec2<f32>(x_800.x, x_800.y)));
        let x_804 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_804.x, x_804.x, x_804.y, x_804.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_809 : vec4<f32> = u_xlat8;
        let x_811 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z) * vec4<f32>(x_811.x, x_811.x, x_811.z, x_811.z));
        let x_814 : vec4<f32> = u_xlat9;
        let x_818 : vec2<f32> = (vec2<f32>(x_814.y, x_814.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_818.x, x_819.y, x_818.y, x_819.w);
        let x_821 : vec4<f32> = u_xlat9;
        let x_824 : vec2<f32> = u_xlat59;
        let x_826 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.z) * vec2<f32>(0.5f, 0.5f)) + -(x_824));
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_830 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_830) + vec2<f32>(1.0f, 1.0f));
        let x_835 : vec2<f32> = u_xlat59;
        let x_837 : vec2<f32> = min(x_835, vec2<f32>(0.0f, 0.0f));
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat10;
        let x_843 : vec4<f32> = u_xlat10;
        let x_846 : vec2<f32> = u_xlat61;
        let x_847 : vec2<f32> = ((-(vec2<f32>(x_840.x, x_840.y)) * vec2<f32>(x_843.x, x_843.y)) + x_846);
        let x_848 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_850, vec2<f32>(0.0f, 0.0f));
        let x_852 : vec2<f32> = u_xlat59;
        let x_854 : vec2<f32> = u_xlat59;
        let x_856 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_852) * x_854) + vec2<f32>(x_856.y, x_856.w));
        let x_859 : vec4<f32> = u_xlat10;
        let x_861 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) + vec2<f32>(1.0f, 1.0f));
        let x_862 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_864 + vec2<f32>(1.0f, 1.0f));
        let x_867 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = (vec2<f32>(x_867.x, x_867.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_872 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec2<f32> = u_xlat61;
        let x_875 : vec2<f32> = (x_874 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat10;
        let x_880 : vec2<f32> = (vec2<f32>(x_878.x, x_878.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_881 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_884 : vec2<f32> = u_xlat59;
        let x_885 : vec2<f32> = (x_884 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_886 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_888.y, x_888.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_892 : f32 = u_xlat10.x;
        u_xlat11.z = x_892;
        let x_895 : f32 = u_xlat59.x;
        u_xlat11.w = x_895;
        let x_898 : f32 = u_xlat12.x;
        u_xlat9.z = x_898;
        let x_901 : f32 = u_xlat8.x;
        u_xlat9.w = x_901;
        let x_904 : vec4<f32> = u_xlat9;
        let x_906 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_904.z, x_904.w, x_904.x, x_904.z) + vec4<f32>(x_906.z, x_906.w, x_906.x, x_906.z));
        let x_910 : f32 = u_xlat11.y;
        u_xlat10.z = x_910;
        let x_913 : f32 = u_xlat59.y;
        u_xlat10.w = x_913;
        let x_916 : f32 = u_xlat9.y;
        u_xlat12.z = x_916;
        let x_919 : f32 = u_xlat8.z;
        u_xlat12.w = x_919;
        let x_921 : vec4<f32> = u_xlat10;
        let x_923 : vec4<f32> = u_xlat12;
        let x_925 : vec3<f32> = (vec3<f32>(x_921.z, x_921.y, x_921.w) + vec3<f32>(x_923.z, x_923.y, x_923.w));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat9;
        let x_930 : vec4<f32> = u_xlat13;
        let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.z, x_928.w) / vec3<f32>(x_930.z, x_930.w, x_930.y));
        let x_933 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat9;
        let x_941 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat12;
        let x_946 : vec4<f32> = u_xlat8;
        let x_948 : vec3<f32> = (vec3<f32>(x_944.z, x_944.y, x_944.w) / vec3<f32>(x_946.x, x_946.y, x_946.z));
        let x_949 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat10;
        let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_954 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat9;
        let x_959 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_961 : vec3<f32> = (vec3<f32>(x_956.y, x_956.x, x_956.z) * vec3<f32>(x_959.x, x_959.x, x_959.x));
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat10;
        let x_967 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_969 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_967.y, x_967.y, x_967.y));
        let x_970 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
        let x_973 : f32 = u_xlat10.x;
        u_xlat9.w = x_973;
        let x_975 : vec4<f32> = u_xlat7;
        let x_978 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.y, x_981.w, x_981.x, x_981.w));
        let x_984 : vec4<f32> = u_xlat7;
        let x_987 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.z, x_990.w));
        let x_994 : f32 = u_xlat9.y;
        u_xlat10.w = x_994;
        let x_996 : vec4<f32> = u_xlat10;
        let x_997 : vec2<f32> = vec2<f32>(x_996.y, x_996.z);
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1003 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1000.x, x_1000.y, x_1000.x, x_1000.y) * vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1012 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y) * vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y)) + vec4<f32>(x_1015.w, x_1015.y, x_1015.w, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1021 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.w, x_1024.z, x_1024.w));
        let x_1028 : vec4<f32> = u_xlat8;
        let x_1030 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.x, x_1028.y) * vec4<f32>(x_1030.z, x_1030.w, x_1030.y, x_1030.z));
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1034.y, x_1034.y, x_1034.z, x_1034.z) * x_1036);
        let x_1040 : f32 = u_xlat8.z;
        let x_1042 : f32 = u_xlat13.y;
        u_xlat84 = (x_1040 * x_1042);
        let x_1045 : vec4<f32> = u_xlat11;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.x, x_1045.y);
        let x_1048 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1055 : vec3<f32> = txVec4;
        let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1055.xy, x_1055.z);
        u_xlat7.x = x_1057;
        let x_1060 : vec4<f32> = u_xlat11;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1071 : vec3<f32> = txVec5;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat33 = x_1073;
        let x_1074 : f32 = u_xlat33;
        let x_1076 : f32 = u_xlat14.y;
        u_xlat33 = (x_1074 * x_1076);
        let x_1079 : f32 = u_xlat14.x;
        let x_1081 : f32 = u_xlat7.x;
        let x_1083 : f32 = u_xlat33;
        u_xlat7.x = ((x_1079 * x_1081) + x_1083);
        let x_1087 : vec2<f32> = u_xlat59;
        let x_1089 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1096 : vec3<f32> = txVec6;
        let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
        u_xlat33 = x_1098;
        let x_1100 : f32 = u_xlat14.z;
        let x_1101 : f32 = u_xlat33;
        let x_1104 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1100 * x_1101) + x_1104);
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = vec2<f32>(x_1108.x, x_1108.y);
        let x_1111 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec7;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1118.xy, x_1118.z);
        u_xlat33 = x_1120;
        let x_1122 : f32 = u_xlat14.w;
        let x_1123 : f32 = u_xlat33;
        let x_1126 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1122 * x_1123) + x_1126);
        let x_1130 : vec4<f32> = u_xlat12;
        let x_1131 : vec2<f32> = vec2<f32>(x_1130.x, x_1130.y);
        let x_1133 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1131.x, x_1131.y, x_1133);
        let x_1140 : vec3<f32> = txVec8;
        let x_1142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1140.xy, x_1140.z);
        u_xlat33 = x_1142;
        let x_1144 : f32 = u_xlat15.x;
        let x_1145 : f32 = u_xlat33;
        let x_1148 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1144 * x_1145) + x_1148);
        let x_1152 : vec4<f32> = u_xlat12;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.z, x_1152.w);
        let x_1155 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1162 : vec3<f32> = txVec9;
        let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1162.xy, x_1162.z);
        u_xlat33 = x_1164;
        let x_1166 : f32 = u_xlat15.y;
        let x_1167 : f32 = u_xlat33;
        let x_1170 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1166 * x_1167) + x_1170);
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.z, x_1174.w);
        let x_1177 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec10;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat33 = x_1186;
        let x_1188 : f32 = u_xlat15.z;
        let x_1189 : f32 = u_xlat33;
        let x_1192 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1188 * x_1189) + x_1192);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
        let x_1199 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec11;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1206.xy, x_1206.z);
        u_xlat33 = x_1208;
        let x_1210 : f32 = u_xlat15.w;
        let x_1211 : f32 = u_xlat33;
        let x_1214 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1210 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.z, x_1218.w);
        let x_1221 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec12;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat33 = x_1230;
        let x_1231 : f32 = u_xlat84;
        let x_1232 : f32 = u_xlat33;
        let x_1235 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1231 * x_1232) + x_1235);
      } else {
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1244 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.z, x_1241.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1245 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat7;
        let x_1249 : vec2<f32> = floor(vec2<f32>(x_1247.x, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.z, x_1255.w)) + -(vec2<f32>(x_1258.x, x_1258.y)));
        let x_1262 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1262.x, x_1262.x, x_1262.y, x_1262.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1265 : vec4<f32> = u_xlat8;
        let x_1267 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1265.x, x_1265.x, x_1265.z, x_1265.z) * vec4<f32>(x_1267.x, x_1267.x, x_1267.z, x_1267.z));
        let x_1270 : vec4<f32> = u_xlat9;
        let x_1274 : vec2<f32> = (vec2<f32>(x_1270.y, x_1270.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1275.x, x_1274.x, x_1275.z, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1280 : vec2<f32> = u_xlat59;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1280));
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1283.w);
        let x_1285 : vec2<f32> = u_xlat59;
        let x_1287 : vec2<f32> = (-(x_1285) + vec2<f32>(1.0f, 1.0f));
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1290, vec2<f32>(0.0f, 0.0f));
        let x_1292 : vec2<f32> = u_xlat61;
        let x_1294 : vec2<f32> = u_xlat61;
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1298 : vec2<f32> = ((-(x_1292) * x_1294) + vec2<f32>(x_1296.x, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1301, vec2<f32>(0.0f, 0.0f));
        let x_1304 : vec2<f32> = u_xlat61;
        let x_1306 : vec2<f32> = u_xlat61;
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1310 : vec2<f32> = ((-(x_1304) * x_1306) + vec2<f32>(x_1308.y, x_1308.w));
        let x_1311 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1310.x, x_1311.y, x_1310.y);
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1315 : vec2<f32> = (vec2<f32>(x_1313.x, x_1313.y) + vec2<f32>(2.0f, 2.0f));
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec3<f32> = u_xlat34;
        let x_1320 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.z) + vec2<f32>(2.0f, 2.0f));
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1324 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1324 * 0.08163200318813323975f);
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1331 : vec3<f32> = (vec3<f32>(x_1328.z, x_1328.x, x_1328.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1332 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : f32 = u_xlat12.y;
        u_xlat11.x = x_1341;
        let x_1343 : vec2<f32> = u_xlat59;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1351 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1350.x, x_1351.z, x_1350.y);
        let x_1353 : vec2<f32> = u_xlat59;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1353.x, x_1353.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1361 : f32 = u_xlat8.x;
        u_xlat9.y = x_1361;
        let x_1364 : f32 = u_xlat10.y;
        u_xlat9.w = x_1364;
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1366 + x_1367);
        let x_1369 : vec2<f32> = u_xlat59;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1369.y, x_1369.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1373.x, x_1372.x, x_1373.z, x_1372.y);
        let x_1375 : vec2<f32> = u_xlat59;
        let x_1378 : vec2<f32> = ((vec2<f32>(x_1375.y, x_1375.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1379 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1379.w);
        let x_1382 : f32 = u_xlat8.y;
        u_xlat10.y = x_1382;
        let x_1384 : vec4<f32> = u_xlat10;
        let x_1385 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1384 + x_1385);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1388 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1387 / x_1388);
        let x_1390 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1396 : vec4<f32> = u_xlat10;
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1396 / x_1397);
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1399 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1404 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1401.w, x_1401.x, x_1401.y, x_1401.z) * vec4<f32>(x_1404.x, x_1404.x, x_1404.x, x_1404.x));
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1410 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1407.x, x_1407.w, x_1407.y, x_1407.z) * vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat9;
        let x_1414 : vec3<f32> = vec3<f32>(x_1413.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1414.z);
        let x_1418 : f32 = u_xlat10.x;
        u_xlat12.y = x_1418;
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1423 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1420.x, x_1420.y, x_1420.x, x_1420.y) * vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y)) + vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat7;
        let x_1432 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.w, x_1435.y));
        let x_1439 : f32 = u_xlat12.y;
        u_xlat9.y = x_1439;
        let x_1442 : f32 = u_xlat10.z;
        u_xlat12.y = x_1442;
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1447 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.y) * vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y)) + vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1456 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat12;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1462 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat12.y;
        u_xlat9.z = x_1465;
        let x_1468 : vec4<f32> = u_xlat7;
        let x_1471 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.z));
        let x_1478 : f32 = u_xlat10.w;
        u_xlat12.y = x_1478;
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1484 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1481.x, x_1481.y, x_1481.x, x_1481.y) * vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y)) + vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1487.y));
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1497.w, x_1497.y));
        let x_1501 : f32 = u_xlat12.y;
        u_xlat9.w = x_1501;
        let x_1504 : vec4<f32> = u_xlat7;
        let x_1507 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1510 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1507.x, x_1507.y)) + vec2<f32>(x_1510.x, x_1510.w));
        let x_1513 : vec4<f32> = u_xlat12;
        let x_1514 : vec3<f32> = vec3<f32>(x_1513.x, x_1513.z, x_1513.w);
        let x_1515 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1514.x, x_1515.y, x_1514.y, x_1514.z);
        let x_1517 : vec4<f32> = u_xlat7;
        let x_1520 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1517.x, x_1517.y, x_1517.x, x_1517.y) * vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y)) + vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1523.y));
        let x_1527 : vec4<f32> = u_xlat7;
        let x_1530 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(x_1530.x, x_1530.y)) + vec2<f32>(x_1533.w, x_1533.y));
        let x_1537 : f32 = u_xlat9.x;
        u_xlat10.x = x_1537;
        let x_1539 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat10;
        let x_1547 : vec2<f32> = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1551.x, x_1551.x, x_1551.x, x_1551.x) * x_1553);
        let x_1556 : vec4<f32> = u_xlat8;
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1556.y, x_1556.y, x_1556.y, x_1556.y) * x_1558);
        let x_1561 : vec4<f32> = u_xlat8;
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1561.z, x_1561.z, x_1561.z, x_1561.z) * x_1563);
        let x_1565 : vec4<f32> = u_xlat8;
        let x_1567 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1565.w, x_1565.w, x_1565.w, x_1565.w) * x_1567);
        let x_1570 : vec4<f32> = u_xlat13;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec13;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat84 = x_1582;
        let x_1584 : vec4<f32> = u_xlat13;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec14;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat9.x = x_1596;
        let x_1599 : f32 = u_xlat9.x;
        let x_1601 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1599 * x_1601);
        let x_1605 : f32 = u_xlat18.x;
        let x_1606 : f32 = u_xlat84;
        let x_1609 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1605 * x_1606) + x_1609);
        let x_1612 : vec2<f32> = u_xlat59;
        let x_1614 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec15;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat59.x = x_1623;
        let x_1626 : f32 = u_xlat18.z;
        let x_1628 : f32 = u_xlat59.x;
        let x_1630 : f32 = u_xlat84;
        u_xlat84 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat16;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec16;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat59.x = x_1645;
        let x_1648 : f32 = u_xlat18.w;
        let x_1650 : f32 = u_xlat59.x;
        let x_1652 : f32 = u_xlat84;
        u_xlat84 = ((x_1648 * x_1650) + x_1652);
        let x_1655 : vec4<f32> = u_xlat14;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
        let x_1658 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec17;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1665.xy, x_1665.z);
        u_xlat59.x = x_1667;
        let x_1670 : f32 = u_xlat19.x;
        let x_1672 : f32 = u_xlat59.x;
        let x_1674 : f32 = u_xlat84;
        u_xlat84 = ((x_1670 * x_1672) + x_1674);
        let x_1677 : vec4<f32> = u_xlat14;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.z, x_1677.w);
        let x_1680 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec18;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat59.x = x_1689;
        let x_1692 : f32 = u_xlat19.y;
        let x_1694 : f32 = u_xlat59.x;
        let x_1696 : f32 = u_xlat84;
        u_xlat84 = ((x_1692 * x_1694) + x_1696);
        let x_1699 : vec4<f32> = u_xlat15;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec19;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat59.x = x_1711;
        let x_1714 : f32 = u_xlat19.z;
        let x_1716 : f32 = u_xlat59.x;
        let x_1718 : f32 = u_xlat84;
        u_xlat84 = ((x_1714 * x_1716) + x_1718);
        let x_1721 : vec4<f32> = u_xlat16;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.z, x_1721.w);
        let x_1724 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec20;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat59.x = x_1733;
        let x_1736 : f32 = u_xlat19.w;
        let x_1738 : f32 = u_xlat59.x;
        let x_1740 : f32 = u_xlat84;
        u_xlat84 = ((x_1736 * x_1738) + x_1740);
        let x_1743 : vec4<f32> = u_xlat17;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.x, x_1743.y);
        let x_1746 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec21;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat59.x = x_1755;
        let x_1758 : f32 = u_xlat20.x;
        let x_1760 : f32 = u_xlat59.x;
        let x_1762 : f32 = u_xlat84;
        u_xlat84 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat17;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.z, x_1765.w);
        let x_1768 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec22;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1775.xy, x_1775.z);
        u_xlat59.x = x_1777;
        let x_1780 : f32 = u_xlat20.y;
        let x_1782 : f32 = u_xlat59.x;
        let x_1784 : f32 = u_xlat84;
        u_xlat84 = ((x_1780 * x_1782) + x_1784);
        let x_1787 : vec2<f32> = u_xlat35;
        let x_1789 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1787.x, x_1787.y, x_1789);
        let x_1796 : vec3<f32> = txVec23;
        let x_1798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1796.xy, x_1796.z);
        u_xlat59.x = x_1798;
        let x_1801 : f32 = u_xlat20.z;
        let x_1803 : f32 = u_xlat59.x;
        let x_1805 : f32 = u_xlat84;
        u_xlat84 = ((x_1801 * x_1803) + x_1805);
        let x_1808 : vec2<f32> = u_xlat67;
        let x_1810 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec24;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat59.x = x_1819;
        let x_1822 : f32 = u_xlat20.w;
        let x_1824 : f32 = u_xlat59.x;
        let x_1826 : f32 = u_xlat84;
        u_xlat84 = ((x_1822 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat12;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
        let x_1832 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec25;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1839.xy, x_1839.z);
        u_xlat59.x = x_1841;
        let x_1844 : f32 = u_xlat8.x;
        let x_1846 : f32 = u_xlat59.x;
        let x_1848 : f32 = u_xlat84;
        u_xlat84 = ((x_1844 * x_1846) + x_1848);
        let x_1851 : vec4<f32> = u_xlat12;
        let x_1852 : vec2<f32> = vec2<f32>(x_1851.z, x_1851.w);
        let x_1854 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1852.x, x_1852.y, x_1854);
        let x_1861 : vec3<f32> = txVec26;
        let x_1863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1861.xy, x_1861.z);
        u_xlat59.x = x_1863;
        let x_1866 : f32 = u_xlat8.y;
        let x_1868 : f32 = u_xlat59.x;
        let x_1870 : f32 = u_xlat84;
        u_xlat84 = ((x_1866 * x_1868) + x_1870);
        let x_1873 : vec2<f32> = u_xlat62;
        let x_1875 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1873.x, x_1873.y, x_1875);
        let x_1882 : vec3<f32> = txVec27;
        let x_1884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1882.xy, x_1882.z);
        u_xlat59.x = x_1884;
        let x_1887 : f32 = u_xlat8.z;
        let x_1889 : f32 = u_xlat59.x;
        let x_1891 : f32 = u_xlat84;
        u_xlat84 = ((x_1887 * x_1889) + x_1891);
        let x_1894 : vec4<f32> = u_xlat7;
        let x_1895 : vec2<f32> = vec2<f32>(x_1894.x, x_1894.y);
        let x_1897 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1895.x, x_1895.y, x_1897);
        let x_1904 : vec3<f32> = txVec28;
        let x_1906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1904.xy, x_1904.z);
        u_xlat7.x = x_1906;
        let x_1909 : f32 = u_xlat8.w;
        let x_1911 : f32 = u_xlat7.x;
        let x_1913 : f32 = u_xlat84;
        u_xlat83 = ((x_1909 * x_1911) + x_1913);
      }
    }
  } else {
    let x_1917 : vec4<f32> = u_xlat5;
    let x_1918 : vec2<f32> = vec2<f32>(x_1917.x, x_1917.y);
    let x_1920 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
    let x_1927 : vec3<f32> = txVec29;
    let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
    u_xlat83 = x_1929;
  }
  let x_1931 : f32 = x_281.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1931) + 1.0f);
  let x_1935 : f32 = u_xlat83;
  let x_1937 : f32 = x_281.x_MainLightShadowParams.x;
  let x_1940 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1935 * x_1937) + x_1940);
  let x_1945 : f32 = u_xlat5.z;
  u_xlatb31 = (0.0f >= x_1945);
  let x_1951 : f32 = u_xlat5.z;
  u_xlatb57.x = (x_1951 >= 1.0f);
  let x_1955 : bool = u_xlatb57.x;
  let x_1956 : bool = u_xlatb31;
  u_xlatb31 = (x_1955 | x_1956);
  let x_1958 : bool = u_xlatb31;
  if (x_1958) {
    x_1960 = 1.0f;
  } else {
    let x_1965 : f32 = u_xlat5.x;
    x_1960 = x_1965;
  }
  let x_1966 : f32 = x_1960;
  u_xlat5.x = x_1966;
  let x_1969 : vec3<f32> = vs_TEXCOORD1;
  let x_1971 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1969 + -(x_1971));
  let x_1974 : vec3<f32> = u_xlat31;
  let x_1975 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1974, x_1975);
  let x_1980 : f32 = u_xlat31.x;
  let x_1982 : f32 = x_281.x_MainLightShadowParams.z;
  let x_1985 : f32 = x_281.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_1980 * x_1982) + x_1985);
  let x_1989 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1989, 0.0f, 1.0f);
  let x_1993 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1993) + 1.0f);
  let x_1997 : f32 = u_xlat57.x;
  let x_1998 : f32 = u_xlat83;
  let x_2001 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1997 * x_1998) + x_2001);
  let x_2011 : f32 = x_2009.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2011 == -1.0f));
  let x_2015 : bool = u_xlatb57.x;
  if (x_2015) {
    let x_2018 : vec3<f32> = vs_TEXCOORD1;
    let x_2021 : vec4<f32> = x_2009.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2018.y, x_2018.y) * vec2<f32>(x_2021.x, x_2021.y));
    let x_2025 : vec4<f32> = x_2009.x_MainLightWorldToLight[0i];
    let x_2027 : vec3<f32> = vs_TEXCOORD1;
    let x_2030 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2025.x, x_2025.y) * vec2<f32>(x_2027.x, x_2027.x)) + x_2030);
    let x_2033 : vec4<f32> = x_2009.x_MainLightWorldToLight[2i];
    let x_2035 : vec3<f32> = vs_TEXCOORD1;
    let x_2038 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(x_2035.z, x_2035.z)) + x_2038);
    let x_2040 : vec2<f32> = u_xlat57;
    let x_2042 : vec4<f32> = x_2009.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2040 + vec2<f32>(x_2042.x, x_2042.y));
    let x_2045 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2045 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2053 : vec2<f32> = u_xlat57;
    let x_2055 : f32 = x_28.x_GlobalMipBias.x;
    let x_2056 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2053, x_2055);
    u_xlat7 = x_2056;
    let x_2058 : f32 = x_2009.x_MainLightCookieTextureFormat;
    let x_2060 : f32 = x_2009.x_MainLightCookieTextureFormat;
    let x_2062 : f32 = x_2009.x_MainLightCookieTextureFormat;
    let x_2064 : f32 = x_2009.x_MainLightCookieTextureFormat;
    let x_2065 : vec4<f32> = vec4<f32>(x_2058, x_2060, x_2062, x_2064);
    let x_2072 : vec4<bool> = (vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2065.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2072.x, x_2072.y);
    let x_2075 : bool = u_xlatb57.y;
    if (x_2075) {
      let x_2080 : f32 = u_xlat7.w;
      x_2076 = x_2080;
    } else {
      let x_2083 : f32 = u_xlat7.x;
      x_2076 = x_2083;
    }
    let x_2084 : f32 = x_2076;
    u_xlat83 = x_2084;
    let x_2086 : bool = u_xlatb57.x;
    if (x_2086) {
      let x_2090 : vec4<f32> = u_xlat7;
      x_2087 = vec3<f32>(x_2090.x, x_2090.y, x_2090.z);
    } else {
      let x_2093 : f32 = u_xlat83;
      x_2087 = vec3<f32>(x_2093, x_2093, x_2093);
    }
    let x_2095 : vec3<f32> = x_2087;
    let x_2096 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2102 : vec4<f32> = u_xlat7;
  let x_2105 : vec4<f32> = x_28.x_MainLightColor;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2102.x, x_2102.y, x_2102.z) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec3<f32> = u_xlat29;
  let x_2112 : vec4<f32> = u_xlat4;
  u_xlat57.x = dot(-(x_2110), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2117 : f32 = u_xlat57.x;
  let x_2119 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2117 + x_2119);
  let x_2122 : vec4<f32> = u_xlat4;
  let x_2124 : vec2<f32> = u_xlat57;
  let x_2128 : vec3<f32> = u_xlat29;
  let x_2130 : vec3<f32> = ((vec3<f32>(x_2122.x, x_2122.y, x_2122.z) * -(vec3<f32>(x_2124.x, x_2124.x, x_2124.x))) + -(x_2128));
  let x_2131 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
  let x_2133 : vec4<f32> = u_xlat4;
  let x_2135 : vec3<f32> = u_xlat29;
  u_xlat57.x = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), x_2135);
  let x_2139 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2139, 0.0f, 1.0f);
  let x_2143 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2143) + 1.0f);
  let x_2148 : f32 = u_xlat57.x;
  let x_2150 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2148 * x_2150);
  let x_2154 : f32 = u_xlat57.x;
  let x_2156 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2154 * x_2156);
  let x_2160 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_2160) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2167 : f32 = u_xlat1.x;
  let x_2168 : f32 = u_xlat83;
  u_xlat1.x = (x_2167 * x_2168);
  let x_2172 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2172 * 6.0f);
  let x_2184 : vec4<f32> = u_xlat8;
  let x_2187 : f32 = u_xlat1.x;
  let x_2188 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2184.x, x_2184.y, x_2184.z), x_2187);
  u_xlat8 = x_2188;
  let x_2190 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2190 + -1.0f);
  let x_2194 : f32 = x_509.unity_SpecCube0_HDR.w;
  let x_2196 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2194 * x_2196) + 1.0f);
  let x_2201 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2201, 0.0f);
  let x_2205 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2205);
  let x_2209 : f32 = u_xlat1.x;
  let x_2211 : f32 = x_509.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2209 * x_2211);
  let x_2215 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2215);
  let x_2219 : f32 = u_xlat1.x;
  let x_2221 : f32 = x_509.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2219 * x_2221);
  let x_2224 : vec4<f32> = u_xlat8;
  let x_2226 : vec3<f32> = u_xlat1;
  let x_2228 : vec3<f32> = (vec3<f32>(x_2224.x, x_2224.y, x_2224.z) * vec3<f32>(x_2226.x, x_2226.x, x_2226.x));
  let x_2229 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec2<f32> = u_xlat53;
  let x_2233 : vec2<f32> = u_xlat53;
  let x_2237 : vec2<f32> = ((vec2<f32>(x_2231.x, x_2231.x) * vec2<f32>(x_2233.x, x_2233.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2238 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_2237.x, x_2238.y, x_2237.y);
  let x_2241 : f32 = u_xlat1.z;
  u_xlat53.x = (1.0f / x_2241);
  let x_2244 : vec4<f32> = u_xlat0;
  let x_2247 : vec2<f32> = u_xlat27;
  let x_2249 : vec3<f32> = (-(vec3<f32>(x_2244.x, x_2244.y, x_2244.z)) + vec3<f32>(x_2247.x, x_2247.x, x_2247.x));
  let x_2250 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
  let x_2252 : vec2<f32> = u_xlat57;
  let x_2254 : vec4<f32> = u_xlat9;
  let x_2257 : vec4<f32> = u_xlat0;
  let x_2259 : vec3<f32> = ((vec3<f32>(x_2252.x, x_2252.x, x_2252.x) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z)) + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2260 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
  let x_2262 : vec2<f32> = u_xlat53;
  let x_2264 : vec4<f32> = u_xlat9;
  let x_2266 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.x, x_2262.x) * vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
  let x_2269 : vec4<f32> = u_xlat8;
  let x_2271 : vec4<f32> = u_xlat9;
  let x_2273 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.y, x_2269.z) * vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
  let x_2274 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
  let x_2276 : vec4<f32> = u_xlat6;
  let x_2278 : vec3<f32> = u_xlat28;
  let x_2280 : vec4<f32> = u_xlat8;
  let x_2282 : vec3<f32> = ((vec3<f32>(x_2276.x, x_2276.y, x_2276.z) * x_2278) + vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2286 : f32 = u_xlat5.x;
  let x_2288 : f32 = x_509.unity_LightData.z;
  u_xlat27.x = (x_2286 * x_2288);
  let x_2291 : vec4<f32> = u_xlat4;
  let x_2294 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat53.x = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2299 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_2299, 0.0f, 1.0f);
  let x_2303 : f32 = u_xlat53.x;
  let x_2305 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2303 * x_2305);
  let x_2308 : vec2<f32> = u_xlat27;
  let x_2310 : vec4<f32> = u_xlat7;
  let x_2312 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.x, x_2308.x) * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2312.x, x_2313.y, x_2312.y, x_2312.z);
  let x_2315 : vec3<f32> = u_xlat29;
  let x_2317 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2319 : vec3<f32> = (x_2315 + vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
  let x_2320 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
  let x_2322 : vec4<f32> = u_xlat7;
  let x_2324 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2322.x, x_2322.y, x_2322.z), vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
  let x_2329 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_2329, 1.17549435e-38f);
  let x_2334 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_2334);
  let x_2337 : vec2<f32> = u_xlat27;
  let x_2339 : vec4<f32> = u_xlat7;
  let x_2341 : vec3<f32> = (vec3<f32>(x_2337.x, x_2337.x, x_2337.x) * vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
  let x_2342 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat4;
  let x_2346 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2344.x, x_2344.y, x_2344.z), vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2351 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2351, 0.0f, 1.0f);
  let x_2355 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2357 : vec4<f32> = u_xlat7;
  u_xlat27.y = dot(vec3<f32>(x_2355.x, x_2355.y, x_2355.z), vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2362 : f32 = u_xlat27.y;
  u_xlat27.y = clamp(x_2362, 0.0f, 1.0f);
  let x_2365 : vec2<f32> = u_xlat27;
  let x_2366 : vec2<f32> = u_xlat27;
  u_xlat27 = (x_2365 * x_2366);
  let x_2369 : f32 = u_xlat27.x;
  let x_2371 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_2369 * x_2371) + 1.00001001358032226562f);
  let x_2377 : f32 = u_xlat27.x;
  let x_2379 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2377 * x_2379);
  let x_2383 : f32 = u_xlat27.y;
  u_xlat53.x = max(x_2383, 0.10000000149011611938f);
  let x_2388 : f32 = u_xlat53.x;
  let x_2390 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2388 * x_2390);
  let x_2393 : f32 = u_xlat79;
  let x_2395 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2393 * x_2395);
  let x_2398 : f32 = u_xlat82;
  let x_2400 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2398 / x_2400);
  let x_2403 : vec4<f32> = u_xlat0;
  let x_2405 : vec2<f32> = u_xlat27;
  let x_2408 : vec3<f32> = u_xlat28;
  let x_2409 : vec3<f32> = ((vec3<f32>(x_2403.x, x_2403.y, x_2403.z) * vec3<f32>(x_2405.x, x_2405.x, x_2405.x)) + x_2408);
  let x_2410 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : vec4<f32> = u_xlat5;
  let x_2414 : vec4<f32> = u_xlat7;
  let x_2416 : vec3<f32> = (vec3<f32>(x_2412.x, x_2412.z, x_2412.w) * vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2416.x, x_2417.y, x_2416.y, x_2416.z);
  let x_2420 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2422 : f32 = x_509.unity_LightData.y;
  u_xlat27.x = min(x_2420, x_2422);
  let x_2427 : f32 = u_xlat27.x;
  u_xlatu27 = bitcast<u32>(i32(x_2427));
  let x_2431 : f32 = u_xlat31.x;
  let x_2434 : f32 = x_281.x_AdditionalShadowFadeParams.x;
  let x_2437 : f32 = x_281.x_AdditionalShadowFadeParams.y;
  u_xlat53.x = ((x_2431 * x_2434) + x_2437);
  let x_2441 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_2441, 0.0f, 1.0f);
  let x_2446 : f32 = x_2009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2448 : f32 = x_2009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2450 : f32 = x_2009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2452 : f32 = x_2009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2453 : vec4<f32> = vec4<f32>(x_2446, x_2448, x_2450, x_2452);
  let x_2460 : vec4<bool> = (vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2453.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2460.x, x_2460.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2472 : u32 = u_xlatu_loop_1;
    let x_2473 : u32 = u_xlatu27;
    if ((x_2472 < x_2473)) {
    } else {
      break;
    }
    let x_2476 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2476 >> 2u);
    let x_2479 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2479 & 3u));
    let x_2482 : u32 = u_xlatu84;
    let x_2485 : vec4<f32> = x_509.unity_LightIndices[bitcast<i32>(x_2482)];
    let x_2495 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2500 : vec4<u32> = indexable[x_2495];
    u_xlat84 = dot(x_2485, bitcast<vec4<f32>>(x_2500));
    let x_2504 : f32 = u_xlat84;
    u_xlati84 = i32(x_2504);
    let x_2506 : vec3<f32> = vs_TEXCOORD1;
    let x_2517 : i32 = u_xlati84;
    let x_2519 : vec4<f32> = x_2516.x_AdditionalLightsPosition[x_2517];
    let x_2522 : i32 = u_xlati84;
    let x_2524 : vec4<f32> = x_2516.x_AdditionalLightsPosition[x_2522];
    let x_2526 : vec3<f32> = ((-(x_2506) * vec3<f32>(x_2519.w, x_2519.w, x_2519.w)) + vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : vec4<f32> = u_xlat9;
    let x_2531 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
    let x_2536 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2536, 0.00006103515625f);
    let x_2542 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2542);
    let x_2544 : f32 = u_xlat85;
    let x_2546 : vec4<f32> = u_xlat9;
    let x_2548 : vec3<f32> = (vec3<f32>(x_2544, x_2544, x_2544) * vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
    let x_2549 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
    let x_2553 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_2553);
    let x_2556 : f32 = u_xlat59.x;
    let x_2557 : i32 = u_xlati84;
    let x_2559 : f32 = x_2516.x_AdditionalLightsAttenuation[x_2557].x;
    u_xlat59.x = (x_2556 * x_2559);
    let x_2563 : f32 = u_xlat59.x;
    let x_2566 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2563) * x_2566) + 1.0f);
    let x_2571 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2571, 0.0f);
    let x_2575 : f32 = u_xlat59.x;
    let x_2577 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2575 * x_2577);
    let x_2581 : f32 = u_xlat59.x;
    let x_2582 : f32 = u_xlat86;
    u_xlat59.x = (x_2581 * x_2582);
    let x_2585 : i32 = u_xlati84;
    let x_2587 : vec4<f32> = x_2516.x_AdditionalLightsSpotDir[x_2585];
    let x_2589 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2587.x, x_2587.y, x_2587.z), vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
    let x_2592 : f32 = u_xlat86;
    let x_2593 : i32 = u_xlati84;
    let x_2595 : f32 = x_2516.x_AdditionalLightsAttenuation[x_2593].z;
    let x_2597 : i32 = u_xlati84;
    let x_2599 : f32 = x_2516.x_AdditionalLightsAttenuation[x_2597].w;
    u_xlat86 = ((x_2592 * x_2595) + x_2599);
    let x_2601 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2601, 0.0f, 1.0f);
    let x_2603 : f32 = u_xlat86;
    let x_2604 : f32 = u_xlat86;
    u_xlat86 = (x_2603 * x_2604);
    let x_2607 : f32 = u_xlat59.x;
    let x_2608 : f32 = u_xlat86;
    u_xlat59.x = (x_2607 * x_2608);
    let x_2613 : i32 = u_xlati84;
    let x_2615 : f32 = x_281.x_AdditionalShadowParams[x_2613].w;
    u_xlati86 = i32(x_2615);
    let x_2618 : i32 = u_xlati86;
    u_xlatb87 = (x_2618 >= 0i);
    let x_2620 : bool = u_xlatb87;
    if (x_2620) {
      let x_2624 : i32 = u_xlati84;
      let x_2626 : f32 = x_281.x_AdditionalShadowParams[x_2624].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2626, x_2626, x_2626, x_2626))));
      let x_2630 : bool = u_xlatb87;
      if (x_2630) {
        let x_2634 : vec4<f32> = u_xlat10;
        let x_2637 : vec4<f32> = u_xlat10;
        let x_2640 : vec4<bool> = (abs(vec4<f32>(x_2634.z, x_2634.z, x_2634.y, x_2634.z)) >= abs(vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.x)));
        let x_2642 : vec3<bool> = vec3<bool>(x_2640.x, x_2640.y, x_2640.z);
        let x_2643 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
        let x_2646 : bool = u_xlatb11.y;
        let x_2648 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2646 & x_2648);
        let x_2650 : vec4<f32> = u_xlat10;
        let x_2653 : vec4<bool> = (-(vec4<f32>(x_2650.z, x_2650.y, x_2650.z, x_2650.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2654 : vec3<bool> = vec3<bool>(x_2653.x, x_2653.y, x_2653.w);
        let x_2655 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2654.x, x_2654.y, x_2655.z, x_2654.z);
        let x_2658 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2658);
        let x_2663 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2663);
        let x_2668 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2668);
        let x_2671 : bool = u_xlatb11.z;
        if (x_2671) {
          let x_2676 : f32 = u_xlat11.y;
          x_2672 = x_2676;
        } else {
          let x_2678 : f32 = u_xlat88;
          x_2672 = x_2678;
        }
        let x_2679 : f32 = x_2672;
        u_xlat88 = x_2679;
        let x_2681 : bool = u_xlatb87;
        if (x_2681) {
          let x_2686 : f32 = u_xlat11.x;
          x_2682 = x_2686;
        } else {
          let x_2688 : f32 = u_xlat88;
          x_2682 = x_2688;
        }
        let x_2689 : f32 = x_2682;
        u_xlat87 = x_2689;
        let x_2690 : i32 = u_xlati84;
        let x_2692 : f32 = x_281.x_AdditionalShadowParams[x_2690].w;
        u_xlat88 = trunc(x_2692);
        let x_2694 : f32 = u_xlat87;
        let x_2695 : f32 = u_xlat88;
        u_xlat87 = (x_2694 + x_2695);
        let x_2697 : f32 = u_xlat87;
        u_xlati86 = i32(x_2697);
      }
      let x_2699 : i32 = u_xlati86;
      u_xlati86 = (x_2699 << bitcast<u32>(2i));
      let x_2701 : vec3<f32> = vs_TEXCOORD1;
      let x_2704 : i32 = u_xlati86;
      let x_2707 : i32 = u_xlati86;
      let x_2711 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_2704 + 1i) / 4i)][((x_2707 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2701.y, x_2701.y, x_2701.y, x_2701.y) * x_2711);
      let x_2713 : i32 = u_xlati86;
      let x_2715 : i32 = u_xlati86;
      let x_2718 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[(x_2713 / 4i)][(x_2715 % 4i)];
      let x_2719 : vec3<f32> = vs_TEXCOORD1;
      let x_2722 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2718 * vec4<f32>(x_2719.x, x_2719.x, x_2719.x, x_2719.x)) + x_2722);
      let x_2724 : i32 = u_xlati86;
      let x_2727 : i32 = u_xlati86;
      let x_2731 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_2724 + 2i) / 4i)][((x_2727 + 2i) % 4i)];
      let x_2732 : vec3<f32> = vs_TEXCOORD1;
      let x_2735 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2731 * vec4<f32>(x_2732.z, x_2732.z, x_2732.z, x_2732.z)) + x_2735);
      let x_2737 : vec4<f32> = u_xlat11;
      let x_2738 : i32 = u_xlati86;
      let x_2741 : i32 = u_xlati86;
      let x_2745 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_2738 + 3i) / 4i)][((x_2741 + 3i) % 4i)];
      u_xlat11 = (x_2737 + x_2745);
      let x_2747 : vec4<f32> = u_xlat11;
      let x_2749 : vec4<f32> = u_xlat11;
      let x_2751 : vec3<f32> = (vec3<f32>(x_2747.x, x_2747.y, x_2747.z) / vec3<f32>(x_2749.w, x_2749.w, x_2749.w));
      let x_2752 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
      let x_2755 : i32 = u_xlati84;
      let x_2757 : f32 = x_281.x_AdditionalShadowParams[x_2755].y;
      u_xlatb86 = (0.0f < x_2757);
      let x_2759 : bool = u_xlatb86;
      if (x_2759) {
        let x_2762 : i32 = u_xlati84;
        let x_2764 : f32 = x_281.x_AdditionalShadowParams[x_2762].y;
        u_xlatb86 = (1.0f == x_2764);
        let x_2766 : bool = u_xlatb86;
        if (x_2766) {
          let x_2769 : vec4<f32> = u_xlat11;
          let x_2772 : vec4<f32> = x_281.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) + x_2772);
          let x_2775 : vec4<f32> = u_xlat12;
          let x_2776 : vec2<f32> = vec2<f32>(x_2775.x, x_2775.y);
          let x_2778 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2776.x, x_2776.y, x_2778);
          let x_2786 : vec3<f32> = txVec30;
          let x_2788 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2786.xy, x_2786.z);
          u_xlat13.x = x_2788;
          let x_2791 : vec4<f32> = u_xlat12;
          let x_2792 : vec2<f32> = vec2<f32>(x_2791.z, x_2791.w);
          let x_2794 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2792.x, x_2792.y, x_2794);
          let x_2801 : vec3<f32> = txVec31;
          let x_2803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2801.xy, x_2801.z);
          u_xlat13.y = x_2803;
          let x_2805 : vec4<f32> = u_xlat11;
          let x_2809 : vec4<f32> = x_281.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y) + x_2809);
          let x_2812 : vec4<f32> = u_xlat12;
          let x_2813 : vec2<f32> = vec2<f32>(x_2812.x, x_2812.y);
          let x_2815 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
          let x_2822 : vec3<f32> = txVec32;
          let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
          u_xlat13.z = x_2824;
          let x_2827 : vec4<f32> = u_xlat12;
          let x_2828 : vec2<f32> = vec2<f32>(x_2827.z, x_2827.w);
          let x_2830 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2828.x, x_2828.y, x_2830);
          let x_2837 : vec3<f32> = txVec33;
          let x_2839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2837.xy, x_2837.z);
          u_xlat13.w = x_2839;
          let x_2841 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2841, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2844 : i32 = u_xlati84;
          let x_2846 : f32 = x_281.x_AdditionalShadowParams[x_2844].y;
          u_xlatb87 = (2.0f == x_2846);
          let x_2848 : bool = u_xlatb87;
          if (x_2848) {
            let x_2851 : vec4<f32> = u_xlat11;
            let x_2855 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_2858 : vec2<f32> = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2855.z, x_2855.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2859 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2858.x, x_2858.y, x_2859.z, x_2859.w);
            let x_2861 : vec4<f32> = u_xlat12;
            let x_2863 : vec2<f32> = floor(vec2<f32>(x_2861.x, x_2861.y));
            let x_2864 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2863.x, x_2863.y, x_2864.z, x_2864.w);
            let x_2867 : vec4<f32> = u_xlat11;
            let x_2870 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_2873 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2867.x, x_2867.y) * vec2<f32>(x_2870.z, x_2870.w)) + -(vec2<f32>(x_2873.x, x_2873.y)));
            let x_2877 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2877.x, x_2877.x, x_2877.y, x_2877.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2880.x, x_2880.x, x_2880.z, x_2880.z) * vec4<f32>(x_2882.x, x_2882.x, x_2882.z, x_2882.z));
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2887 : vec2<f32> = (vec2<f32>(x_2885.y, x_2885.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2887.x, x_2888.y, x_2887.y, x_2888.w);
            let x_2890 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = u_xlat64;
            let x_2895 : vec2<f32> = ((vec2<f32>(x_2890.x, x_2890.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2893));
            let x_2896 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2899 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2899) + vec2<f32>(1.0f, 1.0f));
            let x_2902 : vec2<f32> = u_xlat64;
            let x_2903 : vec2<f32> = min(x_2902, vec2<f32>(0.0f, 0.0f));
            let x_2904 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat15;
            let x_2909 : vec4<f32> = u_xlat15;
            let x_2912 : vec2<f32> = u_xlat66;
            let x_2913 : vec2<f32> = ((-(vec2<f32>(x_2906.x, x_2906.y)) * vec2<f32>(x_2909.x, x_2909.y)) + x_2912);
            let x_2914 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2916 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2916, vec2<f32>(0.0f, 0.0f));
            let x_2918 : vec2<f32> = u_xlat64;
            let x_2920 : vec2<f32> = u_xlat64;
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2918) * x_2920) + vec2<f32>(x_2922.y, x_2922.w));
            let x_2925 : vec4<f32> = u_xlat15;
            let x_2927 : vec2<f32> = (vec2<f32>(x_2925.x, x_2925.y) + vec2<f32>(1.0f, 1.0f));
            let x_2928 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2927.x, x_2927.y, x_2928.z, x_2928.w);
            let x_2930 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2930 + vec2<f32>(1.0f, 1.0f));
            let x_2932 : vec4<f32> = u_xlat14;
            let x_2934 : vec2<f32> = (vec2<f32>(x_2932.x, x_2932.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2935 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
            let x_2937 : vec2<f32> = u_xlat66;
            let x_2938 : vec2<f32> = (x_2937 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2938.x, x_2938.y, x_2939.z, x_2939.w);
            let x_2941 : vec4<f32> = u_xlat15;
            let x_2943 : vec2<f32> = (vec2<f32>(x_2941.x, x_2941.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2944 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec2<f32> = u_xlat64;
            let x_2947 : vec2<f32> = (x_2946 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2948 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2947.x, x_2947.y, x_2948.z, x_2948.w);
            let x_2950 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2950.y, x_2950.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2954 : f32 = u_xlat15.x;
            u_xlat16.z = x_2954;
            let x_2957 : f32 = u_xlat64.x;
            u_xlat16.w = x_2957;
            let x_2960 : f32 = u_xlat17.x;
            u_xlat14.z = x_2960;
            let x_2963 : f32 = u_xlat13.x;
            u_xlat14.w = x_2963;
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2967 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2965.z, x_2965.w, x_2965.x, x_2965.z) + vec4<f32>(x_2967.z, x_2967.w, x_2967.x, x_2967.z));
            let x_2971 : f32 = u_xlat16.y;
            u_xlat15.z = x_2971;
            let x_2974 : f32 = u_xlat64.y;
            u_xlat15.w = x_2974;
            let x_2977 : f32 = u_xlat14.y;
            u_xlat17.z = x_2977;
            let x_2980 : f32 = u_xlat13.z;
            u_xlat17.w = x_2980;
            let x_2982 : vec4<f32> = u_xlat15;
            let x_2984 : vec4<f32> = u_xlat17;
            let x_2986 : vec3<f32> = (vec3<f32>(x_2982.z, x_2982.y, x_2982.w) + vec3<f32>(x_2984.z, x_2984.y, x_2984.w));
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2986.x, x_2986.y, x_2986.z, x_2987.w);
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2991 : vec4<f32> = u_xlat18;
            let x_2993 : vec3<f32> = (vec3<f32>(x_2989.x, x_2989.z, x_2989.w) / vec3<f32>(x_2991.z, x_2991.w, x_2991.y));
            let x_2994 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
            let x_2996 : vec4<f32> = u_xlat14;
            let x_2998 : vec3<f32> = (vec3<f32>(x_2996.x, x_2996.y, x_2996.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
            let x_3001 : vec4<f32> = u_xlat17;
            let x_3003 : vec4<f32> = u_xlat13;
            let x_3005 : vec3<f32> = (vec3<f32>(x_3001.z, x_3001.y, x_3001.w) / vec3<f32>(x_3003.x, x_3003.y, x_3003.z));
            let x_3006 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3005.x, x_3005.y, x_3005.z, x_3006.w);
            let x_3008 : vec4<f32> = u_xlat15;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3008.x, x_3008.y, x_3008.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3011 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat14;
            let x_3016 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3018 : vec3<f32> = (vec3<f32>(x_3013.y, x_3013.x, x_3013.z) * vec3<f32>(x_3016.x, x_3016.x, x_3016.x));
            let x_3019 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3019.w);
            let x_3021 : vec4<f32> = u_xlat15;
            let x_3024 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3026 : vec3<f32> = (vec3<f32>(x_3021.x, x_3021.y, x_3021.z) * vec3<f32>(x_3024.y, x_3024.y, x_3024.y));
            let x_3027 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
            let x_3030 : f32 = u_xlat15.x;
            u_xlat14.w = x_3030;
            let x_3032 : vec4<f32> = u_xlat12;
            let x_3035 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y) * vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y)) + vec4<f32>(x_3038.y, x_3038.w, x_3038.x, x_3038.w));
            let x_3041 : vec4<f32> = u_xlat12;
            let x_3044 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3044.x, x_3044.y)) + vec2<f32>(x_3047.z, x_3047.w));
            let x_3051 : f32 = u_xlat14.y;
            u_xlat15.w = x_3051;
            let x_3053 : vec4<f32> = u_xlat15;
            let x_3054 : vec2<f32> = vec2<f32>(x_3053.y, x_3053.z);
            let x_3055 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3055.x, x_3054.x, x_3055.z, x_3054.y);
            let x_3057 : vec4<f32> = u_xlat12;
            let x_3060 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3063 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3057.x, x_3057.y, x_3057.x, x_3057.y) * vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y)) + vec4<f32>(x_3063.x, x_3063.y, x_3063.z, x_3063.y));
            let x_3066 : vec4<f32> = u_xlat12;
            let x_3069 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y) * vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y)) + vec4<f32>(x_3072.w, x_3072.y, x_3072.w, x_3072.z));
            let x_3075 : vec4<f32> = u_xlat12;
            let x_3078 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.x, x_3081.w, x_3081.z, x_3081.w));
            let x_3084 : vec4<f32> = u_xlat13;
            let x_3086 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3084.x, x_3084.x, x_3084.x, x_3084.y) * vec4<f32>(x_3086.z, x_3086.w, x_3086.y, x_3086.z));
            let x_3089 : vec4<f32> = u_xlat13;
            let x_3091 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3089.y, x_3089.y, x_3089.z, x_3089.z) * x_3091);
            let x_3094 : f32 = u_xlat13.z;
            let x_3096 : f32 = u_xlat18.y;
            u_xlat87 = (x_3094 * x_3096);
            let x_3099 : vec4<f32> = u_xlat16;
            let x_3100 : vec2<f32> = vec2<f32>(x_3099.x, x_3099.y);
            let x_3102 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
            let x_3109 : vec3<f32> = txVec34;
            let x_3111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
            u_xlat88 = x_3111;
            let x_3113 : vec4<f32> = u_xlat16;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.z, x_3113.w);
            let x_3116 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3124 : vec3<f32> = txVec35;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat89 = x_3126;
            let x_3127 : f32 = u_xlat89;
            let x_3129 : f32 = u_xlat19.y;
            u_xlat89 = (x_3127 * x_3129);
            let x_3132 : f32 = u_xlat19.x;
            let x_3133 : f32 = u_xlat88;
            let x_3135 : f32 = u_xlat89;
            u_xlat88 = ((x_3132 * x_3133) + x_3135);
            let x_3138 : vec2<f32> = u_xlat64;
            let x_3140 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec36;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat89 = x_3149;
            let x_3151 : f32 = u_xlat19.z;
            let x_3152 : f32 = u_xlat89;
            let x_3154 : f32 = u_xlat88;
            u_xlat88 = ((x_3151 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat15;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.x, x_3157.y);
            let x_3160 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec37;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat89 = x_3169;
            let x_3171 : f32 = u_xlat19.w;
            let x_3172 : f32 = u_xlat89;
            let x_3174 : f32 = u_xlat88;
            u_xlat88 = ((x_3171 * x_3172) + x_3174);
            let x_3177 : vec4<f32> = u_xlat17;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.x, x_3177.y);
            let x_3180 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec38;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat89 = x_3189;
            let x_3191 : f32 = u_xlat20.x;
            let x_3192 : f32 = u_xlat89;
            let x_3194 : f32 = u_xlat88;
            u_xlat88 = ((x_3191 * x_3192) + x_3194);
            let x_3197 : vec4<f32> = u_xlat17;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.z, x_3197.w);
            let x_3200 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec39;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat89 = x_3209;
            let x_3211 : f32 = u_xlat20.y;
            let x_3212 : f32 = u_xlat89;
            let x_3214 : f32 = u_xlat88;
            u_xlat88 = ((x_3211 * x_3212) + x_3214);
            let x_3217 : vec4<f32> = u_xlat15;
            let x_3218 : vec2<f32> = vec2<f32>(x_3217.z, x_3217.w);
            let x_3220 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3218.x, x_3218.y, x_3220);
            let x_3227 : vec3<f32> = txVec40;
            let x_3229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3227.xy, x_3227.z);
            u_xlat89 = x_3229;
            let x_3231 : f32 = u_xlat20.z;
            let x_3232 : f32 = u_xlat89;
            let x_3234 : f32 = u_xlat88;
            u_xlat88 = ((x_3231 * x_3232) + x_3234);
            let x_3237 : vec4<f32> = u_xlat14;
            let x_3238 : vec2<f32> = vec2<f32>(x_3237.x, x_3237.y);
            let x_3240 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3247 : vec3<f32> = txVec41;
            let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
            u_xlat89 = x_3249;
            let x_3251 : f32 = u_xlat20.w;
            let x_3252 : f32 = u_xlat89;
            let x_3254 : f32 = u_xlat88;
            u_xlat88 = ((x_3251 * x_3252) + x_3254);
            let x_3257 : vec4<f32> = u_xlat14;
            let x_3258 : vec2<f32> = vec2<f32>(x_3257.z, x_3257.w);
            let x_3260 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3258.x, x_3258.y, x_3260);
            let x_3267 : vec3<f32> = txVec42;
            let x_3269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3267.xy, x_3267.z);
            u_xlat89 = x_3269;
            let x_3270 : f32 = u_xlat87;
            let x_3271 : f32 = u_xlat89;
            let x_3273 : f32 = u_xlat88;
            u_xlat86 = ((x_3270 * x_3271) + x_3273);
          } else {
            let x_3276 : vec4<f32> = u_xlat11;
            let x_3279 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3282 : vec2<f32> = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3279.z, x_3279.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3283 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3282.x, x_3282.y, x_3283.z, x_3283.w);
            let x_3285 : vec4<f32> = u_xlat12;
            let x_3287 : vec2<f32> = floor(vec2<f32>(x_3285.x, x_3285.y));
            let x_3288 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3287.x, x_3287.y, x_3288.z, x_3288.w);
            let x_3290 : vec4<f32> = u_xlat11;
            let x_3293 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3290.x, x_3290.y) * vec2<f32>(x_3293.z, x_3293.w)) + -(vec2<f32>(x_3296.x, x_3296.y)));
            let x_3300 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3300.x, x_3300.x, x_3300.y, x_3300.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3303 : vec4<f32> = u_xlat13;
            let x_3305 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3303.x, x_3303.x, x_3303.z, x_3303.z) * vec4<f32>(x_3305.x, x_3305.x, x_3305.z, x_3305.z));
            let x_3308 : vec4<f32> = u_xlat14;
            let x_3310 : vec2<f32> = (vec2<f32>(x_3308.y, x_3308.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3311 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3311.x, x_3310.x, x_3311.z, x_3310.y);
            let x_3313 : vec4<f32> = u_xlat14;
            let x_3316 : vec2<f32> = u_xlat64;
            let x_3318 : vec2<f32> = ((vec2<f32>(x_3313.x, x_3313.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3316));
            let x_3319 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3318.x, x_3319.y, x_3318.y, x_3319.w);
            let x_3321 : vec2<f32> = u_xlat64;
            let x_3323 : vec2<f32> = (-(x_3321) + vec2<f32>(1.0f, 1.0f));
            let x_3324 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3323.x, x_3323.y, x_3324.z, x_3324.w);
            let x_3326 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3326, vec2<f32>(0.0f, 0.0f));
            let x_3328 : vec2<f32> = u_xlat66;
            let x_3330 : vec2<f32> = u_xlat66;
            let x_3332 : vec4<f32> = u_xlat14;
            let x_3334 : vec2<f32> = ((-(x_3328) * x_3330) + vec2<f32>(x_3332.x, x_3332.y));
            let x_3335 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
            let x_3337 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3337, vec2<f32>(0.0f, 0.0f));
            let x_3340 : vec2<f32> = u_xlat66;
            let x_3342 : vec2<f32> = u_xlat66;
            let x_3344 : vec4<f32> = u_xlat13;
            let x_3346 : vec2<f32> = ((-(x_3340) * x_3342) + vec2<f32>(x_3344.y, x_3344.w));
            let x_3347 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3346.x, x_3347.y, x_3346.y);
            let x_3349 : vec4<f32> = u_xlat14;
            let x_3351 : vec2<f32> = (vec2<f32>(x_3349.x, x_3349.y) + vec2<f32>(2.0f, 2.0f));
            let x_3352 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3351.x, x_3351.y, x_3352.z, x_3352.w);
            let x_3354 : vec3<f32> = u_xlat39;
            let x_3356 : vec2<f32> = (vec2<f32>(x_3354.x, x_3354.z) + vec2<f32>(2.0f, 2.0f));
            let x_3357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3357.x, x_3356.x, x_3357.z, x_3356.y);
            let x_3360 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3360 * 0.08163200318813323975f);
            let x_3363 : vec4<f32> = u_xlat13;
            let x_3365 : vec3<f32> = (vec3<f32>(x_3363.z, x_3363.x, x_3363.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3366 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3365.x, x_3365.y, x_3365.z, x_3366.w);
            let x_3368 : vec4<f32> = u_xlat14;
            let x_3370 : vec2<f32> = (vec2<f32>(x_3368.x, x_3368.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3371 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3370.x, x_3370.y, x_3371.z, x_3371.w);
            let x_3374 : f32 = u_xlat17.y;
            u_xlat16.x = x_3374;
            let x_3376 : vec2<f32> = u_xlat64;
            let x_3379 : vec2<f32> = ((vec2<f32>(x_3376.x, x_3376.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3380 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3380.x, x_3379.x, x_3380.z, x_3379.y);
            let x_3382 : vec2<f32> = u_xlat64;
            let x_3385 : vec2<f32> = ((vec2<f32>(x_3382.x, x_3382.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3385.x, x_3386.y, x_3385.y, x_3386.w);
            let x_3389 : f32 = u_xlat13.x;
            u_xlat14.y = x_3389;
            let x_3392 : f32 = u_xlat15.y;
            u_xlat14.w = x_3392;
            let x_3394 : vec4<f32> = u_xlat14;
            let x_3395 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3394 + x_3395);
            let x_3397 : vec2<f32> = u_xlat64;
            let x_3400 : vec2<f32> = ((vec2<f32>(x_3397.y, x_3397.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3401 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3401.x, x_3400.x, x_3401.z, x_3400.y);
            let x_3403 : vec2<f32> = u_xlat64;
            let x_3406 : vec2<f32> = ((vec2<f32>(x_3403.y, x_3403.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3407 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3406.x, x_3407.y, x_3406.y, x_3407.w);
            let x_3410 : f32 = u_xlat13.y;
            u_xlat15.y = x_3410;
            let x_3412 : vec4<f32> = u_xlat15;
            let x_3413 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3412 + x_3413);
            let x_3415 : vec4<f32> = u_xlat14;
            let x_3416 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3415 / x_3416);
            let x_3418 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3418 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3420 : vec4<f32> = u_xlat15;
            let x_3421 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3420 / x_3421);
            let x_3423 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3423 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3425 : vec4<f32> = u_xlat14;
            let x_3428 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3425.w, x_3425.x, x_3425.y, x_3425.z) * vec4<f32>(x_3428.x, x_3428.x, x_3428.x, x_3428.x));
            let x_3431 : vec4<f32> = u_xlat15;
            let x_3434 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3431.x, x_3431.w, x_3431.y, x_3431.z) * vec4<f32>(x_3434.y, x_3434.y, x_3434.y, x_3434.y));
            let x_3437 : vec4<f32> = u_xlat14;
            let x_3438 : vec3<f32> = vec3<f32>(x_3437.y, x_3437.z, x_3437.w);
            let x_3439 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3438.x, x_3439.y, x_3438.y, x_3438.z);
            let x_3442 : f32 = u_xlat15.x;
            u_xlat17.y = x_3442;
            let x_3444 : vec4<f32> = u_xlat12;
            let x_3447 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3450 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3444.x, x_3444.y, x_3444.x, x_3444.y) * vec4<f32>(x_3447.x, x_3447.y, x_3447.x, x_3447.y)) + vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3450.y));
            let x_3453 : vec4<f32> = u_xlat12;
            let x_3456 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3459 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3453.x, x_3453.y) * vec2<f32>(x_3456.x, x_3456.y)) + vec2<f32>(x_3459.w, x_3459.y));
            let x_3463 : f32 = u_xlat17.y;
            u_xlat14.y = x_3463;
            let x_3466 : f32 = u_xlat15.z;
            u_xlat17.y = x_3466;
            let x_3468 : vec4<f32> = u_xlat12;
            let x_3471 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3474 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3468.x, x_3468.y, x_3468.x, x_3468.y) * vec4<f32>(x_3471.x, x_3471.y, x_3471.x, x_3471.y)) + vec4<f32>(x_3474.x, x_3474.y, x_3474.z, x_3474.y));
            let x_3477 : vec4<f32> = u_xlat12;
            let x_3480 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3483 : vec4<f32> = u_xlat17;
            let x_3485 : vec2<f32> = ((vec2<f32>(x_3477.x, x_3477.y) * vec2<f32>(x_3480.x, x_3480.y)) + vec2<f32>(x_3483.w, x_3483.y));
            let x_3486 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3485.x, x_3485.y, x_3486.z, x_3486.w);
            let x_3489 : f32 = u_xlat17.y;
            u_xlat14.z = x_3489;
            let x_3492 : vec4<f32> = u_xlat12;
            let x_3495 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3498 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3492.x, x_3492.y, x_3492.x, x_3492.y) * vec4<f32>(x_3495.x, x_3495.y, x_3495.x, x_3495.y)) + vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.z));
            let x_3502 : f32 = u_xlat15.w;
            u_xlat17.y = x_3502;
            let x_3505 : vec4<f32> = u_xlat12;
            let x_3508 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3511 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y) * vec4<f32>(x_3508.x, x_3508.y, x_3508.x, x_3508.y)) + vec4<f32>(x_3511.x, x_3511.y, x_3511.z, x_3511.y));
            let x_3515 : vec4<f32> = u_xlat12;
            let x_3518 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3515.x, x_3515.y) * vec2<f32>(x_3518.x, x_3518.y)) + vec2<f32>(x_3521.w, x_3521.y));
            let x_3525 : f32 = u_xlat17.y;
            u_xlat14.w = x_3525;
            let x_3528 : vec4<f32> = u_xlat12;
            let x_3531 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3534 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3528.x, x_3528.y) * vec2<f32>(x_3531.x, x_3531.y)) + vec2<f32>(x_3534.x, x_3534.w));
            let x_3537 : vec4<f32> = u_xlat17;
            let x_3538 : vec3<f32> = vec3<f32>(x_3537.x, x_3537.z, x_3537.w);
            let x_3539 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3538.x, x_3539.y, x_3538.y, x_3538.z);
            let x_3541 : vec4<f32> = u_xlat12;
            let x_3544 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3547 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3541.x, x_3541.y, x_3541.x, x_3541.y) * vec4<f32>(x_3544.x, x_3544.y, x_3544.x, x_3544.y)) + vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3547.y));
            let x_3550 : vec4<f32> = u_xlat12;
            let x_3553 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3556 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3550.x, x_3550.y) * vec2<f32>(x_3553.x, x_3553.y)) + vec2<f32>(x_3556.w, x_3556.y));
            let x_3560 : f32 = u_xlat14.x;
            u_xlat15.x = x_3560;
            let x_3562 : vec4<f32> = u_xlat12;
            let x_3565 : vec4<f32> = x_281.x_AdditionalShadowmapSize;
            let x_3568 : vec4<f32> = u_xlat15;
            let x_3570 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.y) * vec2<f32>(x_3565.x, x_3565.y)) + vec2<f32>(x_3568.x, x_3568.y));
            let x_3571 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3570.x, x_3570.y, x_3571.z, x_3571.w);
            let x_3574 : vec4<f32> = u_xlat13;
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3574.x, x_3574.x, x_3574.x, x_3574.x) * x_3576);
            let x_3579 : vec4<f32> = u_xlat13;
            let x_3581 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3579.y, x_3579.y, x_3579.y, x_3579.y) * x_3581);
            let x_3584 : vec4<f32> = u_xlat13;
            let x_3586 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3584.z, x_3584.z, x_3584.z, x_3584.z) * x_3586);
            let x_3588 : vec4<f32> = u_xlat13;
            let x_3590 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3588.w, x_3588.w, x_3588.w, x_3588.w) * x_3590);
            let x_3593 : vec4<f32> = u_xlat18;
            let x_3594 : vec2<f32> = vec2<f32>(x_3593.x, x_3593.y);
            let x_3596 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3594.x, x_3594.y, x_3596);
            let x_3603 : vec3<f32> = txVec43;
            let x_3605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3603.xy, x_3603.z);
            u_xlat87 = x_3605;
            let x_3607 : vec4<f32> = u_xlat18;
            let x_3608 : vec2<f32> = vec2<f32>(x_3607.z, x_3607.w);
            let x_3610 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3608.x, x_3608.y, x_3610);
            let x_3617 : vec3<f32> = txVec44;
            let x_3619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3617.xy, x_3617.z);
            u_xlat88 = x_3619;
            let x_3620 : f32 = u_xlat88;
            let x_3622 : f32 = u_xlat23.y;
            u_xlat88 = (x_3620 * x_3622);
            let x_3625 : f32 = u_xlat23.x;
            let x_3626 : f32 = u_xlat87;
            let x_3628 : f32 = u_xlat88;
            u_xlat87 = ((x_3625 * x_3626) + x_3628);
            let x_3631 : vec2<f32> = u_xlat64;
            let x_3633 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec45;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat88 = x_3642;
            let x_3644 : f32 = u_xlat23.z;
            let x_3645 : f32 = u_xlat88;
            let x_3647 : f32 = u_xlat87;
            u_xlat87 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat21;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.x, x_3650.y);
            let x_3653 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec46;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat88 = x_3662;
            let x_3664 : f32 = u_xlat23.w;
            let x_3665 : f32 = u_xlat88;
            let x_3667 : f32 = u_xlat87;
            u_xlat87 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat19;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.x, x_3670.y);
            let x_3673 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec47;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat88 = x_3682;
            let x_3684 : f32 = u_xlat24.x;
            let x_3685 : f32 = u_xlat88;
            let x_3687 : f32 = u_xlat87;
            u_xlat87 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec4<f32> = u_xlat19;
            let x_3691 : vec2<f32> = vec2<f32>(x_3690.z, x_3690.w);
            let x_3693 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec48;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat88 = x_3702;
            let x_3704 : f32 = u_xlat24.y;
            let x_3705 : f32 = u_xlat88;
            let x_3707 : f32 = u_xlat87;
            u_xlat87 = ((x_3704 * x_3705) + x_3707);
            let x_3710 : vec4<f32> = u_xlat20;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.x, x_3710.y);
            let x_3713 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec49;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat88 = x_3722;
            let x_3724 : f32 = u_xlat24.z;
            let x_3725 : f32 = u_xlat88;
            let x_3727 : f32 = u_xlat87;
            u_xlat87 = ((x_3724 * x_3725) + x_3727);
            let x_3730 : vec4<f32> = u_xlat21;
            let x_3731 : vec2<f32> = vec2<f32>(x_3730.z, x_3730.w);
            let x_3733 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3731.x, x_3731.y, x_3733);
            let x_3740 : vec3<f32> = txVec50;
            let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
            u_xlat88 = x_3742;
            let x_3744 : f32 = u_xlat24.w;
            let x_3745 : f32 = u_xlat88;
            let x_3747 : f32 = u_xlat87;
            u_xlat87 = ((x_3744 * x_3745) + x_3747);
            let x_3750 : vec4<f32> = u_xlat22;
            let x_3751 : vec2<f32> = vec2<f32>(x_3750.x, x_3750.y);
            let x_3753 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec51;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat88 = x_3762;
            let x_3764 : f32 = u_xlat25.x;
            let x_3765 : f32 = u_xlat88;
            let x_3767 : f32 = u_xlat87;
            u_xlat87 = ((x_3764 * x_3765) + x_3767);
            let x_3770 : vec4<f32> = u_xlat22;
            let x_3771 : vec2<f32> = vec2<f32>(x_3770.z, x_3770.w);
            let x_3773 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3771.x, x_3771.y, x_3773);
            let x_3780 : vec3<f32> = txVec52;
            let x_3782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3780.xy, x_3780.z);
            u_xlat88 = x_3782;
            let x_3784 : f32 = u_xlat25.y;
            let x_3785 : f32 = u_xlat88;
            let x_3787 : f32 = u_xlat87;
            u_xlat87 = ((x_3784 * x_3785) + x_3787);
            let x_3790 : vec2<f32> = u_xlat40;
            let x_3792 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3790.x, x_3790.y, x_3792);
            let x_3799 : vec3<f32> = txVec53;
            let x_3801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3799.xy, x_3799.z);
            u_xlat88 = x_3801;
            let x_3803 : f32 = u_xlat25.z;
            let x_3804 : f32 = u_xlat88;
            let x_3806 : f32 = u_xlat87;
            u_xlat87 = ((x_3803 * x_3804) + x_3806);
            let x_3809 : vec2<f32> = u_xlat72;
            let x_3811 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3809.x, x_3809.y, x_3811);
            let x_3818 : vec3<f32> = txVec54;
            let x_3820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3818.xy, x_3818.z);
            u_xlat88 = x_3820;
            let x_3822 : f32 = u_xlat25.w;
            let x_3823 : f32 = u_xlat88;
            let x_3825 : f32 = u_xlat87;
            u_xlat87 = ((x_3822 * x_3823) + x_3825);
            let x_3828 : vec4<f32> = u_xlat17;
            let x_3829 : vec2<f32> = vec2<f32>(x_3828.x, x_3828.y);
            let x_3831 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec55;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat88 = x_3840;
            let x_3842 : f32 = u_xlat13.x;
            let x_3843 : f32 = u_xlat88;
            let x_3845 : f32 = u_xlat87;
            u_xlat87 = ((x_3842 * x_3843) + x_3845);
            let x_3848 : vec4<f32> = u_xlat17;
            let x_3849 : vec2<f32> = vec2<f32>(x_3848.z, x_3848.w);
            let x_3851 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
            let x_3858 : vec3<f32> = txVec56;
            let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
            u_xlat88 = x_3860;
            let x_3862 : f32 = u_xlat13.y;
            let x_3863 : f32 = u_xlat88;
            let x_3865 : f32 = u_xlat87;
            u_xlat87 = ((x_3862 * x_3863) + x_3865);
            let x_3868 : vec2<f32> = u_xlat67;
            let x_3870 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3868.x, x_3868.y, x_3870);
            let x_3877 : vec3<f32> = txVec57;
            let x_3879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3877.xy, x_3877.z);
            u_xlat88 = x_3879;
            let x_3881 : f32 = u_xlat13.z;
            let x_3882 : f32 = u_xlat88;
            let x_3884 : f32 = u_xlat87;
            u_xlat87 = ((x_3881 * x_3882) + x_3884);
            let x_3887 : vec4<f32> = u_xlat12;
            let x_3888 : vec2<f32> = vec2<f32>(x_3887.x, x_3887.y);
            let x_3890 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3888.x, x_3888.y, x_3890);
            let x_3897 : vec3<f32> = txVec58;
            let x_3899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3897.xy, x_3897.z);
            u_xlat88 = x_3899;
            let x_3901 : f32 = u_xlat13.w;
            let x_3902 : f32 = u_xlat88;
            let x_3904 : f32 = u_xlat87;
            u_xlat86 = ((x_3901 * x_3902) + x_3904);
          }
        }
      } else {
        let x_3908 : vec4<f32> = u_xlat11;
        let x_3909 : vec2<f32> = vec2<f32>(x_3908.x, x_3908.y);
        let x_3911 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3909.x, x_3909.y, x_3911);
        let x_3918 : vec3<f32> = txVec59;
        let x_3920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3918.xy, x_3918.z);
        u_xlat86 = x_3920;
      }
      let x_3921 : i32 = u_xlati84;
      let x_3923 : f32 = x_281.x_AdditionalShadowParams[x_3921].x;
      u_xlat87 = (1.0f + -(x_3923));
      let x_3926 : f32 = u_xlat86;
      let x_3927 : i32 = u_xlati84;
      let x_3929 : f32 = x_281.x_AdditionalShadowParams[x_3927].x;
      let x_3931 : f32 = u_xlat87;
      u_xlat86 = ((x_3926 * x_3929) + x_3931);
      let x_3934 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3934);
      let x_3938 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3938 >= 1.0f);
      let x_3940 : bool = u_xlatb87;
      let x_3941 : bool = u_xlatb88;
      u_xlatb87 = (x_3940 | x_3941);
      let x_3943 : bool = u_xlatb87;
      let x_3944 : f32 = u_xlat86;
      u_xlat86 = select(x_3944, 1.0f, x_3943);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3947 : f32 = u_xlat86;
    u_xlat87 = (-(x_3947) + 1.0f);
    let x_3951 : f32 = u_xlat53.x;
    let x_3952 : f32 = u_xlat87;
    let x_3954 : f32 = u_xlat86;
    u_xlat86 = ((x_3951 * x_3952) + x_3954);
    let x_3957 : i32 = u_xlati84;
    u_xlati87 = (1i << bitcast<u32>((x_3957 & 31i)));
    let x_3961 : i32 = u_xlati87;
    let x_3964 : f32 = x_2009.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3961) & bitcast<u32>(x_3964)));
    let x_3968 : i32 = u_xlati87;
    if ((x_3968 != 0i)) {
      let x_3972 : i32 = u_xlati84;
      let x_3974 : f32 = x_2009.x_AdditionalLightsLightTypes[x_3972].el;
      u_xlati87 = i32(x_3974);
      let x_3977 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3977 != 0i));
      let x_3981 : i32 = u_xlati84;
      u_xlati11 = (x_3981 << bitcast<u32>(2i));
      let x_3983 : i32 = u_xlati88;
      if ((x_3983 != 0i)) {
        let x_3988 : vec3<f32> = vs_TEXCOORD1;
        let x_3990 : i32 = u_xlati11;
        let x_3993 : i32 = u_xlati11;
        let x_3997 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_3990 + 1i) / 4i)][((x_3993 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3988.y, x_3988.y, x_3988.y) * vec3<f32>(x_3997.x, x_3997.y, x_3997.w));
        let x_4000 : i32 = u_xlati11;
        let x_4002 : i32 = u_xlati11;
        let x_4005 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[(x_4000 / 4i)][(x_4002 % 4i)];
        let x_4007 : vec3<f32> = vs_TEXCOORD1;
        let x_4010 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4005.x, x_4005.y, x_4005.w) * vec3<f32>(x_4007.x, x_4007.x, x_4007.x)) + x_4010);
        let x_4012 : i32 = u_xlati11;
        let x_4015 : i32 = u_xlati11;
        let x_4019 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4012 + 2i) / 4i)][((x_4015 + 2i) % 4i)];
        let x_4021 : vec3<f32> = vs_TEXCOORD1;
        let x_4024 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4019.x, x_4019.y, x_4019.w) * vec3<f32>(x_4021.z, x_4021.z, x_4021.z)) + x_4024);
        let x_4026 : vec3<f32> = u_xlat37;
        let x_4027 : i32 = u_xlati11;
        let x_4030 : i32 = u_xlati11;
        let x_4034 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4027 + 3i) / 4i)][((x_4030 + 3i) % 4i)];
        u_xlat37 = (x_4026 + vec3<f32>(x_4034.x, x_4034.y, x_4034.w));
        let x_4037 : vec3<f32> = u_xlat37;
        let x_4039 : vec3<f32> = u_xlat37;
        let x_4041 : vec2<f32> = (vec2<f32>(x_4037.x, x_4037.y) / vec2<f32>(x_4039.z, x_4039.z));
        let x_4042 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4041.x, x_4041.y, x_4042.z);
        let x_4044 : vec3<f32> = u_xlat37;
        let x_4047 : vec2<f32> = ((vec2<f32>(x_4044.x, x_4044.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4048 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4047.x, x_4047.y, x_4048.z);
        let x_4050 : vec3<f32> = u_xlat37;
        let x_4054 : vec2<f32> = clamp(vec2<f32>(x_4050.x, x_4050.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4055 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4054.x, x_4054.y, x_4055.z);
        let x_4057 : i32 = u_xlati84;
        let x_4059 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4057];
        let x_4061 : vec3<f32> = u_xlat37;
        let x_4064 : i32 = u_xlati84;
        let x_4066 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4064];
        let x_4068 : vec2<f32> = ((vec2<f32>(x_4059.x, x_4059.y) * vec2<f32>(x_4061.x, x_4061.y)) + vec2<f32>(x_4066.z, x_4066.w));
        let x_4069 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4068.x, x_4068.y, x_4069.z);
      } else {
        let x_4072 : i32 = u_xlati87;
        u_xlatb87 = (x_4072 == 1i);
        let x_4074 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4074);
        let x_4076 : i32 = u_xlati87;
        if ((x_4076 != 0i)) {
          let x_4080 : vec3<f32> = vs_TEXCOORD1;
          let x_4082 : i32 = u_xlati11;
          let x_4085 : i32 = u_xlati11;
          let x_4089 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4082 + 1i) / 4i)][((x_4085 + 1i) % 4i)];
          let x_4091 : vec2<f32> = (vec2<f32>(x_4080.y, x_4080.y) * vec2<f32>(x_4089.x, x_4089.y));
          let x_4092 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4091.x, x_4091.y, x_4092.z, x_4092.w);
          let x_4094 : i32 = u_xlati11;
          let x_4096 : i32 = u_xlati11;
          let x_4099 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[(x_4094 / 4i)][(x_4096 % 4i)];
          let x_4101 : vec3<f32> = vs_TEXCOORD1;
          let x_4104 : vec4<f32> = u_xlat12;
          let x_4106 : vec2<f32> = ((vec2<f32>(x_4099.x, x_4099.y) * vec2<f32>(x_4101.x, x_4101.x)) + vec2<f32>(x_4104.x, x_4104.y));
          let x_4107 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4106.x, x_4106.y, x_4107.z, x_4107.w);
          let x_4109 : i32 = u_xlati11;
          let x_4112 : i32 = u_xlati11;
          let x_4116 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4109 + 2i) / 4i)][((x_4112 + 2i) % 4i)];
          let x_4118 : vec3<f32> = vs_TEXCOORD1;
          let x_4121 : vec4<f32> = u_xlat12;
          let x_4123 : vec2<f32> = ((vec2<f32>(x_4116.x, x_4116.y) * vec2<f32>(x_4118.z, x_4118.z)) + vec2<f32>(x_4121.x, x_4121.y));
          let x_4124 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4123.x, x_4123.y, x_4124.z, x_4124.w);
          let x_4126 : vec4<f32> = u_xlat12;
          let x_4128 : i32 = u_xlati11;
          let x_4131 : i32 = u_xlati11;
          let x_4135 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4128 + 3i) / 4i)][((x_4131 + 3i) % 4i)];
          let x_4137 : vec2<f32> = (vec2<f32>(x_4126.x, x_4126.y) + vec2<f32>(x_4135.x, x_4135.y));
          let x_4138 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4137.x, x_4137.y, x_4138.z, x_4138.w);
          let x_4140 : vec4<f32> = u_xlat12;
          let x_4143 : vec2<f32> = ((vec2<f32>(x_4140.x, x_4140.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4144 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4143.x, x_4143.y, x_4144.z, x_4144.w);
          let x_4146 : vec4<f32> = u_xlat12;
          let x_4148 : vec2<f32> = fract(vec2<f32>(x_4146.x, x_4146.y));
          let x_4149 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4148.x, x_4148.y, x_4149.z, x_4149.w);
          let x_4151 : i32 = u_xlati84;
          let x_4153 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4151];
          let x_4155 : vec4<f32> = u_xlat12;
          let x_4158 : i32 = u_xlati84;
          let x_4160 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4158];
          let x_4162 : vec2<f32> = ((vec2<f32>(x_4153.x, x_4153.y) * vec2<f32>(x_4155.x, x_4155.y)) + vec2<f32>(x_4160.z, x_4160.w));
          let x_4163 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4162.x, x_4162.y, x_4163.z);
        } else {
          let x_4166 : vec3<f32> = vs_TEXCOORD1;
          let x_4168 : i32 = u_xlati11;
          let x_4171 : i32 = u_xlati11;
          let x_4175 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4168 + 1i) / 4i)][((x_4171 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4166.y, x_4166.y, x_4166.y, x_4166.y) * x_4175);
          let x_4177 : i32 = u_xlati11;
          let x_4179 : i32 = u_xlati11;
          let x_4182 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[(x_4177 / 4i)][(x_4179 % 4i)];
          let x_4183 : vec3<f32> = vs_TEXCOORD1;
          let x_4186 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4182 * vec4<f32>(x_4183.x, x_4183.x, x_4183.x, x_4183.x)) + x_4186);
          let x_4188 : i32 = u_xlati11;
          let x_4191 : i32 = u_xlati11;
          let x_4195 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4188 + 2i) / 4i)][((x_4191 + 2i) % 4i)];
          let x_4196 : vec3<f32> = vs_TEXCOORD1;
          let x_4199 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4195 * vec4<f32>(x_4196.z, x_4196.z, x_4196.z, x_4196.z)) + x_4199);
          let x_4201 : vec4<f32> = u_xlat12;
          let x_4202 : i32 = u_xlati11;
          let x_4205 : i32 = u_xlati11;
          let x_4209 : vec4<f32> = x_2009.x_AdditionalLightsWorldToLights[((x_4202 + 3i) / 4i)][((x_4205 + 3i) % 4i)];
          u_xlat12 = (x_4201 + x_4209);
          let x_4211 : vec4<f32> = u_xlat12;
          let x_4213 : vec4<f32> = u_xlat12;
          let x_4215 : vec3<f32> = (vec3<f32>(x_4211.x, x_4211.y, x_4211.z) / vec3<f32>(x_4213.w, x_4213.w, x_4213.w));
          let x_4216 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4215.x, x_4215.y, x_4215.z, x_4216.w);
          let x_4218 : vec4<f32> = u_xlat12;
          let x_4220 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4218.x, x_4218.y, x_4218.z), vec3<f32>(x_4220.x, x_4220.y, x_4220.z));
          let x_4223 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4223);
          let x_4225 : f32 = u_xlat87;
          let x_4227 : vec4<f32> = u_xlat12;
          let x_4229 : vec3<f32> = (vec3<f32>(x_4225, x_4225, x_4225) * vec3<f32>(x_4227.x, x_4227.y, x_4227.z));
          let x_4230 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4229.x, x_4229.y, x_4229.z, x_4230.w);
          let x_4232 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4232.x, x_4232.y, x_4232.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4237 : f32 = u_xlat87;
          u_xlat87 = max(x_4237, 0.00000099999999747524f);
          let x_4240 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4240);
          let x_4242 : f32 = u_xlat87;
          let x_4244 : vec4<f32> = u_xlat12;
          let x_4246 : vec3<f32> = (vec3<f32>(x_4242, x_4242, x_4242) * vec3<f32>(x_4244.z, x_4244.x, x_4244.y));
          let x_4247 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4246.x, x_4246.y, x_4246.z, x_4247.w);
          let x_4250 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4250);
          let x_4254 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4254, 0.0f, 1.0f);
          let x_4257 : vec4<f32> = u_xlat13;
          let x_4259 : vec4<bool> = (vec4<f32>(x_4257.y, x_4257.y, x_4257.y, x_4257.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4260 : vec2<bool> = vec2<bool>(x_4259.x, x_4259.w);
          let x_4261 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4260.x, x_4261.y, x_4261.z, x_4260.y);
          let x_4264 : bool = u_xlatb11.x;
          if (x_4264) {
            let x_4269 : f32 = u_xlat13.x;
            x_4265 = x_4269;
          } else {
            let x_4272 : f32 = u_xlat13.x;
            x_4265 = -(x_4272);
          }
          let x_4274 : f32 = x_4265;
          u_xlat11.x = x_4274;
          let x_4277 : bool = u_xlatb11.w;
          if (x_4277) {
            let x_4282 : f32 = u_xlat13.x;
            x_4278 = x_4282;
          } else {
            let x_4285 : f32 = u_xlat13.x;
            x_4278 = -(x_4285);
          }
          let x_4287 : f32 = x_4278;
          u_xlat11.w = x_4287;
          let x_4289 : vec4<f32> = u_xlat12;
          let x_4291 : f32 = u_xlat87;
          let x_4294 : vec4<f32> = u_xlat11;
          let x_4296 : vec2<f32> = ((vec2<f32>(x_4289.x, x_4289.y) * vec2<f32>(x_4291, x_4291)) + vec2<f32>(x_4294.x, x_4294.w));
          let x_4297 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4296.x, x_4297.y, x_4297.z, x_4296.y);
          let x_4299 : vec4<f32> = u_xlat11;
          let x_4302 : vec2<f32> = ((vec2<f32>(x_4299.x, x_4299.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4303 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4302.x, x_4303.y, x_4303.z, x_4302.y);
          let x_4305 : vec4<f32> = u_xlat11;
          let x_4309 : vec2<f32> = clamp(vec2<f32>(x_4305.x, x_4305.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4310 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4309.x, x_4310.y, x_4310.z, x_4309.y);
          let x_4312 : i32 = u_xlati84;
          let x_4314 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4312];
          let x_4316 : vec4<f32> = u_xlat11;
          let x_4319 : i32 = u_xlati84;
          let x_4321 : vec4<f32> = x_2009.x_AdditionalLightsCookieAtlasUVRects[x_4319];
          let x_4323 : vec2<f32> = ((vec2<f32>(x_4314.x, x_4314.y) * vec2<f32>(x_4316.x, x_4316.w)) + vec2<f32>(x_4321.z, x_4321.w));
          let x_4324 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4323.x, x_4323.y, x_4324.z);
        }
      }
      let x_4331 : vec3<f32> = u_xlat37;
      let x_4333 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4331.x, x_4331.y), 0.0f);
      u_xlat11 = x_4333;
      let x_4335 : bool = u_xlatb7.y;
      if (x_4335) {
        let x_4340 : f32 = u_xlat11.w;
        x_4336 = x_4340;
      } else {
        let x_4343 : f32 = u_xlat11.x;
        x_4336 = x_4343;
      }
      let x_4344 : f32 = x_4336;
      u_xlat87 = x_4344;
      let x_4346 : bool = u_xlatb7.x;
      if (x_4346) {
        let x_4350 : vec4<f32> = u_xlat11;
        x_4347 = vec3<f32>(x_4350.x, x_4350.y, x_4350.z);
      } else {
        let x_4353 : f32 = u_xlat87;
        x_4347 = vec3<f32>(x_4353, x_4353, x_4353);
      }
      let x_4355 : vec3<f32> = x_4347;
      let x_4356 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4355.x, x_4355.y, x_4355.z, x_4356.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4362 : vec4<f32> = u_xlat11;
    let x_4364 : i32 = u_xlati84;
    let x_4366 : vec4<f32> = x_2516.x_AdditionalLightsColor[x_4364];
    let x_4368 : vec3<f32> = (vec3<f32>(x_4362.x, x_4362.y, x_4362.z) * vec3<f32>(x_4366.x, x_4366.y, x_4366.z));
    let x_4369 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4368.x, x_4368.y, x_4368.z, x_4369.w);
    let x_4372 : f32 = u_xlat59.x;
    let x_4373 : f32 = u_xlat86;
    u_xlat84 = (x_4372 * x_4373);
    let x_4375 : vec4<f32> = u_xlat4;
    let x_4377 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_4375.x, x_4375.y, x_4375.z), vec3<f32>(x_4377.x, x_4377.y, x_4377.z));
    let x_4382 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4382, 0.0f, 1.0f);
    let x_4385 : f32 = u_xlat84;
    let x_4387 : f32 = u_xlat59.x;
    u_xlat84 = (x_4385 * x_4387);
    let x_4389 : f32 = u_xlat84;
    let x_4391 : vec4<f32> = u_xlat11;
    let x_4393 : vec3<f32> = (vec3<f32>(x_4389, x_4389, x_4389) * vec3<f32>(x_4391.x, x_4391.y, x_4391.z));
    let x_4394 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4393.x, x_4393.y, x_4393.z, x_4394.w);
    let x_4396 : vec4<f32> = u_xlat9;
    let x_4398 : f32 = u_xlat85;
    let x_4401 : vec3<f32> = u_xlat29;
    let x_4402 : vec3<f32> = ((vec3<f32>(x_4396.x, x_4396.y, x_4396.z) * vec3<f32>(x_4398, x_4398, x_4398)) + x_4401);
    let x_4403 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4402.x, x_4402.y, x_4402.z, x_4403.w);
    let x_4405 : vec4<f32> = u_xlat9;
    let x_4407 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4405.x, x_4405.y, x_4405.z), vec3<f32>(x_4407.x, x_4407.y, x_4407.z));
    let x_4410 : f32 = u_xlat84;
    u_xlat84 = max(x_4410, 1.17549435e-38f);
    let x_4412 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4412);
    let x_4414 : f32 = u_xlat84;
    let x_4416 : vec4<f32> = u_xlat9;
    let x_4418 : vec3<f32> = (vec3<f32>(x_4414, x_4414, x_4414) * vec3<f32>(x_4416.x, x_4416.y, x_4416.z));
    let x_4419 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4418.x, x_4418.y, x_4418.z, x_4419.w);
    let x_4421 : vec4<f32> = u_xlat4;
    let x_4423 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4421.x, x_4421.y, x_4421.z), vec3<f32>(x_4423.x, x_4423.y, x_4423.z));
    let x_4426 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4426, 0.0f, 1.0f);
    let x_4428 : vec4<f32> = u_xlat10;
    let x_4430 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4428.x, x_4428.y, x_4428.z), vec3<f32>(x_4430.x, x_4430.y, x_4430.z));
    let x_4435 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4435, 0.0f, 1.0f);
    let x_4438 : f32 = u_xlat84;
    let x_4439 : f32 = u_xlat84;
    u_xlat84 = (x_4438 * x_4439);
    let x_4441 : f32 = u_xlat84;
    let x_4443 : f32 = u_xlat1.x;
    u_xlat84 = ((x_4441 * x_4443) + 1.00001001358032226562f);
    let x_4447 : f32 = u_xlat59.x;
    let x_4449 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4447 * x_4449);
    let x_4452 : f32 = u_xlat84;
    let x_4453 : f32 = u_xlat84;
    u_xlat84 = (x_4452 * x_4453);
    let x_4456 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4456, 0.10000000149011611938f);
    let x_4459 : f32 = u_xlat84;
    let x_4461 : f32 = u_xlat59.x;
    u_xlat84 = (x_4459 * x_4461);
    let x_4463 : f32 = u_xlat79;
    let x_4464 : f32 = u_xlat84;
    u_xlat84 = (x_4463 * x_4464);
    let x_4466 : f32 = u_xlat82;
    let x_4467 : f32 = u_xlat84;
    u_xlat84 = (x_4466 / x_4467);
    let x_4469 : vec4<f32> = u_xlat0;
    let x_4471 : f32 = u_xlat84;
    let x_4474 : vec3<f32> = u_xlat28;
    let x_4475 : vec3<f32> = ((vec3<f32>(x_4469.x, x_4469.y, x_4469.z) * vec3<f32>(x_4471, x_4471, x_4471)) + x_4474);
    let x_4476 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4475.x, x_4475.y, x_4475.z, x_4476.w);
    let x_4478 : vec4<f32> = u_xlat9;
    let x_4480 : vec4<f32> = u_xlat11;
    let x_4483 : vec4<f32> = u_xlat8;
    let x_4485 : vec3<f32> = ((vec3<f32>(x_4478.x, x_4478.y, x_4478.z) * vec3<f32>(x_4480.x, x_4480.y, x_4480.z)) + vec3<f32>(x_4483.x, x_4483.y, x_4483.z));
    let x_4486 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);

    continuing {
      let x_4488 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4488 + bitcast<u32>(1i));
    }
  }
  let x_4490 : vec4<f32> = u_xlat6;
  let x_4492 : vec3<f32> = u_xlat3;
  let x_4495 : vec4<f32> = u_xlat5;
  let x_4497 : vec3<f32> = ((vec3<f32>(x_4490.x, x_4490.y, x_4490.z) * vec3<f32>(x_4492.x, x_4492.x, x_4492.x)) + vec3<f32>(x_4495.x, x_4495.z, x_4495.w));
  let x_4498 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4497.x, x_4497.y, x_4497.z, x_4498.w);
  let x_4500 : vec4<f32> = u_xlat8;
  let x_4502 : vec4<f32> = u_xlat0;
  let x_4504 : vec3<f32> = (vec3<f32>(x_4500.x, x_4500.y, x_4500.z) + vec3<f32>(x_4502.x, x_4502.y, x_4502.z));
  let x_4505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4504.x, x_4504.y, x_4504.z, x_4505.w);
  let x_4507 : f32 = u_xlat78;
  let x_4508 : f32 = u_xlat78;
  u_xlat78 = (x_4507 * -(x_4508));
  let x_4511 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4511);
  let x_4513 : vec4<f32> = u_xlat0;
  let x_4516 : vec4<f32> = x_28.unity_FogColor;
  let x_4519 : vec3<f32> = (vec3<f32>(x_4513.x, x_4513.y, x_4513.z) + -(vec3<f32>(x_4516.x, x_4516.y, x_4516.z)));
  let x_4520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4519.x, x_4519.y, x_4519.z, x_4520.w);
  let x_4524 : f32 = u_xlat78;
  let x_4526 : vec4<f32> = u_xlat0;
  let x_4530 : vec4<f32> = x_28.unity_FogColor;
  let x_4532 : vec3<f32> = ((vec3<f32>(x_4524, x_4524, x_4524) * vec3<f32>(x_4526.x, x_4526.y, x_4526.z)) + vec3<f32>(x_4530.x, x_4530.y, x_4530.z));
  let x_4533 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4532.x, x_4532.y, x_4532.z, x_4533.w);
  let x_4537 : f32 = x_56.x_Surface;
  u_xlatb0 = (x_4537 == 1.0f);
  let x_4539 : bool = u_xlatb0;
  if (x_4539) {
    let x_4544 : f32 = u_xlat2.x;
    x_4540 = x_4544;
  } else {
    x_4540 = 1.0f;
  }
  let x_4546 : f32 = x_4540;
  SV_Target0.w = x_4546;
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


