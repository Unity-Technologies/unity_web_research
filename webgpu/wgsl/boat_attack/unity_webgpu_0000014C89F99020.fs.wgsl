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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb72 : bool;

@group(1) @binding(4) var<uniform> x_231 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

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

@group(1) @binding(5) var<uniform> x_1584 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1703 : UnityPerDraw;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlati75 : i32;

@group(1) @binding(1) var<uniform> x_1889 : AdditionalLights;

var<private> u_xlat76 : f32;

var<private> u_xlati8 : i32;

var<private> u_xlatb31 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb77 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

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
  var x_1669 : f32;
  var x_1681 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2040 : f32;
  var x_2051 : f32;
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
  var x_3384 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_3731 : f32;
  var x_3744 : f32;
  var x_3803 : f32;
  var x_3815 : vec3<f32>;
  var x_3973 : f32;
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
    let x_103 : vec3<f32> = u_xlat2;
    x_98 = x_103;
  }
  let x_104 : vec3<f32> = x_98;
  u_xlat1 = x_104;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat70;
  let x_114 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_116 : vec3<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat70;
  u_xlat70 = max(x_119, 0.00006103515625f);
  let x_122 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_122);
  let x_127 : f32 = vs_TEXCOORD1.y;
  let x_129 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat71 = (x_127 * x_129);
  let x_132 : f32 = x_28.unity_MatrixV[0i].z;
  let x_134 : f32 = vs_TEXCOORD1.x;
  let x_136 : f32 = u_xlat71;
  u_xlat71 = ((x_132 * x_134) + x_136);
  let x_139 : f32 = x_28.unity_MatrixV[2i].z;
  let x_141 : f32 = vs_TEXCOORD1.z;
  let x_143 : f32 = u_xlat71;
  u_xlat71 = ((x_139 * x_141) + x_143);
  let x_145 : f32 = u_xlat71;
  let x_148 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat71 = (x_145 + x_148);
  let x_150 : f32 = u_xlat71;
  let x_154 : f32 = x_28.x_ProjectionParams.y;
  u_xlat71 = (-(x_150) + -(x_154));
  let x_157 : f32 = u_xlat71;
  u_xlat71 = max(x_157, 0.0f);
  let x_159 : f32 = u_xlat71;
  let x_162 : f32 = x_28.unity_FogParams.x;
  u_xlat71 = (x_159 * x_162);
  let x_171 : vec2<f32> = vs_TEXCOORD7;
  let x_173 : f32 = x_28.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_171, x_173);
  u_xlat3 = x_174;
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_28.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_180, x_182);
  let x_184 : vec3<f32> = vec3<f32>(x_183.x, x_183.y, x_183.z);
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec3<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_194, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : f32 = u_xlat3.x;
  u_xlat3.x = (x_200 + 0.5f);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_213 : f32 = u_xlat3.w;
  u_xlat72 = max(x_213, 0.00009999999747378752f);
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : f32 = u_xlat72;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) / vec3<f32>(x_218, x_218, x_218));
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_234 : f32 = x_231.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_234);
  let x_236 : bool = u_xlatb72;
  if (x_236) {
    let x_240 : f32 = x_231.x_MainLightShadowParams.y;
    u_xlatb72 = (x_240 == 1.0f);
    let x_243 : bool = u_xlatb72;
    if (x_243) {
      let x_248 : vec4<f32> = vs_TEXCOORD6;
      let x_251 : vec4<f32> = x_231.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_248.x, x_248.y, x_248.x, x_248.y) + x_251);
      let x_254 : vec4<f32> = u_xlat4;
      let x_255 : vec2<f32> = vec2<f32>(x_254.x, x_254.y);
      let x_257 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_255.x, x_255.y, x_257);
      let x_270 : vec3<f32> = txVec0;
      let x_272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_270.xy, x_270.z);
      u_xlat5.x = x_272;
      let x_275 : vec4<f32> = u_xlat4;
      let x_276 : vec2<f32> = vec2<f32>(x_275.z, x_275.w);
      let x_278 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_276.x, x_276.y, x_278);
      let x_285 : vec3<f32> = txVec1;
      let x_287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_285.xy, x_285.z);
      u_xlat5.y = x_287;
      let x_289 : vec4<f32> = vs_TEXCOORD6;
      let x_292 : vec4<f32> = x_231.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_289.x, x_289.y, x_289.x, x_289.y) + x_292);
      let x_295 : vec4<f32> = u_xlat4;
      let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
      let x_298 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_296.x, x_296.y, x_298);
      let x_305 : vec3<f32> = txVec2;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
      u_xlat5.z = x_307;
      let x_310 : vec4<f32> = u_xlat4;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec3;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_320.xy, x_320.z);
      u_xlat5.w = x_322;
      let x_324 : vec4<f32> = u_xlat5;
      u_xlat72 = dot(x_324, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_331 : f32 = x_231.x_MainLightShadowParams.y;
      u_xlatb4 = (x_331 == 2.0f);
      let x_334 : bool = u_xlatb4;
      if (x_334) {
        let x_337 : vec4<f32> = vs_TEXCOORD6;
        let x_340 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_344 : vec2<f32> = ((vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_340.z, x_340.w)) + vec2<f32>(0.5f, 0.5f));
        let x_345 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
        let x_347 : vec4<f32> = u_xlat4;
        let x_349 : vec2<f32> = floor(vec2<f32>(x_347.x, x_347.y));
        let x_350 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
        let x_354 : vec4<f32> = vs_TEXCOORD6;
        let x_357 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_360 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_357.z, x_357.w)) + -(vec2<f32>(x_360.x, x_360.y)));
        let x_364 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_364.x, x_364.x, x_364.y, x_364.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_369 : vec4<f32> = u_xlat5;
        let x_371 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_369.x, x_369.x, x_369.z, x_369.z) * vec4<f32>(x_371.x, x_371.x, x_371.z, x_371.z));
        let x_374 : vec4<f32> = u_xlat6;
        let x_378 : vec2<f32> = (vec2<f32>(x_374.y, x_374.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_379 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_378.x, x_379.y, x_378.y, x_379.w);
        let x_381 : vec4<f32> = u_xlat6;
        let x_384 : vec2<f32> = u_xlat50;
        let x_386 : vec2<f32> = ((vec2<f32>(x_381.x, x_381.z) * vec2<f32>(0.5f, 0.5f)) + -(x_384));
        let x_387 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
        let x_390 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_390) + vec2<f32>(1.0f, 1.0f));
        let x_395 : vec2<f32> = u_xlat50;
        let x_397 : vec2<f32> = min(x_395, vec2<f32>(0.0f, 0.0f));
        let x_398 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_400 : vec4<f32> = u_xlat7;
        let x_403 : vec4<f32> = u_xlat7;
        let x_406 : vec2<f32> = u_xlat52;
        let x_407 : vec2<f32> = ((-(vec2<f32>(x_400.x, x_400.y)) * vec2<f32>(x_403.x, x_403.y)) + x_406);
        let x_408 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
        let x_410 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_410, vec2<f32>(0.0f, 0.0f));
        let x_412 : vec2<f32> = u_xlat50;
        let x_414 : vec2<f32> = u_xlat50;
        let x_416 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_412) * x_414) + vec2<f32>(x_416.y, x_416.w));
        let x_419 : vec4<f32> = u_xlat7;
        let x_421 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) + vec2<f32>(1.0f, 1.0f));
        let x_422 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_424 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_424 + vec2<f32>(1.0f, 1.0f));
        let x_427 : vec4<f32> = u_xlat6;
        let x_431 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_432 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_434 : vec2<f32> = u_xlat52;
        let x_435 : vec2<f32> = (x_434 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_436 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_438 : vec4<f32> = u_xlat7;
        let x_440 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
        let x_444 : vec2<f32> = u_xlat50;
        let x_445 : vec2<f32> = (x_444 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_448.y, x_448.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_452 : f32 = u_xlat7.x;
        u_xlat8.z = x_452;
        let x_455 : f32 = u_xlat50.x;
        u_xlat8.w = x_455;
        let x_458 : f32 = u_xlat9.x;
        u_xlat6.z = x_458;
        let x_461 : f32 = u_xlat5.x;
        u_xlat6.w = x_461;
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_464.z, x_464.w, x_464.x, x_464.z) + vec4<f32>(x_466.z, x_466.w, x_466.x, x_466.z));
        let x_470 : f32 = u_xlat8.y;
        u_xlat7.z = x_470;
        let x_473 : f32 = u_xlat50.y;
        u_xlat7.w = x_473;
        let x_476 : f32 = u_xlat6.y;
        u_xlat9.z = x_476;
        let x_479 : f32 = u_xlat5.z;
        u_xlat9.w = x_479;
        let x_481 : vec4<f32> = u_xlat7;
        let x_483 : vec4<f32> = u_xlat9;
        let x_485 : vec3<f32> = (vec3<f32>(x_481.z, x_481.y, x_481.w) + vec3<f32>(x_483.z, x_483.y, x_483.w));
        let x_486 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec4<f32> = u_xlat10;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.z, x_488.w) / vec3<f32>(x_490.z, x_490.w, x_490.y));
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat6;
        let x_500 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat9;
        let x_505 : vec4<f32> = u_xlat5;
        let x_507 : vec3<f32> = (vec3<f32>(x_503.z, x_503.y, x_503.w) / vec3<f32>(x_505.x, x_505.y, x_505.z));
        let x_508 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat7;
        let x_512 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat6;
        let x_518 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_520 : vec3<f32> = (vec3<f32>(x_515.y, x_515.x, x_515.z) * vec3<f32>(x_518.x, x_518.x, x_518.x));
        let x_521 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
        let x_523 : vec4<f32> = u_xlat7;
        let x_526 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_528 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(x_526.y, x_526.y, x_526.y));
        let x_529 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
        let x_532 : f32 = u_xlat7.x;
        u_xlat6.w = x_532;
        let x_534 : vec4<f32> = u_xlat4;
        let x_537 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_540 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_534.x, x_534.y, x_534.x, x_534.y) * vec4<f32>(x_537.x, x_537.y, x_537.x, x_537.y)) + vec4<f32>(x_540.y, x_540.w, x_540.x, x_540.w));
        let x_543 : vec4<f32> = u_xlat4;
        let x_546 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_549 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_543.x, x_543.y) * vec2<f32>(x_546.x, x_546.y)) + vec2<f32>(x_549.z, x_549.w));
        let x_553 : f32 = u_xlat6.y;
        u_xlat7.w = x_553;
        let x_555 : vec4<f32> = u_xlat7;
        let x_556 : vec2<f32> = vec2<f32>(x_555.y, x_555.z);
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_556.x, x_557.z, x_556.y);
        let x_559 : vec4<f32> = u_xlat4;
        let x_562 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) * vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y)) + vec4<f32>(x_565.x, x_565.y, x_565.z, x_565.y));
        let x_568 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) * vec4<f32>(x_571.x, x_571.y, x_571.x, x_571.y)) + vec4<f32>(x_574.w, x_574.y, x_574.w, x_574.z));
        let x_577 : vec4<f32> = u_xlat4;
        let x_580 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y) * vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y)) + vec4<f32>(x_583.x, x_583.w, x_583.z, x_583.w));
        let x_587 : vec4<f32> = u_xlat5;
        let x_589 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_587.x, x_587.x, x_587.x, x_587.y) * vec4<f32>(x_589.z, x_589.w, x_589.y, x_589.z));
        let x_593 : vec4<f32> = u_xlat5;
        let x_595 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_593.y, x_593.y, x_593.z, x_593.z) * x_595);
        let x_598 : f32 = u_xlat5.z;
        let x_600 : f32 = u_xlat10.y;
        u_xlat4.x = (x_598 * x_600);
        let x_604 : vec4<f32> = u_xlat8;
        let x_605 : vec2<f32> = vec2<f32>(x_604.x, x_604.y);
        let x_607 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_605.x, x_605.y, x_607);
        let x_615 : vec3<f32> = txVec4;
        let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_615.xy, x_615.z);
        u_xlat27.x = x_617;
        let x_620 : vec4<f32> = u_xlat8;
        let x_621 : vec2<f32> = vec2<f32>(x_620.z, x_620.w);
        let x_623 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_621.x, x_621.y, x_623);
        let x_630 : vec3<f32> = txVec5;
        let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_630.xy, x_630.z);
        u_xlat5.x = x_632;
        let x_635 : f32 = u_xlat5.x;
        let x_637 : f32 = u_xlat11.y;
        u_xlat5.x = (x_635 * x_637);
        let x_641 : f32 = u_xlat11.x;
        let x_643 : f32 = u_xlat27.x;
        let x_646 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_641 * x_643) + x_646);
        let x_650 : vec2<f32> = u_xlat50;
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec6;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat50.x = x_661;
        let x_664 : f32 = u_xlat11.z;
        let x_666 : f32 = u_xlat50.x;
        let x_669 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_664 * x_666) + x_669);
        let x_673 : vec4<f32> = u_xlat7;
        let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec7;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_683.xy, x_683.z);
        u_xlat50.x = x_685;
        let x_688 : f32 = u_xlat11.w;
        let x_690 : f32 = u_xlat50.x;
        let x_693 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_688 * x_690) + x_693);
        let x_697 : vec4<f32> = u_xlat9;
        let x_698 : vec2<f32> = vec2<f32>(x_697.x, x_697.y);
        let x_700 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_698.x, x_698.y, x_700);
        let x_707 : vec3<f32> = txVec8;
        let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
        u_xlat50.x = x_709;
        let x_712 : f32 = u_xlat12.x;
        let x_714 : f32 = u_xlat50.x;
        let x_717 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_712 * x_714) + x_717);
        let x_721 : vec4<f32> = u_xlat9;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec9;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_731.xy, x_731.z);
        u_xlat50.x = x_733;
        let x_736 : f32 = u_xlat12.y;
        let x_738 : f32 = u_xlat50.x;
        let x_741 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_736 * x_738) + x_741);
        let x_745 : vec4<f32> = u_xlat7;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec10;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_755.xy, x_755.z);
        u_xlat50.x = x_757;
        let x_760 : f32 = u_xlat12.z;
        let x_762 : f32 = u_xlat50.x;
        let x_765 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_760 * x_762) + x_765);
        let x_769 : vec4<f32> = u_xlat6;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_772 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec11;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat50.x = x_781;
        let x_784 : f32 = u_xlat12.w;
        let x_786 : f32 = u_xlat50.x;
        let x_789 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_784 * x_786) + x_789);
        let x_793 : vec4<f32> = u_xlat6;
        let x_794 : vec2<f32> = vec2<f32>(x_793.z, x_793.w);
        let x_796 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec12;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_803.xy, x_803.z);
        u_xlat50.x = x_805;
        let x_808 : f32 = u_xlat4.x;
        let x_810 : f32 = u_xlat50.x;
        let x_813 : f32 = u_xlat27.x;
        u_xlat72 = ((x_808 * x_810) + x_813);
      } else {
        let x_816 : vec4<f32> = vs_TEXCOORD6;
        let x_819 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_822 : vec2<f32> = ((vec2<f32>(x_816.x, x_816.y) * vec2<f32>(x_819.z, x_819.w)) + vec2<f32>(0.5f, 0.5f));
        let x_823 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat4;
        let x_827 : vec2<f32> = floor(vec2<f32>(x_825.x, x_825.y));
        let x_828 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = vs_TEXCOORD6;
        let x_833 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_830.x, x_830.y) * vec2<f32>(x_833.z, x_833.w)) + -(vec2<f32>(x_836.x, x_836.y)));
        let x_840 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_840.x, x_840.x, x_840.y, x_840.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_843 : vec4<f32> = u_xlat5;
        let x_845 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_843.x, x_843.x, x_843.z, x_843.z) * vec4<f32>(x_845.x, x_845.x, x_845.z, x_845.z));
        let x_848 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = (vec2<f32>(x_848.y, x_848.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_853 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_853.x, x_852.x, x_853.z, x_852.y);
        let x_855 : vec4<f32> = u_xlat6;
        let x_858 : vec2<f32> = u_xlat50;
        let x_860 : vec2<f32> = ((vec2<f32>(x_855.x, x_855.z) * vec2<f32>(0.5f, 0.5f)) + -(x_858));
        let x_861 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_860.x, x_861.y, x_860.y, x_861.w);
        let x_863 : vec2<f32> = u_xlat50;
        let x_865 : vec2<f32> = (-(x_863) + vec2<f32>(1.0f, 1.0f));
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_868, vec2<f32>(0.0f, 0.0f));
        let x_870 : vec2<f32> = u_xlat52;
        let x_872 : vec2<f32> = u_xlat52;
        let x_874 : vec4<f32> = u_xlat6;
        let x_876 : vec2<f32> = ((-(x_870) * x_872) + vec2<f32>(x_874.x, x_874.y));
        let x_877 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_879 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_879, vec2<f32>(0.0f, 0.0f));
        let x_882 : vec2<f32> = u_xlat52;
        let x_884 : vec2<f32> = u_xlat52;
        let x_886 : vec4<f32> = u_xlat5;
        let x_888 : vec2<f32> = ((-(x_882) * x_884) + vec2<f32>(x_886.y, x_886.w));
        let x_889 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_888.x, x_889.y, x_888.y);
        let x_891 : vec4<f32> = u_xlat6;
        let x_894 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) + vec2<f32>(2.0f, 2.0f));
        let x_895 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec3<f32> = u_xlat28;
        let x_899 : vec2<f32> = (vec2<f32>(x_897.x, x_897.z) + vec2<f32>(2.0f, 2.0f));
        let x_900 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_900.x, x_899.x, x_900.z, x_899.y);
        let x_903 : f32 = u_xlat5.y;
        u_xlat8.z = (x_903 * 0.08163200318813323975f);
        let x_907 : vec4<f32> = u_xlat5;
        let x_910 : vec3<f32> = (vec3<f32>(x_907.z, x_907.x, x_907.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_911 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat6;
        let x_916 : vec2<f32> = (vec2<f32>(x_913.x, x_913.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_917 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_920 : f32 = u_xlat9.y;
        u_xlat8.x = x_920;
        let x_922 : vec2<f32> = u_xlat50;
        let x_929 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_930.x, x_929.x, x_930.z, x_929.y);
        let x_932 : vec2<f32> = u_xlat50;
        let x_936 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_937 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
        let x_940 : f32 = u_xlat5.x;
        u_xlat6.y = x_940;
        let x_943 : f32 = u_xlat7.y;
        u_xlat6.w = x_943;
        let x_945 : vec4<f32> = u_xlat6;
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_945 + x_946);
        let x_948 : vec2<f32> = u_xlat50;
        let x_951 : vec2<f32> = ((vec2<f32>(x_948.y, x_948.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_952 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_952.x, x_951.x, x_952.z, x_951.y);
        let x_954 : vec2<f32> = u_xlat50;
        let x_957 : vec2<f32> = ((vec2<f32>(x_954.y, x_954.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_958 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_957.x, x_958.y, x_957.y, x_958.w);
        let x_961 : f32 = u_xlat5.y;
        u_xlat7.y = x_961;
        let x_963 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_963 + x_964);
        let x_966 : vec4<f32> = u_xlat6;
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_966 / x_967);
        let x_969 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_969 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_975 : vec4<f32> = u_xlat7;
        let x_976 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_975 / x_976);
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_978 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_980 : vec4<f32> = u_xlat6;
        let x_983 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_980.w, x_980.x, x_980.y, x_980.z) * vec4<f32>(x_983.x, x_983.x, x_983.x, x_983.x));
        let x_986 : vec4<f32> = u_xlat7;
        let x_989 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_986.x, x_986.w, x_986.y, x_986.z) * vec4<f32>(x_989.y, x_989.y, x_989.y, x_989.y));
        let x_992 : vec4<f32> = u_xlat6;
        let x_993 : vec3<f32> = vec3<f32>(x_992.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_994.y, x_993.y, x_993.z);
        let x_997 : f32 = u_xlat7.x;
        u_xlat9.y = x_997;
        let x_999 : vec4<f32> = u_xlat4;
        let x_1002 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1005.y));
        let x_1008 : vec4<f32> = u_xlat4;
        let x_1011 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.x, x_1011.y)) + vec2<f32>(x_1014.w, x_1014.y));
        let x_1018 : f32 = u_xlat9.y;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.z;
        u_xlat9.y = x_1021;
        let x_1023 : vec4<f32> = u_xlat4;
        let x_1026 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.y));
        let x_1032 : vec4<f32> = u_xlat4;
        let x_1035 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1032.x, x_1032.y) * vec2<f32>(x_1035.x, x_1035.y)) + vec2<f32>(x_1038.w, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1044 : f32 = u_xlat9.y;
        u_xlat6.z = x_1044;
        let x_1047 : vec4<f32> = u_xlat4;
        let x_1050 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y) * vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y)) + vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.z));
        let x_1057 : f32 = u_xlat7.w;
        u_xlat9.y = x_1057;
        let x_1060 : vec4<f32> = u_xlat4;
        let x_1063 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) * vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y)) + vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.y));
        let x_1070 : vec4<f32> = u_xlat4;
        let x_1073 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(x_1073.x, x_1073.y)) + vec2<f32>(x_1076.w, x_1076.y));
        let x_1080 : f32 = u_xlat9.y;
        u_xlat6.w = x_1080;
        let x_1083 : vec4<f32> = u_xlat4;
        let x_1086 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1093 : vec3<f32> = vec3<f32>(x_1092.x, x_1092.z, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1093.x, x_1094.y, x_1093.y, x_1093.z);
        let x_1096 : vec4<f32> = u_xlat4;
        let x_1099 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1102.y));
        let x_1106 : vec4<f32> = u_xlat4;
        let x_1109 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.w, x_1112.y));
        let x_1116 : f32 = u_xlat6.x;
        u_xlat7.x = x_1116;
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_231.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1126 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.x, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1130 : vec4<f32> = u_xlat5;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1130.x, x_1130.x, x_1130.x, x_1130.x) * x_1132);
        let x_1135 : vec4<f32> = u_xlat5;
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1135.y, x_1135.y, x_1135.y, x_1135.y) * x_1137);
        let x_1140 : vec4<f32> = u_xlat5;
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1140.z, x_1140.z, x_1140.z, x_1140.z) * x_1142);
        let x_1144 : vec4<f32> = u_xlat5;
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1144.w, x_1144.w, x_1144.w, x_1144.w) * x_1146);
        let x_1149 : vec4<f32> = u_xlat10;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.x, x_1149.y);
        let x_1152 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1159 : vec3<f32> = txVec13;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat6.x = x_1161;
        let x_1164 : vec4<f32> = u_xlat10;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.z, x_1164.w);
        let x_1167 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1175 : vec3<f32> = txVec14;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat75 = x_1177;
        let x_1178 : f32 = u_xlat75;
        let x_1180 : f32 = u_xlat15.y;
        u_xlat75 = (x_1178 * x_1180);
        let x_1183 : f32 = u_xlat15.x;
        let x_1185 : f32 = u_xlat6.x;
        let x_1187 : f32 = u_xlat75;
        u_xlat6.x = ((x_1183 * x_1185) + x_1187);
        let x_1191 : vec2<f32> = u_xlat50;
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec15;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat50.x = x_1202;
        let x_1205 : f32 = u_xlat15.z;
        let x_1207 : f32 = u_xlat50.x;
        let x_1210 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1205 * x_1207) + x_1210);
        let x_1214 : vec4<f32> = u_xlat13;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1225 : vec3<f32> = txVec16;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat73 = x_1227;
        let x_1229 : f32 = u_xlat15.w;
        let x_1230 : f32 = u_xlat73;
        let x_1233 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec17;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat73 = x_1249;
        let x_1251 : f32 = u_xlat16.x;
        let x_1252 : f32 = u_xlat73;
        let x_1255 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec18;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat73 = x_1271;
        let x_1273 : f32 = u_xlat16.y;
        let x_1274 : f32 = u_xlat73;
        let x_1277 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat12;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec19;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat73 = x_1293;
        let x_1295 : f32 = u_xlat16.z;
        let x_1296 : f32 = u_xlat73;
        let x_1299 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1295 * x_1296) + x_1299);
        let x_1303 : vec4<f32> = u_xlat13;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec20;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat73 = x_1315;
        let x_1317 : f32 = u_xlat16.w;
        let x_1318 : f32 = u_xlat73;
        let x_1321 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1317 * x_1318) + x_1321);
        let x_1325 : vec4<f32> = u_xlat14;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec21;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat73 = x_1337;
        let x_1339 : f32 = u_xlat17.x;
        let x_1340 : f32 = u_xlat73;
        let x_1343 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1339 * x_1340) + x_1343);
        let x_1347 : vec4<f32> = u_xlat14;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec22;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat73 = x_1359;
        let x_1361 : f32 = u_xlat17.y;
        let x_1362 : f32 = u_xlat73;
        let x_1365 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1361 * x_1362) + x_1365);
        let x_1369 : vec2<f32> = u_xlat29;
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec23;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat73 = x_1380;
        let x_1382 : f32 = u_xlat17.z;
        let x_1383 : f32 = u_xlat73;
        let x_1386 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1382 * x_1383) + x_1386);
        let x_1390 : vec2<f32> = u_xlat58;
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec24;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat73 = x_1401;
        let x_1403 : f32 = u_xlat17.w;
        let x_1404 : f32 = u_xlat73;
        let x_1407 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat9;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec25;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat73 = x_1423;
        let x_1425 : f32 = u_xlat5.x;
        let x_1426 : f32 = u_xlat73;
        let x_1429 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec26;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat73 = x_1445;
        let x_1447 : f32 = u_xlat5.y;
        let x_1448 : f32 = u_xlat73;
        let x_1451 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec2<f32> = u_xlat53;
        let x_1457 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec27;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat73 = x_1466;
        let x_1468 : f32 = u_xlat5.z;
        let x_1469 : f32 = u_xlat73;
        let x_1472 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1468 * x_1469) + x_1472);
        let x_1476 : vec4<f32> = u_xlat4;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec28;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat4.x = x_1488;
        let x_1491 : f32 = u_xlat5.w;
        let x_1493 : f32 = u_xlat4.x;
        let x_1496 : f32 = u_xlat50.x;
        u_xlat72 = ((x_1491 * x_1493) + x_1496);
      }
    }
  } else {
    let x_1500 : vec4<f32> = vs_TEXCOORD6;
    let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
    let x_1503 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
    let x_1510 : vec3<f32> = txVec29;
    let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
    u_xlat72 = x_1512;
  }
  let x_1514 : f32 = x_231.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1514) + 1.0f);
  let x_1518 : f32 = u_xlat72;
  let x_1520 : f32 = x_231.x_MainLightShadowParams.x;
  let x_1523 : f32 = u_xlat4.x;
  u_xlat72 = ((x_1518 * x_1520) + x_1523);
  let x_1526 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1526);
  let x_1532 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (x_1532 >= 1.0f);
  let x_1536 : bool = u_xlatb27.x;
  let x_1537 : bool = u_xlatb4;
  u_xlatb4 = (x_1536 | x_1537);
  let x_1539 : bool = u_xlatb4;
  let x_1540 : f32 = u_xlat72;
  u_xlat72 = select(x_1540, 1.0f, x_1539);
  let x_1542 : vec3<f32> = vs_TEXCOORD1;
  let x_1544 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1546 : vec3<f32> = (x_1542 + -(x_1544));
  let x_1547 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
  let x_1549 : vec4<f32> = u_xlat4;
  let x_1551 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.z), vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
  let x_1556 : f32 = u_xlat4.x;
  let x_1558 : f32 = x_231.x_MainLightShadowParams.z;
  let x_1561 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1556 * x_1558) + x_1561);
  let x_1565 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1565, 0.0f, 1.0f);
  let x_1568 : f32 = u_xlat72;
  u_xlat50.x = (-(x_1568) + 1.0f);
  let x_1573 : f32 = u_xlat27.x;
  let x_1575 : f32 = u_xlat50.x;
  let x_1577 : f32 = u_xlat72;
  u_xlat72 = ((x_1573 * x_1575) + x_1577);
  let x_1586 : f32 = x_1584.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1586 == -1.0f));
  let x_1591 : bool = u_xlatb27.x;
  if (x_1591) {
    let x_1594 : vec3<f32> = vs_TEXCOORD1;
    let x_1597 : vec4<f32> = x_1584.x_MainLightWorldToLight[1i];
    let x_1599 : vec2<f32> = (vec2<f32>(x_1594.y, x_1594.y) * vec2<f32>(x_1597.x, x_1597.y));
    let x_1600 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1599.x, x_1599.y, x_1600.z);
    let x_1603 : vec4<f32> = x_1584.x_MainLightWorldToLight[0i];
    let x_1605 : vec3<f32> = vs_TEXCOORD1;
    let x_1608 : vec3<f32> = u_xlat27;
    let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1605.x, x_1605.x)) + vec2<f32>(x_1608.x, x_1608.y));
    let x_1611 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1610.x, x_1610.y, x_1611.z);
    let x_1614 : vec4<f32> = x_1584.x_MainLightWorldToLight[2i];
    let x_1616 : vec3<f32> = vs_TEXCOORD1;
    let x_1619 : vec3<f32> = u_xlat27;
    let x_1621 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(x_1616.z, x_1616.z)) + vec2<f32>(x_1619.x, x_1619.y));
    let x_1622 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1621.x, x_1621.y, x_1622.z);
    let x_1624 : vec3<f32> = u_xlat27;
    let x_1627 : vec4<f32> = x_1584.x_MainLightWorldToLight[3i];
    let x_1629 : vec2<f32> = (vec2<f32>(x_1624.x, x_1624.y) + vec2<f32>(x_1627.x, x_1627.y));
    let x_1630 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1629.x, x_1629.y, x_1630.z);
    let x_1632 : vec3<f32> = u_xlat27;
    let x_1635 : vec2<f32> = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1636 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1635.x, x_1635.y, x_1636.z);
    let x_1643 : vec3<f32> = u_xlat27;
    let x_1646 : f32 = x_28.x_GlobalMipBias.x;
    let x_1647 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1643.x, x_1643.y), x_1646);
    u_xlat5 = x_1647;
    let x_1649 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1651 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1653 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1655 : f32 = x_1584.x_MainLightCookieTextureFormat;
    let x_1656 : vec4<f32> = vec4<f32>(x_1649, x_1651, x_1653, x_1655);
    let x_1664 : vec4<bool> = (vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1656.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1664.x, x_1664.y);
    let x_1667 : bool = u_xlatb27.y;
    if (x_1667) {
      let x_1673 : f32 = u_xlat5.w;
      x_1669 = x_1673;
    } else {
      let x_1676 : f32 = u_xlat5.x;
      x_1669 = x_1676;
    }
    let x_1677 : f32 = x_1669;
    u_xlat50.x = x_1677;
    let x_1680 : bool = u_xlatb27.x;
    if (x_1680) {
      let x_1684 : vec4<f32> = u_xlat5;
      x_1681 = vec3<f32>(x_1684.x, x_1684.y, x_1684.z);
    } else {
      let x_1687 : vec2<f32> = u_xlat50;
      x_1681 = vec3<f32>(x_1687.x, x_1687.x, x_1687.x);
    }
    let x_1689 : vec3<f32> = x_1681;
    u_xlat27 = x_1689;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1694 : vec3<f32> = u_xlat27;
  let x_1696 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat27 = (x_1694 * vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : f32 = u_xlat72;
  let x_1705 : f32 = x_1703.unity_LightData.z;
  u_xlat72 = (x_1699 * x_1705);
  let x_1707 : f32 = u_xlat72;
  let x_1709 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1707, x_1707, x_1707) * x_1709);
  let x_1711 : vec3<f32> = u_xlat2;
  let x_1713 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat72 = dot(x_1711, vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1716, 0.0f, 1.0f);
  let x_1718 : f32 = u_xlat72;
  let x_1720 : vec3<f32> = u_xlat27;
  let x_1721 : vec3<f32> = (vec3<f32>(x_1718, x_1718, x_1718) * x_1720);
  let x_1722 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
  let x_1725 : f32 = u_xlat0.x;
  u_xlat72 = ((x_1725 * 10.0f) + 1.0f);
  let x_1729 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1729);
  let x_1731 : vec3<f32> = u_xlat1;
  let x_1732 : f32 = u_xlat70;
  let x_1736 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1738 : vec3<f32> = ((x_1731 * vec3<f32>(x_1732, x_1732, x_1732)) + vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
  let x_1742 : vec4<f32> = u_xlat6;
  let x_1744 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1742.x, x_1742.y, x_1742.z), vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : f32 = u_xlat74;
  u_xlat74 = max(x_1747, 1.17549435e-38f);
  let x_1750 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1750);
  let x_1752 : f32 = u_xlat74;
  let x_1754 : vec4<f32> = u_xlat6;
  let x_1756 : vec3<f32> = (vec3<f32>(x_1752, x_1752, x_1752) * vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
  let x_1757 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
  let x_1759 : vec3<f32> = u_xlat2;
  let x_1760 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(x_1759, vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
  let x_1763 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1763, 0.0f, 1.0f);
  let x_1765 : f32 = u_xlat74;
  u_xlat74 = log2(x_1765);
  let x_1767 : f32 = u_xlat72;
  let x_1768 : f32 = u_xlat74;
  u_xlat74 = (x_1767 * x_1768);
  let x_1770 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1770);
  let x_1772 : f32 = u_xlat74;
  let x_1775 : vec4<f32> = x_41.x_SpecColor;
  let x_1777 : vec3<f32> = (vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : vec3<f32> = u_xlat27;
  let x_1781 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1780 * vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1784 : vec4<f32> = u_xlat5;
  let x_1786 : vec4<f32> = u_xlat0;
  let x_1789 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1784.x, x_1784.y, x_1784.z) * vec3<f32>(x_1786.y, x_1786.z, x_1786.w)) + x_1789);
  let x_1792 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1794 : f32 = x_1703.unity_LightData.y;
  u_xlat5.x = min(x_1792, x_1794);
  let x_1800 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1800));
  let x_1804 : f32 = u_xlat4.x;
  let x_1807 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_1810 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1804 * x_1807) + x_1810);
  let x_1814 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1814, 0.0f, 1.0f);
  let x_1819 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1821 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1823 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1825 : f32 = x_1584.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1826 : vec4<f32> = vec4<f32>(x_1819, x_1821, x_1823, x_1825);
  let x_1832 : vec4<bool> = (vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_1832.x, x_1832.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1844 : u32 = u_xlatu_loop_1;
    let x_1845 : u32 = u_xlatu5;
    if ((x_1844 < x_1845)) {
    } else {
      break;
    }
    let x_1848 : u32 = u_xlatu_loop_1;
    u_xlatu75 = (x_1848 >> 2u);
    let x_1852 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1852 & 3u));
    let x_1855 : u32 = u_xlatu75;
    let x_1858 : vec4<f32> = x_1703.unity_LightIndices[bitcast<i32>(x_1855)];
    let x_1868 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1873 : vec4<u32> = indexable[x_1868];
    u_xlat75 = dot(x_1858, bitcast<vec4<f32>>(x_1873));
    let x_1877 : f32 = u_xlat75;
    u_xlati75 = i32(x_1877);
    let x_1879 : vec3<f32> = vs_TEXCOORD1;
    let x_1890 : i32 = u_xlati75;
    let x_1892 : vec4<f32> = x_1889.x_AdditionalLightsPosition[x_1890];
    let x_1895 : i32 = u_xlati75;
    let x_1897 : vec4<f32> = x_1889.x_AdditionalLightsPosition[x_1895];
    let x_1899 : vec3<f32> = ((-(x_1879) * vec3<f32>(x_1892.w, x_1892.w, x_1892.w)) + vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
    let x_1900 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
    let x_1903 : vec4<f32> = u_xlat7;
    let x_1905 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1903.x, x_1903.y, x_1903.z), vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
    let x_1908 : f32 = u_xlat76;
    u_xlat76 = max(x_1908, 0.00006103515625f);
    let x_1910 : f32 = u_xlat76;
    u_xlat8.x = inverseSqrt(x_1910);
    let x_1913 : vec4<f32> = u_xlat7;
    let x_1915 : vec4<f32> = u_xlat8;
    let x_1917 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) * vec3<f32>(x_1915.x, x_1915.x, x_1915.x));
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
    let x_1920 : f32 = u_xlat76;
    u_xlat8.x = (1.0f / x_1920);
    let x_1923 : f32 = u_xlat76;
    let x_1924 : i32 = u_xlati75;
    let x_1926 : f32 = x_1889.x_AdditionalLightsAttenuation[x_1924].x;
    u_xlat76 = (x_1923 * x_1926);
    let x_1928 : f32 = u_xlat76;
    let x_1930 : f32 = u_xlat76;
    u_xlat76 = ((-(x_1928) * x_1930) + 1.0f);
    let x_1933 : f32 = u_xlat76;
    u_xlat76 = max(x_1933, 0.0f);
    let x_1935 : f32 = u_xlat76;
    let x_1936 : f32 = u_xlat76;
    u_xlat76 = (x_1935 * x_1936);
    let x_1938 : f32 = u_xlat76;
    let x_1940 : f32 = u_xlat8.x;
    u_xlat76 = (x_1938 * x_1940);
    let x_1942 : i32 = u_xlati75;
    let x_1944 : vec4<f32> = x_1889.x_AdditionalLightsSpotDir[x_1942];
    let x_1946 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_1944.x, x_1944.y, x_1944.z), vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1951 : f32 = u_xlat8.x;
    let x_1952 : i32 = u_xlati75;
    let x_1954 : f32 = x_1889.x_AdditionalLightsAttenuation[x_1952].z;
    let x_1956 : i32 = u_xlati75;
    let x_1958 : f32 = x_1889.x_AdditionalLightsAttenuation[x_1956].w;
    u_xlat8.x = ((x_1951 * x_1954) + x_1958);
    let x_1962 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1962, 0.0f, 1.0f);
    let x_1966 : f32 = u_xlat8.x;
    let x_1968 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1966 * x_1968);
    let x_1971 : f32 = u_xlat76;
    let x_1973 : f32 = u_xlat8.x;
    u_xlat76 = (x_1971 * x_1973);
    let x_1977 : i32 = u_xlati75;
    let x_1979 : f32 = x_231.x_AdditionalShadowParams[x_1977].w;
    u_xlati8 = i32(x_1979);
    let x_1984 : i32 = u_xlati8;
    u_xlatb31.x = (x_1984 >= 0i);
    let x_1988 : bool = u_xlatb31.x;
    if (x_1988) {
      let x_1992 : i32 = u_xlati75;
      let x_1994 : f32 = x_231.x_AdditionalShadowParams[x_1992].z;
      u_xlatb31.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1994, x_1994, x_1994, x_1994))));
      let x_2000 : bool = u_xlatb31.x;
      if (x_2000) {
        let x_2003 : vec4<f32> = u_xlat7;
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2009 : vec4<bool> = (abs(vec4<f32>(x_2003.z, x_2003.z, x_2003.y, x_2003.y)) >= abs(vec4<f32>(x_2006.x, x_2006.y, x_2006.x, x_2006.x)));
        u_xlatb31 = vec3<bool>(x_2009.x, x_2009.y, x_2009.z);
        let x_2012 : bool = u_xlatb31.y;
        let x_2014 : bool = u_xlatb31.x;
        u_xlatb31.x = (x_2012 & x_2014);
        let x_2018 : vec4<f32> = u_xlat7;
        let x_2021 : vec4<bool> = (-(vec4<f32>(x_2018.z, x_2018.y, x_2018.x, x_2018.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2021.x, x_2021.y, x_2021.z);
        let x_2024 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2024);
        let x_2030 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2030);
        let x_2036 : bool = u_xlatb9.z;
        u_xlat54 = select(0.0f, 1.0f, x_2036);
        let x_2039 : bool = u_xlatb31.z;
        if (x_2039) {
          let x_2044 : f32 = u_xlat9.y;
          x_2040 = x_2044;
        } else {
          let x_2046 : f32 = u_xlat54;
          x_2040 = x_2046;
        }
        let x_2047 : f32 = x_2040;
        u_xlat54 = x_2047;
        let x_2050 : bool = u_xlatb31.x;
        if (x_2050) {
          let x_2055 : f32 = u_xlat9.x;
          x_2051 = x_2055;
        } else {
          let x_2057 : f32 = u_xlat54;
          x_2051 = x_2057;
        }
        let x_2058 : f32 = x_2051;
        u_xlat31.x = x_2058;
        let x_2060 : i32 = u_xlati75;
        let x_2062 : f32 = x_231.x_AdditionalShadowParams[x_2060].w;
        u_xlat54 = trunc(x_2062);
        let x_2065 : f32 = u_xlat31.x;
        let x_2066 : f32 = u_xlat54;
        u_xlat31.x = (x_2065 + x_2066);
        let x_2070 : f32 = u_xlat31.x;
        u_xlati8 = i32(x_2070);
      }
      let x_2072 : i32 = u_xlati8;
      u_xlati8 = (x_2072 << bitcast<u32>(2i));
      let x_2074 : vec3<f32> = vs_TEXCOORD1;
      let x_2077 : i32 = u_xlati8;
      let x_2080 : i32 = u_xlati8;
      let x_2084 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_2077 + 1i) / 4i)][((x_2080 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2074.y, x_2074.y, x_2074.y, x_2074.y) * x_2084);
      let x_2086 : i32 = u_xlati8;
      let x_2088 : i32 = u_xlati8;
      let x_2091 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_2086 / 4i)][(x_2088 % 4i)];
      let x_2092 : vec3<f32> = vs_TEXCOORD1;
      let x_2095 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2091 * vec4<f32>(x_2092.x, x_2092.x, x_2092.x, x_2092.x)) + x_2095);
      let x_2097 : i32 = u_xlati8;
      let x_2100 : i32 = u_xlati8;
      let x_2104 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_2097 + 2i) / 4i)][((x_2100 + 2i) % 4i)];
      let x_2105 : vec3<f32> = vs_TEXCOORD1;
      let x_2108 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2104 * vec4<f32>(x_2105.z, x_2105.z, x_2105.z, x_2105.z)) + x_2108);
      let x_2110 : vec4<f32> = u_xlat9;
      let x_2111 : i32 = u_xlati8;
      let x_2114 : i32 = u_xlati8;
      let x_2118 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_2111 + 3i) / 4i)][((x_2114 + 3i) % 4i)];
      u_xlat8 = (x_2110 + x_2118);
      let x_2120 : vec4<f32> = u_xlat8;
      let x_2122 : vec4<f32> = u_xlat8;
      let x_2124 : vec3<f32> = (vec3<f32>(x_2120.x, x_2120.y, x_2120.z) / vec3<f32>(x_2122.w, x_2122.w, x_2122.w));
      let x_2125 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
      let x_2128 : i32 = u_xlati75;
      let x_2130 : f32 = x_231.x_AdditionalShadowParams[x_2128].y;
      u_xlatb77 = (0.0f < x_2130);
      let x_2132 : bool = u_xlatb77;
      if (x_2132) {
        let x_2135 : i32 = u_xlati75;
        let x_2137 : f32 = x_231.x_AdditionalShadowParams[x_2135].y;
        u_xlatb77 = (1.0f == x_2137);
        let x_2139 : bool = u_xlatb77;
        if (x_2139) {
          let x_2142 : vec4<f32> = u_xlat8;
          let x_2146 : vec4<f32> = x_231.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2142.x, x_2142.y, x_2142.x, x_2142.y) + x_2146);
          let x_2149 : vec4<f32> = u_xlat9;
          let x_2150 : vec2<f32> = vec2<f32>(x_2149.x, x_2149.y);
          let x_2152 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
          let x_2160 : vec3<f32> = txVec30;
          let x_2162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2160.xy, x_2160.z);
          u_xlat10.x = x_2162;
          let x_2165 : vec4<f32> = u_xlat9;
          let x_2166 : vec2<f32> = vec2<f32>(x_2165.z, x_2165.w);
          let x_2168 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
          let x_2175 : vec3<f32> = txVec31;
          let x_2177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
          u_xlat10.y = x_2177;
          let x_2179 : vec4<f32> = u_xlat8;
          let x_2183 : vec4<f32> = x_231.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2179.x, x_2179.y, x_2179.x, x_2179.y) + x_2183);
          let x_2186 : vec4<f32> = u_xlat9;
          let x_2187 : vec2<f32> = vec2<f32>(x_2186.x, x_2186.y);
          let x_2189 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2187.x, x_2187.y, x_2189);
          let x_2196 : vec3<f32> = txVec32;
          let x_2198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2196.xy, x_2196.z);
          u_xlat10.z = x_2198;
          let x_2201 : vec4<f32> = u_xlat9;
          let x_2202 : vec2<f32> = vec2<f32>(x_2201.z, x_2201.w);
          let x_2204 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2202.x, x_2202.y, x_2204);
          let x_2211 : vec3<f32> = txVec33;
          let x_2213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2211.xy, x_2211.z);
          u_xlat10.w = x_2213;
          let x_2216 : vec4<f32> = u_xlat10;
          u_xlat77 = dot(x_2216, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2219 : i32 = u_xlati75;
          let x_2221 : f32 = x_231.x_AdditionalShadowParams[x_2219].y;
          u_xlatb9.x = (2.0f == x_2221);
          let x_2225 : bool = u_xlatb9.x;
          if (x_2225) {
            let x_2228 : vec4<f32> = u_xlat8;
            let x_2232 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2235 : vec2<f32> = ((vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(x_2232.z, x_2232.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2236 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
            let x_2238 : vec4<f32> = u_xlat9;
            let x_2240 : vec2<f32> = floor(vec2<f32>(x_2238.x, x_2238.y));
            let x_2241 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2240.x, x_2240.y, x_2241.z, x_2241.w);
            let x_2244 : vec4<f32> = u_xlat8;
            let x_2247 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2250 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2244.x, x_2244.y) * vec2<f32>(x_2247.z, x_2247.w)) + -(vec2<f32>(x_2250.x, x_2250.y)));
            let x_2254 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2254.x, x_2254.x, x_2254.y, x_2254.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2257 : vec4<f32> = u_xlat10;
            let x_2259 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2257.x, x_2257.x, x_2257.z, x_2257.z) * vec4<f32>(x_2259.x, x_2259.x, x_2259.z, x_2259.z));
            let x_2262 : vec4<f32> = u_xlat11;
            let x_2264 : vec2<f32> = (vec2<f32>(x_2262.y, x_2262.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2265 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2264.x, x_2265.y, x_2264.y, x_2265.w);
            let x_2267 : vec4<f32> = u_xlat11;
            let x_2270 : vec2<f32> = u_xlat55;
            let x_2272 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2270));
            let x_2273 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2272.x, x_2272.y, x_2273.z, x_2273.w);
            let x_2276 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2276) + vec2<f32>(1.0f, 1.0f));
            let x_2279 : vec2<f32> = u_xlat55;
            let x_2280 : vec2<f32> = min(x_2279, vec2<f32>(0.0f, 0.0f));
            let x_2281 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2280.x, x_2280.y, x_2281.z, x_2281.w);
            let x_2283 : vec4<f32> = u_xlat12;
            let x_2286 : vec4<f32> = u_xlat12;
            let x_2289 : vec2<f32> = u_xlat57;
            let x_2290 : vec2<f32> = ((-(vec2<f32>(x_2283.x, x_2283.y)) * vec2<f32>(x_2286.x, x_2286.y)) + x_2289);
            let x_2291 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2293 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2293, vec2<f32>(0.0f, 0.0f));
            let x_2295 : vec2<f32> = u_xlat55;
            let x_2297 : vec2<f32> = u_xlat55;
            let x_2299 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2295) * x_2297) + vec2<f32>(x_2299.y, x_2299.w));
            let x_2302 : vec4<f32> = u_xlat12;
            let x_2304 : vec2<f32> = (vec2<f32>(x_2302.x, x_2302.y) + vec2<f32>(1.0f, 1.0f));
            let x_2305 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2304.x, x_2304.y, x_2305.z, x_2305.w);
            let x_2307 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2307 + vec2<f32>(1.0f, 1.0f));
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2311 : vec2<f32> = (vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2312 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2311.x, x_2311.y, x_2312.z, x_2312.w);
            let x_2314 : vec2<f32> = u_xlat57;
            let x_2315 : vec2<f32> = (x_2314 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2316 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
            let x_2318 : vec4<f32> = u_xlat12;
            let x_2320 : vec2<f32> = (vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2321 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2320.x, x_2320.y, x_2321.z, x_2321.w);
            let x_2323 : vec2<f32> = u_xlat55;
            let x_2324 : vec2<f32> = (x_2323 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2325 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2324.x, x_2324.y, x_2325.z, x_2325.w);
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2327.y, x_2327.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2331 : f32 = u_xlat12.x;
            u_xlat13.z = x_2331;
            let x_2334 : f32 = u_xlat55.x;
            u_xlat13.w = x_2334;
            let x_2337 : f32 = u_xlat14.x;
            u_xlat11.z = x_2337;
            let x_2340 : f32 = u_xlat10.x;
            u_xlat11.w = x_2340;
            let x_2342 : vec4<f32> = u_xlat11;
            let x_2344 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2342.z, x_2342.w, x_2342.x, x_2342.z) + vec4<f32>(x_2344.z, x_2344.w, x_2344.x, x_2344.z));
            let x_2348 : f32 = u_xlat13.y;
            u_xlat12.z = x_2348;
            let x_2351 : f32 = u_xlat55.y;
            u_xlat12.w = x_2351;
            let x_2354 : f32 = u_xlat11.y;
            u_xlat14.z = x_2354;
            let x_2357 : f32 = u_xlat10.z;
            u_xlat14.w = x_2357;
            let x_2359 : vec4<f32> = u_xlat12;
            let x_2361 : vec4<f32> = u_xlat14;
            let x_2363 : vec3<f32> = (vec3<f32>(x_2359.z, x_2359.y, x_2359.w) + vec3<f32>(x_2361.z, x_2361.y, x_2361.w));
            let x_2364 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2364.w);
            let x_2366 : vec4<f32> = u_xlat11;
            let x_2368 : vec4<f32> = u_xlat15;
            let x_2370 : vec3<f32> = (vec3<f32>(x_2366.x, x_2366.z, x_2366.w) / vec3<f32>(x_2368.z, x_2368.w, x_2368.y));
            let x_2371 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
            let x_2373 : vec4<f32> = u_xlat11;
            let x_2375 : vec3<f32> = (vec3<f32>(x_2373.x, x_2373.y, x_2373.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2376 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
            let x_2378 : vec4<f32> = u_xlat14;
            let x_2380 : vec4<f32> = u_xlat10;
            let x_2382 : vec3<f32> = (vec3<f32>(x_2378.z, x_2378.y, x_2378.w) / vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
            let x_2383 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
            let x_2385 : vec4<f32> = u_xlat12;
            let x_2387 : vec3<f32> = (vec3<f32>(x_2385.x, x_2385.y, x_2385.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2388 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
            let x_2390 : vec4<f32> = u_xlat11;
            let x_2393 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2395 : vec3<f32> = (vec3<f32>(x_2390.y, x_2390.x, x_2390.z) * vec3<f32>(x_2393.x, x_2393.x, x_2393.x));
            let x_2396 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
            let x_2398 : vec4<f32> = u_xlat12;
            let x_2401 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2403 : vec3<f32> = (vec3<f32>(x_2398.x, x_2398.y, x_2398.z) * vec3<f32>(x_2401.y, x_2401.y, x_2401.y));
            let x_2404 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
            let x_2407 : f32 = u_xlat12.x;
            u_xlat11.w = x_2407;
            let x_2409 : vec4<f32> = u_xlat9;
            let x_2412 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2415 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2409.x, x_2409.y, x_2409.x, x_2409.y) * vec4<f32>(x_2412.x, x_2412.y, x_2412.x, x_2412.y)) + vec4<f32>(x_2415.y, x_2415.w, x_2415.x, x_2415.w));
            let x_2418 : vec4<f32> = u_xlat9;
            let x_2421 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2424 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2418.x, x_2418.y) * vec2<f32>(x_2421.x, x_2421.y)) + vec2<f32>(x_2424.z, x_2424.w));
            let x_2428 : f32 = u_xlat11.y;
            u_xlat12.w = x_2428;
            let x_2430 : vec4<f32> = u_xlat12;
            let x_2431 : vec2<f32> = vec2<f32>(x_2430.y, x_2430.z);
            let x_2432 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2432.x, x_2431.x, x_2432.z, x_2431.y);
            let x_2434 : vec4<f32> = u_xlat9;
            let x_2437 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2440 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2434.x, x_2434.y, x_2434.x, x_2434.y) * vec4<f32>(x_2437.x, x_2437.y, x_2437.x, x_2437.y)) + vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2440.y));
            let x_2443 : vec4<f32> = u_xlat9;
            let x_2446 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2449 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2443.x, x_2443.y, x_2443.x, x_2443.y) * vec4<f32>(x_2446.x, x_2446.y, x_2446.x, x_2446.y)) + vec4<f32>(x_2449.w, x_2449.y, x_2449.w, x_2449.z));
            let x_2452 : vec4<f32> = u_xlat9;
            let x_2455 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2458 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y) * vec4<f32>(x_2455.x, x_2455.y, x_2455.x, x_2455.y)) + vec4<f32>(x_2458.x, x_2458.w, x_2458.z, x_2458.w));
            let x_2461 : vec4<f32> = u_xlat10;
            let x_2463 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2461.x, x_2461.x, x_2461.x, x_2461.y) * vec4<f32>(x_2463.z, x_2463.w, x_2463.y, x_2463.z));
            let x_2466 : vec4<f32> = u_xlat10;
            let x_2468 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2466.y, x_2466.y, x_2466.z, x_2466.z) * x_2468);
            let x_2471 : f32 = u_xlat10.z;
            let x_2473 : f32 = u_xlat15.y;
            u_xlat9.x = (x_2471 * x_2473);
            let x_2477 : vec4<f32> = u_xlat13;
            let x_2478 : vec2<f32> = vec2<f32>(x_2477.x, x_2477.y);
            let x_2480 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
            let x_2488 : vec3<f32> = txVec34;
            let x_2490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2488.xy, x_2488.z);
            u_xlat32 = x_2490;
            let x_2492 : vec4<f32> = u_xlat13;
            let x_2493 : vec2<f32> = vec2<f32>(x_2492.z, x_2492.w);
            let x_2495 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
            let x_2502 : vec3<f32> = txVec35;
            let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
            u_xlat10.x = x_2504;
            let x_2507 : f32 = u_xlat10.x;
            let x_2509 : f32 = u_xlat16.y;
            u_xlat10.x = (x_2507 * x_2509);
            let x_2513 : f32 = u_xlat16.x;
            let x_2514 : f32 = u_xlat32;
            let x_2517 : f32 = u_xlat10.x;
            u_xlat32 = ((x_2513 * x_2514) + x_2517);
            let x_2520 : vec2<f32> = u_xlat55;
            let x_2522 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2520.x, x_2520.y, x_2522);
            let x_2529 : vec3<f32> = txVec36;
            let x_2531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2529.xy, x_2529.z);
            u_xlat55.x = x_2531;
            let x_2534 : f32 = u_xlat16.z;
            let x_2536 : f32 = u_xlat55.x;
            let x_2538 : f32 = u_xlat32;
            u_xlat32 = ((x_2534 * x_2536) + x_2538);
            let x_2541 : vec4<f32> = u_xlat12;
            let x_2542 : vec2<f32> = vec2<f32>(x_2541.x, x_2541.y);
            let x_2544 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2542.x, x_2542.y, x_2544);
            let x_2551 : vec3<f32> = txVec37;
            let x_2553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2551.xy, x_2551.z);
            u_xlat55.x = x_2553;
            let x_2556 : f32 = u_xlat16.w;
            let x_2558 : f32 = u_xlat55.x;
            let x_2560 : f32 = u_xlat32;
            u_xlat32 = ((x_2556 * x_2558) + x_2560);
            let x_2563 : vec4<f32> = u_xlat14;
            let x_2564 : vec2<f32> = vec2<f32>(x_2563.x, x_2563.y);
            let x_2566 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2564.x, x_2564.y, x_2566);
            let x_2573 : vec3<f32> = txVec38;
            let x_2575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2573.xy, x_2573.z);
            u_xlat55.x = x_2575;
            let x_2578 : f32 = u_xlat17.x;
            let x_2580 : f32 = u_xlat55.x;
            let x_2582 : f32 = u_xlat32;
            u_xlat32 = ((x_2578 * x_2580) + x_2582);
            let x_2585 : vec4<f32> = u_xlat14;
            let x_2586 : vec2<f32> = vec2<f32>(x_2585.z, x_2585.w);
            let x_2588 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2586.x, x_2586.y, x_2588);
            let x_2595 : vec3<f32> = txVec39;
            let x_2597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2595.xy, x_2595.z);
            u_xlat55.x = x_2597;
            let x_2600 : f32 = u_xlat17.y;
            let x_2602 : f32 = u_xlat55.x;
            let x_2604 : f32 = u_xlat32;
            u_xlat32 = ((x_2600 * x_2602) + x_2604);
            let x_2607 : vec4<f32> = u_xlat12;
            let x_2608 : vec2<f32> = vec2<f32>(x_2607.z, x_2607.w);
            let x_2610 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2608.x, x_2608.y, x_2610);
            let x_2617 : vec3<f32> = txVec40;
            let x_2619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2617.xy, x_2617.z);
            u_xlat55.x = x_2619;
            let x_2622 : f32 = u_xlat17.z;
            let x_2624 : f32 = u_xlat55.x;
            let x_2626 : f32 = u_xlat32;
            u_xlat32 = ((x_2622 * x_2624) + x_2626);
            let x_2629 : vec4<f32> = u_xlat11;
            let x_2630 : vec2<f32> = vec2<f32>(x_2629.x, x_2629.y);
            let x_2632 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2630.x, x_2630.y, x_2632);
            let x_2639 : vec3<f32> = txVec41;
            let x_2641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2639.xy, x_2639.z);
            u_xlat55.x = x_2641;
            let x_2644 : f32 = u_xlat17.w;
            let x_2646 : f32 = u_xlat55.x;
            let x_2648 : f32 = u_xlat32;
            u_xlat32 = ((x_2644 * x_2646) + x_2648);
            let x_2651 : vec4<f32> = u_xlat11;
            let x_2652 : vec2<f32> = vec2<f32>(x_2651.z, x_2651.w);
            let x_2654 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2652.x, x_2652.y, x_2654);
            let x_2661 : vec3<f32> = txVec42;
            let x_2663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2661.xy, x_2661.z);
            u_xlat55.x = x_2663;
            let x_2666 : f32 = u_xlat9.x;
            let x_2668 : f32 = u_xlat55.x;
            let x_2670 : f32 = u_xlat32;
            u_xlat77 = ((x_2666 * x_2668) + x_2670);
          } else {
            let x_2673 : vec4<f32> = u_xlat8;
            let x_2676 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2676.z, x_2676.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2680 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec4<f32> = u_xlat9;
            let x_2684 : vec2<f32> = floor(vec2<f32>(x_2682.x, x_2682.y));
            let x_2685 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2684.x, x_2684.y, x_2685.z, x_2685.w);
            let x_2687 : vec4<f32> = u_xlat8;
            let x_2690 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2693 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2690.z, x_2690.w)) + -(vec2<f32>(x_2693.x, x_2693.y)));
            let x_2697 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2697.x, x_2697.x, x_2697.y, x_2697.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2700 : vec4<f32> = u_xlat10;
            let x_2702 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2700.x, x_2700.x, x_2700.z, x_2700.z) * vec4<f32>(x_2702.x, x_2702.x, x_2702.z, x_2702.z));
            let x_2705 : vec4<f32> = u_xlat11;
            let x_2707 : vec2<f32> = (vec2<f32>(x_2705.y, x_2705.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2708 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2708.x, x_2707.x, x_2708.z, x_2707.y);
            let x_2710 : vec4<f32> = u_xlat11;
            let x_2713 : vec2<f32> = u_xlat55;
            let x_2715 : vec2<f32> = ((vec2<f32>(x_2710.x, x_2710.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2713));
            let x_2716 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2715.x, x_2716.y, x_2715.y, x_2716.w);
            let x_2718 : vec2<f32> = u_xlat55;
            let x_2720 : vec2<f32> = (-(x_2718) + vec2<f32>(1.0f, 1.0f));
            let x_2721 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2720.x, x_2720.y, x_2721.z, x_2721.w);
            let x_2723 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2723, vec2<f32>(0.0f, 0.0f));
            let x_2725 : vec2<f32> = u_xlat57;
            let x_2727 : vec2<f32> = u_xlat57;
            let x_2729 : vec4<f32> = u_xlat11;
            let x_2731 : vec2<f32> = ((-(x_2725) * x_2727) + vec2<f32>(x_2729.x, x_2729.y));
            let x_2732 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
            let x_2734 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2734, vec2<f32>(0.0f, 0.0f));
            let x_2737 : vec2<f32> = u_xlat57;
            let x_2739 : vec2<f32> = u_xlat57;
            let x_2741 : vec4<f32> = u_xlat10;
            let x_2743 : vec2<f32> = ((-(x_2737) * x_2739) + vec2<f32>(x_2741.y, x_2741.w));
            let x_2744 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2743.x, x_2744.y, x_2743.y);
            let x_2746 : vec4<f32> = u_xlat11;
            let x_2748 : vec2<f32> = (vec2<f32>(x_2746.x, x_2746.y) + vec2<f32>(2.0f, 2.0f));
            let x_2749 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2748.x, x_2748.y, x_2749.z, x_2749.w);
            let x_2751 : vec3<f32> = u_xlat33;
            let x_2753 : vec2<f32> = (vec2<f32>(x_2751.x, x_2751.z) + vec2<f32>(2.0f, 2.0f));
            let x_2754 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2754.x, x_2753.x, x_2754.z, x_2753.y);
            let x_2757 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2757 * 0.08163200318813323975f);
            let x_2760 : vec4<f32> = u_xlat10;
            let x_2762 : vec3<f32> = (vec3<f32>(x_2760.z, x_2760.x, x_2760.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2763 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
            let x_2765 : vec4<f32> = u_xlat11;
            let x_2767 : vec2<f32> = (vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2768 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2767.x, x_2767.y, x_2768.z, x_2768.w);
            let x_2771 : f32 = u_xlat14.y;
            u_xlat13.x = x_2771;
            let x_2773 : vec2<f32> = u_xlat55;
            let x_2776 : vec2<f32> = ((vec2<f32>(x_2773.x, x_2773.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2777 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2777.x, x_2776.x, x_2777.z, x_2776.y);
            let x_2779 : vec2<f32> = u_xlat55;
            let x_2782 : vec2<f32> = ((vec2<f32>(x_2779.x, x_2779.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2782.x, x_2783.y, x_2782.y, x_2783.w);
            let x_2786 : f32 = u_xlat10.x;
            u_xlat11.y = x_2786;
            let x_2789 : f32 = u_xlat12.y;
            u_xlat11.w = x_2789;
            let x_2791 : vec4<f32> = u_xlat11;
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2791 + x_2792);
            let x_2794 : vec2<f32> = u_xlat55;
            let x_2797 : vec2<f32> = ((vec2<f32>(x_2794.y, x_2794.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2798 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2798.x, x_2797.x, x_2798.z, x_2797.y);
            let x_2800 : vec2<f32> = u_xlat55;
            let x_2803 : vec2<f32> = ((vec2<f32>(x_2800.y, x_2800.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2804 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2803.x, x_2804.y, x_2803.y, x_2804.w);
            let x_2807 : f32 = u_xlat10.y;
            u_xlat12.y = x_2807;
            let x_2809 : vec4<f32> = u_xlat12;
            let x_2810 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2809 + x_2810);
            let x_2812 : vec4<f32> = u_xlat11;
            let x_2813 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2812 / x_2813);
            let x_2815 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2815 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2817 : vec4<f32> = u_xlat12;
            let x_2818 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2817 / x_2818);
            let x_2820 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2820 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2822 : vec4<f32> = u_xlat11;
            let x_2825 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2822.w, x_2822.x, x_2822.y, x_2822.z) * vec4<f32>(x_2825.x, x_2825.x, x_2825.x, x_2825.x));
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2831 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2828.x, x_2828.w, x_2828.y, x_2828.z) * vec4<f32>(x_2831.y, x_2831.y, x_2831.y, x_2831.y));
            let x_2834 : vec4<f32> = u_xlat11;
            let x_2835 : vec3<f32> = vec3<f32>(x_2834.y, x_2834.z, x_2834.w);
            let x_2836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2835.x, x_2836.y, x_2835.y, x_2835.z);
            let x_2839 : f32 = u_xlat12.x;
            u_xlat14.y = x_2839;
            let x_2841 : vec4<f32> = u_xlat9;
            let x_2844 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2847 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2841.x, x_2841.y, x_2841.x, x_2841.y) * vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y)) + vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat9;
            let x_2853 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(x_2853.x, x_2853.y)) + vec2<f32>(x_2856.w, x_2856.y));
            let x_2860 : f32 = u_xlat14.y;
            u_xlat11.y = x_2860;
            let x_2863 : f32 = u_xlat12.z;
            u_xlat14.y = x_2863;
            let x_2865 : vec4<f32> = u_xlat9;
            let x_2868 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.y) * vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y)) + vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2871.y));
            let x_2874 : vec4<f32> = u_xlat9;
            let x_2877 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2882 : vec2<f32> = ((vec2<f32>(x_2874.x, x_2874.y) * vec2<f32>(x_2877.x, x_2877.y)) + vec2<f32>(x_2880.w, x_2880.y));
            let x_2883 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2882.x, x_2882.y, x_2883.z, x_2883.w);
            let x_2886 : f32 = u_xlat14.y;
            u_xlat11.z = x_2886;
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2892 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y) * vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y)) + vec4<f32>(x_2895.x, x_2895.y, x_2895.x, x_2895.z));
            let x_2899 : f32 = u_xlat12.w;
            u_xlat14.y = x_2899;
            let x_2902 : vec4<f32> = u_xlat9;
            let x_2905 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2908 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2902.x, x_2902.y, x_2902.x, x_2902.y) * vec4<f32>(x_2905.x, x_2905.y, x_2905.x, x_2905.y)) + vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2908.y));
            let x_2912 : vec4<f32> = u_xlat9;
            let x_2915 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2915.x, x_2915.y)) + vec2<f32>(x_2918.w, x_2918.y));
            let x_2922 : f32 = u_xlat14.y;
            u_xlat11.w = x_2922;
            let x_2925 : vec4<f32> = u_xlat9;
            let x_2928 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2931 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2928.x, x_2928.y)) + vec2<f32>(x_2931.x, x_2931.w));
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2935 : vec3<f32> = vec3<f32>(x_2934.x, x_2934.z, x_2934.w);
            let x_2936 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2935.x, x_2936.y, x_2935.y, x_2935.z);
            let x_2938 : vec4<f32> = u_xlat9;
            let x_2941 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2938.x, x_2938.y, x_2938.x, x_2938.y) * vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.y)) + vec4<f32>(x_2944.x, x_2944.y, x_2944.z, x_2944.y));
            let x_2947 : vec4<f32> = u_xlat9;
            let x_2950 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2953 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(x_2950.x, x_2950.y)) + vec2<f32>(x_2953.w, x_2953.y));
            let x_2957 : f32 = u_xlat11.x;
            u_xlat12.x = x_2957;
            let x_2959 : vec4<f32> = u_xlat9;
            let x_2962 : vec4<f32> = x_231.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat12;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.x, x_2962.y)) + vec2<f32>(x_2965.x, x_2965.y));
            let x_2968 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2971 : vec4<f32> = u_xlat10;
            let x_2973 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2971.x, x_2971.x, x_2971.x, x_2971.x) * x_2973);
            let x_2976 : vec4<f32> = u_xlat10;
            let x_2978 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2976.y, x_2976.y, x_2976.y, x_2976.y) * x_2978);
            let x_2981 : vec4<f32> = u_xlat10;
            let x_2983 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2981.z, x_2981.z, x_2981.z, x_2981.z) * x_2983);
            let x_2985 : vec4<f32> = u_xlat10;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2985.w, x_2985.w, x_2985.w, x_2985.w) * x_2987);
            let x_2990 : vec4<f32> = u_xlat15;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec43;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat11.x = x_3002;
            let x_3005 : vec4<f32> = u_xlat15;
            let x_3006 : vec2<f32> = vec2<f32>(x_3005.z, x_3005.w);
            let x_3008 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3006.x, x_3006.y, x_3008);
            let x_3016 : vec3<f32> = txVec44;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat80 = x_3018;
            let x_3019 : f32 = u_xlat80;
            let x_3021 : f32 = u_xlat20.y;
            u_xlat80 = (x_3019 * x_3021);
            let x_3024 : f32 = u_xlat20.x;
            let x_3026 : f32 = u_xlat11.x;
            let x_3028 : f32 = u_xlat80;
            u_xlat11.x = ((x_3024 * x_3026) + x_3028);
            let x_3032 : vec2<f32> = u_xlat55;
            let x_3034 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
            let x_3041 : vec3<f32> = txVec45;
            let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
            u_xlat55.x = x_3043;
            let x_3046 : f32 = u_xlat20.z;
            let x_3048 : f32 = u_xlat55.x;
            let x_3051 : f32 = u_xlat11.x;
            u_xlat55.x = ((x_3046 * x_3048) + x_3051);
            let x_3055 : vec4<f32> = u_xlat18;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.x, x_3055.y);
            let x_3058 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3066 : vec3<f32> = txVec46;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat78 = x_3068;
            let x_3070 : f32 = u_xlat20.w;
            let x_3071 : f32 = u_xlat78;
            let x_3074 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3070 * x_3071) + x_3074);
            let x_3078 : vec4<f32> = u_xlat16;
            let x_3079 : vec2<f32> = vec2<f32>(x_3078.x, x_3078.y);
            let x_3081 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3079.x, x_3079.y, x_3081);
            let x_3088 : vec3<f32> = txVec47;
            let x_3090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3088.xy, x_3088.z);
            u_xlat78 = x_3090;
            let x_3092 : f32 = u_xlat21.x;
            let x_3093 : f32 = u_xlat78;
            let x_3096 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3092 * x_3093) + x_3096);
            let x_3100 : vec4<f32> = u_xlat16;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.z, x_3100.w);
            let x_3103 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec48;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat78 = x_3112;
            let x_3114 : f32 = u_xlat21.y;
            let x_3115 : f32 = u_xlat78;
            let x_3118 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3114 * x_3115) + x_3118);
            let x_3122 : vec4<f32> = u_xlat17;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.x, x_3122.y);
            let x_3125 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec49;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat78 = x_3134;
            let x_3136 : f32 = u_xlat21.z;
            let x_3137 : f32 = u_xlat78;
            let x_3140 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3136 * x_3137) + x_3140);
            let x_3144 : vec4<f32> = u_xlat18;
            let x_3145 : vec2<f32> = vec2<f32>(x_3144.z, x_3144.w);
            let x_3147 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
            let x_3154 : vec3<f32> = txVec50;
            let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
            u_xlat78 = x_3156;
            let x_3158 : f32 = u_xlat21.w;
            let x_3159 : f32 = u_xlat78;
            let x_3162 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3158 * x_3159) + x_3162);
            let x_3166 : vec4<f32> = u_xlat19;
            let x_3167 : vec2<f32> = vec2<f32>(x_3166.x, x_3166.y);
            let x_3169 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3167.x, x_3167.y, x_3169);
            let x_3176 : vec3<f32> = txVec51;
            let x_3178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3176.xy, x_3176.z);
            u_xlat78 = x_3178;
            let x_3180 : f32 = u_xlat22.x;
            let x_3181 : f32 = u_xlat78;
            let x_3184 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3180 * x_3181) + x_3184);
            let x_3188 : vec4<f32> = u_xlat19;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.z, x_3188.w);
            let x_3191 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec52;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat78 = x_3200;
            let x_3202 : f32 = u_xlat22.y;
            let x_3203 : f32 = u_xlat78;
            let x_3206 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3202 * x_3203) + x_3206);
            let x_3210 : vec2<f32> = u_xlat34;
            let x_3212 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec53;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat78 = x_3221;
            let x_3223 : f32 = u_xlat22.z;
            let x_3224 : f32 = u_xlat78;
            let x_3227 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3223 * x_3224) + x_3227);
            let x_3231 : vec2<f32> = u_xlat63;
            let x_3233 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec54;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat78 = x_3242;
            let x_3244 : f32 = u_xlat22.w;
            let x_3245 : f32 = u_xlat78;
            let x_3248 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3244 * x_3245) + x_3248);
            let x_3252 : vec4<f32> = u_xlat14;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
            let x_3255 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec55;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat78 = x_3264;
            let x_3266 : f32 = u_xlat10.x;
            let x_3267 : f32 = u_xlat78;
            let x_3270 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3266 * x_3267) + x_3270);
            let x_3274 : vec4<f32> = u_xlat14;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.z, x_3274.w);
            let x_3277 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec56;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat78 = x_3286;
            let x_3288 : f32 = u_xlat10.y;
            let x_3289 : f32 = u_xlat78;
            let x_3292 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3288 * x_3289) + x_3292);
            let x_3296 : vec2<f32> = u_xlat58;
            let x_3298 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec57;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat78 = x_3307;
            let x_3309 : f32 = u_xlat10.z;
            let x_3310 : f32 = u_xlat78;
            let x_3313 : f32 = u_xlat55.x;
            u_xlat55.x = ((x_3309 * x_3310) + x_3313);
            let x_3317 : vec4<f32> = u_xlat9;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.x, x_3317.y);
            let x_3320 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec58;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat9.x = x_3329;
            let x_3332 : f32 = u_xlat10.w;
            let x_3334 : f32 = u_xlat9.x;
            let x_3337 : f32 = u_xlat55.x;
            u_xlat77 = ((x_3332 * x_3334) + x_3337);
          }
        }
      } else {
        let x_3341 : vec4<f32> = u_xlat8;
        let x_3342 : vec2<f32> = vec2<f32>(x_3341.x, x_3341.y);
        let x_3344 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
        let x_3351 : vec3<f32> = txVec59;
        let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
        u_xlat77 = x_3353;
      }
      let x_3354 : i32 = u_xlati75;
      let x_3356 : f32 = x_231.x_AdditionalShadowParams[x_3354].x;
      u_xlat8.x = (1.0f + -(x_3356));
      let x_3360 : f32 = u_xlat77;
      let x_3361 : i32 = u_xlati75;
      let x_3363 : f32 = x_231.x_AdditionalShadowParams[x_3361].x;
      let x_3366 : f32 = u_xlat8.x;
      u_xlat8.x = ((x_3360 * x_3363) + x_3366);
      let x_3370 : f32 = u_xlat8.z;
      u_xlatb31.x = (0.0f >= x_3370);
      let x_3375 : f32 = u_xlat8.z;
      u_xlatb54 = (x_3375 >= 1.0f);
      let x_3377 : bool = u_xlatb54;
      let x_3379 : bool = u_xlatb31.x;
      u_xlatb31.x = (x_3377 | x_3379);
      let x_3383 : bool = u_xlatb31.x;
      if (x_3383) {
        x_3384 = 1.0f;
      } else {
        let x_3389 : f32 = u_xlat8.x;
        x_3384 = x_3389;
      }
      let x_3390 : f32 = x_3384;
      u_xlat8.x = x_3390;
    } else {
      u_xlat8.x = 1.0f;
    }
    let x_3395 : f32 = u_xlat8.x;
    u_xlat31.x = (-(x_3395) + 1.0f);
    let x_3400 : f32 = u_xlat4.x;
    let x_3402 : f32 = u_xlat31.x;
    let x_3405 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_3400 * x_3402) + x_3405);
    let x_3409 : i32 = u_xlati75;
    u_xlati31 = (1i << bitcast<u32>((x_3409 & 31i)));
    let x_3413 : i32 = u_xlati31;
    let x_3416 : f32 = x_1584.x_AdditionalLightsCookieEnableBits;
    u_xlati31 = bitcast<i32>((bitcast<u32>(x_3413) & bitcast<u32>(x_3416)));
    let x_3420 : i32 = u_xlati31;
    if ((x_3420 != 0i)) {
      let x_3424 : i32 = u_xlati75;
      let x_3426 : f32 = x_1584.x_AdditionalLightsLightTypes[x_3424].el;
      u_xlati31 = i32(x_3426);
      let x_3429 : i32 = u_xlati31;
      u_xlati54 = select(1i, 0i, (x_3429 != 0i));
      let x_3433 : i32 = u_xlati75;
      u_xlati77 = (x_3433 << bitcast<u32>(2i));
      let x_3435 : i32 = u_xlati54;
      if ((x_3435 != 0i)) {
        let x_3439 : vec3<f32> = vs_TEXCOORD1;
        let x_3441 : i32 = u_xlati77;
        let x_3444 : i32 = u_xlati77;
        let x_3448 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3441 + 1i) / 4i)][((x_3444 + 1i) % 4i)];
        let x_3450 : vec3<f32> = (vec3<f32>(x_3439.y, x_3439.y, x_3439.y) * vec3<f32>(x_3448.x, x_3448.y, x_3448.w));
        let x_3451 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
        let x_3453 : i32 = u_xlati77;
        let x_3455 : i32 = u_xlati77;
        let x_3458 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3453 / 4i)][(x_3455 % 4i)];
        let x_3460 : vec3<f32> = vs_TEXCOORD1;
        let x_3463 : vec4<f32> = u_xlat9;
        let x_3465 : vec3<f32> = ((vec3<f32>(x_3458.x, x_3458.y, x_3458.w) * vec3<f32>(x_3460.x, x_3460.x, x_3460.x)) + vec3<f32>(x_3463.x, x_3463.y, x_3463.z));
        let x_3466 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
        let x_3468 : i32 = u_xlati77;
        let x_3471 : i32 = u_xlati77;
        let x_3475 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3468 + 2i) / 4i)][((x_3471 + 2i) % 4i)];
        let x_3477 : vec3<f32> = vs_TEXCOORD1;
        let x_3480 : vec4<f32> = u_xlat9;
        let x_3482 : vec3<f32> = ((vec3<f32>(x_3475.x, x_3475.y, x_3475.w) * vec3<f32>(x_3477.z, x_3477.z, x_3477.z)) + vec3<f32>(x_3480.x, x_3480.y, x_3480.z));
        let x_3483 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
        let x_3485 : vec4<f32> = u_xlat9;
        let x_3487 : i32 = u_xlati77;
        let x_3490 : i32 = u_xlati77;
        let x_3494 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3487 + 3i) / 4i)][((x_3490 + 3i) % 4i)];
        let x_3496 : vec3<f32> = (vec3<f32>(x_3485.x, x_3485.y, x_3485.z) + vec3<f32>(x_3494.x, x_3494.y, x_3494.w));
        let x_3497 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3496.x, x_3496.y, x_3496.z, x_3497.w);
        let x_3499 : vec4<f32> = u_xlat9;
        let x_3501 : vec4<f32> = u_xlat9;
        let x_3503 : vec2<f32> = (vec2<f32>(x_3499.x, x_3499.y) / vec2<f32>(x_3501.z, x_3501.z));
        let x_3504 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3503.x, x_3503.y, x_3504.z, x_3504.w);
        let x_3506 : vec4<f32> = u_xlat9;
        let x_3509 : vec2<f32> = ((vec2<f32>(x_3506.x, x_3506.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3510 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3509.x, x_3509.y, x_3510.z, x_3510.w);
        let x_3512 : vec4<f32> = u_xlat9;
        let x_3516 : vec2<f32> = clamp(vec2<f32>(x_3512.x, x_3512.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3516.x, x_3516.y, x_3517.z, x_3517.w);
        let x_3519 : i32 = u_xlati75;
        let x_3521 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3519];
        let x_3523 : vec4<f32> = u_xlat9;
        let x_3526 : i32 = u_xlati75;
        let x_3528 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3526];
        let x_3530 : vec2<f32> = ((vec2<f32>(x_3521.x, x_3521.y) * vec2<f32>(x_3523.x, x_3523.y)) + vec2<f32>(x_3528.z, x_3528.w));
        let x_3531 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3530.x, x_3530.y, x_3531.z, x_3531.w);
      } else {
        let x_3534 : i32 = u_xlati31;
        u_xlatb31.x = (x_3534 == 1i);
        let x_3538 : bool = u_xlatb31.x;
        u_xlati31 = select(0i, 1i, x_3538);
        let x_3540 : i32 = u_xlati31;
        if ((x_3540 != 0i)) {
          let x_3544 : vec3<f32> = vs_TEXCOORD1;
          let x_3546 : i32 = u_xlati77;
          let x_3549 : i32 = u_xlati77;
          let x_3553 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3546 + 1i) / 4i)][((x_3549 + 1i) % 4i)];
          let x_3555 : vec2<f32> = (vec2<f32>(x_3544.y, x_3544.y) * vec2<f32>(x_3553.x, x_3553.y));
          let x_3556 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3555.x, x_3555.y, x_3556.z);
          let x_3558 : i32 = u_xlati77;
          let x_3560 : i32 = u_xlati77;
          let x_3563 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3558 / 4i)][(x_3560 % 4i)];
          let x_3565 : vec3<f32> = vs_TEXCOORD1;
          let x_3568 : vec3<f32> = u_xlat31;
          let x_3570 : vec2<f32> = ((vec2<f32>(x_3563.x, x_3563.y) * vec2<f32>(x_3565.x, x_3565.x)) + vec2<f32>(x_3568.x, x_3568.y));
          let x_3571 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3570.x, x_3570.y, x_3571.z);
          let x_3573 : i32 = u_xlati77;
          let x_3576 : i32 = u_xlati77;
          let x_3580 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3573 + 2i) / 4i)][((x_3576 + 2i) % 4i)];
          let x_3582 : vec3<f32> = vs_TEXCOORD1;
          let x_3585 : vec3<f32> = u_xlat31;
          let x_3587 : vec2<f32> = ((vec2<f32>(x_3580.x, x_3580.y) * vec2<f32>(x_3582.z, x_3582.z)) + vec2<f32>(x_3585.x, x_3585.y));
          let x_3588 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3587.x, x_3587.y, x_3588.z);
          let x_3590 : vec3<f32> = u_xlat31;
          let x_3592 : i32 = u_xlati77;
          let x_3595 : i32 = u_xlati77;
          let x_3599 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3592 + 3i) / 4i)][((x_3595 + 3i) % 4i)];
          let x_3601 : vec2<f32> = (vec2<f32>(x_3590.x, x_3590.y) + vec2<f32>(x_3599.x, x_3599.y));
          let x_3602 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3601.x, x_3601.y, x_3602.z);
          let x_3604 : vec3<f32> = u_xlat31;
          let x_3607 : vec2<f32> = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3608 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3607.x, x_3607.y, x_3608.z);
          let x_3610 : vec3<f32> = u_xlat31;
          let x_3612 : vec2<f32> = fract(vec2<f32>(x_3610.x, x_3610.y));
          let x_3613 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3612.x, x_3612.y, x_3613.z);
          let x_3615 : i32 = u_xlati75;
          let x_3617 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3615];
          let x_3619 : vec3<f32> = u_xlat31;
          let x_3622 : i32 = u_xlati75;
          let x_3624 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3622];
          let x_3626 : vec2<f32> = ((vec2<f32>(x_3617.x, x_3617.y) * vec2<f32>(x_3619.x, x_3619.y)) + vec2<f32>(x_3624.z, x_3624.w));
          let x_3627 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3626.x, x_3626.y, x_3627.z, x_3627.w);
        } else {
          let x_3630 : vec3<f32> = vs_TEXCOORD1;
          let x_3632 : i32 = u_xlati77;
          let x_3635 : i32 = u_xlati77;
          let x_3639 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3632 + 1i) / 4i)][((x_3635 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3630.y, x_3630.y, x_3630.y, x_3630.y) * x_3639);
          let x_3641 : i32 = u_xlati77;
          let x_3643 : i32 = u_xlati77;
          let x_3646 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[(x_3641 / 4i)][(x_3643 % 4i)];
          let x_3647 : vec3<f32> = vs_TEXCOORD1;
          let x_3650 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3646 * vec4<f32>(x_3647.x, x_3647.x, x_3647.x, x_3647.x)) + x_3650);
          let x_3652 : i32 = u_xlati77;
          let x_3655 : i32 = u_xlati77;
          let x_3659 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3652 + 2i) / 4i)][((x_3655 + 2i) % 4i)];
          let x_3660 : vec3<f32> = vs_TEXCOORD1;
          let x_3663 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3659 * vec4<f32>(x_3660.z, x_3660.z, x_3660.z, x_3660.z)) + x_3663);
          let x_3665 : vec4<f32> = u_xlat10;
          let x_3666 : i32 = u_xlati77;
          let x_3669 : i32 = u_xlati77;
          let x_3673 : vec4<f32> = x_1584.x_AdditionalLightsWorldToLights[((x_3666 + 3i) / 4i)][((x_3669 + 3i) % 4i)];
          u_xlat10 = (x_3665 + x_3673);
          let x_3675 : vec4<f32> = u_xlat10;
          let x_3677 : vec4<f32> = u_xlat10;
          u_xlat31 = (vec3<f32>(x_3675.x, x_3675.y, x_3675.z) / vec3<f32>(x_3677.w, x_3677.w, x_3677.w));
          let x_3680 : vec3<f32> = u_xlat31;
          let x_3681 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(x_3680, x_3681);
          let x_3685 : f32 = u_xlat55.x;
          u_xlat55.x = inverseSqrt(x_3685);
          let x_3688 : vec3<f32> = u_xlat31;
          let x_3689 : vec2<f32> = u_xlat55;
          u_xlat31 = (x_3688 * vec3<f32>(x_3689.x, x_3689.x, x_3689.x));
          let x_3692 : vec3<f32> = u_xlat31;
          u_xlat55.x = dot(abs(x_3692), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3698 : f32 = u_xlat55.x;
          u_xlat55.x = max(x_3698, 0.00000099999999747524f);
          let x_3703 : f32 = u_xlat55.x;
          u_xlat55.x = (1.0f / x_3703);
          let x_3706 : vec3<f32> = u_xlat31;
          let x_3708 : vec2<f32> = u_xlat55;
          let x_3710 : vec3<f32> = (vec3<f32>(x_3706.z, x_3706.x, x_3706.y) * vec3<f32>(x_3708.x, x_3708.x, x_3708.x));
          let x_3711 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3710.x, x_3710.y, x_3710.z, x_3711.w);
          let x_3714 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3714);
          let x_3718 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3718, 0.0f, 1.0f);
          let x_3722 : vec4<f32> = u_xlat10;
          let x_3724 : vec4<bool> = (vec4<f32>(x_3722.y, x_3722.z, x_3722.y, x_3722.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_3724.x, x_3724.y);
          let x_3728 : vec4<f32> = u_xlat10;
          hlslcc_movcTemp = x_3728;
          let x_3730 : bool = u_xlatb33.x;
          if (x_3730) {
            let x_3735 : f32 = u_xlat10.x;
            x_3731 = x_3735;
          } else {
            let x_3738 : f32 = u_xlat10.x;
            x_3731 = -(x_3738);
          }
          let x_3740 : f32 = x_3731;
          hlslcc_movcTemp.x = x_3740;
          let x_3743 : bool = u_xlatb33.y;
          if (x_3743) {
            let x_3748 : f32 = u_xlat10.x;
            x_3744 = x_3748;
          } else {
            let x_3751 : f32 = u_xlat10.x;
            x_3744 = -(x_3751);
          }
          let x_3753 : f32 = x_3744;
          hlslcc_movcTemp.y = x_3753;
          let x_3755 : vec4<f32> = hlslcc_movcTemp;
          u_xlat10 = x_3755;
          let x_3756 : vec3<f32> = u_xlat31;
          let x_3758 : vec2<f32> = u_xlat55;
          let x_3761 : vec4<f32> = u_xlat10;
          let x_3763 : vec2<f32> = ((vec2<f32>(x_3756.x, x_3756.y) * vec2<f32>(x_3758.x, x_3758.x)) + vec2<f32>(x_3761.x, x_3761.y));
          let x_3764 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3763.x, x_3763.y, x_3764.z);
          let x_3766 : vec3<f32> = u_xlat31;
          let x_3769 : vec2<f32> = ((vec2<f32>(x_3766.x, x_3766.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3770 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3769.x, x_3769.y, x_3770.z);
          let x_3772 : vec3<f32> = u_xlat31;
          let x_3776 : vec2<f32> = clamp(vec2<f32>(x_3772.x, x_3772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3777 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3776.x, x_3776.y, x_3777.z);
          let x_3779 : i32 = u_xlati75;
          let x_3781 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3779];
          let x_3783 : vec3<f32> = u_xlat31;
          let x_3786 : i32 = u_xlati75;
          let x_3788 : vec4<f32> = x_1584.x_AdditionalLightsCookieAtlasUVRects[x_3786];
          let x_3790 : vec2<f32> = ((vec2<f32>(x_3781.x, x_3781.y) * vec2<f32>(x_3783.x, x_3783.y)) + vec2<f32>(x_3788.z, x_3788.w));
          let x_3791 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3790.x, x_3790.y, x_3791.z, x_3791.w);
        }
      }
      let x_3798 : vec4<f32> = u_xlat9;
      let x_3800 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3798.x, x_3798.y), 0.0f);
      u_xlat9 = x_3800;
      let x_3802 : bool = u_xlatb28.y;
      if (x_3802) {
        let x_3807 : f32 = u_xlat9.w;
        x_3803 = x_3807;
      } else {
        let x_3810 : f32 = u_xlat9.x;
        x_3803 = x_3810;
      }
      let x_3811 : f32 = x_3803;
      u_xlat31.x = x_3811;
      let x_3814 : bool = u_xlatb28.x;
      if (x_3814) {
        let x_3818 : vec4<f32> = u_xlat9;
        x_3815 = vec3<f32>(x_3818.x, x_3818.y, x_3818.z);
      } else {
        let x_3821 : vec3<f32> = u_xlat31;
        x_3815 = vec3<f32>(x_3821.x, x_3821.x, x_3821.x);
      }
      let x_3823 : vec3<f32> = x_3815;
      u_xlat31 = x_3823;
    } else {
      u_xlat31.x = 1.0f;
      u_xlat31.y = 1.0f;
      u_xlat31.z = 1.0f;
    }
    let x_3828 : vec3<f32> = u_xlat31;
    let x_3829 : i32 = u_xlati75;
    let x_3831 : vec4<f32> = x_1889.x_AdditionalLightsColor[x_3829];
    u_xlat31 = (x_3828 * vec3<f32>(x_3831.x, x_3831.y, x_3831.z));
    let x_3834 : f32 = u_xlat76;
    let x_3836 : f32 = u_xlat8.x;
    u_xlat75 = (x_3834 * x_3836);
    let x_3838 : f32 = u_xlat75;
    let x_3840 : vec3<f32> = u_xlat31;
    let x_3841 : vec3<f32> = (vec3<f32>(x_3838, x_3838, x_3838) * x_3840);
    let x_3842 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3841.x, x_3841.y, x_3841.z, x_3842.w);
    let x_3844 : vec3<f32> = u_xlat2;
    let x_3845 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_3844, vec3<f32>(x_3845.x, x_3845.y, x_3845.z));
    let x_3848 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3848, 0.0f, 1.0f);
    let x_3850 : f32 = u_xlat75;
    let x_3852 : vec4<f32> = u_xlat8;
    let x_3854 : vec3<f32> = (vec3<f32>(x_3850, x_3850, x_3850) * vec3<f32>(x_3852.x, x_3852.y, x_3852.z));
    let x_3855 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3854.x, x_3854.y, x_3854.z, x_3855.w);
    let x_3857 : vec3<f32> = u_xlat1;
    let x_3858 : f32 = u_xlat70;
    let x_3861 : vec4<f32> = u_xlat7;
    let x_3863 : vec3<f32> = ((x_3857 * vec3<f32>(x_3858, x_3858, x_3858)) + vec3<f32>(x_3861.x, x_3861.y, x_3861.z));
    let x_3864 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3863.x, x_3863.y, x_3863.z, x_3864.w);
    let x_3866 : vec4<f32> = u_xlat7;
    let x_3868 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_3866.x, x_3866.y, x_3866.z), vec3<f32>(x_3868.x, x_3868.y, x_3868.z));
    let x_3871 : f32 = u_xlat75;
    u_xlat75 = max(x_3871, 1.17549435e-38f);
    let x_3873 : f32 = u_xlat75;
    u_xlat75 = inverseSqrt(x_3873);
    let x_3875 : f32 = u_xlat75;
    let x_3877 : vec4<f32> = u_xlat7;
    let x_3879 : vec3<f32> = (vec3<f32>(x_3875, x_3875, x_3875) * vec3<f32>(x_3877.x, x_3877.y, x_3877.z));
    let x_3880 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3879.x, x_3879.y, x_3879.z, x_3880.w);
    let x_3882 : vec3<f32> = u_xlat2;
    let x_3883 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(x_3882, vec3<f32>(x_3883.x, x_3883.y, x_3883.z));
    let x_3886 : f32 = u_xlat75;
    u_xlat75 = clamp(x_3886, 0.0f, 1.0f);
    let x_3888 : f32 = u_xlat75;
    u_xlat75 = log2(x_3888);
    let x_3890 : f32 = u_xlat72;
    let x_3891 : f32 = u_xlat75;
    u_xlat75 = (x_3890 * x_3891);
    let x_3893 : f32 = u_xlat75;
    u_xlat75 = exp2(x_3893);
    let x_3895 : f32 = u_xlat75;
    let x_3898 : vec4<f32> = x_41.x_SpecColor;
    let x_3900 : vec3<f32> = (vec3<f32>(x_3895, x_3895, x_3895) * vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
    let x_3901 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
    let x_3903 : vec4<f32> = u_xlat7;
    let x_3905 : vec4<f32> = u_xlat8;
    let x_3907 : vec3<f32> = (vec3<f32>(x_3903.x, x_3903.y, x_3903.z) * vec3<f32>(x_3905.x, x_3905.y, x_3905.z));
    let x_3908 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3907.x, x_3907.y, x_3907.z, x_3908.w);
    let x_3910 : vec4<f32> = u_xlat9;
    let x_3912 : vec4<f32> = u_xlat0;
    let x_3915 : vec4<f32> = u_xlat7;
    let x_3917 : vec3<f32> = ((vec3<f32>(x_3910.x, x_3910.y, x_3910.z) * vec3<f32>(x_3912.y, x_3912.z, x_3912.w)) + vec3<f32>(x_3915.x, x_3915.y, x_3915.z));
    let x_3918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3917.x, x_3917.y, x_3917.z, x_3918.w);
    let x_3920 : vec4<f32> = u_xlat6;
    let x_3922 : vec4<f32> = u_xlat7;
    let x_3924 : vec3<f32> = (vec3<f32>(x_3920.x, x_3920.y, x_3920.z) + vec3<f32>(x_3922.x, x_3922.y, x_3922.z));
    let x_3925 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);

    continuing {
      let x_3927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3927 + bitcast<u32>(1i));
    }
  }
  let x_3930 : vec4<f32> = u_xlat3;
  let x_3932 : vec4<f32> = u_xlat0;
  let x_3935 : vec3<f32> = u_xlat27;
  u_xlat23 = ((vec3<f32>(x_3930.x, x_3930.y, x_3930.z) * vec3<f32>(x_3932.y, x_3932.z, x_3932.w)) + x_3935);
  let x_3937 : vec4<f32> = u_xlat6;
  let x_3939 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_3937.x, x_3937.y, x_3937.z) + x_3939);
  let x_3941 : f32 = u_xlat71;
  let x_3942 : f32 = u_xlat71;
  u_xlat1.x = (x_3941 * -(x_3942));
  let x_3947 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3947);
  let x_3950 : vec3<f32> = u_xlat23;
  let x_3952 : vec4<f32> = x_28.unity_FogColor;
  u_xlat23 = (x_3950 + -(vec3<f32>(x_3952.x, x_3952.y, x_3952.z)));
  let x_3958 : vec3<f32> = u_xlat1;
  let x_3960 : vec3<f32> = u_xlat23;
  let x_3963 : vec4<f32> = x_28.unity_FogColor;
  let x_3965 : vec3<f32> = ((vec3<f32>(x_3958.x, x_3958.x, x_3958.x) * x_3960) + vec3<f32>(x_3963.x, x_3963.y, x_3963.z));
  let x_3966 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
  let x_3970 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3970 == 1.0f);
  let x_3972 : bool = u_xlatb23;
  if (x_3972) {
    let x_3977 : f32 = u_xlat0.x;
    x_3973 = x_3977;
  } else {
    x_3973 = 1.0f;
  }
  let x_3979 : f32 = x_3973;
  SV_Target0.w = x_3979;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


