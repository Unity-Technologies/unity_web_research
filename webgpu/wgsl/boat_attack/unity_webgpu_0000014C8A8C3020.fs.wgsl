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

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_553 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1902 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu27 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2400 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu83 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_192 : f32;
  var x_269 : vec3<f32>;
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
  var x_1985 : f32;
  var x_1997 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2538 : f32;
  var x_2548 : f32;
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
  var x_4131 : f32;
  var x_4144 : f32;
  var x_4202 : f32;
  var x_4213 : vec3<f32>;
  var x_4416 : f32;
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
  let x_238 : vec3<f32> = (-(x_232) + x_237);
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat55;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_265 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_265;
  let x_267 : bool = u_xlatb29;
  if (x_267) {
    let x_272 : vec4<f32> = u_xlat4;
    x_269 = vec3<f32>(x_272.x, x_272.y, x_272.z);
  } else {
    let x_275 : vec3<f32> = u_xlat5;
    x_269 = x_275;
  }
  let x_276 : vec3<f32> = x_269;
  u_xlat29 = x_276;
  let x_278 : vec3<f32> = vs_TEXCOORD2;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_283 : vec3<f32> = (vec3<f32>(x_278.z, x_278.x, x_278.y) * vec3<f32>(x_281.y, x_281.z, x_281.x));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = vs_TEXCOORD2;
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_286.y, x_286.z, x_286.x) * vec3<f32>(x_288.z, x_288.x, x_288.y)) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec2<f32> = u_xlat53;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec2<f32> = u_xlat53;
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : f32 = u_xlat78;
  let x_323 : vec3<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * x_323) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat78;
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = vs_TEXCOORD1.y;
  let x_347 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_345 * x_347);
  let x_350 : f32 = x_45.unity_MatrixV[0i].z;
  let x_352 : f32 = vs_TEXCOORD1.x;
  let x_354 : f32 = u_xlat78;
  u_xlat78 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = x_45.unity_MatrixV[2i].z;
  let x_359 : f32 = vs_TEXCOORD1.z;
  let x_361 : f32 = u_xlat78;
  u_xlat78 = ((x_357 * x_359) + x_361);
  let x_363 : f32 = u_xlat78;
  let x_366 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_363 + x_366);
  let x_368 : f32 = u_xlat78;
  let x_372 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_368) + -(x_372));
  let x_375 : f32 = u_xlat78;
  u_xlat78 = max(x_375, 0.0f);
  let x_377 : f32 = u_xlat78;
  let x_380 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_377 * x_380);
  u_xlat4.w = 1.0f;
  let x_385 : vec4<f32> = x_185.unity_SHAr;
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_185.unity_SHAg;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_391, x_392);
  let x_397 : vec4<f32> = x_185.unity_SHAb;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_397, x_398);
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_402.y, x_402.z, x_402.z, x_402.x) * vec4<f32>(x_404.x, x_404.y, x_404.z, x_404.z));
  let x_410 : vec4<f32> = x_185.unity_SHBr;
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_185.unity_SHBg;
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_185.unity_SHBb;
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_422, x_423);
  let x_427 : f32 = u_xlat4.y;
  let x_429 : f32 = u_xlat4.y;
  u_xlat53.x = (x_427 * x_429);
  let x_433 : f32 = u_xlat4.x;
  let x_435 : f32 = u_xlat4.x;
  let x_438 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_433 * x_435) + -(x_438));
  let x_444 : vec4<f32> = x_185.unity_SHC;
  let x_446 : vec2<f32> = u_xlat53;
  let x_449 : vec4<f32> = u_xlat7;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.x, x_446.x, x_446.x)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec3<f32> = u_xlat5;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_454 + vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_458, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_462 : f32 = u_xlat1.x;
  u_xlat53.x = ((-(x_462) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_470 : f32 = u_xlat1.y;
  let x_472 : f32 = x_70.x_Smoothness;
  let x_475 : f32 = u_xlat53.x;
  u_xlat79 = ((x_470 * x_472) + -(x_475));
  let x_479 : vec2<f32> = u_xlat53;
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_479.x, x_479.x, x_479.x) * vec3<f32>(x_481.y, x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = x_70.x_BaseColor;
  let x_492 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_487.x, x_487.y, x_487.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec2<f32> = u_xlat1;
  let x_497 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.x, x_495.x) * vec3<f32>(x_497.x, x_497.y, x_497.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = u_xlat1.y;
  let x_509 : f32 = x_70.x_Smoothness;
  u_xlat1.x = ((-(x_506) * x_509) + 1.0f);
  let x_515 : f32 = u_xlat1.x;
  let x_517 : f32 = u_xlat1.x;
  u_xlat27.x = (x_515 * x_517);
  let x_521 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_521, 0.0078125f);
  let x_526 : f32 = u_xlat27.x;
  let x_528 : f32 = u_xlat27.x;
  u_xlat53.x = (x_526 * x_528);
  let x_531 : f32 = u_xlat79;
  u_xlat79 = (x_531 + 1.0f);
  let x_533 : f32 = u_xlat79;
  u_xlat79 = clamp(x_533, 0.0f, 1.0f);
  let x_537 : f32 = u_xlat27.x;
  u_xlat82 = ((x_537 * 4.0f) + 2.0f);
  let x_542 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_542, 1.0f);
  let x_555 : f32 = x_553.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_555);
  let x_557 : bool = u_xlatb83;
  if (x_557) {
    let x_561 : f32 = x_553.x_MainLightShadowParams.y;
    u_xlatb83 = (x_561 == 1.0f);
    let x_563 : bool = u_xlatb83;
    if (x_563) {
      let x_567 : vec4<f32> = vs_TEXCOORD6;
      let x_570 : vec4<f32> = x_553.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) + x_570);
      let x_573 : vec4<f32> = u_xlat6;
      let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
      let x_576 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_574.x, x_574.y, x_576);
      let x_588 : vec3<f32> = txVec0;
      let x_590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_588.xy, x_588.z);
      u_xlat7.x = x_590;
      let x_593 : vec4<f32> = u_xlat6;
      let x_594 : vec2<f32> = vec2<f32>(x_593.z, x_593.w);
      let x_596 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_594.x, x_594.y, x_596);
      let x_603 : vec3<f32> = txVec1;
      let x_605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_603.xy, x_603.z);
      u_xlat7.y = x_605;
      let x_607 : vec4<f32> = vs_TEXCOORD6;
      let x_610 : vec4<f32> = x_553.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) + x_610);
      let x_613 : vec4<f32> = u_xlat6;
      let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
      let x_616 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_614.x, x_614.y, x_616);
      let x_623 : vec3<f32> = txVec2;
      let x_625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_623.xy, x_623.z);
      u_xlat7.z = x_625;
      let x_628 : vec4<f32> = u_xlat6;
      let x_629 : vec2<f32> = vec2<f32>(x_628.z, x_628.w);
      let x_631 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_629.x, x_629.y, x_631);
      let x_638 : vec3<f32> = txVec3;
      let x_640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_638.xy, x_638.z);
      u_xlat7.w = x_640;
      let x_643 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_643, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_650 : f32 = x_553.x_MainLightShadowParams.y;
      u_xlatb6 = (x_650 == 2.0f);
      let x_652 : bool = u_xlatb6;
      if (x_652) {
        let x_655 : vec4<f32> = vs_TEXCOORD6;
        let x_658 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_663 : vec2<f32> = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.z, x_658.w)) + vec2<f32>(0.5f, 0.5f));
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec4<f32> = u_xlat6;
        let x_668 : vec2<f32> = floor(vec2<f32>(x_666.x, x_666.y));
        let x_669 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_672 : vec4<f32> = vs_TEXCOORD6;
        let x_675 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_675.z, x_675.w)) + -(vec2<f32>(x_678.x, x_678.y)));
        let x_682 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_682.x, x_682.x, x_682.y, x_682.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_687 : vec4<f32> = u_xlat7;
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_687.x, x_687.x, x_687.z, x_687.z) * vec4<f32>(x_689.x, x_689.x, x_689.z, x_689.z));
        let x_692 : vec4<f32> = u_xlat8;
        let x_696 : vec2<f32> = (vec2<f32>(x_692.y, x_692.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_697.y, x_696.y, x_697.w);
        let x_699 : vec4<f32> = u_xlat8;
        let x_702 : vec2<f32> = u_xlat58;
        let x_704 : vec2<f32> = ((vec2<f32>(x_699.x, x_699.z) * vec2<f32>(0.5f, 0.5f)) + -(x_702));
        let x_705 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_708) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec2<f32> = u_xlat58;
        let x_715 : vec2<f32> = min(x_713, vec2<f32>(0.0f, 0.0f));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat9;
        let x_724 : vec2<f32> = u_xlat60;
        let x_725 : vec2<f32> = ((-(vec2<f32>(x_718.x, x_718.y)) * vec2<f32>(x_721.x, x_721.y)) + x_724);
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_728, vec2<f32>(0.0f, 0.0f));
        let x_730 : vec2<f32> = u_xlat58;
        let x_732 : vec2<f32> = u_xlat58;
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_730) * x_732) + vec2<f32>(x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat9;
        let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) + vec2<f32>(1.0f, 1.0f));
        let x_740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_742 + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat8;
        let x_749 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_750 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_752 : vec2<f32> = u_xlat60;
        let x_753 : vec2<f32> = (x_752 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat9;
        let x_758 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_762 : vec2<f32> = u_xlat58;
        let x_763 : vec2<f32> = (x_762 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_766.y, x_766.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_770 : f32 = u_xlat9.x;
        u_xlat10.z = x_770;
        let x_773 : f32 = u_xlat58.x;
        u_xlat10.w = x_773;
        let x_776 : f32 = u_xlat11.x;
        u_xlat8.z = x_776;
        let x_779 : f32 = u_xlat7.x;
        u_xlat8.w = x_779;
        let x_782 : vec4<f32> = u_xlat8;
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_782.z, x_782.w, x_782.x, x_782.z) + vec4<f32>(x_784.z, x_784.w, x_784.x, x_784.z));
        let x_788 : f32 = u_xlat10.y;
        u_xlat9.z = x_788;
        let x_791 : f32 = u_xlat58.y;
        u_xlat9.w = x_791;
        let x_794 : f32 = u_xlat8.y;
        u_xlat11.z = x_794;
        let x_797 : f32 = u_xlat7.z;
        u_xlat11.w = x_797;
        let x_799 : vec4<f32> = u_xlat9;
        let x_801 : vec4<f32> = u_xlat11;
        let x_803 : vec3<f32> = (vec3<f32>(x_799.z, x_799.y, x_799.w) + vec3<f32>(x_801.z, x_801.y, x_801.w));
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat8;
        let x_808 : vec4<f32> = u_xlat12;
        let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.z, x_806.w) / vec3<f32>(x_808.z, x_808.w, x_808.y));
        let x_811 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat8;
        let x_819 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat11;
        let x_824 : vec4<f32> = u_xlat7;
        let x_826 : vec3<f32> = (vec3<f32>(x_822.z, x_822.y, x_822.w) / vec3<f32>(x_824.x, x_824.y, x_824.z));
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat9;
        let x_831 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat8;
        let x_837 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_839 : vec3<f32> = (vec3<f32>(x_834.y, x_834.x, x_834.z) * vec3<f32>(x_837.x, x_837.x, x_837.x));
        let x_840 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat9;
        let x_845 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845.y, x_845.y, x_845.y));
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_851 : f32 = u_xlat9.x;
        u_xlat8.w = x_851;
        let x_853 : vec4<f32> = u_xlat6;
        let x_856 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y)) + vec4<f32>(x_859.y, x_859.w, x_859.x, x_859.w));
        let x_862 : vec4<f32> = u_xlat6;
        let x_865 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_865.x, x_865.y)) + vec2<f32>(x_868.z, x_868.w));
        let x_872 : f32 = u_xlat8.y;
        u_xlat9.w = x_872;
        let x_874 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = vec2<f32>(x_874.y, x_874.z);
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_878 : vec4<f32> = u_xlat6;
        let x_881 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y) * vec4<f32>(x_881.x, x_881.y, x_881.x, x_881.y)) + vec4<f32>(x_884.x, x_884.y, x_884.z, x_884.y));
        let x_887 : vec4<f32> = u_xlat6;
        let x_890 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y) * vec4<f32>(x_890.x, x_890.y, x_890.x, x_890.y)) + vec4<f32>(x_893.w, x_893.y, x_893.w, x_893.z));
        let x_896 : vec4<f32> = u_xlat6;
        let x_899 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y) * vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.y)) + vec4<f32>(x_902.x, x_902.w, x_902.z, x_902.w));
        let x_906 : vec4<f32> = u_xlat7;
        let x_908 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_906.x, x_906.x, x_906.x, x_906.y) * vec4<f32>(x_908.z, x_908.w, x_908.y, x_908.z));
        let x_912 : vec4<f32> = u_xlat7;
        let x_914 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_912.y, x_912.y, x_912.z, x_912.z) * x_914);
        let x_917 : f32 = u_xlat7.z;
        let x_919 : f32 = u_xlat12.y;
        u_xlat6.x = (x_917 * x_919);
        let x_923 : vec4<f32> = u_xlat10;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_934 : vec3<f32> = txVec4;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat32.x = x_936;
        let x_939 : vec4<f32> = u_xlat10;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec5;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
        u_xlat7.x = x_951;
        let x_954 : f32 = u_xlat7.x;
        let x_956 : f32 = u_xlat13.y;
        u_xlat7.x = (x_954 * x_956);
        let x_960 : f32 = u_xlat13.x;
        let x_962 : f32 = u_xlat32.x;
        let x_965 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_960 * x_962) + x_965);
        let x_969 : vec2<f32> = u_xlat58;
        let x_971 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec6;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat58.x = x_980;
        let x_983 : f32 = u_xlat13.z;
        let x_985 : f32 = u_xlat58.x;
        let x_988 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_983 * x_985) + x_988);
        let x_992 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
        let x_995 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec7;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat58.x = x_1004;
        let x_1007 : f32 = u_xlat13.w;
        let x_1009 : f32 = u_xlat58.x;
        let x_1012 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1007 * x_1009) + x_1012);
        let x_1016 : vec4<f32> = u_xlat11;
        let x_1017 : vec2<f32> = vec2<f32>(x_1016.x, x_1016.y);
        let x_1019 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec8;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
        u_xlat58.x = x_1028;
        let x_1031 : f32 = u_xlat14.x;
        let x_1033 : f32 = u_xlat58.x;
        let x_1036 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1031 * x_1033) + x_1036);
        let x_1040 : vec4<f32> = u_xlat11;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.z, x_1040.w);
        let x_1043 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec9;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1050.xy, x_1050.z);
        u_xlat58.x = x_1052;
        let x_1055 : f32 = u_xlat14.y;
        let x_1057 : f32 = u_xlat58.x;
        let x_1060 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1055 * x_1057) + x_1060);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.z, x_1064.w);
        let x_1067 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec10;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1074.xy, x_1074.z);
        u_xlat58.x = x_1076;
        let x_1079 : f32 = u_xlat14.z;
        let x_1081 : f32 = u_xlat58.x;
        let x_1084 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1079 * x_1081) + x_1084);
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1089 : vec2<f32> = vec2<f32>(x_1088.x, x_1088.y);
        let x_1091 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1089.x, x_1089.y, x_1091);
        let x_1098 : vec3<f32> = txVec11;
        let x_1100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1098.xy, x_1098.z);
        u_xlat58.x = x_1100;
        let x_1103 : f32 = u_xlat14.w;
        let x_1105 : f32 = u_xlat58.x;
        let x_1108 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1103 * x_1105) + x_1108);
        let x_1112 : vec4<f32> = u_xlat8;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.z, x_1112.w);
        let x_1115 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec12;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
        u_xlat58.x = x_1124;
        let x_1127 : f32 = u_xlat6.x;
        let x_1129 : f32 = u_xlat58.x;
        let x_1132 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1127 * x_1129) + x_1132);
      } else {
        let x_1135 : vec4<f32> = vs_TEXCOORD6;
        let x_1138 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat6;
        let x_1146 : vec2<f32> = floor(vec2<f32>(x_1144.x, x_1144.y));
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = vs_TEXCOORD6;
        let x_1152 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1152.z, x_1152.w)) + -(vec2<f32>(x_1155.x, x_1155.y)));
        let x_1159 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1159.x, x_1159.x, x_1159.y, x_1159.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1162.x, x_1162.x, x_1162.z, x_1162.z) * vec4<f32>(x_1164.x, x_1164.x, x_1164.z, x_1164.z));
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1177 : vec2<f32> = u_xlat58;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1177));
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1182 : vec2<f32> = u_xlat58;
        let x_1184 : vec2<f32> = (-(x_1182) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1187, vec2<f32>(0.0f, 0.0f));
        let x_1189 : vec2<f32> = u_xlat60;
        let x_1191 : vec2<f32> = u_xlat60;
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1195 : vec2<f32> = ((-(x_1189) * x_1191) + vec2<f32>(x_1193.x, x_1193.y));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1198, vec2<f32>(0.0f, 0.0f));
        let x_1201 : vec2<f32> = u_xlat60;
        let x_1203 : vec2<f32> = u_xlat60;
        let x_1205 : vec4<f32> = u_xlat7;
        let x_1207 : vec2<f32> = ((-(x_1201) * x_1203) + vec2<f32>(x_1205.y, x_1205.w));
        let x_1208 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1207.x, x_1208.y, x_1207.y);
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1210.x, x_1210.y) + vec2<f32>(2.0f, 2.0f));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec3<f32> = u_xlat33;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.z) + vec2<f32>(2.0f, 2.0f));
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1221 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1221 * 0.08163200318813323975f);
        let x_1225 : vec4<f32> = u_xlat7;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1225.z, x_1225.x, x_1225.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1234 : vec2<f32> = (vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : f32 = u_xlat11.y;
        u_xlat10.x = x_1238;
        let x_1240 : vec2<f32> = u_xlat58;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1248.x, x_1247.x, x_1248.z, x_1247.y);
        let x_1250 : vec2<f32> = u_xlat58;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1250.x, x_1250.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1255 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
        let x_1258 : f32 = u_xlat7.x;
        u_xlat8.y = x_1258;
        let x_1261 : f32 = u_xlat9.y;
        u_xlat8.w = x_1261;
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1264 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1263 + x_1264);
        let x_1266 : vec2<f32> = u_xlat58;
        let x_1269 : vec2<f32> = ((vec2<f32>(x_1266.y, x_1266.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1270.x, x_1269.x, x_1270.z, x_1269.y);
        let x_1272 : vec2<f32> = u_xlat58;
        let x_1275 : vec2<f32> = ((vec2<f32>(x_1272.y, x_1272.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1275.x, x_1276.y, x_1275.y, x_1276.w);
        let x_1279 : f32 = u_xlat7.y;
        u_xlat9.y = x_1279;
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1281 + x_1282);
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1293 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1293 / x_1294);
        let x_1296 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1296 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1301 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1298.w, x_1298.x, x_1298.y, x_1298.z) * vec4<f32>(x_1301.x, x_1301.x, x_1301.x, x_1301.x));
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1304.x, x_1304.w, x_1304.y, x_1304.z) * vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1315 : f32 = u_xlat9.x;
        u_xlat11.y = x_1315;
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1323.y));
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1332.w, x_1332.y));
        let x_1336 : f32 = u_xlat11.y;
        u_xlat8.y = x_1336;
        let x_1339 : f32 = u_xlat9.z;
        u_xlat11.y = x_1339;
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.w, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1362 : f32 = u_xlat11.y;
        u_xlat8.z = x_1362;
        let x_1365 : vec4<f32> = u_xlat6;
        let x_1368 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.z));
        let x_1375 : f32 = u_xlat9.w;
        u_xlat11.y = x_1375;
        let x_1378 : vec4<f32> = u_xlat6;
        let x_1381 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1384 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y) * vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y)) + vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1384.y));
        let x_1388 : vec4<f32> = u_xlat6;
        let x_1391 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.w, x_1394.y));
        let x_1398 : f32 = u_xlat11.y;
        u_xlat8.w = x_1398;
        let x_1401 : vec4<f32> = u_xlat6;
        let x_1404 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(x_1404.x, x_1404.y)) + vec2<f32>(x_1407.x, x_1407.w));
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1411 : vec3<f32> = vec3<f32>(x_1410.x, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1411.z);
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y) * vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y)) + vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1420.y));
        let x_1424 : vec4<f32> = u_xlat6;
        let x_1427 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1427.x, x_1427.y)) + vec2<f32>(x_1430.w, x_1430.y));
        let x_1434 : f32 = u_xlat8.x;
        u_xlat9.x = x_1434;
        let x_1436 : vec4<f32> = u_xlat6;
        let x_1439 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = ((vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(x_1439.x, x_1439.y)) + vec2<f32>(x_1442.x, x_1442.y));
        let x_1445 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1448.x, x_1448.x, x_1448.x, x_1448.x) * x_1450);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1453.y, x_1453.y, x_1453.y, x_1453.y) * x_1455);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1460 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1458.z, x_1458.z, x_1458.z, x_1458.z) * x_1460);
        let x_1462 : vec4<f32> = u_xlat7;
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1462.w, x_1462.w, x_1462.w, x_1462.w) * x_1464);
        let x_1467 : vec4<f32> = u_xlat12;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec13;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat8.x = x_1479;
        let x_1482 : vec4<f32> = u_xlat12;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1493 : vec3<f32> = txVec14;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat86 = x_1495;
        let x_1496 : f32 = u_xlat86;
        let x_1498 : f32 = u_xlat17.y;
        u_xlat86 = (x_1496 * x_1498);
        let x_1501 : f32 = u_xlat17.x;
        let x_1503 : f32 = u_xlat8.x;
        let x_1505 : f32 = u_xlat86;
        u_xlat8.x = ((x_1501 * x_1503) + x_1505);
        let x_1509 : vec2<f32> = u_xlat58;
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec15;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat58.x = x_1520;
        let x_1523 : f32 = u_xlat17.z;
        let x_1525 : f32 = u_xlat58.x;
        let x_1528 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1523 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat15;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1543 : vec3<f32> = txVec16;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1543.xy, x_1543.z);
        u_xlat84 = x_1545;
        let x_1547 : f32 = u_xlat17.w;
        let x_1548 : f32 = u_xlat84;
        let x_1551 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec4<f32> = u_xlat13;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec17;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat84 = x_1567;
        let x_1569 : f32 = u_xlat18.x;
        let x_1570 : f32 = u_xlat84;
        let x_1573 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1569 * x_1570) + x_1573);
        let x_1577 : vec4<f32> = u_xlat13;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec18;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat84 = x_1589;
        let x_1591 : f32 = u_xlat18.y;
        let x_1592 : f32 = u_xlat84;
        let x_1595 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1591 * x_1592) + x_1595);
        let x_1599 : vec4<f32> = u_xlat14;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec19;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat84 = x_1611;
        let x_1613 : f32 = u_xlat18.z;
        let x_1614 : f32 = u_xlat84;
        let x_1617 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1613 * x_1614) + x_1617);
        let x_1621 : vec4<f32> = u_xlat15;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.z, x_1621.w);
        let x_1624 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec20;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat84 = x_1633;
        let x_1635 : f32 = u_xlat18.w;
        let x_1636 : f32 = u_xlat84;
        let x_1639 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1635 * x_1636) + x_1639);
        let x_1643 : vec4<f32> = u_xlat16;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec21;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1653.xy, x_1653.z);
        u_xlat84 = x_1655;
        let x_1657 : f32 = u_xlat19.x;
        let x_1658 : f32 = u_xlat84;
        let x_1661 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1657 * x_1658) + x_1661);
        let x_1665 : vec4<f32> = u_xlat16;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec22;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat84 = x_1677;
        let x_1679 : f32 = u_xlat19.y;
        let x_1680 : f32 = u_xlat84;
        let x_1683 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1679 * x_1680) + x_1683);
        let x_1687 : vec2<f32> = u_xlat34;
        let x_1689 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec23;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1696.xy, x_1696.z);
        u_xlat84 = x_1698;
        let x_1700 : f32 = u_xlat19.z;
        let x_1701 : f32 = u_xlat84;
        let x_1704 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1700 * x_1701) + x_1704);
        let x_1708 : vec2<f32> = u_xlat66;
        let x_1710 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec24;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1717.xy, x_1717.z);
        u_xlat84 = x_1719;
        let x_1721 : f32 = u_xlat19.w;
        let x_1722 : f32 = u_xlat84;
        let x_1725 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1721 * x_1722) + x_1725);
        let x_1729 : vec4<f32> = u_xlat11;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec25;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1739.xy, x_1739.z);
        u_xlat84 = x_1741;
        let x_1743 : f32 = u_xlat7.x;
        let x_1744 : f32 = u_xlat84;
        let x_1747 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1743 * x_1744) + x_1747);
        let x_1751 : vec4<f32> = u_xlat11;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec26;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1761.xy, x_1761.z);
        u_xlat84 = x_1763;
        let x_1765 : f32 = u_xlat7.y;
        let x_1766 : f32 = u_xlat84;
        let x_1769 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1765 * x_1766) + x_1769);
        let x_1773 : vec2<f32> = u_xlat61;
        let x_1775 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
        let x_1782 : vec3<f32> = txVec27;
        let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
        u_xlat84 = x_1784;
        let x_1786 : f32 = u_xlat7.z;
        let x_1787 : f32 = u_xlat84;
        let x_1790 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1786 * x_1787) + x_1790);
        let x_1794 : vec4<f32> = u_xlat6;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec28;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat6.x = x_1806;
        let x_1809 : f32 = u_xlat7.w;
        let x_1811 : f32 = u_xlat6.x;
        let x_1814 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1809 * x_1811) + x_1814);
      }
    }
  } else {
    let x_1818 : vec4<f32> = vs_TEXCOORD6;
    let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
    let x_1821 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
    let x_1828 : vec3<f32> = txVec29;
    let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
    u_xlat83 = x_1830;
  }
  let x_1832 : f32 = x_553.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1832) + 1.0f);
  let x_1836 : f32 = u_xlat83;
  let x_1838 : f32 = x_553.x_MainLightShadowParams.x;
  let x_1841 : f32 = u_xlat6.x;
  u_xlat83 = ((x_1836 * x_1838) + x_1841);
  let x_1844 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1844);
  let x_1850 : f32 = vs_TEXCOORD6.z;
  u_xlatb32.x = (x_1850 >= 1.0f);
  let x_1854 : bool = u_xlatb32.x;
  let x_1855 : bool = u_xlatb6;
  u_xlatb6 = (x_1854 | x_1855);
  let x_1857 : bool = u_xlatb6;
  let x_1858 : f32 = u_xlat83;
  u_xlat83 = select(x_1858, 1.0f, x_1857);
  let x_1860 : vec3<f32> = vs_TEXCOORD1;
  let x_1862 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1864 : vec3<f32> = (x_1860 + -(x_1862));
  let x_1865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
  let x_1867 : vec4<f32> = u_xlat6;
  let x_1869 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1867.x, x_1867.y, x_1867.z), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1874 : f32 = u_xlat6.x;
  let x_1876 : f32 = x_553.x_MainLightShadowParams.z;
  let x_1879 : f32 = x_553.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_1874 * x_1876) + x_1879);
  let x_1883 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1883, 0.0f, 1.0f);
  let x_1886 : f32 = u_xlat83;
  u_xlat58.x = (-(x_1886) + 1.0f);
  let x_1891 : f32 = u_xlat32.x;
  let x_1893 : f32 = u_xlat58.x;
  let x_1895 : f32 = u_xlat83;
  u_xlat83 = ((x_1891 * x_1893) + x_1895);
  let x_1904 : f32 = x_1902.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_1904 == -1.0f));
  let x_1908 : bool = u_xlatb32.x;
  if (x_1908) {
    let x_1911 : vec3<f32> = vs_TEXCOORD1;
    let x_1914 : vec4<f32> = x_1902.x_MainLightWorldToLight[1i];
    let x_1916 : vec2<f32> = (vec2<f32>(x_1911.y, x_1911.y) * vec2<f32>(x_1914.x, x_1914.y));
    let x_1917 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1916.x, x_1916.y, x_1917.z);
    let x_1920 : vec4<f32> = x_1902.x_MainLightWorldToLight[0i];
    let x_1922 : vec3<f32> = vs_TEXCOORD1;
    let x_1925 : vec3<f32> = u_xlat32;
    let x_1927 : vec2<f32> = ((vec2<f32>(x_1920.x, x_1920.y) * vec2<f32>(x_1922.x, x_1922.x)) + vec2<f32>(x_1925.x, x_1925.y));
    let x_1928 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1927.x, x_1927.y, x_1928.z);
    let x_1931 : vec4<f32> = x_1902.x_MainLightWorldToLight[2i];
    let x_1933 : vec3<f32> = vs_TEXCOORD1;
    let x_1936 : vec3<f32> = u_xlat32;
    let x_1938 : vec2<f32> = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1933.z, x_1933.z)) + vec2<f32>(x_1936.x, x_1936.y));
    let x_1939 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1938.x, x_1938.y, x_1939.z);
    let x_1941 : vec3<f32> = u_xlat32;
    let x_1944 : vec4<f32> = x_1902.x_MainLightWorldToLight[3i];
    let x_1946 : vec2<f32> = (vec2<f32>(x_1941.x, x_1941.y) + vec2<f32>(x_1944.x, x_1944.y));
    let x_1947 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1946.x, x_1946.y, x_1947.z);
    let x_1949 : vec3<f32> = u_xlat32;
    let x_1952 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1953 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1952.x, x_1952.y, x_1953.z);
    let x_1960 : vec3<f32> = u_xlat32;
    let x_1963 : f32 = x_45.x_GlobalMipBias.x;
    let x_1964 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1960.x, x_1960.y), x_1963);
    u_xlat7 = x_1964;
    let x_1966 : f32 = x_1902.x_MainLightCookieTextureFormat;
    let x_1968 : f32 = x_1902.x_MainLightCookieTextureFormat;
    let x_1970 : f32 = x_1902.x_MainLightCookieTextureFormat;
    let x_1972 : f32 = x_1902.x_MainLightCookieTextureFormat;
    let x_1973 : vec4<f32> = vec4<f32>(x_1966, x_1968, x_1970, x_1972);
    let x_1981 : vec4<bool> = (vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1973.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_1981.x, x_1981.y);
    let x_1984 : bool = u_xlatb32.y;
    if (x_1984) {
      let x_1989 : f32 = u_xlat7.w;
      x_1985 = x_1989;
    } else {
      let x_1992 : f32 = u_xlat7.x;
      x_1985 = x_1992;
    }
    let x_1993 : f32 = x_1985;
    u_xlat58.x = x_1993;
    let x_1996 : bool = u_xlatb32.x;
    if (x_1996) {
      let x_2000 : vec4<f32> = u_xlat7;
      x_1997 = vec3<f32>(x_2000.x, x_2000.y, x_2000.z);
    } else {
      let x_2003 : vec2<f32> = u_xlat58;
      x_1997 = vec3<f32>(x_2003.x, x_2003.x, x_2003.x);
    }
    let x_2005 : vec3<f32> = x_1997;
    u_xlat32 = x_2005;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2010 : vec3<f32> = u_xlat32;
  let x_2012 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat32 = (x_2010 * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec3<f32> = u_xlat29;
  let x_2017 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_2015), vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2022 : f32 = u_xlat7.x;
  let x_2024 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2022 + x_2024);
  let x_2027 : vec4<f32> = u_xlat4;
  let x_2029 : vec4<f32> = u_xlat7;
  let x_2033 : vec3<f32> = u_xlat29;
  let x_2035 : vec3<f32> = ((vec3<f32>(x_2027.x, x_2027.y, x_2027.z) * -(vec3<f32>(x_2029.x, x_2029.x, x_2029.x))) + -(x_2033));
  let x_2036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2039 : vec4<f32> = u_xlat4;
  let x_2041 : vec3<f32> = u_xlat29;
  u_xlat85 = dot(vec3<f32>(x_2039.x, x_2039.y, x_2039.z), x_2041);
  let x_2043 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2043, 0.0f, 1.0f);
  let x_2045 : f32 = u_xlat85;
  u_xlat85 = (-(x_2045) + 1.0f);
  let x_2048 : f32 = u_xlat85;
  let x_2049 : f32 = u_xlat85;
  u_xlat85 = (x_2048 * x_2049);
  let x_2051 : f32 = u_xlat85;
  let x_2052 : f32 = u_xlat85;
  u_xlat85 = (x_2051 * x_2052);
  let x_2055 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_2055) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2063 : f32 = u_xlat1.x;
  let x_2065 : f32 = u_xlat8.x;
  u_xlat1.x = (x_2063 * x_2065);
  let x_2069 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2069 * 6.0f);
  let x_2081 : vec4<f32> = u_xlat7;
  let x_2084 : f32 = u_xlat1.x;
  let x_2085 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2081.x, x_2081.y, x_2081.z), x_2084);
  u_xlat8 = x_2085;
  let x_2087 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2087 + -1.0f);
  let x_2091 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_2093 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2091 * x_2093) + 1.0f);
  let x_2098 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2098, 0.0f);
  let x_2102 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2102);
  let x_2106 : f32 = u_xlat1.x;
  let x_2108 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2106 * x_2108);
  let x_2112 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2112);
  let x_2116 : f32 = u_xlat1.x;
  let x_2118 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2116 * x_2118);
  let x_2121 : vec4<f32> = u_xlat8;
  let x_2123 : vec2<f32> = u_xlat1;
  let x_2125 : vec3<f32> = (vec3<f32>(x_2121.x, x_2121.y, x_2121.z) * vec3<f32>(x_2123.x, x_2123.x, x_2123.x));
  let x_2126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2128 : vec3<f32> = u_xlat27;
  let x_2130 : vec3<f32> = u_xlat27;
  u_xlat1 = ((vec2<f32>(x_2128.x, x_2128.x) * vec2<f32>(x_2130.x, x_2130.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2136 : f32 = u_xlat1.y;
  u_xlat27.x = (1.0f / x_2136);
  let x_2139 : vec4<f32> = u_xlat0;
  let x_2142 : f32 = u_xlat79;
  let x_2144 : vec3<f32> = (-(vec3<f32>(x_2139.x, x_2139.y, x_2139.z)) + vec3<f32>(x_2142, x_2142, x_2142));
  let x_2145 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
  let x_2147 : f32 = u_xlat85;
  let x_2149 : vec4<f32> = u_xlat8;
  let x_2152 : vec4<f32> = u_xlat0;
  let x_2154 : vec3<f32> = ((vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z)) + vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
  let x_2155 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
  let x_2157 : vec3<f32> = u_xlat27;
  let x_2159 : vec4<f32> = u_xlat8;
  let x_2161 : vec3<f32> = (vec3<f32>(x_2157.x, x_2157.x, x_2157.x) * vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : vec4<f32> = u_xlat7;
  let x_2166 : vec4<f32> = u_xlat8;
  let x_2168 : vec3<f32> = (vec3<f32>(x_2164.x, x_2164.y, x_2164.z) * vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
  let x_2171 : vec3<f32> = u_xlat5;
  let x_2172 : vec3<f32> = u_xlat28;
  let x_2174 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2171 * x_2172) + vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : f32 = u_xlat83;
  let x_2179 : f32 = x_185.unity_LightData.z;
  u_xlat27.x = (x_2177 * x_2179);
  let x_2182 : vec4<f32> = u_xlat4;
  let x_2185 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2182.x, x_2182.y, x_2182.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2188, 0.0f, 1.0f);
  let x_2190 : f32 = u_xlat79;
  let x_2192 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2190 * x_2192);
  let x_2195 : vec3<f32> = u_xlat27;
  let x_2197 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2195.x, x_2195.x, x_2195.x) * x_2197);
  let x_2199 : vec3<f32> = u_xlat29;
  let x_2201 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2203 : vec3<f32> = (x_2199 + vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
  let x_2204 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
  let x_2206 : vec4<f32> = u_xlat7;
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2206.x, x_2206.y, x_2206.z), vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
  let x_2213 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_2213, 1.17549435e-38f);
  let x_2218 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_2218);
  let x_2221 : vec3<f32> = u_xlat27;
  let x_2223 : vec4<f32> = u_xlat7;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2221.x, x_2221.x, x_2221.x) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec4<f32> = u_xlat4;
  let x_2230 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2235 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2235, 0.0f, 1.0f);
  let x_2239 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat27.z = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2246 : f32 = u_xlat27.z;
  u_xlat27.z = clamp(x_2246, 0.0f, 1.0f);
  let x_2249 : vec3<f32> = u_xlat27;
  let x_2251 : vec3<f32> = u_xlat27;
  let x_2253 : vec2<f32> = (vec2<f32>(x_2249.x, x_2249.z) * vec2<f32>(x_2251.x, x_2251.z));
  let x_2254 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_2253.x, x_2254.y, x_2253.y);
  let x_2257 : f32 = u_xlat27.x;
  let x_2259 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_2257 * x_2259) + 1.00001001358032226562f);
  let x_2265 : f32 = u_xlat27.x;
  let x_2267 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2265 * x_2267);
  let x_2271 : f32 = u_xlat27.z;
  u_xlat79 = max(x_2271, 0.10000000149011611938f);
  let x_2274 : f32 = u_xlat79;
  let x_2276 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2274 * x_2276);
  let x_2279 : f32 = u_xlat82;
  let x_2281 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2279 * x_2281);
  let x_2285 : f32 = u_xlat53.x;
  let x_2287 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2285 / x_2287);
  let x_2290 : vec4<f32> = u_xlat0;
  let x_2292 : vec3<f32> = u_xlat27;
  let x_2295 : vec3<f32> = u_xlat28;
  let x_2296 : vec3<f32> = ((vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * vec3<f32>(x_2292.x, x_2292.x, x_2292.x)) + x_2295);
  let x_2297 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : vec3<f32> = u_xlat32;
  let x_2300 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2299 * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2304 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2306 : f32 = x_185.unity_LightData.y;
  u_xlat27.x = min(x_2304, x_2306);
  let x_2312 : f32 = u_xlat27.x;
  u_xlatu27 = bitcast<u32>(i32(x_2312));
  let x_2316 : f32 = u_xlat6.x;
  let x_2319 : f32 = x_553.x_AdditionalShadowFadeParams.x;
  let x_2322 : f32 = x_553.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2316 * x_2319) + x_2322);
  let x_2324 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2324, 0.0f, 1.0f);
  let x_2328 : f32 = x_1902.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2330 : f32 = x_1902.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2332 : f32 = x_1902.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2334 : f32 = x_1902.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2335 : vec4<f32> = vec4<f32>(x_2328, x_2330, x_2332, x_2334);
  let x_2341 : vec4<bool> = (vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2335.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2341.x, x_2341.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2353 : u32 = u_xlatu_loop_1;
    let x_2354 : u32 = u_xlatu27;
    if ((x_2353 < x_2354)) {
    } else {
      break;
    }
    let x_2357 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2357 >> 2u);
    let x_2361 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2361 & 3u));
    let x_2364 : u32 = u_xlatu6;
    let x_2367 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2364)];
    let x_2377 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2382 : vec4<u32> = indexable[x_2377];
    u_xlat6.x = dot(x_2367, bitcast<vec4<f32>>(x_2382));
    let x_2388 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2388);
    let x_2390 : vec3<f32> = vs_TEXCOORD1;
    let x_2401 : i32 = u_xlati6;
    let x_2403 : vec4<f32> = x_2400.x_AdditionalLightsPosition[x_2401];
    let x_2406 : i32 = u_xlati6;
    let x_2408 : vec4<f32> = x_2400.x_AdditionalLightsPosition[x_2406];
    let x_2410 : vec3<f32> = ((-(x_2390) * vec3<f32>(x_2403.w, x_2403.w, x_2403.w)) + vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
    let x_2411 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
    let x_2414 : vec4<f32> = u_xlat9;
    let x_2416 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2414.x, x_2414.y, x_2414.z), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
    let x_2419 : f32 = u_xlat59;
    u_xlat59 = max(x_2419, 0.00006103515625f);
    let x_2422 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2422);
    let x_2424 : f32 = u_xlat85;
    let x_2426 : vec4<f32> = u_xlat9;
    let x_2428 : vec3<f32> = (vec3<f32>(x_2424, x_2424, x_2424) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
    let x_2431 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2431);
    let x_2433 : f32 = u_xlat59;
    let x_2434 : i32 = u_xlati6;
    let x_2436 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2434].x;
    u_xlat59 = (x_2433 * x_2436);
    let x_2438 : f32 = u_xlat59;
    let x_2440 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2438) * x_2440) + 1.0f);
    let x_2443 : f32 = u_xlat59;
    u_xlat59 = max(x_2443, 0.0f);
    let x_2445 : f32 = u_xlat59;
    let x_2446 : f32 = u_xlat59;
    u_xlat59 = (x_2445 * x_2446);
    let x_2448 : f32 = u_xlat59;
    let x_2449 : f32 = u_xlat86;
    u_xlat59 = (x_2448 * x_2449);
    let x_2451 : i32 = u_xlati6;
    let x_2453 : vec4<f32> = x_2400.x_AdditionalLightsSpotDir[x_2451];
    let x_2455 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2453.x, x_2453.y, x_2453.z), vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
    let x_2458 : f32 = u_xlat86;
    let x_2459 : i32 = u_xlati6;
    let x_2461 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2459].z;
    let x_2463 : i32 = u_xlati6;
    let x_2465 : f32 = x_2400.x_AdditionalLightsAttenuation[x_2463].w;
    u_xlat86 = ((x_2458 * x_2461) + x_2465);
    let x_2467 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2467, 0.0f, 1.0f);
    let x_2469 : f32 = u_xlat86;
    let x_2470 : f32 = u_xlat86;
    u_xlat86 = (x_2469 * x_2470);
    let x_2472 : f32 = u_xlat59;
    let x_2473 : f32 = u_xlat86;
    u_xlat59 = (x_2472 * x_2473);
    let x_2477 : i32 = u_xlati6;
    let x_2479 : f32 = x_553.x_AdditionalShadowParams[x_2477].w;
    u_xlati86 = i32(x_2479);
    let x_2482 : i32 = u_xlati86;
    u_xlatb87 = (x_2482 >= 0i);
    let x_2484 : bool = u_xlatb87;
    if (x_2484) {
      let x_2488 : i32 = u_xlati6;
      let x_2490 : f32 = x_553.x_AdditionalShadowParams[x_2488].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2490, x_2490, x_2490, x_2490))));
      let x_2494 : bool = u_xlatb87;
      if (x_2494) {
        let x_2499 : vec4<f32> = u_xlat10;
        let x_2502 : vec4<f32> = u_xlat10;
        let x_2505 : vec4<bool> = (abs(vec4<f32>(x_2499.z, x_2499.z, x_2499.y, x_2499.z)) >= abs(vec4<f32>(x_2502.x, x_2502.y, x_2502.x, x_2502.x)));
        let x_2507 : vec3<bool> = vec3<bool>(x_2505.x, x_2505.y, x_2505.z);
        let x_2508 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
        let x_2511 : bool = u_xlatb11.y;
        let x_2513 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2511 & x_2513);
        let x_2515 : vec4<f32> = u_xlat10;
        let x_2518 : vec4<bool> = (-(vec4<f32>(x_2515.z, x_2515.y, x_2515.z, x_2515.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2519 : vec3<bool> = vec3<bool>(x_2518.x, x_2518.y, x_2518.w);
        let x_2520 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2519.x, x_2519.y, x_2520.z, x_2519.z);
        let x_2523 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2523);
        let x_2528 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2528);
        let x_2534 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2534);
        let x_2537 : bool = u_xlatb11.z;
        if (x_2537) {
          let x_2542 : f32 = u_xlat11.y;
          x_2538 = x_2542;
        } else {
          let x_2544 : f32 = u_xlat88;
          x_2538 = x_2544;
        }
        let x_2545 : f32 = x_2538;
        u_xlat88 = x_2545;
        let x_2547 : bool = u_xlatb87;
        if (x_2547) {
          let x_2552 : f32 = u_xlat11.x;
          x_2548 = x_2552;
        } else {
          let x_2554 : f32 = u_xlat88;
          x_2548 = x_2554;
        }
        let x_2555 : f32 = x_2548;
        u_xlat87 = x_2555;
        let x_2556 : i32 = u_xlati6;
        let x_2558 : f32 = x_553.x_AdditionalShadowParams[x_2556].w;
        u_xlat88 = trunc(x_2558);
        let x_2560 : f32 = u_xlat87;
        let x_2561 : f32 = u_xlat88;
        u_xlat87 = (x_2560 + x_2561);
        let x_2563 : f32 = u_xlat87;
        u_xlati86 = i32(x_2563);
      }
      let x_2565 : i32 = u_xlati86;
      u_xlati86 = (x_2565 << bitcast<u32>(2i));
      let x_2567 : vec3<f32> = vs_TEXCOORD1;
      let x_2570 : i32 = u_xlati86;
      let x_2573 : i32 = u_xlati86;
      let x_2577 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2570 + 1i) / 4i)][((x_2573 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2567.y, x_2567.y, x_2567.y, x_2567.y) * x_2577);
      let x_2579 : i32 = u_xlati86;
      let x_2581 : i32 = u_xlati86;
      let x_2584 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[(x_2579 / 4i)][(x_2581 % 4i)];
      let x_2585 : vec3<f32> = vs_TEXCOORD1;
      let x_2588 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2584 * vec4<f32>(x_2585.x, x_2585.x, x_2585.x, x_2585.x)) + x_2588);
      let x_2590 : i32 = u_xlati86;
      let x_2593 : i32 = u_xlati86;
      let x_2597 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2590 + 2i) / 4i)][((x_2593 + 2i) % 4i)];
      let x_2598 : vec3<f32> = vs_TEXCOORD1;
      let x_2601 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2597 * vec4<f32>(x_2598.z, x_2598.z, x_2598.z, x_2598.z)) + x_2601);
      let x_2603 : vec4<f32> = u_xlat11;
      let x_2604 : i32 = u_xlati86;
      let x_2607 : i32 = u_xlati86;
      let x_2611 : vec4<f32> = x_553.x_AdditionalLightsWorldToShadow[((x_2604 + 3i) / 4i)][((x_2607 + 3i) % 4i)];
      u_xlat11 = (x_2603 + x_2611);
      let x_2613 : vec4<f32> = u_xlat11;
      let x_2615 : vec4<f32> = u_xlat11;
      let x_2617 : vec3<f32> = (vec3<f32>(x_2613.x, x_2613.y, x_2613.z) / vec3<f32>(x_2615.w, x_2615.w, x_2615.w));
      let x_2618 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
      let x_2621 : i32 = u_xlati6;
      let x_2623 : f32 = x_553.x_AdditionalShadowParams[x_2621].y;
      u_xlatb86 = (0.0f < x_2623);
      let x_2625 : bool = u_xlatb86;
      if (x_2625) {
        let x_2628 : i32 = u_xlati6;
        let x_2630 : f32 = x_553.x_AdditionalShadowParams[x_2628].y;
        u_xlatb86 = (1.0f == x_2630);
        let x_2632 : bool = u_xlatb86;
        if (x_2632) {
          let x_2635 : vec4<f32> = u_xlat11;
          let x_2638 : vec4<f32> = x_553.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2635.x, x_2635.y, x_2635.x, x_2635.y) + x_2638);
          let x_2641 : vec4<f32> = u_xlat12;
          let x_2642 : vec2<f32> = vec2<f32>(x_2641.x, x_2641.y);
          let x_2644 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2642.x, x_2642.y, x_2644);
          let x_2652 : vec3<f32> = txVec30;
          let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
          u_xlat13.x = x_2654;
          let x_2657 : vec4<f32> = u_xlat12;
          let x_2658 : vec2<f32> = vec2<f32>(x_2657.z, x_2657.w);
          let x_2660 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
          let x_2667 : vec3<f32> = txVec31;
          let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
          u_xlat13.y = x_2669;
          let x_2671 : vec4<f32> = u_xlat11;
          let x_2675 : vec4<f32> = x_553.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2671.x, x_2671.y, x_2671.x, x_2671.y) + x_2675);
          let x_2678 : vec4<f32> = u_xlat12;
          let x_2679 : vec2<f32> = vec2<f32>(x_2678.x, x_2678.y);
          let x_2681 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2679.x, x_2679.y, x_2681);
          let x_2688 : vec3<f32> = txVec32;
          let x_2690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2688.xy, x_2688.z);
          u_xlat13.z = x_2690;
          let x_2693 : vec4<f32> = u_xlat12;
          let x_2694 : vec2<f32> = vec2<f32>(x_2693.z, x_2693.w);
          let x_2696 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
          let x_2703 : vec3<f32> = txVec33;
          let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
          u_xlat13.w = x_2705;
          let x_2707 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2707, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2710 : i32 = u_xlati6;
          let x_2712 : f32 = x_553.x_AdditionalShadowParams[x_2710].y;
          u_xlatb87 = (2.0f == x_2712);
          let x_2714 : bool = u_xlatb87;
          if (x_2714) {
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2721 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2724 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.y) * vec2<f32>(x_2721.z, x_2721.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2725 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
            let x_2727 : vec4<f32> = u_xlat12;
            let x_2729 : vec2<f32> = floor(vec2<f32>(x_2727.x, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2729.x, x_2729.y, x_2730.z, x_2730.w);
            let x_2733 : vec4<f32> = u_xlat11;
            let x_2736 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2739 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2733.x, x_2733.y) * vec2<f32>(x_2736.z, x_2736.w)) + -(vec2<f32>(x_2739.x, x_2739.y)));
            let x_2743 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2743.x, x_2743.x, x_2743.y, x_2743.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2746 : vec4<f32> = u_xlat13;
            let x_2748 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2746.x, x_2746.x, x_2746.z, x_2746.z) * vec4<f32>(x_2748.x, x_2748.x, x_2748.z, x_2748.z));
            let x_2751 : vec4<f32> = u_xlat14;
            let x_2753 : vec2<f32> = (vec2<f32>(x_2751.y, x_2751.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2754 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2753.x, x_2754.y, x_2753.y, x_2754.w);
            let x_2756 : vec4<f32> = u_xlat14;
            let x_2759 : vec2<f32> = u_xlat64;
            let x_2761 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2759));
            let x_2762 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2761.x, x_2761.y, x_2762.z, x_2762.w);
            let x_2764 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2764) + vec2<f32>(1.0f, 1.0f));
            let x_2767 : vec2<f32> = u_xlat64;
            let x_2768 : vec2<f32> = min(x_2767, vec2<f32>(0.0f, 0.0f));
            let x_2769 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
            let x_2771 : vec4<f32> = u_xlat15;
            let x_2774 : vec4<f32> = u_xlat15;
            let x_2777 : vec2<f32> = u_xlat66;
            let x_2778 : vec2<f32> = ((-(vec2<f32>(x_2771.x, x_2771.y)) * vec2<f32>(x_2774.x, x_2774.y)) + x_2777);
            let x_2779 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2781 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2781, vec2<f32>(0.0f, 0.0f));
            let x_2783 : vec2<f32> = u_xlat64;
            let x_2785 : vec2<f32> = u_xlat64;
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2783) * x_2785) + vec2<f32>(x_2787.y, x_2787.w));
            let x_2790 : vec4<f32> = u_xlat15;
            let x_2792 : vec2<f32> = (vec2<f32>(x_2790.x, x_2790.y) + vec2<f32>(1.0f, 1.0f));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2792.x, x_2792.y, x_2793.z, x_2793.w);
            let x_2795 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2795 + vec2<f32>(1.0f, 1.0f));
            let x_2797 : vec4<f32> = u_xlat14;
            let x_2799 : vec2<f32> = (vec2<f32>(x_2797.x, x_2797.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2800 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
            let x_2802 : vec2<f32> = u_xlat66;
            let x_2803 : vec2<f32> = (x_2802 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat15;
            let x_2808 : vec2<f32> = (vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2809 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
            let x_2811 : vec2<f32> = u_xlat64;
            let x_2812 : vec2<f32> = (x_2811 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2813 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2815.y, x_2815.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2819 : f32 = u_xlat15.x;
            u_xlat16.z = x_2819;
            let x_2822 : f32 = u_xlat64.x;
            u_xlat16.w = x_2822;
            let x_2825 : f32 = u_xlat17.x;
            u_xlat14.z = x_2825;
            let x_2828 : f32 = u_xlat13.x;
            u_xlat14.w = x_2828;
            let x_2830 : vec4<f32> = u_xlat14;
            let x_2832 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2830.z, x_2830.w, x_2830.x, x_2830.z) + vec4<f32>(x_2832.z, x_2832.w, x_2832.x, x_2832.z));
            let x_2836 : f32 = u_xlat16.y;
            u_xlat15.z = x_2836;
            let x_2839 : f32 = u_xlat64.y;
            u_xlat15.w = x_2839;
            let x_2842 : f32 = u_xlat14.y;
            u_xlat17.z = x_2842;
            let x_2845 : f32 = u_xlat13.z;
            u_xlat17.w = x_2845;
            let x_2847 : vec4<f32> = u_xlat15;
            let x_2849 : vec4<f32> = u_xlat17;
            let x_2851 : vec3<f32> = (vec3<f32>(x_2847.z, x_2847.y, x_2847.w) + vec3<f32>(x_2849.z, x_2849.y, x_2849.w));
            let x_2852 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2852.w);
            let x_2854 : vec4<f32> = u_xlat14;
            let x_2856 : vec4<f32> = u_xlat18;
            let x_2858 : vec3<f32> = (vec3<f32>(x_2854.x, x_2854.z, x_2854.w) / vec3<f32>(x_2856.z, x_2856.w, x_2856.y));
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
            let x_2861 : vec4<f32> = u_xlat14;
            let x_2863 : vec3<f32> = (vec3<f32>(x_2861.x, x_2861.y, x_2861.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2864 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
            let x_2866 : vec4<f32> = u_xlat17;
            let x_2868 : vec4<f32> = u_xlat13;
            let x_2870 : vec3<f32> = (vec3<f32>(x_2866.z, x_2866.y, x_2866.w) / vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
            let x_2871 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
            let x_2873 : vec4<f32> = u_xlat15;
            let x_2875 : vec3<f32> = (vec3<f32>(x_2873.x, x_2873.y, x_2873.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2876 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2875.x, x_2875.y, x_2875.z, x_2876.w);
            let x_2878 : vec4<f32> = u_xlat14;
            let x_2881 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2883 : vec3<f32> = (vec3<f32>(x_2878.y, x_2878.x, x_2878.z) * vec3<f32>(x_2881.x, x_2881.x, x_2881.x));
            let x_2884 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
            let x_2886 : vec4<f32> = u_xlat15;
            let x_2889 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2891 : vec3<f32> = (vec3<f32>(x_2886.x, x_2886.y, x_2886.z) * vec3<f32>(x_2889.y, x_2889.y, x_2889.y));
            let x_2892 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
            let x_2895 : f32 = u_xlat15.x;
            u_xlat14.w = x_2895;
            let x_2897 : vec4<f32> = u_xlat12;
            let x_2900 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2903 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2897.x, x_2897.y, x_2897.x, x_2897.y) * vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y)) + vec4<f32>(x_2903.y, x_2903.w, x_2903.x, x_2903.w));
            let x_2906 : vec4<f32> = u_xlat12;
            let x_2909 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2912 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2906.x, x_2906.y) * vec2<f32>(x_2909.x, x_2909.y)) + vec2<f32>(x_2912.z, x_2912.w));
            let x_2916 : f32 = u_xlat14.y;
            u_xlat15.w = x_2916;
            let x_2918 : vec4<f32> = u_xlat15;
            let x_2919 : vec2<f32> = vec2<f32>(x_2918.y, x_2918.z);
            let x_2920 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2920.x, x_2919.x, x_2920.z, x_2919.y);
            let x_2922 : vec4<f32> = u_xlat12;
            let x_2925 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y) * vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y)) + vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2928.y));
            let x_2931 : vec4<f32> = u_xlat12;
            let x_2934 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2937 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y) * vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.y)) + vec4<f32>(x_2937.w, x_2937.y, x_2937.w, x_2937.z));
            let x_2940 : vec4<f32> = u_xlat12;
            let x_2943 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y) * vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y)) + vec4<f32>(x_2946.x, x_2946.w, x_2946.z, x_2946.w));
            let x_2949 : vec4<f32> = u_xlat13;
            let x_2951 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2949.x, x_2949.x, x_2949.x, x_2949.y) * vec4<f32>(x_2951.z, x_2951.w, x_2951.y, x_2951.z));
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2957 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2955.y, x_2955.y, x_2955.z, x_2955.z) * x_2957);
            let x_2960 : f32 = u_xlat13.z;
            let x_2962 : f32 = u_xlat18.y;
            u_xlat87 = (x_2960 * x_2962);
            let x_2965 : vec4<f32> = u_xlat16;
            let x_2966 : vec2<f32> = vec2<f32>(x_2965.x, x_2965.y);
            let x_2968 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
            let x_2975 : vec3<f32> = txVec34;
            let x_2977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
            u_xlat88 = x_2977;
            let x_2979 : vec4<f32> = u_xlat16;
            let x_2980 : vec2<f32> = vec2<f32>(x_2979.z, x_2979.w);
            let x_2982 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
            let x_2990 : vec3<f32> = txVec35;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat89 = x_2992;
            let x_2993 : f32 = u_xlat89;
            let x_2995 : f32 = u_xlat19.y;
            u_xlat89 = (x_2993 * x_2995);
            let x_2998 : f32 = u_xlat19.x;
            let x_2999 : f32 = u_xlat88;
            let x_3001 : f32 = u_xlat89;
            u_xlat88 = ((x_2998 * x_2999) + x_3001);
            let x_3004 : vec2<f32> = u_xlat64;
            let x_3006 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec36;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat89 = x_3015;
            let x_3017 : f32 = u_xlat19.z;
            let x_3018 : f32 = u_xlat89;
            let x_3020 : f32 = u_xlat88;
            u_xlat88 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.x, x_3023.y);
            let x_3026 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec37;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat89 = x_3035;
            let x_3037 : f32 = u_xlat19.w;
            let x_3038 : f32 = u_xlat89;
            let x_3040 : f32 = u_xlat88;
            u_xlat88 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec4<f32> = u_xlat17;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.x, x_3043.y);
            let x_3046 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec38;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat89 = x_3055;
            let x_3057 : f32 = u_xlat20.x;
            let x_3058 : f32 = u_xlat89;
            let x_3060 : f32 = u_xlat88;
            u_xlat88 = ((x_3057 * x_3058) + x_3060);
            let x_3063 : vec4<f32> = u_xlat17;
            let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
            let x_3066 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
            let x_3073 : vec3<f32> = txVec39;
            let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
            u_xlat89 = x_3075;
            let x_3077 : f32 = u_xlat20.y;
            let x_3078 : f32 = u_xlat89;
            let x_3080 : f32 = u_xlat88;
            u_xlat88 = ((x_3077 * x_3078) + x_3080);
            let x_3083 : vec4<f32> = u_xlat15;
            let x_3084 : vec2<f32> = vec2<f32>(x_3083.z, x_3083.w);
            let x_3086 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec40;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat89 = x_3095;
            let x_3097 : f32 = u_xlat20.z;
            let x_3098 : f32 = u_xlat89;
            let x_3100 : f32 = u_xlat88;
            u_xlat88 = ((x_3097 * x_3098) + x_3100);
            let x_3103 : vec4<f32> = u_xlat14;
            let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
            let x_3106 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec41;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat89 = x_3115;
            let x_3117 : f32 = u_xlat20.w;
            let x_3118 : f32 = u_xlat89;
            let x_3120 : f32 = u_xlat88;
            u_xlat88 = ((x_3117 * x_3118) + x_3120);
            let x_3123 : vec4<f32> = u_xlat14;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec42;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat89 = x_3135;
            let x_3136 : f32 = u_xlat87;
            let x_3137 : f32 = u_xlat89;
            let x_3139 : f32 = u_xlat88;
            u_xlat86 = ((x_3136 * x_3137) + x_3139);
          } else {
            let x_3142 : vec4<f32> = u_xlat11;
            let x_3145 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3148 : vec2<f32> = ((vec2<f32>(x_3142.x, x_3142.y) * vec2<f32>(x_3145.z, x_3145.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3149 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
            let x_3151 : vec4<f32> = u_xlat12;
            let x_3153 : vec2<f32> = floor(vec2<f32>(x_3151.x, x_3151.y));
            let x_3154 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3153.x, x_3153.y, x_3154.z, x_3154.w);
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(x_3159.z, x_3159.w)) + -(vec2<f32>(x_3162.x, x_3162.y)));
            let x_3166 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3166.x, x_3166.x, x_3166.y, x_3166.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3171 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3169.x, x_3169.x, x_3169.z, x_3169.z) * vec4<f32>(x_3171.x, x_3171.x, x_3171.z, x_3171.z));
            let x_3174 : vec4<f32> = u_xlat14;
            let x_3176 : vec2<f32> = (vec2<f32>(x_3174.y, x_3174.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3177 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3177.x, x_3176.x, x_3177.z, x_3176.y);
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3182 : vec2<f32> = u_xlat64;
            let x_3184 : vec2<f32> = ((vec2<f32>(x_3179.x, x_3179.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3182));
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3184.x, x_3185.y, x_3184.y, x_3185.w);
            let x_3187 : vec2<f32> = u_xlat64;
            let x_3189 : vec2<f32> = (-(x_3187) + vec2<f32>(1.0f, 1.0f));
            let x_3190 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3189.x, x_3189.y, x_3190.z, x_3190.w);
            let x_3192 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3192, vec2<f32>(0.0f, 0.0f));
            let x_3194 : vec2<f32> = u_xlat66;
            let x_3196 : vec2<f32> = u_xlat66;
            let x_3198 : vec4<f32> = u_xlat14;
            let x_3200 : vec2<f32> = ((-(x_3194) * x_3196) + vec2<f32>(x_3198.x, x_3198.y));
            let x_3201 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3200.x, x_3200.y, x_3201.z, x_3201.w);
            let x_3203 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3203, vec2<f32>(0.0f, 0.0f));
            let x_3206 : vec2<f32> = u_xlat66;
            let x_3208 : vec2<f32> = u_xlat66;
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec2<f32> = ((-(x_3206) * x_3208) + vec2<f32>(x_3210.y, x_3210.w));
            let x_3213 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3212.x, x_3213.y, x_3212.y);
            let x_3215 : vec4<f32> = u_xlat14;
            let x_3217 : vec2<f32> = (vec2<f32>(x_3215.x, x_3215.y) + vec2<f32>(2.0f, 2.0f));
            let x_3218 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
            let x_3220 : vec3<f32> = u_xlat39;
            let x_3222 : vec2<f32> = (vec2<f32>(x_3220.x, x_3220.z) + vec2<f32>(2.0f, 2.0f));
            let x_3223 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3223.x, x_3222.x, x_3223.z, x_3222.y);
            let x_3226 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3226 * 0.08163200318813323975f);
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec3<f32> = (vec3<f32>(x_3229.z, x_3229.x, x_3229.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3232 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
            let x_3234 : vec4<f32> = u_xlat14;
            let x_3236 : vec2<f32> = (vec2<f32>(x_3234.x, x_3234.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3237 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3236.x, x_3236.y, x_3237.z, x_3237.w);
            let x_3240 : f32 = u_xlat17.y;
            u_xlat16.x = x_3240;
            let x_3242 : vec2<f32> = u_xlat64;
            let x_3245 : vec2<f32> = ((vec2<f32>(x_3242.x, x_3242.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3246 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3246.x, x_3245.x, x_3246.z, x_3245.y);
            let x_3248 : vec2<f32> = u_xlat64;
            let x_3251 : vec2<f32> = ((vec2<f32>(x_3248.x, x_3248.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3252 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3251.x, x_3252.y, x_3251.y, x_3252.w);
            let x_3255 : f32 = u_xlat13.x;
            u_xlat14.y = x_3255;
            let x_3258 : f32 = u_xlat15.y;
            u_xlat14.w = x_3258;
            let x_3260 : vec4<f32> = u_xlat14;
            let x_3261 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3260 + x_3261);
            let x_3263 : vec2<f32> = u_xlat64;
            let x_3266 : vec2<f32> = ((vec2<f32>(x_3263.y, x_3263.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3267 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3267.x, x_3266.x, x_3267.z, x_3266.y);
            let x_3269 : vec2<f32> = u_xlat64;
            let x_3272 : vec2<f32> = ((vec2<f32>(x_3269.y, x_3269.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3273 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3272.x, x_3273.y, x_3272.y, x_3273.w);
            let x_3276 : f32 = u_xlat13.y;
            u_xlat15.y = x_3276;
            let x_3278 : vec4<f32> = u_xlat15;
            let x_3279 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3278 + x_3279);
            let x_3281 : vec4<f32> = u_xlat14;
            let x_3282 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3281 / x_3282);
            let x_3284 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3284 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3286 : vec4<f32> = u_xlat15;
            let x_3287 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3286 / x_3287);
            let x_3289 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3289 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3291 : vec4<f32> = u_xlat14;
            let x_3294 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3291.w, x_3291.x, x_3291.y, x_3291.z) * vec4<f32>(x_3294.x, x_3294.x, x_3294.x, x_3294.x));
            let x_3297 : vec4<f32> = u_xlat15;
            let x_3300 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3297.x, x_3297.w, x_3297.y, x_3297.z) * vec4<f32>(x_3300.y, x_3300.y, x_3300.y, x_3300.y));
            let x_3303 : vec4<f32> = u_xlat14;
            let x_3304 : vec3<f32> = vec3<f32>(x_3303.y, x_3303.z, x_3303.w);
            let x_3305 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3304.x, x_3305.y, x_3304.y, x_3304.z);
            let x_3308 : f32 = u_xlat15.x;
            u_xlat17.y = x_3308;
            let x_3310 : vec4<f32> = u_xlat12;
            let x_3313 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3316 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3310.x, x_3310.y, x_3310.x, x_3310.y) * vec4<f32>(x_3313.x, x_3313.y, x_3313.x, x_3313.y)) + vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3316.y));
            let x_3319 : vec4<f32> = u_xlat12;
            let x_3322 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3319.x, x_3319.y) * vec2<f32>(x_3322.x, x_3322.y)) + vec2<f32>(x_3325.w, x_3325.y));
            let x_3329 : f32 = u_xlat17.y;
            u_xlat14.y = x_3329;
            let x_3332 : f32 = u_xlat15.z;
            u_xlat17.y = x_3332;
            let x_3334 : vec4<f32> = u_xlat12;
            let x_3337 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3340 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3334.x, x_3334.y, x_3334.x, x_3334.y) * vec4<f32>(x_3337.x, x_3337.y, x_3337.x, x_3337.y)) + vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3340.y));
            let x_3343 : vec4<f32> = u_xlat12;
            let x_3346 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3349 : vec4<f32> = u_xlat17;
            let x_3351 : vec2<f32> = ((vec2<f32>(x_3343.x, x_3343.y) * vec2<f32>(x_3346.x, x_3346.y)) + vec2<f32>(x_3349.w, x_3349.y));
            let x_3352 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3351.x, x_3351.y, x_3352.z, x_3352.w);
            let x_3355 : f32 = u_xlat17.y;
            u_xlat14.z = x_3355;
            let x_3358 : vec4<f32> = u_xlat12;
            let x_3361 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3364 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3358.x, x_3358.y, x_3358.x, x_3358.y) * vec4<f32>(x_3361.x, x_3361.y, x_3361.x, x_3361.y)) + vec4<f32>(x_3364.x, x_3364.y, x_3364.x, x_3364.z));
            let x_3368 : f32 = u_xlat15.w;
            u_xlat17.y = x_3368;
            let x_3371 : vec4<f32> = u_xlat12;
            let x_3374 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3377 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3371.x, x_3371.y, x_3371.x, x_3371.y) * vec4<f32>(x_3374.x, x_3374.y, x_3374.x, x_3374.y)) + vec4<f32>(x_3377.x, x_3377.y, x_3377.z, x_3377.y));
            let x_3381 : vec4<f32> = u_xlat12;
            let x_3384 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3387 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3381.x, x_3381.y) * vec2<f32>(x_3384.x, x_3384.y)) + vec2<f32>(x_3387.w, x_3387.y));
            let x_3391 : f32 = u_xlat17.y;
            u_xlat14.w = x_3391;
            let x_3394 : vec4<f32> = u_xlat12;
            let x_3397 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3400 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3394.x, x_3394.y) * vec2<f32>(x_3397.x, x_3397.y)) + vec2<f32>(x_3400.x, x_3400.w));
            let x_3403 : vec4<f32> = u_xlat17;
            let x_3404 : vec3<f32> = vec3<f32>(x_3403.x, x_3403.z, x_3403.w);
            let x_3405 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3404.x, x_3405.y, x_3404.y, x_3404.z);
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3410 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y) * vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y)) + vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3413.y));
            let x_3417 : vec4<f32> = u_xlat12;
            let x_3420 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3423 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3417.x, x_3417.y) * vec2<f32>(x_3420.x, x_3420.y)) + vec2<f32>(x_3423.w, x_3423.y));
            let x_3427 : f32 = u_xlat14.x;
            u_xlat15.x = x_3427;
            let x_3429 : vec4<f32> = u_xlat12;
            let x_3432 : vec4<f32> = x_553.x_AdditionalShadowmapSize;
            let x_3435 : vec4<f32> = u_xlat15;
            let x_3437 : vec2<f32> = ((vec2<f32>(x_3429.x, x_3429.y) * vec2<f32>(x_3432.x, x_3432.y)) + vec2<f32>(x_3435.x, x_3435.y));
            let x_3438 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3437.x, x_3437.y, x_3438.z, x_3438.w);
            let x_3441 : vec4<f32> = u_xlat13;
            let x_3443 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3441.x, x_3441.x, x_3441.x, x_3441.x) * x_3443);
            let x_3446 : vec4<f32> = u_xlat13;
            let x_3448 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3446.y, x_3446.y, x_3446.y, x_3446.y) * x_3448);
            let x_3451 : vec4<f32> = u_xlat13;
            let x_3453 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3451.z, x_3451.z, x_3451.z, x_3451.z) * x_3453);
            let x_3455 : vec4<f32> = u_xlat13;
            let x_3457 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3455.w, x_3455.w, x_3455.w, x_3455.w) * x_3457);
            let x_3460 : vec4<f32> = u_xlat18;
            let x_3461 : vec2<f32> = vec2<f32>(x_3460.x, x_3460.y);
            let x_3463 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec43;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat87 = x_3472;
            let x_3474 : vec4<f32> = u_xlat18;
            let x_3475 : vec2<f32> = vec2<f32>(x_3474.z, x_3474.w);
            let x_3477 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3475.x, x_3475.y, x_3477);
            let x_3484 : vec3<f32> = txVec44;
            let x_3486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3484.xy, x_3484.z);
            u_xlat88 = x_3486;
            let x_3487 : f32 = u_xlat88;
            let x_3489 : f32 = u_xlat23.y;
            u_xlat88 = (x_3487 * x_3489);
            let x_3492 : f32 = u_xlat23.x;
            let x_3493 : f32 = u_xlat87;
            let x_3495 : f32 = u_xlat88;
            u_xlat87 = ((x_3492 * x_3493) + x_3495);
            let x_3498 : vec2<f32> = u_xlat64;
            let x_3500 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3498.x, x_3498.y, x_3500);
            let x_3507 : vec3<f32> = txVec45;
            let x_3509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3507.xy, x_3507.z);
            u_xlat88 = x_3509;
            let x_3511 : f32 = u_xlat23.z;
            let x_3512 : f32 = u_xlat88;
            let x_3514 : f32 = u_xlat87;
            u_xlat87 = ((x_3511 * x_3512) + x_3514);
            let x_3517 : vec4<f32> = u_xlat21;
            let x_3518 : vec2<f32> = vec2<f32>(x_3517.x, x_3517.y);
            let x_3520 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3518.x, x_3518.y, x_3520);
            let x_3527 : vec3<f32> = txVec46;
            let x_3529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3527.xy, x_3527.z);
            u_xlat88 = x_3529;
            let x_3531 : f32 = u_xlat23.w;
            let x_3532 : f32 = u_xlat88;
            let x_3534 : f32 = u_xlat87;
            u_xlat87 = ((x_3531 * x_3532) + x_3534);
            let x_3537 : vec4<f32> = u_xlat19;
            let x_3538 : vec2<f32> = vec2<f32>(x_3537.x, x_3537.y);
            let x_3540 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3538.x, x_3538.y, x_3540);
            let x_3547 : vec3<f32> = txVec47;
            let x_3549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3547.xy, x_3547.z);
            u_xlat88 = x_3549;
            let x_3551 : f32 = u_xlat24.x;
            let x_3552 : f32 = u_xlat88;
            let x_3554 : f32 = u_xlat87;
            u_xlat87 = ((x_3551 * x_3552) + x_3554);
            let x_3557 : vec4<f32> = u_xlat19;
            let x_3558 : vec2<f32> = vec2<f32>(x_3557.z, x_3557.w);
            let x_3560 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3558.x, x_3558.y, x_3560);
            let x_3567 : vec3<f32> = txVec48;
            let x_3569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3567.xy, x_3567.z);
            u_xlat88 = x_3569;
            let x_3571 : f32 = u_xlat24.y;
            let x_3572 : f32 = u_xlat88;
            let x_3574 : f32 = u_xlat87;
            u_xlat87 = ((x_3571 * x_3572) + x_3574);
            let x_3577 : vec4<f32> = u_xlat20;
            let x_3578 : vec2<f32> = vec2<f32>(x_3577.x, x_3577.y);
            let x_3580 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3578.x, x_3578.y, x_3580);
            let x_3587 : vec3<f32> = txVec49;
            let x_3589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3587.xy, x_3587.z);
            u_xlat88 = x_3589;
            let x_3591 : f32 = u_xlat24.z;
            let x_3592 : f32 = u_xlat88;
            let x_3594 : f32 = u_xlat87;
            u_xlat87 = ((x_3591 * x_3592) + x_3594);
            let x_3597 : vec4<f32> = u_xlat21;
            let x_3598 : vec2<f32> = vec2<f32>(x_3597.z, x_3597.w);
            let x_3600 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3598.x, x_3598.y, x_3600);
            let x_3607 : vec3<f32> = txVec50;
            let x_3609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3607.xy, x_3607.z);
            u_xlat88 = x_3609;
            let x_3611 : f32 = u_xlat24.w;
            let x_3612 : f32 = u_xlat88;
            let x_3614 : f32 = u_xlat87;
            u_xlat87 = ((x_3611 * x_3612) + x_3614);
            let x_3617 : vec4<f32> = u_xlat22;
            let x_3618 : vec2<f32> = vec2<f32>(x_3617.x, x_3617.y);
            let x_3620 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3618.x, x_3618.y, x_3620);
            let x_3627 : vec3<f32> = txVec51;
            let x_3629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3627.xy, x_3627.z);
            u_xlat88 = x_3629;
            let x_3631 : f32 = u_xlat25.x;
            let x_3632 : f32 = u_xlat88;
            let x_3634 : f32 = u_xlat87;
            u_xlat87 = ((x_3631 * x_3632) + x_3634);
            let x_3637 : vec4<f32> = u_xlat22;
            let x_3638 : vec2<f32> = vec2<f32>(x_3637.z, x_3637.w);
            let x_3640 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3638.x, x_3638.y, x_3640);
            let x_3647 : vec3<f32> = txVec52;
            let x_3649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3647.xy, x_3647.z);
            u_xlat88 = x_3649;
            let x_3651 : f32 = u_xlat25.y;
            let x_3652 : f32 = u_xlat88;
            let x_3654 : f32 = u_xlat87;
            u_xlat87 = ((x_3651 * x_3652) + x_3654);
            let x_3657 : vec2<f32> = u_xlat40;
            let x_3659 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3657.x, x_3657.y, x_3659);
            let x_3666 : vec3<f32> = txVec53;
            let x_3668 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3666.xy, x_3666.z);
            u_xlat88 = x_3668;
            let x_3670 : f32 = u_xlat25.z;
            let x_3671 : f32 = u_xlat88;
            let x_3673 : f32 = u_xlat87;
            u_xlat87 = ((x_3670 * x_3671) + x_3673);
            let x_3676 : vec2<f32> = u_xlat72;
            let x_3678 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3676.x, x_3676.y, x_3678);
            let x_3685 : vec3<f32> = txVec54;
            let x_3687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3685.xy, x_3685.z);
            u_xlat88 = x_3687;
            let x_3689 : f32 = u_xlat25.w;
            let x_3690 : f32 = u_xlat88;
            let x_3692 : f32 = u_xlat87;
            u_xlat87 = ((x_3689 * x_3690) + x_3692);
            let x_3695 : vec4<f32> = u_xlat17;
            let x_3696 : vec2<f32> = vec2<f32>(x_3695.x, x_3695.y);
            let x_3698 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3696.x, x_3696.y, x_3698);
            let x_3705 : vec3<f32> = txVec55;
            let x_3707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3705.xy, x_3705.z);
            u_xlat88 = x_3707;
            let x_3709 : f32 = u_xlat13.x;
            let x_3710 : f32 = u_xlat88;
            let x_3712 : f32 = u_xlat87;
            u_xlat87 = ((x_3709 * x_3710) + x_3712);
            let x_3715 : vec4<f32> = u_xlat17;
            let x_3716 : vec2<f32> = vec2<f32>(x_3715.z, x_3715.w);
            let x_3718 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
            let x_3725 : vec3<f32> = txVec56;
            let x_3727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3725.xy, x_3725.z);
            u_xlat88 = x_3727;
            let x_3729 : f32 = u_xlat13.y;
            let x_3730 : f32 = u_xlat88;
            let x_3732 : f32 = u_xlat87;
            u_xlat87 = ((x_3729 * x_3730) + x_3732);
            let x_3735 : vec2<f32> = u_xlat67;
            let x_3737 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3735.x, x_3735.y, x_3737);
            let x_3744 : vec3<f32> = txVec57;
            let x_3746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3744.xy, x_3744.z);
            u_xlat88 = x_3746;
            let x_3748 : f32 = u_xlat13.z;
            let x_3749 : f32 = u_xlat88;
            let x_3751 : f32 = u_xlat87;
            u_xlat87 = ((x_3748 * x_3749) + x_3751);
            let x_3754 : vec4<f32> = u_xlat12;
            let x_3755 : vec2<f32> = vec2<f32>(x_3754.x, x_3754.y);
            let x_3757 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3755.x, x_3755.y, x_3757);
            let x_3764 : vec3<f32> = txVec58;
            let x_3766 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3764.xy, x_3764.z);
            u_xlat88 = x_3766;
            let x_3768 : f32 = u_xlat13.w;
            let x_3769 : f32 = u_xlat88;
            let x_3771 : f32 = u_xlat87;
            u_xlat86 = ((x_3768 * x_3769) + x_3771);
          }
        }
      } else {
        let x_3775 : vec4<f32> = u_xlat11;
        let x_3776 : vec2<f32> = vec2<f32>(x_3775.x, x_3775.y);
        let x_3778 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3776.x, x_3776.y, x_3778);
        let x_3785 : vec3<f32> = txVec59;
        let x_3787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3785.xy, x_3785.z);
        u_xlat86 = x_3787;
      }
      let x_3788 : i32 = u_xlati6;
      let x_3790 : f32 = x_553.x_AdditionalShadowParams[x_3788].x;
      u_xlat87 = (1.0f + -(x_3790));
      let x_3793 : f32 = u_xlat86;
      let x_3794 : i32 = u_xlati6;
      let x_3796 : f32 = x_553.x_AdditionalShadowParams[x_3794].x;
      let x_3798 : f32 = u_xlat87;
      u_xlat86 = ((x_3793 * x_3796) + x_3798);
      let x_3801 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3801);
      let x_3805 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3805 >= 1.0f);
      let x_3807 : bool = u_xlatb87;
      let x_3808 : bool = u_xlatb88;
      u_xlatb87 = (x_3807 | x_3808);
      let x_3810 : bool = u_xlatb87;
      let x_3811 : f32 = u_xlat86;
      u_xlat86 = select(x_3811, 1.0f, x_3810);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3814 : f32 = u_xlat86;
    u_xlat87 = (-(x_3814) + 1.0f);
    let x_3817 : f32 = u_xlat79;
    let x_3818 : f32 = u_xlat87;
    let x_3820 : f32 = u_xlat86;
    u_xlat86 = ((x_3817 * x_3818) + x_3820);
    let x_3823 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3823 & 31i)));
    let x_3827 : i32 = u_xlati87;
    let x_3830 : f32 = x_1902.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3827) & bitcast<u32>(x_3830)));
    let x_3834 : i32 = u_xlati87;
    if ((x_3834 != 0i)) {
      let x_3838 : i32 = u_xlati6;
      let x_3840 : f32 = x_1902.x_AdditionalLightsLightTypes[x_3838].el;
      u_xlati87 = i32(x_3840);
      let x_3843 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3843 != 0i));
      let x_3847 : i32 = u_xlati6;
      u_xlati11 = (x_3847 << bitcast<u32>(2i));
      let x_3849 : i32 = u_xlati88;
      if ((x_3849 != 0i)) {
        let x_3854 : vec3<f32> = vs_TEXCOORD1;
        let x_3856 : i32 = u_xlati11;
        let x_3859 : i32 = u_xlati11;
        let x_3863 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3856 + 1i) / 4i)][((x_3859 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3854.y, x_3854.y, x_3854.y) * vec3<f32>(x_3863.x, x_3863.y, x_3863.w));
        let x_3866 : i32 = u_xlati11;
        let x_3868 : i32 = u_xlati11;
        let x_3871 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[(x_3866 / 4i)][(x_3868 % 4i)];
        let x_3873 : vec3<f32> = vs_TEXCOORD1;
        let x_3876 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3871.x, x_3871.y, x_3871.w) * vec3<f32>(x_3873.x, x_3873.x, x_3873.x)) + x_3876);
        let x_3878 : i32 = u_xlati11;
        let x_3881 : i32 = u_xlati11;
        let x_3885 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3878 + 2i) / 4i)][((x_3881 + 2i) % 4i)];
        let x_3887 : vec3<f32> = vs_TEXCOORD1;
        let x_3890 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3885.x, x_3885.y, x_3885.w) * vec3<f32>(x_3887.z, x_3887.z, x_3887.z)) + x_3890);
        let x_3892 : vec3<f32> = u_xlat37;
        let x_3893 : i32 = u_xlati11;
        let x_3896 : i32 = u_xlati11;
        let x_3900 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3893 + 3i) / 4i)][((x_3896 + 3i) % 4i)];
        u_xlat37 = (x_3892 + vec3<f32>(x_3900.x, x_3900.y, x_3900.w));
        let x_3903 : vec3<f32> = u_xlat37;
        let x_3905 : vec3<f32> = u_xlat37;
        let x_3907 : vec2<f32> = (vec2<f32>(x_3903.x, x_3903.y) / vec2<f32>(x_3905.z, x_3905.z));
        let x_3908 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3907.x, x_3907.y, x_3908.z);
        let x_3910 : vec3<f32> = u_xlat37;
        let x_3913 : vec2<f32> = ((vec2<f32>(x_3910.x, x_3910.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3914 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3913.x, x_3913.y, x_3914.z);
        let x_3916 : vec3<f32> = u_xlat37;
        let x_3920 : vec2<f32> = clamp(vec2<f32>(x_3916.x, x_3916.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3921 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3920.x, x_3920.y, x_3921.z);
        let x_3923 : i32 = u_xlati6;
        let x_3925 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_3923];
        let x_3927 : vec3<f32> = u_xlat37;
        let x_3930 : i32 = u_xlati6;
        let x_3932 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_3930];
        let x_3934 : vec2<f32> = ((vec2<f32>(x_3925.x, x_3925.y) * vec2<f32>(x_3927.x, x_3927.y)) + vec2<f32>(x_3932.z, x_3932.w));
        let x_3935 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3934.x, x_3934.y, x_3935.z);
      } else {
        let x_3938 : i32 = u_xlati87;
        u_xlatb87 = (x_3938 == 1i);
        let x_3940 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3940);
        let x_3942 : i32 = u_xlati87;
        if ((x_3942 != 0i)) {
          let x_3946 : vec3<f32> = vs_TEXCOORD1;
          let x_3948 : i32 = u_xlati11;
          let x_3951 : i32 = u_xlati11;
          let x_3955 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3948 + 1i) / 4i)][((x_3951 + 1i) % 4i)];
          let x_3957 : vec2<f32> = (vec2<f32>(x_3946.y, x_3946.y) * vec2<f32>(x_3955.x, x_3955.y));
          let x_3958 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3957.x, x_3957.y, x_3958.z, x_3958.w);
          let x_3960 : i32 = u_xlati11;
          let x_3962 : i32 = u_xlati11;
          let x_3965 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[(x_3960 / 4i)][(x_3962 % 4i)];
          let x_3967 : vec3<f32> = vs_TEXCOORD1;
          let x_3970 : vec4<f32> = u_xlat12;
          let x_3972 : vec2<f32> = ((vec2<f32>(x_3965.x, x_3965.y) * vec2<f32>(x_3967.x, x_3967.x)) + vec2<f32>(x_3970.x, x_3970.y));
          let x_3973 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3972.x, x_3972.y, x_3973.z, x_3973.w);
          let x_3975 : i32 = u_xlati11;
          let x_3978 : i32 = u_xlati11;
          let x_3982 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3975 + 2i) / 4i)][((x_3978 + 2i) % 4i)];
          let x_3984 : vec3<f32> = vs_TEXCOORD1;
          let x_3987 : vec4<f32> = u_xlat12;
          let x_3989 : vec2<f32> = ((vec2<f32>(x_3982.x, x_3982.y) * vec2<f32>(x_3984.z, x_3984.z)) + vec2<f32>(x_3987.x, x_3987.y));
          let x_3990 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3989.x, x_3989.y, x_3990.z, x_3990.w);
          let x_3992 : vec4<f32> = u_xlat12;
          let x_3994 : i32 = u_xlati11;
          let x_3997 : i32 = u_xlati11;
          let x_4001 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_3994 + 3i) / 4i)][((x_3997 + 3i) % 4i)];
          let x_4003 : vec2<f32> = (vec2<f32>(x_3992.x, x_3992.y) + vec2<f32>(x_4001.x, x_4001.y));
          let x_4004 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4003.x, x_4003.y, x_4004.z, x_4004.w);
          let x_4006 : vec4<f32> = u_xlat12;
          let x_4009 : vec2<f32> = ((vec2<f32>(x_4006.x, x_4006.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4010 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4009.x, x_4009.y, x_4010.z, x_4010.w);
          let x_4012 : vec4<f32> = u_xlat12;
          let x_4014 : vec2<f32> = fract(vec2<f32>(x_4012.x, x_4012.y));
          let x_4015 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4014.x, x_4014.y, x_4015.z, x_4015.w);
          let x_4017 : i32 = u_xlati6;
          let x_4019 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_4017];
          let x_4021 : vec4<f32> = u_xlat12;
          let x_4024 : i32 = u_xlati6;
          let x_4026 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_4024];
          let x_4028 : vec2<f32> = ((vec2<f32>(x_4019.x, x_4019.y) * vec2<f32>(x_4021.x, x_4021.y)) + vec2<f32>(x_4026.z, x_4026.w));
          let x_4029 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4028.x, x_4028.y, x_4029.z);
        } else {
          let x_4032 : vec3<f32> = vs_TEXCOORD1;
          let x_4034 : i32 = u_xlati11;
          let x_4037 : i32 = u_xlati11;
          let x_4041 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_4034 + 1i) / 4i)][((x_4037 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4032.y, x_4032.y, x_4032.y, x_4032.y) * x_4041);
          let x_4043 : i32 = u_xlati11;
          let x_4045 : i32 = u_xlati11;
          let x_4048 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[(x_4043 / 4i)][(x_4045 % 4i)];
          let x_4049 : vec3<f32> = vs_TEXCOORD1;
          let x_4052 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4048 * vec4<f32>(x_4049.x, x_4049.x, x_4049.x, x_4049.x)) + x_4052);
          let x_4054 : i32 = u_xlati11;
          let x_4057 : i32 = u_xlati11;
          let x_4061 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_4054 + 2i) / 4i)][((x_4057 + 2i) % 4i)];
          let x_4062 : vec3<f32> = vs_TEXCOORD1;
          let x_4065 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4061 * vec4<f32>(x_4062.z, x_4062.z, x_4062.z, x_4062.z)) + x_4065);
          let x_4067 : vec4<f32> = u_xlat12;
          let x_4068 : i32 = u_xlati11;
          let x_4071 : i32 = u_xlati11;
          let x_4075 : vec4<f32> = x_1902.x_AdditionalLightsWorldToLights[((x_4068 + 3i) / 4i)][((x_4071 + 3i) % 4i)];
          u_xlat12 = (x_4067 + x_4075);
          let x_4077 : vec4<f32> = u_xlat12;
          let x_4079 : vec4<f32> = u_xlat12;
          let x_4081 : vec3<f32> = (vec3<f32>(x_4077.x, x_4077.y, x_4077.z) / vec3<f32>(x_4079.w, x_4079.w, x_4079.w));
          let x_4082 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4081.x, x_4081.y, x_4081.z, x_4082.w);
          let x_4084 : vec4<f32> = u_xlat12;
          let x_4086 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4084.x, x_4084.y, x_4084.z), vec3<f32>(x_4086.x, x_4086.y, x_4086.z));
          let x_4089 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4089);
          let x_4091 : f32 = u_xlat87;
          let x_4093 : vec4<f32> = u_xlat12;
          let x_4095 : vec3<f32> = (vec3<f32>(x_4091, x_4091, x_4091) * vec3<f32>(x_4093.x, x_4093.y, x_4093.z));
          let x_4096 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
          let x_4098 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4098.x, x_4098.y, x_4098.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4103 : f32 = u_xlat87;
          u_xlat87 = max(x_4103, 0.00000099999999747524f);
          let x_4106 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4106);
          let x_4108 : f32 = u_xlat87;
          let x_4110 : vec4<f32> = u_xlat12;
          let x_4112 : vec3<f32> = (vec3<f32>(x_4108, x_4108, x_4108) * vec3<f32>(x_4110.z, x_4110.x, x_4110.y));
          let x_4113 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4112.x, x_4112.y, x_4112.z, x_4113.w);
          let x_4116 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4116);
          let x_4120 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4120, 0.0f, 1.0f);
          let x_4123 : vec4<f32> = u_xlat13;
          let x_4125 : vec4<bool> = (vec4<f32>(x_4123.y, x_4123.y, x_4123.y, x_4123.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4126 : vec2<bool> = vec2<bool>(x_4125.x, x_4125.w);
          let x_4127 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4126.x, x_4127.y, x_4127.z, x_4126.y);
          let x_4130 : bool = u_xlatb11.x;
          if (x_4130) {
            let x_4135 : f32 = u_xlat13.x;
            x_4131 = x_4135;
          } else {
            let x_4138 : f32 = u_xlat13.x;
            x_4131 = -(x_4138);
          }
          let x_4140 : f32 = x_4131;
          u_xlat11.x = x_4140;
          let x_4143 : bool = u_xlatb11.w;
          if (x_4143) {
            let x_4148 : f32 = u_xlat13.x;
            x_4144 = x_4148;
          } else {
            let x_4151 : f32 = u_xlat13.x;
            x_4144 = -(x_4151);
          }
          let x_4153 : f32 = x_4144;
          u_xlat11.w = x_4153;
          let x_4155 : vec4<f32> = u_xlat12;
          let x_4157 : f32 = u_xlat87;
          let x_4160 : vec4<f32> = u_xlat11;
          let x_4162 : vec2<f32> = ((vec2<f32>(x_4155.x, x_4155.y) * vec2<f32>(x_4157, x_4157)) + vec2<f32>(x_4160.x, x_4160.w));
          let x_4163 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4162.x, x_4163.y, x_4163.z, x_4162.y);
          let x_4165 : vec4<f32> = u_xlat11;
          let x_4168 : vec2<f32> = ((vec2<f32>(x_4165.x, x_4165.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4169 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4168.x, x_4169.y, x_4169.z, x_4168.y);
          let x_4171 : vec4<f32> = u_xlat11;
          let x_4175 : vec2<f32> = clamp(vec2<f32>(x_4171.x, x_4171.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4176 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4175.x, x_4176.y, x_4176.z, x_4175.y);
          let x_4178 : i32 = u_xlati6;
          let x_4180 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_4178];
          let x_4182 : vec4<f32> = u_xlat11;
          let x_4185 : i32 = u_xlati6;
          let x_4187 : vec4<f32> = x_1902.x_AdditionalLightsCookieAtlasUVRects[x_4185];
          let x_4189 : vec2<f32> = ((vec2<f32>(x_4180.x, x_4180.y) * vec2<f32>(x_4182.x, x_4182.w)) + vec2<f32>(x_4187.z, x_4187.w));
          let x_4190 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4189.x, x_4189.y, x_4190.z);
        }
      }
      let x_4197 : vec3<f32> = u_xlat37;
      let x_4199 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4197.x, x_4197.y), 0.0f);
      u_xlat11 = x_4199;
      let x_4201 : bool = u_xlatb7.y;
      if (x_4201) {
        let x_4206 : f32 = u_xlat11.w;
        x_4202 = x_4206;
      } else {
        let x_4209 : f32 = u_xlat11.x;
        x_4202 = x_4209;
      }
      let x_4210 : f32 = x_4202;
      u_xlat87 = x_4210;
      let x_4212 : bool = u_xlatb7.x;
      if (x_4212) {
        let x_4216 : vec4<f32> = u_xlat11;
        x_4213 = vec3<f32>(x_4216.x, x_4216.y, x_4216.z);
      } else {
        let x_4219 : f32 = u_xlat87;
        x_4213 = vec3<f32>(x_4219, x_4219, x_4219);
      }
      let x_4221 : vec3<f32> = x_4213;
      let x_4222 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4221.x, x_4221.y, x_4221.z, x_4222.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4228 : vec4<f32> = u_xlat11;
    let x_4230 : i32 = u_xlati6;
    let x_4232 : vec4<f32> = x_2400.x_AdditionalLightsColor[x_4230];
    let x_4234 : vec3<f32> = (vec3<f32>(x_4228.x, x_4228.y, x_4228.z) * vec3<f32>(x_4232.x, x_4232.y, x_4232.z));
    let x_4235 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4234.x, x_4234.y, x_4234.z, x_4235.w);
    let x_4237 : f32 = u_xlat59;
    let x_4238 : f32 = u_xlat86;
    u_xlat6.x = (x_4237 * x_4238);
    let x_4241 : vec4<f32> = u_xlat4;
    let x_4243 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4241.x, x_4241.y, x_4241.z), vec3<f32>(x_4243.x, x_4243.y, x_4243.z));
    let x_4246 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4246, 0.0f, 1.0f);
    let x_4249 : f32 = u_xlat6.x;
    let x_4250 : f32 = u_xlat59;
    u_xlat6.x = (x_4249 * x_4250);
    let x_4253 : vec4<f32> = u_xlat6;
    let x_4255 : vec4<f32> = u_xlat11;
    let x_4257 : vec3<f32> = (vec3<f32>(x_4253.x, x_4253.x, x_4253.x) * vec3<f32>(x_4255.x, x_4255.y, x_4255.z));
    let x_4258 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4257.x, x_4257.y, x_4257.z, x_4258.w);
    let x_4260 : vec4<f32> = u_xlat9;
    let x_4262 : f32 = u_xlat85;
    let x_4265 : vec3<f32> = u_xlat29;
    let x_4266 : vec3<f32> = ((vec3<f32>(x_4260.x, x_4260.y, x_4260.z) * vec3<f32>(x_4262, x_4262, x_4262)) + x_4265);
    let x_4267 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4266.x, x_4266.y, x_4266.z, x_4267.w);
    let x_4269 : vec4<f32> = u_xlat9;
    let x_4271 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4269.x, x_4269.y, x_4269.z), vec3<f32>(x_4271.x, x_4271.y, x_4271.z));
    let x_4276 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4276, 1.17549435e-38f);
    let x_4280 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4280);
    let x_4283 : vec4<f32> = u_xlat6;
    let x_4285 : vec4<f32> = u_xlat9;
    let x_4287 : vec3<f32> = (vec3<f32>(x_4283.x, x_4283.x, x_4283.x) * vec3<f32>(x_4285.x, x_4285.y, x_4285.z));
    let x_4288 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4287.x, x_4287.y, x_4287.z, x_4288.w);
    let x_4290 : vec4<f32> = u_xlat4;
    let x_4292 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4290.x, x_4290.y, x_4290.z), vec3<f32>(x_4292.x, x_4292.y, x_4292.z));
    let x_4297 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4297, 0.0f, 1.0f);
    let x_4300 : vec4<f32> = u_xlat10;
    let x_4302 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4300.x, x_4300.y, x_4300.z), vec3<f32>(x_4302.x, x_4302.y, x_4302.z));
    let x_4305 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4305, 0.0f, 1.0f);
    let x_4308 : f32 = u_xlat6.x;
    let x_4310 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4308 * x_4310);
    let x_4314 : f32 = u_xlat6.x;
    let x_4316 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_4314 * x_4316) + 1.00001001358032226562f);
    let x_4320 : f32 = u_xlat59;
    let x_4321 : f32 = u_xlat59;
    u_xlat59 = (x_4320 * x_4321);
    let x_4324 : f32 = u_xlat6.x;
    let x_4326 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4324 * x_4326);
    let x_4329 : f32 = u_xlat59;
    u_xlat59 = max(x_4329, 0.10000000149011611938f);
    let x_4332 : f32 = u_xlat6.x;
    let x_4333 : f32 = u_xlat59;
    u_xlat6.x = (x_4332 * x_4333);
    let x_4336 : f32 = u_xlat82;
    let x_4338 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4336 * x_4338);
    let x_4342 : f32 = u_xlat53.x;
    let x_4344 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4342 / x_4344);
    let x_4347 : vec4<f32> = u_xlat0;
    let x_4349 : vec4<f32> = u_xlat6;
    let x_4352 : vec3<f32> = u_xlat28;
    let x_4353 : vec3<f32> = ((vec3<f32>(x_4347.x, x_4347.y, x_4347.z) * vec3<f32>(x_4349.x, x_4349.x, x_4349.x)) + x_4352);
    let x_4354 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4354.w);
    let x_4356 : vec4<f32> = u_xlat9;
    let x_4358 : vec4<f32> = u_xlat11;
    let x_4361 : vec4<f32> = u_xlat8;
    let x_4363 : vec3<f32> = ((vec3<f32>(x_4356.x, x_4356.y, x_4356.z) * vec3<f32>(x_4358.x, x_4358.y, x_4358.z)) + vec3<f32>(x_4361.x, x_4361.y, x_4361.z));
    let x_4364 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4363.x, x_4363.y, x_4363.z, x_4364.w);

    continuing {
      let x_4366 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4366 + bitcast<u32>(1i));
    }
  }
  let x_4368 : vec3<f32> = u_xlat5;
  let x_4369 : vec3<f32> = u_xlat3;
  let x_4372 : vec3<f32> = u_xlat32;
  let x_4373 : vec3<f32> = ((x_4368 * vec3<f32>(x_4369.x, x_4369.x, x_4369.x)) + x_4372);
  let x_4374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4373.x, x_4373.y, x_4373.z, x_4374.w);
  let x_4376 : vec4<f32> = u_xlat8;
  let x_4378 : vec4<f32> = u_xlat0;
  let x_4380 : vec3<f32> = (vec3<f32>(x_4376.x, x_4376.y, x_4376.z) + vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
  let x_4381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4380.x, x_4380.y, x_4380.z, x_4381.w);
  let x_4383 : f32 = u_xlat78;
  let x_4384 : f32 = u_xlat78;
  u_xlat78 = (x_4383 * -(x_4384));
  let x_4387 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4387);
  let x_4389 : vec4<f32> = u_xlat0;
  let x_4392 : vec4<f32> = x_45.unity_FogColor;
  let x_4395 : vec3<f32> = (vec3<f32>(x_4389.x, x_4389.y, x_4389.z) + -(vec3<f32>(x_4392.x, x_4392.y, x_4392.z)));
  let x_4396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4395.x, x_4395.y, x_4395.z, x_4396.w);
  let x_4400 : f32 = u_xlat78;
  let x_4402 : vec4<f32> = u_xlat0;
  let x_4406 : vec4<f32> = x_45.unity_FogColor;
  let x_4408 : vec3<f32> = ((vec3<f32>(x_4400, x_4400, x_4400) * vec3<f32>(x_4402.x, x_4402.y, x_4402.z)) + vec3<f32>(x_4406.x, x_4406.y, x_4406.z));
  let x_4409 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4408.x, x_4408.y, x_4408.z, x_4409.w);
  let x_4413 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_4413 == 1.0f);
  let x_4415 : bool = u_xlatb0;
  if (x_4415) {
    let x_4420 : f32 = u_xlat2.x;
    x_4416 = x_4420;
  } else {
    x_4416 = 1.0f;
  }
  let x_4422 : f32 = x_4416;
  SV_Target0.w = x_4422;
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


