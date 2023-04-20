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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(4) var<uniform> x_1805 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1983 : UnityPerDraw;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2240 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
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
  var x_1757 : f32;
  var x_1888 : f32;
  var x_1899 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2377 : f32;
  var x_2387 : f32;
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
  var x_3971 : f32;
  var x_3984 : f32;
  var x_4042 : f32;
  var x_4053 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat53;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb27;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb27;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb27;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat27;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_166 : vec3<f32> = vs_TEXCOORD7;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (x_166 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD7;
  let x_186 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_189 : vec3<f32> = (x_184 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : vec3<f32> = vs_TEXCOORD7;
  let x_196 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_193 + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_201 : vec3<f32> = vs_TEXCOORD7;
  let x_203 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_206 : vec3<f32> = (x_201 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = u_xlat4;
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_221, x_222);
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_234 < x_236);
  let x_239 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_271.y, x_271.z, x_271.w));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat2;
  let x_279 : vec3<f32> = max(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_282, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_290) + 4.0f);
  let x_297 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_297);
  let x_301 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_301) << bitcast<u32>(2i));
  let x_305 : vec3<f32> = vs_TEXCOORD7;
  let x_307 : i32 = u_xlati2;
  let x_310 : i32 = u_xlati2;
  let x_314 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_307 + 1i) / 4i)][((x_310 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_322 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_327 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + x_327);
  let x_329 : i32 = u_xlati2;
  let x_332 : i32 = u_xlati2;
  let x_336 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec3<f32> = vs_TEXCOORD7;
  let x_341 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + x_341);
  let x_343 : vec3<f32> = u_xlat28;
  let x_344 : i32 = u_xlati2;
  let x_347 : i32 = u_xlati2;
  let x_351 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_344 + 3i) / 4i)][((x_347 + 3i) % 4i)];
  let x_353 : vec3<f32> = (x_343 + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_364 : f32 = x_29.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_361.z, x_361.w), x_364);
  u_xlat4 = x_365;
  let x_370 : vec4<f32> = vs_TEXCOORD0;
  let x_373 : f32 = x_29.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_370.z, x_370.w), x_373);
  u_xlat5 = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = u_xlat27;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_384, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat80;
  u_xlat80 = (x_388 + 0.5f);
  let x_391 : f32 = u_xlat80;
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * x_393);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat4.w;
  u_xlat80 = max(x_398, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : f32 = u_xlat80;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403, x_403, x_403));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  u_xlat80 = ((-(x_408) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_414 : f32 = u_xlat80;
  u_xlat81 = (-(x_414) + 1.0f);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : f32 = u_xlat80;
  u_xlat5 = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419, x_419, x_419));
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_440) + 1.0f);
  let x_443 : f32 = u_xlat1;
  let x_444 : f32 = u_xlat1;
  u_xlat80 = (x_443 * x_444);
  let x_446 : f32 = u_xlat80;
  u_xlat80 = max(x_446, 0.0078125f);
  let x_450 : f32 = u_xlat80;
  let x_451 : f32 = u_xlat80;
  u_xlat82 = (x_450 * x_451);
  let x_455 : f32 = u_xlat0.w;
  let x_456 : f32 = u_xlat81;
  u_xlat78 = (x_455 + x_456);
  let x_458 : f32 = u_xlat78;
  u_xlat78 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat80;
  u_xlat81 = ((x_460 * 4.0f) + 2.0f);
  let x_466 : f32 = x_174.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_466);
  let x_468 : bool = u_xlatb83;
  if (x_468) {
    let x_472 : f32 = x_174.x_MainLightShadowParams.y;
    u_xlatb83 = (x_472 == 1.0f);
    let x_474 : bool = u_xlatb83;
    if (x_474) {
      let x_477 : vec4<f32> = u_xlat2;
      let x_480 : vec4<f32> = x_174.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_477.x, x_477.y, x_477.x, x_477.y) + x_480);
      let x_484 : vec4<f32> = u_xlat6;
      let x_485 : vec2<f32> = vec2<f32>(x_484.x, x_484.y);
      let x_487 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_485.x, x_485.y, x_487);
      let x_500 : vec3<f32> = txVec0;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat7.x = x_502;
      let x_505 : vec4<f32> = u_xlat6;
      let x_506 : vec2<f32> = vec2<f32>(x_505.z, x_505.w);
      let x_508 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec1;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat7.y = x_517;
      let x_519 : vec4<f32> = u_xlat2;
      let x_523 : vec4<f32> = x_174.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) + x_523);
      let x_526 : vec4<f32> = u_xlat6;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec2;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat7.z = x_538;
      let x_541 : vec4<f32> = u_xlat6;
      let x_542 : vec2<f32> = vec2<f32>(x_541.z, x_541.w);
      let x_544 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec3;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_551.xy, x_551.z);
      u_xlat7.w = x_553;
      let x_556 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_556, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_563 : f32 = x_174.x_MainLightShadowParams.y;
      u_xlatb6 = (x_563 == 2.0f);
      let x_565 : bool = u_xlatb6;
      if (x_565) {
        let x_568 : vec4<f32> = u_xlat2;
        let x_572 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_576 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_572.z, x_572.w)) + vec2<f32>(0.5f, 0.5f));
        let x_577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = floor(vec2<f32>(x_579.x, x_579.y));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_586 : vec4<f32> = u_xlat2;
        let x_589 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_589.z, x_589.w)) + -(vec2<f32>(x_592.x, x_592.y)));
        let x_596 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_596.x, x_596.x, x_596.y, x_596.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_601 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z) * vec4<f32>(x_603.x, x_603.x, x_603.z, x_603.z));
        let x_606 : vec4<f32> = u_xlat8;
        let x_610 : vec2<f32> = (vec2<f32>(x_606.y, x_606.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_610.x, x_611.y, x_610.y, x_611.w);
        let x_613 : vec4<f32> = u_xlat8;
        let x_616 : vec2<f32> = u_xlat58;
        let x_618 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.z) * vec2<f32>(0.5f, 0.5f)) + -(x_616));
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_622 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_622) + vec2<f32>(1.0f, 1.0f));
        let x_627 : vec2<f32> = u_xlat58;
        let x_629 : vec2<f32> = min(x_627, vec2<f32>(0.0f, 0.0f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat9;
        let x_635 : vec4<f32> = u_xlat9;
        let x_638 : vec2<f32> = u_xlat60;
        let x_639 : vec2<f32> = ((-(vec2<f32>(x_632.x, x_632.y)) * vec2<f32>(x_635.x, x_635.y)) + x_638);
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_642 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_642, vec2<f32>(0.0f, 0.0f));
        let x_644 : vec2<f32> = u_xlat58;
        let x_646 : vec2<f32> = u_xlat58;
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_644) * x_646) + vec2<f32>(x_648.y, x_648.w));
        let x_651 : vec4<f32> = u_xlat9;
        let x_653 : vec2<f32> = (vec2<f32>(x_651.x, x_651.y) + vec2<f32>(1.0f, 1.0f));
        let x_654 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_656 + vec2<f32>(1.0f, 1.0f));
        let x_659 : vec4<f32> = u_xlat8;
        let x_663 : vec2<f32> = (vec2<f32>(x_659.x, x_659.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_664 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
        let x_666 : vec2<f32> = u_xlat60;
        let x_667 : vec2<f32> = (x_666 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_676 : vec2<f32> = u_xlat58;
        let x_677 : vec2<f32> = (x_676 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_680.y, x_680.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : f32 = u_xlat9.x;
        u_xlat10.z = x_684;
        let x_687 : f32 = u_xlat58.x;
        u_xlat10.w = x_687;
        let x_690 : f32 = u_xlat11.x;
        u_xlat8.z = x_690;
        let x_693 : f32 = u_xlat7.x;
        u_xlat8.w = x_693;
        let x_696 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_696.z, x_696.w, x_696.x, x_696.z) + vec4<f32>(x_698.z, x_698.w, x_698.x, x_698.z));
        let x_702 : f32 = u_xlat10.y;
        u_xlat9.z = x_702;
        let x_705 : f32 = u_xlat58.y;
        u_xlat9.w = x_705;
        let x_708 : f32 = u_xlat8.y;
        u_xlat11.z = x_708;
        let x_711 : f32 = u_xlat7.z;
        u_xlat11.w = x_711;
        let x_713 : vec4<f32> = u_xlat9;
        let x_715 : vec4<f32> = u_xlat11;
        let x_717 : vec3<f32> = (vec3<f32>(x_713.z, x_713.y, x_713.w) + vec3<f32>(x_715.z, x_715.y, x_715.w));
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat8;
        let x_722 : vec4<f32> = u_xlat12;
        let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.z, x_720.w) / vec3<f32>(x_722.z, x_722.w, x_722.y));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat8;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat11;
        let x_737 : vec4<f32> = u_xlat7;
        let x_739 : vec3<f32> = (vec3<f32>(x_735.z, x_735.y, x_735.w) / vec3<f32>(x_737.x, x_737.y, x_737.z));
        let x_740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat8;
        let x_750 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_752 : vec3<f32> = (vec3<f32>(x_747.y, x_747.x, x_747.z) * vec3<f32>(x_750.x, x_750.x, x_750.x));
        let x_753 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat9;
        let x_758 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_760 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_758.y, x_758.y, x_758.y));
        let x_761 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_764 : f32 = u_xlat9.x;
        u_xlat8.w = x_764;
        let x_766 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.y, x_772.w, x_772.x, x_772.w));
        let x_775 : vec4<f32> = u_xlat6;
        let x_778 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_775.x, x_775.y) * vec2<f32>(x_778.x, x_778.y)) + vec2<f32>(x_781.z, x_781.w));
        let x_785 : f32 = u_xlat8.y;
        u_xlat9.w = x_785;
        let x_787 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = vec2<f32>(x_787.y, x_787.z);
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_789.x, x_788.x, x_789.z, x_788.y);
        let x_791 : vec4<f32> = u_xlat6;
        let x_794 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y) * vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y)) + vec4<f32>(x_797.x, x_797.y, x_797.z, x_797.y));
        let x_800 : vec4<f32> = u_xlat6;
        let x_803 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_806 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) * vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) + vec4<f32>(x_806.w, x_806.y, x_806.w, x_806.z));
        let x_809 : vec4<f32> = u_xlat6;
        let x_812 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y) * vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y)) + vec4<f32>(x_815.x, x_815.w, x_815.z, x_815.w));
        let x_819 : vec4<f32> = u_xlat7;
        let x_821 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_819.x, x_819.x, x_819.x, x_819.y) * vec4<f32>(x_821.z, x_821.w, x_821.y, x_821.z));
        let x_825 : vec4<f32> = u_xlat7;
        let x_827 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_825.y, x_825.y, x_825.z, x_825.z) * x_827);
        let x_830 : f32 = u_xlat7.z;
        let x_832 : f32 = u_xlat12.y;
        u_xlat6.x = (x_830 * x_832);
        let x_836 : vec4<f32> = u_xlat10;
        let x_837 : vec2<f32> = vec2<f32>(x_836.x, x_836.y);
        let x_839 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_847 : vec3<f32> = txVec4;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat32 = x_849;
        let x_851 : vec4<f32> = u_xlat10;
        let x_852 : vec2<f32> = vec2<f32>(x_851.z, x_851.w);
        let x_854 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec5;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat7.x = x_863;
        let x_866 : f32 = u_xlat7.x;
        let x_868 : f32 = u_xlat13.y;
        u_xlat7.x = (x_866 * x_868);
        let x_872 : f32 = u_xlat13.x;
        let x_873 : f32 = u_xlat32;
        let x_876 : f32 = u_xlat7.x;
        u_xlat32 = ((x_872 * x_873) + x_876);
        let x_879 : vec2<f32> = u_xlat58;
        let x_881 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec6;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat58.x = x_890;
        let x_893 : f32 = u_xlat13.z;
        let x_895 : f32 = u_xlat58.x;
        let x_897 : f32 = u_xlat32;
        u_xlat32 = ((x_893 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat9;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec7;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat58.x = x_912;
        let x_915 : f32 = u_xlat13.w;
        let x_917 : f32 = u_xlat58.x;
        let x_919 : f32 = u_xlat32;
        u_xlat32 = ((x_915 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat11;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec8;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat58.x = x_934;
        let x_937 : f32 = u_xlat14.x;
        let x_939 : f32 = u_xlat58.x;
        let x_941 : f32 = u_xlat32;
        u_xlat32 = ((x_937 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat11;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec9;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat58.x = x_956;
        let x_959 : f32 = u_xlat14.y;
        let x_961 : f32 = u_xlat58.x;
        let x_963 : f32 = u_xlat32;
        u_xlat32 = ((x_959 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat9;
        let x_967 : vec2<f32> = vec2<f32>(x_966.z, x_966.w);
        let x_969 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec10;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
        u_xlat58.x = x_978;
        let x_981 : f32 = u_xlat14.z;
        let x_983 : f32 = u_xlat58.x;
        let x_985 : f32 = u_xlat32;
        u_xlat32 = ((x_981 * x_983) + x_985);
        let x_988 : vec4<f32> = u_xlat8;
        let x_989 : vec2<f32> = vec2<f32>(x_988.x, x_988.y);
        let x_991 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_998 : vec3<f32> = txVec11;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
        u_xlat58.x = x_1000;
        let x_1003 : f32 = u_xlat14.w;
        let x_1005 : f32 = u_xlat58.x;
        let x_1007 : f32 = u_xlat32;
        u_xlat32 = ((x_1003 * x_1005) + x_1007);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
        let x_1013 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
        let x_1020 : vec3<f32> = txVec12;
        let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1020.xy, x_1020.z);
        u_xlat58.x = x_1022;
        let x_1025 : f32 = u_xlat6.x;
        let x_1027 : f32 = u_xlat58.x;
        let x_1029 : f32 = u_xlat32;
        u_xlat83 = ((x_1025 * x_1027) + x_1029);
      } else {
        let x_1032 : vec4<f32> = u_xlat2;
        let x_1035 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1032.x, x_1032.y) * vec2<f32>(x_1035.z, x_1035.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1039 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1043 : vec2<f32> = floor(vec2<f32>(x_1041.x, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat2;
        let x_1049 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.z, x_1049.w)) + -(vec2<f32>(x_1052.x, x_1052.y)));
        let x_1056 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1056.x, x_1056.x, x_1056.y, x_1056.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.z, x_1061.z));
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = (vec2<f32>(x_1064.y, x_1064.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1068.x, x_1069.z, x_1068.y);
        let x_1071 : vec4<f32> = u_xlat8;
        let x_1074 : vec2<f32> = u_xlat58;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1074));
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1076.x, x_1077.y, x_1076.y, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat58;
        let x_1081 : vec2<f32> = (-(x_1079) + vec2<f32>(1.0f, 1.0f));
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1084, vec2<f32>(0.0f, 0.0f));
        let x_1086 : vec2<f32> = u_xlat60;
        let x_1088 : vec2<f32> = u_xlat60;
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1092 : vec2<f32> = ((-(x_1086) * x_1088) + vec2<f32>(x_1090.x, x_1090.y));
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1095, vec2<f32>(0.0f, 0.0f));
        let x_1098 : vec2<f32> = u_xlat60;
        let x_1100 : vec2<f32> = u_xlat60;
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = ((-(x_1098) * x_1100) + vec2<f32>(x_1102.y, x_1102.w));
        let x_1105 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1104.x, x_1105.y, x_1104.y);
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1107.x, x_1107.y) + vec2<f32>(2.0f, 2.0f));
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec3<f32> = u_xlat33;
        let x_1115 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.z) + vec2<f32>(2.0f, 2.0f));
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1116.x, x_1115.x, x_1116.z, x_1115.y);
        let x_1119 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1119 * 0.08163200318813323975f);
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1126 : vec3<f32> = (vec3<f32>(x_1123.z, x_1123.x, x_1123.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat8;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1136 : f32 = u_xlat11.y;
        u_xlat10.x = x_1136;
        let x_1138 : vec2<f32> = u_xlat58;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1138.x, x_1138.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec2<f32> = u_xlat58;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1156 : f32 = u_xlat7.x;
        u_xlat8.y = x_1156;
        let x_1159 : f32 = u_xlat9.y;
        u_xlat8.w = x_1159;
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1161 + x_1162);
        let x_1164 : vec2<f32> = u_xlat58;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat58;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1174.w);
        let x_1177 : f32 = u_xlat7.y;
        u_xlat9.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1179 + x_1180);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1182 / x_1183);
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1185 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1191 / x_1192);
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1194 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1196.w, x_1196.x, x_1196.y, x_1196.z) * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x));
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1205 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1202.x, x_1202.w, x_1202.y, x_1202.z) * vec4<f32>(x_1205.y, x_1205.y, x_1205.y, x_1205.y));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1209 : vec3<f32> = vec3<f32>(x_1208.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1209.z);
        let x_1213 : f32 = u_xlat9.x;
        u_xlat11.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1227 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1234 : f32 = u_xlat11.y;
        u_xlat8.y = x_1234;
        let x_1237 : f32 = u_xlat9.z;
        u_xlat11.y = x_1237;
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1248 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.w, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1260 : f32 = u_xlat11.y;
        u_xlat8.z = x_1260;
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.z));
        let x_1273 : f32 = u_xlat9.w;
        u_xlat11.y = x_1273;
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1279 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1295 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1294.x, x_1294.y, x_1295.z);
        let x_1298 : f32 = u_xlat11.y;
        u_xlat8.w = x_1298;
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.w));
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1311 : vec3<f32> = vec3<f32>(x_1310.x, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1311.z);
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1334 : f32 = u_xlat8.x;
        u_xlat9.x = x_1334;
        let x_1336 : vec4<f32> = u_xlat6;
        let x_1339 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.y));
        let x_1345 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1348.x, x_1348.x, x_1348.x, x_1348.x) * x_1350);
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1353.y, x_1353.y, x_1353.y, x_1353.y) * x_1355);
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1358.z, x_1358.z, x_1358.z, x_1358.z) * x_1360);
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1362.w, x_1362.w, x_1362.w, x_1362.w) * x_1364);
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec13;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat8.x = x_1379;
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec14;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat86 = x_1395;
        let x_1396 : f32 = u_xlat86;
        let x_1398 : f32 = u_xlat17.y;
        u_xlat86 = (x_1396 * x_1398);
        let x_1401 : f32 = u_xlat17.x;
        let x_1403 : f32 = u_xlat8.x;
        let x_1405 : f32 = u_xlat86;
        u_xlat8.x = ((x_1401 * x_1403) + x_1405);
        let x_1409 : vec2<f32> = u_xlat58;
        let x_1411 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1418 : vec3<f32> = txVec15;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat58.x = x_1420;
        let x_1423 : f32 = u_xlat17.z;
        let x_1425 : f32 = u_xlat58.x;
        let x_1428 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1423 * x_1425) + x_1428);
        let x_1432 : vec4<f32> = u_xlat15;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1443 : vec3<f32> = txVec16;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat84 = x_1445;
        let x_1447 : f32 = u_xlat17.w;
        let x_1448 : f32 = u_xlat84;
        let x_1451 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat13;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec17;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat84 = x_1467;
        let x_1469 : f32 = u_xlat18.x;
        let x_1470 : f32 = u_xlat84;
        let x_1473 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat13;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec18;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat84 = x_1489;
        let x_1491 : f32 = u_xlat18.y;
        let x_1492 : f32 = u_xlat84;
        let x_1495 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1491 * x_1492) + x_1495);
        let x_1499 : vec4<f32> = u_xlat14;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.x, x_1499.y);
        let x_1502 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec19;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1509.xy, x_1509.z);
        u_xlat84 = x_1511;
        let x_1513 : f32 = u_xlat18.z;
        let x_1514 : f32 = u_xlat84;
        let x_1517 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1513 * x_1514) + x_1517);
        let x_1521 : vec4<f32> = u_xlat15;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.z, x_1521.w);
        let x_1524 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec20;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat84 = x_1533;
        let x_1535 : f32 = u_xlat18.w;
        let x_1536 : f32 = u_xlat84;
        let x_1539 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1535 * x_1536) + x_1539);
        let x_1543 : vec4<f32> = u_xlat16;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec21;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat84 = x_1555;
        let x_1557 : f32 = u_xlat19.x;
        let x_1558 : f32 = u_xlat84;
        let x_1561 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1557 * x_1558) + x_1561);
        let x_1565 : vec4<f32> = u_xlat16;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.z, x_1565.w);
        let x_1568 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec22;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat84 = x_1577;
        let x_1579 : f32 = u_xlat19.y;
        let x_1580 : f32 = u_xlat84;
        let x_1583 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1579 * x_1580) + x_1583);
        let x_1587 : vec3<f32> = u_xlat34;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec23;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
        u_xlat84 = x_1599;
        let x_1601 : f32 = u_xlat19.z;
        let x_1602 : f32 = u_xlat84;
        let x_1605 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1601 * x_1602) + x_1605);
        let x_1609 : vec2<f32> = u_xlat66;
        let x_1611 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec24;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat84 = x_1620;
        let x_1622 : f32 = u_xlat19.w;
        let x_1623 : f32 = u_xlat84;
        let x_1626 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1622 * x_1623) + x_1626);
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.x, x_1630.y);
        let x_1633 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec25;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat84 = x_1642;
        let x_1644 : f32 = u_xlat7.x;
        let x_1645 : f32 = u_xlat84;
        let x_1648 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1644 * x_1645) + x_1648);
        let x_1652 : vec4<f32> = u_xlat11;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.z, x_1652.w);
        let x_1655 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec26;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat84 = x_1664;
        let x_1666 : f32 = u_xlat7.y;
        let x_1667 : f32 = u_xlat84;
        let x_1670 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1666 * x_1667) + x_1670);
        let x_1674 : vec2<f32> = u_xlat61;
        let x_1676 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec27;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat84 = x_1685;
        let x_1687 : f32 = u_xlat7.z;
        let x_1688 : f32 = u_xlat84;
        let x_1691 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
        let x_1698 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec28;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
        u_xlat6.x = x_1707;
        let x_1710 : f32 = u_xlat7.w;
        let x_1712 : f32 = u_xlat6.x;
        let x_1715 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1710 * x_1712) + x_1715);
      }
    }
  } else {
    let x_1719 : vec4<f32> = u_xlat2;
    let x_1720 : vec2<f32> = vec2<f32>(x_1719.x, x_1719.y);
    let x_1722 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
    let x_1729 : vec3<f32> = txVec29;
    let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
    u_xlat83 = x_1731;
  }
  let x_1733 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1733) + 1.0f);
  let x_1737 : f32 = u_xlat83;
  let x_1739 : f32 = x_174.x_MainLightShadowParams.x;
  let x_1742 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1737 * x_1739) + x_1742);
  let x_1747 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1747);
  let x_1751 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1751 >= 1.0f);
  let x_1753 : bool = u_xlatb54;
  let x_1754 : bool = u_xlatb28;
  u_xlatb28 = (x_1753 | x_1754);
  let x_1756 : bool = u_xlatb28;
  if (x_1756) {
    x_1757 = 1.0f;
  } else {
    let x_1762 : f32 = u_xlat2.x;
    x_1757 = x_1762;
  }
  let x_1763 : f32 = x_1757;
  u_xlat2.x = x_1763;
  let x_1765 : vec3<f32> = vs_TEXCOORD7;
  let x_1767 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1769 : vec3<f32> = (x_1765 + -(x_1767));
  let x_1770 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1772 : vec4<f32> = u_xlat6;
  let x_1774 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_1772.x, x_1772.y, x_1772.z), vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
  let x_1780 : f32 = u_xlat28.x;
  let x_1782 : f32 = x_174.x_MainLightShadowParams.z;
  let x_1785 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1780 * x_1782) + x_1785);
  let x_1787 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1787, 0.0f, 1.0f);
  let x_1790 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_1790) + 1.0f);
  let x_1793 : f32 = u_xlat54;
  let x_1794 : f32 = u_xlat83;
  let x_1797 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1793 * x_1794) + x_1797);
  let x_1807 : f32 = x_1805.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1807 == -1.0f));
  let x_1809 : bool = u_xlatb54;
  if (x_1809) {
    let x_1812 : vec3<f32> = vs_TEXCOORD7;
    let x_1815 : vec4<f32> = x_1805.x_MainLightWorldToLight[1i];
    let x_1817 : vec2<f32> = (vec2<f32>(x_1812.y, x_1812.y) * vec2<f32>(x_1815.x, x_1815.y));
    let x_1818 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
    let x_1821 : vec4<f32> = x_1805.x_MainLightWorldToLight[0i];
    let x_1823 : vec3<f32> = vs_TEXCOORD7;
    let x_1826 : vec4<f32> = u_xlat6;
    let x_1828 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1823.x, x_1823.x)) + vec2<f32>(x_1826.x, x_1826.y));
    let x_1829 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
    let x_1832 : vec4<f32> = x_1805.x_MainLightWorldToLight[2i];
    let x_1834 : vec3<f32> = vs_TEXCOORD7;
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1839 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.y) * vec2<f32>(x_1834.z, x_1834.z)) + vec2<f32>(x_1837.x, x_1837.y));
    let x_1840 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
    let x_1842 : vec4<f32> = u_xlat6;
    let x_1845 : vec4<f32> = x_1805.x_MainLightWorldToLight[3i];
    let x_1847 : vec2<f32> = (vec2<f32>(x_1842.x, x_1842.y) + vec2<f32>(x_1845.x, x_1845.y));
    let x_1848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1853 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1854 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
    let x_1861 : vec4<f32> = u_xlat6;
    let x_1864 : f32 = x_29.x_GlobalMipBias.x;
    let x_1865 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1861.x, x_1861.y), x_1864);
    u_xlat6 = x_1865;
    let x_1870 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1872 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1874 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1876 : f32 = x_1805.x_MainLightCookieTextureFormat;
    let x_1877 : vec4<f32> = vec4<f32>(x_1870, x_1872, x_1874, x_1876);
    let x_1884 : vec4<bool> = (vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1877.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1884.x, x_1884.y);
    let x_1887 : bool = u_xlatb7.y;
    if (x_1887) {
      let x_1892 : f32 = u_xlat6.w;
      x_1888 = x_1892;
    } else {
      let x_1895 : f32 = u_xlat6.x;
      x_1888 = x_1895;
    }
    let x_1896 : f32 = x_1888;
    u_xlat54 = x_1896;
    let x_1898 : bool = u_xlatb7.x;
    if (x_1898) {
      let x_1902 : vec4<f32> = u_xlat6;
      x_1899 = vec3<f32>(x_1902.x, x_1902.y, x_1902.z);
    } else {
      let x_1905 : f32 = u_xlat54;
      x_1899 = vec3<f32>(x_1905, x_1905, x_1905);
    }
    let x_1907 : vec3<f32> = x_1899;
    let x_1908 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1914 : vec4<f32> = u_xlat6;
  let x_1917 : vec4<f32> = x_29.x_MainLightColor;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec3<f32> = u_xlat3;
  let x_1924 : vec3<f32> = u_xlat27;
  u_xlat54 = dot(-(x_1922), x_1924);
  let x_1926 : f32 = u_xlat54;
  let x_1927 : f32 = u_xlat54;
  u_xlat54 = (x_1926 + x_1927);
  let x_1929 : vec3<f32> = u_xlat27;
  let x_1930 : f32 = u_xlat54;
  let x_1934 : vec3<f32> = u_xlat3;
  let x_1936 : vec3<f32> = ((x_1929 * -(vec3<f32>(x_1930, x_1930, x_1930))) + -(x_1934));
  let x_1937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : vec3<f32> = u_xlat27;
  let x_1940 : vec3<f32> = u_xlat3;
  u_xlat54 = dot(x_1939, x_1940);
  let x_1942 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1942, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat54;
  u_xlat54 = (-(x_1944) + 1.0f);
  let x_1947 : f32 = u_xlat54;
  let x_1948 : f32 = u_xlat54;
  u_xlat54 = (x_1947 * x_1948);
  let x_1950 : f32 = u_xlat54;
  let x_1951 : f32 = u_xlat54;
  u_xlat54 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1953) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1959 : f32 = u_xlat1;
  let x_1960 : f32 = u_xlat83;
  u_xlat1 = (x_1959 * x_1960);
  let x_1962 : f32 = u_xlat1;
  u_xlat1 = (x_1962 * 6.0f);
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : f32 = u_xlat1;
  let x_1976 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1973.x, x_1973.y, x_1973.z), x_1975);
  u_xlat7 = x_1976;
  let x_1978 : f32 = u_xlat7.w;
  u_xlat1 = (x_1978 + -1.0f);
  let x_1985 : f32 = x_1983.unity_SpecCube0_HDR.w;
  let x_1986 : f32 = u_xlat1;
  u_xlat1 = ((x_1985 * x_1986) + 1.0f);
  let x_1989 : f32 = u_xlat1;
  u_xlat1 = max(x_1989, 0.0f);
  let x_1991 : f32 = u_xlat1;
  u_xlat1 = log2(x_1991);
  let x_1993 : f32 = u_xlat1;
  let x_1995 : f32 = x_1983.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1993 * x_1995);
  let x_1997 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1997);
  let x_1999 : f32 = u_xlat1;
  let x_2001 : f32 = x_1983.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1999 * x_2001);
  let x_2003 : vec4<f32> = u_xlat7;
  let x_2005 : f32 = u_xlat1;
  let x_2007 : vec3<f32> = (vec3<f32>(x_2003.x, x_2003.y, x_2003.z) * vec3<f32>(x_2005, x_2005, x_2005));
  let x_2008 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2010 : f32 = u_xlat80;
  let x_2012 : f32 = u_xlat80;
  let x_2016 : vec2<f32> = ((vec2<f32>(x_2010, x_2010) * vec2<f32>(x_2012, x_2012)) + vec2<f32>(-1.0f, 1.0f));
  let x_2017 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
  let x_2020 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_2020);
  let x_2022 : vec4<f32> = u_xlat0;
  let x_2025 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2022.x, x_2022.y, x_2022.z)) + vec3<f32>(x_2025, x_2025, x_2025));
  let x_2028 : f32 = u_xlat54;
  let x_2030 : vec3<f32> = u_xlat34;
  let x_2032 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2028, x_2028, x_2028) * x_2030) + vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2035 : f32 = u_xlat1;
  let x_2037 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2035, x_2035, x_2035) * x_2037);
  let x_2039 : vec4<f32> = u_xlat7;
  let x_2041 : vec3<f32> = u_xlat34;
  let x_2042 : vec3<f32> = (vec3<f32>(x_2039.x, x_2039.y, x_2039.z) * x_2041);
  let x_2043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
  let x_2045 : vec4<f32> = u_xlat4;
  let x_2047 : vec3<f32> = u_xlat5;
  let x_2049 : vec4<f32> = u_xlat7;
  let x_2051 : vec3<f32> = ((vec3<f32>(x_2045.x, x_2045.y, x_2045.z) * x_2047) + vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
  let x_2055 : f32 = u_xlat2.x;
  let x_2057 : f32 = x_1983.unity_LightData.z;
  u_xlat78 = (x_2055 * x_2057);
  let x_2059 : vec3<f32> = u_xlat27;
  let x_2061 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_2059, vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2064, 0.0f, 1.0f);
  let x_2066 : f32 = u_xlat78;
  let x_2067 : f32 = u_xlat1;
  u_xlat78 = (x_2066 * x_2067);
  let x_2069 : f32 = u_xlat78;
  let x_2071 : vec4<f32> = u_xlat6;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2073.x, x_2074.y, x_2073.y, x_2073.z);
  let x_2076 : vec3<f32> = u_xlat3;
  let x_2078 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2080 : vec3<f32> = (x_2076 + vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
  let x_2081 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
  let x_2083 : vec4<f32> = u_xlat6;
  let x_2085 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat78;
  u_xlat78 = max(x_2088, 1.17549435e-38f);
  let x_2091 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2091);
  let x_2093 : f32 = u_xlat78;
  let x_2095 : vec4<f32> = u_xlat6;
  let x_2097 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec3<f32> = u_xlat27;
  let x_2101 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_2100, vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2104, 0.0f, 1.0f);
  let x_2107 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2109 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2112, 0.0f, 1.0f);
  let x_2114 : f32 = u_xlat78;
  let x_2115 : f32 = u_xlat78;
  u_xlat78 = (x_2114 * x_2115);
  let x_2117 : f32 = u_xlat78;
  let x_2119 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2117 * x_2119) + 1.00001001358032226562f);
  let x_2123 : f32 = u_xlat1;
  let x_2124 : f32 = u_xlat1;
  u_xlat1 = (x_2123 * x_2124);
  let x_2126 : f32 = u_xlat78;
  let x_2127 : f32 = u_xlat78;
  u_xlat78 = (x_2126 * x_2127);
  let x_2129 : f32 = u_xlat1;
  u_xlat1 = max(x_2129, 0.10000000149011611938f);
  let x_2132 : f32 = u_xlat78;
  let x_2133 : f32 = u_xlat1;
  u_xlat78 = (x_2132 * x_2133);
  let x_2135 : f32 = u_xlat81;
  let x_2136 : f32 = u_xlat78;
  u_xlat78 = (x_2135 * x_2136);
  let x_2138 : f32 = u_xlat82;
  let x_2139 : f32 = u_xlat78;
  u_xlat78 = (x_2138 / x_2139);
  let x_2141 : vec4<f32> = u_xlat0;
  let x_2143 : f32 = u_xlat78;
  let x_2146 : vec3<f32> = u_xlat5;
  let x_2147 : vec3<f32> = ((vec3<f32>(x_2141.x, x_2141.y, x_2141.z) * vec3<f32>(x_2143, x_2143, x_2143)) + x_2146);
  let x_2148 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2151 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2153 : f32 = x_1983.unity_LightData.y;
  u_xlat78 = min(x_2151, x_2153);
  let x_2156 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2156));
  let x_2160 : f32 = u_xlat28.x;
  let x_2163 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_2166 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2160 * x_2163) + x_2166);
  let x_2168 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2168, 0.0f, 1.0f);
  let x_2171 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2173 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2175 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2177 : f32 = x_1805.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2178 : vec4<f32> = vec4<f32>(x_2171, x_2173, x_2175, x_2177);
  let x_2184 : vec4<bool> = (vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2178.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2184.x, x_2184.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2196 : u32 = u_xlatu_loop_1;
    let x_2197 : u32 = u_xlatu78;
    if ((x_2196 < x_2197)) {
    } else {
      break;
    }
    let x_2200 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2200 >> 2u);
    let x_2203 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2203 & 3u));
    let x_2206 : u32 = u_xlatu83;
    let x_2209 : vec4<f32> = x_1983.unity_LightIndices[bitcast<i32>(x_2206)];
    let x_2219 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2224 : vec4<u32> = indexable[x_2219];
    u_xlat83 = dot(x_2209, bitcast<vec4<f32>>(x_2224));
    let x_2228 : f32 = u_xlat83;
    u_xlati83 = i32(x_2228);
    let x_2230 : vec3<f32> = vs_TEXCOORD7;
    let x_2241 : i32 = u_xlati83;
    let x_2243 : vec4<f32> = x_2240.x_AdditionalLightsPosition[x_2241];
    let x_2246 : i32 = u_xlati83;
    let x_2248 : vec4<f32> = x_2240.x_AdditionalLightsPosition[x_2246];
    let x_2250 : vec3<f32> = ((-(x_2230) * vec3<f32>(x_2243.w, x_2243.w, x_2243.w)) + vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
    let x_2253 : vec4<f32> = u_xlat9;
    let x_2255 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2253.x, x_2253.y, x_2253.z), vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
    let x_2258 : f32 = u_xlat84;
    u_xlat84 = max(x_2258, 0.00006103515625f);
    let x_2262 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2262);
    let x_2264 : f32 = u_xlat59;
    let x_2266 : vec4<f32> = u_xlat9;
    let x_2268 : vec3<f32> = (vec3<f32>(x_2264, x_2264, x_2264) * vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
    let x_2269 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
    let x_2272 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2272);
    let x_2274 : f32 = u_xlat84;
    let x_2275 : i32 = u_xlati83;
    let x_2277 : f32 = x_2240.x_AdditionalLightsAttenuation[x_2275].x;
    u_xlat84 = (x_2274 * x_2277);
    let x_2279 : f32 = u_xlat84;
    let x_2281 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2279) * x_2281) + 1.0f);
    let x_2284 : f32 = u_xlat84;
    u_xlat84 = max(x_2284, 0.0f);
    let x_2286 : f32 = u_xlat84;
    let x_2287 : f32 = u_xlat84;
    u_xlat84 = (x_2286 * x_2287);
    let x_2289 : f32 = u_xlat84;
    let x_2290 : f32 = u_xlat85;
    u_xlat84 = (x_2289 * x_2290);
    let x_2292 : i32 = u_xlati83;
    let x_2294 : vec4<f32> = x_2240.x_AdditionalLightsSpotDir[x_2292];
    let x_2296 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2294.x, x_2294.y, x_2294.z), vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
    let x_2299 : f32 = u_xlat85;
    let x_2300 : i32 = u_xlati83;
    let x_2302 : f32 = x_2240.x_AdditionalLightsAttenuation[x_2300].z;
    let x_2304 : i32 = u_xlati83;
    let x_2306 : f32 = x_2240.x_AdditionalLightsAttenuation[x_2304].w;
    u_xlat85 = ((x_2299 * x_2302) + x_2306);
    let x_2308 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2308, 0.0f, 1.0f);
    let x_2310 : f32 = u_xlat85;
    let x_2311 : f32 = u_xlat85;
    u_xlat85 = (x_2310 * x_2311);
    let x_2313 : f32 = u_xlat84;
    let x_2314 : f32 = u_xlat85;
    u_xlat84 = (x_2313 * x_2314);
    let x_2318 : i32 = u_xlati83;
    let x_2320 : f32 = x_174.x_AdditionalShadowParams[x_2318].w;
    u_xlati85 = i32(x_2320);
    let x_2323 : i32 = u_xlati85;
    u_xlatb87 = (x_2323 >= 0i);
    let x_2325 : bool = u_xlatb87;
    if (x_2325) {
      let x_2329 : i32 = u_xlati83;
      let x_2331 : f32 = x_174.x_AdditionalShadowParams[x_2329].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2331, x_2331, x_2331, x_2331))));
      let x_2335 : bool = u_xlatb87;
      if (x_2335) {
        let x_2339 : vec4<f32> = u_xlat10;
        let x_2342 : vec4<f32> = u_xlat10;
        let x_2345 : vec4<bool> = (abs(vec4<f32>(x_2339.z, x_2339.z, x_2339.y, x_2339.z)) >= abs(vec4<f32>(x_2342.x, x_2342.y, x_2342.x, x_2342.x)));
        let x_2347 : vec3<bool> = vec3<bool>(x_2345.x, x_2345.y, x_2345.z);
        let x_2348 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
        let x_2351 : bool = u_xlatb11.y;
        let x_2353 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2351 & x_2353);
        let x_2355 : vec4<f32> = u_xlat10;
        let x_2358 : vec4<bool> = (-(vec4<f32>(x_2355.z, x_2355.y, x_2355.z, x_2355.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2359 : vec3<bool> = vec3<bool>(x_2358.x, x_2358.y, x_2358.w);
        let x_2360 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2359.x, x_2359.y, x_2360.z, x_2359.z);
        let x_2363 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2363);
        let x_2368 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2368);
        let x_2373 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2373);
        let x_2376 : bool = u_xlatb11.z;
        if (x_2376) {
          let x_2381 : f32 = u_xlat11.y;
          x_2377 = x_2381;
        } else {
          let x_2383 : f32 = u_xlat88;
          x_2377 = x_2383;
        }
        let x_2384 : f32 = x_2377;
        u_xlat88 = x_2384;
        let x_2386 : bool = u_xlatb87;
        if (x_2386) {
          let x_2391 : f32 = u_xlat11.x;
          x_2387 = x_2391;
        } else {
          let x_2393 : f32 = u_xlat88;
          x_2387 = x_2393;
        }
        let x_2394 : f32 = x_2387;
        u_xlat87 = x_2394;
        let x_2395 : i32 = u_xlati83;
        let x_2397 : f32 = x_174.x_AdditionalShadowParams[x_2395].w;
        u_xlat88 = trunc(x_2397);
        let x_2399 : f32 = u_xlat87;
        let x_2400 : f32 = u_xlat88;
        u_xlat87 = (x_2399 + x_2400);
        let x_2402 : f32 = u_xlat87;
        u_xlati85 = i32(x_2402);
      }
      let x_2404 : i32 = u_xlati85;
      u_xlati85 = (x_2404 << bitcast<u32>(2i));
      let x_2406 : vec3<f32> = vs_TEXCOORD7;
      let x_2409 : i32 = u_xlati85;
      let x_2412 : i32 = u_xlati85;
      let x_2416 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2409 + 1i) / 4i)][((x_2412 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2406.y, x_2406.y, x_2406.y, x_2406.y) * x_2416);
      let x_2418 : i32 = u_xlati85;
      let x_2420 : i32 = u_xlati85;
      let x_2423 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_2418 / 4i)][(x_2420 % 4i)];
      let x_2424 : vec3<f32> = vs_TEXCOORD7;
      let x_2427 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2423 * vec4<f32>(x_2424.x, x_2424.x, x_2424.x, x_2424.x)) + x_2427);
      let x_2429 : i32 = u_xlati85;
      let x_2432 : i32 = u_xlati85;
      let x_2436 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2429 + 2i) / 4i)][((x_2432 + 2i) % 4i)];
      let x_2437 : vec3<f32> = vs_TEXCOORD7;
      let x_2440 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2436 * vec4<f32>(x_2437.z, x_2437.z, x_2437.z, x_2437.z)) + x_2440);
      let x_2442 : vec4<f32> = u_xlat11;
      let x_2443 : i32 = u_xlati85;
      let x_2446 : i32 = u_xlati85;
      let x_2450 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2443 + 3i) / 4i)][((x_2446 + 3i) % 4i)];
      u_xlat11 = (x_2442 + x_2450);
      let x_2452 : vec4<f32> = u_xlat11;
      let x_2454 : vec4<f32> = u_xlat11;
      let x_2456 : vec3<f32> = (vec3<f32>(x_2452.x, x_2452.y, x_2452.z) / vec3<f32>(x_2454.w, x_2454.w, x_2454.w));
      let x_2457 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
      let x_2460 : i32 = u_xlati83;
      let x_2462 : f32 = x_174.x_AdditionalShadowParams[x_2460].y;
      u_xlatb85 = (0.0f < x_2462);
      let x_2464 : bool = u_xlatb85;
      if (x_2464) {
        let x_2467 : i32 = u_xlati83;
        let x_2469 : f32 = x_174.x_AdditionalShadowParams[x_2467].y;
        u_xlatb85 = (1.0f == x_2469);
        let x_2471 : bool = u_xlatb85;
        if (x_2471) {
          let x_2474 : vec4<f32> = u_xlat11;
          let x_2478 : vec4<f32> = x_174.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2474.x, x_2474.y, x_2474.x, x_2474.y) + x_2478);
          let x_2481 : vec4<f32> = u_xlat12;
          let x_2482 : vec2<f32> = vec2<f32>(x_2481.x, x_2481.y);
          let x_2484 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2482.x, x_2482.y, x_2484);
          let x_2492 : vec3<f32> = txVec30;
          let x_2494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2492.xy, x_2492.z);
          u_xlat13.x = x_2494;
          let x_2497 : vec4<f32> = u_xlat12;
          let x_2498 : vec2<f32> = vec2<f32>(x_2497.z, x_2497.w);
          let x_2500 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
          let x_2507 : vec3<f32> = txVec31;
          let x_2509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
          u_xlat13.y = x_2509;
          let x_2511 : vec4<f32> = u_xlat11;
          let x_2515 : vec4<f32> = x_174.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y) + x_2515);
          let x_2518 : vec4<f32> = u_xlat12;
          let x_2519 : vec2<f32> = vec2<f32>(x_2518.x, x_2518.y);
          let x_2521 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2519.x, x_2519.y, x_2521);
          let x_2528 : vec3<f32> = txVec32;
          let x_2530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2528.xy, x_2528.z);
          u_xlat13.z = x_2530;
          let x_2533 : vec4<f32> = u_xlat12;
          let x_2534 : vec2<f32> = vec2<f32>(x_2533.z, x_2533.w);
          let x_2536 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
          let x_2543 : vec3<f32> = txVec33;
          let x_2545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
          u_xlat13.w = x_2545;
          let x_2547 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2547, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2550 : i32 = u_xlati83;
          let x_2552 : f32 = x_174.x_AdditionalShadowParams[x_2550].y;
          u_xlatb87 = (2.0f == x_2552);
          let x_2554 : bool = u_xlatb87;
          if (x_2554) {
            let x_2557 : vec4<f32> = u_xlat11;
            let x_2561 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2564 : vec2<f32> = ((vec2<f32>(x_2557.x, x_2557.y) * vec2<f32>(x_2561.z, x_2561.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2565 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat12;
            let x_2569 : vec2<f32> = floor(vec2<f32>(x_2567.x, x_2567.y));
            let x_2570 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2569.x, x_2569.y, x_2570.z, x_2570.w);
            let x_2573 : vec4<f32> = u_xlat11;
            let x_2576 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2579 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2576.z, x_2576.w)) + -(vec2<f32>(x_2579.x, x_2579.y)));
            let x_2583 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2583.x, x_2583.x, x_2583.y, x_2583.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2586 : vec4<f32> = u_xlat13;
            let x_2588 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2586.x, x_2586.x, x_2586.z, x_2586.z) * vec4<f32>(x_2588.x, x_2588.x, x_2588.z, x_2588.z));
            let x_2591 : vec4<f32> = u_xlat14;
            let x_2593 : vec2<f32> = (vec2<f32>(x_2591.y, x_2591.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2594 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2593.x, x_2594.y, x_2593.y, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat14;
            let x_2599 : vec2<f32> = u_xlat64;
            let x_2601 : vec2<f32> = ((vec2<f32>(x_2596.x, x_2596.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2599));
            let x_2602 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
            let x_2604 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2604) + vec2<f32>(1.0f, 1.0f));
            let x_2607 : vec2<f32> = u_xlat64;
            let x_2608 : vec2<f32> = min(x_2607, vec2<f32>(0.0f, 0.0f));
            let x_2609 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2611 : vec4<f32> = u_xlat15;
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2617 : vec2<f32> = u_xlat66;
            let x_2618 : vec2<f32> = ((-(vec2<f32>(x_2611.x, x_2611.y)) * vec2<f32>(x_2614.x, x_2614.y)) + x_2617);
            let x_2619 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
            let x_2621 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2621, vec2<f32>(0.0f, 0.0f));
            let x_2623 : vec2<f32> = u_xlat64;
            let x_2625 : vec2<f32> = u_xlat64;
            let x_2627 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2623) * x_2625) + vec2<f32>(x_2627.y, x_2627.w));
            let x_2630 : vec4<f32> = u_xlat15;
            let x_2632 : vec2<f32> = (vec2<f32>(x_2630.x, x_2630.y) + vec2<f32>(1.0f, 1.0f));
            let x_2633 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
            let x_2635 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2635 + vec2<f32>(1.0f, 1.0f));
            let x_2637 : vec4<f32> = u_xlat14;
            let x_2639 : vec2<f32> = (vec2<f32>(x_2637.x, x_2637.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2640 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
            let x_2642 : vec2<f32> = u_xlat66;
            let x_2643 : vec2<f32> = (x_2642 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2644 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
            let x_2646 : vec4<f32> = u_xlat15;
            let x_2648 : vec2<f32> = (vec2<f32>(x_2646.x, x_2646.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2649 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2648.x, x_2648.y, x_2649.z, x_2649.w);
            let x_2651 : vec2<f32> = u_xlat64;
            let x_2652 : vec2<f32> = (x_2651 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2653 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2652.x, x_2652.y, x_2653.z, x_2653.w);
            let x_2655 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2655.y, x_2655.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2659 : f32 = u_xlat15.x;
            u_xlat16.z = x_2659;
            let x_2662 : f32 = u_xlat64.x;
            u_xlat16.w = x_2662;
            let x_2665 : f32 = u_xlat17.x;
            u_xlat14.z = x_2665;
            let x_2668 : f32 = u_xlat13.x;
            u_xlat14.w = x_2668;
            let x_2670 : vec4<f32> = u_xlat14;
            let x_2672 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2670.z, x_2670.w, x_2670.x, x_2670.z) + vec4<f32>(x_2672.z, x_2672.w, x_2672.x, x_2672.z));
            let x_2676 : f32 = u_xlat16.y;
            u_xlat15.z = x_2676;
            let x_2679 : f32 = u_xlat64.y;
            u_xlat15.w = x_2679;
            let x_2682 : f32 = u_xlat14.y;
            u_xlat17.z = x_2682;
            let x_2685 : f32 = u_xlat13.z;
            u_xlat17.w = x_2685;
            let x_2687 : vec4<f32> = u_xlat15;
            let x_2689 : vec4<f32> = u_xlat17;
            let x_2691 : vec3<f32> = (vec3<f32>(x_2687.z, x_2687.y, x_2687.w) + vec3<f32>(x_2689.z, x_2689.y, x_2689.w));
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat14;
            let x_2696 : vec4<f32> = u_xlat18;
            let x_2698 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.z, x_2694.w) / vec3<f32>(x_2696.z, x_2696.w, x_2696.y));
            let x_2699 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
            let x_2701 : vec4<f32> = u_xlat14;
            let x_2703 : vec3<f32> = (vec3<f32>(x_2701.x, x_2701.y, x_2701.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2704 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
            let x_2706 : vec4<f32> = u_xlat17;
            let x_2708 : vec4<f32> = u_xlat13;
            let x_2710 : vec3<f32> = (vec3<f32>(x_2706.z, x_2706.y, x_2706.w) / vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
            let x_2711 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
            let x_2713 : vec4<f32> = u_xlat15;
            let x_2715 : vec3<f32> = (vec3<f32>(x_2713.x, x_2713.y, x_2713.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2716 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat14;
            let x_2721 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2723 : vec3<f32> = (vec3<f32>(x_2718.y, x_2718.x, x_2718.z) * vec3<f32>(x_2721.x, x_2721.x, x_2721.x));
            let x_2724 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
            let x_2726 : vec4<f32> = u_xlat15;
            let x_2729 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2731 : vec3<f32> = (vec3<f32>(x_2726.x, x_2726.y, x_2726.z) * vec3<f32>(x_2729.y, x_2729.y, x_2729.y));
            let x_2732 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
            let x_2735 : f32 = u_xlat15.x;
            u_xlat14.w = x_2735;
            let x_2737 : vec4<f32> = u_xlat12;
            let x_2740 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2743 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y) * vec4<f32>(x_2740.x, x_2740.y, x_2740.x, x_2740.y)) + vec4<f32>(x_2743.y, x_2743.w, x_2743.x, x_2743.w));
            let x_2746 : vec4<f32> = u_xlat12;
            let x_2749 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2752 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2746.x, x_2746.y) * vec2<f32>(x_2749.x, x_2749.y)) + vec2<f32>(x_2752.z, x_2752.w));
            let x_2756 : f32 = u_xlat14.y;
            u_xlat15.w = x_2756;
            let x_2758 : vec4<f32> = u_xlat15;
            let x_2759 : vec2<f32> = vec2<f32>(x_2758.y, x_2758.z);
            let x_2760 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2760.x, x_2759.x, x_2760.z, x_2759.y);
            let x_2762 : vec4<f32> = u_xlat12;
            let x_2765 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2768 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y) * vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y)) + vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2768.y));
            let x_2771 : vec4<f32> = u_xlat12;
            let x_2774 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2777 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) * vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y)) + vec4<f32>(x_2777.w, x_2777.y, x_2777.w, x_2777.z));
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2783 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.x, x_2786.w, x_2786.z, x_2786.w));
            let x_2789 : vec4<f32> = u_xlat13;
            let x_2791 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2789.x, x_2789.x, x_2789.x, x_2789.y) * vec4<f32>(x_2791.z, x_2791.w, x_2791.y, x_2791.z));
            let x_2795 : vec4<f32> = u_xlat13;
            let x_2797 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2795.y, x_2795.y, x_2795.z, x_2795.z) * x_2797);
            let x_2800 : f32 = u_xlat13.z;
            let x_2802 : f32 = u_xlat18.y;
            u_xlat87 = (x_2800 * x_2802);
            let x_2805 : vec4<f32> = u_xlat16;
            let x_2806 : vec2<f32> = vec2<f32>(x_2805.x, x_2805.y);
            let x_2808 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2806.x, x_2806.y, x_2808);
            let x_2815 : vec3<f32> = txVec34;
            let x_2817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2815.xy, x_2815.z);
            u_xlat88 = x_2817;
            let x_2819 : vec4<f32> = u_xlat16;
            let x_2820 : vec2<f32> = vec2<f32>(x_2819.z, x_2819.w);
            let x_2822 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
            let x_2830 : vec3<f32> = txVec35;
            let x_2832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
            u_xlat89 = x_2832;
            let x_2833 : f32 = u_xlat89;
            let x_2835 : f32 = u_xlat19.y;
            u_xlat89 = (x_2833 * x_2835);
            let x_2838 : f32 = u_xlat19.x;
            let x_2839 : f32 = u_xlat88;
            let x_2841 : f32 = u_xlat89;
            u_xlat88 = ((x_2838 * x_2839) + x_2841);
            let x_2844 : vec2<f32> = u_xlat64;
            let x_2846 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2853 : vec3<f32> = txVec36;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat89 = x_2855;
            let x_2857 : f32 = u_xlat19.z;
            let x_2858 : f32 = u_xlat89;
            let x_2860 : f32 = u_xlat88;
            u_xlat88 = ((x_2857 * x_2858) + x_2860);
            let x_2863 : vec4<f32> = u_xlat15;
            let x_2864 : vec2<f32> = vec2<f32>(x_2863.x, x_2863.y);
            let x_2866 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2864.x, x_2864.y, x_2866);
            let x_2873 : vec3<f32> = txVec37;
            let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
            u_xlat89 = x_2875;
            let x_2877 : f32 = u_xlat19.w;
            let x_2878 : f32 = u_xlat89;
            let x_2880 : f32 = u_xlat88;
            u_xlat88 = ((x_2877 * x_2878) + x_2880);
            let x_2883 : vec4<f32> = u_xlat17;
            let x_2884 : vec2<f32> = vec2<f32>(x_2883.x, x_2883.y);
            let x_2886 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec38;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat89 = x_2895;
            let x_2897 : f32 = u_xlat20.x;
            let x_2898 : f32 = u_xlat89;
            let x_2900 : f32 = u_xlat88;
            u_xlat88 = ((x_2897 * x_2898) + x_2900);
            let x_2903 : vec4<f32> = u_xlat17;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.z, x_2903.w);
            let x_2906 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec39;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat89 = x_2915;
            let x_2917 : f32 = u_xlat20.y;
            let x_2918 : f32 = u_xlat89;
            let x_2920 : f32 = u_xlat88;
            u_xlat88 = ((x_2917 * x_2918) + x_2920);
            let x_2923 : vec4<f32> = u_xlat15;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.z, x_2923.w);
            let x_2926 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec40;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat89 = x_2935;
            let x_2937 : f32 = u_xlat20.z;
            let x_2938 : f32 = u_xlat89;
            let x_2940 : f32 = u_xlat88;
            u_xlat88 = ((x_2937 * x_2938) + x_2940);
            let x_2943 : vec4<f32> = u_xlat14;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.x, x_2943.y);
            let x_2946 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec41;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat89 = x_2955;
            let x_2957 : f32 = u_xlat20.w;
            let x_2958 : f32 = u_xlat89;
            let x_2960 : f32 = u_xlat88;
            u_xlat88 = ((x_2957 * x_2958) + x_2960);
            let x_2963 : vec4<f32> = u_xlat14;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.z, x_2963.w);
            let x_2966 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec42;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat89 = x_2975;
            let x_2976 : f32 = u_xlat87;
            let x_2977 : f32 = u_xlat89;
            let x_2979 : f32 = u_xlat88;
            u_xlat85 = ((x_2976 * x_2977) + x_2979);
          } else {
            let x_2982 : vec4<f32> = u_xlat11;
            let x_2985 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2988 : vec2<f32> = ((vec2<f32>(x_2982.x, x_2982.y) * vec2<f32>(x_2985.z, x_2985.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2989 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2988.x, x_2988.y, x_2989.z, x_2989.w);
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2993 : vec2<f32> = floor(vec2<f32>(x_2991.x, x_2991.y));
            let x_2994 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2993.x, x_2993.y, x_2994.z, x_2994.w);
            let x_2996 : vec4<f32> = u_xlat11;
            let x_2999 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(x_2999.z, x_2999.w)) + -(vec2<f32>(x_3002.x, x_3002.y)));
            let x_3006 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3006.x, x_3006.x, x_3006.y, x_3006.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3011 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3009.x, x_3009.x, x_3009.z, x_3009.z) * vec4<f32>(x_3011.x, x_3011.x, x_3011.z, x_3011.z));
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3016 : vec2<f32> = (vec2<f32>(x_3014.y, x_3014.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3017 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3017.x, x_3016.x, x_3017.z, x_3016.y);
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3022 : vec2<f32> = u_xlat64;
            let x_3024 : vec2<f32> = ((vec2<f32>(x_3019.x, x_3019.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3022));
            let x_3025 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3024.x, x_3025.y, x_3024.y, x_3025.w);
            let x_3027 : vec2<f32> = u_xlat64;
            let x_3029 : vec2<f32> = (-(x_3027) + vec2<f32>(1.0f, 1.0f));
            let x_3030 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3029.x, x_3029.y, x_3030.z, x_3030.w);
            let x_3032 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3032, vec2<f32>(0.0f, 0.0f));
            let x_3034 : vec2<f32> = u_xlat66;
            let x_3036 : vec2<f32> = u_xlat66;
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3040 : vec2<f32> = ((-(x_3034) * x_3036) + vec2<f32>(x_3038.x, x_3038.y));
            let x_3041 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3040.x, x_3040.y, x_3041.z, x_3041.w);
            let x_3043 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3043, vec2<f32>(0.0f, 0.0f));
            let x_3046 : vec2<f32> = u_xlat66;
            let x_3048 : vec2<f32> = u_xlat66;
            let x_3050 : vec4<f32> = u_xlat13;
            let x_3052 : vec2<f32> = ((-(x_3046) * x_3048) + vec2<f32>(x_3050.y, x_3050.w));
            let x_3053 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3052.x, x_3053.y, x_3052.y);
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3057 : vec2<f32> = (vec2<f32>(x_3055.x, x_3055.y) + vec2<f32>(2.0f, 2.0f));
            let x_3058 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3057.x, x_3057.y, x_3058.z, x_3058.w);
            let x_3060 : vec3<f32> = u_xlat39;
            let x_3062 : vec2<f32> = (vec2<f32>(x_3060.x, x_3060.z) + vec2<f32>(2.0f, 2.0f));
            let x_3063 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3063.x, x_3062.x, x_3063.z, x_3062.y);
            let x_3066 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3066 * 0.08163200318813323975f);
            let x_3069 : vec4<f32> = u_xlat13;
            let x_3071 : vec3<f32> = (vec3<f32>(x_3069.z, x_3069.x, x_3069.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3072 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
            let x_3074 : vec4<f32> = u_xlat14;
            let x_3076 : vec2<f32> = (vec2<f32>(x_3074.x, x_3074.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3077 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
            let x_3080 : f32 = u_xlat17.y;
            u_xlat16.x = x_3080;
            let x_3082 : vec2<f32> = u_xlat64;
            let x_3085 : vec2<f32> = ((vec2<f32>(x_3082.x, x_3082.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3086 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3086.x, x_3085.x, x_3086.z, x_3085.y);
            let x_3088 : vec2<f32> = u_xlat64;
            let x_3091 : vec2<f32> = ((vec2<f32>(x_3088.x, x_3088.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3091.x, x_3092.y, x_3091.y, x_3092.w);
            let x_3095 : f32 = u_xlat13.x;
            u_xlat14.y = x_3095;
            let x_3098 : f32 = u_xlat15.y;
            u_xlat14.w = x_3098;
            let x_3100 : vec4<f32> = u_xlat14;
            let x_3101 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3100 + x_3101);
            let x_3103 : vec2<f32> = u_xlat64;
            let x_3106 : vec2<f32> = ((vec2<f32>(x_3103.y, x_3103.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3107 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3107.x, x_3106.x, x_3107.z, x_3106.y);
            let x_3109 : vec2<f32> = u_xlat64;
            let x_3112 : vec2<f32> = ((vec2<f32>(x_3109.y, x_3109.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3113 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3112.x, x_3113.y, x_3112.y, x_3113.w);
            let x_3116 : f32 = u_xlat13.y;
            u_xlat15.y = x_3116;
            let x_3118 : vec4<f32> = u_xlat15;
            let x_3119 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3118 + x_3119);
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3121 / x_3122);
            let x_3124 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3124 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3126 : vec4<f32> = u_xlat15;
            let x_3127 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3126 / x_3127);
            let x_3129 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3129 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3131 : vec4<f32> = u_xlat14;
            let x_3134 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3131.w, x_3131.x, x_3131.y, x_3131.z) * vec4<f32>(x_3134.x, x_3134.x, x_3134.x, x_3134.x));
            let x_3137 : vec4<f32> = u_xlat15;
            let x_3140 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3137.x, x_3137.w, x_3137.y, x_3137.z) * vec4<f32>(x_3140.y, x_3140.y, x_3140.y, x_3140.y));
            let x_3143 : vec4<f32> = u_xlat14;
            let x_3144 : vec3<f32> = vec3<f32>(x_3143.y, x_3143.z, x_3143.w);
            let x_3145 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3144.x, x_3145.y, x_3144.y, x_3144.z);
            let x_3148 : f32 = u_xlat15.x;
            u_xlat17.y = x_3148;
            let x_3150 : vec4<f32> = u_xlat12;
            let x_3153 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3156.y));
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3162.x, x_3162.y)) + vec2<f32>(x_3165.w, x_3165.y));
            let x_3169 : f32 = u_xlat17.y;
            u_xlat14.y = x_3169;
            let x_3172 : f32 = u_xlat15.z;
            u_xlat17.y = x_3172;
            let x_3174 : vec4<f32> = u_xlat12;
            let x_3177 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) * vec4<f32>(x_3177.x, x_3177.y, x_3177.x, x_3177.y)) + vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3180.y));
            let x_3183 : vec4<f32> = u_xlat12;
            let x_3186 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3189 : vec4<f32> = u_xlat17;
            let x_3191 : vec2<f32> = ((vec2<f32>(x_3183.x, x_3183.y) * vec2<f32>(x_3186.x, x_3186.y)) + vec2<f32>(x_3189.w, x_3189.y));
            let x_3192 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3195 : f32 = u_xlat17.y;
            u_xlat14.z = x_3195;
            let x_3198 : vec4<f32> = u_xlat12;
            let x_3201 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3204 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.y) * vec4<f32>(x_3201.x, x_3201.y, x_3201.x, x_3201.y)) + vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.z));
            let x_3208 : f32 = u_xlat15.w;
            u_xlat17.y = x_3208;
            let x_3211 : vec4<f32> = u_xlat12;
            let x_3214 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3217 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y) * vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y)) + vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3217.y));
            let x_3221 : vec4<f32> = u_xlat12;
            let x_3224 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3221.x, x_3221.y) * vec2<f32>(x_3224.x, x_3224.y)) + vec2<f32>(x_3227.w, x_3227.y));
            let x_3231 : f32 = u_xlat17.y;
            u_xlat14.w = x_3231;
            let x_3234 : vec4<f32> = u_xlat12;
            let x_3237 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3240 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3234.x, x_3234.y) * vec2<f32>(x_3237.x, x_3237.y)) + vec2<f32>(x_3240.x, x_3240.w));
            let x_3243 : vec4<f32> = u_xlat17;
            let x_3244 : vec3<f32> = vec3<f32>(x_3243.x, x_3243.z, x_3243.w);
            let x_3245 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3244.x, x_3245.y, x_3244.y, x_3244.z);
            let x_3247 : vec4<f32> = u_xlat12;
            let x_3250 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3253.y));
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(x_3260.x, x_3260.y)) + vec2<f32>(x_3263.w, x_3263.y));
            let x_3267 : f32 = u_xlat14.x;
            u_xlat15.x = x_3267;
            let x_3269 : vec4<f32> = u_xlat12;
            let x_3272 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_3275 : vec4<f32> = u_xlat15;
            let x_3277 : vec2<f32> = ((vec2<f32>(x_3269.x, x_3269.y) * vec2<f32>(x_3272.x, x_3272.y)) + vec2<f32>(x_3275.x, x_3275.y));
            let x_3278 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3277.x, x_3277.y, x_3278.z, x_3278.w);
            let x_3281 : vec4<f32> = u_xlat13;
            let x_3283 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3281.x, x_3281.x, x_3281.x, x_3281.x) * x_3283);
            let x_3286 : vec4<f32> = u_xlat13;
            let x_3288 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3286.y, x_3286.y, x_3286.y, x_3286.y) * x_3288);
            let x_3291 : vec4<f32> = u_xlat13;
            let x_3293 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3291.z, x_3291.z, x_3291.z, x_3291.z) * x_3293);
            let x_3295 : vec4<f32> = u_xlat13;
            let x_3297 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3295.w, x_3295.w, x_3295.w, x_3295.w) * x_3297);
            let x_3300 : vec4<f32> = u_xlat18;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.x, x_3300.y);
            let x_3303 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec43;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat87 = x_3312;
            let x_3314 : vec4<f32> = u_xlat18;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec44;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat88 = x_3326;
            let x_3327 : f32 = u_xlat88;
            let x_3329 : f32 = u_xlat23.y;
            u_xlat88 = (x_3327 * x_3329);
            let x_3332 : f32 = u_xlat23.x;
            let x_3333 : f32 = u_xlat87;
            let x_3335 : f32 = u_xlat88;
            u_xlat87 = ((x_3332 * x_3333) + x_3335);
            let x_3338 : vec2<f32> = u_xlat64;
            let x_3340 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec45;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat88 = x_3349;
            let x_3351 : f32 = u_xlat23.z;
            let x_3352 : f32 = u_xlat88;
            let x_3354 : f32 = u_xlat87;
            u_xlat87 = ((x_3351 * x_3352) + x_3354);
            let x_3357 : vec4<f32> = u_xlat21;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.x, x_3357.y);
            let x_3360 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec46;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat88 = x_3369;
            let x_3371 : f32 = u_xlat23.w;
            let x_3372 : f32 = u_xlat88;
            let x_3374 : f32 = u_xlat87;
            u_xlat87 = ((x_3371 * x_3372) + x_3374);
            let x_3377 : vec4<f32> = u_xlat19;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec47;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat88 = x_3389;
            let x_3391 : f32 = u_xlat24.x;
            let x_3392 : f32 = u_xlat88;
            let x_3394 : f32 = u_xlat87;
            u_xlat87 = ((x_3391 * x_3392) + x_3394);
            let x_3397 : vec4<f32> = u_xlat19;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.z, x_3397.w);
            let x_3400 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec48;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat88 = x_3409;
            let x_3411 : f32 = u_xlat24.y;
            let x_3412 : f32 = u_xlat88;
            let x_3414 : f32 = u_xlat87;
            u_xlat87 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec4<f32> = u_xlat20;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.x, x_3417.y);
            let x_3420 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec49;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat88 = x_3429;
            let x_3431 : f32 = u_xlat24.z;
            let x_3432 : f32 = u_xlat88;
            let x_3434 : f32 = u_xlat87;
            u_xlat87 = ((x_3431 * x_3432) + x_3434);
            let x_3437 : vec4<f32> = u_xlat21;
            let x_3438 : vec2<f32> = vec2<f32>(x_3437.z, x_3437.w);
            let x_3440 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec50;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat88 = x_3449;
            let x_3451 : f32 = u_xlat24.w;
            let x_3452 : f32 = u_xlat88;
            let x_3454 : f32 = u_xlat87;
            u_xlat87 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat22;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.x, x_3457.y);
            let x_3460 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec51;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat88 = x_3469;
            let x_3471 : f32 = u_xlat25.x;
            let x_3472 : f32 = u_xlat88;
            let x_3474 : f32 = u_xlat87;
            u_xlat87 = ((x_3471 * x_3472) + x_3474);
            let x_3477 : vec4<f32> = u_xlat22;
            let x_3478 : vec2<f32> = vec2<f32>(x_3477.z, x_3477.w);
            let x_3480 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3478.x, x_3478.y, x_3480);
            let x_3487 : vec3<f32> = txVec52;
            let x_3489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3487.xy, x_3487.z);
            u_xlat88 = x_3489;
            let x_3491 : f32 = u_xlat25.y;
            let x_3492 : f32 = u_xlat88;
            let x_3494 : f32 = u_xlat87;
            u_xlat87 = ((x_3491 * x_3492) + x_3494);
            let x_3497 : vec2<f32> = u_xlat40;
            let x_3499 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3497.x, x_3497.y, x_3499);
            let x_3506 : vec3<f32> = txVec53;
            let x_3508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3506.xy, x_3506.z);
            u_xlat88 = x_3508;
            let x_3510 : f32 = u_xlat25.z;
            let x_3511 : f32 = u_xlat88;
            let x_3513 : f32 = u_xlat87;
            u_xlat87 = ((x_3510 * x_3511) + x_3513);
            let x_3516 : vec2<f32> = u_xlat72;
            let x_3518 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec54;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat88 = x_3527;
            let x_3529 : f32 = u_xlat25.w;
            let x_3530 : f32 = u_xlat88;
            let x_3532 : f32 = u_xlat87;
            u_xlat87 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec4<f32> = u_xlat17;
            let x_3536 : vec2<f32> = vec2<f32>(x_3535.x, x_3535.y);
            let x_3538 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec55;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat88 = x_3547;
            let x_3549 : f32 = u_xlat13.x;
            let x_3550 : f32 = u_xlat88;
            let x_3552 : f32 = u_xlat87;
            u_xlat87 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec4<f32> = u_xlat17;
            let x_3556 : vec2<f32> = vec2<f32>(x_3555.z, x_3555.w);
            let x_3558 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec56;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat88 = x_3567;
            let x_3569 : f32 = u_xlat13.y;
            let x_3570 : f32 = u_xlat88;
            let x_3572 : f32 = u_xlat87;
            u_xlat87 = ((x_3569 * x_3570) + x_3572);
            let x_3575 : vec2<f32> = u_xlat67;
            let x_3577 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3575.x, x_3575.y, x_3577);
            let x_3584 : vec3<f32> = txVec57;
            let x_3586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3584.xy, x_3584.z);
            u_xlat88 = x_3586;
            let x_3588 : f32 = u_xlat13.z;
            let x_3589 : f32 = u_xlat88;
            let x_3591 : f32 = u_xlat87;
            u_xlat87 = ((x_3588 * x_3589) + x_3591);
            let x_3594 : vec4<f32> = u_xlat12;
            let x_3595 : vec2<f32> = vec2<f32>(x_3594.x, x_3594.y);
            let x_3597 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
            let x_3604 : vec3<f32> = txVec58;
            let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
            u_xlat88 = x_3606;
            let x_3608 : f32 = u_xlat13.w;
            let x_3609 : f32 = u_xlat88;
            let x_3611 : f32 = u_xlat87;
            u_xlat85 = ((x_3608 * x_3609) + x_3611);
          }
        }
      } else {
        let x_3615 : vec4<f32> = u_xlat11;
        let x_3616 : vec2<f32> = vec2<f32>(x_3615.x, x_3615.y);
        let x_3618 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
        let x_3625 : vec3<f32> = txVec59;
        let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
        u_xlat85 = x_3627;
      }
      let x_3628 : i32 = u_xlati83;
      let x_3630 : f32 = x_174.x_AdditionalShadowParams[x_3628].x;
      u_xlat87 = (1.0f + -(x_3630));
      let x_3633 : f32 = u_xlat85;
      let x_3634 : i32 = u_xlati83;
      let x_3636 : f32 = x_174.x_AdditionalShadowParams[x_3634].x;
      let x_3638 : f32 = u_xlat87;
      u_xlat85 = ((x_3633 * x_3636) + x_3638);
      let x_3641 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3641);
      let x_3645 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3645 >= 1.0f);
      let x_3647 : bool = u_xlatb87;
      let x_3648 : bool = u_xlatb88;
      u_xlatb87 = (x_3647 | x_3648);
      let x_3650 : bool = u_xlatb87;
      let x_3651 : f32 = u_xlat85;
      u_xlat85 = select(x_3651, 1.0f, x_3650);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3654 : f32 = u_xlat85;
    u_xlat87 = (-(x_3654) + 1.0f);
    let x_3657 : f32 = u_xlat1;
    let x_3658 : f32 = u_xlat87;
    let x_3660 : f32 = u_xlat85;
    u_xlat85 = ((x_3657 * x_3658) + x_3660);
    let x_3663 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3663 & 31i)));
    let x_3667 : i32 = u_xlati87;
    let x_3670 : f32 = x_1805.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3667) & bitcast<u32>(x_3670)));
    let x_3674 : i32 = u_xlati87;
    if ((x_3674 != 0i)) {
      let x_3678 : i32 = u_xlati83;
      let x_3680 : f32 = x_1805.x_AdditionalLightsLightTypes[x_3678].el;
      u_xlati87 = i32(x_3680);
      let x_3683 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3683 != 0i));
      let x_3687 : i32 = u_xlati83;
      u_xlati11 = (x_3687 << bitcast<u32>(2i));
      let x_3689 : i32 = u_xlati88;
      if ((x_3689 != 0i)) {
        let x_3694 : vec3<f32> = vs_TEXCOORD7;
        let x_3696 : i32 = u_xlati11;
        let x_3699 : i32 = u_xlati11;
        let x_3703 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3696 + 1i) / 4i)][((x_3699 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3694.y, x_3694.y, x_3694.y) * vec3<f32>(x_3703.x, x_3703.y, x_3703.w));
        let x_3706 : i32 = u_xlati11;
        let x_3708 : i32 = u_xlati11;
        let x_3711 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3706 / 4i)][(x_3708 % 4i)];
        let x_3713 : vec3<f32> = vs_TEXCOORD7;
        let x_3716 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3711.x, x_3711.y, x_3711.w) * vec3<f32>(x_3713.x, x_3713.x, x_3713.x)) + x_3716);
        let x_3718 : i32 = u_xlati11;
        let x_3721 : i32 = u_xlati11;
        let x_3725 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3718 + 2i) / 4i)][((x_3721 + 2i) % 4i)];
        let x_3727 : vec3<f32> = vs_TEXCOORD7;
        let x_3730 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3725.x, x_3725.y, x_3725.w) * vec3<f32>(x_3727.z, x_3727.z, x_3727.z)) + x_3730);
        let x_3732 : vec3<f32> = u_xlat37;
        let x_3733 : i32 = u_xlati11;
        let x_3736 : i32 = u_xlati11;
        let x_3740 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3733 + 3i) / 4i)][((x_3736 + 3i) % 4i)];
        u_xlat37 = (x_3732 + vec3<f32>(x_3740.x, x_3740.y, x_3740.w));
        let x_3743 : vec3<f32> = u_xlat37;
        let x_3745 : vec3<f32> = u_xlat37;
        let x_3747 : vec2<f32> = (vec2<f32>(x_3743.x, x_3743.y) / vec2<f32>(x_3745.z, x_3745.z));
        let x_3748 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3747.x, x_3747.y, x_3748.z);
        let x_3750 : vec3<f32> = u_xlat37;
        let x_3753 : vec2<f32> = ((vec2<f32>(x_3750.x, x_3750.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3754 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3753.x, x_3753.y, x_3754.z);
        let x_3756 : vec3<f32> = u_xlat37;
        let x_3760 : vec2<f32> = clamp(vec2<f32>(x_3756.x, x_3756.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3761 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3760.x, x_3760.y, x_3761.z);
        let x_3763 : i32 = u_xlati83;
        let x_3765 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3763];
        let x_3767 : vec3<f32> = u_xlat37;
        let x_3770 : i32 = u_xlati83;
        let x_3772 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3770];
        let x_3774 : vec2<f32> = ((vec2<f32>(x_3765.x, x_3765.y) * vec2<f32>(x_3767.x, x_3767.y)) + vec2<f32>(x_3772.z, x_3772.w));
        let x_3775 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3774.x, x_3774.y, x_3775.z);
      } else {
        let x_3778 : i32 = u_xlati87;
        u_xlatb87 = (x_3778 == 1i);
        let x_3780 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3780);
        let x_3782 : i32 = u_xlati87;
        if ((x_3782 != 0i)) {
          let x_3786 : vec3<f32> = vs_TEXCOORD7;
          let x_3788 : i32 = u_xlati11;
          let x_3791 : i32 = u_xlati11;
          let x_3795 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3788 + 1i) / 4i)][((x_3791 + 1i) % 4i)];
          let x_3797 : vec2<f32> = (vec2<f32>(x_3786.y, x_3786.y) * vec2<f32>(x_3795.x, x_3795.y));
          let x_3798 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3797.x, x_3797.y, x_3798.z, x_3798.w);
          let x_3800 : i32 = u_xlati11;
          let x_3802 : i32 = u_xlati11;
          let x_3805 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3800 / 4i)][(x_3802 % 4i)];
          let x_3807 : vec3<f32> = vs_TEXCOORD7;
          let x_3810 : vec4<f32> = u_xlat12;
          let x_3812 : vec2<f32> = ((vec2<f32>(x_3805.x, x_3805.y) * vec2<f32>(x_3807.x, x_3807.x)) + vec2<f32>(x_3810.x, x_3810.y));
          let x_3813 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3812.x, x_3812.y, x_3813.z, x_3813.w);
          let x_3815 : i32 = u_xlati11;
          let x_3818 : i32 = u_xlati11;
          let x_3822 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3815 + 2i) / 4i)][((x_3818 + 2i) % 4i)];
          let x_3824 : vec3<f32> = vs_TEXCOORD7;
          let x_3827 : vec4<f32> = u_xlat12;
          let x_3829 : vec2<f32> = ((vec2<f32>(x_3822.x, x_3822.y) * vec2<f32>(x_3824.z, x_3824.z)) + vec2<f32>(x_3827.x, x_3827.y));
          let x_3830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3829.x, x_3829.y, x_3830.z, x_3830.w);
          let x_3832 : vec4<f32> = u_xlat12;
          let x_3834 : i32 = u_xlati11;
          let x_3837 : i32 = u_xlati11;
          let x_3841 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3834 + 3i) / 4i)][((x_3837 + 3i) % 4i)];
          let x_3843 : vec2<f32> = (vec2<f32>(x_3832.x, x_3832.y) + vec2<f32>(x_3841.x, x_3841.y));
          let x_3844 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3843.x, x_3843.y, x_3844.z, x_3844.w);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3849 : vec2<f32> = ((vec2<f32>(x_3846.x, x_3846.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3850 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3849.x, x_3849.y, x_3850.z, x_3850.w);
          let x_3852 : vec4<f32> = u_xlat12;
          let x_3854 : vec2<f32> = fract(vec2<f32>(x_3852.x, x_3852.y));
          let x_3855 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3854.x, x_3854.y, x_3855.z, x_3855.w);
          let x_3857 : i32 = u_xlati83;
          let x_3859 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3857];
          let x_3861 : vec4<f32> = u_xlat12;
          let x_3864 : i32 = u_xlati83;
          let x_3866 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_3864];
          let x_3868 : vec2<f32> = ((vec2<f32>(x_3859.x, x_3859.y) * vec2<f32>(x_3861.x, x_3861.y)) + vec2<f32>(x_3866.z, x_3866.w));
          let x_3869 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3868.x, x_3868.y, x_3869.z);
        } else {
          let x_3872 : vec3<f32> = vs_TEXCOORD7;
          let x_3874 : i32 = u_xlati11;
          let x_3877 : i32 = u_xlati11;
          let x_3881 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3874 + 1i) / 4i)][((x_3877 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3872.y, x_3872.y, x_3872.y, x_3872.y) * x_3881);
          let x_3883 : i32 = u_xlati11;
          let x_3885 : i32 = u_xlati11;
          let x_3888 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[(x_3883 / 4i)][(x_3885 % 4i)];
          let x_3889 : vec3<f32> = vs_TEXCOORD7;
          let x_3892 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3888 * vec4<f32>(x_3889.x, x_3889.x, x_3889.x, x_3889.x)) + x_3892);
          let x_3894 : i32 = u_xlati11;
          let x_3897 : i32 = u_xlati11;
          let x_3901 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3894 + 2i) / 4i)][((x_3897 + 2i) % 4i)];
          let x_3902 : vec3<f32> = vs_TEXCOORD7;
          let x_3905 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3901 * vec4<f32>(x_3902.z, x_3902.z, x_3902.z, x_3902.z)) + x_3905);
          let x_3907 : vec4<f32> = u_xlat12;
          let x_3908 : i32 = u_xlati11;
          let x_3911 : i32 = u_xlati11;
          let x_3915 : vec4<f32> = x_1805.x_AdditionalLightsWorldToLights[((x_3908 + 3i) / 4i)][((x_3911 + 3i) % 4i)];
          u_xlat12 = (x_3907 + x_3915);
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3919 : vec4<f32> = u_xlat12;
          let x_3921 : vec3<f32> = (vec3<f32>(x_3917.x, x_3917.y, x_3917.z) / vec3<f32>(x_3919.w, x_3919.w, x_3919.w));
          let x_3922 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3921.x, x_3921.y, x_3921.z, x_3922.w);
          let x_3924 : vec4<f32> = u_xlat12;
          let x_3926 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3924.x, x_3924.y, x_3924.z), vec3<f32>(x_3926.x, x_3926.y, x_3926.z));
          let x_3929 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3929);
          let x_3931 : f32 = u_xlat87;
          let x_3933 : vec4<f32> = u_xlat12;
          let x_3935 : vec3<f32> = (vec3<f32>(x_3931, x_3931, x_3931) * vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
          let x_3936 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
          let x_3938 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3938.x, x_3938.y, x_3938.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3943 : f32 = u_xlat87;
          u_xlat87 = max(x_3943, 0.00000099999999747524f);
          let x_3946 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3946);
          let x_3948 : f32 = u_xlat87;
          let x_3950 : vec4<f32> = u_xlat12;
          let x_3952 : vec3<f32> = (vec3<f32>(x_3948, x_3948, x_3948) * vec3<f32>(x_3950.z, x_3950.x, x_3950.y));
          let x_3953 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3952.x, x_3952.y, x_3952.z, x_3953.w);
          let x_3956 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3956);
          let x_3960 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3960, 0.0f, 1.0f);
          let x_3963 : vec4<f32> = u_xlat13;
          let x_3965 : vec4<bool> = (vec4<f32>(x_3963.y, x_3963.y, x_3963.y, x_3963.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3966 : vec2<bool> = vec2<bool>(x_3965.x, x_3965.w);
          let x_3967 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3966.x, x_3967.y, x_3967.z, x_3966.y);
          let x_3970 : bool = u_xlatb11.x;
          if (x_3970) {
            let x_3975 : f32 = u_xlat13.x;
            x_3971 = x_3975;
          } else {
            let x_3978 : f32 = u_xlat13.x;
            x_3971 = -(x_3978);
          }
          let x_3980 : f32 = x_3971;
          u_xlat11.x = x_3980;
          let x_3983 : bool = u_xlatb11.w;
          if (x_3983) {
            let x_3988 : f32 = u_xlat13.x;
            x_3984 = x_3988;
          } else {
            let x_3991 : f32 = u_xlat13.x;
            x_3984 = -(x_3991);
          }
          let x_3993 : f32 = x_3984;
          u_xlat11.w = x_3993;
          let x_3995 : vec4<f32> = u_xlat12;
          let x_3997 : f32 = u_xlat87;
          let x_4000 : vec4<f32> = u_xlat11;
          let x_4002 : vec2<f32> = ((vec2<f32>(x_3995.x, x_3995.y) * vec2<f32>(x_3997, x_3997)) + vec2<f32>(x_4000.x, x_4000.w));
          let x_4003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4002.x, x_4003.y, x_4003.z, x_4002.y);
          let x_4005 : vec4<f32> = u_xlat11;
          let x_4008 : vec2<f32> = ((vec2<f32>(x_4005.x, x_4005.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4009 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4008.x, x_4009.y, x_4009.z, x_4008.y);
          let x_4011 : vec4<f32> = u_xlat11;
          let x_4015 : vec2<f32> = clamp(vec2<f32>(x_4011.x, x_4011.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4016 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4015.x, x_4016.y, x_4016.z, x_4015.y);
          let x_4018 : i32 = u_xlati83;
          let x_4020 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4018];
          let x_4022 : vec4<f32> = u_xlat11;
          let x_4025 : i32 = u_xlati83;
          let x_4027 : vec4<f32> = x_1805.x_AdditionalLightsCookieAtlasUVRects[x_4025];
          let x_4029 : vec2<f32> = ((vec2<f32>(x_4020.x, x_4020.y) * vec2<f32>(x_4022.x, x_4022.w)) + vec2<f32>(x_4027.z, x_4027.w));
          let x_4030 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4029.x, x_4029.y, x_4030.z);
        }
      }
      let x_4037 : vec3<f32> = u_xlat37;
      let x_4039 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4037.x, x_4037.y), 0.0f);
      u_xlat11 = x_4039;
      let x_4041 : bool = u_xlatb7.y;
      if (x_4041) {
        let x_4046 : f32 = u_xlat11.w;
        x_4042 = x_4046;
      } else {
        let x_4049 : f32 = u_xlat11.x;
        x_4042 = x_4049;
      }
      let x_4050 : f32 = x_4042;
      u_xlat87 = x_4050;
      let x_4052 : bool = u_xlatb7.x;
      if (x_4052) {
        let x_4056 : vec4<f32> = u_xlat11;
        x_4053 = vec3<f32>(x_4056.x, x_4056.y, x_4056.z);
      } else {
        let x_4059 : f32 = u_xlat87;
        x_4053 = vec3<f32>(x_4059, x_4059, x_4059);
      }
      let x_4061 : vec3<f32> = x_4053;
      let x_4062 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4061.x, x_4061.y, x_4061.z, x_4062.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4068 : vec4<f32> = u_xlat11;
    let x_4070 : i32 = u_xlati83;
    let x_4072 : vec4<f32> = x_2240.x_AdditionalLightsColor[x_4070];
    let x_4074 : vec3<f32> = (vec3<f32>(x_4068.x, x_4068.y, x_4068.z) * vec3<f32>(x_4072.x, x_4072.y, x_4072.z));
    let x_4075 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4074.x, x_4074.y, x_4074.z, x_4075.w);
    let x_4077 : f32 = u_xlat84;
    let x_4078 : f32 = u_xlat85;
    u_xlat83 = (x_4077 * x_4078);
    let x_4080 : vec3<f32> = u_xlat27;
    let x_4081 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4080, vec3<f32>(x_4081.x, x_4081.y, x_4081.z));
    let x_4084 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4084, 0.0f, 1.0f);
    let x_4086 : f32 = u_xlat83;
    let x_4087 : f32 = u_xlat84;
    u_xlat83 = (x_4086 * x_4087);
    let x_4089 : f32 = u_xlat83;
    let x_4091 : vec4<f32> = u_xlat11;
    let x_4093 : vec3<f32> = (vec3<f32>(x_4089, x_4089, x_4089) * vec3<f32>(x_4091.x, x_4091.y, x_4091.z));
    let x_4094 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4093.x, x_4093.y, x_4093.z, x_4094.w);
    let x_4096 : vec4<f32> = u_xlat9;
    let x_4098 : f32 = u_xlat59;
    let x_4101 : vec3<f32> = u_xlat3;
    let x_4102 : vec3<f32> = ((vec3<f32>(x_4096.x, x_4096.y, x_4096.z) * vec3<f32>(x_4098, x_4098, x_4098)) + x_4101);
    let x_4103 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
    let x_4105 : vec4<f32> = u_xlat9;
    let x_4107 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4105.x, x_4105.y, x_4105.z), vec3<f32>(x_4107.x, x_4107.y, x_4107.z));
    let x_4110 : f32 = u_xlat83;
    u_xlat83 = max(x_4110, 1.17549435e-38f);
    let x_4112 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4112);
    let x_4114 : f32 = u_xlat83;
    let x_4116 : vec4<f32> = u_xlat9;
    let x_4118 : vec3<f32> = (vec3<f32>(x_4114, x_4114, x_4114) * vec3<f32>(x_4116.x, x_4116.y, x_4116.z));
    let x_4119 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
    let x_4121 : vec3<f32> = u_xlat27;
    let x_4122 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4121, vec3<f32>(x_4122.x, x_4122.y, x_4122.z));
    let x_4125 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4125, 0.0f, 1.0f);
    let x_4127 : vec4<f32> = u_xlat10;
    let x_4129 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4127.x, x_4127.y, x_4127.z), vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
    let x_4132 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4132, 0.0f, 1.0f);
    let x_4134 : f32 = u_xlat83;
    let x_4135 : f32 = u_xlat83;
    u_xlat83 = (x_4134 * x_4135);
    let x_4137 : f32 = u_xlat83;
    let x_4139 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4137 * x_4139) + 1.00001001358032226562f);
    let x_4142 : f32 = u_xlat84;
    let x_4143 : f32 = u_xlat84;
    u_xlat84 = (x_4142 * x_4143);
    let x_4145 : f32 = u_xlat83;
    let x_4146 : f32 = u_xlat83;
    u_xlat83 = (x_4145 * x_4146);
    let x_4148 : f32 = u_xlat84;
    u_xlat84 = max(x_4148, 0.10000000149011611938f);
    let x_4150 : f32 = u_xlat83;
    let x_4151 : f32 = u_xlat84;
    u_xlat83 = (x_4150 * x_4151);
    let x_4153 : f32 = u_xlat81;
    let x_4154 : f32 = u_xlat83;
    u_xlat83 = (x_4153 * x_4154);
    let x_4156 : f32 = u_xlat82;
    let x_4157 : f32 = u_xlat83;
    u_xlat83 = (x_4156 / x_4157);
    let x_4159 : vec4<f32> = u_xlat0;
    let x_4161 : f32 = u_xlat83;
    let x_4164 : vec3<f32> = u_xlat5;
    let x_4165 : vec3<f32> = ((vec3<f32>(x_4159.x, x_4159.y, x_4159.z) * vec3<f32>(x_4161, x_4161, x_4161)) + x_4164);
    let x_4166 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4165.x, x_4165.y, x_4165.z, x_4166.w);
    let x_4168 : vec4<f32> = u_xlat9;
    let x_4170 : vec4<f32> = u_xlat11;
    let x_4173 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4168.x, x_4168.y, x_4168.z) * vec3<f32>(x_4170.x, x_4170.y, x_4170.z)) + x_4173);

    continuing {
      let x_4175 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4175 + bitcast<u32>(1i));
    }
  }
  let x_4177 : vec4<f32> = u_xlat6;
  let x_4179 : vec4<f32> = u_xlat2;
  let x_4182 : vec4<f32> = u_xlat4;
  let x_4184 : vec3<f32> = ((vec3<f32>(x_4177.x, x_4177.y, x_4177.z) * vec3<f32>(x_4179.x, x_4179.z, x_4179.w)) + vec3<f32>(x_4182.x, x_4182.y, x_4182.z));
  let x_4185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4184.x, x_4184.y, x_4184.z, x_4185.w);
  let x_4189 : vec3<f32> = u_xlat34;
  let x_4190 : vec4<f32> = u_xlat0;
  let x_4192 : vec3<f32> = (x_4189 + vec3<f32>(x_4190.x, x_4190.y, x_4190.z));
  let x_4193 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4192.x, x_4192.y, x_4192.z, x_4193.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


