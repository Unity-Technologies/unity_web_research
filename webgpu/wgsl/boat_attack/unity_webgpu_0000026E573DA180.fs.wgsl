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

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_407 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

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

@group(1) @binding(5) var<uniform> x_1729 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1911 : UnityPerDraw;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2191 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu53 : u32;

fn main_1() {
  var x_183 : f32;
  var x_195 : f32;
  var x_207 : f32;
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
  var x_1815 : f32;
  var x_1826 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2329 : f32;
  var x_2338 : f32;
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
  var x_3914 : f32;
  var x_3927 : f32;
  var x_3975 : f32;
  var x_3986 : vec3<f32>;
  var x_4133 : f32;
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
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb29 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat55;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : bool = u_xlatb29;
  if (x_181) {
    let x_187 : f32 = u_xlat4.x;
    x_183 = x_187;
  } else {
    let x_191 : f32 = x_28.unity_MatrixV[0i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat5.x = x_192;
  let x_194 : bool = u_xlatb29;
  if (x_194) {
    let x_199 : f32 = u_xlat4.y;
    x_195 = x_199;
  } else {
    let x_203 : f32 = x_28.unity_MatrixV[1i].z;
    x_195 = x_203;
  }
  let x_204 : f32 = x_195;
  u_xlat5.y = x_204;
  let x_206 : bool = u_xlatb29;
  if (x_206) {
    let x_211 : f32 = u_xlat4.z;
    x_207 = x_211;
  } else {
    let x_214 : f32 = x_28.unity_MatrixV[2i].z;
    x_207 = x_214;
  }
  let x_215 : f32 = x_207;
  u_xlat5.z = x_215;
  let x_218 : vec3<f32> = vs_TEXCOORD2;
  let x_222 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (vec3<f32>(x_218.z, x_218.x, x_218.y) * vec3<f32>(x_222.y, x_222.z, x_222.x));
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_225.y, x_225.z, x_225.x) * vec3<f32>(x_227.z, x_227.x, x_227.y)) + -(x_230));
  let x_233 : vec3<f32> = u_xlat29;
  let x_234 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (x_233 * vec3<f32>(x_234.w, x_234.w, x_234.w));
  let x_237 : vec2<f32> = u_xlat53;
  let x_239 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_237.y, x_237.y, x_237.y) * x_239);
  let x_241 : vec2<f32> = u_xlat53;
  let x_243 : vec4<f32> = vs_TEXCOORD3;
  let x_246 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z)) + x_246);
  let x_248 : f32 = u_xlat78;
  let x_250 : vec3<f32> = vs_TEXCOORD2;
  let x_252 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + x_252);
  let x_254 : vec3<f32> = u_xlat29;
  let x_255 : vec3<f32> = u_xlat29;
  u_xlat78 = dot(x_254, x_255);
  let x_257 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_257);
  let x_259 : f32 = u_xlat78;
  let x_261 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_269 : vec2<f32> = vs_TEXCOORD8;
  let x_271 : f32 = x_28.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_269, x_271);
  u_xlat4 = x_272;
  let x_278 : vec2<f32> = vs_TEXCOORD8;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_278, x_280);
  let x_282 : vec3<f32> = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat4;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat29;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_292, vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : f32 = u_xlat78;
  u_xlat78 = (x_296 + 0.5f);
  let x_299 : f32 = u_xlat78;
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec3<f32> = (vec3<f32>(x_299, x_299, x_299) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = u_xlat4.w;
  u_xlat78 = max(x_307, 0.00009999999747378752f);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : f32 = u_xlat78;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) / vec3<f32>(x_312, x_312, x_312));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat1.x;
  u_xlat78 = ((-(x_318) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_324 : f32 = u_xlat1.y;
  let x_326 : f32 = x_54.x_Smoothness;
  let x_328 : f32 = u_xlat78;
  u_xlat53.x = ((x_324 * x_326) + -(x_328));
  let x_333 : f32 = u_xlat78;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_335.y, x_335.z, x_335.w));
  let x_338 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_54.x_BaseColor;
  let x_346 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec2<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat0;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.x, x_349.x) * vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = u_xlat1.y;
  let x_363 : f32 = x_54.x_Smoothness;
  u_xlat78 = ((-(x_360) * x_363) + 1.0f);
  let x_366 : f32 = u_xlat78;
  let x_367 : f32 = u_xlat78;
  u_xlat1.x = (x_366 * x_367);
  let x_371 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_371, 0.0078125f);
  let x_377 : f32 = u_xlat1.x;
  let x_379 : f32 = u_xlat1.x;
  u_xlat27 = (x_377 * x_379);
  let x_382 : f32 = u_xlat53.x;
  u_xlat53.x = (x_382 + 1.0f);
  let x_386 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_386, 0.0f, 1.0f);
  let x_391 : f32 = u_xlat1.x;
  u_xlat79 = ((x_391 * 4.0f) + 2.0f);
  let x_396 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_396, 1.0f);
  let x_409 : f32 = x_407.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_409);
  let x_411 : bool = u_xlatb82;
  if (x_411) {
    let x_415 : f32 = x_407.x_MainLightShadowParams.y;
    u_xlatb82 = (x_415 == 1.0f);
    let x_417 : bool = u_xlatb82;
    if (x_417) {
      let x_421 : vec4<f32> = vs_TEXCOORD6;
      let x_424 : vec4<f32> = x_407.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_421.x, x_421.y, x_421.x, x_421.y) + x_424);
      let x_428 : vec4<f32> = u_xlat6;
      let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_429.x, x_429.y, x_432);
      let x_445 : vec3<f32> = txVec0;
      let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_445.xy, x_445.z);
      u_xlat7.x = x_447;
      let x_450 : vec4<f32> = u_xlat6;
      let x_451 : vec2<f32> = vec2<f32>(x_450.z, x_450.w);
      let x_453 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_451.x, x_451.y, x_453);
      let x_460 : vec3<f32> = txVec1;
      let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_460.xy, x_460.z);
      u_xlat7.y = x_462;
      let x_464 : vec4<f32> = vs_TEXCOORD6;
      let x_468 : vec4<f32> = x_407.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y) + x_468);
      let x_471 : vec4<f32> = u_xlat6;
      let x_472 : vec2<f32> = vec2<f32>(x_471.x, x_471.y);
      let x_474 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_472.x, x_472.y, x_474);
      let x_481 : vec3<f32> = txVec2;
      let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_481.xy, x_481.z);
      u_xlat7.z = x_483;
      let x_486 : vec4<f32> = u_xlat6;
      let x_487 : vec2<f32> = vec2<f32>(x_486.z, x_486.w);
      let x_489 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_487.x, x_487.y, x_489);
      let x_496 : vec3<f32> = txVec3;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat7.w = x_498;
      let x_501 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_501, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_508 : f32 = x_407.x_MainLightShadowParams.y;
      u_xlatb83 = (x_508 == 2.0f);
      let x_510 : bool = u_xlatb83;
      if (x_510) {
        let x_513 : vec4<f32> = vs_TEXCOORD6;
        let x_517 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_521 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_517.z, x_517.w)) + vec2<f32>(0.5f, 0.5f));
        let x_522 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat6;
        let x_526 : vec2<f32> = floor(vec2<f32>(x_524.x, x_524.y));
        let x_527 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_530 : vec4<f32> = vs_TEXCOORD6;
        let x_533 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_536 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_533.z, x_533.w)) + -(vec2<f32>(x_536.x, x_536.y)));
        let x_540 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_540.x, x_540.x, x_540.y, x_540.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_545 : vec4<f32> = u_xlat7;
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_545.x, x_545.x, x_545.z, x_545.z) * vec4<f32>(x_547.x, x_547.x, x_547.z, x_547.z));
        let x_550 : vec4<f32> = u_xlat8;
        let x_554 : vec2<f32> = (vec2<f32>(x_550.y, x_550.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_555.y, x_554.y, x_555.w);
        let x_557 : vec4<f32> = u_xlat8;
        let x_560 : vec2<f32> = u_xlat58;
        let x_562 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.z) * vec2<f32>(0.5f, 0.5f)) + -(x_560));
        let x_563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_566 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_566) + vec2<f32>(1.0f, 1.0f));
        let x_571 : vec2<f32> = u_xlat58;
        let x_573 : vec2<f32> = min(x_571, vec2<f32>(0.0f, 0.0f));
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat9;
        let x_579 : vec4<f32> = u_xlat9;
        let x_582 : vec2<f32> = u_xlat60;
        let x_583 : vec2<f32> = ((-(vec2<f32>(x_576.x, x_576.y)) * vec2<f32>(x_579.x, x_579.y)) + x_582);
        let x_584 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_586, vec2<f32>(0.0f, 0.0f));
        let x_588 : vec2<f32> = u_xlat58;
        let x_590 : vec2<f32> = u_xlat58;
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_588) * x_590) + vec2<f32>(x_592.y, x_592.w));
        let x_595 : vec4<f32> = u_xlat9;
        let x_597 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) + vec2<f32>(1.0f, 1.0f));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_600 + vec2<f32>(1.0f, 1.0f));
        let x_603 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = (vec2<f32>(x_603.x, x_603.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec2<f32> = u_xlat60;
        let x_611 : vec2<f32> = (x_610 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat9;
        let x_616 : vec2<f32> = (vec2<f32>(x_614.x, x_614.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec2<f32> = u_xlat58;
        let x_621 : vec2<f32> = (x_620 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_624.y, x_624.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_628 : f32 = u_xlat9.x;
        u_xlat10.z = x_628;
        let x_631 : f32 = u_xlat58.x;
        u_xlat10.w = x_631;
        let x_634 : f32 = u_xlat11.x;
        u_xlat8.z = x_634;
        let x_637 : f32 = u_xlat7.x;
        u_xlat8.w = x_637;
        let x_640 : vec4<f32> = u_xlat8;
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_640.z, x_640.w, x_640.x, x_640.z) + vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z));
        let x_646 : f32 = u_xlat10.y;
        u_xlat9.z = x_646;
        let x_649 : f32 = u_xlat58.y;
        u_xlat9.w = x_649;
        let x_652 : f32 = u_xlat8.y;
        u_xlat11.z = x_652;
        let x_655 : f32 = u_xlat7.z;
        u_xlat11.w = x_655;
        let x_657 : vec4<f32> = u_xlat9;
        let x_659 : vec4<f32> = u_xlat11;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.z, x_657.y, x_657.w) + vec3<f32>(x_659.z, x_659.y, x_659.w));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec4<f32> = u_xlat12;
        let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.z, x_664.w) / vec3<f32>(x_666.z, x_666.w, x_666.y));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat8;
        let x_676 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
        let x_679 : vec4<f32> = u_xlat11;
        let x_681 : vec4<f32> = u_xlat7;
        let x_683 : vec3<f32> = (vec3<f32>(x_679.z, x_679.y, x_679.w) / vec3<f32>(x_681.x, x_681.y, x_681.z));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat9;
        let x_688 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_689 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_696 : vec3<f32> = (vec3<f32>(x_691.y, x_691.x, x_691.z) * vec3<f32>(x_694.x, x_694.x, x_694.x));
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat9;
        let x_702 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_704 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_702.y, x_702.y, x_702.y));
        let x_705 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_708 : f32 = u_xlat9.x;
        u_xlat8.w = x_708;
        let x_710 : vec4<f32> = u_xlat6;
        let x_713 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_710.x, x_710.y, x_710.x, x_710.y) * vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y)) + vec4<f32>(x_716.y, x_716.w, x_716.x, x_716.w));
        let x_719 : vec4<f32> = u_xlat6;
        let x_722 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_719.x, x_719.y) * vec2<f32>(x_722.x, x_722.y)) + vec2<f32>(x_725.z, x_725.w));
        let x_729 : f32 = u_xlat8.y;
        u_xlat9.w = x_729;
        let x_731 : vec4<f32> = u_xlat9;
        let x_732 : vec2<f32> = vec2<f32>(x_731.y, x_731.z);
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_732.x, x_733.z, x_732.y);
        let x_735 : vec4<f32> = u_xlat6;
        let x_738 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y) * vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y)) + vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.y));
        let x_744 : vec4<f32> = u_xlat6;
        let x_747 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_750 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) * vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y)) + vec4<f32>(x_750.w, x_750.y, x_750.w, x_750.z));
        let x_753 : vec4<f32> = u_xlat6;
        let x_756 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) * vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) + vec4<f32>(x_759.x, x_759.w, x_759.z, x_759.w));
        let x_763 : vec4<f32> = u_xlat7;
        let x_765 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_763.x, x_763.x, x_763.x, x_763.y) * vec4<f32>(x_765.z, x_765.w, x_765.y, x_765.z));
        let x_769 : vec4<f32> = u_xlat7;
        let x_771 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_769.y, x_769.y, x_769.z, x_769.z) * x_771);
        let x_775 : f32 = u_xlat7.z;
        let x_777 : f32 = u_xlat12.y;
        u_xlat83 = (x_775 * x_777);
        let x_780 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec4;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_790.xy, x_790.z);
        u_xlat6.x = x_792;
        let x_795 : vec4<f32> = u_xlat10;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_806 : vec3<f32> = txVec5;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_806.xy, x_806.z);
        u_xlat32 = x_808;
        let x_809 : f32 = u_xlat32;
        let x_811 : f32 = u_xlat13.y;
        u_xlat32 = (x_809 * x_811);
        let x_814 : f32 = u_xlat13.x;
        let x_816 : f32 = u_xlat6.x;
        let x_818 : f32 = u_xlat32;
        u_xlat6.x = ((x_814 * x_816) + x_818);
        let x_822 : vec2<f32> = u_xlat58;
        let x_824 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec6;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat32 = x_833;
        let x_835 : f32 = u_xlat13.z;
        let x_836 : f32 = u_xlat32;
        let x_839 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat9;
        let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec7;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat32 = x_855;
        let x_857 : f32 = u_xlat13.w;
        let x_858 : f32 = u_xlat32;
        let x_861 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat11;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec8;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat32 = x_877;
        let x_879 : f32 = u_xlat14.x;
        let x_880 : f32 = u_xlat32;
        let x_883 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat11;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec9;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat32 = x_899;
        let x_901 : f32 = u_xlat14.y;
        let x_902 : f32 = u_xlat32;
        let x_905 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_901 * x_902) + x_905);
        let x_909 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = vec2<f32>(x_909.z, x_909.w);
        let x_912 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec10;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat32 = x_921;
        let x_923 : f32 = u_xlat14.z;
        let x_924 : f32 = u_xlat32;
        let x_927 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_923 * x_924) + x_927);
        let x_931 : vec4<f32> = u_xlat8;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec11;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat32 = x_943;
        let x_945 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat32;
        let x_949 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_945 * x_946) + x_949);
        let x_953 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec12;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat32 = x_965;
        let x_966 : f32 = u_xlat83;
        let x_967 : f32 = u_xlat32;
        let x_970 : f32 = u_xlat6.x;
        u_xlat82 = ((x_966 * x_967) + x_970);
      } else {
        let x_973 : vec4<f32> = vs_TEXCOORD6;
        let x_976 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_979 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_976.z, x_976.w)) + vec2<f32>(0.5f, 0.5f));
        let x_980 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = floor(vec2<f32>(x_982.x, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = vs_TEXCOORD6;
        let x_990 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_990.z, x_990.w)) + -(vec2<f32>(x_993.x, x_993.y)));
        let x_997 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_997.x, x_997.x, x_997.y, x_997.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1000.x, x_1000.x, x_1000.z, x_1000.z) * vec4<f32>(x_1002.x, x_1002.x, x_1002.z, x_1002.z));
        let x_1005 : vec4<f32> = u_xlat8;
        let x_1009 : vec2<f32> = (vec2<f32>(x_1005.y, x_1005.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1009.x, x_1010.z, x_1009.y);
        let x_1012 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = u_xlat58;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1015));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat58;
        let x_1022 : vec2<f32> = (-(x_1020) + vec2<f32>(1.0f, 1.0f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1025, vec2<f32>(0.0f, 0.0f));
        let x_1027 : vec2<f32> = u_xlat60;
        let x_1029 : vec2<f32> = u_xlat60;
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1033 : vec2<f32> = ((-(x_1027) * x_1029) + vec2<f32>(x_1031.x, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1036, vec2<f32>(0.0f, 0.0f));
        let x_1039 : vec2<f32> = u_xlat60;
        let x_1041 : vec2<f32> = u_xlat60;
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1045 : vec2<f32> = ((-(x_1039) * x_1041) + vec2<f32>(x_1043.y, x_1043.w));
        let x_1046 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1045.x, x_1046.y, x_1045.y);
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) + vec2<f32>(2.0f, 2.0f));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec3<f32> = u_xlat33;
        let x_1055 : vec2<f32> = (vec2<f32>(x_1053.x, x_1053.z) + vec2<f32>(2.0f, 2.0f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1055.x, x_1056.z, x_1055.y);
        let x_1059 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1059 * 0.08163200318813323975f);
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1066 : vec3<f32> = (vec3<f32>(x_1063.z, x_1063.x, x_1063.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1076 : f32 = u_xlat11.y;
        u_xlat10.x = x_1076;
        let x_1078 : vec2<f32> = u_xlat58;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec2<f32> = u_xlat58;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1093.y, x_1092.y, x_1093.w);
        let x_1096 : f32 = u_xlat7.x;
        u_xlat8.y = x_1096;
        let x_1099 : f32 = u_xlat9.y;
        u_xlat8.w = x_1099;
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1101 + x_1102);
        let x_1104 : vec2<f32> = u_xlat58;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1104.y, x_1104.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec2<f32> = u_xlat58;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1110.y, x_1110.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        let x_1117 : f32 = u_xlat7.y;
        u_xlat9.y = x_1117;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1119 + x_1120);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1122 / x_1123);
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1125 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1132 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1131 / x_1132);
        let x_1134 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1134 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1139 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1136.w, x_1136.x, x_1136.y, x_1136.z) * vec4<f32>(x_1139.x, x_1139.x, x_1139.x, x_1139.x));
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1145 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1142.x, x_1142.w, x_1142.y, x_1142.z) * vec4<f32>(x_1145.y, x_1145.y, x_1145.y, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1149 : vec3<f32> = vec3<f32>(x_1148.y, x_1148.z, x_1148.w);
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1149.z);
        let x_1153 : f32 = u_xlat9.x;
        u_xlat11.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat6;
        let x_1158 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1167 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat11.y;
        u_xlat8.y = x_1174;
        let x_1177 : f32 = u_xlat9.z;
        u_xlat11.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat6;
        let x_1182 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1191 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.w, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1200 : f32 = u_xlat11.y;
        u_xlat8.z = x_1200;
        let x_1203 : vec4<f32> = u_xlat6;
        let x_1206 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y) * vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y)) + vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.z));
        let x_1213 : f32 = u_xlat9.w;
        u_xlat11.y = x_1213;
        let x_1216 : vec4<f32> = u_xlat6;
        let x_1219 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y) * vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y)) + vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1222.y));
        let x_1226 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat11;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
        let x_1235 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1234.x, x_1234.y, x_1235.z);
        let x_1238 : f32 = u_xlat11.y;
        u_xlat8.w = x_1238;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.x, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat11;
        let x_1251 : vec3<f32> = vec3<f32>(x_1250.x, x_1250.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1251.x, x_1252.y, x_1251.y, x_1251.z);
        let x_1254 : vec4<f32> = u_xlat6;
        let x_1257 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.y));
        let x_1264 : vec4<f32> = u_xlat6;
        let x_1267 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.w, x_1270.y));
        let x_1274 : f32 = u_xlat8.x;
        u_xlat9.x = x_1274;
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1279 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat9;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.x, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1288 : vec4<f32> = u_xlat7;
        let x_1290 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.x) * x_1290);
        let x_1293 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1293.y, x_1293.y, x_1293.y, x_1293.y) * x_1295);
        let x_1298 : vec4<f32> = u_xlat7;
        let x_1300 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1298.z, x_1298.z, x_1298.z, x_1298.z) * x_1300);
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1302.w, x_1302.w, x_1302.w, x_1302.w) * x_1304);
        let x_1307 : vec4<f32> = u_xlat12;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.x, x_1307.y);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec13;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat83 = x_1319;
        let x_1321 : vec4<f32> = u_xlat12;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec14;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat8.x = x_1333;
        let x_1336 : f32 = u_xlat8.x;
        let x_1338 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1336 * x_1338);
        let x_1342 : f32 = u_xlat17.x;
        let x_1343 : f32 = u_xlat83;
        let x_1346 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1342 * x_1343) + x_1346);
        let x_1349 : vec2<f32> = u_xlat58;
        let x_1351 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec15;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat58.x = x_1360;
        let x_1363 : f32 = u_xlat17.z;
        let x_1365 : f32 = u_xlat58.x;
        let x_1367 : f32 = u_xlat83;
        u_xlat83 = ((x_1363 * x_1365) + x_1367);
        let x_1370 : vec4<f32> = u_xlat15;
        let x_1371 : vec2<f32> = vec2<f32>(x_1370.x, x_1370.y);
        let x_1373 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec16;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat58.x = x_1382;
        let x_1385 : f32 = u_xlat17.w;
        let x_1387 : f32 = u_xlat58.x;
        let x_1389 : f32 = u_xlat83;
        u_xlat83 = ((x_1385 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat13;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec17;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat58.x = x_1404;
        let x_1407 : f32 = u_xlat18.x;
        let x_1409 : f32 = u_xlat58.x;
        let x_1411 : f32 = u_xlat83;
        u_xlat83 = ((x_1407 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat13;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.z, x_1414.w);
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec18;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat58.x = x_1426;
        let x_1429 : f32 = u_xlat18.y;
        let x_1431 : f32 = u_xlat58.x;
        let x_1433 : f32 = u_xlat83;
        u_xlat83 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat14;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec19;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat58.x = x_1448;
        let x_1451 : f32 = u_xlat18.z;
        let x_1453 : f32 = u_xlat58.x;
        let x_1455 : f32 = u_xlat83;
        u_xlat83 = ((x_1451 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat15;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec20;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat58.x = x_1470;
        let x_1473 : f32 = u_xlat18.w;
        let x_1475 : f32 = u_xlat58.x;
        let x_1477 : f32 = u_xlat83;
        u_xlat83 = ((x_1473 * x_1475) + x_1477);
        let x_1480 : vec4<f32> = u_xlat16;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec21;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat58.x = x_1492;
        let x_1495 : f32 = u_xlat19.x;
        let x_1497 : f32 = u_xlat58.x;
        let x_1499 : f32 = u_xlat83;
        u_xlat83 = ((x_1495 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat16;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec22;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat58.x = x_1514;
        let x_1517 : f32 = u_xlat19.y;
        let x_1519 : f32 = u_xlat58.x;
        let x_1521 : f32 = u_xlat83;
        u_xlat83 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec3<f32> = u_xlat34;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec23;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat58.x = x_1536;
        let x_1539 : f32 = u_xlat19.z;
        let x_1541 : f32 = u_xlat58.x;
        let x_1543 : f32 = u_xlat83;
        u_xlat83 = ((x_1539 * x_1541) + x_1543);
        let x_1546 : vec2<f32> = u_xlat66;
        let x_1548 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec24;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat58.x = x_1557;
        let x_1560 : f32 = u_xlat19.w;
        let x_1562 : f32 = u_xlat58.x;
        let x_1564 : f32 = u_xlat83;
        u_xlat83 = ((x_1560 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat11;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec25;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat58.x = x_1579;
        let x_1582 : f32 = u_xlat7.x;
        let x_1584 : f32 = u_xlat58.x;
        let x_1586 : f32 = u_xlat83;
        u_xlat83 = ((x_1582 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat11;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec26;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat58.x = x_1601;
        let x_1604 : f32 = u_xlat7.y;
        let x_1606 : f32 = u_xlat58.x;
        let x_1608 : f32 = u_xlat83;
        u_xlat83 = ((x_1604 * x_1606) + x_1608);
        let x_1611 : vec2<f32> = u_xlat61;
        let x_1613 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec27;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat58.x = x_1622;
        let x_1625 : f32 = u_xlat7.z;
        let x_1627 : f32 = u_xlat58.x;
        let x_1629 : f32 = u_xlat83;
        u_xlat83 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat6;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
        let x_1635 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec28;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat6.x = x_1644;
        let x_1647 : f32 = u_xlat7.w;
        let x_1649 : f32 = u_xlat6.x;
        let x_1651 : f32 = u_xlat83;
        u_xlat82 = ((x_1647 * x_1649) + x_1651);
      }
    }
  } else {
    let x_1655 : vec4<f32> = vs_TEXCOORD6;
    let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
    let x_1658 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
    let x_1665 : vec3<f32> = txVec29;
    let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1665.xy, x_1665.z);
    u_xlat82 = x_1667;
  }
  let x_1669 : f32 = x_407.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1669) + 1.0f);
  let x_1672 : f32 = u_xlat82;
  let x_1674 : f32 = x_407.x_MainLightShadowParams.x;
  let x_1676 : f32 = u_xlat83;
  u_xlat82 = ((x_1672 * x_1674) + x_1676);
  let x_1679 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1679);
  let x_1683 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1683 >= 1.0f);
  let x_1685 : bool = u_xlatb83;
  let x_1686 : bool = u_xlatb6;
  u_xlatb83 = (x_1685 | x_1686);
  let x_1688 : bool = u_xlatb83;
  let x_1689 : f32 = u_xlat82;
  u_xlat82 = select(x_1689, 1.0f, x_1688);
  let x_1691 : vec3<f32> = vs_TEXCOORD1;
  let x_1693 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1695 : vec3<f32> = (x_1691 + -(x_1693));
  let x_1696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat6;
  let x_1700 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : f32 = u_xlat83;
  let x_1705 : f32 = x_407.x_MainLightShadowParams.z;
  let x_1708 : f32 = x_407.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1703 * x_1705) + x_1708);
  let x_1712 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1712, 0.0f, 1.0f);
  let x_1715 : f32 = u_xlat82;
  u_xlat32 = (-(x_1715) + 1.0f);
  let x_1719 : f32 = u_xlat6.x;
  let x_1720 : f32 = u_xlat32;
  let x_1722 : f32 = u_xlat82;
  u_xlat82 = ((x_1719 * x_1720) + x_1722);
  let x_1731 : f32 = x_1729.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1731 == -1.0f));
  let x_1733 : bool = u_xlatb6;
  if (x_1733) {
    let x_1736 : vec3<f32> = vs_TEXCOORD1;
    let x_1739 : vec4<f32> = x_1729.x_MainLightWorldToLight[1i];
    let x_1741 : vec2<f32> = (vec2<f32>(x_1736.y, x_1736.y) * vec2<f32>(x_1739.x, x_1739.y));
    let x_1742 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
    let x_1745 : vec4<f32> = x_1729.x_MainLightWorldToLight[0i];
    let x_1747 : vec3<f32> = vs_TEXCOORD1;
    let x_1750 : vec4<f32> = u_xlat6;
    let x_1752 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(x_1747.x, x_1747.x)) + vec2<f32>(x_1750.x, x_1750.y));
    let x_1753 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1752.x, x_1752.y, x_1753.z, x_1753.w);
    let x_1756 : vec4<f32> = x_1729.x_MainLightWorldToLight[2i];
    let x_1758 : vec3<f32> = vs_TEXCOORD1;
    let x_1761 : vec4<f32> = u_xlat6;
    let x_1763 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1758.z, x_1758.z)) + vec2<f32>(x_1761.x, x_1761.y));
    let x_1764 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
    let x_1766 : vec4<f32> = u_xlat6;
    let x_1770 : vec4<f32> = x_1729.x_MainLightWorldToLight[3i];
    let x_1772 : vec2<f32> = (vec2<f32>(x_1766.x, x_1766.y) + vec2<f32>(x_1770.x, x_1770.y));
    let x_1773 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
    let x_1775 : vec4<f32> = u_xlat6;
    let x_1778 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1779 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
    let x_1786 : vec4<f32> = u_xlat6;
    let x_1789 : f32 = x_28.x_GlobalMipBias.x;
    let x_1790 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1786.x, x_1786.y), x_1789);
    u_xlat6 = x_1790;
    let x_1795 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1797 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1799 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1801 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1802 : vec4<f32> = vec4<f32>(x_1795, x_1797, x_1799, x_1801);
    let x_1810 : vec4<bool> = (vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1802.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1810.x, x_1810.y);
    let x_1814 : bool = u_xlatb7.y;
    if (x_1814) {
      let x_1819 : f32 = u_xlat6.w;
      x_1815 = x_1819;
    } else {
      let x_1822 : f32 = u_xlat6.x;
      x_1815 = x_1822;
    }
    let x_1823 : f32 = x_1815;
    u_xlat84 = x_1823;
    let x_1825 : bool = u_xlatb7.x;
    if (x_1825) {
      let x_1829 : vec4<f32> = u_xlat6;
      x_1826 = vec3<f32>(x_1829.x, x_1829.y, x_1829.z);
    } else {
      let x_1832 : f32 = u_xlat84;
      x_1826 = vec3<f32>(x_1832, x_1832, x_1832);
    }
    let x_1834 : vec3<f32> = x_1826;
    let x_1835 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1841 : vec4<f32> = u_xlat6;
  let x_1844 : vec4<f32> = x_28.x_MainLightColor;
  let x_1846 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.y, x_1841.z) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  let x_1849 : vec3<f32> = u_xlat5;
  let x_1851 : vec3<f32> = u_xlat29;
  u_xlat84 = dot(-(x_1849), x_1851);
  let x_1853 : f32 = u_xlat84;
  let x_1854 : f32 = u_xlat84;
  u_xlat84 = (x_1853 + x_1854);
  let x_1856 : vec3<f32> = u_xlat29;
  let x_1857 : f32 = u_xlat84;
  let x_1861 : vec3<f32> = u_xlat5;
  let x_1863 : vec3<f32> = ((x_1856 * -(vec3<f32>(x_1857, x_1857, x_1857))) + -(x_1861));
  let x_1864 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec3<f32> = u_xlat29;
  let x_1867 : vec3<f32> = u_xlat5;
  u_xlat84 = dot(x_1866, x_1867);
  let x_1869 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1869, 0.0f, 1.0f);
  let x_1871 : f32 = u_xlat84;
  u_xlat84 = (-(x_1871) + 1.0f);
  let x_1874 : f32 = u_xlat84;
  let x_1875 : f32 = u_xlat84;
  u_xlat84 = (x_1874 * x_1875);
  let x_1877 : f32 = u_xlat84;
  let x_1878 : f32 = u_xlat84;
  u_xlat84 = (x_1877 * x_1878);
  let x_1881 : f32 = u_xlat78;
  u_xlat85 = ((-(x_1881) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1887 : f32 = u_xlat78;
  let x_1888 : f32 = u_xlat85;
  u_xlat78 = (x_1887 * x_1888);
  let x_1890 : f32 = u_xlat78;
  u_xlat78 = (x_1890 * 6.0f);
  let x_1901 : vec4<f32> = u_xlat7;
  let x_1903 : f32 = u_xlat78;
  let x_1904 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1901.x, x_1901.y, x_1901.z), x_1903);
  u_xlat7 = x_1904;
  let x_1906 : f32 = u_xlat7.w;
  u_xlat78 = (x_1906 + -1.0f);
  let x_1913 : f32 = x_1911.unity_SpecCube0_HDR.w;
  let x_1914 : f32 = u_xlat78;
  u_xlat78 = ((x_1913 * x_1914) + 1.0f);
  let x_1917 : f32 = u_xlat78;
  u_xlat78 = max(x_1917, 0.0f);
  let x_1919 : f32 = u_xlat78;
  u_xlat78 = log2(x_1919);
  let x_1921 : f32 = u_xlat78;
  let x_1923 : f32 = x_1911.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1921 * x_1923);
  let x_1925 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1925);
  let x_1927 : f32 = u_xlat78;
  let x_1929 : f32 = x_1911.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1927 * x_1929);
  let x_1931 : vec4<f32> = u_xlat7;
  let x_1933 : f32 = u_xlat78;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * vec3<f32>(x_1933, x_1933, x_1933));
  let x_1936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : vec2<f32> = u_xlat1;
  let x_1940 : vec2<f32> = u_xlat1;
  let x_1944 : vec2<f32> = ((vec2<f32>(x_1938.x, x_1938.x) * vec2<f32>(x_1940.x, x_1940.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1945 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
  let x_1948 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1948);
  let x_1950 : vec4<f32> = u_xlat0;
  let x_1953 : vec2<f32> = u_xlat53;
  u_xlat34 = (-(vec3<f32>(x_1950.x, x_1950.y, x_1950.z)) + vec3<f32>(x_1953.x, x_1953.x, x_1953.x));
  let x_1956 : f32 = u_xlat84;
  let x_1958 : vec3<f32> = u_xlat34;
  let x_1960 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1956, x_1956, x_1956) * x_1958) + vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : f32 = u_xlat78;
  let x_1965 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1963, x_1963, x_1963) * x_1965);
  let x_1967 : vec4<f32> = u_xlat7;
  let x_1969 : vec3<f32> = u_xlat34;
  let x_1970 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * x_1969);
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat4;
  let x_1975 : vec3<f32> = u_xlat28;
  let x_1977 : vec4<f32> = u_xlat7;
  let x_1979 : vec3<f32> = ((vec3<f32>(x_1973.x, x_1973.y, x_1973.z) * x_1975) + vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : f32 = u_xlat82;
  let x_1984 : f32 = x_1911.unity_LightData.z;
  u_xlat78 = (x_1982 * x_1984);
  let x_1986 : vec3<f32> = u_xlat29;
  let x_1988 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_1986, vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1993 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1993, 0.0f, 1.0f);
  let x_1996 : f32 = u_xlat78;
  let x_1998 : f32 = u_xlat1.x;
  u_xlat78 = (x_1996 * x_1998);
  let x_2000 : f32 = u_xlat78;
  let x_2002 : vec4<f32> = u_xlat6;
  let x_2004 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : vec3<f32> = u_xlat5;
  let x_2009 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2011 : vec3<f32> = (x_2007 + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec4<f32> = u_xlat7;
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : f32 = u_xlat78;
  u_xlat78 = max(x_2019, 1.17549435e-38f);
  let x_2022 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2022);
  let x_2024 : f32 = u_xlat78;
  let x_2026 : vec4<f32> = u_xlat7;
  let x_2028 : vec3<f32> = (vec3<f32>(x_2024, x_2024, x_2024) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2031 : vec3<f32> = u_xlat29;
  let x_2032 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_2031, vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2035 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2035, 0.0f, 1.0f);
  let x_2038 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2038.x, x_2038.y, x_2038.z), vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2045 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2045, 0.0f, 1.0f);
  let x_2048 : f32 = u_xlat78;
  let x_2049 : f32 = u_xlat78;
  u_xlat78 = (x_2048 * x_2049);
  let x_2051 : f32 = u_xlat78;
  let x_2053 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2051 * x_2053) + 1.00001001358032226562f);
  let x_2058 : f32 = u_xlat1.x;
  let x_2060 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2058 * x_2060);
  let x_2063 : f32 = u_xlat78;
  let x_2064 : f32 = u_xlat78;
  u_xlat78 = (x_2063 * x_2064);
  let x_2067 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2067, 0.10000000149011611938f);
  let x_2071 : f32 = u_xlat78;
  let x_2073 : f32 = u_xlat1.x;
  u_xlat78 = (x_2071 * x_2073);
  let x_2075 : f32 = u_xlat79;
  let x_2076 : f32 = u_xlat78;
  u_xlat78 = (x_2075 * x_2076);
  let x_2078 : f32 = u_xlat27;
  let x_2079 : f32 = u_xlat78;
  u_xlat78 = (x_2078 / x_2079);
  let x_2081 : vec4<f32> = u_xlat0;
  let x_2083 : f32 = u_xlat78;
  let x_2086 : vec3<f32> = u_xlat28;
  let x_2087 : vec3<f32> = ((vec3<f32>(x_2081.x, x_2081.y, x_2081.z) * vec3<f32>(x_2083, x_2083, x_2083)) + x_2086);
  let x_2088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
  let x_2090 : vec4<f32> = u_xlat6;
  let x_2092 : vec4<f32> = u_xlat7;
  let x_2094 : vec3<f32> = (vec3<f32>(x_2090.x, x_2090.y, x_2090.z) * vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2098 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2100 : f32 = x_1911.unity_LightData.y;
  u_xlat78 = min(x_2098, x_2100);
  let x_2104 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2104));
  let x_2107 : f32 = u_xlat83;
  let x_2110 : f32 = x_407.x_AdditionalShadowFadeParams.x;
  let x_2113 : f32 = x_407.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2107 * x_2110) + x_2113);
  let x_2117 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2117, 0.0f, 1.0f);
  let x_2121 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2123 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2125 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2127 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2128 : vec4<f32> = vec4<f32>(x_2121, x_2123, x_2125, x_2127);
  let x_2134 : vec4<bool> = (vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2128.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2134.x, x_2134.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2146 : u32 = u_xlatu_loop_1;
    let x_2147 : u32 = u_xlatu78;
    if ((x_2146 < x_2147)) {
    } else {
      break;
    }
    let x_2150 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2150 >> 2u);
    let x_2154 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2154 & 3u));
    let x_2157 : u32 = u_xlatu82;
    let x_2160 : vec4<f32> = x_1911.unity_LightIndices[bitcast<i32>(x_2157)];
    let x_2170 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2175 : vec4<u32> = indexable[x_2170];
    u_xlat82 = dot(x_2160, bitcast<vec4<f32>>(x_2175));
    let x_2179 : f32 = u_xlat82;
    u_xlati82 = i32(x_2179);
    let x_2181 : vec3<f32> = vs_TEXCOORD1;
    let x_2192 : i32 = u_xlati82;
    let x_2194 : vec4<f32> = x_2191.x_AdditionalLightsPosition[x_2192];
    let x_2197 : i32 = u_xlati82;
    let x_2199 : vec4<f32> = x_2191.x_AdditionalLightsPosition[x_2197];
    let x_2201 : vec3<f32> = ((-(x_2181) * vec3<f32>(x_2194.w, x_2194.w, x_2194.w)) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
    let x_2202 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
    let x_2204 : vec4<f32> = u_xlat9;
    let x_2206 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2204.x, x_2204.y, x_2204.z), vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : f32 = u_xlat83;
    u_xlat83 = max(x_2209, 0.00006103515625f);
    let x_2212 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2212);
    let x_2214 : f32 = u_xlat84;
    let x_2216 : vec4<f32> = u_xlat9;
    let x_2218 : vec3<f32> = (vec3<f32>(x_2214, x_2214, x_2214) * vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
    let x_2222 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2222);
    let x_2224 : f32 = u_xlat83;
    let x_2225 : i32 = u_xlati82;
    let x_2227 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2225].x;
    u_xlat83 = (x_2224 * x_2227);
    let x_2229 : f32 = u_xlat83;
    let x_2231 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2229) * x_2231) + 1.0f);
    let x_2234 : f32 = u_xlat83;
    u_xlat83 = max(x_2234, 0.0f);
    let x_2236 : f32 = u_xlat83;
    let x_2237 : f32 = u_xlat83;
    u_xlat83 = (x_2236 * x_2237);
    let x_2239 : f32 = u_xlat83;
    let x_2240 : f32 = u_xlat59;
    u_xlat83 = (x_2239 * x_2240);
    let x_2242 : i32 = u_xlati82;
    let x_2244 : vec4<f32> = x_2191.x_AdditionalLightsSpotDir[x_2242];
    let x_2246 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2244.x, x_2244.y, x_2244.z), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2249 : f32 = u_xlat59;
    let x_2250 : i32 = u_xlati82;
    let x_2252 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2250].z;
    let x_2254 : i32 = u_xlati82;
    let x_2256 : f32 = x_2191.x_AdditionalLightsAttenuation[x_2254].w;
    u_xlat59 = ((x_2249 * x_2252) + x_2256);
    let x_2258 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2258, 0.0f, 1.0f);
    let x_2260 : f32 = u_xlat59;
    let x_2261 : f32 = u_xlat59;
    u_xlat59 = (x_2260 * x_2261);
    let x_2263 : f32 = u_xlat83;
    let x_2264 : f32 = u_xlat59;
    u_xlat83 = (x_2263 * x_2264);
    let x_2268 : i32 = u_xlati82;
    let x_2270 : f32 = x_407.x_AdditionalShadowParams[x_2268].w;
    u_xlati59 = i32(x_2270);
    let x_2273 : i32 = u_xlati59;
    u_xlatb85 = (x_2273 >= 0i);
    let x_2275 : bool = u_xlatb85;
    if (x_2275) {
      let x_2279 : i32 = u_xlati82;
      let x_2281 : f32 = x_407.x_AdditionalShadowParams[x_2279].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2281, x_2281, x_2281, x_2281))));
      let x_2285 : bool = u_xlatb85;
      if (x_2285) {
        let x_2290 : vec4<f32> = u_xlat10;
        let x_2293 : vec4<f32> = u_xlat10;
        let x_2296 : vec4<bool> = (abs(vec4<f32>(x_2290.z, x_2290.z, x_2290.y, x_2290.z)) >= abs(vec4<f32>(x_2293.x, x_2293.y, x_2293.x, x_2293.x)));
        let x_2298 : vec3<bool> = vec3<bool>(x_2296.x, x_2296.y, x_2296.z);
        let x_2299 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2302 : bool = u_xlatb11.y;
        let x_2304 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2302 & x_2304);
        let x_2306 : vec4<f32> = u_xlat10;
        let x_2309 : vec4<bool> = (-(vec4<f32>(x_2306.z, x_2306.y, x_2306.z, x_2306.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2310 : vec3<bool> = vec3<bool>(x_2309.x, x_2309.y, x_2309.w);
        let x_2311 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2310.x, x_2310.y, x_2311.z, x_2310.z);
        let x_2314 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2314);
        let x_2319 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2319);
        let x_2325 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2325);
        let x_2328 : bool = u_xlatb11.z;
        if (x_2328) {
          let x_2333 : f32 = u_xlat11.y;
          x_2329 = x_2333;
        } else {
          let x_2335 : f32 = u_xlat87;
          x_2329 = x_2335;
        }
        let x_2336 : f32 = x_2329;
        u_xlat87 = x_2336;
        let x_2337 : bool = u_xlatb85;
        if (x_2337) {
          let x_2342 : f32 = u_xlat11.x;
          x_2338 = x_2342;
        } else {
          let x_2344 : f32 = u_xlat87;
          x_2338 = x_2344;
        }
        let x_2345 : f32 = x_2338;
        u_xlat85 = x_2345;
        let x_2346 : i32 = u_xlati82;
        let x_2348 : f32 = x_407.x_AdditionalShadowParams[x_2346].w;
        u_xlat87 = trunc(x_2348);
        let x_2350 : f32 = u_xlat85;
        let x_2351 : f32 = u_xlat87;
        u_xlat85 = (x_2350 + x_2351);
        let x_2353 : f32 = u_xlat85;
        u_xlati59 = i32(x_2353);
      }
      let x_2355 : i32 = u_xlati59;
      u_xlati59 = (x_2355 << bitcast<u32>(2i));
      let x_2357 : vec3<f32> = vs_TEXCOORD1;
      let x_2360 : i32 = u_xlati59;
      let x_2363 : i32 = u_xlati59;
      let x_2367 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2360 + 1i) / 4i)][((x_2363 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2357.y, x_2357.y, x_2357.y, x_2357.y) * x_2367);
      let x_2369 : i32 = u_xlati59;
      let x_2371 : i32 = u_xlati59;
      let x_2374 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[(x_2369 / 4i)][(x_2371 % 4i)];
      let x_2375 : vec3<f32> = vs_TEXCOORD1;
      let x_2378 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2374 * vec4<f32>(x_2375.x, x_2375.x, x_2375.x, x_2375.x)) + x_2378);
      let x_2380 : i32 = u_xlati59;
      let x_2383 : i32 = u_xlati59;
      let x_2387 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2380 + 2i) / 4i)][((x_2383 + 2i) % 4i)];
      let x_2388 : vec3<f32> = vs_TEXCOORD1;
      let x_2391 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2387 * vec4<f32>(x_2388.z, x_2388.z, x_2388.z, x_2388.z)) + x_2391);
      let x_2393 : vec4<f32> = u_xlat11;
      let x_2394 : i32 = u_xlati59;
      let x_2397 : i32 = u_xlati59;
      let x_2401 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2394 + 3i) / 4i)][((x_2397 + 3i) % 4i)];
      u_xlat11 = (x_2393 + x_2401);
      let x_2403 : vec4<f32> = u_xlat11;
      let x_2405 : vec4<f32> = u_xlat11;
      let x_2407 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) / vec3<f32>(x_2405.w, x_2405.w, x_2405.w));
      let x_2408 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
      let x_2411 : i32 = u_xlati82;
      let x_2413 : f32 = x_407.x_AdditionalShadowParams[x_2411].y;
      u_xlatb59 = (0.0f < x_2413);
      let x_2415 : bool = u_xlatb59;
      if (x_2415) {
        let x_2418 : i32 = u_xlati82;
        let x_2420 : f32 = x_407.x_AdditionalShadowParams[x_2418].y;
        u_xlatb59 = (1.0f == x_2420);
        let x_2422 : bool = u_xlatb59;
        if (x_2422) {
          let x_2425 : vec4<f32> = u_xlat11;
          let x_2428 : vec4<f32> = x_407.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2425.x, x_2425.y, x_2425.x, x_2425.y) + x_2428);
          let x_2431 : vec4<f32> = u_xlat12;
          let x_2432 : vec2<f32> = vec2<f32>(x_2431.x, x_2431.y);
          let x_2434 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2432.x, x_2432.y, x_2434);
          let x_2442 : vec3<f32> = txVec30;
          let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
          u_xlat13.x = x_2444;
          let x_2447 : vec4<f32> = u_xlat12;
          let x_2448 : vec2<f32> = vec2<f32>(x_2447.z, x_2447.w);
          let x_2450 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2448.x, x_2448.y, x_2450);
          let x_2457 : vec3<f32> = txVec31;
          let x_2459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2457.xy, x_2457.z);
          u_xlat13.y = x_2459;
          let x_2461 : vec4<f32> = u_xlat11;
          let x_2465 : vec4<f32> = x_407.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y) + x_2465);
          let x_2468 : vec4<f32> = u_xlat12;
          let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
          let x_2471 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
          let x_2478 : vec3<f32> = txVec32;
          let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
          u_xlat13.z = x_2480;
          let x_2483 : vec4<f32> = u_xlat12;
          let x_2484 : vec2<f32> = vec2<f32>(x_2483.z, x_2483.w);
          let x_2486 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2484.x, x_2484.y, x_2486);
          let x_2493 : vec3<f32> = txVec33;
          let x_2495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2493.xy, x_2493.z);
          u_xlat13.w = x_2495;
          let x_2497 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2497, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2500 : i32 = u_xlati82;
          let x_2502 : f32 = x_407.x_AdditionalShadowParams[x_2500].y;
          u_xlatb85 = (2.0f == x_2502);
          let x_2504 : bool = u_xlatb85;
          if (x_2504) {
            let x_2507 : vec4<f32> = u_xlat11;
            let x_2511 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2514 : vec2<f32> = ((vec2<f32>(x_2507.x, x_2507.y) * vec2<f32>(x_2511.z, x_2511.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2515 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat12;
            let x_2519 : vec2<f32> = floor(vec2<f32>(x_2517.x, x_2517.y));
            let x_2520 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2523 : vec4<f32> = u_xlat11;
            let x_2526 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2529 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2523.x, x_2523.y) * vec2<f32>(x_2526.z, x_2526.w)) + -(vec2<f32>(x_2529.x, x_2529.y)));
            let x_2533 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2533.x, x_2533.x, x_2533.y, x_2533.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2536 : vec4<f32> = u_xlat13;
            let x_2538 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2536.x, x_2536.x, x_2536.z, x_2536.z) * vec4<f32>(x_2538.x, x_2538.x, x_2538.z, x_2538.z));
            let x_2541 : vec4<f32> = u_xlat14;
            let x_2543 : vec2<f32> = (vec2<f32>(x_2541.y, x_2541.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2543.x, x_2544.y, x_2543.y, x_2544.w);
            let x_2546 : vec4<f32> = u_xlat14;
            let x_2549 : vec2<f32> = u_xlat64;
            let x_2551 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2549));
            let x_2552 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2551.x, x_2551.y, x_2552.z, x_2552.w);
            let x_2554 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2554) + vec2<f32>(1.0f, 1.0f));
            let x_2557 : vec2<f32> = u_xlat64;
            let x_2558 : vec2<f32> = min(x_2557, vec2<f32>(0.0f, 0.0f));
            let x_2559 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2558.x, x_2558.y, x_2559.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat15;
            let x_2564 : vec4<f32> = u_xlat15;
            let x_2567 : vec2<f32> = u_xlat66;
            let x_2568 : vec2<f32> = ((-(vec2<f32>(x_2561.x, x_2561.y)) * vec2<f32>(x_2564.x, x_2564.y)) + x_2567);
            let x_2569 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2568.x, x_2568.y, x_2569.z, x_2569.w);
            let x_2571 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2571, vec2<f32>(0.0f, 0.0f));
            let x_2573 : vec2<f32> = u_xlat64;
            let x_2575 : vec2<f32> = u_xlat64;
            let x_2577 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2573) * x_2575) + vec2<f32>(x_2577.y, x_2577.w));
            let x_2580 : vec4<f32> = u_xlat15;
            let x_2582 : vec2<f32> = (vec2<f32>(x_2580.x, x_2580.y) + vec2<f32>(1.0f, 1.0f));
            let x_2583 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
            let x_2585 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2585 + vec2<f32>(1.0f, 1.0f));
            let x_2587 : vec4<f32> = u_xlat14;
            let x_2589 : vec2<f32> = (vec2<f32>(x_2587.x, x_2587.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2590 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2592 : vec2<f32> = u_xlat66;
            let x_2593 : vec2<f32> = (x_2592 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2594 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat15;
            let x_2598 : vec2<f32> = (vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2599 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
            let x_2601 : vec2<f32> = u_xlat64;
            let x_2602 : vec2<f32> = (x_2601 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2603 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2605 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2605.y, x_2605.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2609 : f32 = u_xlat15.x;
            u_xlat16.z = x_2609;
            let x_2612 : f32 = u_xlat64.x;
            u_xlat16.w = x_2612;
            let x_2615 : f32 = u_xlat17.x;
            u_xlat14.z = x_2615;
            let x_2618 : f32 = u_xlat13.x;
            u_xlat14.w = x_2618;
            let x_2620 : vec4<f32> = u_xlat14;
            let x_2622 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2620.z, x_2620.w, x_2620.x, x_2620.z) + vec4<f32>(x_2622.z, x_2622.w, x_2622.x, x_2622.z));
            let x_2626 : f32 = u_xlat16.y;
            u_xlat15.z = x_2626;
            let x_2629 : f32 = u_xlat64.y;
            u_xlat15.w = x_2629;
            let x_2632 : f32 = u_xlat14.y;
            u_xlat17.z = x_2632;
            let x_2635 : f32 = u_xlat13.z;
            u_xlat17.w = x_2635;
            let x_2637 : vec4<f32> = u_xlat15;
            let x_2639 : vec4<f32> = u_xlat17;
            let x_2641 : vec3<f32> = (vec3<f32>(x_2637.z, x_2637.y, x_2637.w) + vec3<f32>(x_2639.z, x_2639.y, x_2639.w));
            let x_2642 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
            let x_2644 : vec4<f32> = u_xlat14;
            let x_2646 : vec4<f32> = u_xlat18;
            let x_2648 : vec3<f32> = (vec3<f32>(x_2644.x, x_2644.z, x_2644.w) / vec3<f32>(x_2646.z, x_2646.w, x_2646.y));
            let x_2649 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
            let x_2651 : vec4<f32> = u_xlat14;
            let x_2653 : vec3<f32> = (vec3<f32>(x_2651.x, x_2651.y, x_2651.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2654 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat17;
            let x_2658 : vec4<f32> = u_xlat13;
            let x_2660 : vec3<f32> = (vec3<f32>(x_2656.z, x_2656.y, x_2656.w) / vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
            let x_2661 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
            let x_2663 : vec4<f32> = u_xlat15;
            let x_2665 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.y, x_2663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2666 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2665.x, x_2665.y, x_2665.z, x_2666.w);
            let x_2668 : vec4<f32> = u_xlat14;
            let x_2671 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2673 : vec3<f32> = (vec3<f32>(x_2668.y, x_2668.x, x_2668.z) * vec3<f32>(x_2671.x, x_2671.x, x_2671.x));
            let x_2674 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
            let x_2676 : vec4<f32> = u_xlat15;
            let x_2679 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2681 : vec3<f32> = (vec3<f32>(x_2676.x, x_2676.y, x_2676.z) * vec3<f32>(x_2679.y, x_2679.y, x_2679.y));
            let x_2682 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
            let x_2685 : f32 = u_xlat15.x;
            u_xlat14.w = x_2685;
            let x_2687 : vec4<f32> = u_xlat12;
            let x_2690 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2693 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2687.x, x_2687.y, x_2687.x, x_2687.y) * vec4<f32>(x_2690.x, x_2690.y, x_2690.x, x_2690.y)) + vec4<f32>(x_2693.y, x_2693.w, x_2693.x, x_2693.w));
            let x_2696 : vec4<f32> = u_xlat12;
            let x_2699 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2702 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2696.x, x_2696.y) * vec2<f32>(x_2699.x, x_2699.y)) + vec2<f32>(x_2702.z, x_2702.w));
            let x_2706 : f32 = u_xlat14.y;
            u_xlat15.w = x_2706;
            let x_2708 : vec4<f32> = u_xlat15;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.y, x_2708.z);
            let x_2710 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2710.x, x_2709.x, x_2710.z, x_2709.y);
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2715 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2712.x, x_2712.y, x_2712.x, x_2712.y) * vec4<f32>(x_2715.x, x_2715.y, x_2715.x, x_2715.y)) + vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2718.y));
            let x_2721 : vec4<f32> = u_xlat12;
            let x_2724 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.w, x_2727.y, x_2727.w, x_2727.z));
            let x_2730 : vec4<f32> = u_xlat12;
            let x_2733 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.y) * vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.y)) + vec4<f32>(x_2736.x, x_2736.w, x_2736.z, x_2736.w));
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2741 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2739.x, x_2739.x, x_2739.x, x_2739.y) * vec4<f32>(x_2741.z, x_2741.w, x_2741.y, x_2741.z));
            let x_2745 : vec4<f32> = u_xlat13;
            let x_2747 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2745.y, x_2745.y, x_2745.z, x_2745.z) * x_2747);
            let x_2750 : f32 = u_xlat13.z;
            let x_2752 : f32 = u_xlat18.y;
            u_xlat85 = (x_2750 * x_2752);
            let x_2755 : vec4<f32> = u_xlat16;
            let x_2756 : vec2<f32> = vec2<f32>(x_2755.x, x_2755.y);
            let x_2758 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2756.x, x_2756.y, x_2758);
            let x_2765 : vec3<f32> = txVec34;
            let x_2767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2765.xy, x_2765.z);
            u_xlat87 = x_2767;
            let x_2769 : vec4<f32> = u_xlat16;
            let x_2770 : vec2<f32> = vec2<f32>(x_2769.z, x_2769.w);
            let x_2772 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2780 : vec3<f32> = txVec35;
            let x_2782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2780.xy, x_2780.z);
            u_xlat88 = x_2782;
            let x_2783 : f32 = u_xlat88;
            let x_2785 : f32 = u_xlat19.y;
            u_xlat88 = (x_2783 * x_2785);
            let x_2788 : f32 = u_xlat19.x;
            let x_2789 : f32 = u_xlat87;
            let x_2791 : f32 = u_xlat88;
            u_xlat87 = ((x_2788 * x_2789) + x_2791);
            let x_2794 : vec2<f32> = u_xlat64;
            let x_2796 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec36;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat88 = x_2805;
            let x_2807 : f32 = u_xlat19.z;
            let x_2808 : f32 = u_xlat88;
            let x_2810 : f32 = u_xlat87;
            u_xlat87 = ((x_2807 * x_2808) + x_2810);
            let x_2813 : vec4<f32> = u_xlat15;
            let x_2814 : vec2<f32> = vec2<f32>(x_2813.x, x_2813.y);
            let x_2816 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2814.x, x_2814.y, x_2816);
            let x_2823 : vec3<f32> = txVec37;
            let x_2825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2823.xy, x_2823.z);
            u_xlat88 = x_2825;
            let x_2827 : f32 = u_xlat19.w;
            let x_2828 : f32 = u_xlat88;
            let x_2830 : f32 = u_xlat87;
            u_xlat87 = ((x_2827 * x_2828) + x_2830);
            let x_2833 : vec4<f32> = u_xlat17;
            let x_2834 : vec2<f32> = vec2<f32>(x_2833.x, x_2833.y);
            let x_2836 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2834.x, x_2834.y, x_2836);
            let x_2843 : vec3<f32> = txVec38;
            let x_2845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2843.xy, x_2843.z);
            u_xlat88 = x_2845;
            let x_2847 : f32 = u_xlat20.x;
            let x_2848 : f32 = u_xlat88;
            let x_2850 : f32 = u_xlat87;
            u_xlat87 = ((x_2847 * x_2848) + x_2850);
            let x_2853 : vec4<f32> = u_xlat17;
            let x_2854 : vec2<f32> = vec2<f32>(x_2853.z, x_2853.w);
            let x_2856 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2854.x, x_2854.y, x_2856);
            let x_2863 : vec3<f32> = txVec39;
            let x_2865 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2863.xy, x_2863.z);
            u_xlat88 = x_2865;
            let x_2867 : f32 = u_xlat20.y;
            let x_2868 : f32 = u_xlat88;
            let x_2870 : f32 = u_xlat87;
            u_xlat87 = ((x_2867 * x_2868) + x_2870);
            let x_2873 : vec4<f32> = u_xlat15;
            let x_2874 : vec2<f32> = vec2<f32>(x_2873.z, x_2873.w);
            let x_2876 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
            let x_2883 : vec3<f32> = txVec40;
            let x_2885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
            u_xlat88 = x_2885;
            let x_2887 : f32 = u_xlat20.z;
            let x_2888 : f32 = u_xlat88;
            let x_2890 : f32 = u_xlat87;
            u_xlat87 = ((x_2887 * x_2888) + x_2890);
            let x_2893 : vec4<f32> = u_xlat14;
            let x_2894 : vec2<f32> = vec2<f32>(x_2893.x, x_2893.y);
            let x_2896 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2894.x, x_2894.y, x_2896);
            let x_2903 : vec3<f32> = txVec41;
            let x_2905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2903.xy, x_2903.z);
            u_xlat88 = x_2905;
            let x_2907 : f32 = u_xlat20.w;
            let x_2908 : f32 = u_xlat88;
            let x_2910 : f32 = u_xlat87;
            u_xlat87 = ((x_2907 * x_2908) + x_2910);
            let x_2913 : vec4<f32> = u_xlat14;
            let x_2914 : vec2<f32> = vec2<f32>(x_2913.z, x_2913.w);
            let x_2916 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2914.x, x_2914.y, x_2916);
            let x_2923 : vec3<f32> = txVec42;
            let x_2925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2923.xy, x_2923.z);
            u_xlat88 = x_2925;
            let x_2926 : f32 = u_xlat85;
            let x_2927 : f32 = u_xlat88;
            let x_2929 : f32 = u_xlat87;
            u_xlat59 = ((x_2926 * x_2927) + x_2929);
          } else {
            let x_2932 : vec4<f32> = u_xlat11;
            let x_2935 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.y) * vec2<f32>(x_2935.z, x_2935.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2939 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2938.x, x_2938.y, x_2939.z, x_2939.w);
            let x_2941 : vec4<f32> = u_xlat12;
            let x_2943 : vec2<f32> = floor(vec2<f32>(x_2941.x, x_2941.y));
            let x_2944 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2949 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2946.x, x_2946.y) * vec2<f32>(x_2949.z, x_2949.w)) + -(vec2<f32>(x_2952.x, x_2952.y)));
            let x_2956 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2956.x, x_2956.x, x_2956.y, x_2956.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2959 : vec4<f32> = u_xlat13;
            let x_2961 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2959.x, x_2959.x, x_2959.z, x_2959.z) * vec4<f32>(x_2961.x, x_2961.x, x_2961.z, x_2961.z));
            let x_2964 : vec4<f32> = u_xlat14;
            let x_2966 : vec2<f32> = (vec2<f32>(x_2964.y, x_2964.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2967 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2967.x, x_2966.x, x_2967.z, x_2966.y);
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2972 : vec2<f32> = u_xlat64;
            let x_2974 : vec2<f32> = ((vec2<f32>(x_2969.x, x_2969.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2972));
            let x_2975 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2974.x, x_2975.y, x_2974.y, x_2975.w);
            let x_2977 : vec2<f32> = u_xlat64;
            let x_2979 : vec2<f32> = (-(x_2977) + vec2<f32>(1.0f, 1.0f));
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2982 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2982, vec2<f32>(0.0f, 0.0f));
            let x_2984 : vec2<f32> = u_xlat66;
            let x_2986 : vec2<f32> = u_xlat66;
            let x_2988 : vec4<f32> = u_xlat14;
            let x_2990 : vec2<f32> = ((-(x_2984) * x_2986) + vec2<f32>(x_2988.x, x_2988.y));
            let x_2991 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
            let x_2993 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2993, vec2<f32>(0.0f, 0.0f));
            let x_2996 : vec2<f32> = u_xlat66;
            let x_2998 : vec2<f32> = u_xlat66;
            let x_3000 : vec4<f32> = u_xlat13;
            let x_3002 : vec2<f32> = ((-(x_2996) * x_2998) + vec2<f32>(x_3000.y, x_3000.w));
            let x_3003 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3002.x, x_3003.y, x_3002.y);
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3007 : vec2<f32> = (vec2<f32>(x_3005.x, x_3005.y) + vec2<f32>(2.0f, 2.0f));
            let x_3008 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3007.x, x_3007.y, x_3008.z, x_3008.w);
            let x_3010 : vec3<f32> = u_xlat39;
            let x_3012 : vec2<f32> = (vec2<f32>(x_3010.x, x_3010.z) + vec2<f32>(2.0f, 2.0f));
            let x_3013 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3013.x, x_3012.x, x_3013.z, x_3012.y);
            let x_3016 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3016 * 0.08163200318813323975f);
            let x_3019 : vec4<f32> = u_xlat13;
            let x_3021 : vec3<f32> = (vec3<f32>(x_3019.z, x_3019.x, x_3019.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3022 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3021.x, x_3021.y, x_3021.z, x_3022.w);
            let x_3024 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = (vec2<f32>(x_3024.x, x_3024.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3027 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3026.x, x_3026.y, x_3027.z, x_3027.w);
            let x_3030 : f32 = u_xlat17.y;
            u_xlat16.x = x_3030;
            let x_3032 : vec2<f32> = u_xlat64;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3036 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3036.x, x_3035.x, x_3036.z, x_3035.y);
            let x_3038 : vec2<f32> = u_xlat64;
            let x_3041 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3041.x, x_3042.y, x_3041.y, x_3042.w);
            let x_3045 : f32 = u_xlat13.x;
            u_xlat14.y = x_3045;
            let x_3048 : f32 = u_xlat15.y;
            u_xlat14.w = x_3048;
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3051 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3050 + x_3051);
            let x_3053 : vec2<f32> = u_xlat64;
            let x_3056 : vec2<f32> = ((vec2<f32>(x_3053.y, x_3053.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3057 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3057.x, x_3056.x, x_3057.z, x_3056.y);
            let x_3059 : vec2<f32> = u_xlat64;
            let x_3062 : vec2<f32> = ((vec2<f32>(x_3059.y, x_3059.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3063 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3062.x, x_3063.y, x_3062.y, x_3063.w);
            let x_3066 : f32 = u_xlat13.y;
            u_xlat15.y = x_3066;
            let x_3068 : vec4<f32> = u_xlat15;
            let x_3069 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3068 + x_3069);
            let x_3071 : vec4<f32> = u_xlat14;
            let x_3072 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3071 / x_3072);
            let x_3074 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3074 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3076 : vec4<f32> = u_xlat15;
            let x_3077 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3076 / x_3077);
            let x_3079 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3079 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3084 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3081.w, x_3081.x, x_3081.y, x_3081.z) * vec4<f32>(x_3084.x, x_3084.x, x_3084.x, x_3084.x));
            let x_3087 : vec4<f32> = u_xlat15;
            let x_3090 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3087.x, x_3087.w, x_3087.y, x_3087.z) * vec4<f32>(x_3090.y, x_3090.y, x_3090.y, x_3090.y));
            let x_3093 : vec4<f32> = u_xlat14;
            let x_3094 : vec3<f32> = vec3<f32>(x_3093.y, x_3093.z, x_3093.w);
            let x_3095 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3094.x, x_3095.y, x_3094.y, x_3094.z);
            let x_3098 : f32 = u_xlat15.x;
            u_xlat17.y = x_3098;
            let x_3100 : vec4<f32> = u_xlat12;
            let x_3103 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y) * vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y)) + vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3106.y));
            let x_3109 : vec4<f32> = u_xlat12;
            let x_3112 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3109.x, x_3109.y) * vec2<f32>(x_3112.x, x_3112.y)) + vec2<f32>(x_3115.w, x_3115.y));
            let x_3119 : f32 = u_xlat17.y;
            u_xlat14.y = x_3119;
            let x_3122 : f32 = u_xlat15.z;
            u_xlat17.y = x_3122;
            let x_3124 : vec4<f32> = u_xlat12;
            let x_3127 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y) * vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y)) + vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3130.y));
            let x_3133 : vec4<f32> = u_xlat12;
            let x_3136 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat17;
            let x_3141 : vec2<f32> = ((vec2<f32>(x_3133.x, x_3133.y) * vec2<f32>(x_3136.x, x_3136.y)) + vec2<f32>(x_3139.w, x_3139.y));
            let x_3142 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3141.x, x_3141.y, x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat17.y;
            u_xlat14.z = x_3145;
            let x_3148 : vec4<f32> = u_xlat12;
            let x_3151 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3148.x, x_3148.y, x_3148.x, x_3148.y) * vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y)) + vec4<f32>(x_3154.x, x_3154.y, x_3154.x, x_3154.z));
            let x_3158 : f32 = u_xlat15.w;
            u_xlat17.y = x_3158;
            let x_3161 : vec4<f32> = u_xlat12;
            let x_3164 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3167 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3161.x, x_3161.y, x_3161.x, x_3161.y) * vec4<f32>(x_3164.x, x_3164.y, x_3164.x, x_3164.y)) + vec4<f32>(x_3167.x, x_3167.y, x_3167.z, x_3167.y));
            let x_3171 : vec4<f32> = u_xlat12;
            let x_3174 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3177 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3171.x, x_3171.y) * vec2<f32>(x_3174.x, x_3174.y)) + vec2<f32>(x_3177.w, x_3177.y));
            let x_3181 : f32 = u_xlat17.y;
            u_xlat14.w = x_3181;
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3190 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3184.x, x_3184.y) * vec2<f32>(x_3187.x, x_3187.y)) + vec2<f32>(x_3190.x, x_3190.w));
            let x_3193 : vec4<f32> = u_xlat17;
            let x_3194 : vec3<f32> = vec3<f32>(x_3193.x, x_3193.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3194.x, x_3195.y, x_3194.y, x_3194.z);
            let x_3197 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3203 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3197.x, x_3197.y, x_3197.x, x_3197.y) * vec4<f32>(x_3200.x, x_3200.y, x_3200.x, x_3200.y)) + vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3203.y));
            let x_3207 : vec4<f32> = u_xlat12;
            let x_3210 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3213 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3207.x, x_3207.y) * vec2<f32>(x_3210.x, x_3210.y)) + vec2<f32>(x_3213.w, x_3213.y));
            let x_3217 : f32 = u_xlat14.x;
            u_xlat15.x = x_3217;
            let x_3219 : vec4<f32> = u_xlat12;
            let x_3222 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat15;
            let x_3227 : vec2<f32> = ((vec2<f32>(x_3219.x, x_3219.y) * vec2<f32>(x_3222.x, x_3222.y)) + vec2<f32>(x_3225.x, x_3225.y));
            let x_3228 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3227.x, x_3227.y, x_3228.z, x_3228.w);
            let x_3231 : vec4<f32> = u_xlat13;
            let x_3233 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3231.x, x_3231.x, x_3231.x, x_3231.x) * x_3233);
            let x_3236 : vec4<f32> = u_xlat13;
            let x_3238 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3236.y, x_3236.y, x_3236.y, x_3236.y) * x_3238);
            let x_3241 : vec4<f32> = u_xlat13;
            let x_3243 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3241.z, x_3241.z, x_3241.z, x_3241.z) * x_3243);
            let x_3245 : vec4<f32> = u_xlat13;
            let x_3247 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3245.w, x_3245.w, x_3245.w, x_3245.w) * x_3247);
            let x_3250 : vec4<f32> = u_xlat18;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.x, x_3250.y);
            let x_3253 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec43;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat85 = x_3262;
            let x_3264 : vec4<f32> = u_xlat18;
            let x_3265 : vec2<f32> = vec2<f32>(x_3264.z, x_3264.w);
            let x_3267 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec44;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat87 = x_3276;
            let x_3277 : f32 = u_xlat87;
            let x_3279 : f32 = u_xlat23.y;
            u_xlat87 = (x_3277 * x_3279);
            let x_3282 : f32 = u_xlat23.x;
            let x_3283 : f32 = u_xlat85;
            let x_3285 : f32 = u_xlat87;
            u_xlat85 = ((x_3282 * x_3283) + x_3285);
            let x_3288 : vec2<f32> = u_xlat64;
            let x_3290 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec45;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat87 = x_3299;
            let x_3301 : f32 = u_xlat23.z;
            let x_3302 : f32 = u_xlat87;
            let x_3304 : f32 = u_xlat85;
            u_xlat85 = ((x_3301 * x_3302) + x_3304);
            let x_3307 : vec4<f32> = u_xlat21;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.x, x_3307.y);
            let x_3310 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec46;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat87 = x_3319;
            let x_3321 : f32 = u_xlat23.w;
            let x_3322 : f32 = u_xlat87;
            let x_3324 : f32 = u_xlat85;
            u_xlat85 = ((x_3321 * x_3322) + x_3324);
            let x_3327 : vec4<f32> = u_xlat19;
            let x_3328 : vec2<f32> = vec2<f32>(x_3327.x, x_3327.y);
            let x_3330 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec47;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat87 = x_3339;
            let x_3341 : f32 = u_xlat24.x;
            let x_3342 : f32 = u_xlat87;
            let x_3344 : f32 = u_xlat85;
            u_xlat85 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec4<f32> = u_xlat19;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.z, x_3347.w);
            let x_3350 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec48;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat87 = x_3359;
            let x_3361 : f32 = u_xlat24.y;
            let x_3362 : f32 = u_xlat87;
            let x_3364 : f32 = u_xlat85;
            u_xlat85 = ((x_3361 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat20;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.x, x_3367.y);
            let x_3370 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec49;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat87 = x_3379;
            let x_3381 : f32 = u_xlat24.z;
            let x_3382 : f32 = u_xlat87;
            let x_3384 : f32 = u_xlat85;
            u_xlat85 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat21;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.z, x_3387.w);
            let x_3390 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec50;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat87 = x_3399;
            let x_3401 : f32 = u_xlat24.w;
            let x_3402 : f32 = u_xlat87;
            let x_3404 : f32 = u_xlat85;
            u_xlat85 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat22;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.x, x_3407.y);
            let x_3410 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec51;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat87 = x_3419;
            let x_3421 : f32 = u_xlat25.x;
            let x_3422 : f32 = u_xlat87;
            let x_3424 : f32 = u_xlat85;
            u_xlat85 = ((x_3421 * x_3422) + x_3424);
            let x_3427 : vec4<f32> = u_xlat22;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.z, x_3427.w);
            let x_3430 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec52;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat87 = x_3439;
            let x_3441 : f32 = u_xlat25.y;
            let x_3442 : f32 = u_xlat87;
            let x_3444 : f32 = u_xlat85;
            u_xlat85 = ((x_3441 * x_3442) + x_3444);
            let x_3447 : vec2<f32> = u_xlat40;
            let x_3449 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec53;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat87 = x_3458;
            let x_3460 : f32 = u_xlat25.z;
            let x_3461 : f32 = u_xlat87;
            let x_3463 : f32 = u_xlat85;
            u_xlat85 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec2<f32> = u_xlat72;
            let x_3468 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec54;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat87 = x_3477;
            let x_3479 : f32 = u_xlat25.w;
            let x_3480 : f32 = u_xlat87;
            let x_3482 : f32 = u_xlat85;
            u_xlat85 = ((x_3479 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat17;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec55;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat87 = x_3497;
            let x_3499 : f32 = u_xlat13.x;
            let x_3500 : f32 = u_xlat87;
            let x_3502 : f32 = u_xlat85;
            u_xlat85 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec4<f32> = u_xlat17;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.z, x_3505.w);
            let x_3508 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec56;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat87 = x_3517;
            let x_3519 : f32 = u_xlat13.y;
            let x_3520 : f32 = u_xlat87;
            let x_3522 : f32 = u_xlat85;
            u_xlat85 = ((x_3519 * x_3520) + x_3522);
            let x_3525 : vec2<f32> = u_xlat67;
            let x_3527 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec57;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat87 = x_3536;
            let x_3538 : f32 = u_xlat13.z;
            let x_3539 : f32 = u_xlat87;
            let x_3541 : f32 = u_xlat85;
            u_xlat85 = ((x_3538 * x_3539) + x_3541);
            let x_3544 : vec4<f32> = u_xlat12;
            let x_3545 : vec2<f32> = vec2<f32>(x_3544.x, x_3544.y);
            let x_3547 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec58;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat87 = x_3556;
            let x_3558 : f32 = u_xlat13.w;
            let x_3559 : f32 = u_xlat87;
            let x_3561 : f32 = u_xlat85;
            u_xlat59 = ((x_3558 * x_3559) + x_3561);
          }
        }
      } else {
        let x_3565 : vec4<f32> = u_xlat11;
        let x_3566 : vec2<f32> = vec2<f32>(x_3565.x, x_3565.y);
        let x_3568 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3566.x, x_3566.y, x_3568);
        let x_3575 : vec3<f32> = txVec59;
        let x_3577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3575.xy, x_3575.z);
        u_xlat59 = x_3577;
      }
      let x_3578 : i32 = u_xlati82;
      let x_3580 : f32 = x_407.x_AdditionalShadowParams[x_3578].x;
      u_xlat85 = (1.0f + -(x_3580));
      let x_3583 : f32 = u_xlat59;
      let x_3584 : i32 = u_xlati82;
      let x_3586 : f32 = x_407.x_AdditionalShadowParams[x_3584].x;
      let x_3588 : f32 = u_xlat85;
      u_xlat59 = ((x_3583 * x_3586) + x_3588);
      let x_3591 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3591);
      let x_3595 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3595 >= 1.0f);
      let x_3597 : bool = u_xlatb85;
      let x_3598 : bool = u_xlatb87;
      u_xlatb85 = (x_3597 | x_3598);
      let x_3600 : bool = u_xlatb85;
      let x_3601 : f32 = u_xlat59;
      u_xlat59 = select(x_3601, 1.0f, x_3600);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3604 : f32 = u_xlat59;
    u_xlat85 = (-(x_3604) + 1.0f);
    let x_3608 : f32 = u_xlat1.x;
    let x_3609 : f32 = u_xlat85;
    let x_3611 : f32 = u_xlat59;
    u_xlat59 = ((x_3608 * x_3609) + x_3611);
    let x_3614 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3614 & 31i)));
    let x_3618 : i32 = u_xlati85;
    let x_3621 : f32 = x_1729.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3618) & bitcast<u32>(x_3621)));
    let x_3625 : i32 = u_xlati85;
    if ((x_3625 != 0i)) {
      let x_3629 : i32 = u_xlati82;
      let x_3631 : f32 = x_1729.x_AdditionalLightsLightTypes[x_3629].el;
      u_xlati85 = i32(x_3631);
      let x_3634 : i32 = u_xlati85;
      u_xlati87 = select(1i, 0i, (x_3634 != 0i));
      let x_3638 : i32 = u_xlati82;
      u_xlati88 = (x_3638 << bitcast<u32>(2i));
      let x_3640 : i32 = u_xlati87;
      if ((x_3640 != 0i)) {
        let x_3644 : vec3<f32> = vs_TEXCOORD1;
        let x_3646 : i32 = u_xlati88;
        let x_3649 : i32 = u_xlati88;
        let x_3653 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3646 + 1i) / 4i)][((x_3649 + 1i) % 4i)];
        let x_3655 : vec3<f32> = (vec3<f32>(x_3644.y, x_3644.y, x_3644.y) * vec3<f32>(x_3653.x, x_3653.y, x_3653.w));
        let x_3656 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3655.x, x_3655.y, x_3655.z, x_3656.w);
        let x_3658 : i32 = u_xlati88;
        let x_3660 : i32 = u_xlati88;
        let x_3663 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[(x_3658 / 4i)][(x_3660 % 4i)];
        let x_3665 : vec3<f32> = vs_TEXCOORD1;
        let x_3668 : vec4<f32> = u_xlat11;
        let x_3670 : vec3<f32> = ((vec3<f32>(x_3663.x, x_3663.y, x_3663.w) * vec3<f32>(x_3665.x, x_3665.x, x_3665.x)) + vec3<f32>(x_3668.x, x_3668.y, x_3668.z));
        let x_3671 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3670.x, x_3670.y, x_3670.z, x_3671.w);
        let x_3673 : i32 = u_xlati88;
        let x_3676 : i32 = u_xlati88;
        let x_3680 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3673 + 2i) / 4i)][((x_3676 + 2i) % 4i)];
        let x_3682 : vec3<f32> = vs_TEXCOORD1;
        let x_3685 : vec4<f32> = u_xlat11;
        let x_3687 : vec3<f32> = ((vec3<f32>(x_3680.x, x_3680.y, x_3680.w) * vec3<f32>(x_3682.z, x_3682.z, x_3682.z)) + vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
        let x_3688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3688.w);
        let x_3690 : vec4<f32> = u_xlat11;
        let x_3692 : i32 = u_xlati88;
        let x_3695 : i32 = u_xlati88;
        let x_3699 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3692 + 3i) / 4i)][((x_3695 + 3i) % 4i)];
        let x_3701 : vec3<f32> = (vec3<f32>(x_3690.x, x_3690.y, x_3690.z) + vec3<f32>(x_3699.x, x_3699.y, x_3699.w));
        let x_3702 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3701.x, x_3701.y, x_3701.z, x_3702.w);
        let x_3704 : vec4<f32> = u_xlat11;
        let x_3706 : vec4<f32> = u_xlat11;
        let x_3708 : vec2<f32> = (vec2<f32>(x_3704.x, x_3704.y) / vec2<f32>(x_3706.z, x_3706.z));
        let x_3709 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3708.x, x_3708.y, x_3709.z, x_3709.w);
        let x_3711 : vec4<f32> = u_xlat11;
        let x_3714 : vec2<f32> = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3715 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3714.x, x_3714.y, x_3715.z, x_3715.w);
        let x_3717 : vec4<f32> = u_xlat11;
        let x_3721 : vec2<f32> = clamp(vec2<f32>(x_3717.x, x_3717.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3721.x, x_3721.y, x_3722.z, x_3722.w);
        let x_3724 : i32 = u_xlati82;
        let x_3726 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3724];
        let x_3728 : vec4<f32> = u_xlat11;
        let x_3731 : i32 = u_xlati82;
        let x_3733 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3731];
        let x_3735 : vec2<f32> = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(x_3728.x, x_3728.y)) + vec2<f32>(x_3733.z, x_3733.w));
        let x_3736 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3735.x, x_3735.y, x_3736.z, x_3736.w);
      } else {
        let x_3739 : i32 = u_xlati85;
        u_xlatb85 = (x_3739 == 1i);
        let x_3741 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3741);
        let x_3743 : i32 = u_xlati85;
        if ((x_3743 != 0i)) {
          let x_3748 : vec3<f32> = vs_TEXCOORD1;
          let x_3750 : i32 = u_xlati88;
          let x_3753 : i32 = u_xlati88;
          let x_3757 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3750 + 1i) / 4i)][((x_3753 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_3748.y, x_3748.y) * vec2<f32>(x_3757.x, x_3757.y));
          let x_3760 : i32 = u_xlati88;
          let x_3762 : i32 = u_xlati88;
          let x_3765 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[(x_3760 / 4i)][(x_3762 % 4i)];
          let x_3767 : vec3<f32> = vs_TEXCOORD1;
          let x_3770 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3765.x, x_3765.y) * vec2<f32>(x_3767.x, x_3767.x)) + x_3770);
          let x_3772 : i32 = u_xlati88;
          let x_3775 : i32 = u_xlati88;
          let x_3779 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3772 + 2i) / 4i)][((x_3775 + 2i) % 4i)];
          let x_3781 : vec3<f32> = vs_TEXCOORD1;
          let x_3784 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3779.x, x_3779.y) * vec2<f32>(x_3781.z, x_3781.z)) + x_3784);
          let x_3786 : vec2<f32> = u_xlat63;
          let x_3787 : i32 = u_xlati88;
          let x_3790 : i32 = u_xlati88;
          let x_3794 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3787 + 3i) / 4i)][((x_3790 + 3i) % 4i)];
          u_xlat63 = (x_3786 + vec2<f32>(x_3794.x, x_3794.y));
          let x_3797 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3797 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3800 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_3800);
          let x_3802 : i32 = u_xlati82;
          let x_3804 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3802];
          let x_3806 : vec2<f32> = u_xlat63;
          let x_3808 : i32 = u_xlati82;
          let x_3810 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3808];
          let x_3812 : vec2<f32> = ((vec2<f32>(x_3804.x, x_3804.y) * x_3806) + vec2<f32>(x_3810.z, x_3810.w));
          let x_3813 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3812.x, x_3812.y, x_3813.z, x_3813.w);
        } else {
          let x_3816 : vec3<f32> = vs_TEXCOORD1;
          let x_3818 : i32 = u_xlati88;
          let x_3821 : i32 = u_xlati88;
          let x_3825 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3818 + 1i) / 4i)][((x_3821 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3816.y, x_3816.y, x_3816.y, x_3816.y) * x_3825);
          let x_3827 : i32 = u_xlati88;
          let x_3829 : i32 = u_xlati88;
          let x_3832 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[(x_3827 / 4i)][(x_3829 % 4i)];
          let x_3833 : vec3<f32> = vs_TEXCOORD1;
          let x_3836 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3832 * vec4<f32>(x_3833.x, x_3833.x, x_3833.x, x_3833.x)) + x_3836);
          let x_3838 : i32 = u_xlati88;
          let x_3841 : i32 = u_xlati88;
          let x_3845 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3838 + 2i) / 4i)][((x_3841 + 2i) % 4i)];
          let x_3846 : vec3<f32> = vs_TEXCOORD1;
          let x_3849 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3845 * vec4<f32>(x_3846.z, x_3846.z, x_3846.z, x_3846.z)) + x_3849);
          let x_3851 : vec4<f32> = u_xlat12;
          let x_3852 : i32 = u_xlati88;
          let x_3855 : i32 = u_xlati88;
          let x_3859 : vec4<f32> = x_1729.x_AdditionalLightsWorldToLights[((x_3852 + 3i) / 4i)][((x_3855 + 3i) % 4i)];
          u_xlat12 = (x_3851 + x_3859);
          let x_3861 : vec4<f32> = u_xlat12;
          let x_3863 : vec4<f32> = u_xlat12;
          let x_3865 : vec3<f32> = (vec3<f32>(x_3861.x, x_3861.y, x_3861.z) / vec3<f32>(x_3863.w, x_3863.w, x_3863.w));
          let x_3866 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3865.x, x_3865.y, x_3865.z, x_3866.w);
          let x_3868 : vec4<f32> = u_xlat12;
          let x_3870 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_3868.x, x_3868.y, x_3868.z), vec3<f32>(x_3870.x, x_3870.y, x_3870.z));
          let x_3873 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_3873);
          let x_3875 : f32 = u_xlat85;
          let x_3877 : vec4<f32> = u_xlat12;
          let x_3879 : vec3<f32> = (vec3<f32>(x_3875, x_3875, x_3875) * vec3<f32>(x_3877.x, x_3877.y, x_3877.z));
          let x_3880 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3879.x, x_3879.y, x_3879.z, x_3880.w);
          let x_3882 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_3882.x, x_3882.y, x_3882.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3887 : f32 = u_xlat85;
          u_xlat85 = max(x_3887, 0.00000099999999747524f);
          let x_3890 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_3890);
          let x_3892 : f32 = u_xlat85;
          let x_3894 : vec4<f32> = u_xlat12;
          let x_3896 : vec3<f32> = (vec3<f32>(x_3892, x_3892, x_3892) * vec3<f32>(x_3894.z, x_3894.x, x_3894.y));
          let x_3897 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3896.x, x_3896.y, x_3896.z, x_3897.w);
          let x_3900 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3900);
          let x_3904 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3904, 0.0f, 1.0f);
          let x_3908 : vec4<f32> = u_xlat13;
          let x_3910 : vec4<bool> = (vec4<f32>(x_3908.y, x_3908.z, x_3908.y, x_3908.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_3910.x, x_3910.y);
          let x_3913 : bool = u_xlatb63.x;
          if (x_3913) {
            let x_3918 : f32 = u_xlat13.x;
            x_3914 = x_3918;
          } else {
            let x_3921 : f32 = u_xlat13.x;
            x_3914 = -(x_3921);
          }
          let x_3923 : f32 = x_3914;
          u_xlat63.x = x_3923;
          let x_3926 : bool = u_xlatb63.y;
          if (x_3926) {
            let x_3931 : f32 = u_xlat13.x;
            x_3927 = x_3931;
          } else {
            let x_3934 : f32 = u_xlat13.x;
            x_3927 = -(x_3934);
          }
          let x_3936 : f32 = x_3927;
          u_xlat63.y = x_3936;
          let x_3938 : vec4<f32> = u_xlat12;
          let x_3940 : f32 = u_xlat85;
          let x_3943 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3938.x, x_3938.y) * vec2<f32>(x_3940, x_3940)) + x_3943);
          let x_3945 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3945 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3948 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_3948, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3952 : i32 = u_xlati82;
          let x_3954 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3952];
          let x_3956 : vec2<f32> = u_xlat63;
          let x_3958 : i32 = u_xlati82;
          let x_3960 : vec4<f32> = x_1729.x_AdditionalLightsCookieAtlasUVRects[x_3958];
          let x_3962 : vec2<f32> = ((vec2<f32>(x_3954.x, x_3954.y) * x_3956) + vec2<f32>(x_3960.z, x_3960.w));
          let x_3963 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3962.x, x_3962.y, x_3963.z, x_3963.w);
        }
      }
      let x_3970 : vec4<f32> = u_xlat11;
      let x_3972 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3970.x, x_3970.y), 0.0f);
      u_xlat11 = x_3972;
      let x_3974 : bool = u_xlatb7.y;
      if (x_3974) {
        let x_3979 : f32 = u_xlat11.w;
        x_3975 = x_3979;
      } else {
        let x_3982 : f32 = u_xlat11.x;
        x_3975 = x_3982;
      }
      let x_3983 : f32 = x_3975;
      u_xlat85 = x_3983;
      let x_3985 : bool = u_xlatb7.x;
      if (x_3985) {
        let x_3989 : vec4<f32> = u_xlat11;
        x_3986 = vec3<f32>(x_3989.x, x_3989.y, x_3989.z);
      } else {
        let x_3992 : f32 = u_xlat85;
        x_3986 = vec3<f32>(x_3992, x_3992, x_3992);
      }
      let x_3994 : vec3<f32> = x_3986;
      let x_3995 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3994.x, x_3994.y, x_3994.z, x_3995.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4001 : vec4<f32> = u_xlat11;
    let x_4003 : i32 = u_xlati82;
    let x_4005 : vec4<f32> = x_2191.x_AdditionalLightsColor[x_4003];
    let x_4007 : vec3<f32> = (vec3<f32>(x_4001.x, x_4001.y, x_4001.z) * vec3<f32>(x_4005.x, x_4005.y, x_4005.z));
    let x_4008 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4007.x, x_4007.y, x_4007.z, x_4008.w);
    let x_4010 : f32 = u_xlat83;
    let x_4011 : f32 = u_xlat59;
    u_xlat82 = (x_4010 * x_4011);
    let x_4013 : vec3<f32> = u_xlat29;
    let x_4014 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_4013, vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
    let x_4017 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4017, 0.0f, 1.0f);
    let x_4019 : f32 = u_xlat82;
    let x_4020 : f32 = u_xlat83;
    u_xlat82 = (x_4019 * x_4020);
    let x_4022 : f32 = u_xlat82;
    let x_4024 : vec4<f32> = u_xlat11;
    let x_4026 : vec3<f32> = (vec3<f32>(x_4022, x_4022, x_4022) * vec3<f32>(x_4024.x, x_4024.y, x_4024.z));
    let x_4027 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4026.x, x_4026.y, x_4026.z, x_4027.w);
    let x_4029 : vec4<f32> = u_xlat9;
    let x_4031 : f32 = u_xlat84;
    let x_4034 : vec3<f32> = u_xlat5;
    let x_4035 : vec3<f32> = ((vec3<f32>(x_4029.x, x_4029.y, x_4029.z) * vec3<f32>(x_4031, x_4031, x_4031)) + x_4034);
    let x_4036 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4035.x, x_4035.y, x_4035.z, x_4036.w);
    let x_4038 : vec4<f32> = u_xlat9;
    let x_4040 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4038.x, x_4038.y, x_4038.z), vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
    let x_4043 : f32 = u_xlat82;
    u_xlat82 = max(x_4043, 1.17549435e-38f);
    let x_4045 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4045);
    let x_4047 : f32 = u_xlat82;
    let x_4049 : vec4<f32> = u_xlat9;
    let x_4051 : vec3<f32> = (vec3<f32>(x_4047, x_4047, x_4047) * vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);
    let x_4054 : vec3<f32> = u_xlat29;
    let x_4055 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_4054, vec3<f32>(x_4055.x, x_4055.y, x_4055.z));
    let x_4058 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4058, 0.0f, 1.0f);
    let x_4060 : vec4<f32> = u_xlat10;
    let x_4062 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4060.x, x_4060.y, x_4060.z), vec3<f32>(x_4062.x, x_4062.y, x_4062.z));
    let x_4065 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4065, 0.0f, 1.0f);
    let x_4067 : f32 = u_xlat82;
    let x_4068 : f32 = u_xlat82;
    u_xlat82 = (x_4067 * x_4068);
    let x_4070 : f32 = u_xlat82;
    let x_4072 : f32 = u_xlat8.x;
    u_xlat82 = ((x_4070 * x_4072) + 1.00001001358032226562f);
    let x_4075 : f32 = u_xlat83;
    let x_4076 : f32 = u_xlat83;
    u_xlat83 = (x_4075 * x_4076);
    let x_4078 : f32 = u_xlat82;
    let x_4079 : f32 = u_xlat82;
    u_xlat82 = (x_4078 * x_4079);
    let x_4081 : f32 = u_xlat83;
    u_xlat83 = max(x_4081, 0.10000000149011611938f);
    let x_4083 : f32 = u_xlat82;
    let x_4084 : f32 = u_xlat83;
    u_xlat82 = (x_4083 * x_4084);
    let x_4086 : f32 = u_xlat79;
    let x_4087 : f32 = u_xlat82;
    u_xlat82 = (x_4086 * x_4087);
    let x_4089 : f32 = u_xlat27;
    let x_4090 : f32 = u_xlat82;
    u_xlat82 = (x_4089 / x_4090);
    let x_4092 : vec4<f32> = u_xlat0;
    let x_4094 : f32 = u_xlat82;
    let x_4097 : vec3<f32> = u_xlat28;
    let x_4098 : vec3<f32> = ((vec3<f32>(x_4092.x, x_4092.y, x_4092.z) * vec3<f32>(x_4094, x_4094, x_4094)) + x_4097);
    let x_4099 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4098.x, x_4098.y, x_4098.z, x_4099.w);
    let x_4101 : vec4<f32> = u_xlat9;
    let x_4103 : vec4<f32> = u_xlat11;
    let x_4106 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4101.x, x_4101.y, x_4101.z) * vec3<f32>(x_4103.x, x_4103.y, x_4103.z)) + x_4106);

    continuing {
      let x_4108 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4108 + bitcast<u32>(1i));
    }
  }
  let x_4110 : vec4<f32> = u_xlat4;
  let x_4112 : vec3<f32> = u_xlat3;
  let x_4115 : vec4<f32> = u_xlat6;
  let x_4117 : vec3<f32> = ((vec3<f32>(x_4110.x, x_4110.y, x_4110.z) * vec3<f32>(x_4112.x, x_4112.x, x_4112.x)) + vec3<f32>(x_4115.x, x_4115.y, x_4115.z));
  let x_4118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4117.x, x_4117.y, x_4117.z, x_4118.w);
  let x_4122 : vec3<f32> = u_xlat34;
  let x_4123 : vec4<f32> = u_xlat0;
  let x_4125 : vec3<f32> = (x_4122 + vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
  let x_4126 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
  let x_4130 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_4130 == 1.0f);
  let x_4132 : bool = u_xlatb0;
  if (x_4132) {
    let x_4137 : f32 = u_xlat2.x;
    x_4133 = x_4137;
  } else {
    x_4133 = 1.0f;
  }
  let x_4139 : f32 = x_4133;
  SV_Target0.w = x_4139;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


