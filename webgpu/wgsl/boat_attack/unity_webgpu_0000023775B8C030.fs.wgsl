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

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_434 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1756 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2216 : AdditionalLights;

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

@group(0) @binding(14) var sampler_LinearClamp : sampler;

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
  var x_1842 : f32;
  var x_1853 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2354 : f32;
  var x_2363 : f32;
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
  var x_3939 : f32;
  var x_3952 : f32;
  var x_4000 : f32;
  var x_4011 : vec3<f32>;
  var x_4159 : f32;
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
  let x_262 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  u_xlat4.w = 1.0f;
  let x_273 : vec4<f32> = x_270.unity_SHAr;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_273, x_274);
  let x_279 : vec4<f32> = x_270.unity_SHAg;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_279, x_280);
  let x_285 : vec4<f32> = x_270.unity_SHAb;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_285, x_286);
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_298 : vec4<f32> = x_270.unity_SHBr;
  let x_299 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_298, x_299);
  let x_304 : vec4<f32> = x_270.unity_SHBg;
  let x_305 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_304, x_305);
  let x_310 : vec4<f32> = x_270.unity_SHBb;
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_310, x_311);
  let x_315 : f32 = u_xlat4.y;
  let x_317 : f32 = u_xlat4.y;
  u_xlat78 = (x_315 * x_317);
  let x_320 : f32 = u_xlat4.x;
  let x_322 : f32 = u_xlat4.x;
  let x_324 : f32 = u_xlat78;
  u_xlat78 = ((x_320 * x_322) + -(x_324));
  let x_329 : vec4<f32> = x_270.unity_SHC;
  let x_331 : f32 = u_xlat78;
  let x_334 : vec4<f32> = u_xlat8;
  u_xlat29 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec3<f32> = u_xlat29;
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat29 = (x_337 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_341, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_345 : f32 = u_xlat1.x;
  u_xlat78 = ((-(x_345) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_351 : f32 = u_xlat1.y;
  let x_353 : f32 = x_54.x_Smoothness;
  let x_355 : f32 = u_xlat78;
  u_xlat53.x = ((x_351 * x_353) + -(x_355));
  let x_360 : f32 = u_xlat78;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.y, x_362.z, x_362.w));
  let x_365 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_54.x_BaseColor;
  let x_373 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_368.x, x_368.y, x_368.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec2<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : f32 = u_xlat1.y;
  let x_390 : f32 = x_54.x_Smoothness;
  u_xlat78 = ((-(x_387) * x_390) + 1.0f);
  let x_393 : f32 = u_xlat78;
  let x_394 : f32 = u_xlat78;
  u_xlat1.x = (x_393 * x_394);
  let x_398 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_398, 0.0078125f);
  let x_404 : f32 = u_xlat1.x;
  let x_406 : f32 = u_xlat1.x;
  u_xlat27 = (x_404 * x_406);
  let x_409 : f32 = u_xlat53.x;
  u_xlat53.x = (x_409 + 1.0f);
  let x_413 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_413, 0.0f, 1.0f);
  let x_418 : f32 = u_xlat1.x;
  u_xlat79 = ((x_418 * 4.0f) + 2.0f);
  let x_423 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_423, 1.0f);
  let x_436 : f32 = x_434.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_436);
  let x_438 : bool = u_xlatb82;
  if (x_438) {
    let x_442 : f32 = x_434.x_MainLightShadowParams.y;
    u_xlatb82 = (x_442 == 1.0f);
    let x_444 : bool = u_xlatb82;
    if (x_444) {
      let x_448 : vec4<f32> = vs_TEXCOORD6;
      let x_451 : vec4<f32> = x_434.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_448.x, x_448.y, x_448.x, x_448.y) + x_451);
      let x_455 : vec4<f32> = u_xlat6;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_459 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_456.x, x_456.y, x_459);
      let x_471 : vec3<f32> = txVec0;
      let x_473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_471.xy, x_471.z);
      u_xlat7.x = x_473;
      let x_476 : vec4<f32> = u_xlat6;
      let x_477 : vec2<f32> = vec2<f32>(x_476.z, x_476.w);
      let x_479 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_477.x, x_477.y, x_479);
      let x_486 : vec3<f32> = txVec1;
      let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_486.xy, x_486.z);
      u_xlat7.y = x_488;
      let x_490 : vec4<f32> = vs_TEXCOORD6;
      let x_494 : vec4<f32> = x_434.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_490.x, x_490.y, x_490.x, x_490.y) + x_494);
      let x_497 : vec4<f32> = u_xlat6;
      let x_498 : vec2<f32> = vec2<f32>(x_497.x, x_497.y);
      let x_500 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_498.x, x_498.y, x_500);
      let x_507 : vec3<f32> = txVec2;
      let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_507.xy, x_507.z);
      u_xlat7.z = x_509;
      let x_512 : vec4<f32> = u_xlat6;
      let x_513 : vec2<f32> = vec2<f32>(x_512.z, x_512.w);
      let x_515 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_522 : vec3<f32> = txVec3;
      let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_522.xy, x_522.z);
      u_xlat7.w = x_524;
      let x_527 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_527, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_534 : f32 = x_434.x_MainLightShadowParams.y;
      u_xlatb83 = (x_534 == 2.0f);
      let x_536 : bool = u_xlatb83;
      if (x_536) {
        let x_539 : vec4<f32> = vs_TEXCOORD6;
        let x_543 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_548 : vec2<f32> = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_543.z, x_543.w)) + vec2<f32>(0.5f, 0.5f));
        let x_549 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec2<f32> = floor(vec2<f32>(x_551.x, x_551.y));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : vec4<f32> = vs_TEXCOORD6;
        let x_560 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_563 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(x_560.z, x_560.w)) + -(vec2<f32>(x_563.x, x_563.y)));
        let x_567 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_567.x, x_567.x, x_567.y, x_567.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_571.x, x_571.x, x_571.z, x_571.z) * vec4<f32>(x_573.x, x_573.x, x_573.z, x_573.z));
        let x_576 : vec4<f32> = u_xlat8;
        let x_580 : vec2<f32> = (vec2<f32>(x_576.y, x_576.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_581.y, x_580.y, x_581.w);
        let x_583 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = u_xlat58;
        let x_588 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.z) * vec2<f32>(0.5f, 0.5f)) + -(x_586));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_592) + vec2<f32>(1.0f, 1.0f));
        let x_597 : vec2<f32> = u_xlat58;
        let x_599 : vec2<f32> = min(x_597, vec2<f32>(0.0f, 0.0f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec4<f32> = u_xlat9;
        let x_605 : vec4<f32> = u_xlat9;
        let x_608 : vec2<f32> = u_xlat60;
        let x_609 : vec2<f32> = ((-(vec2<f32>(x_602.x, x_602.y)) * vec2<f32>(x_605.x, x_605.y)) + x_608);
        let x_610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_612, vec2<f32>(0.0f, 0.0f));
        let x_614 : vec2<f32> = u_xlat58;
        let x_616 : vec2<f32> = u_xlat58;
        let x_618 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_614) * x_616) + vec2<f32>(x_618.y, x_618.w));
        let x_621 : vec4<f32> = u_xlat9;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_626 + vec2<f32>(1.0f, 1.0f));
        let x_629 : vec4<f32> = u_xlat8;
        let x_633 : vec2<f32> = (vec2<f32>(x_629.x, x_629.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_634 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat60;
        let x_637 : vec2<f32> = (x_636 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat9;
        let x_642 : vec2<f32> = (vec2<f32>(x_640.x, x_640.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_646 : vec2<f32> = u_xlat58;
        let x_647 : vec2<f32> = (x_646 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_650.y, x_650.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_654 : f32 = u_xlat9.x;
        u_xlat10.z = x_654;
        let x_657 : f32 = u_xlat58.x;
        u_xlat10.w = x_657;
        let x_660 : f32 = u_xlat11.x;
        u_xlat8.z = x_660;
        let x_663 : f32 = u_xlat7.x;
        u_xlat8.w = x_663;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_666.z, x_666.w, x_666.x, x_666.z) + vec4<f32>(x_668.z, x_668.w, x_668.x, x_668.z));
        let x_672 : f32 = u_xlat10.y;
        u_xlat9.z = x_672;
        let x_675 : f32 = u_xlat58.y;
        u_xlat9.w = x_675;
        let x_678 : f32 = u_xlat8.y;
        u_xlat11.z = x_678;
        let x_681 : f32 = u_xlat7.z;
        u_xlat11.w = x_681;
        let x_683 : vec4<f32> = u_xlat9;
        let x_685 : vec4<f32> = u_xlat11;
        let x_687 : vec3<f32> = (vec3<f32>(x_683.z, x_683.y, x_683.w) + vec3<f32>(x_685.z, x_685.y, x_685.w));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec4<f32> = u_xlat12;
        let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.z, x_690.w) / vec3<f32>(x_692.z, x_692.w, x_692.y));
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat8;
        let x_703 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat11;
        let x_708 : vec4<f32> = u_xlat7;
        let x_710 : vec3<f32> = (vec3<f32>(x_706.z, x_706.y, x_706.w) / vec3<f32>(x_708.x, x_708.y, x_708.z));
        let x_711 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
        let x_713 : vec4<f32> = u_xlat9;
        let x_715 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat8;
        let x_721 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_723 : vec3<f32> = (vec3<f32>(x_718.y, x_718.x, x_718.z) * vec3<f32>(x_721.x, x_721.x, x_721.x));
        let x_724 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_729.y, x_729.y, x_729.y));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_735 : f32 = u_xlat9.x;
        u_xlat8.w = x_735;
        let x_737 : vec4<f32> = u_xlat6;
        let x_740 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_743 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y) * vec4<f32>(x_740.x, x_740.y, x_740.x, x_740.y)) + vec4<f32>(x_743.y, x_743.w, x_743.x, x_743.w));
        let x_746 : vec4<f32> = u_xlat6;
        let x_749 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_752.z, x_752.w));
        let x_756 : f32 = u_xlat8.y;
        u_xlat9.w = x_756;
        let x_758 : vec4<f32> = u_xlat9;
        let x_759 : vec2<f32> = vec2<f32>(x_758.y, x_758.z);
        let x_760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_759.x, x_760.z, x_759.y);
        let x_762 : vec4<f32> = u_xlat6;
        let x_765 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_768 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) * vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y)) + vec4<f32>(x_768.x, x_768.y, x_768.z, x_768.y));
        let x_771 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) * vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y)) + vec4<f32>(x_777.w, x_777.y, x_777.w, x_777.z));
        let x_780 : vec4<f32> = u_xlat6;
        let x_783 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y) * vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y)) + vec4<f32>(x_786.x, x_786.w, x_786.z, x_786.w));
        let x_790 : vec4<f32> = u_xlat7;
        let x_792 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_790.x, x_790.x, x_790.x, x_790.y) * vec4<f32>(x_792.z, x_792.w, x_792.y, x_792.z));
        let x_796 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_796.y, x_796.y, x_796.z, x_796.z) * x_798);
        let x_802 : f32 = u_xlat7.z;
        let x_804 : f32 = u_xlat12.y;
        u_xlat83 = (x_802 * x_804);
        let x_807 : vec4<f32> = u_xlat10;
        let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec4;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat6.x = x_819;
        let x_822 : vec4<f32> = u_xlat10;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_833 : vec3<f32> = txVec5;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat32 = x_835;
        let x_836 : f32 = u_xlat32;
        let x_838 : f32 = u_xlat13.y;
        u_xlat32 = (x_836 * x_838);
        let x_841 : f32 = u_xlat13.x;
        let x_843 : f32 = u_xlat6.x;
        let x_845 : f32 = u_xlat32;
        u_xlat6.x = ((x_841 * x_843) + x_845);
        let x_849 : vec2<f32> = u_xlat58;
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec6;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat32 = x_860;
        let x_862 : f32 = u_xlat13.z;
        let x_863 : f32 = u_xlat32;
        let x_866 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_862 * x_863) + x_866);
        let x_870 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec7;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
        u_xlat32 = x_882;
        let x_884 : f32 = u_xlat13.w;
        let x_885 : f32 = u_xlat32;
        let x_888 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_884 * x_885) + x_888);
        let x_892 : vec4<f32> = u_xlat11;
        let x_893 : vec2<f32> = vec2<f32>(x_892.x, x_892.y);
        let x_895 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_893.x, x_893.y, x_895);
        let x_902 : vec3<f32> = txVec8;
        let x_904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_902.xy, x_902.z);
        u_xlat32 = x_904;
        let x_906 : f32 = u_xlat14.x;
        let x_907 : f32 = u_xlat32;
        let x_910 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_906 * x_907) + x_910);
        let x_914 : vec4<f32> = u_xlat11;
        let x_915 : vec2<f32> = vec2<f32>(x_914.z, x_914.w);
        let x_917 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_915.x, x_915.y, x_917);
        let x_924 : vec3<f32> = txVec9;
        let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_924.xy, x_924.z);
        u_xlat32 = x_926;
        let x_928 : f32 = u_xlat14.y;
        let x_929 : f32 = u_xlat32;
        let x_932 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_928 * x_929) + x_932);
        let x_936 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = vec2<f32>(x_936.z, x_936.w);
        let x_939 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_946 : vec3<f32> = txVec10;
        let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_946.xy, x_946.z);
        u_xlat32 = x_948;
        let x_950 : f32 = u_xlat14.z;
        let x_951 : f32 = u_xlat32;
        let x_954 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_950 * x_951) + x_954);
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
        let x_961 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec11;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
        u_xlat32 = x_970;
        let x_972 : f32 = u_xlat14.w;
        let x_973 : f32 = u_xlat32;
        let x_976 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_972 * x_973) + x_976);
        let x_980 : vec4<f32> = u_xlat8;
        let x_981 : vec2<f32> = vec2<f32>(x_980.z, x_980.w);
        let x_983 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec12;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat32 = x_992;
        let x_993 : f32 = u_xlat83;
        let x_994 : f32 = u_xlat32;
        let x_997 : f32 = u_xlat6.x;
        u_xlat82 = ((x_993 * x_994) + x_997);
      } else {
        let x_1000 : vec4<f32> = vs_TEXCOORD6;
        let x_1003 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = vs_TEXCOORD6;
        let x_1017 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec2<f32> = u_xlat58;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat58;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat60;
        let x_1056 : vec2<f32> = u_xlat60;
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat60;
        let x_1068 : vec2<f32> = u_xlat60;
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.y, x_1070.w));
        let x_1073 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1072.x, x_1073.y, x_1072.y);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec3<f32> = u_xlat33;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.z) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1086 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1086 * 0.08163200318813323975f);
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1090.z, x_1090.x, x_1090.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1094 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat11.y;
        u_xlat10.x = x_1103;
        let x_1105 : vec2<f32> = u_xlat58;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec2<f32> = u_xlat58;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat7.x;
        u_xlat8.y = x_1123;
        let x_1126 : f32 = u_xlat9.y;
        u_xlat8.w = x_1126;
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1128 + x_1129);
        let x_1131 : vec2<f32> = u_xlat58;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.y, x_1131.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1137 : vec2<f32> = u_xlat58;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1137.y, x_1137.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1144 : f32 = u_xlat7.y;
        u_xlat9.y = x_1144;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1147 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1146 + x_1147);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1149 / x_1150);
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1152 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1166 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1163.w, x_1163.x, x_1163.y, x_1163.z) * vec4<f32>(x_1166.x, x_1166.x, x_1166.x, x_1166.x));
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1172 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1169.x, x_1169.w, x_1169.y, x_1169.z) * vec4<f32>(x_1172.y, x_1172.y, x_1172.y, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec3<f32> = vec3<f32>(x_1175.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1176.z);
        let x_1180 : f32 = u_xlat9.x;
        u_xlat11.y = x_1180;
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1185 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat11.y;
        u_xlat8.y = x_1201;
        let x_1204 : f32 = u_xlat9.z;
        u_xlat11.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1209 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : f32 = u_xlat11.y;
        u_xlat8.z = x_1227;
        let x_1230 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.z));
        let x_1240 : f32 = u_xlat9.w;
        u_xlat11.y = x_1240;
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1262 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1261.x, x_1261.y, x_1262.z);
        let x_1265 : f32 = u_xlat11.y;
        u_xlat8.w = x_1265;
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.x, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec3<f32> = vec3<f32>(x_1277.x, x_1277.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1287.y));
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1301 : f32 = u_xlat8.x;
        u_xlat9.x = x_1301;
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x) * x_1317);
        let x_1320 : vec4<f32> = u_xlat7;
        let x_1322 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.y) * x_1322);
        let x_1325 : vec4<f32> = u_xlat7;
        let x_1327 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1325.z, x_1325.z, x_1325.z, x_1325.z) * x_1327);
        let x_1329 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1329.w, x_1329.w, x_1329.w, x_1329.w) * x_1331);
        let x_1334 : vec4<f32> = u_xlat12;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec13;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat83 = x_1346;
        let x_1348 : vec4<f32> = u_xlat12;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.z, x_1348.w);
        let x_1351 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec14;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat8.x = x_1360;
        let x_1363 : f32 = u_xlat8.x;
        let x_1365 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1363 * x_1365);
        let x_1369 : f32 = u_xlat17.x;
        let x_1370 : f32 = u_xlat83;
        let x_1373 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1369 * x_1370) + x_1373);
        let x_1376 : vec2<f32> = u_xlat58;
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec15;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat58.x = x_1387;
        let x_1390 : f32 = u_xlat17.z;
        let x_1392 : f32 = u_xlat58.x;
        let x_1394 : f32 = u_xlat83;
        u_xlat83 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat15;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec16;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat58.x = x_1409;
        let x_1412 : f32 = u_xlat17.w;
        let x_1414 : f32 = u_xlat58.x;
        let x_1416 : f32 = u_xlat83;
        u_xlat83 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat13;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec17;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat58.x = x_1431;
        let x_1434 : f32 = u_xlat18.x;
        let x_1436 : f32 = u_xlat58.x;
        let x_1438 : f32 = u_xlat83;
        u_xlat83 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat13;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec18;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat58.x = x_1453;
        let x_1456 : f32 = u_xlat18.y;
        let x_1458 : f32 = u_xlat58.x;
        let x_1460 : f32 = u_xlat83;
        u_xlat83 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat14;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec19;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat58.x = x_1475;
        let x_1478 : f32 = u_xlat18.z;
        let x_1480 : f32 = u_xlat58.x;
        let x_1482 : f32 = u_xlat83;
        u_xlat83 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec20;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat58.x = x_1497;
        let x_1500 : f32 = u_xlat18.w;
        let x_1502 : f32 = u_xlat58.x;
        let x_1504 : f32 = u_xlat83;
        u_xlat83 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat16;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec21;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat58.x = x_1519;
        let x_1522 : f32 = u_xlat19.x;
        let x_1524 : f32 = u_xlat58.x;
        let x_1526 : f32 = u_xlat83;
        u_xlat83 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat16;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.z, x_1529.w);
        let x_1532 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec22;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat58.x = x_1541;
        let x_1544 : f32 = u_xlat19.y;
        let x_1546 : f32 = u_xlat58.x;
        let x_1548 : f32 = u_xlat83;
        u_xlat83 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec3<f32> = u_xlat34;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec23;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat58.x = x_1563;
        let x_1566 : f32 = u_xlat19.z;
        let x_1568 : f32 = u_xlat58.x;
        let x_1570 : f32 = u_xlat83;
        u_xlat83 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec2<f32> = u_xlat66;
        let x_1575 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec24;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat58.x = x_1584;
        let x_1587 : f32 = u_xlat19.w;
        let x_1589 : f32 = u_xlat58.x;
        let x_1591 : f32 = u_xlat83;
        u_xlat83 = ((x_1587 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat11;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec25;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat58.x = x_1606;
        let x_1609 : f32 = u_xlat7.x;
        let x_1611 : f32 = u_xlat58.x;
        let x_1613 : f32 = u_xlat83;
        u_xlat83 = ((x_1609 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec26;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat58.x = x_1628;
        let x_1631 : f32 = u_xlat7.y;
        let x_1633 : f32 = u_xlat58.x;
        let x_1635 : f32 = u_xlat83;
        u_xlat83 = ((x_1631 * x_1633) + x_1635);
        let x_1638 : vec2<f32> = u_xlat61;
        let x_1640 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec27;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1647.xy, x_1647.z);
        u_xlat58.x = x_1649;
        let x_1652 : f32 = u_xlat7.z;
        let x_1654 : f32 = u_xlat58.x;
        let x_1656 : f32 = u_xlat83;
        u_xlat83 = ((x_1652 * x_1654) + x_1656);
        let x_1659 : vec4<f32> = u_xlat6;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec28;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat6.x = x_1671;
        let x_1674 : f32 = u_xlat7.w;
        let x_1676 : f32 = u_xlat6.x;
        let x_1678 : f32 = u_xlat83;
        u_xlat82 = ((x_1674 * x_1676) + x_1678);
      }
    }
  } else {
    let x_1682 : vec4<f32> = vs_TEXCOORD6;
    let x_1683 : vec2<f32> = vec2<f32>(x_1682.x, x_1682.y);
    let x_1685 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
    let x_1692 : vec3<f32> = txVec29;
    let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
    u_xlat82 = x_1694;
  }
  let x_1696 : f32 = x_434.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1696) + 1.0f);
  let x_1699 : f32 = u_xlat82;
  let x_1701 : f32 = x_434.x_MainLightShadowParams.x;
  let x_1703 : f32 = u_xlat83;
  u_xlat82 = ((x_1699 * x_1701) + x_1703);
  let x_1706 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1706);
  let x_1710 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1710 >= 1.0f);
  let x_1712 : bool = u_xlatb83;
  let x_1713 : bool = u_xlatb6;
  u_xlatb83 = (x_1712 | x_1713);
  let x_1715 : bool = u_xlatb83;
  let x_1716 : f32 = u_xlat82;
  u_xlat82 = select(x_1716, 1.0f, x_1715);
  let x_1718 : vec3<f32> = vs_TEXCOORD1;
  let x_1720 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1722 : vec3<f32> = (x_1718 + -(x_1720));
  let x_1723 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec4<f32> = u_xlat6;
  let x_1727 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1725.x, x_1725.y, x_1725.z), vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : f32 = u_xlat83;
  let x_1732 : f32 = x_434.x_MainLightShadowParams.z;
  let x_1735 : f32 = x_434.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1730 * x_1732) + x_1735);
  let x_1739 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1739, 0.0f, 1.0f);
  let x_1742 : f32 = u_xlat82;
  u_xlat32 = (-(x_1742) + 1.0f);
  let x_1746 : f32 = u_xlat6.x;
  let x_1747 : f32 = u_xlat32;
  let x_1749 : f32 = u_xlat82;
  u_xlat82 = ((x_1746 * x_1747) + x_1749);
  let x_1758 : f32 = x_1756.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1758 == -1.0f));
  let x_1760 : bool = u_xlatb6;
  if (x_1760) {
    let x_1763 : vec3<f32> = vs_TEXCOORD1;
    let x_1766 : vec4<f32> = x_1756.x_MainLightWorldToLight[1i];
    let x_1768 : vec2<f32> = (vec2<f32>(x_1763.y, x_1763.y) * vec2<f32>(x_1766.x, x_1766.y));
    let x_1769 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1769.z, x_1769.w);
    let x_1772 : vec4<f32> = x_1756.x_MainLightWorldToLight[0i];
    let x_1774 : vec3<f32> = vs_TEXCOORD1;
    let x_1777 : vec4<f32> = u_xlat6;
    let x_1779 : vec2<f32> = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1774.x, x_1774.x)) + vec2<f32>(x_1777.x, x_1777.y));
    let x_1780 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
    let x_1783 : vec4<f32> = x_1756.x_MainLightWorldToLight[2i];
    let x_1785 : vec3<f32> = vs_TEXCOORD1;
    let x_1788 : vec4<f32> = u_xlat6;
    let x_1790 : vec2<f32> = ((vec2<f32>(x_1783.x, x_1783.y) * vec2<f32>(x_1785.z, x_1785.z)) + vec2<f32>(x_1788.x, x_1788.y));
    let x_1791 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1791.z, x_1791.w);
    let x_1793 : vec4<f32> = u_xlat6;
    let x_1797 : vec4<f32> = x_1756.x_MainLightWorldToLight[3i];
    let x_1799 : vec2<f32> = (vec2<f32>(x_1793.x, x_1793.y) + vec2<f32>(x_1797.x, x_1797.y));
    let x_1800 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1799.x, x_1799.y, x_1800.z, x_1800.w);
    let x_1802 : vec4<f32> = u_xlat6;
    let x_1805 : vec2<f32> = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1806 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
    let x_1813 : vec4<f32> = u_xlat6;
    let x_1816 : f32 = x_28.x_GlobalMipBias.x;
    let x_1817 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1813.x, x_1813.y), x_1816);
    u_xlat6 = x_1817;
    let x_1822 : f32 = x_1756.x_MainLightCookieTextureFormat;
    let x_1824 : f32 = x_1756.x_MainLightCookieTextureFormat;
    let x_1826 : f32 = x_1756.x_MainLightCookieTextureFormat;
    let x_1828 : f32 = x_1756.x_MainLightCookieTextureFormat;
    let x_1829 : vec4<f32> = vec4<f32>(x_1822, x_1824, x_1826, x_1828);
    let x_1837 : vec4<bool> = (vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1829.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1837.x, x_1837.y);
    let x_1841 : bool = u_xlatb7.y;
    if (x_1841) {
      let x_1846 : f32 = u_xlat6.w;
      x_1842 = x_1846;
    } else {
      let x_1849 : f32 = u_xlat6.x;
      x_1842 = x_1849;
    }
    let x_1850 : f32 = x_1842;
    u_xlat84 = x_1850;
    let x_1852 : bool = u_xlatb7.x;
    if (x_1852) {
      let x_1856 : vec4<f32> = u_xlat6;
      x_1853 = vec3<f32>(x_1856.x, x_1856.y, x_1856.z);
    } else {
      let x_1859 : f32 = u_xlat84;
      x_1853 = vec3<f32>(x_1859, x_1859, x_1859);
    }
    let x_1861 : vec3<f32> = x_1853;
    let x_1862 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1868 : vec4<f32> = u_xlat6;
  let x_1871 : vec4<f32> = x_28.x_MainLightColor;
  let x_1873 : vec3<f32> = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
  let x_1874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
  let x_1876 : vec3<f32> = u_xlat5;
  let x_1878 : vec4<f32> = u_xlat4;
  u_xlat84 = dot(-(x_1876), vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : f32 = u_xlat84;
  let x_1882 : f32 = u_xlat84;
  u_xlat84 = (x_1881 + x_1882);
  let x_1884 : vec4<f32> = u_xlat4;
  let x_1886 : f32 = u_xlat84;
  let x_1890 : vec3<f32> = u_xlat5;
  let x_1892 : vec3<f32> = ((vec3<f32>(x_1884.x, x_1884.y, x_1884.z) * -(vec3<f32>(x_1886, x_1886, x_1886))) + -(x_1890));
  let x_1893 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : vec4<f32> = u_xlat4;
  let x_1897 : vec3<f32> = u_xlat5;
  u_xlat84 = dot(vec3<f32>(x_1895.x, x_1895.y, x_1895.z), x_1897);
  let x_1899 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1899, 0.0f, 1.0f);
  let x_1901 : f32 = u_xlat84;
  u_xlat84 = (-(x_1901) + 1.0f);
  let x_1904 : f32 = u_xlat84;
  let x_1905 : f32 = u_xlat84;
  u_xlat84 = (x_1904 * x_1905);
  let x_1907 : f32 = u_xlat84;
  let x_1908 : f32 = u_xlat84;
  u_xlat84 = (x_1907 * x_1908);
  let x_1911 : f32 = u_xlat78;
  u_xlat85 = ((-(x_1911) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1917 : f32 = u_xlat78;
  let x_1918 : f32 = u_xlat85;
  u_xlat78 = (x_1917 * x_1918);
  let x_1920 : f32 = u_xlat78;
  u_xlat78 = (x_1920 * 6.0f);
  let x_1931 : vec4<f32> = u_xlat7;
  let x_1933 : f32 = u_xlat78;
  let x_1934 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1931.x, x_1931.y, x_1931.z), x_1933);
  u_xlat7 = x_1934;
  let x_1936 : f32 = u_xlat7.w;
  u_xlat78 = (x_1936 + -1.0f);
  let x_1939 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_1940 : f32 = u_xlat78;
  u_xlat78 = ((x_1939 * x_1940) + 1.0f);
  let x_1943 : f32 = u_xlat78;
  u_xlat78 = max(x_1943, 0.0f);
  let x_1945 : f32 = u_xlat78;
  u_xlat78 = log2(x_1945);
  let x_1947 : f32 = u_xlat78;
  let x_1949 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_1947 * x_1949);
  let x_1951 : f32 = u_xlat78;
  u_xlat78 = exp2(x_1951);
  let x_1953 : f32 = u_xlat78;
  let x_1955 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_1953 * x_1955);
  let x_1957 : vec4<f32> = u_xlat7;
  let x_1959 : f32 = u_xlat78;
  let x_1961 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1959, x_1959, x_1959));
  let x_1962 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1964 : vec2<f32> = u_xlat1;
  let x_1966 : vec2<f32> = u_xlat1;
  let x_1970 : vec2<f32> = ((vec2<f32>(x_1964.x, x_1964.x) * vec2<f32>(x_1966.x, x_1966.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1970.x, x_1970.y, x_1971.z, x_1971.w);
  let x_1974 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_1974);
  let x_1976 : vec4<f32> = u_xlat0;
  let x_1979 : vec2<f32> = u_xlat53;
  u_xlat34 = (-(vec3<f32>(x_1976.x, x_1976.y, x_1976.z)) + vec3<f32>(x_1979.x, x_1979.x, x_1979.x));
  let x_1982 : f32 = u_xlat84;
  let x_1984 : vec3<f32> = u_xlat34;
  let x_1986 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1982, x_1982, x_1982) * x_1984) + vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : f32 = u_xlat78;
  let x_1991 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1989, x_1989, x_1989) * x_1991);
  let x_1993 : vec4<f32> = u_xlat7;
  let x_1995 : vec3<f32> = u_xlat34;
  let x_1996 : vec3<f32> = (vec3<f32>(x_1993.x, x_1993.y, x_1993.z) * x_1995);
  let x_1997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_1999 : vec3<f32> = u_xlat29;
  let x_2000 : vec3<f32> = u_xlat28;
  let x_2002 : vec4<f32> = u_xlat7;
  u_xlat29 = ((x_1999 * x_2000) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : f32 = u_xlat82;
  let x_2007 : f32 = x_270.unity_LightData.z;
  u_xlat78 = (x_2005 * x_2007);
  let x_2009 : vec4<f32> = u_xlat4;
  let x_2012 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2009.x, x_2009.y, x_2009.z), vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2017 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2017, 0.0f, 1.0f);
  let x_2020 : f32 = u_xlat78;
  let x_2022 : f32 = u_xlat1.x;
  u_xlat78 = (x_2020 * x_2022);
  let x_2024 : f32 = u_xlat78;
  let x_2026 : vec4<f32> = u_xlat6;
  let x_2028 : vec3<f32> = (vec3<f32>(x_2024, x_2024, x_2024) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2031 : vec3<f32> = u_xlat5;
  let x_2033 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2035 : vec3<f32> = (x_2031 + vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
  let x_2036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : vec4<f32> = u_xlat7;
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2038.x, x_2038.y, x_2038.z), vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2043 : f32 = u_xlat78;
  u_xlat78 = max(x_2043, 1.17549435e-38f);
  let x_2046 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2046);
  let x_2048 : f32 = u_xlat78;
  let x_2050 : vec4<f32> = u_xlat7;
  let x_2052 : vec3<f32> = (vec3<f32>(x_2048, x_2048, x_2048) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
  let x_2055 : vec4<f32> = u_xlat4;
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2055.x, x_2055.y, x_2055.z), vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2060, 0.0f, 1.0f);
  let x_2063 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2065 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2063.x, x_2063.y, x_2063.z), vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2070 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2070, 0.0f, 1.0f);
  let x_2073 : f32 = u_xlat78;
  let x_2074 : f32 = u_xlat78;
  u_xlat78 = (x_2073 * x_2074);
  let x_2076 : f32 = u_xlat78;
  let x_2078 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2076 * x_2078) + 1.00001001358032226562f);
  let x_2083 : f32 = u_xlat1.x;
  let x_2085 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2083 * x_2085);
  let x_2088 : f32 = u_xlat78;
  let x_2089 : f32 = u_xlat78;
  u_xlat78 = (x_2088 * x_2089);
  let x_2092 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2092, 0.10000000149011611938f);
  let x_2096 : f32 = u_xlat78;
  let x_2098 : f32 = u_xlat1.x;
  u_xlat78 = (x_2096 * x_2098);
  let x_2100 : f32 = u_xlat79;
  let x_2101 : f32 = u_xlat78;
  u_xlat78 = (x_2100 * x_2101);
  let x_2103 : f32 = u_xlat27;
  let x_2104 : f32 = u_xlat78;
  u_xlat78 = (x_2103 / x_2104);
  let x_2106 : vec4<f32> = u_xlat0;
  let x_2108 : f32 = u_xlat78;
  let x_2111 : vec3<f32> = u_xlat28;
  let x_2112 : vec3<f32> = ((vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108, x_2108, x_2108)) + x_2111);
  let x_2113 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
  let x_2115 : vec4<f32> = u_xlat6;
  let x_2117 : vec4<f32> = u_xlat7;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115.x, x_2115.y, x_2115.z) * vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2123 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2125 : f32 = x_270.unity_LightData.y;
  u_xlat78 = min(x_2123, x_2125);
  let x_2129 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2129));
  let x_2132 : f32 = u_xlat83;
  let x_2135 : f32 = x_434.x_AdditionalShadowFadeParams.x;
  let x_2138 : f32 = x_434.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2132 * x_2135) + x_2138);
  let x_2142 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2142, 0.0f, 1.0f);
  let x_2146 : f32 = x_1756.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2148 : f32 = x_1756.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2150 : f32 = x_1756.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2152 : f32 = x_1756.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2153 : vec4<f32> = vec4<f32>(x_2146, x_2148, x_2150, x_2152);
  let x_2159 : vec4<bool> = (vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2153.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2159.x, x_2159.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2171 : u32 = u_xlatu_loop_1;
    let x_2172 : u32 = u_xlatu78;
    if ((x_2171 < x_2172)) {
    } else {
      break;
    }
    let x_2175 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2175 >> 2u);
    let x_2179 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2179 & 3u));
    let x_2182 : u32 = u_xlatu82;
    let x_2185 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_2182)];
    let x_2195 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2200 : vec4<u32> = indexable[x_2195];
    u_xlat82 = dot(x_2185, bitcast<vec4<f32>>(x_2200));
    let x_2204 : f32 = u_xlat82;
    u_xlati82 = i32(x_2204);
    let x_2206 : vec3<f32> = vs_TEXCOORD1;
    let x_2217 : i32 = u_xlati82;
    let x_2219 : vec4<f32> = x_2216.x_AdditionalLightsPosition[x_2217];
    let x_2222 : i32 = u_xlati82;
    let x_2224 : vec4<f32> = x_2216.x_AdditionalLightsPosition[x_2222];
    let x_2226 : vec3<f32> = ((-(x_2206) * vec3<f32>(x_2219.w, x_2219.w, x_2219.w)) + vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
    let x_2227 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
    let x_2229 : vec4<f32> = u_xlat9;
    let x_2231 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2229.x, x_2229.y, x_2229.z), vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
    let x_2234 : f32 = u_xlat83;
    u_xlat83 = max(x_2234, 0.00006103515625f);
    let x_2237 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2237);
    let x_2239 : f32 = u_xlat84;
    let x_2241 : vec4<f32> = u_xlat9;
    let x_2243 : vec3<f32> = (vec3<f32>(x_2239, x_2239, x_2239) * vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
    let x_2244 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
    let x_2247 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2247);
    let x_2249 : f32 = u_xlat83;
    let x_2250 : i32 = u_xlati82;
    let x_2252 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2250].x;
    u_xlat83 = (x_2249 * x_2252);
    let x_2254 : f32 = u_xlat83;
    let x_2256 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2254) * x_2256) + 1.0f);
    let x_2259 : f32 = u_xlat83;
    u_xlat83 = max(x_2259, 0.0f);
    let x_2261 : f32 = u_xlat83;
    let x_2262 : f32 = u_xlat83;
    u_xlat83 = (x_2261 * x_2262);
    let x_2264 : f32 = u_xlat83;
    let x_2265 : f32 = u_xlat59;
    u_xlat83 = (x_2264 * x_2265);
    let x_2267 : i32 = u_xlati82;
    let x_2269 : vec4<f32> = x_2216.x_AdditionalLightsSpotDir[x_2267];
    let x_2271 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2269.x, x_2269.y, x_2269.z), vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
    let x_2274 : f32 = u_xlat59;
    let x_2275 : i32 = u_xlati82;
    let x_2277 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2275].z;
    let x_2279 : i32 = u_xlati82;
    let x_2281 : f32 = x_2216.x_AdditionalLightsAttenuation[x_2279].w;
    u_xlat59 = ((x_2274 * x_2277) + x_2281);
    let x_2283 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2283, 0.0f, 1.0f);
    let x_2285 : f32 = u_xlat59;
    let x_2286 : f32 = u_xlat59;
    u_xlat59 = (x_2285 * x_2286);
    let x_2288 : f32 = u_xlat83;
    let x_2289 : f32 = u_xlat59;
    u_xlat83 = (x_2288 * x_2289);
    let x_2293 : i32 = u_xlati82;
    let x_2295 : f32 = x_434.x_AdditionalShadowParams[x_2293].w;
    u_xlati59 = i32(x_2295);
    let x_2298 : i32 = u_xlati59;
    u_xlatb85 = (x_2298 >= 0i);
    let x_2300 : bool = u_xlatb85;
    if (x_2300) {
      let x_2304 : i32 = u_xlati82;
      let x_2306 : f32 = x_434.x_AdditionalShadowParams[x_2304].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2306, x_2306, x_2306, x_2306))));
      let x_2310 : bool = u_xlatb85;
      if (x_2310) {
        let x_2315 : vec4<f32> = u_xlat10;
        let x_2318 : vec4<f32> = u_xlat10;
        let x_2321 : vec4<bool> = (abs(vec4<f32>(x_2315.z, x_2315.z, x_2315.y, x_2315.z)) >= abs(vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.x)));
        let x_2323 : vec3<bool> = vec3<bool>(x_2321.x, x_2321.y, x_2321.z);
        let x_2324 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
        let x_2327 : bool = u_xlatb11.y;
        let x_2329 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2327 & x_2329);
        let x_2331 : vec4<f32> = u_xlat10;
        let x_2334 : vec4<bool> = (-(vec4<f32>(x_2331.z, x_2331.y, x_2331.z, x_2331.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2335 : vec3<bool> = vec3<bool>(x_2334.x, x_2334.y, x_2334.w);
        let x_2336 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2335.x, x_2335.y, x_2336.z, x_2335.z);
        let x_2339 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2339);
        let x_2344 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2344);
        let x_2350 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2350);
        let x_2353 : bool = u_xlatb11.z;
        if (x_2353) {
          let x_2358 : f32 = u_xlat11.y;
          x_2354 = x_2358;
        } else {
          let x_2360 : f32 = u_xlat87;
          x_2354 = x_2360;
        }
        let x_2361 : f32 = x_2354;
        u_xlat87 = x_2361;
        let x_2362 : bool = u_xlatb85;
        if (x_2362) {
          let x_2367 : f32 = u_xlat11.x;
          x_2363 = x_2367;
        } else {
          let x_2369 : f32 = u_xlat87;
          x_2363 = x_2369;
        }
        let x_2370 : f32 = x_2363;
        u_xlat85 = x_2370;
        let x_2371 : i32 = u_xlati82;
        let x_2373 : f32 = x_434.x_AdditionalShadowParams[x_2371].w;
        u_xlat87 = trunc(x_2373);
        let x_2375 : f32 = u_xlat85;
        let x_2376 : f32 = u_xlat87;
        u_xlat85 = (x_2375 + x_2376);
        let x_2378 : f32 = u_xlat85;
        u_xlati59 = i32(x_2378);
      }
      let x_2380 : i32 = u_xlati59;
      u_xlati59 = (x_2380 << bitcast<u32>(2i));
      let x_2382 : vec3<f32> = vs_TEXCOORD1;
      let x_2385 : i32 = u_xlati59;
      let x_2388 : i32 = u_xlati59;
      let x_2392 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2385 + 1i) / 4i)][((x_2388 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2382.y, x_2382.y, x_2382.y, x_2382.y) * x_2392);
      let x_2394 : i32 = u_xlati59;
      let x_2396 : i32 = u_xlati59;
      let x_2399 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[(x_2394 / 4i)][(x_2396 % 4i)];
      let x_2400 : vec3<f32> = vs_TEXCOORD1;
      let x_2403 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2399 * vec4<f32>(x_2400.x, x_2400.x, x_2400.x, x_2400.x)) + x_2403);
      let x_2405 : i32 = u_xlati59;
      let x_2408 : i32 = u_xlati59;
      let x_2412 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2405 + 2i) / 4i)][((x_2408 + 2i) % 4i)];
      let x_2413 : vec3<f32> = vs_TEXCOORD1;
      let x_2416 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2412 * vec4<f32>(x_2413.z, x_2413.z, x_2413.z, x_2413.z)) + x_2416);
      let x_2418 : vec4<f32> = u_xlat11;
      let x_2419 : i32 = u_xlati59;
      let x_2422 : i32 = u_xlati59;
      let x_2426 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2419 + 3i) / 4i)][((x_2422 + 3i) % 4i)];
      u_xlat11 = (x_2418 + x_2426);
      let x_2428 : vec4<f32> = u_xlat11;
      let x_2430 : vec4<f32> = u_xlat11;
      let x_2432 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) / vec3<f32>(x_2430.w, x_2430.w, x_2430.w));
      let x_2433 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
      let x_2436 : i32 = u_xlati82;
      let x_2438 : f32 = x_434.x_AdditionalShadowParams[x_2436].y;
      u_xlatb59 = (0.0f < x_2438);
      let x_2440 : bool = u_xlatb59;
      if (x_2440) {
        let x_2443 : i32 = u_xlati82;
        let x_2445 : f32 = x_434.x_AdditionalShadowParams[x_2443].y;
        u_xlatb59 = (1.0f == x_2445);
        let x_2447 : bool = u_xlatb59;
        if (x_2447) {
          let x_2450 : vec4<f32> = u_xlat11;
          let x_2453 : vec4<f32> = x_434.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2450.x, x_2450.y, x_2450.x, x_2450.y) + x_2453);
          let x_2456 : vec4<f32> = u_xlat12;
          let x_2457 : vec2<f32> = vec2<f32>(x_2456.x, x_2456.y);
          let x_2459 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2457.x, x_2457.y, x_2459);
          let x_2467 : vec3<f32> = txVec30;
          let x_2469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
          u_xlat13.x = x_2469;
          let x_2472 : vec4<f32> = u_xlat12;
          let x_2473 : vec2<f32> = vec2<f32>(x_2472.z, x_2472.w);
          let x_2475 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2473.x, x_2473.y, x_2475);
          let x_2482 : vec3<f32> = txVec31;
          let x_2484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2482.xy, x_2482.z);
          u_xlat13.y = x_2484;
          let x_2486 : vec4<f32> = u_xlat11;
          let x_2490 : vec4<f32> = x_434.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2486.x, x_2486.y, x_2486.x, x_2486.y) + x_2490);
          let x_2493 : vec4<f32> = u_xlat12;
          let x_2494 : vec2<f32> = vec2<f32>(x_2493.x, x_2493.y);
          let x_2496 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2494.x, x_2494.y, x_2496);
          let x_2503 : vec3<f32> = txVec32;
          let x_2505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2503.xy, x_2503.z);
          u_xlat13.z = x_2505;
          let x_2508 : vec4<f32> = u_xlat12;
          let x_2509 : vec2<f32> = vec2<f32>(x_2508.z, x_2508.w);
          let x_2511 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2509.x, x_2509.y, x_2511);
          let x_2518 : vec3<f32> = txVec33;
          let x_2520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
          u_xlat13.w = x_2520;
          let x_2522 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2522, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2525 : i32 = u_xlati82;
          let x_2527 : f32 = x_434.x_AdditionalShadowParams[x_2525].y;
          u_xlatb85 = (2.0f == x_2527);
          let x_2529 : bool = u_xlatb85;
          if (x_2529) {
            let x_2532 : vec4<f32> = u_xlat11;
            let x_2536 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2539 : vec2<f32> = ((vec2<f32>(x_2532.x, x_2532.y) * vec2<f32>(x_2536.z, x_2536.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2540 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2539.x, x_2539.y, x_2540.z, x_2540.w);
            let x_2542 : vec4<f32> = u_xlat12;
            let x_2544 : vec2<f32> = floor(vec2<f32>(x_2542.x, x_2542.y));
            let x_2545 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2544.x, x_2544.y, x_2545.z, x_2545.w);
            let x_2548 : vec4<f32> = u_xlat11;
            let x_2551 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2554 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2548.x, x_2548.y) * vec2<f32>(x_2551.z, x_2551.w)) + -(vec2<f32>(x_2554.x, x_2554.y)));
            let x_2558 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2558.x, x_2558.x, x_2558.y, x_2558.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2561 : vec4<f32> = u_xlat13;
            let x_2563 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2561.x, x_2561.x, x_2561.z, x_2561.z) * vec4<f32>(x_2563.x, x_2563.x, x_2563.z, x_2563.z));
            let x_2566 : vec4<f32> = u_xlat14;
            let x_2568 : vec2<f32> = (vec2<f32>(x_2566.y, x_2566.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2569 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2568.x, x_2569.y, x_2568.y, x_2569.w);
            let x_2571 : vec4<f32> = u_xlat14;
            let x_2574 : vec2<f32> = u_xlat64;
            let x_2576 : vec2<f32> = ((vec2<f32>(x_2571.x, x_2571.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2574));
            let x_2577 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2579) + vec2<f32>(1.0f, 1.0f));
            let x_2582 : vec2<f32> = u_xlat64;
            let x_2583 : vec2<f32> = min(x_2582, vec2<f32>(0.0f, 0.0f));
            let x_2584 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec4<f32> = u_xlat15;
            let x_2589 : vec4<f32> = u_xlat15;
            let x_2592 : vec2<f32> = u_xlat66;
            let x_2593 : vec2<f32> = ((-(vec2<f32>(x_2586.x, x_2586.y)) * vec2<f32>(x_2589.x, x_2589.y)) + x_2592);
            let x_2594 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
            let x_2596 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2596, vec2<f32>(0.0f, 0.0f));
            let x_2598 : vec2<f32> = u_xlat64;
            let x_2600 : vec2<f32> = u_xlat64;
            let x_2602 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2598) * x_2600) + vec2<f32>(x_2602.y, x_2602.w));
            let x_2605 : vec4<f32> = u_xlat15;
            let x_2607 : vec2<f32> = (vec2<f32>(x_2605.x, x_2605.y) + vec2<f32>(1.0f, 1.0f));
            let x_2608 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2610 + vec2<f32>(1.0f, 1.0f));
            let x_2612 : vec4<f32> = u_xlat14;
            let x_2614 : vec2<f32> = (vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2615 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
            let x_2617 : vec2<f32> = u_xlat66;
            let x_2618 : vec2<f32> = (x_2617 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2619 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat15;
            let x_2623 : vec2<f32> = (vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2624 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
            let x_2626 : vec2<f32> = u_xlat64;
            let x_2627 : vec2<f32> = (x_2626 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2628 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2630.y, x_2630.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2634 : f32 = u_xlat15.x;
            u_xlat16.z = x_2634;
            let x_2637 : f32 = u_xlat64.x;
            u_xlat16.w = x_2637;
            let x_2640 : f32 = u_xlat17.x;
            u_xlat14.z = x_2640;
            let x_2643 : f32 = u_xlat13.x;
            u_xlat14.w = x_2643;
            let x_2645 : vec4<f32> = u_xlat14;
            let x_2647 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2645.z, x_2645.w, x_2645.x, x_2645.z) + vec4<f32>(x_2647.z, x_2647.w, x_2647.x, x_2647.z));
            let x_2651 : f32 = u_xlat16.y;
            u_xlat15.z = x_2651;
            let x_2654 : f32 = u_xlat64.y;
            u_xlat15.w = x_2654;
            let x_2657 : f32 = u_xlat14.y;
            u_xlat17.z = x_2657;
            let x_2660 : f32 = u_xlat13.z;
            u_xlat17.w = x_2660;
            let x_2662 : vec4<f32> = u_xlat15;
            let x_2664 : vec4<f32> = u_xlat17;
            let x_2666 : vec3<f32> = (vec3<f32>(x_2662.z, x_2662.y, x_2662.w) + vec3<f32>(x_2664.z, x_2664.y, x_2664.w));
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
            let x_2669 : vec4<f32> = u_xlat14;
            let x_2671 : vec4<f32> = u_xlat18;
            let x_2673 : vec3<f32> = (vec3<f32>(x_2669.x, x_2669.z, x_2669.w) / vec3<f32>(x_2671.z, x_2671.w, x_2671.y));
            let x_2674 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
            let x_2676 : vec4<f32> = u_xlat14;
            let x_2678 : vec3<f32> = (vec3<f32>(x_2676.x, x_2676.y, x_2676.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2679 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
            let x_2681 : vec4<f32> = u_xlat17;
            let x_2683 : vec4<f32> = u_xlat13;
            let x_2685 : vec3<f32> = (vec3<f32>(x_2681.z, x_2681.y, x_2681.w) / vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
            let x_2686 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat15;
            let x_2690 : vec3<f32> = (vec3<f32>(x_2688.x, x_2688.y, x_2688.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2691 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat14;
            let x_2696 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2698 : vec3<f32> = (vec3<f32>(x_2693.y, x_2693.x, x_2693.z) * vec3<f32>(x_2696.x, x_2696.x, x_2696.x));
            let x_2699 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
            let x_2701 : vec4<f32> = u_xlat15;
            let x_2704 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2706 : vec3<f32> = (vec3<f32>(x_2701.x, x_2701.y, x_2701.z) * vec3<f32>(x_2704.y, x_2704.y, x_2704.y));
            let x_2707 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
            let x_2710 : f32 = u_xlat15.x;
            u_xlat14.w = x_2710;
            let x_2712 : vec4<f32> = u_xlat12;
            let x_2715 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2712.x, x_2712.y, x_2712.x, x_2712.y) * vec4<f32>(x_2715.x, x_2715.y, x_2715.x, x_2715.y)) + vec4<f32>(x_2718.y, x_2718.w, x_2718.x, x_2718.w));
            let x_2721 : vec4<f32> = u_xlat12;
            let x_2724 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2721.x, x_2721.y) * vec2<f32>(x_2724.x, x_2724.y)) + vec2<f32>(x_2727.z, x_2727.w));
            let x_2731 : f32 = u_xlat14.y;
            u_xlat15.w = x_2731;
            let x_2733 : vec4<f32> = u_xlat15;
            let x_2734 : vec2<f32> = vec2<f32>(x_2733.y, x_2733.z);
            let x_2735 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2735.x, x_2734.x, x_2735.z, x_2734.y);
            let x_2737 : vec4<f32> = u_xlat12;
            let x_2740 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2743 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y) * vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y)) + vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2743.y));
            let x_2746 : vec4<f32> = u_xlat12;
            let x_2749 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2752 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.w, x_2752.y, x_2752.w, x_2752.z));
            let x_2755 : vec4<f32> = u_xlat12;
            let x_2758 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2761 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.y) * vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y)) + vec4<f32>(x_2761.x, x_2761.w, x_2761.z, x_2761.w));
            let x_2764 : vec4<f32> = u_xlat13;
            let x_2766 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2764.x, x_2764.x, x_2764.x, x_2764.y) * vec4<f32>(x_2766.z, x_2766.w, x_2766.y, x_2766.z));
            let x_2770 : vec4<f32> = u_xlat13;
            let x_2772 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2770.y, x_2770.y, x_2770.z, x_2770.z) * x_2772);
            let x_2775 : f32 = u_xlat13.z;
            let x_2777 : f32 = u_xlat18.y;
            u_xlat85 = (x_2775 * x_2777);
            let x_2780 : vec4<f32> = u_xlat16;
            let x_2781 : vec2<f32> = vec2<f32>(x_2780.x, x_2780.y);
            let x_2783 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2781.x, x_2781.y, x_2783);
            let x_2790 : vec3<f32> = txVec34;
            let x_2792 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2790.xy, x_2790.z);
            u_xlat87 = x_2792;
            let x_2794 : vec4<f32> = u_xlat16;
            let x_2795 : vec2<f32> = vec2<f32>(x_2794.z, x_2794.w);
            let x_2797 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
            let x_2805 : vec3<f32> = txVec35;
            let x_2807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2805.xy, x_2805.z);
            u_xlat88 = x_2807;
            let x_2808 : f32 = u_xlat88;
            let x_2810 : f32 = u_xlat19.y;
            u_xlat88 = (x_2808 * x_2810);
            let x_2813 : f32 = u_xlat19.x;
            let x_2814 : f32 = u_xlat87;
            let x_2816 : f32 = u_xlat88;
            u_xlat87 = ((x_2813 * x_2814) + x_2816);
            let x_2819 : vec2<f32> = u_xlat64;
            let x_2821 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
            let x_2828 : vec3<f32> = txVec36;
            let x_2830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2828.xy, x_2828.z);
            u_xlat88 = x_2830;
            let x_2832 : f32 = u_xlat19.z;
            let x_2833 : f32 = u_xlat88;
            let x_2835 : f32 = u_xlat87;
            u_xlat87 = ((x_2832 * x_2833) + x_2835);
            let x_2838 : vec4<f32> = u_xlat15;
            let x_2839 : vec2<f32> = vec2<f32>(x_2838.x, x_2838.y);
            let x_2841 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
            let x_2848 : vec3<f32> = txVec37;
            let x_2850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
            u_xlat88 = x_2850;
            let x_2852 : f32 = u_xlat19.w;
            let x_2853 : f32 = u_xlat88;
            let x_2855 : f32 = u_xlat87;
            u_xlat87 = ((x_2852 * x_2853) + x_2855);
            let x_2858 : vec4<f32> = u_xlat17;
            let x_2859 : vec2<f32> = vec2<f32>(x_2858.x, x_2858.y);
            let x_2861 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec38;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat88 = x_2870;
            let x_2872 : f32 = u_xlat20.x;
            let x_2873 : f32 = u_xlat88;
            let x_2875 : f32 = u_xlat87;
            u_xlat87 = ((x_2872 * x_2873) + x_2875);
            let x_2878 : vec4<f32> = u_xlat17;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.z, x_2878.w);
            let x_2881 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec39;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat88 = x_2890;
            let x_2892 : f32 = u_xlat20.y;
            let x_2893 : f32 = u_xlat88;
            let x_2895 : f32 = u_xlat87;
            u_xlat87 = ((x_2892 * x_2893) + x_2895);
            let x_2898 : vec4<f32> = u_xlat15;
            let x_2899 : vec2<f32> = vec2<f32>(x_2898.z, x_2898.w);
            let x_2901 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
            let x_2908 : vec3<f32> = txVec40;
            let x_2910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
            u_xlat88 = x_2910;
            let x_2912 : f32 = u_xlat20.z;
            let x_2913 : f32 = u_xlat88;
            let x_2915 : f32 = u_xlat87;
            u_xlat87 = ((x_2912 * x_2913) + x_2915);
            let x_2918 : vec4<f32> = u_xlat14;
            let x_2919 : vec2<f32> = vec2<f32>(x_2918.x, x_2918.y);
            let x_2921 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2919.x, x_2919.y, x_2921);
            let x_2928 : vec3<f32> = txVec41;
            let x_2930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2928.xy, x_2928.z);
            u_xlat88 = x_2930;
            let x_2932 : f32 = u_xlat20.w;
            let x_2933 : f32 = u_xlat88;
            let x_2935 : f32 = u_xlat87;
            u_xlat87 = ((x_2932 * x_2933) + x_2935);
            let x_2938 : vec4<f32> = u_xlat14;
            let x_2939 : vec2<f32> = vec2<f32>(x_2938.z, x_2938.w);
            let x_2941 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec42;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat88 = x_2950;
            let x_2951 : f32 = u_xlat85;
            let x_2952 : f32 = u_xlat88;
            let x_2954 : f32 = u_xlat87;
            u_xlat59 = ((x_2951 * x_2952) + x_2954);
          } else {
            let x_2957 : vec4<f32> = u_xlat11;
            let x_2960 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2963 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.z, x_2960.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2964 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2963.x, x_2963.y, x_2964.z, x_2964.w);
            let x_2966 : vec4<f32> = u_xlat12;
            let x_2968 : vec2<f32> = floor(vec2<f32>(x_2966.x, x_2966.y));
            let x_2969 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
            let x_2971 : vec4<f32> = u_xlat11;
            let x_2974 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2971.x, x_2971.y) * vec2<f32>(x_2974.z, x_2974.w)) + -(vec2<f32>(x_2977.x, x_2977.y)));
            let x_2981 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2981.x, x_2981.x, x_2981.y, x_2981.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2984 : vec4<f32> = u_xlat13;
            let x_2986 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2984.x, x_2984.x, x_2984.z, x_2984.z) * vec4<f32>(x_2986.x, x_2986.x, x_2986.z, x_2986.z));
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2991 : vec2<f32> = (vec2<f32>(x_2989.y, x_2989.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2992 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2992.x, x_2991.x, x_2992.z, x_2991.y);
            let x_2994 : vec4<f32> = u_xlat14;
            let x_2997 : vec2<f32> = u_xlat64;
            let x_2999 : vec2<f32> = ((vec2<f32>(x_2994.x, x_2994.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2997));
            let x_3000 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2999.x, x_3000.y, x_2999.y, x_3000.w);
            let x_3002 : vec2<f32> = u_xlat64;
            let x_3004 : vec2<f32> = (-(x_3002) + vec2<f32>(1.0f, 1.0f));
            let x_3005 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3007 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3007, vec2<f32>(0.0f, 0.0f));
            let x_3009 : vec2<f32> = u_xlat66;
            let x_3011 : vec2<f32> = u_xlat66;
            let x_3013 : vec4<f32> = u_xlat14;
            let x_3015 : vec2<f32> = ((-(x_3009) * x_3011) + vec2<f32>(x_3013.x, x_3013.y));
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3015.x, x_3015.y, x_3016.z, x_3016.w);
            let x_3018 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3018, vec2<f32>(0.0f, 0.0f));
            let x_3021 : vec2<f32> = u_xlat66;
            let x_3023 : vec2<f32> = u_xlat66;
            let x_3025 : vec4<f32> = u_xlat13;
            let x_3027 : vec2<f32> = ((-(x_3021) * x_3023) + vec2<f32>(x_3025.y, x_3025.w));
            let x_3028 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3027.x, x_3028.y, x_3027.y);
            let x_3030 : vec4<f32> = u_xlat14;
            let x_3032 : vec2<f32> = (vec2<f32>(x_3030.x, x_3030.y) + vec2<f32>(2.0f, 2.0f));
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
            let x_3035 : vec3<f32> = u_xlat39;
            let x_3037 : vec2<f32> = (vec2<f32>(x_3035.x, x_3035.z) + vec2<f32>(2.0f, 2.0f));
            let x_3038 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3038.x, x_3037.x, x_3038.z, x_3037.y);
            let x_3041 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3041 * 0.08163200318813323975f);
            let x_3044 : vec4<f32> = u_xlat13;
            let x_3046 : vec3<f32> = (vec3<f32>(x_3044.z, x_3044.x, x_3044.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3047 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3047.w);
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec2<f32> = (vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3052 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3051.x, x_3051.y, x_3052.z, x_3052.w);
            let x_3055 : f32 = u_xlat17.y;
            u_xlat16.x = x_3055;
            let x_3057 : vec2<f32> = u_xlat64;
            let x_3060 : vec2<f32> = ((vec2<f32>(x_3057.x, x_3057.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3061 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3061.x, x_3060.x, x_3061.z, x_3060.y);
            let x_3063 : vec2<f32> = u_xlat64;
            let x_3066 : vec2<f32> = ((vec2<f32>(x_3063.x, x_3063.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3067 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3066.x, x_3067.y, x_3066.y, x_3067.w);
            let x_3070 : f32 = u_xlat13.x;
            u_xlat14.y = x_3070;
            let x_3073 : f32 = u_xlat15.y;
            u_xlat14.w = x_3073;
            let x_3075 : vec4<f32> = u_xlat14;
            let x_3076 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3075 + x_3076);
            let x_3078 : vec2<f32> = u_xlat64;
            let x_3081 : vec2<f32> = ((vec2<f32>(x_3078.y, x_3078.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3082 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3082.x, x_3081.x, x_3082.z, x_3081.y);
            let x_3084 : vec2<f32> = u_xlat64;
            let x_3087 : vec2<f32> = ((vec2<f32>(x_3084.y, x_3084.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3088 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3087.x, x_3088.y, x_3087.y, x_3088.w);
            let x_3091 : f32 = u_xlat13.y;
            u_xlat15.y = x_3091;
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3094 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3093 + x_3094);
            let x_3096 : vec4<f32> = u_xlat14;
            let x_3097 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3096 / x_3097);
            let x_3099 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3099 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3101 : vec4<f32> = u_xlat15;
            let x_3102 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3101 / x_3102);
            let x_3104 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3104 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3109 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3106.w, x_3106.x, x_3106.y, x_3106.z) * vec4<f32>(x_3109.x, x_3109.x, x_3109.x, x_3109.x));
            let x_3112 : vec4<f32> = u_xlat15;
            let x_3115 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3112.x, x_3112.w, x_3112.y, x_3112.z) * vec4<f32>(x_3115.y, x_3115.y, x_3115.y, x_3115.y));
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3119 : vec3<f32> = vec3<f32>(x_3118.y, x_3118.z, x_3118.w);
            let x_3120 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3119.x, x_3120.y, x_3119.y, x_3119.z);
            let x_3123 : f32 = u_xlat15.x;
            u_xlat17.y = x_3123;
            let x_3125 : vec4<f32> = u_xlat12;
            let x_3128 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3131 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3125.x, x_3125.y, x_3125.x, x_3125.y) * vec4<f32>(x_3128.x, x_3128.y, x_3128.x, x_3128.y)) + vec4<f32>(x_3131.x, x_3131.y, x_3131.z, x_3131.y));
            let x_3134 : vec4<f32> = u_xlat12;
            let x_3137 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3140 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3134.x, x_3134.y) * vec2<f32>(x_3137.x, x_3137.y)) + vec2<f32>(x_3140.w, x_3140.y));
            let x_3144 : f32 = u_xlat17.y;
            u_xlat14.y = x_3144;
            let x_3147 : f32 = u_xlat15.z;
            u_xlat17.y = x_3147;
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3152 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3155 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.y) * vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.y)) + vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3155.y));
            let x_3158 : vec4<f32> = u_xlat12;
            let x_3161 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3164 : vec4<f32> = u_xlat17;
            let x_3166 : vec2<f32> = ((vec2<f32>(x_3158.x, x_3158.y) * vec2<f32>(x_3161.x, x_3161.y)) + vec2<f32>(x_3164.w, x_3164.y));
            let x_3167 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3166.x, x_3166.y, x_3167.z, x_3167.w);
            let x_3170 : f32 = u_xlat17.y;
            u_xlat14.z = x_3170;
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3176 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3179 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3173.x, x_3173.y, x_3173.x, x_3173.y) * vec4<f32>(x_3176.x, x_3176.y, x_3176.x, x_3176.y)) + vec4<f32>(x_3179.x, x_3179.y, x_3179.x, x_3179.z));
            let x_3183 : f32 = u_xlat15.w;
            u_xlat17.y = x_3183;
            let x_3186 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3192 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3186.x, x_3186.y, x_3186.x, x_3186.y) * vec4<f32>(x_3189.x, x_3189.y, x_3189.x, x_3189.y)) + vec4<f32>(x_3192.x, x_3192.y, x_3192.z, x_3192.y));
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3199 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.x, x_3199.y)) + vec2<f32>(x_3202.w, x_3202.y));
            let x_3206 : f32 = u_xlat17.y;
            u_xlat14.w = x_3206;
            let x_3209 : vec4<f32> = u_xlat12;
            let x_3212 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3212.x, x_3212.y)) + vec2<f32>(x_3215.x, x_3215.w));
            let x_3218 : vec4<f32> = u_xlat17;
            let x_3219 : vec3<f32> = vec3<f32>(x_3218.x, x_3218.z, x_3218.w);
            let x_3220 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3219.x, x_3220.y, x_3219.y, x_3219.z);
            let x_3222 : vec4<f32> = u_xlat12;
            let x_3225 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3228 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3222.x, x_3222.y, x_3222.x, x_3222.y) * vec4<f32>(x_3225.x, x_3225.y, x_3225.x, x_3225.y)) + vec4<f32>(x_3228.x, x_3228.y, x_3228.z, x_3228.y));
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3235 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3232.x, x_3232.y) * vec2<f32>(x_3235.x, x_3235.y)) + vec2<f32>(x_3238.w, x_3238.y));
            let x_3242 : f32 = u_xlat14.x;
            u_xlat15.x = x_3242;
            let x_3244 : vec4<f32> = u_xlat12;
            let x_3247 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3250 : vec4<f32> = u_xlat15;
            let x_3252 : vec2<f32> = ((vec2<f32>(x_3244.x, x_3244.y) * vec2<f32>(x_3247.x, x_3247.y)) + vec2<f32>(x_3250.x, x_3250.y));
            let x_3253 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3252.x, x_3252.y, x_3253.z, x_3253.w);
            let x_3256 : vec4<f32> = u_xlat13;
            let x_3258 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3256.x, x_3256.x, x_3256.x, x_3256.x) * x_3258);
            let x_3261 : vec4<f32> = u_xlat13;
            let x_3263 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3261.y, x_3261.y, x_3261.y, x_3261.y) * x_3263);
            let x_3266 : vec4<f32> = u_xlat13;
            let x_3268 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3266.z, x_3266.z, x_3266.z, x_3266.z) * x_3268);
            let x_3270 : vec4<f32> = u_xlat13;
            let x_3272 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3270.w, x_3270.w, x_3270.w, x_3270.w) * x_3272);
            let x_3275 : vec4<f32> = u_xlat18;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.x, x_3275.y);
            let x_3278 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec43;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat85 = x_3287;
            let x_3289 : vec4<f32> = u_xlat18;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
            let x_3292 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec44;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat87 = x_3301;
            let x_3302 : f32 = u_xlat87;
            let x_3304 : f32 = u_xlat23.y;
            u_xlat87 = (x_3302 * x_3304);
            let x_3307 : f32 = u_xlat23.x;
            let x_3308 : f32 = u_xlat85;
            let x_3310 : f32 = u_xlat87;
            u_xlat85 = ((x_3307 * x_3308) + x_3310);
            let x_3313 : vec2<f32> = u_xlat64;
            let x_3315 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec45;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat87 = x_3324;
            let x_3326 : f32 = u_xlat23.z;
            let x_3327 : f32 = u_xlat87;
            let x_3329 : f32 = u_xlat85;
            u_xlat85 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec4<f32> = u_xlat21;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.x, x_3332.y);
            let x_3335 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec46;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat87 = x_3344;
            let x_3346 : f32 = u_xlat23.w;
            let x_3347 : f32 = u_xlat87;
            let x_3349 : f32 = u_xlat85;
            u_xlat85 = ((x_3346 * x_3347) + x_3349);
            let x_3352 : vec4<f32> = u_xlat19;
            let x_3353 : vec2<f32> = vec2<f32>(x_3352.x, x_3352.y);
            let x_3355 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec47;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat87 = x_3364;
            let x_3366 : f32 = u_xlat24.x;
            let x_3367 : f32 = u_xlat87;
            let x_3369 : f32 = u_xlat85;
            u_xlat85 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat19;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.z, x_3372.w);
            let x_3375 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec48;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat87 = x_3384;
            let x_3386 : f32 = u_xlat24.y;
            let x_3387 : f32 = u_xlat87;
            let x_3389 : f32 = u_xlat85;
            u_xlat85 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat20;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.x, x_3392.y);
            let x_3395 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec49;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat87 = x_3404;
            let x_3406 : f32 = u_xlat24.z;
            let x_3407 : f32 = u_xlat87;
            let x_3409 : f32 = u_xlat85;
            u_xlat85 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec4<f32> = u_xlat21;
            let x_3413 : vec2<f32> = vec2<f32>(x_3412.z, x_3412.w);
            let x_3415 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3413.x, x_3413.y, x_3415);
            let x_3422 : vec3<f32> = txVec50;
            let x_3424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3422.xy, x_3422.z);
            u_xlat87 = x_3424;
            let x_3426 : f32 = u_xlat24.w;
            let x_3427 : f32 = u_xlat87;
            let x_3429 : f32 = u_xlat85;
            u_xlat85 = ((x_3426 * x_3427) + x_3429);
            let x_3432 : vec4<f32> = u_xlat22;
            let x_3433 : vec2<f32> = vec2<f32>(x_3432.x, x_3432.y);
            let x_3435 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3433.x, x_3433.y, x_3435);
            let x_3442 : vec3<f32> = txVec51;
            let x_3444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3442.xy, x_3442.z);
            u_xlat87 = x_3444;
            let x_3446 : f32 = u_xlat25.x;
            let x_3447 : f32 = u_xlat87;
            let x_3449 : f32 = u_xlat85;
            u_xlat85 = ((x_3446 * x_3447) + x_3449);
            let x_3452 : vec4<f32> = u_xlat22;
            let x_3453 : vec2<f32> = vec2<f32>(x_3452.z, x_3452.w);
            let x_3455 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3453.x, x_3453.y, x_3455);
            let x_3462 : vec3<f32> = txVec52;
            let x_3464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3462.xy, x_3462.z);
            u_xlat87 = x_3464;
            let x_3466 : f32 = u_xlat25.y;
            let x_3467 : f32 = u_xlat87;
            let x_3469 : f32 = u_xlat85;
            u_xlat85 = ((x_3466 * x_3467) + x_3469);
            let x_3472 : vec2<f32> = u_xlat40;
            let x_3474 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3472.x, x_3472.y, x_3474);
            let x_3481 : vec3<f32> = txVec53;
            let x_3483 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3481.xy, x_3481.z);
            u_xlat87 = x_3483;
            let x_3485 : f32 = u_xlat25.z;
            let x_3486 : f32 = u_xlat87;
            let x_3488 : f32 = u_xlat85;
            u_xlat85 = ((x_3485 * x_3486) + x_3488);
            let x_3491 : vec2<f32> = u_xlat72;
            let x_3493 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
            let x_3500 : vec3<f32> = txVec54;
            let x_3502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3500.xy, x_3500.z);
            u_xlat87 = x_3502;
            let x_3504 : f32 = u_xlat25.w;
            let x_3505 : f32 = u_xlat87;
            let x_3507 : f32 = u_xlat85;
            u_xlat85 = ((x_3504 * x_3505) + x_3507);
            let x_3510 : vec4<f32> = u_xlat17;
            let x_3511 : vec2<f32> = vec2<f32>(x_3510.x, x_3510.y);
            let x_3513 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3511.x, x_3511.y, x_3513);
            let x_3520 : vec3<f32> = txVec55;
            let x_3522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3520.xy, x_3520.z);
            u_xlat87 = x_3522;
            let x_3524 : f32 = u_xlat13.x;
            let x_3525 : f32 = u_xlat87;
            let x_3527 : f32 = u_xlat85;
            u_xlat85 = ((x_3524 * x_3525) + x_3527);
            let x_3530 : vec4<f32> = u_xlat17;
            let x_3531 : vec2<f32> = vec2<f32>(x_3530.z, x_3530.w);
            let x_3533 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3531.x, x_3531.y, x_3533);
            let x_3540 : vec3<f32> = txVec56;
            let x_3542 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3540.xy, x_3540.z);
            u_xlat87 = x_3542;
            let x_3544 : f32 = u_xlat13.y;
            let x_3545 : f32 = u_xlat87;
            let x_3547 : f32 = u_xlat85;
            u_xlat85 = ((x_3544 * x_3545) + x_3547);
            let x_3550 : vec2<f32> = u_xlat67;
            let x_3552 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec57;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat87 = x_3561;
            let x_3563 : f32 = u_xlat13.z;
            let x_3564 : f32 = u_xlat87;
            let x_3566 : f32 = u_xlat85;
            u_xlat85 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec4<f32> = u_xlat12;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.x, x_3569.y);
            let x_3572 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec58;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat87 = x_3581;
            let x_3583 : f32 = u_xlat13.w;
            let x_3584 : f32 = u_xlat87;
            let x_3586 : f32 = u_xlat85;
            u_xlat59 = ((x_3583 * x_3584) + x_3586);
          }
        }
      } else {
        let x_3590 : vec4<f32> = u_xlat11;
        let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
        let x_3593 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
        let x_3600 : vec3<f32> = txVec59;
        let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
        u_xlat59 = x_3602;
      }
      let x_3603 : i32 = u_xlati82;
      let x_3605 : f32 = x_434.x_AdditionalShadowParams[x_3603].x;
      u_xlat85 = (1.0f + -(x_3605));
      let x_3608 : f32 = u_xlat59;
      let x_3609 : i32 = u_xlati82;
      let x_3611 : f32 = x_434.x_AdditionalShadowParams[x_3609].x;
      let x_3613 : f32 = u_xlat85;
      u_xlat59 = ((x_3608 * x_3611) + x_3613);
      let x_3616 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3616);
      let x_3620 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3620 >= 1.0f);
      let x_3622 : bool = u_xlatb85;
      let x_3623 : bool = u_xlatb87;
      u_xlatb85 = (x_3622 | x_3623);
      let x_3625 : bool = u_xlatb85;
      let x_3626 : f32 = u_xlat59;
      u_xlat59 = select(x_3626, 1.0f, x_3625);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3629 : f32 = u_xlat59;
    u_xlat85 = (-(x_3629) + 1.0f);
    let x_3633 : f32 = u_xlat1.x;
    let x_3634 : f32 = u_xlat85;
    let x_3636 : f32 = u_xlat59;
    u_xlat59 = ((x_3633 * x_3634) + x_3636);
    let x_3639 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3639 & 31i)));
    let x_3643 : i32 = u_xlati85;
    let x_3646 : f32 = x_1756.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3643) & bitcast<u32>(x_3646)));
    let x_3650 : i32 = u_xlati85;
    if ((x_3650 != 0i)) {
      let x_3654 : i32 = u_xlati82;
      let x_3656 : f32 = x_1756.x_AdditionalLightsLightTypes[x_3654].el;
      u_xlati85 = i32(x_3656);
      let x_3659 : i32 = u_xlati85;
      u_xlati87 = select(1i, 0i, (x_3659 != 0i));
      let x_3663 : i32 = u_xlati82;
      u_xlati88 = (x_3663 << bitcast<u32>(2i));
      let x_3665 : i32 = u_xlati87;
      if ((x_3665 != 0i)) {
        let x_3669 : vec3<f32> = vs_TEXCOORD1;
        let x_3671 : i32 = u_xlati88;
        let x_3674 : i32 = u_xlati88;
        let x_3678 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3671 + 1i) / 4i)][((x_3674 + 1i) % 4i)];
        let x_3680 : vec3<f32> = (vec3<f32>(x_3669.y, x_3669.y, x_3669.y) * vec3<f32>(x_3678.x, x_3678.y, x_3678.w));
        let x_3681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
        let x_3683 : i32 = u_xlati88;
        let x_3685 : i32 = u_xlati88;
        let x_3688 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[(x_3683 / 4i)][(x_3685 % 4i)];
        let x_3690 : vec3<f32> = vs_TEXCOORD1;
        let x_3693 : vec4<f32> = u_xlat11;
        let x_3695 : vec3<f32> = ((vec3<f32>(x_3688.x, x_3688.y, x_3688.w) * vec3<f32>(x_3690.x, x_3690.x, x_3690.x)) + vec3<f32>(x_3693.x, x_3693.y, x_3693.z));
        let x_3696 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3695.x, x_3695.y, x_3695.z, x_3696.w);
        let x_3698 : i32 = u_xlati88;
        let x_3701 : i32 = u_xlati88;
        let x_3705 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3698 + 2i) / 4i)][((x_3701 + 2i) % 4i)];
        let x_3707 : vec3<f32> = vs_TEXCOORD1;
        let x_3710 : vec4<f32> = u_xlat11;
        let x_3712 : vec3<f32> = ((vec3<f32>(x_3705.x, x_3705.y, x_3705.w) * vec3<f32>(x_3707.z, x_3707.z, x_3707.z)) + vec3<f32>(x_3710.x, x_3710.y, x_3710.z));
        let x_3713 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3712.x, x_3712.y, x_3712.z, x_3713.w);
        let x_3715 : vec4<f32> = u_xlat11;
        let x_3717 : i32 = u_xlati88;
        let x_3720 : i32 = u_xlati88;
        let x_3724 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3717 + 3i) / 4i)][((x_3720 + 3i) % 4i)];
        let x_3726 : vec3<f32> = (vec3<f32>(x_3715.x, x_3715.y, x_3715.z) + vec3<f32>(x_3724.x, x_3724.y, x_3724.w));
        let x_3727 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3726.x, x_3726.y, x_3726.z, x_3727.w);
        let x_3729 : vec4<f32> = u_xlat11;
        let x_3731 : vec4<f32> = u_xlat11;
        let x_3733 : vec2<f32> = (vec2<f32>(x_3729.x, x_3729.y) / vec2<f32>(x_3731.z, x_3731.z));
        let x_3734 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3733.x, x_3733.y, x_3734.z, x_3734.w);
        let x_3736 : vec4<f32> = u_xlat11;
        let x_3739 : vec2<f32> = ((vec2<f32>(x_3736.x, x_3736.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3739.x, x_3739.y, x_3740.z, x_3740.w);
        let x_3742 : vec4<f32> = u_xlat11;
        let x_3746 : vec2<f32> = clamp(vec2<f32>(x_3742.x, x_3742.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3747 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3746.x, x_3746.y, x_3747.z, x_3747.w);
        let x_3749 : i32 = u_xlati82;
        let x_3751 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3749];
        let x_3753 : vec4<f32> = u_xlat11;
        let x_3756 : i32 = u_xlati82;
        let x_3758 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3756];
        let x_3760 : vec2<f32> = ((vec2<f32>(x_3751.x, x_3751.y) * vec2<f32>(x_3753.x, x_3753.y)) + vec2<f32>(x_3758.z, x_3758.w));
        let x_3761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3760.x, x_3760.y, x_3761.z, x_3761.w);
      } else {
        let x_3764 : i32 = u_xlati85;
        u_xlatb85 = (x_3764 == 1i);
        let x_3766 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3766);
        let x_3768 : i32 = u_xlati85;
        if ((x_3768 != 0i)) {
          let x_3773 : vec3<f32> = vs_TEXCOORD1;
          let x_3775 : i32 = u_xlati88;
          let x_3778 : i32 = u_xlati88;
          let x_3782 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3775 + 1i) / 4i)][((x_3778 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_3773.y, x_3773.y) * vec2<f32>(x_3782.x, x_3782.y));
          let x_3785 : i32 = u_xlati88;
          let x_3787 : i32 = u_xlati88;
          let x_3790 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[(x_3785 / 4i)][(x_3787 % 4i)];
          let x_3792 : vec3<f32> = vs_TEXCOORD1;
          let x_3795 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3790.x, x_3790.y) * vec2<f32>(x_3792.x, x_3792.x)) + x_3795);
          let x_3797 : i32 = u_xlati88;
          let x_3800 : i32 = u_xlati88;
          let x_3804 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3797 + 2i) / 4i)][((x_3800 + 2i) % 4i)];
          let x_3806 : vec3<f32> = vs_TEXCOORD1;
          let x_3809 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(x_3806.z, x_3806.z)) + x_3809);
          let x_3811 : vec2<f32> = u_xlat63;
          let x_3812 : i32 = u_xlati88;
          let x_3815 : i32 = u_xlati88;
          let x_3819 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3812 + 3i) / 4i)][((x_3815 + 3i) % 4i)];
          u_xlat63 = (x_3811 + vec2<f32>(x_3819.x, x_3819.y));
          let x_3822 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3822 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3825 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_3825);
          let x_3827 : i32 = u_xlati82;
          let x_3829 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3827];
          let x_3831 : vec2<f32> = u_xlat63;
          let x_3833 : i32 = u_xlati82;
          let x_3835 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3833];
          let x_3837 : vec2<f32> = ((vec2<f32>(x_3829.x, x_3829.y) * x_3831) + vec2<f32>(x_3835.z, x_3835.w));
          let x_3838 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3837.x, x_3837.y, x_3838.z, x_3838.w);
        } else {
          let x_3841 : vec3<f32> = vs_TEXCOORD1;
          let x_3843 : i32 = u_xlati88;
          let x_3846 : i32 = u_xlati88;
          let x_3850 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3843 + 1i) / 4i)][((x_3846 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3841.y, x_3841.y, x_3841.y, x_3841.y) * x_3850);
          let x_3852 : i32 = u_xlati88;
          let x_3854 : i32 = u_xlati88;
          let x_3857 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[(x_3852 / 4i)][(x_3854 % 4i)];
          let x_3858 : vec3<f32> = vs_TEXCOORD1;
          let x_3861 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3857 * vec4<f32>(x_3858.x, x_3858.x, x_3858.x, x_3858.x)) + x_3861);
          let x_3863 : i32 = u_xlati88;
          let x_3866 : i32 = u_xlati88;
          let x_3870 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3863 + 2i) / 4i)][((x_3866 + 2i) % 4i)];
          let x_3871 : vec3<f32> = vs_TEXCOORD1;
          let x_3874 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3870 * vec4<f32>(x_3871.z, x_3871.z, x_3871.z, x_3871.z)) + x_3874);
          let x_3876 : vec4<f32> = u_xlat12;
          let x_3877 : i32 = u_xlati88;
          let x_3880 : i32 = u_xlati88;
          let x_3884 : vec4<f32> = x_1756.x_AdditionalLightsWorldToLights[((x_3877 + 3i) / 4i)][((x_3880 + 3i) % 4i)];
          u_xlat12 = (x_3876 + x_3884);
          let x_3886 : vec4<f32> = u_xlat12;
          let x_3888 : vec4<f32> = u_xlat12;
          let x_3890 : vec3<f32> = (vec3<f32>(x_3886.x, x_3886.y, x_3886.z) / vec3<f32>(x_3888.w, x_3888.w, x_3888.w));
          let x_3891 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3890.x, x_3890.y, x_3890.z, x_3891.w);
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3895 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_3893.x, x_3893.y, x_3893.z), vec3<f32>(x_3895.x, x_3895.y, x_3895.z));
          let x_3898 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_3898);
          let x_3900 : f32 = u_xlat85;
          let x_3902 : vec4<f32> = u_xlat12;
          let x_3904 : vec3<f32> = (vec3<f32>(x_3900, x_3900, x_3900) * vec3<f32>(x_3902.x, x_3902.y, x_3902.z));
          let x_3905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3904.z, x_3905.w);
          let x_3907 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_3907.x, x_3907.y, x_3907.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3912 : f32 = u_xlat85;
          u_xlat85 = max(x_3912, 0.00000099999999747524f);
          let x_3915 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_3915);
          let x_3917 : f32 = u_xlat85;
          let x_3919 : vec4<f32> = u_xlat12;
          let x_3921 : vec3<f32> = (vec3<f32>(x_3917, x_3917, x_3917) * vec3<f32>(x_3919.z, x_3919.x, x_3919.y));
          let x_3922 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3921.x, x_3921.y, x_3921.z, x_3922.w);
          let x_3925 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3925);
          let x_3929 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3929, 0.0f, 1.0f);
          let x_3933 : vec4<f32> = u_xlat13;
          let x_3935 : vec4<bool> = (vec4<f32>(x_3933.y, x_3933.z, x_3933.y, x_3933.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_3935.x, x_3935.y);
          let x_3938 : bool = u_xlatb63.x;
          if (x_3938) {
            let x_3943 : f32 = u_xlat13.x;
            x_3939 = x_3943;
          } else {
            let x_3946 : f32 = u_xlat13.x;
            x_3939 = -(x_3946);
          }
          let x_3948 : f32 = x_3939;
          u_xlat63.x = x_3948;
          let x_3951 : bool = u_xlatb63.y;
          if (x_3951) {
            let x_3956 : f32 = u_xlat13.x;
            x_3952 = x_3956;
          } else {
            let x_3959 : f32 = u_xlat13.x;
            x_3952 = -(x_3959);
          }
          let x_3961 : f32 = x_3952;
          u_xlat63.y = x_3961;
          let x_3963 : vec4<f32> = u_xlat12;
          let x_3965 : f32 = u_xlat85;
          let x_3968 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3963.x, x_3963.y) * vec2<f32>(x_3965, x_3965)) + x_3968);
          let x_3970 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3970 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3973 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_3973, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3977 : i32 = u_xlati82;
          let x_3979 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3977];
          let x_3981 : vec2<f32> = u_xlat63;
          let x_3983 : i32 = u_xlati82;
          let x_3985 : vec4<f32> = x_1756.x_AdditionalLightsCookieAtlasUVRects[x_3983];
          let x_3987 : vec2<f32> = ((vec2<f32>(x_3979.x, x_3979.y) * x_3981) + vec2<f32>(x_3985.z, x_3985.w));
          let x_3988 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3987.x, x_3987.y, x_3988.z, x_3988.w);
        }
      }
      let x_3995 : vec4<f32> = u_xlat11;
      let x_3997 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3995.x, x_3995.y), 0.0f);
      u_xlat11 = x_3997;
      let x_3999 : bool = u_xlatb7.y;
      if (x_3999) {
        let x_4004 : f32 = u_xlat11.w;
        x_4000 = x_4004;
      } else {
        let x_4007 : f32 = u_xlat11.x;
        x_4000 = x_4007;
      }
      let x_4008 : f32 = x_4000;
      u_xlat85 = x_4008;
      let x_4010 : bool = u_xlatb7.x;
      if (x_4010) {
        let x_4014 : vec4<f32> = u_xlat11;
        x_4011 = vec3<f32>(x_4014.x, x_4014.y, x_4014.z);
      } else {
        let x_4017 : f32 = u_xlat85;
        x_4011 = vec3<f32>(x_4017, x_4017, x_4017);
      }
      let x_4019 : vec3<f32> = x_4011;
      let x_4020 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4019.x, x_4019.y, x_4019.z, x_4020.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4026 : vec4<f32> = u_xlat11;
    let x_4028 : i32 = u_xlati82;
    let x_4030 : vec4<f32> = x_2216.x_AdditionalLightsColor[x_4028];
    let x_4032 : vec3<f32> = (vec3<f32>(x_4026.x, x_4026.y, x_4026.z) * vec3<f32>(x_4030.x, x_4030.y, x_4030.z));
    let x_4033 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4032.x, x_4032.y, x_4032.z, x_4033.w);
    let x_4035 : f32 = u_xlat83;
    let x_4036 : f32 = u_xlat59;
    u_xlat82 = (x_4035 * x_4036);
    let x_4038 : vec4<f32> = u_xlat4;
    let x_4040 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4038.x, x_4038.y, x_4038.z), vec3<f32>(x_4040.x, x_4040.y, x_4040.z));
    let x_4043 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4043, 0.0f, 1.0f);
    let x_4045 : f32 = u_xlat82;
    let x_4046 : f32 = u_xlat83;
    u_xlat82 = (x_4045 * x_4046);
    let x_4048 : f32 = u_xlat82;
    let x_4050 : vec4<f32> = u_xlat11;
    let x_4052 : vec3<f32> = (vec3<f32>(x_4048, x_4048, x_4048) * vec3<f32>(x_4050.x, x_4050.y, x_4050.z));
    let x_4053 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4052.x, x_4052.y, x_4052.z, x_4053.w);
    let x_4055 : vec4<f32> = u_xlat9;
    let x_4057 : f32 = u_xlat84;
    let x_4060 : vec3<f32> = u_xlat5;
    let x_4061 : vec3<f32> = ((vec3<f32>(x_4055.x, x_4055.y, x_4055.z) * vec3<f32>(x_4057, x_4057, x_4057)) + x_4060);
    let x_4062 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4061.x, x_4061.y, x_4061.z, x_4062.w);
    let x_4064 : vec4<f32> = u_xlat9;
    let x_4066 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4064.x, x_4064.y, x_4064.z), vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
    let x_4069 : f32 = u_xlat82;
    u_xlat82 = max(x_4069, 1.17549435e-38f);
    let x_4071 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4071);
    let x_4073 : f32 = u_xlat82;
    let x_4075 : vec4<f32> = u_xlat9;
    let x_4077 : vec3<f32> = (vec3<f32>(x_4073, x_4073, x_4073) * vec3<f32>(x_4075.x, x_4075.y, x_4075.z));
    let x_4078 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4077.x, x_4077.y, x_4077.z, x_4078.w);
    let x_4080 : vec4<f32> = u_xlat4;
    let x_4082 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4080.x, x_4080.y, x_4080.z), vec3<f32>(x_4082.x, x_4082.y, x_4082.z));
    let x_4085 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4085, 0.0f, 1.0f);
    let x_4087 : vec4<f32> = u_xlat10;
    let x_4089 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4087.x, x_4087.y, x_4087.z), vec3<f32>(x_4089.x, x_4089.y, x_4089.z));
    let x_4092 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4092, 0.0f, 1.0f);
    let x_4094 : f32 = u_xlat82;
    let x_4095 : f32 = u_xlat82;
    u_xlat82 = (x_4094 * x_4095);
    let x_4097 : f32 = u_xlat82;
    let x_4099 : f32 = u_xlat8.x;
    u_xlat82 = ((x_4097 * x_4099) + 1.00001001358032226562f);
    let x_4102 : f32 = u_xlat83;
    let x_4103 : f32 = u_xlat83;
    u_xlat83 = (x_4102 * x_4103);
    let x_4105 : f32 = u_xlat82;
    let x_4106 : f32 = u_xlat82;
    u_xlat82 = (x_4105 * x_4106);
    let x_4108 : f32 = u_xlat83;
    u_xlat83 = max(x_4108, 0.10000000149011611938f);
    let x_4110 : f32 = u_xlat82;
    let x_4111 : f32 = u_xlat83;
    u_xlat82 = (x_4110 * x_4111);
    let x_4113 : f32 = u_xlat79;
    let x_4114 : f32 = u_xlat82;
    u_xlat82 = (x_4113 * x_4114);
    let x_4116 : f32 = u_xlat27;
    let x_4117 : f32 = u_xlat82;
    u_xlat82 = (x_4116 / x_4117);
    let x_4119 : vec4<f32> = u_xlat0;
    let x_4121 : f32 = u_xlat82;
    let x_4124 : vec3<f32> = u_xlat28;
    let x_4125 : vec3<f32> = ((vec3<f32>(x_4119.x, x_4119.y, x_4119.z) * vec3<f32>(x_4121, x_4121, x_4121)) + x_4124);
    let x_4126 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
    let x_4128 : vec4<f32> = u_xlat9;
    let x_4130 : vec4<f32> = u_xlat11;
    let x_4133 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4128.x, x_4128.y, x_4128.z) * vec3<f32>(x_4130.x, x_4130.y, x_4130.z)) + x_4133);

    continuing {
      let x_4135 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4135 + bitcast<u32>(1i));
    }
  }
  let x_4137 : vec3<f32> = u_xlat29;
  let x_4138 : vec3<f32> = u_xlat3;
  let x_4141 : vec4<f32> = u_xlat6;
  let x_4143 : vec3<f32> = ((x_4137 * vec3<f32>(x_4138.x, x_4138.x, x_4138.x)) + vec3<f32>(x_4141.x, x_4141.y, x_4141.z));
  let x_4144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4143.x, x_4143.y, x_4143.z, x_4144.w);
  let x_4148 : vec3<f32> = u_xlat34;
  let x_4149 : vec4<f32> = u_xlat0;
  let x_4151 : vec3<f32> = (x_4148 + vec3<f32>(x_4149.x, x_4149.y, x_4149.z));
  let x_4152 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4151.x, x_4151.y, x_4151.z, x_4152.w);
  let x_4156 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_4156 == 1.0f);
  let x_4158 : bool = u_xlatb0;
  if (x_4158) {
    let x_4163 : f32 = u_xlat2.x;
    x_4159 = x_4163;
  } else {
    x_4159 = 1.0f;
  }
  let x_4165 : f32 = x_4159;
  SV_Target0.w = x_4165;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


