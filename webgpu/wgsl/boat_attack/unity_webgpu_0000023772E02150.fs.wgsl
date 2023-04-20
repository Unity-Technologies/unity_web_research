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
  /* @offset(160) */
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb55 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_504 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_1824 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2284 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu53 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_259 : f32;
  var x_271 : f32;
  var x_282 : f32;
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
  var x_1910 : f32;
  var x_1921 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2422 : f32;
  var x_2431 : f32;
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
  var x_4007 : f32;
  var x_4020 : f32;
  var x_4068 : f32;
  var x_4079 : vec3<f32>;
  var x_4227 : f32;
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
  let x_163 : f32 = x_45.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_165.x, x_165.y, x_166.z);
  let x_173 : vec3<f32> = u_xlat29;
  let x_176 : f32 = x_45.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.y), x_176);
  u_xlat29.x = x_177.w;
  let x_188 : f32 = x_186.unity_LODFade.x;
  u_xlatb55 = (x_188 >= 0.0f);
  let x_191 : bool = u_xlatb55;
  if (x_191) {
    let x_197 : f32 = u_xlat29.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat29.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat29.x = x_204;
  let x_207 : f32 = u_xlat29.x;
  let x_210 : f32 = x_186.unity_LODFade.x;
  u_xlat29.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat29.x;
  u_xlatb29 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb29;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_228 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb29 = (x_228 == 0.0f);
  let x_233 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_239 : vec3<f32> = (-(x_233) + x_238);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_248);
  let x_250 : f32 = u_xlat55;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_250, x_250, x_250) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : bool = u_xlatb29;
  if (x_258) {
    let x_263 : f32 = u_xlat4.x;
    x_259 = x_263;
  } else {
    let x_267 : f32 = x_45.unity_MatrixV[0i].z;
    x_259 = x_267;
  }
  let x_268 : f32 = x_259;
  u_xlat5.x = x_268;
  let x_270 : bool = u_xlatb29;
  if (x_270) {
    let x_275 : f32 = u_xlat4.y;
    x_271 = x_275;
  } else {
    let x_278 : f32 = x_45.unity_MatrixV[1i].z;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat5.y = x_279;
  let x_281 : bool = u_xlatb29;
  if (x_281) {
    let x_286 : f32 = u_xlat4.z;
    x_282 = x_286;
  } else {
    let x_289 : f32 = x_45.unity_MatrixV[2i].z;
    x_282 = x_289;
  }
  let x_290 : f32 = x_282;
  u_xlat5.z = x_290;
  let x_293 : vec3<f32> = vs_TEXCOORD2;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (vec3<f32>(x_293.z, x_293.x, x_293.y) * vec3<f32>(x_296.y, x_296.z, x_296.x));
  let x_299 : vec3<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = vs_TEXCOORD3;
  let x_304 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : vec3<f32> = u_xlat29;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (x_307 * vec3<f32>(x_308.w, x_308.w, x_308.w));
  let x_311 : vec2<f32> = u_xlat53;
  let x_313 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_311.y, x_311.y, x_311.y) * x_313);
  let x_315 : vec2<f32> = u_xlat53;
  let x_317 : vec4<f32> = vs_TEXCOORD3;
  let x_320 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_315.x, x_315.x, x_315.x) * vec3<f32>(x_317.x, x_317.y, x_317.z)) + x_320);
  let x_322 : f32 = u_xlat78;
  let x_324 : vec3<f32> = vs_TEXCOORD2;
  let x_326 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_322, x_322, x_322) * x_324) + x_326);
  let x_328 : vec3<f32> = u_xlat29;
  let x_329 : vec3<f32> = u_xlat29;
  u_xlat78 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat78;
  let x_335 : vec3<f32> = u_xlat29;
  let x_336 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  u_xlat4.w = 1.0f;
  let x_343 : vec4<f32> = x_186.unity_SHAr;
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_343, x_344);
  let x_349 : vec4<f32> = x_186.unity_SHAg;
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_186.unity_SHAb;
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_355, x_356);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_360.y, x_360.z, x_360.z, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_368 : vec4<f32> = x_186.unity_SHBr;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_368, x_369);
  let x_374 : vec4<f32> = x_186.unity_SHBg;
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_186.unity_SHBb;
  let x_381 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_380, x_381);
  let x_385 : f32 = u_xlat4.y;
  let x_387 : f32 = u_xlat4.y;
  u_xlat78 = (x_385 * x_387);
  let x_390 : f32 = u_xlat4.x;
  let x_392 : f32 = u_xlat4.x;
  let x_394 : f32 = u_xlat78;
  u_xlat78 = ((x_390 * x_392) + -(x_394));
  let x_399 : vec4<f32> = x_186.unity_SHC;
  let x_401 : f32 = u_xlat78;
  let x_404 : vec4<f32> = u_xlat8;
  u_xlat29 = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401, x_401, x_401)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec3<f32> = u_xlat29;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat29 = (x_407 + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_411, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_415 : f32 = u_xlat1.x;
  u_xlat78 = ((-(x_415) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_421 : f32 = u_xlat1.y;
  let x_423 : f32 = x_70.x_Smoothness;
  let x_425 : f32 = u_xlat78;
  u_xlat53.x = ((x_421 * x_423) + -(x_425));
  let x_430 : f32 = u_xlat78;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_432.y, x_432.z, x_432.w));
  let x_435 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = x_70.x_BaseColor;
  let x_443 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_438.x, x_438.y, x_438.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec2<f32> = u_xlat1;
  let x_448 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.x, x_446.x) * vec3<f32>(x_448.x, x_448.y, x_448.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = u_xlat1.y;
  let x_460 : f32 = x_70.x_Smoothness;
  u_xlat78 = ((-(x_457) * x_460) + 1.0f);
  let x_463 : f32 = u_xlat78;
  let x_464 : f32 = u_xlat78;
  u_xlat1.x = (x_463 * x_464);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 0.0078125f);
  let x_474 : f32 = u_xlat1.x;
  let x_476 : f32 = u_xlat1.x;
  u_xlat27 = (x_474 * x_476);
  let x_479 : f32 = u_xlat53.x;
  u_xlat53.x = (x_479 + 1.0f);
  let x_483 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_483, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat79 = ((x_488 * 4.0f) + 2.0f);
  let x_493 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_493, 1.0f);
  let x_506 : f32 = x_504.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_506);
  let x_508 : bool = u_xlatb82;
  if (x_508) {
    let x_512 : f32 = x_504.x_MainLightShadowParams.y;
    u_xlatb82 = (x_512 == 1.0f);
    let x_514 : bool = u_xlatb82;
    if (x_514) {
      let x_518 : vec4<f32> = vs_TEXCOORD6;
      let x_521 : vec4<f32> = x_504.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y) + x_521);
      let x_525 : vec4<f32> = u_xlat6;
      let x_526 : vec2<f32> = vec2<f32>(x_525.x, x_525.y);
      let x_528 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_540 : vec3<f32> = txVec0;
      let x_542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_540.xy, x_540.z);
      u_xlat7.x = x_542;
      let x_545 : vec4<f32> = u_xlat6;
      let x_546 : vec2<f32> = vec2<f32>(x_545.z, x_545.w);
      let x_548 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec1;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.y = x_557;
      let x_559 : vec4<f32> = vs_TEXCOORD6;
      let x_562 : vec4<f32> = x_504.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) + x_562);
      let x_565 : vec4<f32> = u_xlat6;
      let x_566 : vec2<f32> = vec2<f32>(x_565.x, x_565.y);
      let x_568 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec2;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat7.z = x_577;
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.z, x_580.w);
      let x_583 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec3;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.w = x_592;
      let x_595 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_595, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_602 : f32 = x_504.x_MainLightShadowParams.y;
      u_xlatb83 = (x_602 == 2.0f);
      let x_604 : bool = u_xlatb83;
      if (x_604) {
        let x_607 : vec4<f32> = vs_TEXCOORD6;
        let x_611 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_616 : vec2<f32> = ((vec2<f32>(x_607.x, x_607.y) * vec2<f32>(x_611.z, x_611.w)) + vec2<f32>(0.5f, 0.5f));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat6;
        let x_621 : vec2<f32> = floor(vec2<f32>(x_619.x, x_619.y));
        let x_622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_625 : vec4<f32> = vs_TEXCOORD6;
        let x_628 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_628.z, x_628.w)) + -(vec2<f32>(x_631.x, x_631.y)));
        let x_635 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_635.x, x_635.x, x_635.y, x_635.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_639 : vec4<f32> = u_xlat7;
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_639.x, x_639.x, x_639.z, x_639.z) * vec4<f32>(x_641.x, x_641.x, x_641.z, x_641.z));
        let x_644 : vec4<f32> = u_xlat8;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.y, x_644.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_648.x, x_649.y, x_648.y, x_649.w);
        let x_651 : vec4<f32> = u_xlat8;
        let x_654 : vec2<f32> = u_xlat58;
        let x_656 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.z) * vec2<f32>(0.5f, 0.5f)) + -(x_654));
        let x_657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_660 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_660) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec2<f32> = u_xlat58;
        let x_667 : vec2<f32> = min(x_665, vec2<f32>(0.0f, 0.0f));
        let x_668 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat9;
        let x_673 : vec4<f32> = u_xlat9;
        let x_676 : vec2<f32> = u_xlat60;
        let x_677 : vec2<f32> = ((-(vec2<f32>(x_670.x, x_670.y)) * vec2<f32>(x_673.x, x_673.y)) + x_676);
        let x_678 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_680, vec2<f32>(0.0f, 0.0f));
        let x_682 : vec2<f32> = u_xlat58;
        let x_684 : vec2<f32> = u_xlat58;
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_682) * x_684) + vec2<f32>(x_686.y, x_686.w));
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) + vec2<f32>(1.0f, 1.0f));
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_694 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_694 + vec2<f32>(1.0f, 1.0f));
        let x_697 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_702 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_704 : vec2<f32> = u_xlat60;
        let x_705 : vec2<f32> = (x_704 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat9;
        let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_711 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
        let x_714 : vec2<f32> = u_xlat58;
        let x_715 : vec2<f32> = (x_714 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_716 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_718.y, x_718.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_722 : f32 = u_xlat9.x;
        u_xlat10.z = x_722;
        let x_725 : f32 = u_xlat58.x;
        u_xlat10.w = x_725;
        let x_728 : f32 = u_xlat11.x;
        u_xlat8.z = x_728;
        let x_731 : f32 = u_xlat7.x;
        u_xlat8.w = x_731;
        let x_734 : vec4<f32> = u_xlat8;
        let x_736 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_734.z, x_734.w, x_734.x, x_734.z) + vec4<f32>(x_736.z, x_736.w, x_736.x, x_736.z));
        let x_740 : f32 = u_xlat10.y;
        u_xlat9.z = x_740;
        let x_743 : f32 = u_xlat58.y;
        u_xlat9.w = x_743;
        let x_746 : f32 = u_xlat8.y;
        u_xlat11.z = x_746;
        let x_749 : f32 = u_xlat7.z;
        u_xlat11.w = x_749;
        let x_751 : vec4<f32> = u_xlat9;
        let x_753 : vec4<f32> = u_xlat11;
        let x_755 : vec3<f32> = (vec3<f32>(x_751.z, x_751.y, x_751.w) + vec3<f32>(x_753.z, x_753.y, x_753.w));
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_758 : vec4<f32> = u_xlat8;
        let x_760 : vec4<f32> = u_xlat12;
        let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.z, x_758.w) / vec3<f32>(x_760.z, x_760.w, x_760.y));
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat8;
        let x_771 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat11;
        let x_776 : vec4<f32> = u_xlat7;
        let x_778 : vec3<f32> = (vec3<f32>(x_774.z, x_774.y, x_774.w) / vec3<f32>(x_776.x, x_776.y, x_776.z));
        let x_779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat9;
        let x_783 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat8;
        let x_789 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_791 : vec3<f32> = (vec3<f32>(x_786.y, x_786.x, x_786.z) * vec3<f32>(x_789.x, x_789.x, x_789.x));
        let x_792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat9;
        let x_797 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_799 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_797.y, x_797.y, x_797.y));
        let x_800 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_803 : f32 = u_xlat9.x;
        u_xlat8.w = x_803;
        let x_805 : vec4<f32> = u_xlat6;
        let x_808 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) * vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y)) + vec4<f32>(x_811.y, x_811.w, x_811.x, x_811.w));
        let x_814 : vec4<f32> = u_xlat6;
        let x_817 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_820.z, x_820.w));
        let x_824 : f32 = u_xlat8.y;
        u_xlat9.w = x_824;
        let x_826 : vec4<f32> = u_xlat9;
        let x_827 : vec2<f32> = vec2<f32>(x_826.y, x_826.z);
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_828.x, x_827.x, x_828.z, x_827.y);
        let x_830 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) * vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y)) + vec4<f32>(x_836.x, x_836.y, x_836.z, x_836.y));
        let x_839 : vec4<f32> = u_xlat6;
        let x_842 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.w, x_845.y, x_845.w, x_845.z));
        let x_848 : vec4<f32> = u_xlat6;
        let x_851 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y) * vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y)) + vec4<f32>(x_854.x, x_854.w, x_854.z, x_854.w));
        let x_858 : vec4<f32> = u_xlat7;
        let x_860 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_858.x, x_858.x, x_858.x, x_858.y) * vec4<f32>(x_860.z, x_860.w, x_860.y, x_860.z));
        let x_864 : vec4<f32> = u_xlat7;
        let x_866 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_864.y, x_864.y, x_864.z, x_864.z) * x_866);
        let x_870 : f32 = u_xlat7.z;
        let x_872 : f32 = u_xlat12.y;
        u_xlat83 = (x_870 * x_872);
        let x_875 : vec4<f32> = u_xlat10;
        let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
        let x_878 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec4;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_885.xy, x_885.z);
        u_xlat6.x = x_887;
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_901 : vec3<f32> = txVec5;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_901.xy, x_901.z);
        u_xlat32 = x_903;
        let x_904 : f32 = u_xlat32;
        let x_906 : f32 = u_xlat13.y;
        u_xlat32 = (x_904 * x_906);
        let x_909 : f32 = u_xlat13.x;
        let x_911 : f32 = u_xlat6.x;
        let x_913 : f32 = u_xlat32;
        u_xlat6.x = ((x_909 * x_911) + x_913);
        let x_917 : vec2<f32> = u_xlat58;
        let x_919 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec6;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_926.xy, x_926.z);
        u_xlat32 = x_928;
        let x_930 : f32 = u_xlat13.z;
        let x_931 : f32 = u_xlat32;
        let x_934 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_930 * x_931) + x_934);
        let x_938 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
        let x_941 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec7;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_948.xy, x_948.z);
        u_xlat32 = x_950;
        let x_952 : f32 = u_xlat13.w;
        let x_953 : f32 = u_xlat32;
        let x_956 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_952 * x_953) + x_956);
        let x_960 : vec4<f32> = u_xlat11;
        let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
        let x_963 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec8;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_970.xy, x_970.z);
        u_xlat32 = x_972;
        let x_974 : f32 = u_xlat14.x;
        let x_975 : f32 = u_xlat32;
        let x_978 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_974 * x_975) + x_978);
        let x_982 : vec4<f32> = u_xlat11;
        let x_983 : vec2<f32> = vec2<f32>(x_982.z, x_982.w);
        let x_985 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec9;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_992.xy, x_992.z);
        u_xlat32 = x_994;
        let x_996 : f32 = u_xlat14.y;
        let x_997 : f32 = u_xlat32;
        let x_1000 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_996 * x_997) + x_1000);
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.z, x_1004.w);
        let x_1007 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec10;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1014.xy, x_1014.z);
        u_xlat32 = x_1016;
        let x_1018 : f32 = u_xlat14.z;
        let x_1019 : f32 = u_xlat32;
        let x_1022 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1018 * x_1019) + x_1022);
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
        let x_1029 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec11;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
        u_xlat32 = x_1038;
        let x_1040 : f32 = u_xlat14.w;
        let x_1041 : f32 = u_xlat32;
        let x_1044 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1040 * x_1041) + x_1044);
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1049 : vec2<f32> = vec2<f32>(x_1048.z, x_1048.w);
        let x_1051 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
        let x_1058 : vec3<f32> = txVec12;
        let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1058.xy, x_1058.z);
        u_xlat32 = x_1060;
        let x_1061 : f32 = u_xlat83;
        let x_1062 : f32 = u_xlat32;
        let x_1065 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1061 * x_1062) + x_1065);
      } else {
        let x_1068 : vec4<f32> = vs_TEXCOORD6;
        let x_1071 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.z, x_1071.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1075 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1079 : vec2<f32> = floor(vec2<f32>(x_1077.x, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = vs_TEXCOORD6;
        let x_1085 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(x_1085.z, x_1085.w)) + -(vec2<f32>(x_1088.x, x_1088.y)));
        let x_1092 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1092.x, x_1092.x, x_1092.y, x_1092.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.z, x_1095.z) * vec4<f32>(x_1097.x, x_1097.x, x_1097.z, x_1097.z));
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1100.y, x_1100.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1105.x, x_1104.x, x_1105.z, x_1104.y);
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1110 : vec2<f32> = u_xlat58;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1110));
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1112.x, x_1113.y, x_1112.y, x_1113.w);
        let x_1115 : vec2<f32> = u_xlat58;
        let x_1117 : vec2<f32> = (-(x_1115) + vec2<f32>(1.0f, 1.0f));
        let x_1118 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1120, vec2<f32>(0.0f, 0.0f));
        let x_1122 : vec2<f32> = u_xlat60;
        let x_1124 : vec2<f32> = u_xlat60;
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec2<f32> = ((-(x_1122) * x_1124) + vec2<f32>(x_1126.x, x_1126.y));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1131, vec2<f32>(0.0f, 0.0f));
        let x_1134 : vec2<f32> = u_xlat60;
        let x_1136 : vec2<f32> = u_xlat60;
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec2<f32> = ((-(x_1134) * x_1136) + vec2<f32>(x_1138.y, x_1138.w));
        let x_1141 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1140.x, x_1141.y, x_1140.y);
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = (vec2<f32>(x_1143.x, x_1143.y) + vec2<f32>(2.0f, 2.0f));
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1148 : vec3<f32> = u_xlat33;
        let x_1150 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.z) + vec2<f32>(2.0f, 2.0f));
        let x_1151 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1150.x, x_1151.z, x_1150.y);
        let x_1154 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1154 * 0.08163200318813323975f);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec3<f32> = (vec3<f32>(x_1158.z, x_1158.x, x_1158.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1171 : f32 = u_xlat11.y;
        u_xlat10.x = x_1171;
        let x_1173 : vec2<f32> = u_xlat58;
        let x_1180 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1180.x, x_1181.z, x_1180.y);
        let x_1183 : vec2<f32> = u_xlat58;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1188.w);
        let x_1191 : f32 = u_xlat7.x;
        u_xlat8.y = x_1191;
        let x_1194 : f32 = u_xlat9.y;
        u_xlat8.w = x_1194;
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1196 + x_1197);
        let x_1199 : vec2<f32> = u_xlat58;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1199.y, x_1199.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec2<f32> = u_xlat58;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1205.y, x_1205.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1208.x, x_1209.y, x_1208.y, x_1209.w);
        let x_1212 : f32 = u_xlat7.y;
        u_xlat9.y = x_1212;
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1215 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1214 + x_1215);
        let x_1217 : vec4<f32> = u_xlat8;
        let x_1218 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1217 / x_1218);
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1220 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1226 / x_1227);
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1229 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1231.w, x_1231.x, x_1231.y, x_1231.z) * vec4<f32>(x_1234.x, x_1234.x, x_1234.x, x_1234.x));
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1240 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1237.x, x_1237.w, x_1237.y, x_1237.z) * vec4<f32>(x_1240.y, x_1240.y, x_1240.y, x_1240.y));
        let x_1243 : vec4<f32> = u_xlat8;
        let x_1244 : vec3<f32> = vec3<f32>(x_1243.y, x_1243.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1245.y, x_1244.y, x_1244.z);
        let x_1248 : f32 = u_xlat9.x;
        u_xlat11.y = x_1248;
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat6;
        let x_1262 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1265.w, x_1265.y));
        let x_1269 : f32 = u_xlat11.y;
        u_xlat8.y = x_1269;
        let x_1272 : f32 = u_xlat9.z;
        u_xlat11.y = x_1272;
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1286 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1291 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1286.x, x_1286.y)) + vec2<f32>(x_1289.w, x_1289.y));
        let x_1292 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
        let x_1295 : f32 = u_xlat11.y;
        u_xlat8.z = x_1295;
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.z));
        let x_1308 : f32 = u_xlat9.w;
        u_xlat11.y = x_1308;
        let x_1311 : vec4<f32> = u_xlat6;
        let x_1314 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y) * vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y)) + vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1317.y));
        let x_1321 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.w, x_1327.y));
        let x_1330 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1329.x, x_1329.y, x_1330.z);
        let x_1333 : f32 = u_xlat11.y;
        u_xlat8.w = x_1333;
        let x_1336 : vec4<f32> = u_xlat6;
        let x_1339 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.w));
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1346 : vec3<f32> = vec3<f32>(x_1345.x, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1346.x, x_1347.y, x_1346.y, x_1346.z);
        let x_1349 : vec4<f32> = u_xlat6;
        let x_1352 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1355.y));
        let x_1359 : vec4<f32> = u_xlat6;
        let x_1362 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.w, x_1365.y));
        let x_1369 : f32 = u_xlat8.x;
        u_xlat9.x = x_1369;
        let x_1371 : vec4<f32> = u_xlat6;
        let x_1374 : vec4<f32> = x_504.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.x, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1383 : vec4<f32> = u_xlat7;
        let x_1385 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1383.x, x_1383.x, x_1383.x, x_1383.x) * x_1385);
        let x_1388 : vec4<f32> = u_xlat7;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1388.y, x_1388.y, x_1388.y, x_1388.y) * x_1390);
        let x_1393 : vec4<f32> = u_xlat7;
        let x_1395 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1393.z, x_1393.z, x_1393.z, x_1393.z) * x_1395);
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1397.w, x_1397.w, x_1397.w, x_1397.w) * x_1399);
        let x_1402 : vec4<f32> = u_xlat12;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec13;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat83 = x_1414;
        let x_1416 : vec4<f32> = u_xlat12;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec14;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat8.x = x_1428;
        let x_1431 : f32 = u_xlat8.x;
        let x_1433 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1431 * x_1433);
        let x_1437 : f32 = u_xlat17.x;
        let x_1438 : f32 = u_xlat83;
        let x_1441 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1437 * x_1438) + x_1441);
        let x_1444 : vec2<f32> = u_xlat58;
        let x_1446 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec15;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat58.x = x_1455;
        let x_1458 : f32 = u_xlat17.z;
        let x_1460 : f32 = u_xlat58.x;
        let x_1462 : f32 = u_xlat83;
        u_xlat83 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat15;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec16;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat58.x = x_1477;
        let x_1480 : f32 = u_xlat17.w;
        let x_1482 : f32 = u_xlat58.x;
        let x_1484 : f32 = u_xlat83;
        u_xlat83 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat13;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec17;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat58.x = x_1499;
        let x_1502 : f32 = u_xlat18.x;
        let x_1504 : f32 = u_xlat58.x;
        let x_1506 : f32 = u_xlat83;
        u_xlat83 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat13;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec18;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat58.x = x_1521;
        let x_1524 : f32 = u_xlat18.y;
        let x_1526 : f32 = u_xlat58.x;
        let x_1528 : f32 = u_xlat83;
        u_xlat83 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat14;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec19;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat58.x = x_1543;
        let x_1546 : f32 = u_xlat18.z;
        let x_1548 : f32 = u_xlat58.x;
        let x_1550 : f32 = u_xlat83;
        u_xlat83 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat15;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec20;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat58.x = x_1565;
        let x_1568 : f32 = u_xlat18.w;
        let x_1570 : f32 = u_xlat58.x;
        let x_1572 : f32 = u_xlat83;
        u_xlat83 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat16;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec21;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat58.x = x_1587;
        let x_1590 : f32 = u_xlat19.x;
        let x_1592 : f32 = u_xlat58.x;
        let x_1594 : f32 = u_xlat83;
        u_xlat83 = ((x_1590 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat16;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.z, x_1597.w);
        let x_1600 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec22;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat58.x = x_1609;
        let x_1612 : f32 = u_xlat19.y;
        let x_1614 : f32 = u_xlat58.x;
        let x_1616 : f32 = u_xlat83;
        u_xlat83 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec3<f32> = u_xlat34;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec23;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat58.x = x_1631;
        let x_1634 : f32 = u_xlat19.z;
        let x_1636 : f32 = u_xlat58.x;
        let x_1638 : f32 = u_xlat83;
        u_xlat83 = ((x_1634 * x_1636) + x_1638);
        let x_1641 : vec2<f32> = u_xlat66;
        let x_1643 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec24;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat58.x = x_1652;
        let x_1655 : f32 = u_xlat19.w;
        let x_1657 : f32 = u_xlat58.x;
        let x_1659 : f32 = u_xlat83;
        u_xlat83 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat11;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec25;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat58.x = x_1674;
        let x_1677 : f32 = u_xlat7.x;
        let x_1679 : f32 = u_xlat58.x;
        let x_1681 : f32 = u_xlat83;
        u_xlat83 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat11;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.z, x_1684.w);
        let x_1687 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec26;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
        u_xlat58.x = x_1696;
        let x_1699 : f32 = u_xlat7.y;
        let x_1701 : f32 = u_xlat58.x;
        let x_1703 : f32 = u_xlat83;
        u_xlat83 = ((x_1699 * x_1701) + x_1703);
        let x_1706 : vec2<f32> = u_xlat61;
        let x_1708 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec27;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1715.xy, x_1715.z);
        u_xlat58.x = x_1717;
        let x_1720 : f32 = u_xlat7.z;
        let x_1722 : f32 = u_xlat58.x;
        let x_1724 : f32 = u_xlat83;
        u_xlat83 = ((x_1720 * x_1722) + x_1724);
        let x_1727 : vec4<f32> = u_xlat6;
        let x_1728 : vec2<f32> = vec2<f32>(x_1727.x, x_1727.y);
        let x_1730 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec28;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1737.xy, x_1737.z);
        u_xlat6.x = x_1739;
        let x_1742 : f32 = u_xlat7.w;
        let x_1744 : f32 = u_xlat6.x;
        let x_1746 : f32 = u_xlat83;
        u_xlat82 = ((x_1742 * x_1744) + x_1746);
      }
    }
  } else {
    let x_1750 : vec4<f32> = vs_TEXCOORD6;
    let x_1751 : vec2<f32> = vec2<f32>(x_1750.x, x_1750.y);
    let x_1753 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
    let x_1760 : vec3<f32> = txVec29;
    let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1760.xy, x_1760.z);
    u_xlat82 = x_1762;
  }
  let x_1764 : f32 = x_504.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1764) + 1.0f);
  let x_1767 : f32 = u_xlat82;
  let x_1769 : f32 = x_504.x_MainLightShadowParams.x;
  let x_1771 : f32 = u_xlat83;
  u_xlat82 = ((x_1767 * x_1769) + x_1771);
  let x_1774 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1774);
  let x_1778 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1778 >= 1.0f);
  let x_1780 : bool = u_xlatb83;
  let x_1781 : bool = u_xlatb6;
  u_xlatb83 = (x_1780 | x_1781);
  let x_1783 : bool = u_xlatb83;
  let x_1784 : f32 = u_xlat82;
  u_xlat82 = select(x_1784, 1.0f, x_1783);
  let x_1786 : vec3<f32> = vs_TEXCOORD1;
  let x_1788 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1790 : vec3<f32> = (x_1786 + -(x_1788));
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec4<f32> = u_xlat6;
  let x_1795 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : f32 = u_xlat83;
  let x_1800 : f32 = x_504.x_MainLightShadowParams.z;
  let x_1803 : f32 = x_504.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1798 * x_1800) + x_1803);
  let x_1807 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1807, 0.0f, 1.0f);
  let x_1810 : f32 = u_xlat82;
  u_xlat32 = (-(x_1810) + 1.0f);
  let x_1814 : f32 = u_xlat6.x;
  let x_1815 : f32 = u_xlat32;
  let x_1817 : f32 = u_xlat82;
  u_xlat82 = ((x_1814 * x_1815) + x_1817);
  let x_1826 : f32 = x_1824.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1826 == -1.0f));
  let x_1828 : bool = u_xlatb6;
  if (x_1828) {
    let x_1831 : vec3<f32> = vs_TEXCOORD1;
    let x_1834 : vec4<f32> = x_1824.x_MainLightWorldToLight[1i];
    let x_1836 : vec2<f32> = (vec2<f32>(x_1831.y, x_1831.y) * vec2<f32>(x_1834.x, x_1834.y));
    let x_1837 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1836.x, x_1836.y, x_1837.z, x_1837.w);
    let x_1840 : vec4<f32> = x_1824.x_MainLightWorldToLight[0i];
    let x_1842 : vec3<f32> = vs_TEXCOORD1;
    let x_1845 : vec4<f32> = u_xlat6;
    let x_1847 : vec2<f32> = ((vec2<f32>(x_1840.x, x_1840.y) * vec2<f32>(x_1842.x, x_1842.x)) + vec2<f32>(x_1845.x, x_1845.y));
    let x_1848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
    let x_1851 : vec4<f32> = x_1824.x_MainLightWorldToLight[2i];
    let x_1853 : vec3<f32> = vs_TEXCOORD1;
    let x_1856 : vec4<f32> = u_xlat6;
    let x_1858 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(x_1853.z, x_1853.z)) + vec2<f32>(x_1856.x, x_1856.y));
    let x_1859 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
    let x_1861 : vec4<f32> = u_xlat6;
    let x_1865 : vec4<f32> = x_1824.x_MainLightWorldToLight[3i];
    let x_1867 : vec2<f32> = (vec2<f32>(x_1861.x, x_1861.y) + vec2<f32>(x_1865.x, x_1865.y));
    let x_1868 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
    let x_1870 : vec4<f32> = u_xlat6;
    let x_1873 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1874 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
    let x_1881 : vec4<f32> = u_xlat6;
    let x_1884 : f32 = x_45.x_GlobalMipBias.x;
    let x_1885 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1881.x, x_1881.y), x_1884);
    u_xlat6 = x_1885;
    let x_1890 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1892 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1894 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1896 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1897 : vec4<f32> = vec4<f32>(x_1890, x_1892, x_1894, x_1896);
    let x_1905 : vec4<bool> = (vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1897.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1905.x, x_1905.y);
    let x_1909 : bool = u_xlatb7.y;
    if (x_1909) {
      let x_1914 : f32 = u_xlat6.w;
      x_1910 = x_1914;
    } else {
      let x_1917 : f32 = u_xlat6.x;
      x_1910 = x_1917;
    }
    let x_1918 : f32 = x_1910;
    u_xlat84 = x_1918;
    let x_1920 : bool = u_xlatb7.x;
    if (x_1920) {
      let x_1924 : vec4<f32> = u_xlat6;
      x_1921 = vec3<f32>(x_1924.x, x_1924.y, x_1924.z);
    } else {
      let x_1927 : f32 = u_xlat84;
      x_1921 = vec3<f32>(x_1927, x_1927, x_1927);
    }
    let x_1929 : vec3<f32> = x_1921;
    let x_1930 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1936 : vec4<f32> = u_xlat6;
  let x_1939 : vec4<f32> = x_45.x_MainLightColor;
  let x_1941 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.y, x_1936.z) * vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
  let x_1942 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1942.w);
  let x_1944 : vec3<f32> = u_xlat5;
  let x_1946 : vec4<f32> = u_xlat4;
  u_xlat84 = dot(-(x_1944), vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
  let x_1949 : f32 = u_xlat84;
  let x_1950 : f32 = u_xlat84;
  u_xlat84 = (x_1949 + x_1950);
  let x_1952 : vec4<f32> = u_xlat4;
  let x_1954 : f32 = u_xlat84;
  let x_1958 : vec3<f32> = u_xlat5;
  let x_1960 : vec3<f32> = ((vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * -(vec3<f32>(x_1954, x_1954, x_1954))) + -(x_1958));
  let x_1961 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  let x_1963 : vec4<f32> = u_xlat4;
  let x_1965 : vec3<f32> = u_xlat5;
  u_xlat84 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), x_1965);
  let x_1967 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1967, 0.0f, 1.0f);
  let x_1969 : f32 = u_xlat84;
  u_xlat84 = (-(x_1969) + 1.0f);
  let x_1972 : f32 = u_xlat84;
  let x_1973 : f32 = u_xlat84;
  u_xlat84 = (x_1972 * x_1973);
  let x_1975 : f32 = u_xlat84;
  let x_1976 : f32 = u_xlat84;
  u_xlat84 = (x_1975 * x_1976);
  let x_1979 : f32 = u_xlat78;
  u_xlat85 = ((-(x_1979) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1985 : f32 = u_xlat78;
  let x_1986 : f32 = u_xlat85;
  u_xlat78 = (x_1985 * x_1986);
  let x_1988 : f32 = u_xlat78;
  u_xlat78 = (x_1988 * 6.0f);
  let x_1999 : vec4<f32> = u_xlat7;
  let x_2001 : f32 = u_xlat78;
  let x_2002 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1999.x, x_1999.y, x_1999.z), x_2001);
  u_xlat7 = x_2002;
  let x_2004 : f32 = u_xlat7.w;
  u_xlat78 = (x_2004 + -1.0f);
  let x_2007 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_2008 : f32 = u_xlat78;
  u_xlat78 = ((x_2007 * x_2008) + 1.0f);
  let x_2011 : f32 = u_xlat78;
  u_xlat78 = max(x_2011, 0.0f);
  let x_2013 : f32 = u_xlat78;
  u_xlat78 = log2(x_2013);
  let x_2015 : f32 = u_xlat78;
  let x_2017 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2015 * x_2017);
  let x_2019 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2019);
  let x_2021 : f32 = u_xlat78;
  let x_2023 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2021 * x_2023);
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2027 : f32 = u_xlat78;
  let x_2029 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * vec3<f32>(x_2027, x_2027, x_2027));
  let x_2030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec2<f32> = u_xlat1;
  let x_2034 : vec2<f32> = u_xlat1;
  let x_2038 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.x) * vec2<f32>(x_2034.x, x_2034.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2039 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2038.x, x_2038.y, x_2039.z, x_2039.w);
  let x_2042 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2042);
  let x_2044 : vec4<f32> = u_xlat0;
  let x_2047 : vec2<f32> = u_xlat53;
  u_xlat34 = (-(vec3<f32>(x_2044.x, x_2044.y, x_2044.z)) + vec3<f32>(x_2047.x, x_2047.x, x_2047.x));
  let x_2050 : f32 = u_xlat84;
  let x_2052 : vec3<f32> = u_xlat34;
  let x_2054 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2050, x_2050, x_2050) * x_2052) + vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : f32 = u_xlat78;
  let x_2059 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2057, x_2057, x_2057) * x_2059);
  let x_2061 : vec4<f32> = u_xlat7;
  let x_2063 : vec3<f32> = u_xlat34;
  let x_2064 : vec3<f32> = (vec3<f32>(x_2061.x, x_2061.y, x_2061.z) * x_2063);
  let x_2065 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
  let x_2067 : vec3<f32> = u_xlat29;
  let x_2068 : vec3<f32> = u_xlat28;
  let x_2070 : vec4<f32> = u_xlat7;
  u_xlat29 = ((x_2067 * x_2068) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : f32 = u_xlat82;
  let x_2075 : f32 = x_186.unity_LightData.z;
  u_xlat78 = (x_2073 * x_2075);
  let x_2077 : vec4<f32> = u_xlat4;
  let x_2080 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2085 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2085, 0.0f, 1.0f);
  let x_2088 : f32 = u_xlat78;
  let x_2090 : f32 = u_xlat1.x;
  u_xlat78 = (x_2088 * x_2090);
  let x_2092 : f32 = u_xlat78;
  let x_2094 : vec4<f32> = u_xlat6;
  let x_2096 : vec3<f32> = (vec3<f32>(x_2092, x_2092, x_2092) * vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
  let x_2097 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
  let x_2099 : vec3<f32> = u_xlat5;
  let x_2101 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2103 : vec3<f32> = (x_2099 + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2106 : vec4<f32> = u_xlat7;
  let x_2108 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : f32 = u_xlat78;
  u_xlat78 = max(x_2111, 1.17549435e-38f);
  let x_2114 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2114);
  let x_2116 : f32 = u_xlat78;
  let x_2118 : vec4<f32> = u_xlat7;
  let x_2120 : vec3<f32> = (vec3<f32>(x_2116, x_2116, x_2116) * vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2123 : vec4<f32> = u_xlat4;
  let x_2125 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2128, 0.0f, 1.0f);
  let x_2131 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2133 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2131.x, x_2131.y, x_2131.z), vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2138 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2138, 0.0f, 1.0f);
  let x_2141 : f32 = u_xlat78;
  let x_2142 : f32 = u_xlat78;
  u_xlat78 = (x_2141 * x_2142);
  let x_2144 : f32 = u_xlat78;
  let x_2146 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2144 * x_2146) + 1.00001001358032226562f);
  let x_2151 : f32 = u_xlat1.x;
  let x_2153 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2151 * x_2153);
  let x_2156 : f32 = u_xlat78;
  let x_2157 : f32 = u_xlat78;
  u_xlat78 = (x_2156 * x_2157);
  let x_2160 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2160, 0.10000000149011611938f);
  let x_2164 : f32 = u_xlat78;
  let x_2166 : f32 = u_xlat1.x;
  u_xlat78 = (x_2164 * x_2166);
  let x_2168 : f32 = u_xlat79;
  let x_2169 : f32 = u_xlat78;
  u_xlat78 = (x_2168 * x_2169);
  let x_2171 : f32 = u_xlat27;
  let x_2172 : f32 = u_xlat78;
  u_xlat78 = (x_2171 / x_2172);
  let x_2174 : vec4<f32> = u_xlat0;
  let x_2176 : f32 = u_xlat78;
  let x_2179 : vec3<f32> = u_xlat28;
  let x_2180 : vec3<f32> = ((vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * vec3<f32>(x_2176, x_2176, x_2176)) + x_2179);
  let x_2181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : vec4<f32> = u_xlat6;
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : vec3<f32> = (vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2191 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2193 : f32 = x_186.unity_LightData.y;
  u_xlat78 = min(x_2191, x_2193);
  let x_2197 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2197));
  let x_2200 : f32 = u_xlat83;
  let x_2203 : f32 = x_504.x_AdditionalShadowFadeParams.x;
  let x_2206 : f32 = x_504.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2200 * x_2203) + x_2206);
  let x_2210 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2210, 0.0f, 1.0f);
  let x_2214 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2216 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2218 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2220 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2221 : vec4<f32> = vec4<f32>(x_2214, x_2216, x_2218, x_2220);
  let x_2227 : vec4<bool> = (vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2221.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2227.x, x_2227.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2239 : u32 = u_xlatu_loop_1;
    let x_2240 : u32 = u_xlatu78;
    if ((x_2239 < x_2240)) {
    } else {
      break;
    }
    let x_2243 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2243 >> 2u);
    let x_2247 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2247 & 3u));
    let x_2250 : u32 = u_xlatu82;
    let x_2253 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2250)];
    let x_2263 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2268 : vec4<u32> = indexable[x_2263];
    u_xlat82 = dot(x_2253, bitcast<vec4<f32>>(x_2268));
    let x_2272 : f32 = u_xlat82;
    u_xlati82 = i32(x_2272);
    let x_2274 : vec3<f32> = vs_TEXCOORD1;
    let x_2285 : i32 = u_xlati82;
    let x_2287 : vec4<f32> = x_2284.x_AdditionalLightsPosition[x_2285];
    let x_2290 : i32 = u_xlati82;
    let x_2292 : vec4<f32> = x_2284.x_AdditionalLightsPosition[x_2290];
    let x_2294 : vec3<f32> = ((-(x_2274) * vec3<f32>(x_2287.w, x_2287.w, x_2287.w)) + vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
    let x_2295 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
    let x_2297 : vec4<f32> = u_xlat9;
    let x_2299 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2297.x, x_2297.y, x_2297.z), vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
    let x_2302 : f32 = u_xlat83;
    u_xlat83 = max(x_2302, 0.00006103515625f);
    let x_2305 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2305);
    let x_2307 : f32 = u_xlat84;
    let x_2309 : vec4<f32> = u_xlat9;
    let x_2311 : vec3<f32> = (vec3<f32>(x_2307, x_2307, x_2307) * vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2312 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
    let x_2315 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2315);
    let x_2317 : f32 = u_xlat83;
    let x_2318 : i32 = u_xlati82;
    let x_2320 : f32 = x_2284.x_AdditionalLightsAttenuation[x_2318].x;
    u_xlat83 = (x_2317 * x_2320);
    let x_2322 : f32 = u_xlat83;
    let x_2324 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2322) * x_2324) + 1.0f);
    let x_2327 : f32 = u_xlat83;
    u_xlat83 = max(x_2327, 0.0f);
    let x_2329 : f32 = u_xlat83;
    let x_2330 : f32 = u_xlat83;
    u_xlat83 = (x_2329 * x_2330);
    let x_2332 : f32 = u_xlat83;
    let x_2333 : f32 = u_xlat59;
    u_xlat83 = (x_2332 * x_2333);
    let x_2335 : i32 = u_xlati82;
    let x_2337 : vec4<f32> = x_2284.x_AdditionalLightsSpotDir[x_2335];
    let x_2339 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2337.x, x_2337.y, x_2337.z), vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
    let x_2342 : f32 = u_xlat59;
    let x_2343 : i32 = u_xlati82;
    let x_2345 : f32 = x_2284.x_AdditionalLightsAttenuation[x_2343].z;
    let x_2347 : i32 = u_xlati82;
    let x_2349 : f32 = x_2284.x_AdditionalLightsAttenuation[x_2347].w;
    u_xlat59 = ((x_2342 * x_2345) + x_2349);
    let x_2351 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2351, 0.0f, 1.0f);
    let x_2353 : f32 = u_xlat59;
    let x_2354 : f32 = u_xlat59;
    u_xlat59 = (x_2353 * x_2354);
    let x_2356 : f32 = u_xlat83;
    let x_2357 : f32 = u_xlat59;
    u_xlat83 = (x_2356 * x_2357);
    let x_2361 : i32 = u_xlati82;
    let x_2363 : f32 = x_504.x_AdditionalShadowParams[x_2361].w;
    u_xlati59 = i32(x_2363);
    let x_2366 : i32 = u_xlati59;
    u_xlatb85 = (x_2366 >= 0i);
    let x_2368 : bool = u_xlatb85;
    if (x_2368) {
      let x_2372 : i32 = u_xlati82;
      let x_2374 : f32 = x_504.x_AdditionalShadowParams[x_2372].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2374, x_2374, x_2374, x_2374))));
      let x_2378 : bool = u_xlatb85;
      if (x_2378) {
        let x_2383 : vec4<f32> = u_xlat10;
        let x_2386 : vec4<f32> = u_xlat10;
        let x_2389 : vec4<bool> = (abs(vec4<f32>(x_2383.z, x_2383.z, x_2383.y, x_2383.z)) >= abs(vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.x)));
        let x_2391 : vec3<bool> = vec3<bool>(x_2389.x, x_2389.y, x_2389.z);
        let x_2392 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
        let x_2395 : bool = u_xlatb11.y;
        let x_2397 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2395 & x_2397);
        let x_2399 : vec4<f32> = u_xlat10;
        let x_2402 : vec4<bool> = (-(vec4<f32>(x_2399.z, x_2399.y, x_2399.z, x_2399.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2403 : vec3<bool> = vec3<bool>(x_2402.x, x_2402.y, x_2402.w);
        let x_2404 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2403.x, x_2403.y, x_2404.z, x_2403.z);
        let x_2407 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2407);
        let x_2412 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2412);
        let x_2418 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2418);
        let x_2421 : bool = u_xlatb11.z;
        if (x_2421) {
          let x_2426 : f32 = u_xlat11.y;
          x_2422 = x_2426;
        } else {
          let x_2428 : f32 = u_xlat87;
          x_2422 = x_2428;
        }
        let x_2429 : f32 = x_2422;
        u_xlat87 = x_2429;
        let x_2430 : bool = u_xlatb85;
        if (x_2430) {
          let x_2435 : f32 = u_xlat11.x;
          x_2431 = x_2435;
        } else {
          let x_2437 : f32 = u_xlat87;
          x_2431 = x_2437;
        }
        let x_2438 : f32 = x_2431;
        u_xlat85 = x_2438;
        let x_2439 : i32 = u_xlati82;
        let x_2441 : f32 = x_504.x_AdditionalShadowParams[x_2439].w;
        u_xlat87 = trunc(x_2441);
        let x_2443 : f32 = u_xlat85;
        let x_2444 : f32 = u_xlat87;
        u_xlat85 = (x_2443 + x_2444);
        let x_2446 : f32 = u_xlat85;
        u_xlati59 = i32(x_2446);
      }
      let x_2448 : i32 = u_xlati59;
      u_xlati59 = (x_2448 << bitcast<u32>(2i));
      let x_2450 : vec3<f32> = vs_TEXCOORD1;
      let x_2453 : i32 = u_xlati59;
      let x_2456 : i32 = u_xlati59;
      let x_2460 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_2453 + 1i) / 4i)][((x_2456 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2450.y, x_2450.y, x_2450.y, x_2450.y) * x_2460);
      let x_2462 : i32 = u_xlati59;
      let x_2464 : i32 = u_xlati59;
      let x_2467 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[(x_2462 / 4i)][(x_2464 % 4i)];
      let x_2468 : vec3<f32> = vs_TEXCOORD1;
      let x_2471 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2467 * vec4<f32>(x_2468.x, x_2468.x, x_2468.x, x_2468.x)) + x_2471);
      let x_2473 : i32 = u_xlati59;
      let x_2476 : i32 = u_xlati59;
      let x_2480 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_2473 + 2i) / 4i)][((x_2476 + 2i) % 4i)];
      let x_2481 : vec3<f32> = vs_TEXCOORD1;
      let x_2484 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2480 * vec4<f32>(x_2481.z, x_2481.z, x_2481.z, x_2481.z)) + x_2484);
      let x_2486 : vec4<f32> = u_xlat11;
      let x_2487 : i32 = u_xlati59;
      let x_2490 : i32 = u_xlati59;
      let x_2494 : vec4<f32> = x_504.x_AdditionalLightsWorldToShadow[((x_2487 + 3i) / 4i)][((x_2490 + 3i) % 4i)];
      u_xlat11 = (x_2486 + x_2494);
      let x_2496 : vec4<f32> = u_xlat11;
      let x_2498 : vec4<f32> = u_xlat11;
      let x_2500 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) / vec3<f32>(x_2498.w, x_2498.w, x_2498.w));
      let x_2501 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
      let x_2504 : i32 = u_xlati82;
      let x_2506 : f32 = x_504.x_AdditionalShadowParams[x_2504].y;
      u_xlatb59 = (0.0f < x_2506);
      let x_2508 : bool = u_xlatb59;
      if (x_2508) {
        let x_2511 : i32 = u_xlati82;
        let x_2513 : f32 = x_504.x_AdditionalShadowParams[x_2511].y;
        u_xlatb59 = (1.0f == x_2513);
        let x_2515 : bool = u_xlatb59;
        if (x_2515) {
          let x_2518 : vec4<f32> = u_xlat11;
          let x_2521 : vec4<f32> = x_504.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2518.x, x_2518.y, x_2518.x, x_2518.y) + x_2521);
          let x_2524 : vec4<f32> = u_xlat12;
          let x_2525 : vec2<f32> = vec2<f32>(x_2524.x, x_2524.y);
          let x_2527 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2525.x, x_2525.y, x_2527);
          let x_2535 : vec3<f32> = txVec30;
          let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
          u_xlat13.x = x_2537;
          let x_2540 : vec4<f32> = u_xlat12;
          let x_2541 : vec2<f32> = vec2<f32>(x_2540.z, x_2540.w);
          let x_2543 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2541.x, x_2541.y, x_2543);
          let x_2550 : vec3<f32> = txVec31;
          let x_2552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2550.xy, x_2550.z);
          u_xlat13.y = x_2552;
          let x_2554 : vec4<f32> = u_xlat11;
          let x_2558 : vec4<f32> = x_504.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y) + x_2558);
          let x_2561 : vec4<f32> = u_xlat12;
          let x_2562 : vec2<f32> = vec2<f32>(x_2561.x, x_2561.y);
          let x_2564 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
          let x_2571 : vec3<f32> = txVec32;
          let x_2573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2571.xy, x_2571.z);
          u_xlat13.z = x_2573;
          let x_2576 : vec4<f32> = u_xlat12;
          let x_2577 : vec2<f32> = vec2<f32>(x_2576.z, x_2576.w);
          let x_2579 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2577.x, x_2577.y, x_2579);
          let x_2586 : vec3<f32> = txVec33;
          let x_2588 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2586.xy, x_2586.z);
          u_xlat13.w = x_2588;
          let x_2590 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2590, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2593 : i32 = u_xlati82;
          let x_2595 : f32 = x_504.x_AdditionalShadowParams[x_2593].y;
          u_xlatb85 = (2.0f == x_2595);
          let x_2597 : bool = u_xlatb85;
          if (x_2597) {
            let x_2600 : vec4<f32> = u_xlat11;
            let x_2604 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2607 : vec2<f32> = ((vec2<f32>(x_2600.x, x_2600.y) * vec2<f32>(x_2604.z, x_2604.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2608 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec4<f32> = u_xlat12;
            let x_2612 : vec2<f32> = floor(vec2<f32>(x_2610.x, x_2610.y));
            let x_2613 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
            let x_2616 : vec4<f32> = u_xlat11;
            let x_2619 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2622 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2616.x, x_2616.y) * vec2<f32>(x_2619.z, x_2619.w)) + -(vec2<f32>(x_2622.x, x_2622.y)));
            let x_2626 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2626.x, x_2626.x, x_2626.y, x_2626.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2629 : vec4<f32> = u_xlat13;
            let x_2631 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2629.x, x_2629.x, x_2629.z, x_2629.z) * vec4<f32>(x_2631.x, x_2631.x, x_2631.z, x_2631.z));
            let x_2634 : vec4<f32> = u_xlat14;
            let x_2636 : vec2<f32> = (vec2<f32>(x_2634.y, x_2634.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2637 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2636.x, x_2637.y, x_2636.y, x_2637.w);
            let x_2639 : vec4<f32> = u_xlat14;
            let x_2642 : vec2<f32> = u_xlat64;
            let x_2644 : vec2<f32> = ((vec2<f32>(x_2639.x, x_2639.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2642));
            let x_2645 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2645.w);
            let x_2647 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2647) + vec2<f32>(1.0f, 1.0f));
            let x_2650 : vec2<f32> = u_xlat64;
            let x_2651 : vec2<f32> = min(x_2650, vec2<f32>(0.0f, 0.0f));
            let x_2652 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2651.x, x_2651.y, x_2652.z, x_2652.w);
            let x_2654 : vec4<f32> = u_xlat15;
            let x_2657 : vec4<f32> = u_xlat15;
            let x_2660 : vec2<f32> = u_xlat66;
            let x_2661 : vec2<f32> = ((-(vec2<f32>(x_2654.x, x_2654.y)) * vec2<f32>(x_2657.x, x_2657.y)) + x_2660);
            let x_2662 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
            let x_2664 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2664, vec2<f32>(0.0f, 0.0f));
            let x_2666 : vec2<f32> = u_xlat64;
            let x_2668 : vec2<f32> = u_xlat64;
            let x_2670 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2666) * x_2668) + vec2<f32>(x_2670.y, x_2670.w));
            let x_2673 : vec4<f32> = u_xlat15;
            let x_2675 : vec2<f32> = (vec2<f32>(x_2673.x, x_2673.y) + vec2<f32>(1.0f, 1.0f));
            let x_2676 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
            let x_2678 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2678 + vec2<f32>(1.0f, 1.0f));
            let x_2680 : vec4<f32> = u_xlat14;
            let x_2682 : vec2<f32> = (vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2683 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2682.x, x_2682.y, x_2683.z, x_2683.w);
            let x_2685 : vec2<f32> = u_xlat66;
            let x_2686 : vec2<f32> = (x_2685 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2687 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
            let x_2689 : vec4<f32> = u_xlat15;
            let x_2691 : vec2<f32> = (vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2692 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2691.x, x_2691.y, x_2692.z, x_2692.w);
            let x_2694 : vec2<f32> = u_xlat64;
            let x_2695 : vec2<f32> = (x_2694 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2696 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
            let x_2698 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2698.y, x_2698.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2702 : f32 = u_xlat15.x;
            u_xlat16.z = x_2702;
            let x_2705 : f32 = u_xlat64.x;
            u_xlat16.w = x_2705;
            let x_2708 : f32 = u_xlat17.x;
            u_xlat14.z = x_2708;
            let x_2711 : f32 = u_xlat13.x;
            u_xlat14.w = x_2711;
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2715 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2713.z, x_2713.w, x_2713.x, x_2713.z) + vec4<f32>(x_2715.z, x_2715.w, x_2715.x, x_2715.z));
            let x_2719 : f32 = u_xlat16.y;
            u_xlat15.z = x_2719;
            let x_2722 : f32 = u_xlat64.y;
            u_xlat15.w = x_2722;
            let x_2725 : f32 = u_xlat14.y;
            u_xlat17.z = x_2725;
            let x_2728 : f32 = u_xlat13.z;
            u_xlat17.w = x_2728;
            let x_2730 : vec4<f32> = u_xlat15;
            let x_2732 : vec4<f32> = u_xlat17;
            let x_2734 : vec3<f32> = (vec3<f32>(x_2730.z, x_2730.y, x_2730.w) + vec3<f32>(x_2732.z, x_2732.y, x_2732.w));
            let x_2735 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat14;
            let x_2739 : vec4<f32> = u_xlat18;
            let x_2741 : vec3<f32> = (vec3<f32>(x_2737.x, x_2737.z, x_2737.w) / vec3<f32>(x_2739.z, x_2739.w, x_2739.y));
            let x_2742 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
            let x_2744 : vec4<f32> = u_xlat14;
            let x_2746 : vec3<f32> = (vec3<f32>(x_2744.x, x_2744.y, x_2744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2747 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
            let x_2749 : vec4<f32> = u_xlat17;
            let x_2751 : vec4<f32> = u_xlat13;
            let x_2753 : vec3<f32> = (vec3<f32>(x_2749.z, x_2749.y, x_2749.w) / vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
            let x_2754 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
            let x_2756 : vec4<f32> = u_xlat15;
            let x_2758 : vec3<f32> = (vec3<f32>(x_2756.x, x_2756.y, x_2756.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2759 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
            let x_2761 : vec4<f32> = u_xlat14;
            let x_2764 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2766 : vec3<f32> = (vec3<f32>(x_2761.y, x_2761.x, x_2761.z) * vec3<f32>(x_2764.x, x_2764.x, x_2764.x));
            let x_2767 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
            let x_2769 : vec4<f32> = u_xlat15;
            let x_2772 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2774 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) * vec3<f32>(x_2772.y, x_2772.y, x_2772.y));
            let x_2775 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
            let x_2778 : f32 = u_xlat15.x;
            u_xlat14.w = x_2778;
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2783 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.y, x_2786.w, x_2786.x, x_2786.w));
            let x_2789 : vec4<f32> = u_xlat12;
            let x_2792 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2795 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2792.x, x_2792.y)) + vec2<f32>(x_2795.z, x_2795.w));
            let x_2799 : f32 = u_xlat14.y;
            u_xlat15.w = x_2799;
            let x_2801 : vec4<f32> = u_xlat15;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.y, x_2801.z);
            let x_2803 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2802.x, x_2803.z, x_2802.y);
            let x_2805 : vec4<f32> = u_xlat12;
            let x_2808 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2811 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y) * vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y)) + vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2811.y));
            let x_2814 : vec4<f32> = u_xlat12;
            let x_2817 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y) * vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.y)) + vec4<f32>(x_2820.w, x_2820.y, x_2820.w, x_2820.z));
            let x_2823 : vec4<f32> = u_xlat12;
            let x_2826 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_2829 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y) * vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y)) + vec4<f32>(x_2829.x, x_2829.w, x_2829.z, x_2829.w));
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2834 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.y) * vec4<f32>(x_2834.z, x_2834.w, x_2834.y, x_2834.z));
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2840 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2838.y, x_2838.y, x_2838.z, x_2838.z) * x_2840);
            let x_2843 : f32 = u_xlat13.z;
            let x_2845 : f32 = u_xlat18.y;
            u_xlat85 = (x_2843 * x_2845);
            let x_2848 : vec4<f32> = u_xlat16;
            let x_2849 : vec2<f32> = vec2<f32>(x_2848.x, x_2848.y);
            let x_2851 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
            let x_2858 : vec3<f32> = txVec34;
            let x_2860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
            u_xlat87 = x_2860;
            let x_2862 : vec4<f32> = u_xlat16;
            let x_2863 : vec2<f32> = vec2<f32>(x_2862.z, x_2862.w);
            let x_2865 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
            let x_2873 : vec3<f32> = txVec35;
            let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
            u_xlat88 = x_2875;
            let x_2876 : f32 = u_xlat88;
            let x_2878 : f32 = u_xlat19.y;
            u_xlat88 = (x_2876 * x_2878);
            let x_2881 : f32 = u_xlat19.x;
            let x_2882 : f32 = u_xlat87;
            let x_2884 : f32 = u_xlat88;
            u_xlat87 = ((x_2881 * x_2882) + x_2884);
            let x_2887 : vec2<f32> = u_xlat64;
            let x_2889 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
            let x_2896 : vec3<f32> = txVec36;
            let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
            u_xlat88 = x_2898;
            let x_2900 : f32 = u_xlat19.z;
            let x_2901 : f32 = u_xlat88;
            let x_2903 : f32 = u_xlat87;
            u_xlat87 = ((x_2900 * x_2901) + x_2903);
            let x_2906 : vec4<f32> = u_xlat15;
            let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
            let x_2909 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
            let x_2916 : vec3<f32> = txVec37;
            let x_2918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
            u_xlat88 = x_2918;
            let x_2920 : f32 = u_xlat19.w;
            let x_2921 : f32 = u_xlat88;
            let x_2923 : f32 = u_xlat87;
            u_xlat87 = ((x_2920 * x_2921) + x_2923);
            let x_2926 : vec4<f32> = u_xlat17;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.x, x_2926.y);
            let x_2929 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2936 : vec3<f32> = txVec38;
            let x_2938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
            u_xlat88 = x_2938;
            let x_2940 : f32 = u_xlat20.x;
            let x_2941 : f32 = u_xlat88;
            let x_2943 : f32 = u_xlat87;
            u_xlat87 = ((x_2940 * x_2941) + x_2943);
            let x_2946 : vec4<f32> = u_xlat17;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.z, x_2946.w);
            let x_2949 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec39;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat88 = x_2958;
            let x_2960 : f32 = u_xlat20.y;
            let x_2961 : f32 = u_xlat88;
            let x_2963 : f32 = u_xlat87;
            u_xlat87 = ((x_2960 * x_2961) + x_2963);
            let x_2966 : vec4<f32> = u_xlat15;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec40;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat88 = x_2978;
            let x_2980 : f32 = u_xlat20.z;
            let x_2981 : f32 = u_xlat88;
            let x_2983 : f32 = u_xlat87;
            u_xlat87 = ((x_2980 * x_2981) + x_2983);
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2987 : vec2<f32> = vec2<f32>(x_2986.x, x_2986.y);
            let x_2989 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
            let x_2996 : vec3<f32> = txVec41;
            let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
            u_xlat88 = x_2998;
            let x_3000 : f32 = u_xlat20.w;
            let x_3001 : f32 = u_xlat88;
            let x_3003 : f32 = u_xlat87;
            u_xlat87 = ((x_3000 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.z, x_3006.w);
            let x_3009 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec42;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat88 = x_3018;
            let x_3019 : f32 = u_xlat85;
            let x_3020 : f32 = u_xlat88;
            let x_3022 : f32 = u_xlat87;
            u_xlat59 = ((x_3019 * x_3020) + x_3022);
          } else {
            let x_3025 : vec4<f32> = u_xlat11;
            let x_3028 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3031 : vec2<f32> = ((vec2<f32>(x_3025.x, x_3025.y) * vec2<f32>(x_3028.z, x_3028.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3032 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3031.x, x_3031.y, x_3032.z, x_3032.w);
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3036 : vec2<f32> = floor(vec2<f32>(x_3034.x, x_3034.y));
            let x_3037 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3036.x, x_3036.y, x_3037.z, x_3037.w);
            let x_3039 : vec4<f32> = u_xlat11;
            let x_3042 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3042.z, x_3042.w)) + -(vec2<f32>(x_3045.x, x_3045.y)));
            let x_3049 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3049.x, x_3049.x, x_3049.y, x_3049.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3052 : vec4<f32> = u_xlat13;
            let x_3054 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3052.x, x_3052.x, x_3052.z, x_3052.z) * vec4<f32>(x_3054.x, x_3054.x, x_3054.z, x_3054.z));
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3059 : vec2<f32> = (vec2<f32>(x_3057.y, x_3057.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3060.x, x_3059.x, x_3060.z, x_3059.y);
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3065 : vec2<f32> = u_xlat64;
            let x_3067 : vec2<f32> = ((vec2<f32>(x_3062.x, x_3062.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3065));
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3067.x, x_3068.y, x_3067.y, x_3068.w);
            let x_3070 : vec2<f32> = u_xlat64;
            let x_3072 : vec2<f32> = (-(x_3070) + vec2<f32>(1.0f, 1.0f));
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3072.x, x_3072.y, x_3073.z, x_3073.w);
            let x_3075 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3075, vec2<f32>(0.0f, 0.0f));
            let x_3077 : vec2<f32> = u_xlat66;
            let x_3079 : vec2<f32> = u_xlat66;
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3083 : vec2<f32> = ((-(x_3077) * x_3079) + vec2<f32>(x_3081.x, x_3081.y));
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3083.y, x_3084.z, x_3084.w);
            let x_3086 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3086, vec2<f32>(0.0f, 0.0f));
            let x_3089 : vec2<f32> = u_xlat66;
            let x_3091 : vec2<f32> = u_xlat66;
            let x_3093 : vec4<f32> = u_xlat13;
            let x_3095 : vec2<f32> = ((-(x_3089) * x_3091) + vec2<f32>(x_3093.y, x_3093.w));
            let x_3096 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3095.x, x_3096.y, x_3095.y);
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3100 : vec2<f32> = (vec2<f32>(x_3098.x, x_3098.y) + vec2<f32>(2.0f, 2.0f));
            let x_3101 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3103 : vec3<f32> = u_xlat39;
            let x_3105 : vec2<f32> = (vec2<f32>(x_3103.x, x_3103.z) + vec2<f32>(2.0f, 2.0f));
            let x_3106 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3106.x, x_3105.x, x_3106.z, x_3105.y);
            let x_3109 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3109 * 0.08163200318813323975f);
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3114 : vec3<f32> = (vec3<f32>(x_3112.z, x_3112.x, x_3112.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3115 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3119 : vec2<f32> = (vec2<f32>(x_3117.x, x_3117.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3120 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3119.x, x_3119.y, x_3120.z, x_3120.w);
            let x_3123 : f32 = u_xlat17.y;
            u_xlat16.x = x_3123;
            let x_3125 : vec2<f32> = u_xlat64;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3129 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3129.x, x_3128.x, x_3129.z, x_3128.y);
            let x_3131 : vec2<f32> = u_xlat64;
            let x_3134 : vec2<f32> = ((vec2<f32>(x_3131.x, x_3131.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3135 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3134.x, x_3135.y, x_3134.y, x_3135.w);
            let x_3138 : f32 = u_xlat13.x;
            u_xlat14.y = x_3138;
            let x_3141 : f32 = u_xlat15.y;
            u_xlat14.w = x_3141;
            let x_3143 : vec4<f32> = u_xlat14;
            let x_3144 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3143 + x_3144);
            let x_3146 : vec2<f32> = u_xlat64;
            let x_3149 : vec2<f32> = ((vec2<f32>(x_3146.y, x_3146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3150 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3150.x, x_3149.x, x_3150.z, x_3149.y);
            let x_3152 : vec2<f32> = u_xlat64;
            let x_3155 : vec2<f32> = ((vec2<f32>(x_3152.y, x_3152.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3155.x, x_3156.y, x_3155.y, x_3156.w);
            let x_3159 : f32 = u_xlat13.y;
            u_xlat15.y = x_3159;
            let x_3161 : vec4<f32> = u_xlat15;
            let x_3162 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3161 + x_3162);
            let x_3164 : vec4<f32> = u_xlat14;
            let x_3165 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3164 / x_3165);
            let x_3167 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3167 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3169 : vec4<f32> = u_xlat15;
            let x_3170 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3169 / x_3170);
            let x_3172 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3172 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3174 : vec4<f32> = u_xlat14;
            let x_3177 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3174.w, x_3174.x, x_3174.y, x_3174.z) * vec4<f32>(x_3177.x, x_3177.x, x_3177.x, x_3177.x));
            let x_3180 : vec4<f32> = u_xlat15;
            let x_3183 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3180.x, x_3180.w, x_3180.y, x_3180.z) * vec4<f32>(x_3183.y, x_3183.y, x_3183.y, x_3183.y));
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3187 : vec3<f32> = vec3<f32>(x_3186.y, x_3186.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3187.x, x_3188.y, x_3187.y, x_3187.z);
            let x_3191 : f32 = u_xlat15.x;
            u_xlat17.y = x_3191;
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3193.x, x_3193.y, x_3193.x, x_3193.y) * vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y)) + vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3199.y));
            let x_3202 : vec4<f32> = u_xlat12;
            let x_3205 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3208 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3202.x, x_3202.y) * vec2<f32>(x_3205.x, x_3205.y)) + vec2<f32>(x_3208.w, x_3208.y));
            let x_3212 : f32 = u_xlat17.y;
            u_xlat14.y = x_3212;
            let x_3215 : f32 = u_xlat15.z;
            u_xlat17.y = x_3215;
            let x_3217 : vec4<f32> = u_xlat12;
            let x_3220 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3223 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3217.x, x_3217.y, x_3217.x, x_3217.y) * vec4<f32>(x_3220.x, x_3220.y, x_3220.x, x_3220.y)) + vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3223.y));
            let x_3226 : vec4<f32> = u_xlat12;
            let x_3229 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3232 : vec4<f32> = u_xlat17;
            let x_3234 : vec2<f32> = ((vec2<f32>(x_3226.x, x_3226.y) * vec2<f32>(x_3229.x, x_3229.y)) + vec2<f32>(x_3232.w, x_3232.y));
            let x_3235 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3234.x, x_3234.y, x_3235.z, x_3235.w);
            let x_3238 : f32 = u_xlat17.y;
            u_xlat14.z = x_3238;
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3244 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3247 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3241.x, x_3241.y, x_3241.x, x_3241.y) * vec4<f32>(x_3244.x, x_3244.y, x_3244.x, x_3244.y)) + vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.z));
            let x_3251 : f32 = u_xlat15.w;
            u_xlat17.y = x_3251;
            let x_3254 : vec4<f32> = u_xlat12;
            let x_3257 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3260 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3254.x, x_3254.y, x_3254.x, x_3254.y) * vec4<f32>(x_3257.x, x_3257.y, x_3257.x, x_3257.y)) + vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3260.y));
            let x_3264 : vec4<f32> = u_xlat12;
            let x_3267 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3270 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3264.x, x_3264.y) * vec2<f32>(x_3267.x, x_3267.y)) + vec2<f32>(x_3270.w, x_3270.y));
            let x_3274 : f32 = u_xlat17.y;
            u_xlat14.w = x_3274;
            let x_3277 : vec4<f32> = u_xlat12;
            let x_3280 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3283 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3277.x, x_3277.y) * vec2<f32>(x_3280.x, x_3280.y)) + vec2<f32>(x_3283.x, x_3283.w));
            let x_3286 : vec4<f32> = u_xlat17;
            let x_3287 : vec3<f32> = vec3<f32>(x_3286.x, x_3286.z, x_3286.w);
            let x_3288 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3287.x, x_3288.y, x_3287.y, x_3287.z);
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3293 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3290.x, x_3290.y, x_3290.x, x_3290.y) * vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y)) + vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3296.y));
            let x_3300 : vec4<f32> = u_xlat12;
            let x_3303 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(x_3303.x, x_3303.y)) + vec2<f32>(x_3306.w, x_3306.y));
            let x_3310 : f32 = u_xlat14.x;
            u_xlat15.x = x_3310;
            let x_3312 : vec4<f32> = u_xlat12;
            let x_3315 : vec4<f32> = x_504.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat15;
            let x_3320 : vec2<f32> = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3315.x, x_3315.y)) + vec2<f32>(x_3318.x, x_3318.y));
            let x_3321 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3320.x, x_3320.y, x_3321.z, x_3321.w);
            let x_3324 : vec4<f32> = u_xlat13;
            let x_3326 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3324.x, x_3324.x, x_3324.x, x_3324.x) * x_3326);
            let x_3329 : vec4<f32> = u_xlat13;
            let x_3331 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3329.y, x_3329.y, x_3329.y, x_3329.y) * x_3331);
            let x_3334 : vec4<f32> = u_xlat13;
            let x_3336 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3334.z, x_3334.z, x_3334.z, x_3334.z) * x_3336);
            let x_3338 : vec4<f32> = u_xlat13;
            let x_3340 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3338.w, x_3338.w, x_3338.w, x_3338.w) * x_3340);
            let x_3343 : vec4<f32> = u_xlat18;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.x, x_3343.y);
            let x_3346 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec43;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat85 = x_3355;
            let x_3357 : vec4<f32> = u_xlat18;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.z, x_3357.w);
            let x_3360 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec44;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat87 = x_3369;
            let x_3370 : f32 = u_xlat87;
            let x_3372 : f32 = u_xlat23.y;
            u_xlat87 = (x_3370 * x_3372);
            let x_3375 : f32 = u_xlat23.x;
            let x_3376 : f32 = u_xlat85;
            let x_3378 : f32 = u_xlat87;
            u_xlat85 = ((x_3375 * x_3376) + x_3378);
            let x_3381 : vec2<f32> = u_xlat64;
            let x_3383 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3381.x, x_3381.y, x_3383);
            let x_3390 : vec3<f32> = txVec45;
            let x_3392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3390.xy, x_3390.z);
            u_xlat87 = x_3392;
            let x_3394 : f32 = u_xlat23.z;
            let x_3395 : f32 = u_xlat87;
            let x_3397 : f32 = u_xlat85;
            u_xlat85 = ((x_3394 * x_3395) + x_3397);
            let x_3400 : vec4<f32> = u_xlat21;
            let x_3401 : vec2<f32> = vec2<f32>(x_3400.x, x_3400.y);
            let x_3403 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec46;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat87 = x_3412;
            let x_3414 : f32 = u_xlat23.w;
            let x_3415 : f32 = u_xlat87;
            let x_3417 : f32 = u_xlat85;
            u_xlat85 = ((x_3414 * x_3415) + x_3417);
            let x_3420 : vec4<f32> = u_xlat19;
            let x_3421 : vec2<f32> = vec2<f32>(x_3420.x, x_3420.y);
            let x_3423 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec47;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat87 = x_3432;
            let x_3434 : f32 = u_xlat24.x;
            let x_3435 : f32 = u_xlat87;
            let x_3437 : f32 = u_xlat85;
            u_xlat85 = ((x_3434 * x_3435) + x_3437);
            let x_3440 : vec4<f32> = u_xlat19;
            let x_3441 : vec2<f32> = vec2<f32>(x_3440.z, x_3440.w);
            let x_3443 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec48;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat87 = x_3452;
            let x_3454 : f32 = u_xlat24.y;
            let x_3455 : f32 = u_xlat87;
            let x_3457 : f32 = u_xlat85;
            u_xlat85 = ((x_3454 * x_3455) + x_3457);
            let x_3460 : vec4<f32> = u_xlat20;
            let x_3461 : vec2<f32> = vec2<f32>(x_3460.x, x_3460.y);
            let x_3463 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec49;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat87 = x_3472;
            let x_3474 : f32 = u_xlat24.z;
            let x_3475 : f32 = u_xlat87;
            let x_3477 : f32 = u_xlat85;
            u_xlat85 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec4<f32> = u_xlat21;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.z, x_3480.w);
            let x_3483 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3490 : vec3<f32> = txVec50;
            let x_3492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3490.xy, x_3490.z);
            u_xlat87 = x_3492;
            let x_3494 : f32 = u_xlat24.w;
            let x_3495 : f32 = u_xlat87;
            let x_3497 : f32 = u_xlat85;
            u_xlat85 = ((x_3494 * x_3495) + x_3497);
            let x_3500 : vec4<f32> = u_xlat22;
            let x_3501 : vec2<f32> = vec2<f32>(x_3500.x, x_3500.y);
            let x_3503 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3501.x, x_3501.y, x_3503);
            let x_3510 : vec3<f32> = txVec51;
            let x_3512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3510.xy, x_3510.z);
            u_xlat87 = x_3512;
            let x_3514 : f32 = u_xlat25.x;
            let x_3515 : f32 = u_xlat87;
            let x_3517 : f32 = u_xlat85;
            u_xlat85 = ((x_3514 * x_3515) + x_3517);
            let x_3520 : vec4<f32> = u_xlat22;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.z, x_3520.w);
            let x_3523 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3521.x, x_3521.y, x_3523);
            let x_3530 : vec3<f32> = txVec52;
            let x_3532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3530.xy, x_3530.z);
            u_xlat87 = x_3532;
            let x_3534 : f32 = u_xlat25.y;
            let x_3535 : f32 = u_xlat87;
            let x_3537 : f32 = u_xlat85;
            u_xlat85 = ((x_3534 * x_3535) + x_3537);
            let x_3540 : vec2<f32> = u_xlat40;
            let x_3542 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3540.x, x_3540.y, x_3542);
            let x_3549 : vec3<f32> = txVec53;
            let x_3551 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3549.xy, x_3549.z);
            u_xlat87 = x_3551;
            let x_3553 : f32 = u_xlat25.z;
            let x_3554 : f32 = u_xlat87;
            let x_3556 : f32 = u_xlat85;
            u_xlat85 = ((x_3553 * x_3554) + x_3556);
            let x_3559 : vec2<f32> = u_xlat72;
            let x_3561 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3568 : vec3<f32> = txVec54;
            let x_3570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3568.xy, x_3568.z);
            u_xlat87 = x_3570;
            let x_3572 : f32 = u_xlat25.w;
            let x_3573 : f32 = u_xlat87;
            let x_3575 : f32 = u_xlat85;
            u_xlat85 = ((x_3572 * x_3573) + x_3575);
            let x_3578 : vec4<f32> = u_xlat17;
            let x_3579 : vec2<f32> = vec2<f32>(x_3578.x, x_3578.y);
            let x_3581 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3579.x, x_3579.y, x_3581);
            let x_3588 : vec3<f32> = txVec55;
            let x_3590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3588.xy, x_3588.z);
            u_xlat87 = x_3590;
            let x_3592 : f32 = u_xlat13.x;
            let x_3593 : f32 = u_xlat87;
            let x_3595 : f32 = u_xlat85;
            u_xlat85 = ((x_3592 * x_3593) + x_3595);
            let x_3598 : vec4<f32> = u_xlat17;
            let x_3599 : vec2<f32> = vec2<f32>(x_3598.z, x_3598.w);
            let x_3601 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3599.x, x_3599.y, x_3601);
            let x_3608 : vec3<f32> = txVec56;
            let x_3610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3608.xy, x_3608.z);
            u_xlat87 = x_3610;
            let x_3612 : f32 = u_xlat13.y;
            let x_3613 : f32 = u_xlat87;
            let x_3615 : f32 = u_xlat85;
            u_xlat85 = ((x_3612 * x_3613) + x_3615);
            let x_3618 : vec2<f32> = u_xlat67;
            let x_3620 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3618.x, x_3618.y, x_3620);
            let x_3627 : vec3<f32> = txVec57;
            let x_3629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3627.xy, x_3627.z);
            u_xlat87 = x_3629;
            let x_3631 : f32 = u_xlat13.z;
            let x_3632 : f32 = u_xlat87;
            let x_3634 : f32 = u_xlat85;
            u_xlat85 = ((x_3631 * x_3632) + x_3634);
            let x_3637 : vec4<f32> = u_xlat12;
            let x_3638 : vec2<f32> = vec2<f32>(x_3637.x, x_3637.y);
            let x_3640 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3638.x, x_3638.y, x_3640);
            let x_3647 : vec3<f32> = txVec58;
            let x_3649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3647.xy, x_3647.z);
            u_xlat87 = x_3649;
            let x_3651 : f32 = u_xlat13.w;
            let x_3652 : f32 = u_xlat87;
            let x_3654 : f32 = u_xlat85;
            u_xlat59 = ((x_3651 * x_3652) + x_3654);
          }
        }
      } else {
        let x_3658 : vec4<f32> = u_xlat11;
        let x_3659 : vec2<f32> = vec2<f32>(x_3658.x, x_3658.y);
        let x_3661 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3659.x, x_3659.y, x_3661);
        let x_3668 : vec3<f32> = txVec59;
        let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
        u_xlat59 = x_3670;
      }
      let x_3671 : i32 = u_xlati82;
      let x_3673 : f32 = x_504.x_AdditionalShadowParams[x_3671].x;
      u_xlat85 = (1.0f + -(x_3673));
      let x_3676 : f32 = u_xlat59;
      let x_3677 : i32 = u_xlati82;
      let x_3679 : f32 = x_504.x_AdditionalShadowParams[x_3677].x;
      let x_3681 : f32 = u_xlat85;
      u_xlat59 = ((x_3676 * x_3679) + x_3681);
      let x_3684 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3684);
      let x_3688 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3688 >= 1.0f);
      let x_3690 : bool = u_xlatb85;
      let x_3691 : bool = u_xlatb87;
      u_xlatb85 = (x_3690 | x_3691);
      let x_3693 : bool = u_xlatb85;
      let x_3694 : f32 = u_xlat59;
      u_xlat59 = select(x_3694, 1.0f, x_3693);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3697 : f32 = u_xlat59;
    u_xlat85 = (-(x_3697) + 1.0f);
    let x_3701 : f32 = u_xlat1.x;
    let x_3702 : f32 = u_xlat85;
    let x_3704 : f32 = u_xlat59;
    u_xlat59 = ((x_3701 * x_3702) + x_3704);
    let x_3707 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3707 & 31i)));
    let x_3711 : i32 = u_xlati85;
    let x_3714 : f32 = x_1824.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3711) & bitcast<u32>(x_3714)));
    let x_3718 : i32 = u_xlati85;
    if ((x_3718 != 0i)) {
      let x_3722 : i32 = u_xlati82;
      let x_3724 : f32 = x_1824.x_AdditionalLightsLightTypes[x_3722].el;
      u_xlati85 = i32(x_3724);
      let x_3727 : i32 = u_xlati85;
      u_xlati87 = select(1i, 0i, (x_3727 != 0i));
      let x_3731 : i32 = u_xlati82;
      u_xlati88 = (x_3731 << bitcast<u32>(2i));
      let x_3733 : i32 = u_xlati87;
      if ((x_3733 != 0i)) {
        let x_3737 : vec3<f32> = vs_TEXCOORD1;
        let x_3739 : i32 = u_xlati88;
        let x_3742 : i32 = u_xlati88;
        let x_3746 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3739 + 1i) / 4i)][((x_3742 + 1i) % 4i)];
        let x_3748 : vec3<f32> = (vec3<f32>(x_3737.y, x_3737.y, x_3737.y) * vec3<f32>(x_3746.x, x_3746.y, x_3746.w));
        let x_3749 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3748.x, x_3748.y, x_3748.z, x_3749.w);
        let x_3751 : i32 = u_xlati88;
        let x_3753 : i32 = u_xlati88;
        let x_3756 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[(x_3751 / 4i)][(x_3753 % 4i)];
        let x_3758 : vec3<f32> = vs_TEXCOORD1;
        let x_3761 : vec4<f32> = u_xlat11;
        let x_3763 : vec3<f32> = ((vec3<f32>(x_3756.x, x_3756.y, x_3756.w) * vec3<f32>(x_3758.x, x_3758.x, x_3758.x)) + vec3<f32>(x_3761.x, x_3761.y, x_3761.z));
        let x_3764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3763.x, x_3763.y, x_3763.z, x_3764.w);
        let x_3766 : i32 = u_xlati88;
        let x_3769 : i32 = u_xlati88;
        let x_3773 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3766 + 2i) / 4i)][((x_3769 + 2i) % 4i)];
        let x_3775 : vec3<f32> = vs_TEXCOORD1;
        let x_3778 : vec4<f32> = u_xlat11;
        let x_3780 : vec3<f32> = ((vec3<f32>(x_3773.x, x_3773.y, x_3773.w) * vec3<f32>(x_3775.z, x_3775.z, x_3775.z)) + vec3<f32>(x_3778.x, x_3778.y, x_3778.z));
        let x_3781 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3780.x, x_3780.y, x_3780.z, x_3781.w);
        let x_3783 : vec4<f32> = u_xlat11;
        let x_3785 : i32 = u_xlati88;
        let x_3788 : i32 = u_xlati88;
        let x_3792 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3785 + 3i) / 4i)][((x_3788 + 3i) % 4i)];
        let x_3794 : vec3<f32> = (vec3<f32>(x_3783.x, x_3783.y, x_3783.z) + vec3<f32>(x_3792.x, x_3792.y, x_3792.w));
        let x_3795 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3794.x, x_3794.y, x_3794.z, x_3795.w);
        let x_3797 : vec4<f32> = u_xlat11;
        let x_3799 : vec4<f32> = u_xlat11;
        let x_3801 : vec2<f32> = (vec2<f32>(x_3797.x, x_3797.y) / vec2<f32>(x_3799.z, x_3799.z));
        let x_3802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3801.x, x_3801.y, x_3802.z, x_3802.w);
        let x_3804 : vec4<f32> = u_xlat11;
        let x_3807 : vec2<f32> = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3807.x, x_3807.y, x_3808.z, x_3808.w);
        let x_3810 : vec4<f32> = u_xlat11;
        let x_3814 : vec2<f32> = clamp(vec2<f32>(x_3810.x, x_3810.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3814.x, x_3814.y, x_3815.z, x_3815.w);
        let x_3817 : i32 = u_xlati82;
        let x_3819 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_3817];
        let x_3821 : vec4<f32> = u_xlat11;
        let x_3824 : i32 = u_xlati82;
        let x_3826 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_3824];
        let x_3828 : vec2<f32> = ((vec2<f32>(x_3819.x, x_3819.y) * vec2<f32>(x_3821.x, x_3821.y)) + vec2<f32>(x_3826.z, x_3826.w));
        let x_3829 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3828.x, x_3828.y, x_3829.z, x_3829.w);
      } else {
        let x_3832 : i32 = u_xlati85;
        u_xlatb85 = (x_3832 == 1i);
        let x_3834 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3834);
        let x_3836 : i32 = u_xlati85;
        if ((x_3836 != 0i)) {
          let x_3841 : vec3<f32> = vs_TEXCOORD1;
          let x_3843 : i32 = u_xlati88;
          let x_3846 : i32 = u_xlati88;
          let x_3850 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3843 + 1i) / 4i)][((x_3846 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_3841.y, x_3841.y) * vec2<f32>(x_3850.x, x_3850.y));
          let x_3853 : i32 = u_xlati88;
          let x_3855 : i32 = u_xlati88;
          let x_3858 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[(x_3853 / 4i)][(x_3855 % 4i)];
          let x_3860 : vec3<f32> = vs_TEXCOORD1;
          let x_3863 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3858.x, x_3858.y) * vec2<f32>(x_3860.x, x_3860.x)) + x_3863);
          let x_3865 : i32 = u_xlati88;
          let x_3868 : i32 = u_xlati88;
          let x_3872 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3865 + 2i) / 4i)][((x_3868 + 2i) % 4i)];
          let x_3874 : vec3<f32> = vs_TEXCOORD1;
          let x_3877 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3872.x, x_3872.y) * vec2<f32>(x_3874.z, x_3874.z)) + x_3877);
          let x_3879 : vec2<f32> = u_xlat63;
          let x_3880 : i32 = u_xlati88;
          let x_3883 : i32 = u_xlati88;
          let x_3887 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3880 + 3i) / 4i)][((x_3883 + 3i) % 4i)];
          u_xlat63 = (x_3879 + vec2<f32>(x_3887.x, x_3887.y));
          let x_3890 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3890 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3893 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_3893);
          let x_3895 : i32 = u_xlati82;
          let x_3897 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_3895];
          let x_3899 : vec2<f32> = u_xlat63;
          let x_3901 : i32 = u_xlati82;
          let x_3903 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_3901];
          let x_3905 : vec2<f32> = ((vec2<f32>(x_3897.x, x_3897.y) * x_3899) + vec2<f32>(x_3903.z, x_3903.w));
          let x_3906 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3905.x, x_3905.y, x_3906.z, x_3906.w);
        } else {
          let x_3909 : vec3<f32> = vs_TEXCOORD1;
          let x_3911 : i32 = u_xlati88;
          let x_3914 : i32 = u_xlati88;
          let x_3918 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3911 + 1i) / 4i)][((x_3914 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3909.y, x_3909.y, x_3909.y, x_3909.y) * x_3918);
          let x_3920 : i32 = u_xlati88;
          let x_3922 : i32 = u_xlati88;
          let x_3925 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[(x_3920 / 4i)][(x_3922 % 4i)];
          let x_3926 : vec3<f32> = vs_TEXCOORD1;
          let x_3929 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3925 * vec4<f32>(x_3926.x, x_3926.x, x_3926.x, x_3926.x)) + x_3929);
          let x_3931 : i32 = u_xlati88;
          let x_3934 : i32 = u_xlati88;
          let x_3938 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3931 + 2i) / 4i)][((x_3934 + 2i) % 4i)];
          let x_3939 : vec3<f32> = vs_TEXCOORD1;
          let x_3942 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3938 * vec4<f32>(x_3939.z, x_3939.z, x_3939.z, x_3939.z)) + x_3942);
          let x_3944 : vec4<f32> = u_xlat12;
          let x_3945 : i32 = u_xlati88;
          let x_3948 : i32 = u_xlati88;
          let x_3952 : vec4<f32> = x_1824.x_AdditionalLightsWorldToLights[((x_3945 + 3i) / 4i)][((x_3948 + 3i) % 4i)];
          u_xlat12 = (x_3944 + x_3952);
          let x_3954 : vec4<f32> = u_xlat12;
          let x_3956 : vec4<f32> = u_xlat12;
          let x_3958 : vec3<f32> = (vec3<f32>(x_3954.x, x_3954.y, x_3954.z) / vec3<f32>(x_3956.w, x_3956.w, x_3956.w));
          let x_3959 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3958.x, x_3958.y, x_3958.z, x_3959.w);
          let x_3961 : vec4<f32> = u_xlat12;
          let x_3963 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_3961.x, x_3961.y, x_3961.z), vec3<f32>(x_3963.x, x_3963.y, x_3963.z));
          let x_3966 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_3966);
          let x_3968 : f32 = u_xlat85;
          let x_3970 : vec4<f32> = u_xlat12;
          let x_3972 : vec3<f32> = (vec3<f32>(x_3968, x_3968, x_3968) * vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
          let x_3973 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3972.x, x_3972.y, x_3972.z, x_3973.w);
          let x_3975 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_3975.x, x_3975.y, x_3975.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3980 : f32 = u_xlat85;
          u_xlat85 = max(x_3980, 0.00000099999999747524f);
          let x_3983 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_3983);
          let x_3985 : f32 = u_xlat85;
          let x_3987 : vec4<f32> = u_xlat12;
          let x_3989 : vec3<f32> = (vec3<f32>(x_3985, x_3985, x_3985) * vec3<f32>(x_3987.z, x_3987.x, x_3987.y));
          let x_3990 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
          let x_3993 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3993);
          let x_3997 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3997, 0.0f, 1.0f);
          let x_4001 : vec4<f32> = u_xlat13;
          let x_4003 : vec4<bool> = (vec4<f32>(x_4001.y, x_4001.z, x_4001.y, x_4001.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4003.x, x_4003.y);
          let x_4006 : bool = u_xlatb63.x;
          if (x_4006) {
            let x_4011 : f32 = u_xlat13.x;
            x_4007 = x_4011;
          } else {
            let x_4014 : f32 = u_xlat13.x;
            x_4007 = -(x_4014);
          }
          let x_4016 : f32 = x_4007;
          u_xlat63.x = x_4016;
          let x_4019 : bool = u_xlatb63.y;
          if (x_4019) {
            let x_4024 : f32 = u_xlat13.x;
            x_4020 = x_4024;
          } else {
            let x_4027 : f32 = u_xlat13.x;
            x_4020 = -(x_4027);
          }
          let x_4029 : f32 = x_4020;
          u_xlat63.y = x_4029;
          let x_4031 : vec4<f32> = u_xlat12;
          let x_4033 : f32 = u_xlat85;
          let x_4036 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4031.x, x_4031.y) * vec2<f32>(x_4033, x_4033)) + x_4036);
          let x_4038 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4038 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4041 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4041, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4045 : i32 = u_xlati82;
          let x_4047 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_4045];
          let x_4049 : vec2<f32> = u_xlat63;
          let x_4051 : i32 = u_xlati82;
          let x_4053 : vec4<f32> = x_1824.x_AdditionalLightsCookieAtlasUVRects[x_4051];
          let x_4055 : vec2<f32> = ((vec2<f32>(x_4047.x, x_4047.y) * x_4049) + vec2<f32>(x_4053.z, x_4053.w));
          let x_4056 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4055.x, x_4055.y, x_4056.z, x_4056.w);
        }
      }
      let x_4063 : vec4<f32> = u_xlat11;
      let x_4065 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4063.x, x_4063.y), 0.0f);
      u_xlat11 = x_4065;
      let x_4067 : bool = u_xlatb7.y;
      if (x_4067) {
        let x_4072 : f32 = u_xlat11.w;
        x_4068 = x_4072;
      } else {
        let x_4075 : f32 = u_xlat11.x;
        x_4068 = x_4075;
      }
      let x_4076 : f32 = x_4068;
      u_xlat85 = x_4076;
      let x_4078 : bool = u_xlatb7.x;
      if (x_4078) {
        let x_4082 : vec4<f32> = u_xlat11;
        x_4079 = vec3<f32>(x_4082.x, x_4082.y, x_4082.z);
      } else {
        let x_4085 : f32 = u_xlat85;
        x_4079 = vec3<f32>(x_4085, x_4085, x_4085);
      }
      let x_4087 : vec3<f32> = x_4079;
      let x_4088 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4087.x, x_4087.y, x_4087.z, x_4088.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4094 : vec4<f32> = u_xlat11;
    let x_4096 : i32 = u_xlati82;
    let x_4098 : vec4<f32> = x_2284.x_AdditionalLightsColor[x_4096];
    let x_4100 : vec3<f32> = (vec3<f32>(x_4094.x, x_4094.y, x_4094.z) * vec3<f32>(x_4098.x, x_4098.y, x_4098.z));
    let x_4101 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4100.x, x_4100.y, x_4100.z, x_4101.w);
    let x_4103 : f32 = u_xlat83;
    let x_4104 : f32 = u_xlat59;
    u_xlat82 = (x_4103 * x_4104);
    let x_4106 : vec4<f32> = u_xlat4;
    let x_4108 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4106.x, x_4106.y, x_4106.z), vec3<f32>(x_4108.x, x_4108.y, x_4108.z));
    let x_4111 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4111, 0.0f, 1.0f);
    let x_4113 : f32 = u_xlat82;
    let x_4114 : f32 = u_xlat83;
    u_xlat82 = (x_4113 * x_4114);
    let x_4116 : f32 = u_xlat82;
    let x_4118 : vec4<f32> = u_xlat11;
    let x_4120 : vec3<f32> = (vec3<f32>(x_4116, x_4116, x_4116) * vec3<f32>(x_4118.x, x_4118.y, x_4118.z));
    let x_4121 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4120.x, x_4120.y, x_4120.z, x_4121.w);
    let x_4123 : vec4<f32> = u_xlat9;
    let x_4125 : f32 = u_xlat84;
    let x_4128 : vec3<f32> = u_xlat5;
    let x_4129 : vec3<f32> = ((vec3<f32>(x_4123.x, x_4123.y, x_4123.z) * vec3<f32>(x_4125, x_4125, x_4125)) + x_4128);
    let x_4130 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4129.x, x_4129.y, x_4129.z, x_4130.w);
    let x_4132 : vec4<f32> = u_xlat9;
    let x_4134 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4132.x, x_4132.y, x_4132.z), vec3<f32>(x_4134.x, x_4134.y, x_4134.z));
    let x_4137 : f32 = u_xlat82;
    u_xlat82 = max(x_4137, 1.17549435e-38f);
    let x_4139 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4139);
    let x_4141 : f32 = u_xlat82;
    let x_4143 : vec4<f32> = u_xlat9;
    let x_4145 : vec3<f32> = (vec3<f32>(x_4141, x_4141, x_4141) * vec3<f32>(x_4143.x, x_4143.y, x_4143.z));
    let x_4146 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4145.x, x_4145.y, x_4145.z, x_4146.w);
    let x_4148 : vec4<f32> = u_xlat4;
    let x_4150 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4148.x, x_4148.y, x_4148.z), vec3<f32>(x_4150.x, x_4150.y, x_4150.z));
    let x_4153 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4153, 0.0f, 1.0f);
    let x_4155 : vec4<f32> = u_xlat10;
    let x_4157 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4155.x, x_4155.y, x_4155.z), vec3<f32>(x_4157.x, x_4157.y, x_4157.z));
    let x_4160 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4160, 0.0f, 1.0f);
    let x_4162 : f32 = u_xlat82;
    let x_4163 : f32 = u_xlat82;
    u_xlat82 = (x_4162 * x_4163);
    let x_4165 : f32 = u_xlat82;
    let x_4167 : f32 = u_xlat8.x;
    u_xlat82 = ((x_4165 * x_4167) + 1.00001001358032226562f);
    let x_4170 : f32 = u_xlat83;
    let x_4171 : f32 = u_xlat83;
    u_xlat83 = (x_4170 * x_4171);
    let x_4173 : f32 = u_xlat82;
    let x_4174 : f32 = u_xlat82;
    u_xlat82 = (x_4173 * x_4174);
    let x_4176 : f32 = u_xlat83;
    u_xlat83 = max(x_4176, 0.10000000149011611938f);
    let x_4178 : f32 = u_xlat82;
    let x_4179 : f32 = u_xlat83;
    u_xlat82 = (x_4178 * x_4179);
    let x_4181 : f32 = u_xlat79;
    let x_4182 : f32 = u_xlat82;
    u_xlat82 = (x_4181 * x_4182);
    let x_4184 : f32 = u_xlat27;
    let x_4185 : f32 = u_xlat82;
    u_xlat82 = (x_4184 / x_4185);
    let x_4187 : vec4<f32> = u_xlat0;
    let x_4189 : f32 = u_xlat82;
    let x_4192 : vec3<f32> = u_xlat28;
    let x_4193 : vec3<f32> = ((vec3<f32>(x_4187.x, x_4187.y, x_4187.z) * vec3<f32>(x_4189, x_4189, x_4189)) + x_4192);
    let x_4194 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4193.x, x_4193.y, x_4193.z, x_4194.w);
    let x_4196 : vec4<f32> = u_xlat9;
    let x_4198 : vec4<f32> = u_xlat11;
    let x_4201 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4196.x, x_4196.y, x_4196.z) * vec3<f32>(x_4198.x, x_4198.y, x_4198.z)) + x_4201);

    continuing {
      let x_4203 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4203 + bitcast<u32>(1i));
    }
  }
  let x_4205 : vec3<f32> = u_xlat29;
  let x_4206 : vec3<f32> = u_xlat3;
  let x_4209 : vec4<f32> = u_xlat6;
  let x_4211 : vec3<f32> = ((x_4205 * vec3<f32>(x_4206.x, x_4206.x, x_4206.x)) + vec3<f32>(x_4209.x, x_4209.y, x_4209.z));
  let x_4212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4211.x, x_4211.y, x_4211.z, x_4212.w);
  let x_4216 : vec3<f32> = u_xlat34;
  let x_4217 : vec4<f32> = u_xlat0;
  let x_4219 : vec3<f32> = (x_4216 + vec3<f32>(x_4217.x, x_4217.y, x_4217.z));
  let x_4220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4219.x, x_4219.y, x_4219.z, x_4220.w);
  let x_4224 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_4224 == 1.0f);
  let x_4226 : bool = u_xlatb0;
  if (x_4226) {
    let x_4231 : f32 = u_xlat2.x;
    x_4227 = x_4231;
  } else {
    x_4227 = 1.0f;
  }
  let x_4233 : f32 = x_4227;
  SV_Target0.w = x_4233;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


