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
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_154 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat26 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_343 : UnityPerDraw;

var<private> u_xlat70 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb72 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : vec2<bool>;

var<private> u_xlat49 : f32;

@group(1) @binding(5) var<uniform> x_1721 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu73 : u32;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_2019 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb76 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb77 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati31 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlatb55 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu51 : u32;

var<private> u_xlatb74 : bool;

fn main_1() {
  var x_84 : f32;
  var x_97 : f32;
  var x_109 : f32;
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
  var x_1803 : f32;
  var x_1814 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2158 : f32;
  var x_2170 : f32;
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
  var x_3838 : f32;
  var x_3851 : f32;
  var x_3908 : f32;
  var x_3919 : vec3<f32>;
  var x_4061 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat24;
  let x_70 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat24;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : bool = u_xlatb1;
  if (x_82) {
    let x_88 : f32 = u_xlat24.x;
    x_84 = x_88;
  } else {
    let x_93 : f32 = x_28.unity_MatrixV[0i].z;
    x_84 = x_93;
  }
  let x_94 : f32 = x_84;
  u_xlat2.x = x_94;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_102 : f32 = u_xlat24.y;
    x_97 = x_102;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_97 = x_105;
  }
  let x_106 : f32 = x_97;
  u_xlat2.y = x_106;
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_113 : f32 = u_xlat24.z;
    x_109 = x_113;
  } else {
    let x_117 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat2.z = x_118;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  let x_123 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_122, x_123);
  let x_127 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_133 : vec3<f32> = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = u_xlat2;
  let x_138 : vec3<f32> = u_xlat2;
  u_xlat71 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat71;
  u_xlat71 = max(x_140, 0.00006103515625f);
  let x_143 : f32 = u_xlat71;
  u_xlat71 = inverseSqrt(x_143);
  let x_146 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_146 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_184 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  let x_187 : vec3<f32> = (x_182 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat3;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec4<f32> = u_xlat6;
  let x_210 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_217 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_217 < x_219);
  let x_222 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_227 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_239);
  let x_245 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_245);
  let x_249 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_249);
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(x_254.y, x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = max(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_262.x, x_262.y, x_262.z);
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_265, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_273 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_273) + 4.0f);
  let x_280 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_280);
  let x_284 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_284) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati3;
  let x_293 : i32 = u_xlati3;
  let x_297 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  u_xlat26 = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : i32 = u_xlati3;
  let x_302 : i32 = u_xlati3;
  let x_305 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + x_310);
  let x_312 : i32 = u_xlati3;
  let x_315 : i32 = u_xlati3;
  let x_319 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_312 + 2i) / 4i)][((x_315 + 2i) % 4i)];
  let x_321 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + x_324);
  let x_326 : vec3<f32> = u_xlat26;
  let x_327 : i32 = u_xlati3;
  let x_330 : i32 = u_xlati3;
  let x_334 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_327 + 3i) / 4i)][((x_330 + 3i) % 4i)];
  let x_336 : vec3<f32> = (x_326 + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  u_xlat1.w = 1.0f;
  let x_346 : vec4<f32> = x_343.unity_SHAr;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_343.unity_SHAg;
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_343.unity_SHAb;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_362.y, x_362.z, x_362.z, x_362.x) * vec4<f32>(x_364.x, x_364.y, x_364.z, x_364.z));
  let x_369 : vec4<f32> = x_343.unity_SHBr;
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_343.unity_SHBg;
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_375, x_376);
  let x_381 : vec4<f32> = x_343.unity_SHBb;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_381, x_382);
  let x_387 : f32 = u_xlat1.y;
  let x_389 : f32 = u_xlat1.y;
  u_xlat70 = (x_387 * x_389);
  let x_392 : f32 = u_xlat1.x;
  let x_394 : f32 = u_xlat1.x;
  let x_396 : f32 = u_xlat70;
  u_xlat70 = ((x_392 * x_394) + -(x_396));
  let x_401 : vec4<f32> = x_343.unity_SHC;
  let x_403 : f32 = u_xlat70;
  let x_406 : vec4<f32> = u_xlat6;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403, x_403, x_403)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat4;
  let x_413 : vec4<f32> = u_xlat5;
  let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_421 : f32 = x_154.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_421);
  let x_423 : bool = u_xlatb70;
  if (x_423) {
    let x_427 : f32 = x_154.x_MainLightShadowParams.y;
    u_xlatb70 = (x_427 == 1.0f);
    let x_429 : bool = u_xlatb70;
    if (x_429) {
      let x_432 : vec4<f32> = u_xlat3;
      let x_435 : vec4<f32> = x_154.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_432.x, x_432.y, x_432.x, x_432.y) + x_435);
      let x_439 : vec4<f32> = u_xlat5;
      let x_440 : vec2<f32> = vec2<f32>(x_439.x, x_439.y);
      let x_442 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_440.x, x_440.y, x_442);
      let x_454 : vec3<f32> = txVec0;
      let x_456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_454.xy, x_454.z);
      u_xlat6.x = x_456;
      let x_459 : vec4<f32> = u_xlat5;
      let x_460 : vec2<f32> = vec2<f32>(x_459.z, x_459.w);
      let x_462 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_469 : vec3<f32> = txVec1;
      let x_471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_469.xy, x_469.z);
      u_xlat6.y = x_471;
      let x_473 : vec4<f32> = u_xlat3;
      let x_477 : vec4<f32> = x_154.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y) + x_477);
      let x_480 : vec4<f32> = u_xlat5;
      let x_481 : vec2<f32> = vec2<f32>(x_480.x, x_480.y);
      let x_483 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_490 : vec3<f32> = txVec2;
      let x_492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_490.xy, x_490.z);
      u_xlat6.z = x_492;
      let x_495 : vec4<f32> = u_xlat5;
      let x_496 : vec2<f32> = vec2<f32>(x_495.z, x_495.w);
      let x_498 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_496.x, x_496.y, x_498);
      let x_505 : vec3<f32> = txVec3;
      let x_507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_505.xy, x_505.z);
      u_xlat6.w = x_507;
      let x_509 : vec4<f32> = u_xlat6;
      u_xlat70 = dot(x_509, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_516 : f32 = x_154.x_MainLightShadowParams.y;
      u_xlatb72 = (x_516 == 2.0f);
      let x_518 : bool = u_xlatb72;
      if (x_518) {
        let x_521 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_530 : vec2<f32> = ((vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_525.z, x_525.w)) + vec2<f32>(0.5f, 0.5f));
        let x_531 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat5;
        let x_535 : vec2<f32> = floor(vec2<f32>(x_533.x, x_533.y));
        let x_536 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_540 : vec4<f32> = u_xlat3;
        let x_543 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_540.x, x_540.y) * vec2<f32>(x_543.z, x_543.w)) + -(vec2<f32>(x_546.x, x_546.y)));
        let x_550 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_550.x, x_550.x, x_550.y, x_550.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_555 : vec4<f32> = u_xlat6;
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_555.x, x_555.x, x_555.z, x_555.z) * vec4<f32>(x_557.x, x_557.x, x_557.z, x_557.z));
        let x_560 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = (vec2<f32>(x_560.y, x_560.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_564.x, x_565.y, x_564.y, x_565.w);
        let x_567 : vec4<f32> = u_xlat7;
        let x_570 : vec2<f32> = u_xlat51;
        let x_572 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.z) * vec2<f32>(0.5f, 0.5f)) + -(x_570));
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
        let x_576 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_576) + vec2<f32>(1.0f, 1.0f));
        let x_581 : vec2<f32> = u_xlat51;
        let x_583 : vec2<f32> = min(x_581, vec2<f32>(0.0f, 0.0f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat8;
        let x_589 : vec4<f32> = u_xlat8;
        let x_592 : vec2<f32> = u_xlat53;
        let x_593 : vec2<f32> = ((-(vec2<f32>(x_586.x, x_586.y)) * vec2<f32>(x_589.x, x_589.y)) + x_592);
        let x_594 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_596, vec2<f32>(0.0f, 0.0f));
        let x_598 : vec2<f32> = u_xlat51;
        let x_600 : vec2<f32> = u_xlat51;
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_598) * x_600) + vec2<f32>(x_602.y, x_602.w));
        let x_605 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = (vec2<f32>(x_605.x, x_605.y) + vec2<f32>(1.0f, 1.0f));
        let x_608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_610 + vec2<f32>(1.0f, 1.0f));
        let x_613 : vec4<f32> = u_xlat7;
        let x_617 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
        let x_620 : vec2<f32> = u_xlat53;
        let x_621 : vec2<f32> = (x_620 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat8;
        let x_626 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_630 : vec2<f32> = u_xlat51;
        let x_631 : vec2<f32> = (x_630 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_632 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_634.y, x_634.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : f32 = u_xlat8.x;
        u_xlat9.z = x_638;
        let x_641 : f32 = u_xlat51.x;
        u_xlat9.w = x_641;
        let x_644 : f32 = u_xlat10.x;
        u_xlat7.z = x_644;
        let x_647 : f32 = u_xlat6.x;
        u_xlat7.w = x_647;
        let x_650 : vec4<f32> = u_xlat7;
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_650.z, x_650.w, x_650.x, x_650.z) + vec4<f32>(x_652.z, x_652.w, x_652.x, x_652.z));
        let x_656 : f32 = u_xlat9.y;
        u_xlat8.z = x_656;
        let x_659 : f32 = u_xlat51.y;
        u_xlat8.w = x_659;
        let x_662 : f32 = u_xlat7.y;
        u_xlat10.z = x_662;
        let x_665 : f32 = u_xlat6.z;
        u_xlat10.w = x_665;
        let x_667 : vec4<f32> = u_xlat8;
        let x_669 : vec4<f32> = u_xlat10;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.z, x_667.y, x_667.w) + vec3<f32>(x_669.z, x_669.y, x_669.w));
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat7;
        let x_676 : vec4<f32> = u_xlat11;
        let x_678 : vec3<f32> = (vec3<f32>(x_674.x, x_674.z, x_674.w) / vec3<f32>(x_676.z, x_676.w, x_676.y));
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        let x_687 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat10;
        let x_692 : vec4<f32> = u_xlat6;
        let x_694 : vec3<f32> = (vec3<f32>(x_690.z, x_690.y, x_690.w) / vec3<f32>(x_692.x, x_692.y, x_692.z));
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat8;
        let x_699 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat7;
        let x_705 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.y, x_702.x, x_702.z) * vec3<f32>(x_705.x, x_705.x, x_705.x));
        let x_708 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat8;
        let x_713 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_715 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_713.y, x_713.y, x_713.y));
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_719 : f32 = u_xlat8.x;
        u_xlat7.w = x_719;
        let x_721 : vec4<f32> = u_xlat5;
        let x_724 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) * vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y)) + vec4<f32>(x_727.y, x_727.w, x_727.x, x_727.w));
        let x_730 : vec4<f32> = u_xlat5;
        let x_733 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_730.x, x_730.y) * vec2<f32>(x_733.x, x_733.y)) + vec2<f32>(x_736.z, x_736.w));
        let x_740 : f32 = u_xlat7.y;
        u_xlat8.w = x_740;
        let x_742 : vec4<f32> = u_xlat8;
        let x_743 : vec2<f32> = vec2<f32>(x_742.y, x_742.z);
        let x_744 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_744.x, x_743.x, x_744.z, x_743.y);
        let x_746 : vec4<f32> = u_xlat5;
        let x_749 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y) * vec4<f32>(x_749.x, x_749.y, x_749.x, x_749.y)) + vec4<f32>(x_752.x, x_752.y, x_752.z, x_752.y));
        let x_755 : vec4<f32> = u_xlat5;
        let x_758 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y) * vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y)) + vec4<f32>(x_761.w, x_761.y, x_761.w, x_761.z));
        let x_764 : vec4<f32> = u_xlat5;
        let x_767 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.x, x_770.w, x_770.z, x_770.w));
        let x_774 : vec4<f32> = u_xlat6;
        let x_776 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_774.x, x_774.x, x_774.x, x_774.y) * vec4<f32>(x_776.z, x_776.w, x_776.y, x_776.z));
        let x_780 : vec4<f32> = u_xlat6;
        let x_782 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_780.y, x_780.y, x_780.z, x_780.z) * x_782);
        let x_786 : f32 = u_xlat6.z;
        let x_788 : f32 = u_xlat11.y;
        u_xlat72 = (x_786 * x_788);
        let x_791 : vec4<f32> = u_xlat9;
        let x_792 : vec2<f32> = vec2<f32>(x_791.x, x_791.y);
        let x_794 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_792.x, x_792.y, x_794);
        let x_802 : vec3<f32> = txVec4;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat73 = x_804;
        let x_806 : vec4<f32> = u_xlat9;
        let x_807 : vec2<f32> = vec2<f32>(x_806.z, x_806.w);
        let x_809 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_816 : vec3<f32> = txVec5;
        let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_816.xy, x_816.z);
        u_xlat5.x = x_818;
        let x_821 : f32 = u_xlat5.x;
        let x_823 : f32 = u_xlat12.y;
        u_xlat5.x = (x_821 * x_823);
        let x_827 : f32 = u_xlat12.x;
        let x_828 : f32 = u_xlat73;
        let x_831 : f32 = u_xlat5.x;
        u_xlat73 = ((x_827 * x_828) + x_831);
        let x_834 : vec2<f32> = u_xlat51;
        let x_836 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_834.x, x_834.y, x_836);
        let x_843 : vec3<f32> = txVec6;
        let x_845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_843.xy, x_843.z);
        u_xlat5.x = x_845;
        let x_848 : f32 = u_xlat12.z;
        let x_850 : f32 = u_xlat5.x;
        let x_852 : f32 = u_xlat73;
        u_xlat73 = ((x_848 * x_850) + x_852);
        let x_855 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = vec2<f32>(x_855.x, x_855.y);
        let x_858 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec7;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_865.xy, x_865.z);
        u_xlat5.x = x_867;
        let x_870 : f32 = u_xlat12.w;
        let x_872 : f32 = u_xlat5.x;
        let x_874 : f32 = u_xlat73;
        u_xlat73 = ((x_870 * x_872) + x_874);
        let x_877 : vec4<f32> = u_xlat10;
        let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
        let x_880 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec8;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat5.x = x_889;
        let x_892 : f32 = u_xlat13.x;
        let x_894 : f32 = u_xlat5.x;
        let x_896 : f32 = u_xlat73;
        u_xlat73 = ((x_892 * x_894) + x_896);
        let x_899 : vec4<f32> = u_xlat10;
        let x_900 : vec2<f32> = vec2<f32>(x_899.z, x_899.w);
        let x_902 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_900.x, x_900.y, x_902);
        let x_909 : vec3<f32> = txVec9;
        let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_909.xy, x_909.z);
        u_xlat5.x = x_911;
        let x_914 : f32 = u_xlat13.y;
        let x_916 : f32 = u_xlat5.x;
        let x_918 : f32 = u_xlat73;
        u_xlat73 = ((x_914 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat8;
        let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
        let x_924 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec10;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
        u_xlat5.x = x_933;
        let x_936 : f32 = u_xlat13.z;
        let x_938 : f32 = u_xlat5.x;
        let x_940 : f32 = u_xlat73;
        u_xlat73 = ((x_936 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat7;
        let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
        let x_946 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec11;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat5.x = x_955;
        let x_958 : f32 = u_xlat13.w;
        let x_960 : f32 = u_xlat5.x;
        let x_962 : f32 = u_xlat73;
        u_xlat73 = ((x_958 * x_960) + x_962);
        let x_965 : vec4<f32> = u_xlat7;
        let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
        let x_968 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec12;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
        u_xlat5.x = x_977;
        let x_979 : f32 = u_xlat72;
        let x_981 : f32 = u_xlat5.x;
        let x_983 : f32 = u_xlat73;
        u_xlat70 = ((x_979 * x_981) + x_983);
      } else {
        let x_986 : vec4<f32> = u_xlat3;
        let x_989 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_992 : vec2<f32> = ((vec2<f32>(x_986.x, x_986.y) * vec2<f32>(x_989.z, x_989.w)) + vec2<f32>(0.5f, 0.5f));
        let x_993 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat5;
        let x_997 : vec2<f32> = floor(vec2<f32>(x_995.x, x_995.y));
        let x_998 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat3;
        let x_1003 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + -(vec2<f32>(x_1006.x, x_1006.y)));
        let x_1010 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1010.x, x_1010.x, x_1010.y, x_1010.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1013.x, x_1013.x, x_1013.z, x_1013.z) * vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1022 : vec2<f32> = (vec2<f32>(x_1018.y, x_1018.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1028 : vec2<f32> = u_xlat51;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1028));
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1031.w);
        let x_1033 : vec2<f32> = u_xlat51;
        let x_1035 : vec2<f32> = (-(x_1033) + vec2<f32>(1.0f, 1.0f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
        let x_1038 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1038, vec2<f32>(0.0f, 0.0f));
        let x_1040 : vec2<f32> = u_xlat53;
        let x_1042 : vec2<f32> = u_xlat53;
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1046 : vec2<f32> = ((-(x_1040) * x_1042) + vec2<f32>(x_1044.x, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1049 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1049, vec2<f32>(0.0f, 0.0f));
        let x_1052 : vec2<f32> = u_xlat53;
        let x_1054 : vec2<f32> = u_xlat53;
        let x_1056 : vec4<f32> = u_xlat6;
        let x_1058 : vec2<f32> = ((-(x_1052) * x_1054) + vec2<f32>(x_1056.y, x_1056.w));
        let x_1059 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1058.x, x_1059.y, x_1058.y);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) + vec2<f32>(2.0f, 2.0f));
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec3<f32> = u_xlat29;
        let x_1069 : vec2<f32> = (vec2<f32>(x_1067.x, x_1067.z) + vec2<f32>(2.0f, 2.0f));
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1070.x, x_1069.x, x_1070.z, x_1069.y);
        let x_1073 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1073 * 0.08163200318813323975f);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec3<f32> = (vec3<f32>(x_1077.z, x_1077.x, x_1077.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat10.y;
        u_xlat9.x = x_1090;
        let x_1092 : vec2<f32> = u_xlat51;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1100.x, x_1099.x, x_1100.z, x_1099.y);
        let x_1102 : vec2<f32> = u_xlat51;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1107 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1107.w);
        let x_1110 : f32 = u_xlat6.x;
        u_xlat7.y = x_1110;
        let x_1113 : f32 = u_xlat8.y;
        u_xlat7.w = x_1113;
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1115 + x_1116);
        let x_1118 : vec2<f32> = u_xlat51;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1118.y, x_1118.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec2<f32> = u_xlat51;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1124.y, x_1124.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1128 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1128.w);
        let x_1131 : f32 = u_xlat6.y;
        u_xlat8.y = x_1131;
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1133 + x_1134);
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1136 / x_1137);
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1139 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1146 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1145 / x_1146);
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1148 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1150.w, x_1150.x, x_1150.y, x_1150.z) * vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x));
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1156.x, x_1156.w, x_1156.y, x_1156.z) * vec4<f32>(x_1159.y, x_1159.y, x_1159.y, x_1159.y));
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1163 : vec3<f32> = vec3<f32>(x_1162.y, x_1162.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1163.z);
        let x_1167 : f32 = u_xlat8.x;
        u_xlat10.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1172 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1188 : f32 = u_xlat10.y;
        u_xlat7.y = x_1188;
        let x_1191 : f32 = u_xlat8.z;
        u_xlat10.y = x_1191;
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1196 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) * vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y)) + vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1205 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1202.x, x_1202.y) * vec2<f32>(x_1205.x, x_1205.y)) + vec2<f32>(x_1208.w, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1214 : f32 = u_xlat10.y;
        u_xlat7.z = x_1214;
        let x_1217 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y) * vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y)) + vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.z));
        let x_1227 : f32 = u_xlat8.w;
        u_xlat10.y = x_1227;
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.y));
        let x_1240 : vec4<f32> = u_xlat5;
        let x_1243 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat10.y;
        u_xlat7.w = x_1250;
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.x, x_1259.w));
        let x_1262 : vec4<f32> = u_xlat10;
        let x_1263 : vec3<f32> = vec3<f32>(x_1262.x, x_1262.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1263.x, x_1264.y, x_1263.y, x_1263.z);
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1276 : vec4<f32> = u_xlat5;
        let x_1279 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.w, x_1282.y));
        let x_1286 : f32 = u_xlat7.x;
        u_xlat8.x = x_1286;
        let x_1288 : vec4<f32> = u_xlat5;
        let x_1291 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1294.x, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1300.x, x_1300.x, x_1300.x, x_1300.x) * x_1302);
        let x_1305 : vec4<f32> = u_xlat6;
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1305.y, x_1305.y, x_1305.y, x_1305.y) * x_1307);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1310.z, x_1310.z, x_1310.z, x_1310.z) * x_1312);
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1314.w, x_1314.w, x_1314.w, x_1314.w) * x_1316);
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec13;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat72 = x_1331;
        let x_1333 : vec4<f32> = u_xlat11;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.z, x_1333.w);
        let x_1336 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec14;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat73 = x_1345;
        let x_1346 : f32 = u_xlat73;
        let x_1348 : f32 = u_xlat16.y;
        u_xlat73 = (x_1346 * x_1348);
        let x_1351 : f32 = u_xlat16.x;
        let x_1352 : f32 = u_xlat72;
        let x_1354 : f32 = u_xlat73;
        u_xlat72 = ((x_1351 * x_1352) + x_1354);
        let x_1357 : vec2<f32> = u_xlat51;
        let x_1359 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec15;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat73 = x_1368;
        let x_1370 : f32 = u_xlat16.z;
        let x_1371 : f32 = u_xlat73;
        let x_1373 : f32 = u_xlat72;
        u_xlat72 = ((x_1370 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat14;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec16;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat73 = x_1388;
        let x_1390 : f32 = u_xlat16.w;
        let x_1391 : f32 = u_xlat73;
        let x_1393 : f32 = u_xlat72;
        u_xlat72 = ((x_1390 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat12;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec17;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat73 = x_1408;
        let x_1410 : f32 = u_xlat17.x;
        let x_1411 : f32 = u_xlat73;
        let x_1413 : f32 = u_xlat72;
        u_xlat72 = ((x_1410 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat12;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec18;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat73 = x_1428;
        let x_1430 : f32 = u_xlat17.y;
        let x_1431 : f32 = u_xlat73;
        let x_1433 : f32 = u_xlat72;
        u_xlat72 = ((x_1430 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat13;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec19;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat73 = x_1448;
        let x_1450 : f32 = u_xlat17.z;
        let x_1451 : f32 = u_xlat73;
        let x_1453 : f32 = u_xlat72;
        u_xlat72 = ((x_1450 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat14;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec20;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat73 = x_1468;
        let x_1470 : f32 = u_xlat17.w;
        let x_1471 : f32 = u_xlat73;
        let x_1473 : f32 = u_xlat72;
        u_xlat72 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat15;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec21;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat73 = x_1488;
        let x_1490 : f32 = u_xlat18.x;
        let x_1491 : f32 = u_xlat73;
        let x_1493 : f32 = u_xlat72;
        u_xlat72 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat15;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec22;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat73 = x_1508;
        let x_1510 : f32 = u_xlat18.y;
        let x_1511 : f32 = u_xlat73;
        let x_1513 : f32 = u_xlat72;
        u_xlat72 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat30;
        let x_1518 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec23;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat73 = x_1527;
        let x_1529 : f32 = u_xlat18.z;
        let x_1530 : f32 = u_xlat73;
        let x_1532 : f32 = u_xlat72;
        u_xlat72 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec2<f32> = u_xlat59;
        let x_1537 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec24;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat73 = x_1546;
        let x_1548 : f32 = u_xlat18.w;
        let x_1549 : f32 = u_xlat73;
        let x_1551 : f32 = u_xlat72;
        u_xlat72 = ((x_1548 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat10;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec25;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat73 = x_1566;
        let x_1568 : f32 = u_xlat6.x;
        let x_1569 : f32 = u_xlat73;
        let x_1571 : f32 = u_xlat72;
        u_xlat72 = ((x_1568 * x_1569) + x_1571);
        let x_1574 : vec4<f32> = u_xlat10;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec26;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat73 = x_1586;
        let x_1588 : f32 = u_xlat6.y;
        let x_1589 : f32 = u_xlat73;
        let x_1591 : f32 = u_xlat72;
        u_xlat72 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec2<f32> = u_xlat54;
        let x_1596 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec27;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat73 = x_1605;
        let x_1607 : f32 = u_xlat6.z;
        let x_1608 : f32 = u_xlat73;
        let x_1610 : f32 = u_xlat72;
        u_xlat72 = ((x_1607 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat5;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec28;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat73 = x_1625;
        let x_1627 : f32 = u_xlat6.w;
        let x_1628 : f32 = u_xlat73;
        let x_1630 : f32 = u_xlat72;
        u_xlat70 = ((x_1627 * x_1628) + x_1630);
      }
    }
  } else {
    let x_1634 : vec4<f32> = u_xlat3;
    let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
    let x_1637 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
    let x_1644 : vec3<f32> = txVec29;
    let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
    u_xlat70 = x_1646;
  }
  let x_1648 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1648) + 1.0f);
  let x_1652 : f32 = u_xlat70;
  let x_1654 : f32 = x_154.x_MainLightShadowParams.x;
  let x_1657 : f32 = u_xlat3.x;
  u_xlat70 = ((x_1652 * x_1654) + x_1657);
  let x_1660 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1660);
  let x_1667 : f32 = u_xlat3.z;
  u_xlatb26.x = (x_1667 >= 1.0f);
  let x_1671 : bool = u_xlatb26.x;
  let x_1673 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1671 | x_1673);
  let x_1677 : bool = u_xlatb3.x;
  let x_1678 : f32 = u_xlat70;
  u_xlat70 = select(x_1678, 1.0f, x_1677);
  let x_1680 : vec3<f32> = vs_TEXCOORD1;
  let x_1682 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1684 : vec3<f32> = (x_1680 + -(x_1682));
  let x_1685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
  let x_1687 : vec4<f32> = u_xlat3;
  let x_1689 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1687.x, x_1687.y, x_1687.z), vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
  let x_1694 : f32 = u_xlat3.x;
  let x_1696 : f32 = x_154.x_MainLightShadowParams.z;
  let x_1699 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1694 * x_1696) + x_1699);
  let x_1703 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1703, 0.0f, 1.0f);
  let x_1707 : f32 = u_xlat70;
  u_xlat49 = (-(x_1707) + 1.0f);
  let x_1711 : f32 = u_xlat26.x;
  let x_1712 : f32 = u_xlat49;
  let x_1714 : f32 = u_xlat70;
  u_xlat70 = ((x_1711 * x_1712) + x_1714);
  let x_1723 : f32 = x_1721.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1723 == -1.0f));
  let x_1727 : bool = u_xlatb26.x;
  if (x_1727) {
    let x_1730 : vec3<f32> = vs_TEXCOORD1;
    let x_1733 : vec4<f32> = x_1721.x_MainLightWorldToLight[1i];
    let x_1735 : vec2<f32> = (vec2<f32>(x_1730.y, x_1730.y) * vec2<f32>(x_1733.x, x_1733.y));
    let x_1736 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1735.x, x_1735.y, x_1736.z);
    let x_1739 : vec4<f32> = x_1721.x_MainLightWorldToLight[0i];
    let x_1741 : vec3<f32> = vs_TEXCOORD1;
    let x_1744 : vec3<f32> = u_xlat26;
    let x_1746 : vec2<f32> = ((vec2<f32>(x_1739.x, x_1739.y) * vec2<f32>(x_1741.x, x_1741.x)) + vec2<f32>(x_1744.x, x_1744.y));
    let x_1747 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1746.x, x_1746.y, x_1747.z);
    let x_1750 : vec4<f32> = x_1721.x_MainLightWorldToLight[2i];
    let x_1752 : vec3<f32> = vs_TEXCOORD1;
    let x_1755 : vec3<f32> = u_xlat26;
    let x_1757 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1752.z, x_1752.z)) + vec2<f32>(x_1755.x, x_1755.y));
    let x_1758 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1757.x, x_1757.y, x_1758.z);
    let x_1760 : vec3<f32> = u_xlat26;
    let x_1763 : vec4<f32> = x_1721.x_MainLightWorldToLight[3i];
    let x_1765 : vec2<f32> = (vec2<f32>(x_1760.x, x_1760.y) + vec2<f32>(x_1763.x, x_1763.y));
    let x_1766 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1765.x, x_1765.y, x_1766.z);
    let x_1768 : vec3<f32> = u_xlat26;
    let x_1771 : vec2<f32> = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1772 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1771.x, x_1771.y, x_1772.z);
    let x_1779 : vec3<f32> = u_xlat26;
    let x_1782 : f32 = x_28.x_GlobalMipBias.x;
    let x_1783 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1779.x, x_1779.y), x_1782);
    u_xlat5 = x_1783;
    let x_1785 : f32 = x_1721.x_MainLightCookieTextureFormat;
    let x_1787 : f32 = x_1721.x_MainLightCookieTextureFormat;
    let x_1789 : f32 = x_1721.x_MainLightCookieTextureFormat;
    let x_1791 : f32 = x_1721.x_MainLightCookieTextureFormat;
    let x_1792 : vec4<f32> = vec4<f32>(x_1785, x_1787, x_1789, x_1791);
    let x_1799 : vec4<bool> = (vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1792.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1799.x, x_1799.y);
    let x_1802 : bool = u_xlatb26.y;
    if (x_1802) {
      let x_1807 : f32 = u_xlat5.w;
      x_1803 = x_1807;
    } else {
      let x_1810 : f32 = u_xlat5.x;
      x_1803 = x_1810;
    }
    let x_1811 : f32 = x_1803;
    u_xlat49 = x_1811;
    let x_1813 : bool = u_xlatb26.x;
    if (x_1813) {
      let x_1817 : vec4<f32> = u_xlat5;
      x_1814 = vec3<f32>(x_1817.x, x_1817.y, x_1817.z);
    } else {
      let x_1820 : f32 = u_xlat49;
      x_1814 = vec3<f32>(x_1820, x_1820, x_1820);
    }
    let x_1822 : vec3<f32> = x_1814;
    u_xlat26 = x_1822;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_1827 : vec3<f32> = u_xlat26;
  let x_1829 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat26 = (x_1827 * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : f32 = u_xlat70;
  let x_1834 : f32 = x_343.unity_LightData.z;
  u_xlat70 = (x_1832 * x_1834);
  let x_1836 : f32 = u_xlat70;
  let x_1838 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_1836, x_1836, x_1836) * x_1838);
  let x_1840 : vec4<f32> = u_xlat1;
  let x_1843 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat70 = dot(vec3<f32>(x_1840.x, x_1840.y, x_1840.z), vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1846, 0.0f, 1.0f);
  let x_1848 : f32 = u_xlat70;
  let x_1850 : vec3<f32> = u_xlat26;
  let x_1851 : vec3<f32> = (vec3<f32>(x_1848, x_1848, x_1848) * x_1850);
  let x_1852 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
  let x_1855 : f32 = u_xlat0.x;
  u_xlat70 = ((x_1855 * 10.0f) + 1.0f);
  let x_1859 : f32 = u_xlat70;
  u_xlat70 = exp2(x_1859);
  let x_1861 : vec3<f32> = u_xlat2;
  let x_1862 : f32 = u_xlat71;
  let x_1866 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1868 : vec3<f32> = ((x_1861 * vec3<f32>(x_1862, x_1862, x_1862)) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : vec4<f32> = u_xlat6;
  let x_1873 : vec4<f32> = u_xlat6;
  u_xlat4.w = dot(vec3<f32>(x_1871.x, x_1871.y, x_1871.z), vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1877 : vec4<f32> = u_xlat4;
  u_xlat4 = max(x_1877, vec4<f32>(0.0f, 0.0f, 0.0f, 1.17549435e-38f));
  let x_1882 : f32 = u_xlat4.w;
  u_xlat73 = inverseSqrt(x_1882);
  let x_1884 : f32 = u_xlat73;
  let x_1886 : vec4<f32> = u_xlat6;
  let x_1888 : vec3<f32> = (vec3<f32>(x_1884, x_1884, x_1884) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat1;
  let x_1893 : vec4<f32> = u_xlat6;
  u_xlat73 = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1896, 0.0f, 1.0f);
  let x_1898 : f32 = u_xlat73;
  u_xlat73 = log2(x_1898);
  let x_1900 : f32 = u_xlat70;
  let x_1901 : f32 = u_xlat73;
  u_xlat73 = (x_1900 * x_1901);
  let x_1903 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1903);
  let x_1905 : f32 = u_xlat73;
  let x_1908 : vec4<f32> = x_41.x_SpecColor;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1905, x_1905, x_1905) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1913 : vec3<f32> = u_xlat26;
  let x_1914 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_1913 * vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : vec4<f32> = u_xlat5;
  let x_1919 : vec4<f32> = u_xlat0;
  let x_1922 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1919.y, x_1919.z, x_1919.w)) + x_1922);
  let x_1925 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1927 : f32 = x_343.unity_LightData.y;
  u_xlat73 = min(x_1925, x_1927);
  let x_1930 : f32 = u_xlat73;
  u_xlatu73 = bitcast<u32>(i32(x_1930));
  let x_1934 : f32 = u_xlat3.x;
  let x_1937 : f32 = x_154.x_AdditionalShadowFadeParams.x;
  let x_1940 : f32 = x_154.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1934 * x_1937) + x_1940);
  let x_1944 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1944, 0.0f, 1.0f);
  let x_1949 : f32 = x_1721.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1951 : f32 = x_1721.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1953 : f32 = x_1721.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1955 : f32 = x_1721.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1956 : vec4<f32> = vec4<f32>(x_1949, x_1951, x_1953, x_1955);
  let x_1962 : vec4<bool> = (vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1956.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1962.x, x_1962.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1974 : u32 = u_xlatu_loop_1;
    let x_1975 : u32 = u_xlatu73;
    if ((x_1974 < x_1975)) {
    } else {
      break;
    }
    let x_1978 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1978 >> 2u);
    let x_1981 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1981 & 3u));
    let x_1985 : u32 = u_xlatu74;
    let x_1988 : vec4<f32> = x_343.unity_LightIndices[bitcast<i32>(x_1985)];
    let x_1998 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2003 : vec4<u32> = indexable[x_1998];
    u_xlat74 = dot(x_1988, bitcast<vec4<f32>>(x_2003));
    let x_2007 : f32 = u_xlat74;
    u_xlati74 = i32(x_2007);
    let x_2009 : vec3<f32> = vs_TEXCOORD1;
    let x_2020 : i32 = u_xlati74;
    let x_2022 : vec4<f32> = x_2019.x_AdditionalLightsPosition[x_2020];
    let x_2025 : i32 = u_xlati74;
    let x_2027 : vec4<f32> = x_2019.x_AdditionalLightsPosition[x_2025];
    let x_2029 : vec3<f32> = ((-(x_2009) * vec3<f32>(x_2022.w, x_2022.w, x_2022.w)) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2033 : vec4<f32> = u_xlat7;
    let x_2035 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2033.x, x_2033.y, x_2033.z), vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
    let x_2038 : f32 = u_xlat75;
    u_xlat75 = max(x_2038, 0.00006103515625f);
    let x_2041 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_2041);
    let x_2043 : f32 = u_xlat76;
    let x_2045 : vec4<f32> = u_xlat7;
    let x_2047 : vec3<f32> = (vec3<f32>(x_2043, x_2043, x_2043) * vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
    let x_2050 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_2050);
    let x_2052 : f32 = u_xlat75;
    let x_2053 : i32 = u_xlati74;
    let x_2055 : f32 = x_2019.x_AdditionalLightsAttenuation[x_2053].x;
    u_xlat75 = (x_2052 * x_2055);
    let x_2057 : f32 = u_xlat75;
    let x_2059 : f32 = u_xlat75;
    u_xlat75 = ((-(x_2057) * x_2059) + 1.0f);
    let x_2062 : f32 = u_xlat75;
    u_xlat75 = max(x_2062, 0.0f);
    let x_2064 : f32 = u_xlat75;
    let x_2065 : f32 = u_xlat75;
    u_xlat75 = (x_2064 * x_2065);
    let x_2067 : f32 = u_xlat75;
    let x_2068 : f32 = u_xlat76;
    u_xlat75 = (x_2067 * x_2068);
    let x_2070 : i32 = u_xlati74;
    let x_2072 : vec4<f32> = x_2019.x_AdditionalLightsSpotDir[x_2070];
    let x_2074 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_2072.x, x_2072.y, x_2072.z), vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
    let x_2077 : f32 = u_xlat76;
    let x_2078 : i32 = u_xlati74;
    let x_2080 : f32 = x_2019.x_AdditionalLightsAttenuation[x_2078].z;
    let x_2082 : i32 = u_xlati74;
    let x_2084 : f32 = x_2019.x_AdditionalLightsAttenuation[x_2082].w;
    u_xlat76 = ((x_2077 * x_2080) + x_2084);
    let x_2086 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2086, 0.0f, 1.0f);
    let x_2088 : f32 = u_xlat76;
    let x_2089 : f32 = u_xlat76;
    u_xlat76 = (x_2088 * x_2089);
    let x_2091 : f32 = u_xlat75;
    let x_2092 : f32 = u_xlat76;
    u_xlat75 = (x_2091 * x_2092);
    let x_2096 : i32 = u_xlati74;
    let x_2098 : f32 = x_154.x_AdditionalShadowParams[x_2096].w;
    u_xlati76 = i32(x_2098);
    let x_2103 : i32 = u_xlati76;
    u_xlatb8.x = (x_2103 >= 0i);
    let x_2107 : bool = u_xlatb8.x;
    if (x_2107) {
      let x_2111 : i32 = u_xlati74;
      let x_2113 : f32 = x_154.x_AdditionalShadowParams[x_2111].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2113, x_2113, x_2113, x_2113))));
      let x_2119 : bool = u_xlatb8.x;
      if (x_2119) {
        let x_2122 : vec4<f32> = u_xlat7;
        let x_2125 : vec4<f32> = u_xlat7;
        let x_2128 : vec4<bool> = (abs(vec4<f32>(x_2122.z, x_2122.z, x_2122.y, x_2122.z)) >= abs(vec4<f32>(x_2125.x, x_2125.y, x_2125.x, x_2125.x)));
        u_xlatb8 = vec3<bool>(x_2128.x, x_2128.y, x_2128.z);
        let x_2131 : bool = u_xlatb8.y;
        let x_2133 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2131 & x_2133);
        let x_2137 : vec4<f32> = u_xlat7;
        let x_2140 : vec4<bool> = (-(vec4<f32>(x_2137.z, x_2137.y, x_2137.x, x_2137.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2140.x, x_2140.y, x_2140.z);
        let x_2144 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2144);
        let x_2149 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2149);
        let x_2153 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2153);
        let x_2157 : bool = u_xlatb8.z;
        if (x_2157) {
          let x_2162 : f32 = u_xlat31.z;
          x_2158 = x_2162;
        } else {
          let x_2165 : f32 = u_xlat9.x;
          x_2158 = x_2165;
        }
        let x_2166 : f32 = x_2158;
        u_xlat54.x = x_2166;
        let x_2169 : bool = u_xlatb8.x;
        if (x_2169) {
          let x_2174 : f32 = u_xlat31.x;
          x_2170 = x_2174;
        } else {
          let x_2177 : f32 = u_xlat54.x;
          x_2170 = x_2177;
        }
        let x_2178 : f32 = x_2170;
        u_xlat8.x = x_2178;
        let x_2180 : i32 = u_xlati74;
        let x_2182 : f32 = x_154.x_AdditionalShadowParams[x_2180].w;
        u_xlat31.x = trunc(x_2182);
        let x_2186 : f32 = u_xlat8.x;
        let x_2188 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2186 + x_2188);
        let x_2192 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2192);
      }
      let x_2194 : i32 = u_xlati76;
      u_xlati76 = (x_2194 << bitcast<u32>(2i));
      let x_2196 : vec3<f32> = vs_TEXCOORD1;
      let x_2199 : i32 = u_xlati76;
      let x_2202 : i32 = u_xlati76;
      let x_2206 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_2199 + 1i) / 4i)][((x_2202 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2196.y, x_2196.y, x_2196.y, x_2196.y) * x_2206);
      let x_2208 : i32 = u_xlati76;
      let x_2210 : i32 = u_xlati76;
      let x_2213 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[(x_2208 / 4i)][(x_2210 % 4i)];
      let x_2214 : vec3<f32> = vs_TEXCOORD1;
      let x_2217 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2213 * vec4<f32>(x_2214.x, x_2214.x, x_2214.x, x_2214.x)) + x_2217);
      let x_2219 : i32 = u_xlati76;
      let x_2222 : i32 = u_xlati76;
      let x_2226 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_2219 + 2i) / 4i)][((x_2222 + 2i) % 4i)];
      let x_2227 : vec3<f32> = vs_TEXCOORD1;
      let x_2230 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2226 * vec4<f32>(x_2227.z, x_2227.z, x_2227.z, x_2227.z)) + x_2230);
      let x_2232 : vec4<f32> = u_xlat8;
      let x_2233 : i32 = u_xlati76;
      let x_2236 : i32 = u_xlati76;
      let x_2240 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_2233 + 3i) / 4i)][((x_2236 + 3i) % 4i)];
      u_xlat8 = (x_2232 + x_2240);
      let x_2242 : vec4<f32> = u_xlat8;
      let x_2244 : vec4<f32> = u_xlat8;
      let x_2246 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.y, x_2242.z) / vec3<f32>(x_2244.w, x_2244.w, x_2244.w));
      let x_2247 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
      let x_2250 : i32 = u_xlati74;
      let x_2252 : f32 = x_154.x_AdditionalShadowParams[x_2250].y;
      u_xlatb76 = (0.0f < x_2252);
      let x_2254 : bool = u_xlatb76;
      if (x_2254) {
        let x_2257 : i32 = u_xlati74;
        let x_2259 : f32 = x_154.x_AdditionalShadowParams[x_2257].y;
        u_xlatb76 = (1.0f == x_2259);
        let x_2261 : bool = u_xlatb76;
        if (x_2261) {
          let x_2264 : vec4<f32> = u_xlat8;
          let x_2268 : vec4<f32> = x_154.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2264.x, x_2264.y, x_2264.x, x_2264.y) + x_2268);
          let x_2271 : vec4<f32> = u_xlat9;
          let x_2272 : vec2<f32> = vec2<f32>(x_2271.x, x_2271.y);
          let x_2274 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
          let x_2282 : vec3<f32> = txVec30;
          let x_2284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
          u_xlat10.x = x_2284;
          let x_2287 : vec4<f32> = u_xlat9;
          let x_2288 : vec2<f32> = vec2<f32>(x_2287.z, x_2287.w);
          let x_2290 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
          let x_2297 : vec3<f32> = txVec31;
          let x_2299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
          u_xlat10.y = x_2299;
          let x_2301 : vec4<f32> = u_xlat8;
          let x_2305 : vec4<f32> = x_154.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y) + x_2305);
          let x_2308 : vec4<f32> = u_xlat9;
          let x_2309 : vec2<f32> = vec2<f32>(x_2308.x, x_2308.y);
          let x_2311 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
          let x_2318 : vec3<f32> = txVec32;
          let x_2320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
          u_xlat10.z = x_2320;
          let x_2323 : vec4<f32> = u_xlat9;
          let x_2324 : vec2<f32> = vec2<f32>(x_2323.z, x_2323.w);
          let x_2326 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2324.x, x_2324.y, x_2326);
          let x_2333 : vec3<f32> = txVec33;
          let x_2335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2333.xy, x_2333.z);
          u_xlat10.w = x_2335;
          let x_2337 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2337, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2341 : i32 = u_xlati74;
          let x_2343 : f32 = x_154.x_AdditionalShadowParams[x_2341].y;
          u_xlatb77 = (2.0f == x_2343);
          let x_2345 : bool = u_xlatb77;
          if (x_2345) {
            let x_2348 : vec4<f32> = u_xlat8;
            let x_2352 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2355 : vec2<f32> = ((vec2<f32>(x_2348.x, x_2348.y) * vec2<f32>(x_2352.z, x_2352.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2356 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
            let x_2358 : vec4<f32> = u_xlat9;
            let x_2360 : vec2<f32> = floor(vec2<f32>(x_2358.x, x_2358.y));
            let x_2361 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
            let x_2364 : vec4<f32> = u_xlat8;
            let x_2367 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2370 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2364.x, x_2364.y) * vec2<f32>(x_2367.z, x_2367.w)) + -(vec2<f32>(x_2370.x, x_2370.y)));
            let x_2374 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2374.x, x_2374.x, x_2374.y, x_2374.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2377 : vec4<f32> = u_xlat10;
            let x_2379 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2377.x, x_2377.x, x_2377.z, x_2377.z) * vec4<f32>(x_2379.x, x_2379.x, x_2379.z, x_2379.z));
            let x_2382 : vec4<f32> = u_xlat11;
            let x_2384 : vec2<f32> = (vec2<f32>(x_2382.y, x_2382.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2385 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2384.x, x_2385.y, x_2384.y, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat11;
            let x_2390 : vec2<f32> = u_xlat55;
            let x_2392 : vec2<f32> = ((vec2<f32>(x_2387.x, x_2387.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2390));
            let x_2393 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
            let x_2396 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2396) + vec2<f32>(1.0f, 1.0f));
            let x_2399 : vec2<f32> = u_xlat55;
            let x_2400 : vec2<f32> = min(x_2399, vec2<f32>(0.0f, 0.0f));
            let x_2401 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat12;
            let x_2406 : vec4<f32> = u_xlat12;
            let x_2409 : vec2<f32> = u_xlat57;
            let x_2410 : vec2<f32> = ((-(vec2<f32>(x_2403.x, x_2403.y)) * vec2<f32>(x_2406.x, x_2406.y)) + x_2409);
            let x_2411 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2410.x, x_2410.y, x_2411.z, x_2411.w);
            let x_2413 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2413, vec2<f32>(0.0f, 0.0f));
            let x_2415 : vec2<f32> = u_xlat55;
            let x_2417 : vec2<f32> = u_xlat55;
            let x_2419 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2415) * x_2417) + vec2<f32>(x_2419.y, x_2419.w));
            let x_2422 : vec4<f32> = u_xlat12;
            let x_2424 : vec2<f32> = (vec2<f32>(x_2422.x, x_2422.y) + vec2<f32>(1.0f, 1.0f));
            let x_2425 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2427 + vec2<f32>(1.0f, 1.0f));
            let x_2429 : vec4<f32> = u_xlat11;
            let x_2431 : vec2<f32> = (vec2<f32>(x_2429.x, x_2429.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2434 : vec2<f32> = u_xlat57;
            let x_2435 : vec2<f32> = (x_2434 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2436 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2435.x, x_2435.y, x_2436.z, x_2436.w);
            let x_2438 : vec4<f32> = u_xlat12;
            let x_2440 : vec2<f32> = (vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2441 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2443 : vec2<f32> = u_xlat55;
            let x_2444 : vec2<f32> = (x_2443 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2445 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2444.x, x_2444.y, x_2445.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2447.y, x_2447.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2451 : f32 = u_xlat12.x;
            u_xlat13.z = x_2451;
            let x_2454 : f32 = u_xlat55.x;
            u_xlat13.w = x_2454;
            let x_2457 : f32 = u_xlat14.x;
            u_xlat11.z = x_2457;
            let x_2460 : f32 = u_xlat10.x;
            u_xlat11.w = x_2460;
            let x_2462 : vec4<f32> = u_xlat11;
            let x_2464 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2462.z, x_2462.w, x_2462.x, x_2462.z) + vec4<f32>(x_2464.z, x_2464.w, x_2464.x, x_2464.z));
            let x_2468 : f32 = u_xlat13.y;
            u_xlat12.z = x_2468;
            let x_2471 : f32 = u_xlat55.y;
            u_xlat12.w = x_2471;
            let x_2474 : f32 = u_xlat11.y;
            u_xlat14.z = x_2474;
            let x_2477 : f32 = u_xlat10.z;
            u_xlat14.w = x_2477;
            let x_2479 : vec4<f32> = u_xlat12;
            let x_2481 : vec4<f32> = u_xlat14;
            let x_2483 : vec3<f32> = (vec3<f32>(x_2479.z, x_2479.y, x_2479.w) + vec3<f32>(x_2481.z, x_2481.y, x_2481.w));
            let x_2484 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
            let x_2486 : vec4<f32> = u_xlat11;
            let x_2488 : vec4<f32> = u_xlat15;
            let x_2490 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.z, x_2486.w) / vec3<f32>(x_2488.z, x_2488.w, x_2488.y));
            let x_2491 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
            let x_2493 : vec4<f32> = u_xlat11;
            let x_2495 : vec3<f32> = (vec3<f32>(x_2493.x, x_2493.y, x_2493.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2496 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2495.z, x_2496.w);
            let x_2498 : vec4<f32> = u_xlat14;
            let x_2500 : vec4<f32> = u_xlat10;
            let x_2502 : vec3<f32> = (vec3<f32>(x_2498.z, x_2498.y, x_2498.w) / vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
            let x_2503 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2502.x, x_2502.y, x_2502.z, x_2503.w);
            let x_2505 : vec4<f32> = u_xlat12;
            let x_2507 : vec3<f32> = (vec3<f32>(x_2505.x, x_2505.y, x_2505.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2508 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat11;
            let x_2513 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2515 : vec3<f32> = (vec3<f32>(x_2510.y, x_2510.x, x_2510.z) * vec3<f32>(x_2513.x, x_2513.x, x_2513.x));
            let x_2516 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
            let x_2518 : vec4<f32> = u_xlat12;
            let x_2521 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2523 : vec3<f32> = (vec3<f32>(x_2518.x, x_2518.y, x_2518.z) * vec3<f32>(x_2521.y, x_2521.y, x_2521.y));
            let x_2524 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
            let x_2527 : f32 = u_xlat12.x;
            u_xlat11.w = x_2527;
            let x_2529 : vec4<f32> = u_xlat9;
            let x_2532 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2535 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2529.x, x_2529.y, x_2529.x, x_2529.y) * vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.y)) + vec4<f32>(x_2535.y, x_2535.w, x_2535.x, x_2535.w));
            let x_2538 : vec4<f32> = u_xlat9;
            let x_2541 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2544 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2538.x, x_2538.y) * vec2<f32>(x_2541.x, x_2541.y)) + vec2<f32>(x_2544.z, x_2544.w));
            let x_2548 : f32 = u_xlat11.y;
            u_xlat12.w = x_2548;
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2551 : vec2<f32> = vec2<f32>(x_2550.y, x_2550.z);
            let x_2552 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2552.x, x_2551.x, x_2552.z, x_2551.y);
            let x_2554 : vec4<f32> = u_xlat9;
            let x_2557 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2560 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y) * vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.y)) + vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2560.y));
            let x_2563 : vec4<f32> = u_xlat9;
            let x_2566 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2569 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2563.x, x_2563.y, x_2563.x, x_2563.y) * vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y)) + vec4<f32>(x_2569.w, x_2569.y, x_2569.w, x_2569.z));
            let x_2572 : vec4<f32> = u_xlat9;
            let x_2575 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2578 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2572.x, x_2572.y, x_2572.x, x_2572.y) * vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y)) + vec4<f32>(x_2578.x, x_2578.w, x_2578.z, x_2578.w));
            let x_2581 : vec4<f32> = u_xlat10;
            let x_2583 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2581.x, x_2581.x, x_2581.x, x_2581.y) * vec4<f32>(x_2583.z, x_2583.w, x_2583.y, x_2583.z));
            let x_2586 : vec4<f32> = u_xlat10;
            let x_2588 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2586.y, x_2586.y, x_2586.z, x_2586.z) * x_2588);
            let x_2592 : f32 = u_xlat10.z;
            let x_2594 : f32 = u_xlat15.y;
            u_xlat77 = (x_2592 * x_2594);
            let x_2597 : vec4<f32> = u_xlat13;
            let x_2598 : vec2<f32> = vec2<f32>(x_2597.x, x_2597.y);
            let x_2600 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2598.x, x_2598.y, x_2600);
            let x_2607 : vec3<f32> = txVec34;
            let x_2609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2607.xy, x_2607.z);
            u_xlat9.x = x_2609;
            let x_2612 : vec4<f32> = u_xlat13;
            let x_2613 : vec2<f32> = vec2<f32>(x_2612.z, x_2612.w);
            let x_2615 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2613.x, x_2613.y, x_2615);
            let x_2623 : vec3<f32> = txVec35;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat32 = x_2625;
            let x_2626 : f32 = u_xlat32;
            let x_2628 : f32 = u_xlat16.y;
            u_xlat32 = (x_2626 * x_2628);
            let x_2631 : f32 = u_xlat16.x;
            let x_2633 : f32 = u_xlat9.x;
            let x_2635 : f32 = u_xlat32;
            u_xlat9.x = ((x_2631 * x_2633) + x_2635);
            let x_2639 : vec2<f32> = u_xlat55;
            let x_2641 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2639.x, x_2639.y, x_2641);
            let x_2648 : vec3<f32> = txVec36;
            let x_2650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2648.xy, x_2648.z);
            u_xlat32 = x_2650;
            let x_2652 : f32 = u_xlat16.z;
            let x_2653 : f32 = u_xlat32;
            let x_2656 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2652 * x_2653) + x_2656);
            let x_2660 : vec4<f32> = u_xlat12;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
            let x_2663 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec37;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat32 = x_2672;
            let x_2674 : f32 = u_xlat16.w;
            let x_2675 : f32 = u_xlat32;
            let x_2678 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2674 * x_2675) + x_2678);
            let x_2682 : vec4<f32> = u_xlat14;
            let x_2683 : vec2<f32> = vec2<f32>(x_2682.x, x_2682.y);
            let x_2685 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2683.x, x_2683.y, x_2685);
            let x_2692 : vec3<f32> = txVec38;
            let x_2694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2692.xy, x_2692.z);
            u_xlat32 = x_2694;
            let x_2696 : f32 = u_xlat17.x;
            let x_2697 : f32 = u_xlat32;
            let x_2700 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2696 * x_2697) + x_2700);
            let x_2704 : vec4<f32> = u_xlat14;
            let x_2705 : vec2<f32> = vec2<f32>(x_2704.z, x_2704.w);
            let x_2707 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
            let x_2714 : vec3<f32> = txVec39;
            let x_2716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2714.xy, x_2714.z);
            u_xlat32 = x_2716;
            let x_2718 : f32 = u_xlat17.y;
            let x_2719 : f32 = u_xlat32;
            let x_2722 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2718 * x_2719) + x_2722);
            let x_2726 : vec4<f32> = u_xlat12;
            let x_2727 : vec2<f32> = vec2<f32>(x_2726.z, x_2726.w);
            let x_2729 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2727.x, x_2727.y, x_2729);
            let x_2736 : vec3<f32> = txVec40;
            let x_2738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2736.xy, x_2736.z);
            u_xlat32 = x_2738;
            let x_2740 : f32 = u_xlat17.z;
            let x_2741 : f32 = u_xlat32;
            let x_2744 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2740 * x_2741) + x_2744);
            let x_2748 : vec4<f32> = u_xlat11;
            let x_2749 : vec2<f32> = vec2<f32>(x_2748.x, x_2748.y);
            let x_2751 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2749.x, x_2749.y, x_2751);
            let x_2758 : vec3<f32> = txVec41;
            let x_2760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2758.xy, x_2758.z);
            u_xlat32 = x_2760;
            let x_2762 : f32 = u_xlat17.w;
            let x_2763 : f32 = u_xlat32;
            let x_2766 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2762 * x_2763) + x_2766);
            let x_2770 : vec4<f32> = u_xlat11;
            let x_2771 : vec2<f32> = vec2<f32>(x_2770.z, x_2770.w);
            let x_2773 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2771.x, x_2771.y, x_2773);
            let x_2780 : vec3<f32> = txVec42;
            let x_2782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2780.xy, x_2780.z);
            u_xlat32 = x_2782;
            let x_2783 : f32 = u_xlat77;
            let x_2784 : f32 = u_xlat32;
            let x_2787 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2783 * x_2784) + x_2787);
          } else {
            let x_2790 : vec4<f32> = u_xlat8;
            let x_2793 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2796 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2793.z, x_2793.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2797 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2796.x, x_2796.y, x_2797.z, x_2797.w);
            let x_2799 : vec4<f32> = u_xlat9;
            let x_2801 : vec2<f32> = floor(vec2<f32>(x_2799.x, x_2799.y));
            let x_2802 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat8;
            let x_2807 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2810 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2804.x, x_2804.y) * vec2<f32>(x_2807.z, x_2807.w)) + -(vec2<f32>(x_2810.x, x_2810.y)));
            let x_2814 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2814.x, x_2814.x, x_2814.y, x_2814.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2817 : vec4<f32> = u_xlat10;
            let x_2819 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2817.x, x_2817.x, x_2817.z, x_2817.z) * vec4<f32>(x_2819.x, x_2819.x, x_2819.z, x_2819.z));
            let x_2822 : vec4<f32> = u_xlat11;
            let x_2824 : vec2<f32> = (vec2<f32>(x_2822.y, x_2822.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2825 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2825.x, x_2824.x, x_2825.z, x_2824.y);
            let x_2827 : vec4<f32> = u_xlat11;
            let x_2830 : vec2<f32> = u_xlat55;
            let x_2832 : vec2<f32> = ((vec2<f32>(x_2827.x, x_2827.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2830));
            let x_2833 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2832.x, x_2833.y, x_2832.y, x_2833.w);
            let x_2835 : vec2<f32> = u_xlat55;
            let x_2837 : vec2<f32> = (-(x_2835) + vec2<f32>(1.0f, 1.0f));
            let x_2838 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2837.x, x_2837.y, x_2838.z, x_2838.w);
            let x_2840 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2840, vec2<f32>(0.0f, 0.0f));
            let x_2842 : vec2<f32> = u_xlat57;
            let x_2844 : vec2<f32> = u_xlat57;
            let x_2846 : vec4<f32> = u_xlat11;
            let x_2848 : vec2<f32> = ((-(x_2842) * x_2844) + vec2<f32>(x_2846.x, x_2846.y));
            let x_2849 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2848.x, x_2848.y, x_2849.z, x_2849.w);
            let x_2851 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2851, vec2<f32>(0.0f, 0.0f));
            let x_2854 : vec2<f32> = u_xlat57;
            let x_2856 : vec2<f32> = u_xlat57;
            let x_2858 : vec4<f32> = u_xlat10;
            let x_2860 : vec2<f32> = ((-(x_2854) * x_2856) + vec2<f32>(x_2858.y, x_2858.w));
            let x_2861 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2860.x, x_2861.y, x_2860.y);
            let x_2863 : vec4<f32> = u_xlat11;
            let x_2865 : vec2<f32> = (vec2<f32>(x_2863.x, x_2863.y) + vec2<f32>(2.0f, 2.0f));
            let x_2866 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2868 : vec3<f32> = u_xlat33;
            let x_2870 : vec2<f32> = (vec2<f32>(x_2868.x, x_2868.z) + vec2<f32>(2.0f, 2.0f));
            let x_2871 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2871.x, x_2870.x, x_2871.z, x_2870.y);
            let x_2874 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2874 * 0.08163200318813323975f);
            let x_2877 : vec4<f32> = u_xlat10;
            let x_2879 : vec3<f32> = (vec3<f32>(x_2877.z, x_2877.x, x_2877.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2880 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
            let x_2882 : vec4<f32> = u_xlat11;
            let x_2884 : vec2<f32> = (vec2<f32>(x_2882.x, x_2882.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2885 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2884.x, x_2884.y, x_2885.z, x_2885.w);
            let x_2888 : f32 = u_xlat14.y;
            u_xlat13.x = x_2888;
            let x_2890 : vec2<f32> = u_xlat55;
            let x_2893 : vec2<f32> = ((vec2<f32>(x_2890.x, x_2890.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2896 : vec2<f32> = u_xlat55;
            let x_2899 : vec2<f32> = ((vec2<f32>(x_2896.x, x_2896.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2900 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2899.x, x_2900.y, x_2899.y, x_2900.w);
            let x_2903 : f32 = u_xlat10.x;
            u_xlat11.y = x_2903;
            let x_2906 : f32 = u_xlat12.y;
            u_xlat11.w = x_2906;
            let x_2908 : vec4<f32> = u_xlat11;
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2908 + x_2909);
            let x_2911 : vec2<f32> = u_xlat55;
            let x_2914 : vec2<f32> = ((vec2<f32>(x_2911.y, x_2911.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2915.x, x_2914.x, x_2915.z, x_2914.y);
            let x_2917 : vec2<f32> = u_xlat55;
            let x_2920 : vec2<f32> = ((vec2<f32>(x_2917.y, x_2917.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2921 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2920.x, x_2921.y, x_2920.y, x_2921.w);
            let x_2924 : f32 = u_xlat10.y;
            u_xlat12.y = x_2924;
            let x_2926 : vec4<f32> = u_xlat12;
            let x_2927 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2926 + x_2927);
            let x_2929 : vec4<f32> = u_xlat11;
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2929 / x_2930);
            let x_2932 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2932 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2934 : vec4<f32> = u_xlat12;
            let x_2935 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2934 / x_2935);
            let x_2937 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2937 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2939 : vec4<f32> = u_xlat11;
            let x_2942 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2939.w, x_2939.x, x_2939.y, x_2939.z) * vec4<f32>(x_2942.x, x_2942.x, x_2942.x, x_2942.x));
            let x_2945 : vec4<f32> = u_xlat12;
            let x_2948 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2945.x, x_2945.w, x_2945.y, x_2945.z) * vec4<f32>(x_2948.y, x_2948.y, x_2948.y, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat11;
            let x_2952 : vec3<f32> = vec3<f32>(x_2951.y, x_2951.z, x_2951.w);
            let x_2953 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2952.x, x_2953.y, x_2952.y, x_2952.z);
            let x_2956 : f32 = u_xlat12.x;
            u_xlat14.y = x_2956;
            let x_2958 : vec4<f32> = u_xlat9;
            let x_2961 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2964 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y) * vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y)) + vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2964.y));
            let x_2967 : vec4<f32> = u_xlat9;
            let x_2970 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2973 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2967.x, x_2967.y) * vec2<f32>(x_2970.x, x_2970.y)) + vec2<f32>(x_2973.w, x_2973.y));
            let x_2977 : f32 = u_xlat14.y;
            u_xlat11.y = x_2977;
            let x_2980 : f32 = u_xlat12.z;
            u_xlat14.y = x_2980;
            let x_2982 : vec4<f32> = u_xlat9;
            let x_2985 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y) * vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y)) + vec4<f32>(x_2988.x, x_2988.y, x_2988.z, x_2988.y));
            let x_2991 : vec4<f32> = u_xlat9;
            let x_2994 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_2997 : vec4<f32> = u_xlat14;
            let x_2999 : vec2<f32> = ((vec2<f32>(x_2991.x, x_2991.y) * vec2<f32>(x_2994.x, x_2994.y)) + vec2<f32>(x_2997.w, x_2997.y));
            let x_3000 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3003 : f32 = u_xlat14.y;
            u_xlat11.z = x_3003;
            let x_3005 : vec4<f32> = u_xlat9;
            let x_3008 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3011 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_3005.x, x_3005.y, x_3005.x, x_3005.y) * vec4<f32>(x_3008.x, x_3008.y, x_3008.x, x_3008.y)) + vec4<f32>(x_3011.x, x_3011.y, x_3011.x, x_3011.z));
            let x_3015 : f32 = u_xlat12.w;
            u_xlat14.y = x_3015;
            let x_3018 : vec4<f32> = u_xlat9;
            let x_3021 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3024 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3018.x, x_3018.y, x_3018.x, x_3018.y) * vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y)) + vec4<f32>(x_3024.x, x_3024.y, x_3024.z, x_3024.y));
            let x_3028 : vec4<f32> = u_xlat9;
            let x_3031 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3034 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3031.x, x_3031.y)) + vec2<f32>(x_3034.w, x_3034.y));
            let x_3038 : f32 = u_xlat14.y;
            u_xlat11.w = x_3038;
            let x_3041 : vec4<f32> = u_xlat9;
            let x_3044 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3044.x, x_3044.y)) + vec2<f32>(x_3047.x, x_3047.w));
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3051 : vec3<f32> = vec3<f32>(x_3050.x, x_3050.z, x_3050.w);
            let x_3052 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3051.x, x_3052.y, x_3051.y, x_3051.z);
            let x_3054 : vec4<f32> = u_xlat9;
            let x_3057 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3060 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y) * vec4<f32>(x_3057.x, x_3057.y, x_3057.x, x_3057.y)) + vec4<f32>(x_3060.x, x_3060.y, x_3060.z, x_3060.y));
            let x_3064 : vec4<f32> = u_xlat9;
            let x_3067 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3070 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3064.x, x_3064.y) * vec2<f32>(x_3067.x, x_3067.y)) + vec2<f32>(x_3070.w, x_3070.y));
            let x_3074 : f32 = u_xlat11.x;
            u_xlat12.x = x_3074;
            let x_3076 : vec4<f32> = u_xlat9;
            let x_3079 : vec4<f32> = x_154.x_AdditionalShadowmapSize;
            let x_3082 : vec4<f32> = u_xlat12;
            let x_3084 : vec2<f32> = ((vec2<f32>(x_3076.x, x_3076.y) * vec2<f32>(x_3079.x, x_3079.y)) + vec2<f32>(x_3082.x, x_3082.y));
            let x_3085 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3084.x, x_3084.y, x_3085.z, x_3085.w);
            let x_3088 : vec4<f32> = u_xlat10;
            let x_3090 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3088.x, x_3088.x, x_3088.x, x_3088.x) * x_3090);
            let x_3093 : vec4<f32> = u_xlat10;
            let x_3095 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3093.y, x_3093.y, x_3093.y, x_3093.y) * x_3095);
            let x_3098 : vec4<f32> = u_xlat10;
            let x_3100 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3098.z, x_3098.z, x_3098.z, x_3098.z) * x_3100);
            let x_3102 : vec4<f32> = u_xlat10;
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3102.w, x_3102.w, x_3102.w, x_3102.w) * x_3104);
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.x, x_3107.y);
            let x_3110 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec43;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat77 = x_3119;
            let x_3121 : vec4<f32> = u_xlat15;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.z, x_3121.w);
            let x_3124 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec44;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat11.x = x_3133;
            let x_3136 : f32 = u_xlat11.x;
            let x_3138 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3136 * x_3138);
            let x_3142 : f32 = u_xlat20.x;
            let x_3143 : f32 = u_xlat77;
            let x_3146 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3142 * x_3143) + x_3146);
            let x_3149 : vec2<f32> = u_xlat55;
            let x_3151 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3149.x, x_3149.y, x_3151);
            let x_3158 : vec3<f32> = txVec45;
            let x_3160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3158.xy, x_3158.z);
            u_xlat55.x = x_3160;
            let x_3163 : f32 = u_xlat20.z;
            let x_3165 : f32 = u_xlat55.x;
            let x_3167 : f32 = u_xlat77;
            u_xlat77 = ((x_3163 * x_3165) + x_3167);
            let x_3170 : vec4<f32> = u_xlat18;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.x, x_3170.y);
            let x_3173 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3180 : vec3<f32> = txVec46;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat55.x = x_3182;
            let x_3185 : f32 = u_xlat20.w;
            let x_3187 : f32 = u_xlat55.x;
            let x_3189 : f32 = u_xlat77;
            u_xlat77 = ((x_3185 * x_3187) + x_3189);
            let x_3192 : vec4<f32> = u_xlat16;
            let x_3193 : vec2<f32> = vec2<f32>(x_3192.x, x_3192.y);
            let x_3195 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3193.x, x_3193.y, x_3195);
            let x_3202 : vec3<f32> = txVec47;
            let x_3204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3202.xy, x_3202.z);
            u_xlat55.x = x_3204;
            let x_3207 : f32 = u_xlat21.x;
            let x_3209 : f32 = u_xlat55.x;
            let x_3211 : f32 = u_xlat77;
            u_xlat77 = ((x_3207 * x_3209) + x_3211);
            let x_3214 : vec4<f32> = u_xlat16;
            let x_3215 : vec2<f32> = vec2<f32>(x_3214.z, x_3214.w);
            let x_3217 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec48;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat55.x = x_3226;
            let x_3229 : f32 = u_xlat21.y;
            let x_3231 : f32 = u_xlat55.x;
            let x_3233 : f32 = u_xlat77;
            u_xlat77 = ((x_3229 * x_3231) + x_3233);
            let x_3236 : vec4<f32> = u_xlat17;
            let x_3237 : vec2<f32> = vec2<f32>(x_3236.x, x_3236.y);
            let x_3239 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3237.x, x_3237.y, x_3239);
            let x_3246 : vec3<f32> = txVec49;
            let x_3248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3246.xy, x_3246.z);
            u_xlat55.x = x_3248;
            let x_3251 : f32 = u_xlat21.z;
            let x_3253 : f32 = u_xlat55.x;
            let x_3255 : f32 = u_xlat77;
            u_xlat77 = ((x_3251 * x_3253) + x_3255);
            let x_3258 : vec4<f32> = u_xlat18;
            let x_3259 : vec2<f32> = vec2<f32>(x_3258.z, x_3258.w);
            let x_3261 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3268 : vec3<f32> = txVec50;
            let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
            u_xlat55.x = x_3270;
            let x_3273 : f32 = u_xlat21.w;
            let x_3275 : f32 = u_xlat55.x;
            let x_3277 : f32 = u_xlat77;
            u_xlat77 = ((x_3273 * x_3275) + x_3277);
            let x_3280 : vec4<f32> = u_xlat19;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec51;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat55.x = x_3292;
            let x_3295 : f32 = u_xlat22.x;
            let x_3297 : f32 = u_xlat55.x;
            let x_3299 : f32 = u_xlat77;
            u_xlat77 = ((x_3295 * x_3297) + x_3299);
            let x_3302 : vec4<f32> = u_xlat19;
            let x_3303 : vec2<f32> = vec2<f32>(x_3302.z, x_3302.w);
            let x_3305 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3303.x, x_3303.y, x_3305);
            let x_3312 : vec3<f32> = txVec52;
            let x_3314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3312.xy, x_3312.z);
            u_xlat55.x = x_3314;
            let x_3317 : f32 = u_xlat22.y;
            let x_3319 : f32 = u_xlat55.x;
            let x_3321 : f32 = u_xlat77;
            u_xlat77 = ((x_3317 * x_3319) + x_3321);
            let x_3324 : vec2<f32> = u_xlat34;
            let x_3326 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec53;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat55.x = x_3335;
            let x_3338 : f32 = u_xlat22.z;
            let x_3340 : f32 = u_xlat55.x;
            let x_3342 : f32 = u_xlat77;
            u_xlat77 = ((x_3338 * x_3340) + x_3342);
            let x_3345 : vec2<f32> = u_xlat63;
            let x_3347 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
            let x_3354 : vec3<f32> = txVec54;
            let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
            u_xlat55.x = x_3356;
            let x_3359 : f32 = u_xlat22.w;
            let x_3361 : f32 = u_xlat55.x;
            let x_3363 : f32 = u_xlat77;
            u_xlat77 = ((x_3359 * x_3361) + x_3363);
            let x_3366 : vec4<f32> = u_xlat14;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.x, x_3366.y);
            let x_3369 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec55;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat55.x = x_3378;
            let x_3381 : f32 = u_xlat10.x;
            let x_3383 : f32 = u_xlat55.x;
            let x_3385 : f32 = u_xlat77;
            u_xlat77 = ((x_3381 * x_3383) + x_3385);
            let x_3388 : vec4<f32> = u_xlat14;
            let x_3389 : vec2<f32> = vec2<f32>(x_3388.z, x_3388.w);
            let x_3391 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3389.x, x_3389.y, x_3391);
            let x_3398 : vec3<f32> = txVec56;
            let x_3400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3398.xy, x_3398.z);
            u_xlat55.x = x_3400;
            let x_3403 : f32 = u_xlat10.y;
            let x_3405 : f32 = u_xlat55.x;
            let x_3407 : f32 = u_xlat77;
            u_xlat77 = ((x_3403 * x_3405) + x_3407);
            let x_3410 : vec2<f32> = u_xlat58;
            let x_3412 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec57;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat55.x = x_3421;
            let x_3424 : f32 = u_xlat10.z;
            let x_3426 : f32 = u_xlat55.x;
            let x_3428 : f32 = u_xlat77;
            u_xlat77 = ((x_3424 * x_3426) + x_3428);
            let x_3431 : vec4<f32> = u_xlat9;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
            let x_3434 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec58;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat9.x = x_3443;
            let x_3446 : f32 = u_xlat10.w;
            let x_3448 : f32 = u_xlat9.x;
            let x_3450 : f32 = u_xlat77;
            u_xlat76 = ((x_3446 * x_3448) + x_3450);
          }
        }
      } else {
        let x_3454 : vec4<f32> = u_xlat8;
        let x_3455 : vec2<f32> = vec2<f32>(x_3454.x, x_3454.y);
        let x_3457 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
        let x_3464 : vec3<f32> = txVec59;
        let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
        u_xlat76 = x_3466;
      }
      let x_3467 : i32 = u_xlati74;
      let x_3469 : f32 = x_154.x_AdditionalShadowParams[x_3467].x;
      u_xlat8.x = (1.0f + -(x_3469));
      let x_3473 : f32 = u_xlat76;
      let x_3474 : i32 = u_xlati74;
      let x_3476 : f32 = x_154.x_AdditionalShadowParams[x_3474].x;
      let x_3479 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3473 * x_3476) + x_3479);
      let x_3482 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3482);
      let x_3487 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3487 >= 1.0f);
      let x_3489 : bool = u_xlatb31;
      let x_3491 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3489 | x_3491);
      let x_3495 : bool = u_xlatb8.x;
      let x_3496 : f32 = u_xlat76;
      u_xlat76 = select(x_3496, 1.0f, x_3495);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3499 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3499) + 1.0f);
    let x_3504 : f32 = u_xlat3.x;
    let x_3506 : f32 = u_xlat8.x;
    let x_3508 : f32 = u_xlat76;
    u_xlat76 = ((x_3504 * x_3506) + x_3508);
    let x_3511 : i32 = u_xlati74;
    u_xlati8 = (1i << bitcast<u32>((x_3511 & 31i)));
    let x_3515 : i32 = u_xlati8;
    let x_3518 : f32 = x_1721.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_3515) & bitcast<u32>(x_3518)));
    let x_3522 : i32 = u_xlati8;
    if ((x_3522 != 0i)) {
      let x_3526 : i32 = u_xlati74;
      let x_3528 : f32 = x_1721.x_AdditionalLightsLightTypes[x_3526].el;
      u_xlati8 = i32(x_3528);
      let x_3531 : i32 = u_xlati8;
      u_xlati31 = select(1i, 0i, (x_3531 != 0i));
      let x_3535 : i32 = u_xlati74;
      u_xlati54 = (x_3535 << bitcast<u32>(2i));
      let x_3537 : i32 = u_xlati31;
      if ((x_3537 != 0i)) {
        let x_3541 : vec3<f32> = vs_TEXCOORD1;
        let x_3543 : i32 = u_xlati54;
        let x_3546 : i32 = u_xlati54;
        let x_3550 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3543 + 1i) / 4i)][((x_3546 + 1i) % 4i)];
        let x_3552 : vec3<f32> = (vec3<f32>(x_3541.y, x_3541.y, x_3541.y) * vec3<f32>(x_3550.x, x_3550.y, x_3550.w));
        let x_3553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
        let x_3555 : i32 = u_xlati54;
        let x_3557 : i32 = u_xlati54;
        let x_3560 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[(x_3555 / 4i)][(x_3557 % 4i)];
        let x_3562 : vec3<f32> = vs_TEXCOORD1;
        let x_3565 : vec4<f32> = u_xlat9;
        let x_3567 : vec3<f32> = ((vec3<f32>(x_3560.x, x_3560.y, x_3560.w) * vec3<f32>(x_3562.x, x_3562.x, x_3562.x)) + vec3<f32>(x_3565.x, x_3565.y, x_3565.z));
        let x_3568 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3568.w);
        let x_3570 : i32 = u_xlati54;
        let x_3573 : i32 = u_xlati54;
        let x_3577 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3570 + 2i) / 4i)][((x_3573 + 2i) % 4i)];
        let x_3579 : vec3<f32> = vs_TEXCOORD1;
        let x_3582 : vec4<f32> = u_xlat9;
        let x_3584 : vec3<f32> = ((vec3<f32>(x_3577.x, x_3577.y, x_3577.w) * vec3<f32>(x_3579.z, x_3579.z, x_3579.z)) + vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
        let x_3585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3584.x, x_3584.y, x_3584.z, x_3585.w);
        let x_3587 : vec4<f32> = u_xlat9;
        let x_3589 : i32 = u_xlati54;
        let x_3592 : i32 = u_xlati54;
        let x_3596 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3589 + 3i) / 4i)][((x_3592 + 3i) % 4i)];
        let x_3598 : vec3<f32> = (vec3<f32>(x_3587.x, x_3587.y, x_3587.z) + vec3<f32>(x_3596.x, x_3596.y, x_3596.w));
        let x_3599 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3598.x, x_3598.y, x_3598.z, x_3599.w);
        let x_3601 : vec4<f32> = u_xlat9;
        let x_3603 : vec4<f32> = u_xlat9;
        let x_3605 : vec2<f32> = (vec2<f32>(x_3601.x, x_3601.y) / vec2<f32>(x_3603.z, x_3603.z));
        let x_3606 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3605.x, x_3606.y, x_3605.y);
        let x_3608 : vec3<f32> = u_xlat31;
        let x_3611 : vec2<f32> = ((vec2<f32>(x_3608.x, x_3608.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3612 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3611.x, x_3612.y, x_3611.y);
        let x_3614 : vec3<f32> = u_xlat31;
        let x_3618 : vec2<f32> = clamp(vec2<f32>(x_3614.x, x_3614.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3619 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3618.x, x_3619.y, x_3618.y);
        let x_3621 : i32 = u_xlati74;
        let x_3623 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3621];
        let x_3625 : vec3<f32> = u_xlat31;
        let x_3628 : i32 = u_xlati74;
        let x_3630 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3628];
        let x_3632 : vec2<f32> = ((vec2<f32>(x_3623.x, x_3623.y) * vec2<f32>(x_3625.x, x_3625.z)) + vec2<f32>(x_3630.z, x_3630.w));
        let x_3633 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_3632.x, x_3633.y, x_3632.y);
      } else {
        let x_3636 : i32 = u_xlati8;
        u_xlatb8.x = (x_3636 == 1i);
        let x_3640 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_3640);
        let x_3642 : i32 = u_xlati8;
        if ((x_3642 != 0i)) {
          let x_3646 : vec3<f32> = vs_TEXCOORD1;
          let x_3648 : i32 = u_xlati54;
          let x_3651 : i32 = u_xlati54;
          let x_3655 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3648 + 1i) / 4i)][((x_3651 + 1i) % 4i)];
          let x_3657 : vec2<f32> = (vec2<f32>(x_3646.y, x_3646.y) * vec2<f32>(x_3655.x, x_3655.y));
          let x_3658 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3657.x, x_3657.y, x_3658.z, x_3658.w);
          let x_3660 : i32 = u_xlati54;
          let x_3662 : i32 = u_xlati54;
          let x_3665 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[(x_3660 / 4i)][(x_3662 % 4i)];
          let x_3667 : vec3<f32> = vs_TEXCOORD1;
          let x_3670 : vec4<f32> = u_xlat9;
          let x_3672 : vec2<f32> = ((vec2<f32>(x_3665.x, x_3665.y) * vec2<f32>(x_3667.x, x_3667.x)) + vec2<f32>(x_3670.x, x_3670.y));
          let x_3673 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3672.x, x_3672.y, x_3673.z, x_3673.w);
          let x_3675 : i32 = u_xlati54;
          let x_3678 : i32 = u_xlati54;
          let x_3682 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3675 + 2i) / 4i)][((x_3678 + 2i) % 4i)];
          let x_3684 : vec3<f32> = vs_TEXCOORD1;
          let x_3687 : vec4<f32> = u_xlat9;
          let x_3689 : vec2<f32> = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3684.z, x_3684.z)) + vec2<f32>(x_3687.x, x_3687.y));
          let x_3690 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3689.x, x_3689.y, x_3690.z, x_3690.w);
          let x_3692 : vec4<f32> = u_xlat9;
          let x_3694 : i32 = u_xlati54;
          let x_3697 : i32 = u_xlati54;
          let x_3701 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3694 + 3i) / 4i)][((x_3697 + 3i) % 4i)];
          let x_3703 : vec2<f32> = (vec2<f32>(x_3692.x, x_3692.y) + vec2<f32>(x_3701.x, x_3701.y));
          let x_3704 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3703.x, x_3703.y, x_3704.z, x_3704.w);
          let x_3706 : vec4<f32> = u_xlat9;
          let x_3709 : vec2<f32> = ((vec2<f32>(x_3706.x, x_3706.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3710 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3709.x, x_3709.y, x_3710.z, x_3710.w);
          let x_3712 : vec4<f32> = u_xlat9;
          let x_3714 : vec2<f32> = fract(vec2<f32>(x_3712.x, x_3712.y));
          let x_3715 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3714.x, x_3714.y, x_3715.z, x_3715.w);
          let x_3717 : i32 = u_xlati74;
          let x_3719 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3717];
          let x_3721 : vec4<f32> = u_xlat9;
          let x_3724 : i32 = u_xlati74;
          let x_3726 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3724];
          let x_3728 : vec2<f32> = ((vec2<f32>(x_3719.x, x_3719.y) * vec2<f32>(x_3721.x, x_3721.y)) + vec2<f32>(x_3726.z, x_3726.w));
          let x_3729 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3728.x, x_3729.y, x_3728.y);
        } else {
          let x_3732 : vec3<f32> = vs_TEXCOORD1;
          let x_3734 : i32 = u_xlati54;
          let x_3737 : i32 = u_xlati54;
          let x_3741 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3734 + 1i) / 4i)][((x_3737 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3732.y, x_3732.y, x_3732.y, x_3732.y) * x_3741);
          let x_3743 : i32 = u_xlati54;
          let x_3745 : i32 = u_xlati54;
          let x_3748 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[(x_3743 / 4i)][(x_3745 % 4i)];
          let x_3749 : vec3<f32> = vs_TEXCOORD1;
          let x_3752 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3748 * vec4<f32>(x_3749.x, x_3749.x, x_3749.x, x_3749.x)) + x_3752);
          let x_3754 : i32 = u_xlati54;
          let x_3757 : i32 = u_xlati54;
          let x_3761 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3754 + 2i) / 4i)][((x_3757 + 2i) % 4i)];
          let x_3762 : vec3<f32> = vs_TEXCOORD1;
          let x_3765 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3761 * vec4<f32>(x_3762.z, x_3762.z, x_3762.z, x_3762.z)) + x_3765);
          let x_3767 : vec4<f32> = u_xlat9;
          let x_3768 : i32 = u_xlati54;
          let x_3771 : i32 = u_xlati54;
          let x_3775 : vec4<f32> = x_1721.x_AdditionalLightsWorldToLights[((x_3768 + 3i) / 4i)][((x_3771 + 3i) % 4i)];
          u_xlat9 = (x_3767 + x_3775);
          let x_3777 : vec4<f32> = u_xlat9;
          let x_3779 : vec4<f32> = u_xlat9;
          let x_3781 : vec3<f32> = (vec3<f32>(x_3777.x, x_3777.y, x_3777.z) / vec3<f32>(x_3779.w, x_3779.w, x_3779.w));
          let x_3782 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3781.x, x_3781.y, x_3781.z, x_3782.w);
          let x_3784 : vec4<f32> = u_xlat9;
          let x_3786 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_3784.x, x_3784.y, x_3784.z), vec3<f32>(x_3786.x, x_3786.y, x_3786.z));
          let x_3791 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_3791);
          let x_3794 : vec4<f32> = u_xlat8;
          let x_3796 : vec4<f32> = u_xlat9;
          let x_3798 : vec3<f32> = (vec3<f32>(x_3794.x, x_3794.x, x_3794.x) * vec3<f32>(x_3796.x, x_3796.y, x_3796.z));
          let x_3799 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3798.x, x_3798.y, x_3798.z, x_3799.w);
          let x_3801 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_3801.x, x_3801.y, x_3801.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3808 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_3808, 0.00000099999999747524f);
          let x_3813 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_3813);
          let x_3816 : vec4<f32> = u_xlat8;
          let x_3818 : vec4<f32> = u_xlat9;
          let x_3820 : vec3<f32> = (vec3<f32>(x_3816.x, x_3816.x, x_3816.x) * vec3<f32>(x_3818.z, x_3818.x, x_3818.y));
          let x_3821 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3820.x, x_3820.y, x_3820.z, x_3821.w);
          let x_3824 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3824);
          let x_3828 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3828, 0.0f, 1.0f);
          let x_3832 : vec4<f32> = u_xlat10;
          let x_3834 : vec4<bool> = (vec4<f32>(x_3832.y, x_3832.z, x_3832.y, x_3832.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3834.x, x_3834.y);
          let x_3837 : bool = u_xlatb55.x;
          if (x_3837) {
            let x_3842 : f32 = u_xlat10.x;
            x_3838 = x_3842;
          } else {
            let x_3845 : f32 = u_xlat10.x;
            x_3838 = -(x_3845);
          }
          let x_3847 : f32 = x_3838;
          u_xlat55.x = x_3847;
          let x_3850 : bool = u_xlatb55.y;
          if (x_3850) {
            let x_3855 : f32 = u_xlat10.x;
            x_3851 = x_3855;
          } else {
            let x_3858 : f32 = u_xlat10.x;
            x_3851 = -(x_3858);
          }
          let x_3860 : f32 = x_3851;
          u_xlat55.y = x_3860;
          let x_3862 : vec4<f32> = u_xlat9;
          let x_3864 : vec4<f32> = u_xlat8;
          let x_3867 : vec2<f32> = u_xlat55;
          let x_3868 : vec2<f32> = ((vec2<f32>(x_3862.x, x_3862.y) * vec2<f32>(x_3864.x, x_3864.x)) + x_3867);
          let x_3869 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3868.x, x_3869.y, x_3868.y, x_3869.w);
          let x_3871 : vec4<f32> = u_xlat8;
          let x_3874 : vec2<f32> = ((vec2<f32>(x_3871.x, x_3871.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3875 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3874.x, x_3875.y, x_3874.y, x_3875.w);
          let x_3877 : vec4<f32> = u_xlat8;
          let x_3881 : vec2<f32> = clamp(vec2<f32>(x_3877.x, x_3877.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3882 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3881.x, x_3882.y, x_3881.y, x_3882.w);
          let x_3884 : i32 = u_xlati74;
          let x_3886 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3884];
          let x_3888 : vec4<f32> = u_xlat8;
          let x_3891 : i32 = u_xlati74;
          let x_3893 : vec4<f32> = x_1721.x_AdditionalLightsCookieAtlasUVRects[x_3891];
          let x_3895 : vec2<f32> = ((vec2<f32>(x_3886.x, x_3886.y) * vec2<f32>(x_3888.x, x_3888.z)) + vec2<f32>(x_3893.z, x_3893.w));
          let x_3896 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3895.x, x_3896.y, x_3895.y);
        }
      }
      let x_3903 : vec3<f32> = u_xlat31;
      let x_3905 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3903.x, x_3903.z), 0.0f);
      u_xlat8 = x_3905;
      let x_3907 : bool = u_xlatb5.y;
      if (x_3907) {
        let x_3912 : f32 = u_xlat8.w;
        x_3908 = x_3912;
      } else {
        let x_3915 : f32 = u_xlat8.x;
        x_3908 = x_3915;
      }
      let x_3916 : f32 = x_3908;
      u_xlat77 = x_3916;
      let x_3918 : bool = u_xlatb5.x;
      if (x_3918) {
        let x_3922 : vec4<f32> = u_xlat8;
        x_3919 = vec3<f32>(x_3922.x, x_3922.y, x_3922.z);
      } else {
        let x_3925 : f32 = u_xlat77;
        x_3919 = vec3<f32>(x_3925, x_3925, x_3925);
      }
      let x_3927 : vec3<f32> = x_3919;
      let x_3928 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3927.x, x_3927.y, x_3927.z, x_3928.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3934 : vec4<f32> = u_xlat8;
    let x_3936 : i32 = u_xlati74;
    let x_3938 : vec4<f32> = x_2019.x_AdditionalLightsColor[x_3936];
    let x_3940 : vec3<f32> = (vec3<f32>(x_3934.x, x_3934.y, x_3934.z) * vec3<f32>(x_3938.x, x_3938.y, x_3938.z));
    let x_3941 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3940.x, x_3940.y, x_3940.z, x_3941.w);
    let x_3943 : f32 = u_xlat75;
    let x_3944 : f32 = u_xlat76;
    u_xlat74 = (x_3943 * x_3944);
    let x_3946 : f32 = u_xlat74;
    let x_3948 : vec4<f32> = u_xlat8;
    let x_3950 : vec3<f32> = (vec3<f32>(x_3946, x_3946, x_3946) * vec3<f32>(x_3948.x, x_3948.y, x_3948.z));
    let x_3951 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3950.x, x_3950.y, x_3950.z, x_3951.w);
    let x_3953 : vec4<f32> = u_xlat1;
    let x_3955 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3953.x, x_3953.y, x_3953.z), vec3<f32>(x_3955.x, x_3955.y, x_3955.z));
    let x_3958 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3958, 0.0f, 1.0f);
    let x_3960 : f32 = u_xlat74;
    let x_3962 : vec4<f32> = u_xlat8;
    let x_3964 : vec3<f32> = (vec3<f32>(x_3960, x_3960, x_3960) * vec3<f32>(x_3962.x, x_3962.y, x_3962.z));
    let x_3965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3964.x, x_3964.y, x_3964.z, x_3965.w);
    let x_3967 : vec3<f32> = u_xlat2;
    let x_3968 : f32 = u_xlat71;
    let x_3971 : vec4<f32> = u_xlat7;
    let x_3973 : vec3<f32> = ((x_3967 * vec3<f32>(x_3968, x_3968, x_3968)) + vec3<f32>(x_3971.x, x_3971.y, x_3971.z));
    let x_3974 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3973.x, x_3973.y, x_3973.z, x_3974.w);
    let x_3976 : vec4<f32> = u_xlat7;
    let x_3978 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3976.x, x_3976.y, x_3976.z), vec3<f32>(x_3978.x, x_3978.y, x_3978.z));
    let x_3981 : f32 = u_xlat74;
    u_xlat74 = max(x_3981, 1.17549435e-38f);
    let x_3983 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3983);
    let x_3985 : f32 = u_xlat74;
    let x_3987 : vec4<f32> = u_xlat7;
    let x_3989 : vec3<f32> = (vec3<f32>(x_3985, x_3985, x_3985) * vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
    let x_3990 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
    let x_3992 : vec4<f32> = u_xlat1;
    let x_3994 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3992.x, x_3992.y, x_3992.z), vec3<f32>(x_3994.x, x_3994.y, x_3994.z));
    let x_3997 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3997, 0.0f, 1.0f);
    let x_3999 : f32 = u_xlat74;
    u_xlat74 = log2(x_3999);
    let x_4001 : f32 = u_xlat70;
    let x_4002 : f32 = u_xlat74;
    u_xlat74 = (x_4001 * x_4002);
    let x_4004 : f32 = u_xlat74;
    u_xlat74 = exp2(x_4004);
    let x_4006 : f32 = u_xlat74;
    let x_4009 : vec4<f32> = x_41.x_SpecColor;
    let x_4011 : vec3<f32> = (vec3<f32>(x_4006, x_4006, x_4006) * vec3<f32>(x_4009.x, x_4009.y, x_4009.z));
    let x_4012 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
    let x_4014 : vec4<f32> = u_xlat7;
    let x_4016 : vec4<f32> = u_xlat8;
    let x_4018 : vec3<f32> = (vec3<f32>(x_4014.x, x_4014.y, x_4014.z) * vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
    let x_4021 : vec4<f32> = u_xlat9;
    let x_4023 : vec4<f32> = u_xlat0;
    let x_4026 : vec4<f32> = u_xlat7;
    let x_4028 : vec3<f32> = ((vec3<f32>(x_4021.x, x_4021.y, x_4021.z) * vec3<f32>(x_4023.y, x_4023.z, x_4023.w)) + vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4029 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
    let x_4031 : vec4<f32> = u_xlat6;
    let x_4033 : vec4<f32> = u_xlat7;
    let x_4035 : vec3<f32> = (vec3<f32>(x_4031.x, x_4031.y, x_4031.z) + vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
    let x_4036 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_4035.x, x_4035.y, x_4035.z, x_4036.w);

    continuing {
      let x_4038 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4038 + bitcast<u32>(1i));
    }
  }
  let x_4041 : vec4<f32> = u_xlat4;
  let x_4043 : vec4<f32> = u_xlat0;
  let x_4046 : vec3<f32> = u_xlat26;
  u_xlat23 = ((vec3<f32>(x_4041.x, x_4041.y, x_4041.z) * vec3<f32>(x_4043.y, x_4043.z, x_4043.w)) + x_4046);
  let x_4050 : vec4<f32> = u_xlat6;
  let x_4052 : vec3<f32> = u_xlat23;
  let x_4053 : vec3<f32> = (vec3<f32>(x_4050.x, x_4050.y, x_4050.z) + x_4052);
  let x_4054 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);
  let x_4058 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_4058 == 1.0f);
  let x_4060 : bool = u_xlatb23;
  if (x_4060) {
    let x_4065 : f32 = u_xlat0.x;
    x_4061 = x_4065;
  } else {
    x_4061 = 1.0f;
  }
  let x_4067 : f32 = x_4061;
  SV_Target0.w = x_4067;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


