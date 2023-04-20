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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_173 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_257 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlatb27 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1609 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlati75 : i32;

@group(1) @binding(1) var<uniform> x_1912 : AdditionalLights;

var<private> u_xlat76 : f32;

var<private> u_xlati8 : i32;

var<private> u_xlatb31 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb77 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat77 : f32;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb54 : bool;

var<private> u_xlati31 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlati77 : i32;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu74 : u32;

var<private> u_xlatb75 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
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
  var x_1694 : f32;
  var x_1706 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2063 : f32;
  var x_2074 : f32;
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
  var x_3407 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_3754 : f32;
  var x_3767 : f32;
  var x_3826 : f32;
  var x_3838 : vec3<f32>;
  var x_3997 : f32;
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
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat24;
    x_98 = x_101;
  } else {
    let x_103 : vec4<f32> = u_xlat2;
    x_98 = vec3<f32>(x_103.x, x_103.y, x_103.z);
  }
  let x_105 : vec3<f32> = x_98;
  u_xlat1 = x_105;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_111);
  let x_113 : f32 = u_xlat70;
  let x_115 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = (vec3<f32>(x_113, x_113, x_113) * x_115);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec3<f32> = u_xlat1;
  let x_120 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat70;
  u_xlat70 = max(x_122, 0.00006103515625f);
  let x_125 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_125);
  let x_130 : f32 = vs_TEXCOORD1.y;
  let x_132 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3 = (x_130 * x_132);
  let x_135 : f32 = x_28.unity_MatrixV[0i].z;
  let x_137 : f32 = vs_TEXCOORD1.x;
  let x_139 : f32 = u_xlat3;
  u_xlat3 = ((x_135 * x_137) + x_139);
  let x_142 : f32 = x_28.unity_MatrixV[2i].z;
  let x_144 : f32 = vs_TEXCOORD1.z;
  let x_146 : f32 = u_xlat3;
  u_xlat3 = ((x_142 * x_144) + x_146);
  let x_148 : f32 = u_xlat3;
  let x_151 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat3 = (x_148 + x_151);
  let x_153 : f32 = u_xlat3;
  let x_157 : f32 = x_28.x_ProjectionParams.y;
  u_xlat3 = (-(x_153) + -(x_157));
  let x_160 : f32 = u_xlat3;
  u_xlat3 = max(x_160, 0.0f);
  let x_162 : f32 = u_xlat3;
  let x_165 : f32 = x_28.unity_FogParams.x;
  u_xlat3 = (x_162 * x_165);
  u_xlat2.w = 1.0f;
  let x_176 : vec4<f32> = x_173.unity_SHAr;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_176, x_177);
  let x_182 : vec4<f32> = x_173.unity_SHAg;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_182, x_183);
  let x_188 : vec4<f32> = x_173.unity_SHAb;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_188, x_189);
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_193.y, x_193.z, x_193.z, x_193.x) * vec4<f32>(x_195.x, x_195.y, x_195.z, x_195.z));
  let x_201 : vec4<f32> = x_173.unity_SHBr;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_173.unity_SHBg;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_173.unity_SHBb;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_213, x_214);
  let x_219 : f32 = u_xlat2.y;
  let x_221 : f32 = u_xlat2.y;
  u_xlat71 = (x_219 * x_221);
  let x_224 : f32 = u_xlat2.x;
  let x_226 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat71;
  u_xlat71 = ((x_224 * x_226) + -(x_228));
  let x_234 : vec4<f32> = x_173.unity_SHC;
  let x_236 : f32 = u_xlat71;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236, x_236, x_236)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec3<f32> = u_xlat26;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_242 + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_246, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_260 : f32 = x_257.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_260);
  let x_262 : bool = u_xlatb71;
  if (x_262) {
    let x_266 : f32 = x_257.x_MainLightShadowParams.y;
    u_xlatb71 = (x_266 == 1.0f);
    let x_268 : bool = u_xlatb71;
    if (x_268) {
      let x_273 : vec4<f32> = vs_TEXCOORD6;
      let x_276 : vec4<f32> = x_257.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_273.x, x_273.y, x_273.x, x_273.y) + x_276);
      let x_279 : vec4<f32> = u_xlat4;
      let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
      let x_282 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_280.x, x_280.y, x_282);
      let x_294 : vec3<f32> = txVec0;
      let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_294.xy, x_294.z);
      u_xlat5.x = x_296;
      let x_299 : vec4<f32> = u_xlat4;
      let x_300 : vec2<f32> = vec2<f32>(x_299.z, x_299.w);
      let x_302 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_300.x, x_300.y, x_302);
      let x_309 : vec3<f32> = txVec1;
      let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_309.xy, x_309.z);
      u_xlat5.y = x_311;
      let x_313 : vec4<f32> = vs_TEXCOORD6;
      let x_316 : vec4<f32> = x_257.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y) + x_316);
      let x_319 : vec4<f32> = u_xlat4;
      let x_320 : vec2<f32> = vec2<f32>(x_319.x, x_319.y);
      let x_322 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_320.x, x_320.y, x_322);
      let x_329 : vec3<f32> = txVec2;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat5.z = x_331;
      let x_334 : vec4<f32> = u_xlat4;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec3;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_344.xy, x_344.z);
      u_xlat5.w = x_346;
      let x_348 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_348, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_355 : f32 = x_257.x_MainLightShadowParams.y;
      u_xlatb4 = (x_355 == 2.0f);
      let x_358 : bool = u_xlatb4;
      if (x_358) {
        let x_361 : vec4<f32> = vs_TEXCOORD6;
        let x_364 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_369 : vec2<f32> = ((vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_364.z, x_364.w)) + vec2<f32>(0.5f, 0.5f));
        let x_370 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec4<f32> = u_xlat4;
        let x_374 : vec2<f32> = floor(vec2<f32>(x_372.x, x_372.y));
        let x_375 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
        let x_379 : vec4<f32> = vs_TEXCOORD6;
        let x_382 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_385 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_382.z, x_382.w)) + -(vec2<f32>(x_385.x, x_385.y)));
        let x_389 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_389.x, x_389.x, x_389.y, x_389.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_393 : vec4<f32> = u_xlat5;
        let x_395 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_393.x, x_393.x, x_393.z, x_393.z) * vec4<f32>(x_395.x, x_395.x, x_395.z, x_395.z));
        let x_398 : vec4<f32> = u_xlat6;
        let x_402 : vec2<f32> = (vec2<f32>(x_398.y, x_398.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_403 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_403.w);
        let x_405 : vec4<f32> = u_xlat6;
        let x_408 : vec2<f32> = u_xlat50;
        let x_410 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.z) * vec2<f32>(0.5f, 0.5f)) + -(x_408));
        let x_411 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
        let x_414 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_414) + vec2<f32>(1.0f, 1.0f));
        let x_419 : vec2<f32> = u_xlat50;
        let x_421 : vec2<f32> = min(x_419, vec2<f32>(0.0f, 0.0f));
        let x_422 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec4<f32> = u_xlat7;
        let x_427 : vec4<f32> = u_xlat7;
        let x_430 : vec2<f32> = u_xlat52;
        let x_431 : vec2<f32> = ((-(vec2<f32>(x_424.x, x_424.y)) * vec2<f32>(x_427.x, x_427.y)) + x_430);
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_434 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_434, vec2<f32>(0.0f, 0.0f));
        let x_436 : vec2<f32> = u_xlat50;
        let x_438 : vec2<f32> = u_xlat50;
        let x_440 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_436) * x_438) + vec2<f32>(x_440.y, x_440.w));
        let x_443 : vec4<f32> = u_xlat7;
        let x_445 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) + vec2<f32>(1.0f, 1.0f));
        let x_446 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_448 + vec2<f32>(1.0f, 1.0f));
        let x_451 : vec4<f32> = u_xlat6;
        let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec2<f32> = u_xlat52;
        let x_459 : vec2<f32> = (x_458 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat7;
        let x_464 : vec2<f32> = (vec2<f32>(x_462.x, x_462.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_465 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_468 : vec2<f32> = u_xlat50;
        let x_469 : vec2<f32> = (x_468 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_472.y, x_472.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_476 : f32 = u_xlat7.x;
        u_xlat8.z = x_476;
        let x_479 : f32 = u_xlat50.x;
        u_xlat8.w = x_479;
        let x_482 : f32 = u_xlat9.x;
        u_xlat6.z = x_482;
        let x_485 : f32 = u_xlat5.x;
        u_xlat6.w = x_485;
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_488.z, x_488.w, x_488.x, x_488.z) + vec4<f32>(x_490.z, x_490.w, x_490.x, x_490.z));
        let x_494 : f32 = u_xlat8.y;
        u_xlat7.z = x_494;
        let x_497 : f32 = u_xlat50.y;
        u_xlat7.w = x_497;
        let x_500 : f32 = u_xlat6.y;
        u_xlat9.z = x_500;
        let x_503 : f32 = u_xlat5.z;
        u_xlat9.w = x_503;
        let x_505 : vec4<f32> = u_xlat7;
        let x_507 : vec4<f32> = u_xlat9;
        let x_509 : vec3<f32> = (vec3<f32>(x_505.z, x_505.y, x_505.w) + vec3<f32>(x_507.z, x_507.y, x_507.w));
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat6;
        let x_514 : vec4<f32> = u_xlat10;
        let x_516 : vec3<f32> = (vec3<f32>(x_512.x, x_512.z, x_512.w) / vec3<f32>(x_514.z, x_514.w, x_514.y));
        let x_517 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
        let x_519 : vec4<f32> = u_xlat6;
        let x_525 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat9;
        let x_530 : vec4<f32> = u_xlat5;
        let x_532 : vec3<f32> = (vec3<f32>(x_528.z, x_528.y, x_528.w) / vec3<f32>(x_530.x, x_530.y, x_530.z));
        let x_533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_537 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat6;
        let x_543 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_545 : vec3<f32> = (vec3<f32>(x_540.y, x_540.x, x_540.z) * vec3<f32>(x_543.x, x_543.x, x_543.x));
        let x_546 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat7;
        let x_551 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_553 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_551.y, x_551.y, x_551.y));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_557 : f32 = u_xlat7.x;
        u_xlat6.w = x_557;
        let x_559 : vec4<f32> = u_xlat4;
        let x_562 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) * vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y)) + vec4<f32>(x_565.y, x_565.w, x_565.x, x_565.w));
        let x_568 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_571.x, x_571.y)) + vec2<f32>(x_574.z, x_574.w));
        let x_578 : f32 = u_xlat6.y;
        u_xlat7.w = x_578;
        let x_580 : vec4<f32> = u_xlat7;
        let x_581 : vec2<f32> = vec2<f32>(x_580.y, x_580.z);
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_581.x, x_582.z, x_581.y);
        let x_584 : vec4<f32> = u_xlat4;
        let x_587 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) * vec4<f32>(x_587.x, x_587.y, x_587.x, x_587.y)) + vec4<f32>(x_590.x, x_590.y, x_590.z, x_590.y));
        let x_593 : vec4<f32> = u_xlat4;
        let x_596 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y) * vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y)) + vec4<f32>(x_599.w, x_599.y, x_599.w, x_599.z));
        let x_602 : vec4<f32> = u_xlat4;
        let x_605 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y) * vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y)) + vec4<f32>(x_608.x, x_608.w, x_608.z, x_608.w));
        let x_612 : vec4<f32> = u_xlat5;
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_612.x, x_612.x, x_612.x, x_612.y) * vec4<f32>(x_614.z, x_614.w, x_614.y, x_614.z));
        let x_618 : vec4<f32> = u_xlat5;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_618.y, x_618.y, x_618.z, x_618.z) * x_620);
        let x_623 : f32 = u_xlat5.z;
        let x_625 : f32 = u_xlat10.y;
        u_xlat4.x = (x_623 * x_625);
        let x_629 : vec4<f32> = u_xlat8;
        let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
        let x_632 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_630.x, x_630.y, x_632);
        let x_640 : vec3<f32> = txVec4;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
        u_xlat27.x = x_642;
        let x_645 : vec4<f32> = u_xlat8;
        let x_646 : vec2<f32> = vec2<f32>(x_645.z, x_645.w);
        let x_648 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_646.x, x_646.y, x_648);
        let x_655 : vec3<f32> = txVec5;
        let x_657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_655.xy, x_655.z);
        u_xlat5.x = x_657;
        let x_660 : f32 = u_xlat5.x;
        let x_662 : f32 = u_xlat11.y;
        u_xlat5.x = (x_660 * x_662);
        let x_666 : f32 = u_xlat11.x;
        let x_668 : f32 = u_xlat27.x;
        let x_671 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_666 * x_668) + x_671);
        let x_675 : vec2<f32> = u_xlat50;
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec6;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_684.xy, x_684.z);
        u_xlat50.x = x_686;
        let x_689 : f32 = u_xlat11.z;
        let x_691 : f32 = u_xlat50.x;
        let x_694 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_689 * x_691) + x_694);
        let x_698 : vec4<f32> = u_xlat7;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec7;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
        u_xlat50.x = x_710;
        let x_713 : f32 = u_xlat11.w;
        let x_715 : f32 = u_xlat50.x;
        let x_718 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_713 * x_715) + x_718);
        let x_722 : vec4<f32> = u_xlat9;
        let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
        let x_725 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_723.x, x_723.y, x_725);
        let x_732 : vec3<f32> = txVec8;
        let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_732.xy, x_732.z);
        u_xlat50.x = x_734;
        let x_737 : f32 = u_xlat12.x;
        let x_739 : f32 = u_xlat50.x;
        let x_742 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_737 * x_739) + x_742);
        let x_746 : vec4<f32> = u_xlat9;
        let x_747 : vec2<f32> = vec2<f32>(x_746.z, x_746.w);
        let x_749 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_747.x, x_747.y, x_749);
        let x_756 : vec3<f32> = txVec9;
        let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_756.xy, x_756.z);
        u_xlat50.x = x_758;
        let x_761 : f32 = u_xlat12.y;
        let x_763 : f32 = u_xlat50.x;
        let x_766 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_761 * x_763) + x_766);
        let x_770 : vec4<f32> = u_xlat7;
        let x_771 : vec2<f32> = vec2<f32>(x_770.z, x_770.w);
        let x_773 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_780 : vec3<f32> = txVec10;
        let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_780.xy, x_780.z);
        u_xlat50.x = x_782;
        let x_785 : f32 = u_xlat12.z;
        let x_787 : f32 = u_xlat50.x;
        let x_790 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_785 * x_787) + x_790);
        let x_794 : vec4<f32> = u_xlat6;
        let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
        let x_797 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec11;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat50.x = x_806;
        let x_809 : f32 = u_xlat12.w;
        let x_811 : f32 = u_xlat50.x;
        let x_814 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_809 * x_811) + x_814);
        let x_818 : vec4<f32> = u_xlat6;
        let x_819 : vec2<f32> = vec2<f32>(x_818.z, x_818.w);
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec12;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_828.xy, x_828.z);
        u_xlat50.x = x_830;
        let x_833 : f32 = u_xlat4.x;
        let x_835 : f32 = u_xlat50.x;
        let x_838 : f32 = u_xlat27.x;
        u_xlat71 = ((x_833 * x_835) + x_838);
      } else {
        let x_841 : vec4<f32> = vs_TEXCOORD6;
        let x_844 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + vec2<f32>(0.5f, 0.5f));
        let x_848 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat4;
        let x_852 : vec2<f32> = floor(vec2<f32>(x_850.x, x_850.y));
        let x_853 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = vs_TEXCOORD6;
        let x_858 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_861 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_855.x, x_855.y) * vec2<f32>(x_858.z, x_858.w)) + -(vec2<f32>(x_861.x, x_861.y)));
        let x_865 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat5;
        let x_870 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat6;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = u_xlat50;
        let x_885 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(x_883));
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_886.y, x_885.y, x_886.w);
        let x_888 : vec2<f32> = u_xlat50;
        let x_890 : vec2<f32> = (-(x_888) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_893 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_893, vec2<f32>(0.0f, 0.0f));
        let x_895 : vec2<f32> = u_xlat52;
        let x_897 : vec2<f32> = u_xlat52;
        let x_899 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = ((-(x_895) * x_897) + vec2<f32>(x_899.x, x_899.y));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec2<f32> = u_xlat52;
        let x_909 : vec2<f32> = u_xlat52;
        let x_911 : vec4<f32> = u_xlat5;
        let x_913 : vec2<f32> = ((-(x_907) * x_909) + vec2<f32>(x_911.y, x_911.w));
        let x_914 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_913.x, x_914.y, x_913.y);
        let x_916 : vec4<f32> = u_xlat6;
        let x_919 : vec2<f32> = (vec2<f32>(x_916.x, x_916.y) + vec2<f32>(2.0f, 2.0f));
        let x_920 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec3<f32> = u_xlat28;
        let x_924 : vec2<f32> = (vec2<f32>(x_922.x, x_922.z) + vec2<f32>(2.0f, 2.0f));
        let x_925 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_928 : f32 = u_xlat5.y;
        u_xlat8.z = (x_928 * 0.08163200318813323975f);
        let x_932 : vec4<f32> = u_xlat5;
        let x_935 : vec3<f32> = (vec3<f32>(x_932.z, x_932.x, x_932.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_942 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : f32 = u_xlat9.y;
        u_xlat8.x = x_945;
        let x_947 : vec2<f32> = u_xlat50;
        let x_954 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_955.x, x_954.x, x_955.z, x_954.y);
        let x_957 : vec2<f32> = u_xlat50;
        let x_961 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_962.w);
        let x_965 : f32 = u_xlat5.x;
        u_xlat6.y = x_965;
        let x_968 : f32 = u_xlat7.y;
        u_xlat6.w = x_968;
        let x_970 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_970 + x_971);
        let x_973 : vec2<f32> = u_xlat50;
        let x_976 : vec2<f32> = ((vec2<f32>(x_973.y, x_973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_977 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec2<f32> = u_xlat50;
        let x_982 : vec2<f32> = ((vec2<f32>(x_979.y, x_979.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_986 : f32 = u_xlat5.y;
        u_xlat7.y = x_986;
        let x_988 : vec4<f32> = u_xlat7;
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_988 + x_989);
        let x_991 : vec4<f32> = u_xlat6;
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_991 / x_992);
        let x_994 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_994 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1000 / x_1001);
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1003 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1008 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1005.w, x_1005.x, x_1005.y, x_1005.z) * vec4<f32>(x_1008.x, x_1008.x, x_1008.x, x_1008.x));
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1014 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1011.x, x_1011.w, x_1011.y, x_1011.z) * vec4<f32>(x_1014.y, x_1014.y, x_1014.y, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1018 : vec3<f32> = vec3<f32>(x_1017.y, x_1017.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1019.y, x_1018.y, x_1018.z);
        let x_1022 : f32 = u_xlat7.x;
        u_xlat9.y = x_1022;
        let x_1024 : vec4<f32> = u_xlat4;
        let x_1027 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat4;
        let x_1036 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.y = x_1043;
        let x_1046 : f32 = u_xlat7.z;
        u_xlat9.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1069 : f32 = u_xlat9.y;
        u_xlat6.z = x_1069;
        let x_1072 : vec4<f32> = u_xlat4;
        let x_1075 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.z));
        let x_1082 : f32 = u_xlat7.w;
        u_xlat9.y = x_1082;
        let x_1085 : vec4<f32> = u_xlat4;
        let x_1088 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1095 : vec4<f32> = u_xlat4;
        let x_1098 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.w, x_1101.y));
        let x_1105 : f32 = u_xlat9.y;
        u_xlat6.w = x_1105;
        let x_1108 : vec4<f32> = u_xlat4;
        let x_1111 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.x, x_1114.w));
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1118 : vec3<f32> = vec3<f32>(x_1117.x, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1118.x, x_1119.y, x_1118.y, x_1118.z);
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1127.y));
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.w, x_1137.y));
        let x_1141 : f32 = u_xlat6.x;
        u_xlat7.x = x_1141;
        let x_1143 : vec4<f32> = u_xlat4;
        let x_1146 : vec4<f32> = x_257.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.x, x_1149.y));
        let x_1152 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1155 : vec4<f32> = u_xlat5;
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.x, x_1155.x) * x_1157);
        let x_1160 : vec4<f32> = u_xlat5;
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1162);
        let x_1165 : vec4<f32> = u_xlat5;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1165.z, x_1165.z, x_1165.z, x_1165.z) * x_1167);
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1169.w, x_1169.w, x_1169.w, x_1169.w) * x_1171);
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec13;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat6.x = x_1186;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.z, x_1189.w);
        let x_1192 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat75 = x_1202;
        let x_1203 : f32 = u_xlat75;
        let x_1205 : f32 = u_xlat15.y;
        u_xlat75 = (x_1203 * x_1205);
        let x_1208 : f32 = u_xlat15.x;
        let x_1210 : f32 = u_xlat6.x;
        let x_1212 : f32 = u_xlat75;
        u_xlat6.x = ((x_1208 * x_1210) + x_1212);
        let x_1216 : vec2<f32> = u_xlat50;
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec15;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat50.x = x_1227;
        let x_1230 : f32 = u_xlat15.z;
        let x_1232 : f32 = u_xlat50.x;
        let x_1235 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1230 * x_1232) + x_1235);
        let x_1239 : vec4<f32> = u_xlat13;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.x, x_1239.y);
        let x_1242 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1250 : vec3<f32> = txVec16;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1250.xy, x_1250.z);
        u_xlat73 = x_1252;
        let x_1254 : f32 = u_xlat15.w;
        let x_1255 : f32 = u_xlat73;
        let x_1258 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1254 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec17;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat73 = x_1274;
        let x_1276 : f32 = u_xlat16.x;
        let x_1277 : f32 = u_xlat73;
        let x_1280 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1276 * x_1277) + x_1280);
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec18;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat73 = x_1296;
        let x_1298 : f32 = u_xlat16.y;
        let x_1299 : f32 = u_xlat73;
        let x_1302 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1298 * x_1299) + x_1302);
        let x_1306 : vec4<f32> = u_xlat12;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec19;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat73 = x_1318;
        let x_1320 : f32 = u_xlat16.z;
        let x_1321 : f32 = u_xlat73;
        let x_1324 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1320 * x_1321) + x_1324);
        let x_1328 : vec4<f32> = u_xlat13;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec20;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat73 = x_1340;
        let x_1342 : f32 = u_xlat16.w;
        let x_1343 : f32 = u_xlat73;
        let x_1346 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1342 * x_1343) + x_1346);
        let x_1350 : vec4<f32> = u_xlat14;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.x, x_1350.y);
        let x_1353 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec21;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat73 = x_1362;
        let x_1364 : f32 = u_xlat17.x;
        let x_1365 : f32 = u_xlat73;
        let x_1368 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1364 * x_1365) + x_1368);
        let x_1372 : vec4<f32> = u_xlat14;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.z, x_1372.w);
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec22;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1382.xy, x_1382.z);
        u_xlat73 = x_1384;
        let x_1386 : f32 = u_xlat17.y;
        let x_1387 : f32 = u_xlat73;
        let x_1390 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1386 * x_1387) + x_1390);
        let x_1394 : vec2<f32> = u_xlat29;
        let x_1396 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec23;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat73 = x_1405;
        let x_1407 : f32 = u_xlat17.z;
        let x_1408 : f32 = u_xlat73;
        let x_1411 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1407 * x_1408) + x_1411);
        let x_1415 : vec2<f32> = u_xlat58;
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec24;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat73 = x_1426;
        let x_1428 : f32 = u_xlat17.w;
        let x_1429 : f32 = u_xlat73;
        let x_1432 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1428 * x_1429) + x_1432);
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec25;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat73 = x_1448;
        let x_1450 : f32 = u_xlat5.x;
        let x_1451 : f32 = u_xlat73;
        let x_1454 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1450 * x_1451) + x_1454);
        let x_1458 : vec4<f32> = u_xlat9;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec26;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat73 = x_1470;
        let x_1472 : f32 = u_xlat5.y;
        let x_1473 : f32 = u_xlat73;
        let x_1476 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1472 * x_1473) + x_1476);
        let x_1480 : vec2<f32> = u_xlat53;
        let x_1482 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec27;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat73 = x_1491;
        let x_1493 : f32 = u_xlat5.z;
        let x_1494 : f32 = u_xlat73;
        let x_1497 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat4;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec28;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat4.x = x_1513;
        let x_1516 : f32 = u_xlat5.w;
        let x_1518 : f32 = u_xlat4.x;
        let x_1521 : f32 = u_xlat50.x;
        u_xlat71 = ((x_1516 * x_1518) + x_1521);
      }
    }
  } else {
    let x_1525 : vec4<f32> = vs_TEXCOORD6;
    let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
    let x_1528 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
    let x_1535 : vec3<f32> = txVec29;
    let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
    u_xlat71 = x_1537;
  }
  let x_1539 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1539) + 1.0f);
  let x_1543 : f32 = u_xlat71;
  let x_1545 : f32 = x_257.x_MainLightShadowParams.x;
  let x_1548 : f32 = u_xlat4.x;
  u_xlat71 = ((x_1543 * x_1545) + x_1548);
  let x_1551 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1551);
  let x_1557 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (x_1557 >= 1.0f);
  let x_1561 : bool = u_xlatb27.x;
  let x_1562 : bool = u_xlatb4;
  u_xlatb4 = (x_1561 | x_1562);
  let x_1564 : bool = u_xlatb4;
  let x_1565 : f32 = u_xlat71;
  u_xlat71 = select(x_1565, 1.0f, x_1564);
  let x_1567 : vec3<f32> = vs_TEXCOORD1;
  let x_1569 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1571 : vec3<f32> = (x_1567 + -(x_1569));
  let x_1572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : vec4<f32> = u_xlat4;
  let x_1576 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1574.x, x_1574.y, x_1574.z), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1581 : f32 = u_xlat4.x;
  let x_1583 : f32 = x_257.x_MainLightShadowParams.z;
  let x_1586 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1581 * x_1583) + x_1586);
  let x_1590 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1590, 0.0f, 1.0f);
  let x_1593 : f32 = u_xlat71;
  u_xlat50.x = (-(x_1593) + 1.0f);
  let x_1598 : f32 = u_xlat27.x;
  let x_1600 : f32 = u_xlat50.x;
  let x_1602 : f32 = u_xlat71;
  u_xlat71 = ((x_1598 * x_1600) + x_1602);
  let x_1611 : f32 = x_1609.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1611 == -1.0f));
  let x_1616 : bool = u_xlatb27.x;
  if (x_1616) {
    let x_1619 : vec3<f32> = vs_TEXCOORD1;
    let x_1622 : vec4<f32> = x_1609.x_MainLightWorldToLight[1i];
    let x_1624 : vec2<f32> = (vec2<f32>(x_1619.y, x_1619.y) * vec2<f32>(x_1622.x, x_1622.y));
    let x_1625 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1624.x, x_1624.y, x_1625.z);
    let x_1628 : vec4<f32> = x_1609.x_MainLightWorldToLight[0i];
    let x_1630 : vec3<f32> = vs_TEXCOORD1;
    let x_1633 : vec3<f32> = u_xlat27;
    let x_1635 : vec2<f32> = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1630.x, x_1630.x)) + vec2<f32>(x_1633.x, x_1633.y));
    let x_1636 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1635.x, x_1635.y, x_1636.z);
    let x_1639 : vec4<f32> = x_1609.x_MainLightWorldToLight[2i];
    let x_1641 : vec3<f32> = vs_TEXCOORD1;
    let x_1644 : vec3<f32> = u_xlat27;
    let x_1646 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.y) * vec2<f32>(x_1641.z, x_1641.z)) + vec2<f32>(x_1644.x, x_1644.y));
    let x_1647 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1646.x, x_1646.y, x_1647.z);
    let x_1649 : vec3<f32> = u_xlat27;
    let x_1652 : vec4<f32> = x_1609.x_MainLightWorldToLight[3i];
    let x_1654 : vec2<f32> = (vec2<f32>(x_1649.x, x_1649.y) + vec2<f32>(x_1652.x, x_1652.y));
    let x_1655 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1654.x, x_1654.y, x_1655.z);
    let x_1657 : vec3<f32> = u_xlat27;
    let x_1660 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1661 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1660.x, x_1660.y, x_1661.z);
    let x_1668 : vec3<f32> = u_xlat27;
    let x_1671 : f32 = x_28.x_GlobalMipBias.x;
    let x_1672 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1668.x, x_1668.y), x_1671);
    u_xlat5 = x_1672;
    let x_1674 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1676 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1678 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1680 : f32 = x_1609.x_MainLightCookieTextureFormat;
    let x_1681 : vec4<f32> = vec4<f32>(x_1674, x_1676, x_1678, x_1680);
    let x_1689 : vec4<bool> = (vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1681.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1689.x, x_1689.y);
    let x_1692 : bool = u_xlatb27.y;
    if (x_1692) {
      let x_1698 : f32 = u_xlat5.w;
      x_1694 = x_1698;
    } else {
      let x_1701 : f32 = u_xlat5.x;
      x_1694 = x_1701;
    }
    let x_1702 : f32 = x_1694;
    u_xlat50.x = x_1702;
    let x_1705 : bool = u_xlatb27.x;
    if (x_1705) {
      let x_1709 : vec4<f32> = u_xlat5;
      x_1706 = vec3<f32>(x_1709.x, x_1709.y, x_1709.z);
    } else {
      let x_1712 : vec2<f32> = u_xlat50;
      x_1706 = vec3<f32>(x_1712.x, x_1712.x, x_1712.x);
    }
    let x_1714 : vec3<f32> = x_1706;
    u_xlat27 = x_1714;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1719 : vec3<f32> = u_xlat27;
  let x_1721 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat27 = (x_1719 * vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
  let x_1724 : f32 = u_xlat71;
  let x_1726 : f32 = x_173.unity_LightData.z;
  u_xlat71 = (x_1724 * x_1726);
  let x_1728 : f32 = u_xlat71;
  let x_1730 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1728, x_1728, x_1728) * x_1730);
  let x_1732 : vec4<f32> = u_xlat2;
  let x_1735 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat71 = dot(vec3<f32>(x_1732.x, x_1732.y, x_1732.z), vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1738, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat71;
  let x_1742 : vec3<f32> = u_xlat27;
  let x_1743 : vec3<f32> = (vec3<f32>(x_1740, x_1740, x_1740) * x_1742);
  let x_1744 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
  let x_1747 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1747 * 10.0f) + 1.0f);
  let x_1751 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1751);
  let x_1753 : vec3<f32> = u_xlat1;
  let x_1754 : f32 = u_xlat70;
  let x_1758 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1760 : vec3<f32> = ((x_1753 * vec3<f32>(x_1754, x_1754, x_1754)) + vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1764 : vec4<f32> = u_xlat6;
  let x_1766 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : f32 = u_xlat74;
  u_xlat74 = max(x_1769, 1.17549435e-38f);
  let x_1772 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1772);
  let x_1774 : f32 = u_xlat74;
  let x_1776 : vec4<f32> = u_xlat6;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1774, x_1774, x_1774) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : vec4<f32> = u_xlat2;
  let x_1783 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1786, 0.0f, 1.0f);
  let x_1788 : f32 = u_xlat74;
  u_xlat74 = log2(x_1788);
  let x_1790 : f32 = u_xlat71;
  let x_1791 : f32 = u_xlat74;
  u_xlat74 = (x_1790 * x_1791);
  let x_1793 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1793);
  let x_1795 : f32 = u_xlat74;
  let x_1798 : vec4<f32> = x_41.x_SpecColor;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1795, x_1795, x_1795) * vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1801 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1803 : vec3<f32> = u_xlat27;
  let x_1804 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1803 * vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
  let x_1807 : vec4<f32> = u_xlat5;
  let x_1809 : vec4<f32> = u_xlat0;
  let x_1812 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1807.x, x_1807.y, x_1807.z) * vec3<f32>(x_1809.y, x_1809.z, x_1809.w)) + x_1812);
  let x_1815 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1817 : f32 = x_173.unity_LightData.y;
  u_xlat5.x = min(x_1815, x_1817);
  let x_1823 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1823));
  let x_1827 : f32 = u_xlat4.x;
  let x_1830 : f32 = x_257.x_AdditionalShadowFadeParams.x;
  let x_1833 : f32 = x_257.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1827 * x_1830) + x_1833);
  let x_1837 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1837, 0.0f, 1.0f);
  let x_1842 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1844 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1846 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1848 : f32 = x_1609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1849 : vec4<f32> = vec4<f32>(x_1842, x_1844, x_1846, x_1848);
  let x_1855 : vec4<bool> = (vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1849.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_1855.x, x_1855.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1867 : u32 = u_xlatu_loop_1;
    let x_1868 : u32 = u_xlatu5;
    if ((x_1867 < x_1868)) {
    } else {
      break;
    }
    let x_1871 : u32 = u_xlatu_loop_1;
    u_xlatu75 = (x_1871 >> 2u);
    let x_1875 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1875 & 3u));
    let x_1878 : u32 = u_xlatu75;
    let x_1881 : vec4<f32> = x_173.unity_LightIndices[bitcast<i32>(x_1878)];
    let x_1891 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1896 : vec4<u32> = indexable[x_1891];
    u_xlat75 = dot(x_1881, bitcast<vec4<f32>>(x_1896));
    let x_1900 : f32 = u_xlat75;
    u_xlati75 = i32(x_1900);
    let x_1902 : vec3<f32> = vs_TEXCOORD1;
    let x_1913 : i32 = u_xlati75;
    let x_1915 : vec4<f32> = x_1912.x_AdditionalLightsPosition[x_1913];
    let x_1918 : i32 = u_xlati75;
    let x_1920 : vec4<f32> = x_1912.x_AdditionalLightsPosition[x_1918];
    let x_1922 : vec3<f32> = ((-(x_1902) * vec3<f32>(x_1915.w, x_1915.w, x_1915.w)) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1926 : vec4<f32> = u_xlat7;
    let x_1928 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
    let x_1931 : f32 = u_xlat76;
    u_xlat76 = max(x_1931, 0.00006103515625f);
    let x_1933 : f32 = u_xlat76;
    u_xlat8.x = inverseSqrt(x_1933);
    let x_1936 : vec4<f32> = u_xlat7;
    let x_1938 : vec4<f32> = u_xlat8;
    let x_1940 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.y, x_1936.z) * vec3<f32>(x_1938.x, x_1938.x, x_1938.x));
    let x_1941 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
    let x_1943 : f32 = u_xlat76;
    u_xlat8.x = (1.0f / x_1943);
    let x_1946 : f32 = u_xlat76;
    let x_1947 : i32 = u_xlati75;
    let x_1949 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1947].x;
    u_xlat76 = (x_1946 * x_1949);
    let x_1951 : f32 = u_xlat76;
    let x_1953 : f32 = u_xlat76;
    u_xlat76 = ((-(x_1951) * x_1953) + 1.0f);
    let x_1956 : f32 = u_xlat76;
    u_xlat76 = max(x_1956, 0.0f);
    let x_1958 : f32 = u_xlat76;
    let x_1959 : f32 = u_xlat76;
    u_xlat76 = (x_1958 * x_1959);
    let x_1961 : f32 = u_xlat76;
    let x_1963 : f32 = u_xlat8.x;
    u_xlat76 = (x_1961 * x_1963);
    let x_1965 : i32 = u_xlati75;
    let x_1967 : vec4<f32> = x_1912.x_AdditionalLightsSpotDir[x_1965];
    let x_1969 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1974 : f32 = u_xlat8.x;
    let x_1975 : i32 = u_xlati75;
    let x_1977 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1975].z;
    let x_1979 : i32 = u_xlati75;
    let x_1981 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1979].w;
    u_xlat8.x = ((x_1974 * x_1977) + x_1981);
    let x_1985 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1985, 0.0f, 1.0f);
    let x_1989 : f32 = u_xlat8.x;
    let x_1991 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1989 * x_1991);
    let x_1994 : f32 = u_xlat76;
    let x_1996 : f32 = u_xlat8.x;
    u_xlat76 = (x_1994 * x_1996);
    let x_2000 : i32 = u_xlati75;
    let x_2002 : f32 = x_257.x_AdditionalShadowParams[x_2000].w;
    u_xlati8 = i32(x_2002);
    let x_2007 : i32 = u_xlati8;
    u_xlatb31.x = (x_2007 >= 0i);
    let x_2011 : bool = u_xlatb31.x;
    if (x_2011) {
      let x_2015 : i32 = u_xlati75;
      let x_2017 : f32 = x_257.x_AdditionalShadowParams[x_2015].z;
      u_xlatb31.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2017, x_2017, x_2017, x_2017))));
      let x_2023 : bool = u_xlatb31.x;
      if (x_2023) {
        let x_2026 : vec4<f32> = u_xlat7;
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2032 : vec4<bool> = (abs(vec4<f32>(x_2026.z, x_2026.z, x_2026.y, x_2026.y)) >= abs(vec4<f32>(x_2029.x, x_2029.y, x_2029.x, x_2029.x)));
        u_xlatb31 = vec3<bool>(x_2032.x, x_2032.y, x_2032.z);
        let x_2035 : bool = u_xlatb31.y;
        let x_2037 : bool = u_xlatb31.x;
        u_xlatb31.x = (x_2035 & x_2037);
        let x_2041 : vec4<f32> = u_xlat7;
        let x_2044 : vec4<bool> = (-(vec4<f32>(x_2041.z, x_2041.y, x_2041.x, x_2041.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2044.x, x_2044.y, x_2044.z);
        let x_2047 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2047);
        let x_2053 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2053);
        let x_2059 : bool = u_xlatb9.z;
        u_xlat54 = select(0.0f, 1.0f, x_2059);
        let x_2062 : bool = u_xlatb31.z;
        if (x_2062) {
          let x_2067 : f32 = u_xlat9.y;
          x_2063 = x_2067;
        } else {
          let x_2069 : f32 = u_xlat54;
          x_2063 = x_2069;
        }
        let x_2070 : f32 = x_2063;
        u_xlat54 = x_2070;
        let x_2073 : bool = u_xlatb31.x;
        if (x_2073) {
          let x_2078 : f32 = u_xlat9.x;
          x_2074 = x_2078;
        } else {
          let x_2080 : f32 = u_xlat54;
          x_2074 = x_2080;
        }
        let x_2081 : f32 = x_2074;
        u_xlat31.x = x_2081;
        let x_2083 : i32 = u_xlati75;
        let x_2085 : f32 = x_257.x_AdditionalShadowParams[x_2083].w;
        u_xlat54 = trunc(x_2085);
        let x_2088 : f32 = u_xlat31.x;
        let x_2089 : f32 = u_xlat54;
        u_xlat31.x = (x_2088 + x_2089);
        let x_2093 : f32 = u_xlat31.x;
        u_xlati8 = i32(x_2093);
      }
      let x_2095 : i32 = u_xlati8;
      u_xlati8 = (x_2095 << bitcast<u32>(2i));
      let x_2097 : vec3<f32> = vs_TEXCOORD1;
      let x_2100 : i32 = u_xlati8;
      let x_2103 : i32 = u_xlati8;
      let x_2107 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_2100 + 1i) / 4i)][((x_2103 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2097.y, x_2097.y, x_2097.y, x_2097.y) * x_2107);
      let x_2109 : i32 = u_xlati8;
      let x_2111 : i32 = u_xlati8;
      let x_2114 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[(x_2109 / 4i)][(x_2111 % 4i)];
      let x_2115 : vec3<f32> = vs_TEXCOORD1;
      let x_2118 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2114 * vec4<f32>(x_2115.x, x_2115.x, x_2115.x, x_2115.x)) + x_2118);
      let x_2120 : i32 = u_xlati8;
      let x_2123 : i32 = u_xlati8;
      let x_2127 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_2120 + 2i) / 4i)][((x_2123 + 2i) % 4i)];
      let x_2128 : vec3<f32> = vs_TEXCOORD1;
      let x_2131 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2127 * vec4<f32>(x_2128.z, x_2128.z, x_2128.z, x_2128.z)) + x_2131);
      let x_2133 : vec4<f32> = u_xlat9;
      let x_2134 : i32 = u_xlati8;
      let x_2137 : i32 = u_xlati8;
      let x_2141 : vec4<f32> = x_257.x_AdditionalLightsWorldToShadow[((x_2134 + 3i) / 4i)][((x_2137 + 3i) % 4i)];
      u_xlat8 = (x_2133 + x_2141);
      let x_2143 : vec4<f32> = u_xlat8;
      let x_2145 : vec4<f32> = u_xlat8;
      let x_2147 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) / vec3<f32>(x_2145.w, x_2145.w, x_2145.w));
      let x_2148 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
      let x_2151 : i32 = u_xlati75;
      let x_2153 : f32 = x_257.x_AdditionalShadowParams[x_2151].y;
      u_xlatb77 = (0.0f < x_2153);
      let x_2155 : bool = u_xlatb77;
      if (x_2155) {
        let x_2158 : i32 = u_xlati75;
        let x_2160 : f32 = x_257.x_AdditionalShadowParams[x_2158].y;
        u_xlatb77 = (1.0f == x_2160);
        let x_2162 : bool = u_xlatb77;
        if (x_2162) {
          let x_2165 : vec4<f32> = u_xlat8;
          let x_2169 : vec4<f32> = x_257.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2165.x, x_2165.y, x_2165.x, x_2165.y) + x_2169);
          let x_2172 : vec4<f32> = u_xlat9;
          let x_2173 : vec2<f32> = vec2<f32>(x_2172.x, x_2172.y);
          let x_2175 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2173.x, x_2173.y, x_2175);
          let x_2183 : vec3<f32> = txVec30;
          let x_2185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2183.xy, x_2183.z);
          u_xlat10.x = x_2185;
          let x_2188 : vec4<f32> = u_xlat9;
          let x_2189 : vec2<f32> = vec2<f32>(x_2188.z, x_2188.w);
          let x_2191 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
          let x_2198 : vec3<f32> = txVec31;
          let x_2200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2198.xy, x_2198.z);
          u_xlat10.y = x_2200;
          let x_2202 : vec4<f32> = u_xlat8;
          let x_2206 : vec4<f32> = x_257.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2202.x, x_2202.y, x_2202.x, x_2202.y) + x_2206);
          let x_2209 : vec4<f32> = u_xlat9;
          let x_2210 : vec2<f32> = vec2<f32>(x_2209.x, x_2209.y);
          let x_2212 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
          let x_2219 : vec3<f32> = txVec32;
          let x_2221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
          u_xlat10.z = x_2221;
          let x_2224 : vec4<f32> = u_xlat9;
          let x_2225 : vec2<f32> = vec2<f32>(x_2224.z, x_2224.w);
          let x_2227 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2225.x, x_2225.y, x_2227);
          let x_2234 : vec3<f32> = txVec33;
          let x_2236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2234.xy, x_2234.z);
          u_xlat10.w = x_2236;
          let x_2239 : vec4<f32> = u_xlat10;
          u_xlat77 = dot(x_2239, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2242 : i32 = u_xlati75;
          let x_2244 : f32 = x_257.x_AdditionalShadowParams[x_2242].y;
          u_xlatb9.x = (2.0f == x_2244);
          let x_2248 : bool = u_xlatb9.x;
          if (x_2248) {
            let x_2251 : vec4<f32> = u_xlat8;
            let x_2255 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2258 : vec2<f32> = ((vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(x_2255.z, x_2255.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2259 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
            let x_2261 : vec4<f32> = u_xlat9;
            let x_2263 : vec2<f32> = floor(vec2<f32>(x_2261.x, x_2261.y));
            let x_2264 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2267 : vec4<f32> = u_xlat8;
            let x_2270 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2273 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2270.z, x_2270.w)) + -(vec2<f32>(x_2273.x, x_2273.y)));
            let x_2277 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2277.x, x_2277.x, x_2277.y, x_2277.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2280 : vec4<f32> = u_xlat10;
            let x_2282 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2280.x, x_2280.x, x_2280.z, x_2280.z) * vec4<f32>(x_2282.x, x_2282.x, x_2282.z, x_2282.z));
            let x_2285 : vec4<f32> = u_xlat11;
            let x_2287 : vec2<f32> = (vec2<f32>(x_2285.y, x_2285.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2288 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2287.x, x_2288.y, x_2287.y, x_2288.w);
            let x_2290 : vec4<f32> = u_xlat11;
            let x_2293 : vec2<f32> = u_xlat55;
            let x_2295 : vec2<f32> = ((vec2<f32>(x_2290.x, x_2290.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2293));
            let x_2296 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
            let x_2299 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2299) + vec2<f32>(1.0f, 1.0f));
            let x_2302 : vec2<f32> = u_xlat55;
            let x_2303 : vec2<f32> = min(x_2302, vec2<f32>(0.0f, 0.0f));
            let x_2304 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2303.x, x_2303.y, x_2304.z, x_2304.w);
            let x_2306 : vec4<f32> = u_xlat12;
            let x_2309 : vec4<f32> = u_xlat12;
            let x_2312 : vec2<f32> = u_xlat57;
            let x_2313 : vec2<f32> = ((-(vec2<f32>(x_2306.x, x_2306.y)) * vec2<f32>(x_2309.x, x_2309.y)) + x_2312);
            let x_2314 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2313.x, x_2313.y, x_2314.z, x_2314.w);
            let x_2316 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2316, vec2<f32>(0.0f, 0.0f));
            let x_2318 : vec2<f32> = u_xlat55;
            let x_2320 : vec2<f32> = u_xlat55;
            let x_2322 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2318) * x_2320) + vec2<f32>(x_2322.y, x_2322.w));
            let x_2325 : vec4<f32> = u_xlat12;
            let x_2327 : vec2<f32> = (vec2<f32>(x_2325.x, x_2325.y) + vec2<f32>(1.0f, 1.0f));
            let x_2328 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2327.x, x_2327.y, x_2328.z, x_2328.w);
            let x_2330 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2330 + vec2<f32>(1.0f, 1.0f));
            let x_2332 : vec4<f32> = u_xlat11;
            let x_2334 : vec2<f32> = (vec2<f32>(x_2332.x, x_2332.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
            let x_2337 : vec2<f32> = u_xlat57;
            let x_2338 : vec2<f32> = (x_2337 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2339 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat12;
            let x_2343 : vec2<f32> = (vec2<f32>(x_2341.x, x_2341.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2344 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
            let x_2346 : vec2<f32> = u_xlat55;
            let x_2347 : vec2<f32> = (x_2346 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2348 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2347.x, x_2347.y, x_2348.z, x_2348.w);
            let x_2350 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2350.y, x_2350.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2354 : f32 = u_xlat12.x;
            u_xlat13.z = x_2354;
            let x_2357 : f32 = u_xlat55.x;
            u_xlat13.w = x_2357;
            let x_2360 : f32 = u_xlat14.x;
            u_xlat11.z = x_2360;
            let x_2363 : f32 = u_xlat10.x;
            u_xlat11.w = x_2363;
            let x_2365 : vec4<f32> = u_xlat11;
            let x_2367 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2365.z, x_2365.w, x_2365.x, x_2365.z) + vec4<f32>(x_2367.z, x_2367.w, x_2367.x, x_2367.z));
            let x_2371 : f32 = u_xlat13.y;
            u_xlat12.z = x_2371;
            let x_2374 : f32 = u_xlat55.y;
            u_xlat12.w = x_2374;
            let x_2377 : f32 = u_xlat11.y;
            u_xlat14.z = x_2377;
            let x_2380 : f32 = u_xlat10.z;
            u_xlat14.w = x_2380;
            let x_2382 : vec4<f32> = u_xlat12;
            let x_2384 : vec4<f32> = u_xlat14;
            let x_2386 : vec3<f32> = (vec3<f32>(x_2382.z, x_2382.y, x_2382.w) + vec3<f32>(x_2384.z, x_2384.y, x_2384.w));
            let x_2387 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
            let x_2389 : vec4<f32> = u_xlat11;
            let x_2391 : vec4<f32> = u_xlat15;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2389.x, x_2389.z, x_2389.w) / vec3<f32>(x_2391.z, x_2391.w, x_2391.y));
            let x_2394 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat11;
            let x_2398 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.y, x_2396.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat14;
            let x_2403 : vec4<f32> = u_xlat10;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2401.z, x_2401.y, x_2401.w) / vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
            let x_2406 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2410 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2411 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
            let x_2413 : vec4<f32> = u_xlat11;
            let x_2416 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2418 : vec3<f32> = (vec3<f32>(x_2413.y, x_2413.x, x_2413.z) * vec3<f32>(x_2416.x, x_2416.x, x_2416.x));
            let x_2419 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
            let x_2421 : vec4<f32> = u_xlat12;
            let x_2424 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2426 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.y, x_2421.z) * vec3<f32>(x_2424.y, x_2424.y, x_2424.y));
            let x_2427 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
            let x_2430 : f32 = u_xlat12.x;
            u_xlat11.w = x_2430;
            let x_2432 : vec4<f32> = u_xlat9;
            let x_2435 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y) * vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y)) + vec4<f32>(x_2438.y, x_2438.w, x_2438.x, x_2438.w));
            let x_2441 : vec4<f32> = u_xlat9;
            let x_2444 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2447 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2441.x, x_2441.y) * vec2<f32>(x_2444.x, x_2444.y)) + vec2<f32>(x_2447.z, x_2447.w));
            let x_2451 : f32 = u_xlat11.y;
            u_xlat12.w = x_2451;
            let x_2453 : vec4<f32> = u_xlat12;
            let x_2454 : vec2<f32> = vec2<f32>(x_2453.y, x_2453.z);
            let x_2455 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2455.x, x_2454.x, x_2455.z, x_2454.y);
            let x_2457 : vec4<f32> = u_xlat9;
            let x_2460 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2463 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2457.x, x_2457.y, x_2457.x, x_2457.y) * vec4<f32>(x_2460.x, x_2460.y, x_2460.x, x_2460.y)) + vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2463.y));
            let x_2466 : vec4<f32> = u_xlat9;
            let x_2469 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2472 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2466.x, x_2466.y, x_2466.x, x_2466.y) * vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y)) + vec4<f32>(x_2472.w, x_2472.y, x_2472.w, x_2472.z));
            let x_2475 : vec4<f32> = u_xlat9;
            let x_2478 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2481 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2475.x, x_2475.y, x_2475.x, x_2475.y) * vec4<f32>(x_2478.x, x_2478.y, x_2478.x, x_2478.y)) + vec4<f32>(x_2481.x, x_2481.w, x_2481.z, x_2481.w));
            let x_2484 : vec4<f32> = u_xlat10;
            let x_2486 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2484.x, x_2484.x, x_2484.x, x_2484.y) * vec4<f32>(x_2486.z, x_2486.w, x_2486.y, x_2486.z));
            let x_2489 : vec4<f32> = u_xlat10;
            let x_2491 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2489.y, x_2489.y, x_2489.z, x_2489.z) * x_2491);
            let x_2494 : f32 = u_xlat10.z;
            let x_2496 : f32 = u_xlat15.y;
            u_xlat9.x = (x_2494 * x_2496);
            let x_2500 : vec4<f32> = u_xlat13;
            let x_2501 : vec2<f32> = vec2<f32>(x_2500.x, x_2500.y);
            let x_2503 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
            let x_2511 : vec3<f32> = txVec34;
            let x_2513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2511.xy, x_2511.z);
            u_xlat32 = x_2513;
            let x_2515 : vec4<f32> = u_xlat13;
            let x_2516 : vec2<f32> = vec2<f32>(x_2515.z, x_2515.w);
            let x_2518 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
            let x_2525 : vec3<f32> = txVec35;
            let x_2527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
            u_xlat10.x = x_2527;
            let x_2530 : f32 = u_xlat10.x;
            let x_2532 : f32 = u_xlat16.y;
            u_xlat10.x = (x_2530 * x_2532);
            let x_2536 : f32 = u_xlat16.x;
            let x_2537 : f32 = u_xlat32;
            let x_2540 : f32 = u_xlat10.x;
            u_xlat32 = ((x_2536 * x_2537) + x_2540);
            let x_2543 : vec2<f32> = u_xlat55;
            let x_2545 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2543.x, x_2543.y, x_2545);
            let x_2552 : vec3<f32> = txVec36;
            let x_2554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2552.xy, x_2552.z);
            u_xlat55.x = x_2554;
            let x_2557 : f32 = u_xlat16.z;
            let x_2559 : f32 = u_xlat55.x;
            let x_2561 : f32 = u_xlat32;
            u_xlat32 = ((x_2557 * x_2559) + x_2561);
            let x_2564 : vec4<f32> = u_xlat12;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.x, x_2564.y);
            let x_2567 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
            let x_2574 : vec3<f32> = txVec37;
            let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
            u_xlat55.x = x_2576;
            let x_2579 : f32 = u_xlat16.w;
            let x_2581 : f32 = u_xlat55.x;
            let x_2583 : f32 = u_xlat32;
            u_xlat32 = ((x_2579 * x_2581) + x_2583);
            let x_2586 : vec4<f32> = u_xlat14;
            let x_2587 : vec2<f32> = vec2<f32>(x_2586.x, x_2586.y);
            let x_2589 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2587.x, x_2587.y, x_2589);
            let x_2596 : vec3<f32> = txVec38;
            let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
            u_xlat55.x = x_2598;
            let x_2601 : f32 = u_xlat17.x;
            let x_2603 : f32 = u_xlat55.x;
            let x_2605 : f32 = u_xlat32;
            u_xlat32 = ((x_2601 * x_2603) + x_2605);
            let x_2608 : vec4<f32> = u_xlat14;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.z, x_2608.w);
            let x_2611 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2609.x, x_2609.y, x_2611);
            let x_2618 : vec3<f32> = txVec39;
            let x_2620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2618.xy, x_2618.z);
            u_xlat55.x = x_2620;
            let x_2623 : f32 = u_xlat17.y;
            let x_2625 : f32 = u_xlat55.x;
            let x_2627 : f32 = u_xlat32;
            u_xlat32 = ((x_2623 * x_2625) + x_2627);
            let x_2630 : vec4<f32> = u_xlat12;
            let x_2631 : vec2<f32> = vec2<f32>(x_2630.z, x_2630.w);
            let x_2633 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2631.x, x_2631.y, x_2633);
            let x_2640 : vec3<f32> = txVec40;
            let x_2642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2640.xy, x_2640.z);
            u_xlat55.x = x_2642;
            let x_2645 : f32 = u_xlat17.z;
            let x_2647 : f32 = u_xlat55.x;
            let x_2649 : f32 = u_xlat32;
            u_xlat32 = ((x_2645 * x_2647) + x_2649);
            let x_2652 : vec4<f32> = u_xlat11;
            let x_2653 : vec2<f32> = vec2<f32>(x_2652.x, x_2652.y);
            let x_2655 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2653.x, x_2653.y, x_2655);
            let x_2662 : vec3<f32> = txVec41;
            let x_2664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2662.xy, x_2662.z);
            u_xlat55.x = x_2664;
            let x_2667 : f32 = u_xlat17.w;
            let x_2669 : f32 = u_xlat55.x;
            let x_2671 : f32 = u_xlat32;
            u_xlat32 = ((x_2667 * x_2669) + x_2671);
            let x_2674 : vec4<f32> = u_xlat11;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.z, x_2674.w);
            let x_2677 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2684 : vec3<f32> = txVec42;
            let x_2686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
            u_xlat55.x = x_2686;
            let x_2689 : f32 = u_xlat9.x;
            let x_2691 : f32 = u_xlat55.x;
            let x_2693 : f32 = u_xlat32;
            u_xlat77 = ((x_2689 * x_2691) + x_2693);
          } else {
            let x_2696 : vec4<f32> = u_xlat8;
            let x_2699 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2702 : vec2<f32> = ((vec2<f32>(x_2696.x, x_2696.y) * vec2<f32>(x_2699.z, x_2699.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2703 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2702.x, x_2702.y, x_2703.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat9;
            let x_2707 : vec2<f32> = floor(vec2<f32>(x_2705.x, x_2705.y));
            let x_2708 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
            let x_2710 : vec4<f32> = u_xlat8;
            let x_2713 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2716 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2710.x, x_2710.y) * vec2<f32>(x_2713.z, x_2713.w)) + -(vec2<f32>(x_2716.x, x_2716.y)));
            let x_2720 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2720.x, x_2720.x, x_2720.y, x_2720.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2723 : vec4<f32> = u_xlat10;
            let x_2725 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2723.x, x_2723.x, x_2723.z, x_2723.z) * vec4<f32>(x_2725.x, x_2725.x, x_2725.z, x_2725.z));
            let x_2728 : vec4<f32> = u_xlat11;
            let x_2730 : vec2<f32> = (vec2<f32>(x_2728.y, x_2728.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2731 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2731.x, x_2730.x, x_2731.z, x_2730.y);
            let x_2733 : vec4<f32> = u_xlat11;
            let x_2736 : vec2<f32> = u_xlat55;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2733.x, x_2733.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2736));
            let x_2739 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2738.x, x_2739.y, x_2738.y, x_2739.w);
            let x_2741 : vec2<f32> = u_xlat55;
            let x_2743 : vec2<f32> = (-(x_2741) + vec2<f32>(1.0f, 1.0f));
            let x_2744 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
            let x_2746 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2746, vec2<f32>(0.0f, 0.0f));
            let x_2748 : vec2<f32> = u_xlat57;
            let x_2750 : vec2<f32> = u_xlat57;
            let x_2752 : vec4<f32> = u_xlat11;
            let x_2754 : vec2<f32> = ((-(x_2748) * x_2750) + vec2<f32>(x_2752.x, x_2752.y));
            let x_2755 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
            let x_2757 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2757, vec2<f32>(0.0f, 0.0f));
            let x_2760 : vec2<f32> = u_xlat57;
            let x_2762 : vec2<f32> = u_xlat57;
            let x_2764 : vec4<f32> = u_xlat10;
            let x_2766 : vec2<f32> = ((-(x_2760) * x_2762) + vec2<f32>(x_2764.y, x_2764.w));
            let x_2767 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2766.x, x_2767.y, x_2766.y);
            let x_2769 : vec4<f32> = u_xlat11;
            let x_2771 : vec2<f32> = (vec2<f32>(x_2769.x, x_2769.y) + vec2<f32>(2.0f, 2.0f));
            let x_2772 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec3<f32> = u_xlat33;
            let x_2776 : vec2<f32> = (vec2<f32>(x_2774.x, x_2774.z) + vec2<f32>(2.0f, 2.0f));
            let x_2777 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2777.x, x_2776.x, x_2777.z, x_2776.y);
            let x_2780 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2780 * 0.08163200318813323975f);
            let x_2783 : vec4<f32> = u_xlat10;
            let x_2785 : vec3<f32> = (vec3<f32>(x_2783.z, x_2783.x, x_2783.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
            let x_2788 : vec4<f32> = u_xlat11;
            let x_2790 : vec2<f32> = (vec2<f32>(x_2788.x, x_2788.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2791 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2790.x, x_2790.y, x_2791.z, x_2791.w);
            let x_2794 : f32 = u_xlat14.y;
            u_xlat13.x = x_2794;
            let x_2796 : vec2<f32> = u_xlat55;
            let x_2799 : vec2<f32> = ((vec2<f32>(x_2796.x, x_2796.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2800 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2800.x, x_2799.x, x_2800.z, x_2799.y);
            let x_2802 : vec2<f32> = u_xlat55;
            let x_2805 : vec2<f32> = ((vec2<f32>(x_2802.x, x_2802.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2806 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2805.x, x_2806.y, x_2805.y, x_2806.w);
            let x_2809 : f32 = u_xlat10.x;
            u_xlat11.y = x_2809;
            let x_2812 : f32 = u_xlat12.y;
            u_xlat11.w = x_2812;
            let x_2814 : vec4<f32> = u_xlat11;
            let x_2815 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2814 + x_2815);
            let x_2817 : vec2<f32> = u_xlat55;
            let x_2820 : vec2<f32> = ((vec2<f32>(x_2817.y, x_2817.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2821 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2821.x, x_2820.x, x_2821.z, x_2820.y);
            let x_2823 : vec2<f32> = u_xlat55;
            let x_2826 : vec2<f32> = ((vec2<f32>(x_2823.y, x_2823.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2827 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2826.x, x_2827.y, x_2826.y, x_2827.w);
            let x_2830 : f32 = u_xlat10.y;
            u_xlat12.y = x_2830;
            let x_2832 : vec4<f32> = u_xlat12;
            let x_2833 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2832 + x_2833);
            let x_2835 : vec4<f32> = u_xlat11;
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2835 / x_2836);
            let x_2838 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2838 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2840 : vec4<f32> = u_xlat12;
            let x_2841 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2840 / x_2841);
            let x_2843 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2843 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2845 : vec4<f32> = u_xlat11;
            let x_2848 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2845.w, x_2845.x, x_2845.y, x_2845.z) * vec4<f32>(x_2848.x, x_2848.x, x_2848.x, x_2848.x));
            let x_2851 : vec4<f32> = u_xlat12;
            let x_2854 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2851.x, x_2851.w, x_2851.y, x_2851.z) * vec4<f32>(x_2854.y, x_2854.y, x_2854.y, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat11;
            let x_2858 : vec3<f32> = vec3<f32>(x_2857.y, x_2857.z, x_2857.w);
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2859.y, x_2858.y, x_2858.z);
            let x_2862 : f32 = u_xlat12.x;
            u_xlat14.y = x_2862;
            let x_2864 : vec4<f32> = u_xlat9;
            let x_2867 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2870 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y) * vec4<f32>(x_2867.x, x_2867.y, x_2867.x, x_2867.y)) + vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2870.y));
            let x_2873 : vec4<f32> = u_xlat9;
            let x_2876 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2873.x, x_2873.y) * vec2<f32>(x_2876.x, x_2876.y)) + vec2<f32>(x_2879.w, x_2879.y));
            let x_2883 : f32 = u_xlat14.y;
            u_xlat11.y = x_2883;
            let x_2886 : f32 = u_xlat12.z;
            u_xlat14.y = x_2886;
            let x_2888 : vec4<f32> = u_xlat9;
            let x_2891 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) * vec4<f32>(x_2891.x, x_2891.y, x_2891.x, x_2891.y)) + vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2894.y));
            let x_2897 : vec4<f32> = u_xlat9;
            let x_2900 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2905 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.y) * vec2<f32>(x_2900.x, x_2900.y)) + vec2<f32>(x_2903.w, x_2903.y));
            let x_2906 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2905.x, x_2905.y, x_2906.z, x_2906.w);
            let x_2909 : f32 = u_xlat14.y;
            u_xlat11.z = x_2909;
            let x_2912 : vec4<f32> = u_xlat9;
            let x_2915 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y) * vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.y)) + vec4<f32>(x_2918.x, x_2918.y, x_2918.x, x_2918.z));
            let x_2922 : f32 = u_xlat12.w;
            u_xlat14.y = x_2922;
            let x_2925 : vec4<f32> = u_xlat9;
            let x_2928 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y) * vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y)) + vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2931.y));
            let x_2935 : vec4<f32> = u_xlat9;
            let x_2938 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2941 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
            let x_2945 : f32 = u_xlat14.y;
            u_xlat11.w = x_2945;
            let x_2948 : vec4<f32> = u_xlat9;
            let x_2951 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2948.x, x_2948.y) * vec2<f32>(x_2951.x, x_2951.y)) + vec2<f32>(x_2954.x, x_2954.w));
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2958 : vec3<f32> = vec3<f32>(x_2957.x, x_2957.z, x_2957.w);
            let x_2959 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2958.x, x_2959.y, x_2958.y, x_2958.z);
            let x_2961 : vec4<f32> = u_xlat9;
            let x_2964 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y) * vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y)) + vec4<f32>(x_2967.x, x_2967.y, x_2967.z, x_2967.y));
            let x_2970 : vec4<f32> = u_xlat9;
            let x_2973 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2973.x, x_2973.y)) + vec2<f32>(x_2976.w, x_2976.y));
            let x_2980 : f32 = u_xlat11.x;
            u_xlat12.x = x_2980;
            let x_2982 : vec4<f32> = u_xlat9;
            let x_2985 : vec4<f32> = x_257.x_AdditionalShadowmapSize;
            let x_2988 : vec4<f32> = u_xlat12;
            let x_2990 : vec2<f32> = ((vec2<f32>(x_2982.x, x_2982.y) * vec2<f32>(x_2985.x, x_2985.y)) + vec2<f32>(x_2988.x, x_2988.y));
            let x_2991 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
            let x_2994 : vec4<f32> = u_xlat10;
            let x_2996 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2994.x, x_2994.x, x_2994.x, x_2994.x) * x_2996);
            let x_2999 : vec4<f32> = u_xlat10;
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2999.y, x_2999.y, x_2999.y, x_2999.y) * x_3001);
            let x_3004 : vec4<f32> = u_xlat10;
            let x_3006 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3004.z, x_3004.z, x_3004.z, x_3004.z) * x_3006);
            let x_3008 : vec4<f32> = u_xlat10;
            let x_3010 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3008.w, x_3008.w, x_3008.w, x_3008.w) * x_3010);
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3014 : vec2<f32> = vec2<f32>(x_3013.x, x_3013.y);
            let x_3016 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3014.x, x_3014.y, x_3016);
            let x_3023 : vec3<f32> = txVec43;
            let x_3025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3023.xy, x_3023.z);
            u_xlat11.x = x_3025;
            let x_3028 : vec4<f32> = u_xlat15;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.z, x_3028.w);
            let x_3031 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3039 : vec3<f32> = txVec44;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat80 = x_3041;
            let x_3042 : f32 = u_xlat80;
            let x_3044 : f32 = u_xlat20.y;
            u_xlat80 = (x_3042 * x_3044);
            let x_3047 : f32 = u_xlat20.x;
            let x_3049 : f32 = u_xlat11.x;
            let x_3051 : f32 = u_xlat80;
            u_xlat11.x = ((x_3047 * x_3049) + x_3051);
            let x_3055 : vec2<f32> = u_xlat55;
            let x_3057 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3055.x, x_3055.y, x_3057);
            let x_3064 : vec3<f32> = txVec45;
            let x_3066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3064.xy, x_3064.z);
            u_xlat55.x = x_3066;
            let x_3069 : f32 = u_xlat20.z;
            let x_3071 : f32 = u_xlat55.x;
            let x_3074 : f32 = u_xlat11.x;
            u_xlat55.x = ((x_3069 * x_3071) + x_3074);
            let x_3078 : vec4<f32> = u_xlat18;
            let x_3079 : vec2<f32> = vec2<f32>(x_3078.x, x_3078.y);
            let x_3081 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3079.x, x_3079.y, x_3081);
            let x_3089 : vec3<f32> = txVec46;
            let x_3091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3089.xy, x_3089.z);
            u_xlat78 = x_3091;
            let x_3093 : f32 = u_xlat20.w;
            let x_3094 : f32 = u_xlat78;
            let x_3097 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3093 * x_3094) + x_3097);
            let x_3101 : vec4<f32> = u_xlat16;
            let x_3102 : vec2<f32> = vec2<f32>(x_3101.x, x_3101.y);
            let x_3104 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec47;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat78 = x_3113;
            let x_3115 : f32 = u_xlat21.x;
            let x_3116 : f32 = u_xlat78;
            let x_3119 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3115 * x_3116) + x_3119);
            let x_3123 : vec4<f32> = u_xlat16;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec48;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat78 = x_3135;
            let x_3137 : f32 = u_xlat21.y;
            let x_3138 : f32 = u_xlat78;
            let x_3141 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3137 * x_3138) + x_3141);
            let x_3145 : vec4<f32> = u_xlat17;
            let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
            let x_3148 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
            let x_3155 : vec3<f32> = txVec49;
            let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
            u_xlat78 = x_3157;
            let x_3159 : f32 = u_xlat21.z;
            let x_3160 : f32 = u_xlat78;
            let x_3163 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3159 * x_3160) + x_3163);
            let x_3167 : vec4<f32> = u_xlat18;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
            let x_3170 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec50;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat78 = x_3179;
            let x_3181 : f32 = u_xlat21.w;
            let x_3182 : f32 = u_xlat78;
            let x_3185 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3181 * x_3182) + x_3185);
            let x_3189 : vec4<f32> = u_xlat19;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.x, x_3189.y);
            let x_3192 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec51;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat78 = x_3201;
            let x_3203 : f32 = u_xlat22.x;
            let x_3204 : f32 = u_xlat78;
            let x_3207 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3203 * x_3204) + x_3207);
            let x_3211 : vec4<f32> = u_xlat19;
            let x_3212 : vec2<f32> = vec2<f32>(x_3211.z, x_3211.w);
            let x_3214 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec52;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat78 = x_3223;
            let x_3225 : f32 = u_xlat22.y;
            let x_3226 : f32 = u_xlat78;
            let x_3229 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3225 * x_3226) + x_3229);
            let x_3233 : vec2<f32> = u_xlat34;
            let x_3235 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec53;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat78 = x_3244;
            let x_3246 : f32 = u_xlat22.z;
            let x_3247 : f32 = u_xlat78;
            let x_3250 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3246 * x_3247) + x_3250);
            let x_3254 : vec2<f32> = u_xlat63;
            let x_3256 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3254.x, x_3254.y, x_3256);
            let x_3263 : vec3<f32> = txVec54;
            let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
            u_xlat78 = x_3265;
            let x_3267 : f32 = u_xlat22.w;
            let x_3268 : f32 = u_xlat78;
            let x_3271 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3267 * x_3268) + x_3271);
            let x_3275 : vec4<f32> = u_xlat14;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.x, x_3275.y);
            let x_3278 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec55;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat78 = x_3287;
            let x_3289 : f32 = u_xlat10.x;
            let x_3290 : f32 = u_xlat78;
            let x_3293 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3289 * x_3290) + x_3293);
            let x_3297 : vec4<f32> = u_xlat14;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.z, x_3297.w);
            let x_3300 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec56;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat78 = x_3309;
            let x_3311 : f32 = u_xlat10.y;
            let x_3312 : f32 = u_xlat78;
            let x_3315 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3311 * x_3312) + x_3315);
            let x_3319 : vec2<f32> = u_xlat58;
            let x_3321 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec57;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat78 = x_3330;
            let x_3332 : f32 = u_xlat10.z;
            let x_3333 : f32 = u_xlat78;
            let x_3336 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3332 * x_3333) + x_3336);
            let x_3340 : vec4<f32> = u_xlat9;
            let x_3341 : vec2<f32> = vec2<f32>(x_3340.x, x_3340.y);
            let x_3343 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
            let x_3350 : vec3<f32> = txVec58;
            let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
            u_xlat9.x = x_3352;
            let x_3355 : f32 = u_xlat10.w;
            let x_3357 : f32 = u_xlat9.x;
            let x_3360 : f32 = u_xlat55.x;
            u_xlat77 = ((x_3355 * x_3357) + x_3360);
          }
        }
      } else {
        let x_3364 : vec4<f32> = u_xlat8;
        let x_3365 : vec2<f32> = vec2<f32>(x_3364.x, x_3364.y);
        let x_3367 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3365.x, x_3365.y, x_3367);
        let x_3374 : vec3<f32> = txVec59;
        let x_3376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3374.xy, x_3374.z);
        u_xlat77 = x_3376;
      }
      let x_3377 : i32 = u_xlati75;
      let x_3379 : f32 = x_257.x_AdditionalShadowParams[x_3377].x;
      u_xlat8.x = (1.0f + -(x_3379));
      let x_3383 : f32 = u_xlat77;
      let x_3384 : i32 = u_xlati75;
      let x_3386 : f32 = x_257.x_AdditionalShadowParams[x_3384].x;
      let x_3389 : f32 = u_xlat8.x;
      u_xlat8.x = ((x_3383 * x_3386) + x_3389);
      let x_3393 : f32 = u_xlat8.z;
      u_xlatb31.x = (0.0f >= x_3393);
      let x_3398 : f32 = u_xlat8.z;
      u_xlatb54 = (x_3398 >= 1.0f);
      let x_3400 : bool = u_xlatb54;
      let x_3402 : bool = u_xlatb31.x;
      u_xlatb31.x = (x_3400 | x_3402);
      let x_3406 : bool = u_xlatb31.x;
      if (x_3406) {
        x_3407 = 1.0f;
      } else {
        let x_3412 : f32 = u_xlat8.x;
        x_3407 = x_3412;
      }
      let x_3413 : f32 = x_3407;
      u_xlat8.x = x_3413;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_3418 : f32 = u_xlat8.x;
    u_xlat31.x = (-(x_3418) + 1.0f);
    let x_3423 : f32 = u_xlat4.x;
    let x_3425 : f32 = u_xlat31.x;
    let x_3428 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_3423 * x_3425) + x_3428);
    let x_3432 : i32 = u_xlati75;
    u_xlati31 = (1i << bitcast<u32>((x_3432 & 31i)));
    let x_3436 : i32 = u_xlati31;
    let x_3439 : f32 = x_1609.x_AdditionalLightsCookieEnableBits;
    u_xlati31 = bitcast<i32>((bitcast<u32>(x_3436) & bitcast<u32>(x_3439)));
    let x_3443 : i32 = u_xlati31;
    if ((x_3443 != 0i)) {
      let x_3447 : i32 = u_xlati75;
      let x_3449 : f32 = x_1609.x_AdditionalLightsLightTypes[x_3447].el;
      u_xlati31 = i32(x_3449);
      let x_3452 : i32 = u_xlati31;
      u_xlati54 = select(1i, 0i, (x_3452 != 0i));
      let x_3456 : i32 = u_xlati75;
      u_xlati77 = (x_3456 << bitcast<u32>(2i));
      let x_3458 : i32 = u_xlati54;
      if ((x_3458 != 0i)) {
        let x_3462 : vec3<f32> = vs_TEXCOORD1;
        let x_3464 : i32 = u_xlati77;
        let x_3467 : i32 = u_xlati77;
        let x_3471 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3464 + 1i) / 4i)][((x_3467 + 1i) % 4i)];
        let x_3473 : vec3<f32> = (vec3<f32>(x_3462.y, x_3462.y, x_3462.y) * vec3<f32>(x_3471.x, x_3471.y, x_3471.w));
        let x_3474 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3473.x, x_3473.y, x_3473.z, x_3474.w);
        let x_3476 : i32 = u_xlati77;
        let x_3478 : i32 = u_xlati77;
        let x_3481 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3476 / 4i)][(x_3478 % 4i)];
        let x_3483 : vec3<f32> = vs_TEXCOORD1;
        let x_3486 : vec4<f32> = u_xlat9;
        let x_3488 : vec3<f32> = ((vec3<f32>(x_3481.x, x_3481.y, x_3481.w) * vec3<f32>(x_3483.x, x_3483.x, x_3483.x)) + vec3<f32>(x_3486.x, x_3486.y, x_3486.z));
        let x_3489 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3489.w);
        let x_3491 : i32 = u_xlati77;
        let x_3494 : i32 = u_xlati77;
        let x_3498 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3491 + 2i) / 4i)][((x_3494 + 2i) % 4i)];
        let x_3500 : vec3<f32> = vs_TEXCOORD1;
        let x_3503 : vec4<f32> = u_xlat9;
        let x_3505 : vec3<f32> = ((vec3<f32>(x_3498.x, x_3498.y, x_3498.w) * vec3<f32>(x_3500.z, x_3500.z, x_3500.z)) + vec3<f32>(x_3503.x, x_3503.y, x_3503.z));
        let x_3506 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
        let x_3508 : vec4<f32> = u_xlat9;
        let x_3510 : i32 = u_xlati77;
        let x_3513 : i32 = u_xlati77;
        let x_3517 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3510 + 3i) / 4i)][((x_3513 + 3i) % 4i)];
        let x_3519 : vec3<f32> = (vec3<f32>(x_3508.x, x_3508.y, x_3508.z) + vec3<f32>(x_3517.x, x_3517.y, x_3517.w));
        let x_3520 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3520.w);
        let x_3522 : vec4<f32> = u_xlat9;
        let x_3524 : vec4<f32> = u_xlat9;
        let x_3526 : vec2<f32> = (vec2<f32>(x_3522.x, x_3522.y) / vec2<f32>(x_3524.z, x_3524.z));
        let x_3527 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3526.x, x_3526.y, x_3527.z, x_3527.w);
        let x_3529 : vec4<f32> = u_xlat9;
        let x_3532 : vec2<f32> = ((vec2<f32>(x_3529.x, x_3529.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3532.x, x_3532.y, x_3533.z, x_3533.w);
        let x_3535 : vec4<f32> = u_xlat9;
        let x_3539 : vec2<f32> = clamp(vec2<f32>(x_3535.x, x_3535.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3540 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3539.x, x_3539.y, x_3540.z, x_3540.w);
        let x_3542 : i32 = u_xlati75;
        let x_3544 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3542];
        let x_3546 : vec4<f32> = u_xlat9;
        let x_3549 : i32 = u_xlati75;
        let x_3551 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3549];
        let x_3553 : vec2<f32> = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3546.x, x_3546.y)) + vec2<f32>(x_3551.z, x_3551.w));
        let x_3554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3553.x, x_3553.y, x_3554.z, x_3554.w);
      } else {
        let x_3557 : i32 = u_xlati31;
        u_xlatb31.x = (x_3557 == 1i);
        let x_3561 : bool = u_xlatb31.x;
        u_xlati31 = select(0i, 1i, x_3561);
        let x_3563 : i32 = u_xlati31;
        if ((x_3563 != 0i)) {
          let x_3567 : vec3<f32> = vs_TEXCOORD1;
          let x_3569 : i32 = u_xlati77;
          let x_3572 : i32 = u_xlati77;
          let x_3576 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3569 + 1i) / 4i)][((x_3572 + 1i) % 4i)];
          let x_3578 : vec2<f32> = (vec2<f32>(x_3567.y, x_3567.y) * vec2<f32>(x_3576.x, x_3576.y));
          let x_3579 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3578.x, x_3578.y, x_3579.z);
          let x_3581 : i32 = u_xlati77;
          let x_3583 : i32 = u_xlati77;
          let x_3586 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3581 / 4i)][(x_3583 % 4i)];
          let x_3588 : vec3<f32> = vs_TEXCOORD1;
          let x_3591 : vec3<f32> = u_xlat31;
          let x_3593 : vec2<f32> = ((vec2<f32>(x_3586.x, x_3586.y) * vec2<f32>(x_3588.x, x_3588.x)) + vec2<f32>(x_3591.x, x_3591.y));
          let x_3594 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3593.x, x_3593.y, x_3594.z);
          let x_3596 : i32 = u_xlati77;
          let x_3599 : i32 = u_xlati77;
          let x_3603 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3596 + 2i) / 4i)][((x_3599 + 2i) % 4i)];
          let x_3605 : vec3<f32> = vs_TEXCOORD1;
          let x_3608 : vec3<f32> = u_xlat31;
          let x_3610 : vec2<f32> = ((vec2<f32>(x_3603.x, x_3603.y) * vec2<f32>(x_3605.z, x_3605.z)) + vec2<f32>(x_3608.x, x_3608.y));
          let x_3611 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3610.x, x_3610.y, x_3611.z);
          let x_3613 : vec3<f32> = u_xlat31;
          let x_3615 : i32 = u_xlati77;
          let x_3618 : i32 = u_xlati77;
          let x_3622 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3615 + 3i) / 4i)][((x_3618 + 3i) % 4i)];
          let x_3624 : vec2<f32> = (vec2<f32>(x_3613.x, x_3613.y) + vec2<f32>(x_3622.x, x_3622.y));
          let x_3625 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3624.x, x_3624.y, x_3625.z);
          let x_3627 : vec3<f32> = u_xlat31;
          let x_3630 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3631 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3630.x, x_3630.y, x_3631.z);
          let x_3633 : vec3<f32> = u_xlat31;
          let x_3635 : vec2<f32> = fract(vec2<f32>(x_3633.x, x_3633.y));
          let x_3636 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3635.x, x_3635.y, x_3636.z);
          let x_3638 : i32 = u_xlati75;
          let x_3640 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3638];
          let x_3642 : vec3<f32> = u_xlat31;
          let x_3645 : i32 = u_xlati75;
          let x_3647 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3645];
          let x_3649 : vec2<f32> = ((vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(x_3642.x, x_3642.y)) + vec2<f32>(x_3647.z, x_3647.w));
          let x_3650 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
        } else {
          let x_3653 : vec3<f32> = vs_TEXCOORD1;
          let x_3655 : i32 = u_xlati77;
          let x_3658 : i32 = u_xlati77;
          let x_3662 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3655 + 1i) / 4i)][((x_3658 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3653.y, x_3653.y, x_3653.y, x_3653.y) * x_3662);
          let x_3664 : i32 = u_xlati77;
          let x_3666 : i32 = u_xlati77;
          let x_3669 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_3664 / 4i)][(x_3666 % 4i)];
          let x_3670 : vec3<f32> = vs_TEXCOORD1;
          let x_3673 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3669 * vec4<f32>(x_3670.x, x_3670.x, x_3670.x, x_3670.x)) + x_3673);
          let x_3675 : i32 = u_xlati77;
          let x_3678 : i32 = u_xlati77;
          let x_3682 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3675 + 2i) / 4i)][((x_3678 + 2i) % 4i)];
          let x_3683 : vec3<f32> = vs_TEXCOORD1;
          let x_3686 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3682 * vec4<f32>(x_3683.z, x_3683.z, x_3683.z, x_3683.z)) + x_3686);
          let x_3688 : vec4<f32> = u_xlat10;
          let x_3689 : i32 = u_xlati77;
          let x_3692 : i32 = u_xlati77;
          let x_3696 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_3689 + 3i) / 4i)][((x_3692 + 3i) % 4i)];
          u_xlat10 = (x_3688 + x_3696);
          let x_3698 : vec4<f32> = u_xlat10;
          let x_3700 : vec4<f32> = u_xlat10;
          u_xlat31 = (vec3<f32>(x_3698.x, x_3698.y, x_3698.z) / vec3<f32>(x_3700.w, x_3700.w, x_3700.w));
          let x_3703 : vec3<f32> = u_xlat31;
          let x_3704 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(x_3703, x_3704);
          let x_3708 : f32 = u_xlat55.x;
          u_xlat55.x = inverseSqrt(x_3708);
          let x_3711 : vec3<f32> = u_xlat31;
          let x_3712 : vec2<f32> = u_xlat55;
          u_xlat31 = (x_3711 * vec3<f32>(x_3712.x, x_3712.x, x_3712.x));
          let x_3715 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(abs(x_3715), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3721 : f32 = u_xlat55.x;
          u_xlat55.x = max(x_3721, 0.00000099999999747524f);
          let x_3726 : f32 = u_xlat55.x;
          u_xlat55.x = (1.0f / x_3726);
          let x_3729 : vec3<f32> = u_xlat31;
          let x_3731 : vec2<f32> = u_xlat55;
          let x_3733 : vec3<f32> = (vec3<f32>(x_3729.z, x_3729.x, x_3729.y) * vec3<f32>(x_3731.x, x_3731.x, x_3731.x));
          let x_3734 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3733.x, x_3733.y, x_3733.z, x_3734.w);
          let x_3737 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3737);
          let x_3741 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3741, 0.0f, 1.0f);
          let x_3745 : vec4<f32> = u_xlat10;
          let x_3747 : vec4<bool> = (vec4<f32>(x_3745.y, x_3745.z, x_3745.y, x_3745.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_3747.x, x_3747.y);
          let x_3751 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_3751;
          let x_3753 : bool = u_xlatb33.x;
          if (x_3753) {
            let x_3758 : f32 = u_xlat10.x;
            x_3754 = x_3758;
          } else {
            let x_3761 : f32 = u_xlat10.x;
            x_3754 = -(x_3761);
          }
          let x_3763 : f32 = x_3754;
          hlslcc_movcTemp.x = x_3763;
          let x_3766 : bool = u_xlatb33.y;
          if (x_3766) {
            let x_3771 : f32 = u_xlat10.x;
            x_3767 = x_3771;
          } else {
            let x_3774 : f32 = u_xlat10.x;
            x_3767 = -(x_3774);
          }
          let x_3776 : f32 = x_3767;
          hlslcc_movcTemp.y = x_3776;
          let x_3778 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_3778;
          let x_3779 : vec3<f32> = u_xlat31;
          let x_3781 : vec2<f32> = u_xlat55;
          let x_3784 : vec4<f32> = u_xlat10;
          let x_3786 : vec2<f32> = ((vec2<f32>(x_3779.x, x_3779.y) * vec2<f32>(x_3781.x, x_3781.x)) + vec2<f32>(x_3784.x, x_3784.y));
          let x_3787 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3786.x, x_3786.y, x_3787.z);
          let x_3789 : vec3<f32> = u_xlat31;
          let x_3792 : vec2<f32> = ((vec2<f32>(x_3789.x, x_3789.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3793 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3792.x, x_3792.y, x_3793.z);
          let x_3795 : vec3<f32> = u_xlat31;
          let x_3799 : vec2<f32> = clamp(vec2<f32>(x_3795.x, x_3795.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3800 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3799.x, x_3799.y, x_3800.z);
          let x_3802 : i32 = u_xlati75;
          let x_3804 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3802];
          let x_3806 : vec3<f32> = u_xlat31;
          let x_3809 : i32 = u_xlati75;
          let x_3811 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[x_3809];
          let x_3813 : vec2<f32> = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(x_3806.x, x_3806.y)) + vec2<f32>(x_3811.z, x_3811.w));
          let x_3814 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3813.x, x_3813.y, x_3814.z, x_3814.w);
        }
      }
      let x_3821 : vec4<f32> = u_xlat9;
      let x_3823 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3821.x, x_3821.y), 0.0f);
      u_xlat9 = x_3823;
      let x_3825 : bool = u_xlatb28.y;
      if (x_3825) {
        let x_3830 : f32 = u_xlat9.w;
        x_3826 = x_3830;
      } else {
        let x_3833 : f32 = u_xlat9.x;
        x_3826 = x_3833;
      }
      let x_3834 : f32 = x_3826;
      u_xlat31.x = x_3834;
      let x_3837 : bool = u_xlatb28.x;
      if (x_3837) {
        let x_3841 : vec4<f32> = u_xlat9;
        x_3838 = vec3<f32>(x_3841.x, x_3841.y, x_3841.z);
      } else {
        let x_3844 : vec3<f32> = u_xlat31;
        x_3838 = vec3<f32>(x_3844.x, x_3844.x, x_3844.x);
      }
      let x_3846 : vec3<f32> = x_3838;
      u_xlat31 = x_3846;
    } else {
      u_xlat31.x = 1.0f;
      u_xlat31.y = 1.0f;
      u_xlat31.z = 1.0f;
    }
    let x_3851 : vec3<f32> = u_xlat31;
    let x_3852 : i32 = u_xlati75;
    let x_3854 : vec4<f32> = x_1912.x_AdditionalLightsColor[x_3852];
    u_xlat31 = (x_3851 * vec3<f32>(x_3854.x, x_3854.y, x_3854.z));
    let x_3857 : f32 = u_xlat76;
    let x_3859 : f32 = u_xlat8.x;
    u_xlat75 = (x_3857 * x_3859);
    let x_3861 : f32 = u_xlat75;
    let x_3863 : vec3<f32> = u_xlat31;
    let x_3864 : vec3<f32> = (vec3<f32>(x_3861, x_3861, x_3861) * x_3863);
    let x_3865 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3864.x, x_3864.y, x_3864.z, x_3865.w);
    let x_3867 : vec4<f32> = u_xlat2;
    let x_3869 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3867.x, x_3867.y, x_3867.z), vec3<f32>(x_3869.x, x_3869.y, x_3869.z));
    let x_3872 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3872, 0.0f, 1.0f);
    let x_3874 : f32 = u_xlat75;
    let x_3876 : vec4<f32> = u_xlat8;
    let x_3878 : vec3<f32> = (vec3<f32>(x_3874, x_3874, x_3874) * vec3<f32>(x_3876.x, x_3876.y, x_3876.z));
    let x_3879 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3878.x, x_3878.y, x_3878.z, x_3879.w);
    let x_3881 : vec3<f32> = u_xlat1;
    let x_3882 : f32 = u_xlat70;
    let x_3885 : vec4<f32> = u_xlat7;
    let x_3887 : vec3<f32> = ((x_3881 * vec3<f32>(x_3882, x_3882, x_3882)) + vec3<f32>(x_3885.x, x_3885.y, x_3885.z));
    let x_3888 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3887.x, x_3887.y, x_3887.z, x_3888.w);
    let x_3890 : vec4<f32> = u_xlat7;
    let x_3892 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3890.x, x_3890.y, x_3890.z), vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
    let x_3895 : f32 = u_xlat75;
    u_xlat75 = max(x_3895, 1.17549435e-38f);
    let x_3897 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3897);
    let x_3899 : f32 = u_xlat75;
    let x_3901 : vec4<f32> = u_xlat7;
    let x_3903 : vec3<f32> = (vec3<f32>(x_3899, x_3899, x_3899) * vec3<f32>(x_3901.x, x_3901.y, x_3901.z));
    let x_3904 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3903.x, x_3903.y, x_3903.z, x_3904.w);
    let x_3906 : vec4<f32> = u_xlat2;
    let x_3908 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3906.x, x_3906.y, x_3906.z), vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3911, 0.0f, 1.0f);
    let x_3913 : f32 = u_xlat75;
    u_xlat75 = log2(x_3913);
    let x_3915 : f32 = u_xlat71;
    let x_3916 : f32 = u_xlat75;
    u_xlat75 = (x_3915 * x_3916);
    let x_3918 : f32 = u_xlat75;
    u_xlat75 = exp2(x_3918);
    let x_3920 : f32 = u_xlat75;
    let x_3923 : vec4<f32> = x_41.x_SpecColor;
    let x_3925 : vec3<f32> = (vec3<f32>(x_3920, x_3920, x_3920) * vec3<f32>(x_3923.x, x_3923.y, x_3923.z));
    let x_3926 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
    let x_3928 : vec4<f32> = u_xlat7;
    let x_3930 : vec4<f32> = u_xlat8;
    let x_3932 : vec3<f32> = (vec3<f32>(x_3928.x, x_3928.y, x_3928.z) * vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
    let x_3933 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
    let x_3935 : vec4<f32> = u_xlat9;
    let x_3937 : vec4<f32> = u_xlat0;
    let x_3940 : vec4<f32> = u_xlat7;
    let x_3942 : vec3<f32> = ((vec3<f32>(x_3935.x, x_3935.y, x_3935.z) * vec3<f32>(x_3937.y, x_3937.z, x_3937.w)) + vec3<f32>(x_3940.x, x_3940.y, x_3940.z));
    let x_3943 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3943.w);
    let x_3945 : vec4<f32> = u_xlat6;
    let x_3947 : vec4<f32> = u_xlat7;
    let x_3949 : vec3<f32> = (vec3<f32>(x_3945.x, x_3945.y, x_3945.z) + vec3<f32>(x_3947.x, x_3947.y, x_3947.z));
    let x_3950 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3949.x, x_3949.y, x_3949.z, x_3950.w);

    continuing {
      let x_3952 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3952 + bitcast<u32>(1i));
    }
  }
  let x_3955 : vec3<f32> = u_xlat26;
  let x_3956 : vec4<f32> = u_xlat0;
  let x_3959 : vec3<f32> = u_xlat27;
  u_xlat23 = ((x_3955 * vec3<f32>(x_3956.y, x_3956.z, x_3956.w)) + x_3959);
  let x_3961 : vec4<f32> = u_xlat6;
  let x_3963 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_3961.x, x_3961.y, x_3961.z) + x_3963);
  let x_3965 : f32 = u_xlat3;
  let x_3966 : f32 = u_xlat3;
  u_xlat1.x = (x_3965 * -(x_3966));
  let x_3971 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3971);
  let x_3974 : vec3<f32> = u_xlat23;
  let x_3976 : vec4<f32> = x_28.unity_FogColor;
  u_xlat23 = (x_3974 + -(vec3<f32>(x_3976.x, x_3976.y, x_3976.z)));
  let x_3982 : vec3<f32> = u_xlat1;
  let x_3984 : vec3<f32> = u_xlat23;
  let x_3987 : vec4<f32> = x_28.unity_FogColor;
  let x_3989 : vec3<f32> = ((vec3<f32>(x_3982.x, x_3982.x, x_3982.x) * x_3984) + vec3<f32>(x_3987.x, x_3987.y, x_3987.z));
  let x_3990 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
  let x_3994 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3994 == 1.0f);
  let x_3996 : bool = u_xlatb23;
  if (x_3996) {
    let x_4001 : f32 = u_xlat0.x;
    x_3997 = x_4001;
  } else {
    x_3997 = 1.0f;
  }
  let x_4003 : f32 = x_3997;
  SV_Target0.w = x_4003;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


