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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_177 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu27 : u32;

var<private> u_xlati27 : i32;

@group(1) @binding(2) var<uniform> x_353 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_1829 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2287 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
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
  var x_1783 : f32;
  var x_1912 : f32;
  var x_1923 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2424 : f32;
  var x_2434 : f32;
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
  var x_4018 : f32;
  var x_4031 : f32;
  var x_4089 : f32;
  var x_4100 : vec3<f32>;
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
  u_xlat1.x = x_77.x;
  let x_84 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_84 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_95 : vec3<f32> = (-(x_89) + x_94);
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_104);
  let x_106 : f32 = u_xlat53;
  let x_108 : vec4<f32> = u_xlat2;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_115 : bool = u_xlatb27;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb27;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb27;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat27;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_169 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_185 : vec3<f32> = vs_TEXCOORD7;
  let x_187 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_192 : vec3<f32> = vs_TEXCOORD7;
  let x_195 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (x_192 + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec3<f32> = vs_TEXCOORD7;
  let x_204 : vec4<f32> = x_177.x_CascadeShadowSplitSpheres3;
  let x_207 : vec3<f32> = (x_202 + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = u_xlat27;
  let x_212 : vec3<f32> = u_xlat27;
  u_xlat7.x = dot(x_211, x_212);
  let x_215 : vec3<f32> = u_xlat4;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_215, x_216);
  let x_219 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat7;
  let x_236 : vec4<f32> = x_177.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_234 < x_236);
  let x_239 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb4.x;
  u_xlat27.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb4.y;
  u_xlat27.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb4.z;
  u_xlat27.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec3<f32> = u_xlat27;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat27 = (x_269 + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec3<f32> = u_xlat27;
  let x_275 : vec3<f32> = max(x_273, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat27.x = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_286 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_286) + 4.0f);
  let x_293 : f32 = u_xlat27.x;
  u_xlatu27 = u32(x_293);
  let x_297 : u32 = u_xlatu27;
  u_xlati27 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : i32 = u_xlati27;
  let x_305 : i32 = u_xlati27;
  let x_309 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : i32 = u_xlati27;
  let x_314 : i32 = u_xlati27;
  let x_317 : vec4<f32> = x_177.x_MainLightWorldToShadow[(x_312 / 4i)][(x_314 % 4i)];
  let x_319 : vec3<f32> = vs_TEXCOORD7;
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.x, x_319.x, x_319.x)) + x_322);
  let x_324 : i32 = u_xlati27;
  let x_327 : i32 = u_xlati27;
  let x_331 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_324 + 2i) / 4i)][((x_327 + 2i) % 4i)];
  let x_333 : vec3<f32> = vs_TEXCOORD7;
  let x_336 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.z, x_333.z, x_333.z)) + x_336);
  let x_338 : vec3<f32> = u_xlat4;
  let x_339 : i32 = u_xlati27;
  let x_342 : i32 = u_xlati27;
  let x_346 : vec4<f32> = x_177.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  u_xlat27 = (x_338 + vec3<f32>(x_346.x, x_346.y, x_346.z));
  u_xlat2.w = 1.0f;
  let x_356 : vec4<f32> = x_353.unity_SHAr;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_353.unity_SHAg;
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_362, x_363);
  let x_368 : vec4<f32> = x_353.unity_SHAb;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_368, x_369);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_372.y, x_372.z, x_372.z, x_372.x) * vec4<f32>(x_374.x, x_374.y, x_374.z, x_374.z));
  let x_379 : vec4<f32> = x_353.unity_SHBr;
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_353.unity_SHBg;
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_353.unity_SHBb;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_391, x_392);
  let x_397 : f32 = u_xlat2.y;
  let x_399 : f32 = u_xlat2.y;
  u_xlat80 = (x_397 * x_399);
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat2.x;
  let x_406 : f32 = u_xlat80;
  u_xlat80 = ((x_402 * x_404) + -(x_406));
  let x_411 : vec4<f32> = x_353.unity_SHC;
  let x_413 : f32 = u_xlat80;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat4;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_421 + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_425, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_428 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_428) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_434 : f32 = u_xlat80;
  u_xlat81 = (-(x_434) + 1.0f);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : f32 = u_xlat80;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_439, x_439, x_439));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.x, x_453.y, x_453.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_462) + 1.0f);
  let x_467 : f32 = u_xlat1.x;
  let x_469 : f32 = u_xlat1.x;
  u_xlat80 = (x_467 * x_469);
  let x_471 : f32 = u_xlat80;
  u_xlat80 = max(x_471, 0.0078125f);
  let x_475 : f32 = u_xlat80;
  let x_476 : f32 = u_xlat80;
  u_xlat82 = (x_475 * x_476);
  let x_480 : f32 = u_xlat0.w;
  let x_481 : f32 = u_xlat81;
  u_xlat78 = (x_480 + x_481);
  let x_483 : f32 = u_xlat78;
  u_xlat78 = clamp(x_483, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat80;
  u_xlat81 = ((x_485 * 4.0f) + 2.0f);
  let x_491 : f32 = x_177.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_491);
  let x_493 : bool = u_xlatb83;
  if (x_493) {
    let x_497 : f32 = x_177.x_MainLightShadowParams.y;
    u_xlatb83 = (x_497 == 1.0f);
    let x_499 : bool = u_xlatb83;
    if (x_499) {
      let x_502 : vec3<f32> = u_xlat27;
      let x_505 : vec4<f32> = x_177.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_502.x, x_502.y, x_502.x, x_502.y) + x_505);
      let x_509 : vec4<f32> = u_xlat6;
      let x_510 : vec2<f32> = vec2<f32>(x_509.x, x_509.y);
      let x_512 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_510.x, x_510.y, x_512);
      let x_524 : vec3<f32> = txVec0;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_524.xy, x_524.z);
      u_xlat7.x = x_526;
      let x_529 : vec4<f32> = u_xlat6;
      let x_530 : vec2<f32> = vec2<f32>(x_529.z, x_529.w);
      let x_532 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_530.x, x_530.y, x_532);
      let x_539 : vec3<f32> = txVec1;
      let x_541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_539.xy, x_539.z);
      u_xlat7.y = x_541;
      let x_543 : vec3<f32> = u_xlat27;
      let x_547 : vec4<f32> = x_177.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_543.x, x_543.y, x_543.x, x_543.y) + x_547);
      let x_550 : vec4<f32> = u_xlat6;
      let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
      let x_553 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_551.x, x_551.y, x_553);
      let x_560 : vec3<f32> = txVec2;
      let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
      u_xlat7.z = x_562;
      let x_565 : vec4<f32> = u_xlat6;
      let x_566 : vec2<f32> = vec2<f32>(x_565.z, x_565.w);
      let x_568 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec3;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat7.w = x_577;
      let x_580 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_580, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_587 : f32 = x_177.x_MainLightShadowParams.y;
      u_xlatb6 = (x_587 == 2.0f);
      let x_589 : bool = u_xlatb6;
      if (x_589) {
        let x_592 : vec3<f32> = u_xlat27;
        let x_596 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_601 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_596.z, x_596.w)) + vec2<f32>(0.5f, 0.5f));
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat6;
        let x_606 : vec2<f32> = floor(vec2<f32>(x_604.x, x_604.y));
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_611 : vec3<f32> = u_xlat27;
        let x_614 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_614.z, x_614.w)) + -(vec2<f32>(x_617.x, x_617.y)));
        let x_621 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_621.x, x_621.x, x_621.y, x_621.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_626.x, x_626.x, x_626.z, x_626.z) * vec4<f32>(x_628.x, x_628.x, x_628.z, x_628.z));
        let x_631 : vec4<f32> = u_xlat8;
        let x_635 : vec2<f32> = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_636 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_635.x, x_636.y, x_635.y, x_636.w);
        let x_638 : vec4<f32> = u_xlat8;
        let x_641 : vec2<f32> = u_xlat58;
        let x_643 : vec2<f32> = ((vec2<f32>(x_638.x, x_638.z) * vec2<f32>(0.5f, 0.5f)) + -(x_641));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_647 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_647) + vec2<f32>(1.0f, 1.0f));
        let x_652 : vec2<f32> = u_xlat58;
        let x_654 : vec2<f32> = min(x_652, vec2<f32>(0.0f, 0.0f));
        let x_655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat9;
        let x_660 : vec4<f32> = u_xlat9;
        let x_663 : vec2<f32> = u_xlat60;
        let x_664 : vec2<f32> = ((-(vec2<f32>(x_657.x, x_657.y)) * vec2<f32>(x_660.x, x_660.y)) + x_663);
        let x_665 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_667, vec2<f32>(0.0f, 0.0f));
        let x_669 : vec2<f32> = u_xlat58;
        let x_671 : vec2<f32> = u_xlat58;
        let x_673 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_669) * x_671) + vec2<f32>(x_673.y, x_673.w));
        let x_676 : vec4<f32> = u_xlat9;
        let x_678 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) + vec2<f32>(1.0f, 1.0f));
        let x_679 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_681 + vec2<f32>(1.0f, 1.0f));
        let x_684 : vec4<f32> = u_xlat8;
        let x_688 : vec2<f32> = (vec2<f32>(x_684.x, x_684.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec2<f32> = u_xlat60;
        let x_692 : vec2<f32> = (x_691 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat9;
        let x_697 : vec2<f32> = (vec2<f32>(x_695.x, x_695.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_701 : vec2<f32> = u_xlat58;
        let x_702 : vec2<f32> = (x_701 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_705.y, x_705.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_709 : f32 = u_xlat9.x;
        u_xlat10.z = x_709;
        let x_712 : f32 = u_xlat58.x;
        u_xlat10.w = x_712;
        let x_715 : f32 = u_xlat11.x;
        u_xlat8.z = x_715;
        let x_718 : f32 = u_xlat7.x;
        u_xlat8.w = x_718;
        let x_721 : vec4<f32> = u_xlat8;
        let x_723 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_721.z, x_721.w, x_721.x, x_721.z) + vec4<f32>(x_723.z, x_723.w, x_723.x, x_723.z));
        let x_727 : f32 = u_xlat10.y;
        u_xlat9.z = x_727;
        let x_730 : f32 = u_xlat58.y;
        u_xlat9.w = x_730;
        let x_733 : f32 = u_xlat8.y;
        u_xlat11.z = x_733;
        let x_736 : f32 = u_xlat7.z;
        u_xlat11.w = x_736;
        let x_738 : vec4<f32> = u_xlat9;
        let x_740 : vec4<f32> = u_xlat11;
        let x_742 : vec3<f32> = (vec3<f32>(x_738.z, x_738.y, x_738.w) + vec3<f32>(x_740.z, x_740.y, x_740.w));
        let x_743 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec4<f32> = u_xlat12;
        let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.z, x_745.w) / vec3<f32>(x_747.z, x_747.w, x_747.y));
        let x_750 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat8;
        let x_758 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat11;
        let x_763 : vec4<f32> = u_xlat7;
        let x_765 : vec3<f32> = (vec3<f32>(x_761.z, x_761.y, x_761.w) / vec3<f32>(x_763.x, x_763.y, x_763.z));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat9;
        let x_770 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_771 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat8;
        let x_776 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_778 : vec3<f32> = (vec3<f32>(x_773.y, x_773.x, x_773.z) * vec3<f32>(x_776.x, x_776.x, x_776.x));
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat9;
        let x_784 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_786 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_784.y, x_784.y, x_784.y));
        let x_787 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_790 : f32 = u_xlat9.x;
        u_xlat8.w = x_790;
        let x_792 : vec4<f32> = u_xlat6;
        let x_795 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.y, x_798.w, x_798.x, x_798.w));
        let x_801 : vec4<f32> = u_xlat6;
        let x_804 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804.x, x_804.y)) + vec2<f32>(x_807.z, x_807.w));
        let x_811 : f32 = u_xlat8.y;
        u_xlat9.w = x_811;
        let x_813 : vec4<f32> = u_xlat9;
        let x_814 : vec2<f32> = vec2<f32>(x_813.y, x_813.z);
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_815.x, x_814.x, x_815.z, x_814.y);
        let x_817 : vec4<f32> = u_xlat6;
        let x_820 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.y, x_823.z, x_823.y));
        let x_826 : vec4<f32> = u_xlat6;
        let x_829 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.w, x_832.y, x_832.w, x_832.z));
        let x_835 : vec4<f32> = u_xlat6;
        let x_838 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.x, x_841.w, x_841.z, x_841.w));
        let x_845 : vec4<f32> = u_xlat7;
        let x_847 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_845.x, x_845.x, x_845.x, x_845.y) * vec4<f32>(x_847.z, x_847.w, x_847.y, x_847.z));
        let x_851 : vec4<f32> = u_xlat7;
        let x_853 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_851.y, x_851.y, x_851.z, x_851.z) * x_853);
        let x_856 : f32 = u_xlat7.z;
        let x_858 : f32 = u_xlat12.y;
        u_xlat6.x = (x_856 * x_858);
        let x_862 : vec4<f32> = u_xlat10;
        let x_863 : vec2<f32> = vec2<f32>(x_862.x, x_862.y);
        let x_865 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_873 : vec3<f32> = txVec4;
        let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_873.xy, x_873.z);
        u_xlat32 = x_875;
        let x_877 : vec4<f32> = u_xlat10;
        let x_878 : vec2<f32> = vec2<f32>(x_877.z, x_877.w);
        let x_880 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec5;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_887.xy, x_887.z);
        u_xlat7.x = x_889;
        let x_892 : f32 = u_xlat7.x;
        let x_894 : f32 = u_xlat13.y;
        u_xlat7.x = (x_892 * x_894);
        let x_898 : f32 = u_xlat13.x;
        let x_899 : f32 = u_xlat32;
        let x_902 : f32 = u_xlat7.x;
        u_xlat32 = ((x_898 * x_899) + x_902);
        let x_905 : vec2<f32> = u_xlat58;
        let x_907 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec6;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat58.x = x_916;
        let x_919 : f32 = u_xlat13.z;
        let x_921 : f32 = u_xlat58.x;
        let x_923 : f32 = u_xlat32;
        u_xlat32 = ((x_919 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat9;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec7;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat58.x = x_938;
        let x_941 : f32 = u_xlat13.w;
        let x_943 : f32 = u_xlat58.x;
        let x_945 : f32 = u_xlat32;
        u_xlat32 = ((x_941 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat11;
        let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.y);
        let x_951 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec8;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
        u_xlat58.x = x_960;
        let x_963 : f32 = u_xlat14.x;
        let x_965 : f32 = u_xlat58.x;
        let x_967 : f32 = u_xlat32;
        u_xlat32 = ((x_963 * x_965) + x_967);
        let x_970 : vec4<f32> = u_xlat11;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec9;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat58.x = x_982;
        let x_985 : f32 = u_xlat14.y;
        let x_987 : f32 = u_xlat58.x;
        let x_989 : f32 = u_xlat32;
        u_xlat32 = ((x_985 * x_987) + x_989);
        let x_992 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = vec2<f32>(x_992.z, x_992.w);
        let x_995 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec10;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat58.x = x_1004;
        let x_1007 : f32 = u_xlat14.z;
        let x_1009 : f32 = u_xlat58.x;
        let x_1011 : f32 = u_xlat32;
        u_xlat32 = ((x_1007 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec11;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat58.x = x_1026;
        let x_1029 : f32 = u_xlat14.w;
        let x_1031 : f32 = u_xlat58.x;
        let x_1033 : f32 = u_xlat32;
        u_xlat32 = ((x_1029 * x_1031) + x_1033);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1037 : vec2<f32> = vec2<f32>(x_1036.z, x_1036.w);
        let x_1039 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
        let x_1046 : vec3<f32> = txVec12;
        let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1046.xy, x_1046.z);
        u_xlat58.x = x_1048;
        let x_1051 : f32 = u_xlat6.x;
        let x_1053 : f32 = u_xlat58.x;
        let x_1055 : f32 = u_xlat32;
        u_xlat83 = ((x_1051 * x_1053) + x_1055);
      } else {
        let x_1058 : vec3<f32> = u_xlat27;
        let x_1061 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.z, x_1061.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat6;
        let x_1069 : vec2<f32> = floor(vec2<f32>(x_1067.x, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec3<f32> = u_xlat27;
        let x_1075 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.z, x_1075.w)) + -(vec2<f32>(x_1078.x, x_1078.y)));
        let x_1082 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1082.x, x_1082.x, x_1082.y, x_1082.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.z, x_1085.z) * vec4<f32>(x_1087.x, x_1087.x, x_1087.z, x_1087.z));
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1090.y, x_1090.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1094.x, x_1095.z, x_1094.y);
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1100 : vec2<f32> = u_xlat58;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1100));
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1103.w);
        let x_1105 : vec2<f32> = u_xlat58;
        let x_1107 : vec2<f32> = (-(x_1105) + vec2<f32>(1.0f, 1.0f));
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1110, vec2<f32>(0.0f, 0.0f));
        let x_1112 : vec2<f32> = u_xlat60;
        let x_1114 : vec2<f32> = u_xlat60;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1118 : vec2<f32> = ((-(x_1112) * x_1114) + vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1121, vec2<f32>(0.0f, 0.0f));
        let x_1124 : vec2<f32> = u_xlat60;
        let x_1126 : vec2<f32> = u_xlat60;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = ((-(x_1124) * x_1126) + vec2<f32>(x_1128.y, x_1128.w));
        let x_1131 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1130.x, x_1131.y, x_1130.y);
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) + vec2<f32>(2.0f, 2.0f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec3<f32> = u_xlat33;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.z) + vec2<f32>(2.0f, 2.0f));
        let x_1142 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1145 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1145 * 0.08163200318813323975f);
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1149.z, x_1149.x, x_1149.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1153 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : f32 = u_xlat11.y;
        u_xlat10.x = x_1162;
        let x_1164 : vec2<f32> = u_xlat58;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec2<f32> = u_xlat58;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1182 : f32 = u_xlat7.x;
        u_xlat8.y = x_1182;
        let x_1185 : f32 = u_xlat9.y;
        u_xlat8.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1187 + x_1188);
        let x_1190 : vec2<f32> = u_xlat58;
        let x_1193 : vec2<f32> = ((vec2<f32>(x_1190.y, x_1190.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1194.x, x_1193.x, x_1194.z, x_1193.y);
        let x_1196 : vec2<f32> = u_xlat58;
        let x_1199 : vec2<f32> = ((vec2<f32>(x_1196.y, x_1196.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1200.w);
        let x_1203 : f32 = u_xlat7.y;
        u_xlat9.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1205 + x_1206);
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1208 / x_1209);
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1211 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1217 : vec4<f32> = u_xlat9;
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1217 / x_1218);
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1220 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1225 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1222.w, x_1222.x, x_1222.y, x_1222.z) * vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1231 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1228.x, x_1228.w, x_1228.y, x_1228.z) * vec4<f32>(x_1231.y, x_1231.y, x_1231.y, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = vec3<f32>(x_1234.y, x_1234.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1235.z);
        let x_1239 : f32 = u_xlat9.x;
        u_xlat11.y = x_1239;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat11.y;
        u_xlat8.y = x_1260;
        let x_1263 : f32 = u_xlat9.z;
        u_xlat11.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat11.y;
        u_xlat8.z = x_1286;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.z));
        let x_1299 : f32 = u_xlat9.w;
        u_xlat11.y = x_1299;
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1321 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1320.x, x_1320.y, x_1321.z);
        let x_1324 : f32 = u_xlat11.y;
        u_xlat8.w = x_1324;
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1330 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.x, x_1333.w));
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1337 : vec3<f32> = vec3<f32>(x_1336.x, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : vec4<f32> = u_xlat6;
        let x_1343 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.y));
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.w, x_1356.y));
        let x_1360 : f32 = u_xlat8.x;
        u_xlat9.x = x_1360;
        let x_1362 : vec4<f32> = u_xlat6;
        let x_1365 : vec4<f32> = x_177.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat9;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.x, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        let x_1374 : vec4<f32> = u_xlat7;
        let x_1376 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.x) * x_1376);
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1379.y, x_1379.y, x_1379.y, x_1379.y) * x_1381);
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1384.z, x_1384.z, x_1384.z, x_1384.z) * x_1386);
        let x_1388 : vec4<f32> = u_xlat7;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1388.w, x_1388.w, x_1388.w, x_1388.w) * x_1390);
        let x_1393 : vec4<f32> = u_xlat12;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec13;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat8.x = x_1405;
        let x_1408 : vec4<f32> = u_xlat12;
        let x_1409 : vec2<f32> = vec2<f32>(x_1408.z, x_1408.w);
        let x_1411 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1409.x, x_1409.y, x_1411);
        let x_1419 : vec3<f32> = txVec14;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat86 = x_1421;
        let x_1422 : f32 = u_xlat86;
        let x_1424 : f32 = u_xlat17.y;
        u_xlat86 = (x_1422 * x_1424);
        let x_1427 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat8.x;
        let x_1431 : f32 = u_xlat86;
        u_xlat8.x = ((x_1427 * x_1429) + x_1431);
        let x_1435 : vec2<f32> = u_xlat58;
        let x_1437 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec15;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat58.x = x_1446;
        let x_1449 : f32 = u_xlat17.z;
        let x_1451 : f32 = u_xlat58.x;
        let x_1454 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1449 * x_1451) + x_1454);
        let x_1458 : vec4<f32> = u_xlat15;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1469 : vec3<f32> = txVec16;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat84 = x_1471;
        let x_1473 : f32 = u_xlat17.w;
        let x_1474 : f32 = u_xlat84;
        let x_1477 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1473 * x_1474) + x_1477);
        let x_1481 : vec4<f32> = u_xlat13;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec17;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat84 = x_1493;
        let x_1495 : f32 = u_xlat18.x;
        let x_1496 : f32 = u_xlat84;
        let x_1499 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1495 * x_1496) + x_1499);
        let x_1503 : vec4<f32> = u_xlat13;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec18;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat84 = x_1515;
        let x_1517 : f32 = u_xlat18.y;
        let x_1518 : f32 = u_xlat84;
        let x_1521 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1517 * x_1518) + x_1521);
        let x_1525 : vec4<f32> = u_xlat14;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec19;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat84 = x_1537;
        let x_1539 : f32 = u_xlat18.z;
        let x_1540 : f32 = u_xlat84;
        let x_1543 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1539 * x_1540) + x_1543);
        let x_1547 : vec4<f32> = u_xlat15;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.z, x_1547.w);
        let x_1550 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec20;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat84 = x_1559;
        let x_1561 : f32 = u_xlat18.w;
        let x_1562 : f32 = u_xlat84;
        let x_1565 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1561 * x_1562) + x_1565);
        let x_1569 : vec4<f32> = u_xlat16;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
        let x_1572 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec21;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat84 = x_1581;
        let x_1583 : f32 = u_xlat19.x;
        let x_1584 : f32 = u_xlat84;
        let x_1587 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1583 * x_1584) + x_1587);
        let x_1591 : vec4<f32> = u_xlat16;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.z, x_1591.w);
        let x_1594 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec22;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat84 = x_1603;
        let x_1605 : f32 = u_xlat19.y;
        let x_1606 : f32 = u_xlat84;
        let x_1609 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1605 * x_1606) + x_1609);
        let x_1613 : vec3<f32> = u_xlat34;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec23;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat84 = x_1625;
        let x_1627 : f32 = u_xlat19.z;
        let x_1628 : f32 = u_xlat84;
        let x_1631 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1627 * x_1628) + x_1631);
        let x_1635 : vec2<f32> = u_xlat66;
        let x_1637 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec24;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat84 = x_1646;
        let x_1648 : f32 = u_xlat19.w;
        let x_1649 : f32 = u_xlat84;
        let x_1652 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1648 * x_1649) + x_1652);
        let x_1656 : vec4<f32> = u_xlat11;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec25;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat84 = x_1668;
        let x_1670 : f32 = u_xlat7.x;
        let x_1671 : f32 = u_xlat84;
        let x_1674 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1670 * x_1671) + x_1674);
        let x_1678 : vec4<f32> = u_xlat11;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.z, x_1678.w);
        let x_1681 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec26;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat84 = x_1690;
        let x_1692 : f32 = u_xlat7.y;
        let x_1693 : f32 = u_xlat84;
        let x_1696 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1692 * x_1693) + x_1696);
        let x_1700 : vec2<f32> = u_xlat61;
        let x_1702 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec27;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat84 = x_1711;
        let x_1713 : f32 = u_xlat7.z;
        let x_1714 : f32 = u_xlat84;
        let x_1717 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1713 * x_1714) + x_1717);
        let x_1721 : vec4<f32> = u_xlat6;
        let x_1722 : vec2<f32> = vec2<f32>(x_1721.x, x_1721.y);
        let x_1724 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec28;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat6.x = x_1733;
        let x_1736 : f32 = u_xlat7.w;
        let x_1738 : f32 = u_xlat6.x;
        let x_1741 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1736 * x_1738) + x_1741);
      }
    }
  } else {
    let x_1745 : vec3<f32> = u_xlat27;
    let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
    let x_1748 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
    let x_1755 : vec3<f32> = txVec29;
    let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1755.xy, x_1755.z);
    u_xlat83 = x_1757;
  }
  let x_1759 : f32 = x_177.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1759) + 1.0f);
  let x_1763 : f32 = u_xlat83;
  let x_1765 : f32 = x_177.x_MainLightShadowParams.x;
  let x_1768 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1763 * x_1765) + x_1768);
  let x_1773 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1773);
  let x_1777 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1777 >= 1.0f);
  let x_1779 : bool = u_xlatb79;
  let x_1780 : bool = u_xlatb53;
  u_xlatb53 = (x_1779 | x_1780);
  let x_1782 : bool = u_xlatb53;
  if (x_1782) {
    x_1783 = 1.0f;
  } else {
    let x_1788 : f32 = u_xlat27.x;
    x_1783 = x_1788;
  }
  let x_1789 : f32 = x_1783;
  u_xlat27.x = x_1789;
  let x_1791 : vec3<f32> = vs_TEXCOORD7;
  let x_1793 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1795 : vec3<f32> = (x_1791 + -(x_1793));
  let x_1796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat6;
  let x_1800 : vec4<f32> = u_xlat6;
  u_xlat53 = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1804 : f32 = u_xlat53;
  let x_1806 : f32 = x_177.x_MainLightShadowParams.z;
  let x_1809 : f32 = x_177.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1804 * x_1806) + x_1809);
  let x_1811 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1811, 0.0f, 1.0f);
  let x_1814 : f32 = u_xlat27.x;
  u_xlat83 = (-(x_1814) + 1.0f);
  let x_1817 : f32 = u_xlat79;
  let x_1818 : f32 = u_xlat83;
  let x_1821 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1817 * x_1818) + x_1821);
  let x_1831 : f32 = x_1829.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_1831 == -1.0f));
  let x_1833 : bool = u_xlatb79;
  if (x_1833) {
    let x_1836 : vec3<f32> = vs_TEXCOORD7;
    let x_1839 : vec4<f32> = x_1829.x_MainLightWorldToLight[1i];
    let x_1841 : vec2<f32> = (vec2<f32>(x_1836.y, x_1836.y) * vec2<f32>(x_1839.x, x_1839.y));
    let x_1842 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
    let x_1845 : vec4<f32> = x_1829.x_MainLightWorldToLight[0i];
    let x_1847 : vec3<f32> = vs_TEXCOORD7;
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1852 : vec2<f32> = ((vec2<f32>(x_1845.x, x_1845.y) * vec2<f32>(x_1847.x, x_1847.x)) + vec2<f32>(x_1850.x, x_1850.y));
    let x_1853 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1852.x, x_1852.y, x_1853.z, x_1853.w);
    let x_1856 : vec4<f32> = x_1829.x_MainLightWorldToLight[2i];
    let x_1858 : vec3<f32> = vs_TEXCOORD7;
    let x_1861 : vec4<f32> = u_xlat6;
    let x_1863 : vec2<f32> = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(x_1858.z, x_1858.z)) + vec2<f32>(x_1861.x, x_1861.y));
    let x_1864 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1863.x, x_1863.y, x_1864.z, x_1864.w);
    let x_1866 : vec4<f32> = u_xlat6;
    let x_1869 : vec4<f32> = x_1829.x_MainLightWorldToLight[3i];
    let x_1871 : vec2<f32> = (vec2<f32>(x_1866.x, x_1866.y) + vec2<f32>(x_1869.x, x_1869.y));
    let x_1872 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
    let x_1874 : vec4<f32> = u_xlat6;
    let x_1877 : vec2<f32> = ((vec2<f32>(x_1874.x, x_1874.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1878 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
    let x_1885 : vec4<f32> = u_xlat6;
    let x_1888 : f32 = x_29.x_GlobalMipBias.x;
    let x_1889 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1885.x, x_1885.y), x_1888);
    u_xlat6 = x_1889;
    let x_1894 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1896 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1898 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1900 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1901 : vec4<f32> = vec4<f32>(x_1894, x_1896, x_1898, x_1900);
    let x_1908 : vec4<bool> = (vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1901.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1908.x, x_1908.y);
    let x_1911 : bool = u_xlatb7.y;
    if (x_1911) {
      let x_1916 : f32 = u_xlat6.w;
      x_1912 = x_1916;
    } else {
      let x_1919 : f32 = u_xlat6.x;
      x_1912 = x_1919;
    }
    let x_1920 : f32 = x_1912;
    u_xlat79 = x_1920;
    let x_1922 : bool = u_xlatb7.x;
    if (x_1922) {
      let x_1926 : vec4<f32> = u_xlat6;
      x_1923 = vec3<f32>(x_1926.x, x_1926.y, x_1926.z);
    } else {
      let x_1929 : f32 = u_xlat79;
      x_1923 = vec3<f32>(x_1929, x_1929, x_1929);
    }
    let x_1931 : vec3<f32> = x_1923;
    let x_1932 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1938 : vec4<f32> = u_xlat6;
  let x_1941 : vec4<f32> = x_29.x_MainLightColor;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1938.x, x_1938.y, x_1938.z) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat3;
  let x_1948 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(-(x_1946), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : f32 = u_xlat79;
  let x_1952 : f32 = u_xlat79;
  u_xlat79 = (x_1951 + x_1952);
  let x_1954 : vec4<f32> = u_xlat2;
  let x_1956 : f32 = u_xlat79;
  let x_1960 : vec3<f32> = u_xlat3;
  let x_1962 : vec3<f32> = ((vec3<f32>(x_1954.x, x_1954.y, x_1954.z) * -(vec3<f32>(x_1956, x_1956, x_1956))) + -(x_1960));
  let x_1963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat2;
  let x_1967 : vec3<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), x_1967);
  let x_1969 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1969, 0.0f, 1.0f);
  let x_1971 : f32 = u_xlat79;
  u_xlat79 = (-(x_1971) + 1.0f);
  let x_1974 : f32 = u_xlat79;
  let x_1975 : f32 = u_xlat79;
  u_xlat79 = (x_1974 * x_1975);
  let x_1977 : f32 = u_xlat79;
  let x_1978 : f32 = u_xlat79;
  u_xlat79 = (x_1977 * x_1978);
  let x_1981 : f32 = u_xlat1.x;
  u_xlat83 = ((-(x_1981) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1988 : f32 = u_xlat1.x;
  let x_1989 : f32 = u_xlat83;
  u_xlat1.x = (x_1988 * x_1989);
  let x_1993 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1993 * 6.0f);
  let x_2005 : vec4<f32> = u_xlat7;
  let x_2008 : f32 = u_xlat1.x;
  let x_2009 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2005.x, x_2005.y, x_2005.z), x_2008);
  u_xlat7 = x_2009;
  let x_2011 : f32 = u_xlat7.w;
  u_xlat1.x = (x_2011 + -1.0f);
  let x_2015 : f32 = x_353.unity_SpecCube0_HDR.w;
  let x_2017 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2015 * x_2017) + 1.0f);
  let x_2022 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2022, 0.0f);
  let x_2026 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2026);
  let x_2030 : f32 = u_xlat1.x;
  let x_2032 : f32 = x_353.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2030 * x_2032);
  let x_2036 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2036);
  let x_2040 : f32 = u_xlat1.x;
  let x_2042 : f32 = x_353.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2040 * x_2042);
  let x_2045 : vec4<f32> = u_xlat7;
  let x_2047 : vec4<f32> = u_xlat1;
  let x_2049 : vec3<f32> = (vec3<f32>(x_2045.x, x_2045.y, x_2045.z) * vec3<f32>(x_2047.x, x_2047.x, x_2047.x));
  let x_2050 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2052 : f32 = u_xlat80;
  let x_2054 : f32 = u_xlat80;
  let x_2058 : vec2<f32> = ((vec2<f32>(x_2052, x_2052) * vec2<f32>(x_2054, x_2054)) + vec2<f32>(-1.0f, 1.0f));
  let x_2059 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
  let x_2062 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_2062);
  let x_2065 : vec4<f32> = u_xlat0;
  let x_2068 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_2065.x, x_2065.y, x_2065.z)) + vec3<f32>(x_2068, x_2068, x_2068));
  let x_2071 : f32 = u_xlat79;
  let x_2073 : vec3<f32> = u_xlat34;
  let x_2075 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2071, x_2071, x_2071) * x_2073) + vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2078 : vec4<f32> = u_xlat1;
  let x_2080 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2078.x, x_2078.x, x_2078.x) * x_2080);
  let x_2082 : vec4<f32> = u_xlat7;
  let x_2084 : vec3<f32> = u_xlat34;
  let x_2085 : vec3<f32> = (vec3<f32>(x_2082.x, x_2082.y, x_2082.z) * x_2084);
  let x_2086 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : vec3<f32> = u_xlat4;
  let x_2089 : vec4<f32> = u_xlat5;
  let x_2092 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2088 * vec3<f32>(x_2089.x, x_2089.y, x_2089.z)) + vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2096 : f32 = u_xlat27.x;
  let x_2098 : f32 = x_353.unity_LightData.z;
  u_xlat78 = (x_2096 * x_2098);
  let x_2100 : vec4<f32> = u_xlat2;
  let x_2103 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
  let x_2108 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2108, 0.0f, 1.0f);
  let x_2111 : f32 = u_xlat78;
  let x_2113 : f32 = u_xlat1.x;
  u_xlat78 = (x_2111 * x_2113);
  let x_2115 : f32 = u_xlat78;
  let x_2117 : vec4<f32> = u_xlat6;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115, x_2115, x_2115) * vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2119.x, x_2119.y, x_2120.z, x_2119.z);
  let x_2122 : vec3<f32> = u_xlat3;
  let x_2124 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2126 : vec3<f32> = (x_2122 + vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
  let x_2129 : vec4<f32> = u_xlat6;
  let x_2131 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2129.x, x_2129.y, x_2129.z), vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
  let x_2134 : f32 = u_xlat78;
  u_xlat78 = max(x_2134, 1.17549435e-38f);
  let x_2137 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2137);
  let x_2139 : f32 = u_xlat78;
  let x_2141 : vec4<f32> = u_xlat6;
  let x_2143 : vec3<f32> = (vec3<f32>(x_2139, x_2139, x_2139) * vec3<f32>(x_2141.x, x_2141.y, x_2141.z));
  let x_2144 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
  let x_2146 : vec4<f32> = u_xlat2;
  let x_2148 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_2146.x, x_2146.y, x_2146.z), vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2151 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2151, 0.0f, 1.0f);
  let x_2154 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2156 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2159, 0.0f, 1.0f);
  let x_2161 : f32 = u_xlat78;
  let x_2162 : f32 = u_xlat78;
  u_xlat78 = (x_2161 * x_2162);
  let x_2164 : f32 = u_xlat78;
  let x_2166 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2164 * x_2166) + 1.00001001358032226562f);
  let x_2170 : f32 = u_xlat80;
  let x_2171 : f32 = u_xlat80;
  u_xlat80 = (x_2170 * x_2171);
  let x_2173 : f32 = u_xlat78;
  let x_2174 : f32 = u_xlat78;
  u_xlat78 = (x_2173 * x_2174);
  let x_2176 : f32 = u_xlat80;
  u_xlat80 = max(x_2176, 0.10000000149011611938f);
  let x_2179 : f32 = u_xlat78;
  let x_2180 : f32 = u_xlat80;
  u_xlat78 = (x_2179 * x_2180);
  let x_2182 : f32 = u_xlat81;
  let x_2183 : f32 = u_xlat78;
  u_xlat78 = (x_2182 * x_2183);
  let x_2185 : f32 = u_xlat82;
  let x_2186 : f32 = u_xlat78;
  u_xlat78 = (x_2185 / x_2186);
  let x_2188 : vec4<f32> = u_xlat0;
  let x_2190 : f32 = u_xlat78;
  let x_2193 : vec4<f32> = u_xlat5;
  let x_2195 : vec3<f32> = ((vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2190, x_2190, x_2190)) + vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2199 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2201 : f32 = x_353.unity_LightData.y;
  u_xlat78 = min(x_2199, x_2201);
  let x_2204 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2204));
  let x_2207 : f32 = u_xlat53;
  let x_2210 : f32 = x_177.x_AdditionalShadowFadeParams.x;
  let x_2213 : f32 = x_177.x_AdditionalShadowFadeParams.y;
  u_xlat53 = ((x_2207 * x_2210) + x_2213);
  let x_2215 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2215, 0.0f, 1.0f);
  let x_2218 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2220 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2222 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2224 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2225 : vec4<f32> = vec4<f32>(x_2218, x_2220, x_2222, x_2224);
  let x_2231 : vec4<bool> = (vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2225.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2231.x, x_2231.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2243 : u32 = u_xlatu_loop_1;
    let x_2244 : u32 = u_xlatu78;
    if ((x_2243 < x_2244)) {
    } else {
      break;
    }
    let x_2247 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2247 >> 2u);
    let x_2250 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2250 & 3u));
    let x_2253 : u32 = u_xlatu83;
    let x_2256 : vec4<f32> = x_353.unity_LightIndices[bitcast<i32>(x_2253)];
    let x_2266 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2271 : vec4<u32> = indexable[x_2266];
    u_xlat83 = dot(x_2256, bitcast<vec4<f32>>(x_2271));
    let x_2275 : f32 = u_xlat83;
    u_xlati83 = i32(x_2275);
    let x_2277 : vec3<f32> = vs_TEXCOORD7;
    let x_2288 : i32 = u_xlati83;
    let x_2290 : vec4<f32> = x_2287.x_AdditionalLightsPosition[x_2288];
    let x_2293 : i32 = u_xlati83;
    let x_2295 : vec4<f32> = x_2287.x_AdditionalLightsPosition[x_2293];
    let x_2297 : vec3<f32> = ((-(x_2277) * vec3<f32>(x_2290.w, x_2290.w, x_2290.w)) + vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
    let x_2298 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
    let x_2300 : vec4<f32> = u_xlat9;
    let x_2302 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2300.x, x_2300.y, x_2300.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
    let x_2305 : f32 = u_xlat84;
    u_xlat84 = max(x_2305, 0.00006103515625f);
    let x_2309 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2309);
    let x_2311 : f32 = u_xlat59;
    let x_2313 : vec4<f32> = u_xlat9;
    let x_2315 : vec3<f32> = (vec3<f32>(x_2311, x_2311, x_2311) * vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
    let x_2316 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
    let x_2319 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2319);
    let x_2321 : f32 = u_xlat84;
    let x_2322 : i32 = u_xlati83;
    let x_2324 : f32 = x_2287.x_AdditionalLightsAttenuation[x_2322].x;
    u_xlat84 = (x_2321 * x_2324);
    let x_2326 : f32 = u_xlat84;
    let x_2328 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2326) * x_2328) + 1.0f);
    let x_2331 : f32 = u_xlat84;
    u_xlat84 = max(x_2331, 0.0f);
    let x_2333 : f32 = u_xlat84;
    let x_2334 : f32 = u_xlat84;
    u_xlat84 = (x_2333 * x_2334);
    let x_2336 : f32 = u_xlat84;
    let x_2337 : f32 = u_xlat85;
    u_xlat84 = (x_2336 * x_2337);
    let x_2339 : i32 = u_xlati83;
    let x_2341 : vec4<f32> = x_2287.x_AdditionalLightsSpotDir[x_2339];
    let x_2343 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2341.x, x_2341.y, x_2341.z), vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
    let x_2346 : f32 = u_xlat85;
    let x_2347 : i32 = u_xlati83;
    let x_2349 : f32 = x_2287.x_AdditionalLightsAttenuation[x_2347].z;
    let x_2351 : i32 = u_xlati83;
    let x_2353 : f32 = x_2287.x_AdditionalLightsAttenuation[x_2351].w;
    u_xlat85 = ((x_2346 * x_2349) + x_2353);
    let x_2355 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2355, 0.0f, 1.0f);
    let x_2357 : f32 = u_xlat85;
    let x_2358 : f32 = u_xlat85;
    u_xlat85 = (x_2357 * x_2358);
    let x_2360 : f32 = u_xlat84;
    let x_2361 : f32 = u_xlat85;
    u_xlat84 = (x_2360 * x_2361);
    let x_2365 : i32 = u_xlati83;
    let x_2367 : f32 = x_177.x_AdditionalShadowParams[x_2365].w;
    u_xlati85 = i32(x_2367);
    let x_2370 : i32 = u_xlati85;
    u_xlatb87 = (x_2370 >= 0i);
    let x_2372 : bool = u_xlatb87;
    if (x_2372) {
      let x_2376 : i32 = u_xlati83;
      let x_2378 : f32 = x_177.x_AdditionalShadowParams[x_2376].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2378, x_2378, x_2378, x_2378))));
      let x_2382 : bool = u_xlatb87;
      if (x_2382) {
        let x_2386 : vec4<f32> = u_xlat10;
        let x_2389 : vec4<f32> = u_xlat10;
        let x_2392 : vec4<bool> = (abs(vec4<f32>(x_2386.z, x_2386.z, x_2386.y, x_2386.z)) >= abs(vec4<f32>(x_2389.x, x_2389.y, x_2389.x, x_2389.x)));
        let x_2394 : vec3<bool> = vec3<bool>(x_2392.x, x_2392.y, x_2392.z);
        let x_2395 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
        let x_2398 : bool = u_xlatb11.y;
        let x_2400 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2398 & x_2400);
        let x_2402 : vec4<f32> = u_xlat10;
        let x_2405 : vec4<bool> = (-(vec4<f32>(x_2402.z, x_2402.y, x_2402.z, x_2402.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2406 : vec3<bool> = vec3<bool>(x_2405.x, x_2405.y, x_2405.w);
        let x_2407 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2406.x, x_2406.y, x_2407.z, x_2406.z);
        let x_2410 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2410);
        let x_2415 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2415);
        let x_2420 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2420);
        let x_2423 : bool = u_xlatb11.z;
        if (x_2423) {
          let x_2428 : f32 = u_xlat11.y;
          x_2424 = x_2428;
        } else {
          let x_2430 : f32 = u_xlat88;
          x_2424 = x_2430;
        }
        let x_2431 : f32 = x_2424;
        u_xlat88 = x_2431;
        let x_2433 : bool = u_xlatb87;
        if (x_2433) {
          let x_2438 : f32 = u_xlat11.x;
          x_2434 = x_2438;
        } else {
          let x_2440 : f32 = u_xlat88;
          x_2434 = x_2440;
        }
        let x_2441 : f32 = x_2434;
        u_xlat87 = x_2441;
        let x_2442 : i32 = u_xlati83;
        let x_2444 : f32 = x_177.x_AdditionalShadowParams[x_2442].w;
        u_xlat88 = trunc(x_2444);
        let x_2446 : f32 = u_xlat87;
        let x_2447 : f32 = u_xlat88;
        u_xlat87 = (x_2446 + x_2447);
        let x_2449 : f32 = u_xlat87;
        u_xlati85 = i32(x_2449);
      }
      let x_2451 : i32 = u_xlati85;
      u_xlati85 = (x_2451 << bitcast<u32>(2i));
      let x_2453 : vec3<f32> = vs_TEXCOORD7;
      let x_2456 : i32 = u_xlati85;
      let x_2459 : i32 = u_xlati85;
      let x_2463 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2456 + 1i) / 4i)][((x_2459 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2453.y, x_2453.y, x_2453.y, x_2453.y) * x_2463);
      let x_2465 : i32 = u_xlati85;
      let x_2467 : i32 = u_xlati85;
      let x_2470 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[(x_2465 / 4i)][(x_2467 % 4i)];
      let x_2471 : vec3<f32> = vs_TEXCOORD7;
      let x_2474 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2470 * vec4<f32>(x_2471.x, x_2471.x, x_2471.x, x_2471.x)) + x_2474);
      let x_2476 : i32 = u_xlati85;
      let x_2479 : i32 = u_xlati85;
      let x_2483 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2476 + 2i) / 4i)][((x_2479 + 2i) % 4i)];
      let x_2484 : vec3<f32> = vs_TEXCOORD7;
      let x_2487 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2483 * vec4<f32>(x_2484.z, x_2484.z, x_2484.z, x_2484.z)) + x_2487);
      let x_2489 : vec4<f32> = u_xlat11;
      let x_2490 : i32 = u_xlati85;
      let x_2493 : i32 = u_xlati85;
      let x_2497 : vec4<f32> = x_177.x_AdditionalLightsWorldToShadow[((x_2490 + 3i) / 4i)][((x_2493 + 3i) % 4i)];
      u_xlat11 = (x_2489 + x_2497);
      let x_2499 : vec4<f32> = u_xlat11;
      let x_2501 : vec4<f32> = u_xlat11;
      let x_2503 : vec3<f32> = (vec3<f32>(x_2499.x, x_2499.y, x_2499.z) / vec3<f32>(x_2501.w, x_2501.w, x_2501.w));
      let x_2504 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
      let x_2507 : i32 = u_xlati83;
      let x_2509 : f32 = x_177.x_AdditionalShadowParams[x_2507].y;
      u_xlatb85 = (0.0f < x_2509);
      let x_2511 : bool = u_xlatb85;
      if (x_2511) {
        let x_2514 : i32 = u_xlati83;
        let x_2516 : f32 = x_177.x_AdditionalShadowParams[x_2514].y;
        u_xlatb85 = (1.0f == x_2516);
        let x_2518 : bool = u_xlatb85;
        if (x_2518) {
          let x_2521 : vec4<f32> = u_xlat11;
          let x_2525 : vec4<f32> = x_177.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2521.x, x_2521.y, x_2521.x, x_2521.y) + x_2525);
          let x_2528 : vec4<f32> = u_xlat12;
          let x_2529 : vec2<f32> = vec2<f32>(x_2528.x, x_2528.y);
          let x_2531 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2529.x, x_2529.y, x_2531);
          let x_2539 : vec3<f32> = txVec30;
          let x_2541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2539.xy, x_2539.z);
          u_xlat13.x = x_2541;
          let x_2544 : vec4<f32> = u_xlat12;
          let x_2545 : vec2<f32> = vec2<f32>(x_2544.z, x_2544.w);
          let x_2547 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2545.x, x_2545.y, x_2547);
          let x_2554 : vec3<f32> = txVec31;
          let x_2556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2554.xy, x_2554.z);
          u_xlat13.y = x_2556;
          let x_2558 : vec4<f32> = u_xlat11;
          let x_2562 : vec4<f32> = x_177.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y) + x_2562);
          let x_2565 : vec4<f32> = u_xlat12;
          let x_2566 : vec2<f32> = vec2<f32>(x_2565.x, x_2565.y);
          let x_2568 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2566.x, x_2566.y, x_2568);
          let x_2575 : vec3<f32> = txVec32;
          let x_2577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2575.xy, x_2575.z);
          u_xlat13.z = x_2577;
          let x_2580 : vec4<f32> = u_xlat12;
          let x_2581 : vec2<f32> = vec2<f32>(x_2580.z, x_2580.w);
          let x_2583 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
          let x_2590 : vec3<f32> = txVec33;
          let x_2592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
          u_xlat13.w = x_2592;
          let x_2594 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2594, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2597 : i32 = u_xlati83;
          let x_2599 : f32 = x_177.x_AdditionalShadowParams[x_2597].y;
          u_xlatb87 = (2.0f == x_2599);
          let x_2601 : bool = u_xlatb87;
          if (x_2601) {
            let x_2604 : vec4<f32> = u_xlat11;
            let x_2608 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2611 : vec2<f32> = ((vec2<f32>(x_2604.x, x_2604.y) * vec2<f32>(x_2608.z, x_2608.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2612 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec4<f32> = u_xlat12;
            let x_2616 : vec2<f32> = floor(vec2<f32>(x_2614.x, x_2614.y));
            let x_2617 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2616.x, x_2616.y, x_2617.z, x_2617.w);
            let x_2620 : vec4<f32> = u_xlat11;
            let x_2623 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2626 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2620.x, x_2620.y) * vec2<f32>(x_2623.z, x_2623.w)) + -(vec2<f32>(x_2626.x, x_2626.y)));
            let x_2630 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2630.x, x_2630.x, x_2630.y, x_2630.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2633 : vec4<f32> = u_xlat13;
            let x_2635 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2633.x, x_2633.x, x_2633.z, x_2633.z) * vec4<f32>(x_2635.x, x_2635.x, x_2635.z, x_2635.z));
            let x_2638 : vec4<f32> = u_xlat14;
            let x_2640 : vec2<f32> = (vec2<f32>(x_2638.y, x_2638.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2641 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2640.x, x_2641.y, x_2640.y, x_2641.w);
            let x_2643 : vec4<f32> = u_xlat14;
            let x_2646 : vec2<f32> = u_xlat64;
            let x_2648 : vec2<f32> = ((vec2<f32>(x_2643.x, x_2643.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2646));
            let x_2649 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2648.x, x_2648.y, x_2649.z, x_2649.w);
            let x_2651 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2651) + vec2<f32>(1.0f, 1.0f));
            let x_2654 : vec2<f32> = u_xlat64;
            let x_2655 : vec2<f32> = min(x_2654, vec2<f32>(0.0f, 0.0f));
            let x_2656 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
            let x_2658 : vec4<f32> = u_xlat15;
            let x_2661 : vec4<f32> = u_xlat15;
            let x_2664 : vec2<f32> = u_xlat66;
            let x_2665 : vec2<f32> = ((-(vec2<f32>(x_2658.x, x_2658.y)) * vec2<f32>(x_2661.x, x_2661.y)) + x_2664);
            let x_2666 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
            let x_2668 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2668, vec2<f32>(0.0f, 0.0f));
            let x_2670 : vec2<f32> = u_xlat64;
            let x_2672 : vec2<f32> = u_xlat64;
            let x_2674 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2670) * x_2672) + vec2<f32>(x_2674.y, x_2674.w));
            let x_2677 : vec4<f32> = u_xlat15;
            let x_2679 : vec2<f32> = (vec2<f32>(x_2677.x, x_2677.y) + vec2<f32>(1.0f, 1.0f));
            let x_2680 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2682 + vec2<f32>(1.0f, 1.0f));
            let x_2684 : vec4<f32> = u_xlat14;
            let x_2686 : vec2<f32> = (vec2<f32>(x_2684.x, x_2684.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2687 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
            let x_2689 : vec2<f32> = u_xlat66;
            let x_2690 : vec2<f32> = (x_2689 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2691 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2693 : vec4<f32> = u_xlat15;
            let x_2695 : vec2<f32> = (vec2<f32>(x_2693.x, x_2693.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2696 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
            let x_2698 : vec2<f32> = u_xlat64;
            let x_2699 : vec2<f32> = (x_2698 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2700 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2699.x, x_2699.y, x_2700.z, x_2700.w);
            let x_2702 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2702.y, x_2702.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2706 : f32 = u_xlat15.x;
            u_xlat16.z = x_2706;
            let x_2709 : f32 = u_xlat64.x;
            u_xlat16.w = x_2709;
            let x_2712 : f32 = u_xlat17.x;
            u_xlat14.z = x_2712;
            let x_2715 : f32 = u_xlat13.x;
            u_xlat14.w = x_2715;
            let x_2717 : vec4<f32> = u_xlat14;
            let x_2719 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2717.z, x_2717.w, x_2717.x, x_2717.z) + vec4<f32>(x_2719.z, x_2719.w, x_2719.x, x_2719.z));
            let x_2723 : f32 = u_xlat16.y;
            u_xlat15.z = x_2723;
            let x_2726 : f32 = u_xlat64.y;
            u_xlat15.w = x_2726;
            let x_2729 : f32 = u_xlat14.y;
            u_xlat17.z = x_2729;
            let x_2732 : f32 = u_xlat13.z;
            u_xlat17.w = x_2732;
            let x_2734 : vec4<f32> = u_xlat15;
            let x_2736 : vec4<f32> = u_xlat17;
            let x_2738 : vec3<f32> = (vec3<f32>(x_2734.z, x_2734.y, x_2734.w) + vec3<f32>(x_2736.z, x_2736.y, x_2736.w));
            let x_2739 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2743 : vec4<f32> = u_xlat18;
            let x_2745 : vec3<f32> = (vec3<f32>(x_2741.x, x_2741.z, x_2741.w) / vec3<f32>(x_2743.z, x_2743.w, x_2743.y));
            let x_2746 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat14;
            let x_2750 : vec3<f32> = (vec3<f32>(x_2748.x, x_2748.y, x_2748.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat17;
            let x_2755 : vec4<f32> = u_xlat13;
            let x_2757 : vec3<f32> = (vec3<f32>(x_2753.z, x_2753.y, x_2753.w) / vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
            let x_2758 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
            let x_2760 : vec4<f32> = u_xlat15;
            let x_2762 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.y, x_2760.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2763 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
            let x_2765 : vec4<f32> = u_xlat14;
            let x_2768 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2770 : vec3<f32> = (vec3<f32>(x_2765.y, x_2765.x, x_2765.z) * vec3<f32>(x_2768.x, x_2768.x, x_2768.x));
            let x_2771 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2770.x, x_2770.y, x_2770.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat15;
            let x_2776 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2778 : vec3<f32> = (vec3<f32>(x_2773.x, x_2773.y, x_2773.z) * vec3<f32>(x_2776.y, x_2776.y, x_2776.y));
            let x_2779 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
            let x_2782 : f32 = u_xlat15.x;
            u_xlat14.w = x_2782;
            let x_2784 : vec4<f32> = u_xlat12;
            let x_2787 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2790 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y) * vec4<f32>(x_2787.x, x_2787.y, x_2787.x, x_2787.y)) + vec4<f32>(x_2790.y, x_2790.w, x_2790.x, x_2790.w));
            let x_2793 : vec4<f32> = u_xlat12;
            let x_2796 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2799 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2793.x, x_2793.y) * vec2<f32>(x_2796.x, x_2796.y)) + vec2<f32>(x_2799.z, x_2799.w));
            let x_2803 : f32 = u_xlat14.y;
            u_xlat15.w = x_2803;
            let x_2805 : vec4<f32> = u_xlat15;
            let x_2806 : vec2<f32> = vec2<f32>(x_2805.y, x_2805.z);
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2807.x, x_2806.x, x_2807.z, x_2806.y);
            let x_2809 : vec4<f32> = u_xlat12;
            let x_2812 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2815 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y) * vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y)) + vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2815.y));
            let x_2818 : vec4<f32> = u_xlat12;
            let x_2821 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2824 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y) * vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y)) + vec4<f32>(x_2824.w, x_2824.y, x_2824.w, x_2824.z));
            let x_2827 : vec4<f32> = u_xlat12;
            let x_2830 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_2833 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y) * vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y)) + vec4<f32>(x_2833.x, x_2833.w, x_2833.z, x_2833.w));
            let x_2836 : vec4<f32> = u_xlat13;
            let x_2838 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2836.x, x_2836.x, x_2836.x, x_2836.y) * vec4<f32>(x_2838.z, x_2838.w, x_2838.y, x_2838.z));
            let x_2842 : vec4<f32> = u_xlat13;
            let x_2844 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2842.y, x_2842.y, x_2842.z, x_2842.z) * x_2844);
            let x_2847 : f32 = u_xlat13.z;
            let x_2849 : f32 = u_xlat18.y;
            u_xlat87 = (x_2847 * x_2849);
            let x_2852 : vec4<f32> = u_xlat16;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.x, x_2852.y);
            let x_2855 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec34;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat88 = x_2864;
            let x_2866 : vec4<f32> = u_xlat16;
            let x_2867 : vec2<f32> = vec2<f32>(x_2866.z, x_2866.w);
            let x_2869 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2877 : vec3<f32> = txVec35;
            let x_2879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2877.xy, x_2877.z);
            u_xlat89 = x_2879;
            let x_2880 : f32 = u_xlat89;
            let x_2882 : f32 = u_xlat19.y;
            u_xlat89 = (x_2880 * x_2882);
            let x_2885 : f32 = u_xlat19.x;
            let x_2886 : f32 = u_xlat88;
            let x_2888 : f32 = u_xlat89;
            u_xlat88 = ((x_2885 * x_2886) + x_2888);
            let x_2891 : vec2<f32> = u_xlat64;
            let x_2893 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2891.x, x_2891.y, x_2893);
            let x_2900 : vec3<f32> = txVec36;
            let x_2902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2900.xy, x_2900.z);
            u_xlat89 = x_2902;
            let x_2904 : f32 = u_xlat19.z;
            let x_2905 : f32 = u_xlat89;
            let x_2907 : f32 = u_xlat88;
            u_xlat88 = ((x_2904 * x_2905) + x_2907);
            let x_2910 : vec4<f32> = u_xlat15;
            let x_2911 : vec2<f32> = vec2<f32>(x_2910.x, x_2910.y);
            let x_2913 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
            let x_2920 : vec3<f32> = txVec37;
            let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
            u_xlat89 = x_2922;
            let x_2924 : f32 = u_xlat19.w;
            let x_2925 : f32 = u_xlat89;
            let x_2927 : f32 = u_xlat88;
            u_xlat88 = ((x_2924 * x_2925) + x_2927);
            let x_2930 : vec4<f32> = u_xlat17;
            let x_2931 : vec2<f32> = vec2<f32>(x_2930.x, x_2930.y);
            let x_2933 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
            let x_2940 : vec3<f32> = txVec38;
            let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
            u_xlat89 = x_2942;
            let x_2944 : f32 = u_xlat20.x;
            let x_2945 : f32 = u_xlat89;
            let x_2947 : f32 = u_xlat88;
            u_xlat88 = ((x_2944 * x_2945) + x_2947);
            let x_2950 : vec4<f32> = u_xlat17;
            let x_2951 : vec2<f32> = vec2<f32>(x_2950.z, x_2950.w);
            let x_2953 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec39;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat89 = x_2962;
            let x_2964 : f32 = u_xlat20.y;
            let x_2965 : f32 = u_xlat89;
            let x_2967 : f32 = u_xlat88;
            u_xlat88 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat15;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec40;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat89 = x_2982;
            let x_2984 : f32 = u_xlat20.z;
            let x_2985 : f32 = u_xlat89;
            let x_2987 : f32 = u_xlat88;
            u_xlat88 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec41;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat89 = x_3002;
            let x_3004 : f32 = u_xlat20.w;
            let x_3005 : f32 = u_xlat89;
            let x_3007 : f32 = u_xlat88;
            u_xlat88 = ((x_3004 * x_3005) + x_3007);
            let x_3010 : vec4<f32> = u_xlat14;
            let x_3011 : vec2<f32> = vec2<f32>(x_3010.z, x_3010.w);
            let x_3013 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3011.x, x_3011.y, x_3013);
            let x_3020 : vec3<f32> = txVec42;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat89 = x_3022;
            let x_3023 : f32 = u_xlat87;
            let x_3024 : f32 = u_xlat89;
            let x_3026 : f32 = u_xlat88;
            u_xlat85 = ((x_3023 * x_3024) + x_3026);
          } else {
            let x_3029 : vec4<f32> = u_xlat11;
            let x_3032 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3029.x, x_3029.y) * vec2<f32>(x_3032.z, x_3032.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3036 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3035.x, x_3035.y, x_3036.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat12;
            let x_3040 : vec2<f32> = floor(vec2<f32>(x_3038.x, x_3038.y));
            let x_3041 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3040.x, x_3040.y, x_3041.z, x_3041.w);
            let x_3043 : vec4<f32> = u_xlat11;
            let x_3046 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.z, x_3046.w)) + -(vec2<f32>(x_3049.x, x_3049.y)));
            let x_3053 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3053.x, x_3053.x, x_3053.y, x_3053.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3058 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3056.x, x_3056.x, x_3056.z, x_3056.z) * vec4<f32>(x_3058.x, x_3058.x, x_3058.z, x_3058.z));
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3063 : vec2<f32> = (vec2<f32>(x_3061.y, x_3061.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3064 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3064.x, x_3063.x, x_3064.z, x_3063.y);
            let x_3066 : vec4<f32> = u_xlat14;
            let x_3069 : vec2<f32> = u_xlat64;
            let x_3071 : vec2<f32> = ((vec2<f32>(x_3066.x, x_3066.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3069));
            let x_3072 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3071.x, x_3072.y, x_3071.y, x_3072.w);
            let x_3074 : vec2<f32> = u_xlat64;
            let x_3076 : vec2<f32> = (-(x_3074) + vec2<f32>(1.0f, 1.0f));
            let x_3077 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
            let x_3079 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3079, vec2<f32>(0.0f, 0.0f));
            let x_3081 : vec2<f32> = u_xlat66;
            let x_3083 : vec2<f32> = u_xlat66;
            let x_3085 : vec4<f32> = u_xlat14;
            let x_3087 : vec2<f32> = ((-(x_3081) * x_3083) + vec2<f32>(x_3085.x, x_3085.y));
            let x_3088 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3087.x, x_3087.y, x_3088.z, x_3088.w);
            let x_3090 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3090, vec2<f32>(0.0f, 0.0f));
            let x_3093 : vec2<f32> = u_xlat66;
            let x_3095 : vec2<f32> = u_xlat66;
            let x_3097 : vec4<f32> = u_xlat13;
            let x_3099 : vec2<f32> = ((-(x_3093) * x_3095) + vec2<f32>(x_3097.y, x_3097.w));
            let x_3100 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3099.x, x_3100.y, x_3099.y);
            let x_3102 : vec4<f32> = u_xlat14;
            let x_3104 : vec2<f32> = (vec2<f32>(x_3102.x, x_3102.y) + vec2<f32>(2.0f, 2.0f));
            let x_3105 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3104.x, x_3104.y, x_3105.z, x_3105.w);
            let x_3107 : vec3<f32> = u_xlat39;
            let x_3109 : vec2<f32> = (vec2<f32>(x_3107.x, x_3107.z) + vec2<f32>(2.0f, 2.0f));
            let x_3110 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3110.x, x_3109.x, x_3110.z, x_3109.y);
            let x_3113 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3113 * 0.08163200318813323975f);
            let x_3116 : vec4<f32> = u_xlat13;
            let x_3118 : vec3<f32> = (vec3<f32>(x_3116.z, x_3116.x, x_3116.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3119 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3123 : vec2<f32> = (vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3124 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3123.x, x_3123.y, x_3124.z, x_3124.w);
            let x_3127 : f32 = u_xlat17.y;
            u_xlat16.x = x_3127;
            let x_3129 : vec2<f32> = u_xlat64;
            let x_3132 : vec2<f32> = ((vec2<f32>(x_3129.x, x_3129.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3133 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3133.x, x_3132.x, x_3133.z, x_3132.y);
            let x_3135 : vec2<f32> = u_xlat64;
            let x_3138 : vec2<f32> = ((vec2<f32>(x_3135.x, x_3135.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3139 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3138.x, x_3139.y, x_3138.y, x_3139.w);
            let x_3142 : f32 = u_xlat13.x;
            u_xlat14.y = x_3142;
            let x_3145 : f32 = u_xlat15.y;
            u_xlat14.w = x_3145;
            let x_3147 : vec4<f32> = u_xlat14;
            let x_3148 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3147 + x_3148);
            let x_3150 : vec2<f32> = u_xlat64;
            let x_3153 : vec2<f32> = ((vec2<f32>(x_3150.y, x_3150.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3154 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3154.x, x_3153.x, x_3154.z, x_3153.y);
            let x_3156 : vec2<f32> = u_xlat64;
            let x_3159 : vec2<f32> = ((vec2<f32>(x_3156.y, x_3156.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3160 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3159.x, x_3160.y, x_3159.y, x_3160.w);
            let x_3163 : f32 = u_xlat13.y;
            u_xlat15.y = x_3163;
            let x_3165 : vec4<f32> = u_xlat15;
            let x_3166 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3165 + x_3166);
            let x_3168 : vec4<f32> = u_xlat14;
            let x_3169 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3168 / x_3169);
            let x_3171 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3171 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3174 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3173 / x_3174);
            let x_3176 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3176 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3178 : vec4<f32> = u_xlat14;
            let x_3181 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3178.w, x_3178.x, x_3178.y, x_3178.z) * vec4<f32>(x_3181.x, x_3181.x, x_3181.x, x_3181.x));
            let x_3184 : vec4<f32> = u_xlat15;
            let x_3187 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3184.x, x_3184.w, x_3184.y, x_3184.z) * vec4<f32>(x_3187.y, x_3187.y, x_3187.y, x_3187.y));
            let x_3190 : vec4<f32> = u_xlat14;
            let x_3191 : vec3<f32> = vec3<f32>(x_3190.y, x_3190.z, x_3190.w);
            let x_3192 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3191.x, x_3192.y, x_3191.y, x_3191.z);
            let x_3195 : f32 = u_xlat15.x;
            u_xlat17.y = x_3195;
            let x_3197 : vec4<f32> = u_xlat12;
            let x_3200 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3203 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3197.x, x_3197.y, x_3197.x, x_3197.y) * vec4<f32>(x_3200.x, x_3200.y, x_3200.x, x_3200.y)) + vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3203.y));
            let x_3206 : vec4<f32> = u_xlat12;
            let x_3209 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3212 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3206.x, x_3206.y) * vec2<f32>(x_3209.x, x_3209.y)) + vec2<f32>(x_3212.w, x_3212.y));
            let x_3216 : f32 = u_xlat17.y;
            u_xlat14.y = x_3216;
            let x_3219 : f32 = u_xlat15.z;
            u_xlat17.y = x_3219;
            let x_3221 : vec4<f32> = u_xlat12;
            let x_3224 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3221.x, x_3221.y, x_3221.x, x_3221.y) * vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y)) + vec4<f32>(x_3227.x, x_3227.y, x_3227.z, x_3227.y));
            let x_3230 : vec4<f32> = u_xlat12;
            let x_3233 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3236 : vec4<f32> = u_xlat17;
            let x_3238 : vec2<f32> = ((vec2<f32>(x_3230.x, x_3230.y) * vec2<f32>(x_3233.x, x_3233.y)) + vec2<f32>(x_3236.w, x_3236.y));
            let x_3239 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3242 : f32 = u_xlat17.y;
            u_xlat14.z = x_3242;
            let x_3245 : vec4<f32> = u_xlat12;
            let x_3248 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3251 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3245.x, x_3245.y, x_3245.x, x_3245.y) * vec4<f32>(x_3248.x, x_3248.y, x_3248.x, x_3248.y)) + vec4<f32>(x_3251.x, x_3251.y, x_3251.x, x_3251.z));
            let x_3255 : f32 = u_xlat15.w;
            u_xlat17.y = x_3255;
            let x_3258 : vec4<f32> = u_xlat12;
            let x_3261 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3264 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3258.x, x_3258.y, x_3258.x, x_3258.y) * vec4<f32>(x_3261.x, x_3261.y, x_3261.x, x_3261.y)) + vec4<f32>(x_3264.x, x_3264.y, x_3264.z, x_3264.y));
            let x_3268 : vec4<f32> = u_xlat12;
            let x_3271 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3274 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3268.x, x_3268.y) * vec2<f32>(x_3271.x, x_3271.y)) + vec2<f32>(x_3274.w, x_3274.y));
            let x_3278 : f32 = u_xlat17.y;
            u_xlat14.w = x_3278;
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3284 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3287 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3281.x, x_3281.y) * vec2<f32>(x_3284.x, x_3284.y)) + vec2<f32>(x_3287.x, x_3287.w));
            let x_3290 : vec4<f32> = u_xlat17;
            let x_3291 : vec3<f32> = vec3<f32>(x_3290.x, x_3290.z, x_3290.w);
            let x_3292 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3291.x, x_3292.y, x_3291.y, x_3291.z);
            let x_3294 : vec4<f32> = u_xlat12;
            let x_3297 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3300 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3294.x, x_3294.y, x_3294.x, x_3294.y) * vec4<f32>(x_3297.x, x_3297.y, x_3297.x, x_3297.y)) + vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3300.y));
            let x_3304 : vec4<f32> = u_xlat12;
            let x_3307 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3310 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3304.x, x_3304.y) * vec2<f32>(x_3307.x, x_3307.y)) + vec2<f32>(x_3310.w, x_3310.y));
            let x_3314 : f32 = u_xlat14.x;
            u_xlat15.x = x_3314;
            let x_3316 : vec4<f32> = u_xlat12;
            let x_3319 : vec4<f32> = x_177.x_AdditionalShadowmapSize;
            let x_3322 : vec4<f32> = u_xlat15;
            let x_3324 : vec2<f32> = ((vec2<f32>(x_3316.x, x_3316.y) * vec2<f32>(x_3319.x, x_3319.y)) + vec2<f32>(x_3322.x, x_3322.y));
            let x_3325 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3324.x, x_3324.y, x_3325.z, x_3325.w);
            let x_3328 : vec4<f32> = u_xlat13;
            let x_3330 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3328.x, x_3328.x, x_3328.x, x_3328.x) * x_3330);
            let x_3333 : vec4<f32> = u_xlat13;
            let x_3335 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3333.y, x_3333.y, x_3333.y, x_3333.y) * x_3335);
            let x_3338 : vec4<f32> = u_xlat13;
            let x_3340 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3338.z, x_3338.z, x_3338.z, x_3338.z) * x_3340);
            let x_3342 : vec4<f32> = u_xlat13;
            let x_3344 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3342.w, x_3342.w, x_3342.w, x_3342.w) * x_3344);
            let x_3347 : vec4<f32> = u_xlat18;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
            let x_3350 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec43;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat87 = x_3359;
            let x_3361 : vec4<f32> = u_xlat18;
            let x_3362 : vec2<f32> = vec2<f32>(x_3361.z, x_3361.w);
            let x_3364 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec44;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat88 = x_3373;
            let x_3374 : f32 = u_xlat88;
            let x_3376 : f32 = u_xlat23.y;
            u_xlat88 = (x_3374 * x_3376);
            let x_3379 : f32 = u_xlat23.x;
            let x_3380 : f32 = u_xlat87;
            let x_3382 : f32 = u_xlat88;
            u_xlat87 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec2<f32> = u_xlat64;
            let x_3387 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec45;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat88 = x_3396;
            let x_3398 : f32 = u_xlat23.z;
            let x_3399 : f32 = u_xlat88;
            let x_3401 : f32 = u_xlat87;
            u_xlat87 = ((x_3398 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat21;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
            let x_3407 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec46;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat88 = x_3416;
            let x_3418 : f32 = u_xlat23.w;
            let x_3419 : f32 = u_xlat88;
            let x_3421 : f32 = u_xlat87;
            u_xlat87 = ((x_3418 * x_3419) + x_3421);
            let x_3424 : vec4<f32> = u_xlat19;
            let x_3425 : vec2<f32> = vec2<f32>(x_3424.x, x_3424.y);
            let x_3427 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec47;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat88 = x_3436;
            let x_3438 : f32 = u_xlat24.x;
            let x_3439 : f32 = u_xlat88;
            let x_3441 : f32 = u_xlat87;
            u_xlat87 = ((x_3438 * x_3439) + x_3441);
            let x_3444 : vec4<f32> = u_xlat19;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec48;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat88 = x_3456;
            let x_3458 : f32 = u_xlat24.y;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat87;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec4<f32> = u_xlat20;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.x, x_3464.y);
            let x_3467 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec49;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat88 = x_3476;
            let x_3478 : f32 = u_xlat24.z;
            let x_3479 : f32 = u_xlat88;
            let x_3481 : f32 = u_xlat87;
            u_xlat87 = ((x_3478 * x_3479) + x_3481);
            let x_3484 : vec4<f32> = u_xlat21;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.z, x_3484.w);
            let x_3487 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec50;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat88 = x_3496;
            let x_3498 : f32 = u_xlat24.w;
            let x_3499 : f32 = u_xlat88;
            let x_3501 : f32 = u_xlat87;
            u_xlat87 = ((x_3498 * x_3499) + x_3501);
            let x_3504 : vec4<f32> = u_xlat22;
            let x_3505 : vec2<f32> = vec2<f32>(x_3504.x, x_3504.y);
            let x_3507 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec51;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat88 = x_3516;
            let x_3518 : f32 = u_xlat25.x;
            let x_3519 : f32 = u_xlat88;
            let x_3521 : f32 = u_xlat87;
            u_xlat87 = ((x_3518 * x_3519) + x_3521);
            let x_3524 : vec4<f32> = u_xlat22;
            let x_3525 : vec2<f32> = vec2<f32>(x_3524.z, x_3524.w);
            let x_3527 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec52;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat88 = x_3536;
            let x_3538 : f32 = u_xlat25.y;
            let x_3539 : f32 = u_xlat88;
            let x_3541 : f32 = u_xlat87;
            u_xlat87 = ((x_3538 * x_3539) + x_3541);
            let x_3544 : vec2<f32> = u_xlat40;
            let x_3546 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3544.x, x_3544.y, x_3546);
            let x_3553 : vec3<f32> = txVec53;
            let x_3555 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3553.xy, x_3553.z);
            u_xlat88 = x_3555;
            let x_3557 : f32 = u_xlat25.z;
            let x_3558 : f32 = u_xlat88;
            let x_3560 : f32 = u_xlat87;
            u_xlat87 = ((x_3557 * x_3558) + x_3560);
            let x_3563 : vec2<f32> = u_xlat72;
            let x_3565 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3563.x, x_3563.y, x_3565);
            let x_3572 : vec3<f32> = txVec54;
            let x_3574 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3572.xy, x_3572.z);
            u_xlat88 = x_3574;
            let x_3576 : f32 = u_xlat25.w;
            let x_3577 : f32 = u_xlat88;
            let x_3579 : f32 = u_xlat87;
            u_xlat87 = ((x_3576 * x_3577) + x_3579);
            let x_3582 : vec4<f32> = u_xlat17;
            let x_3583 : vec2<f32> = vec2<f32>(x_3582.x, x_3582.y);
            let x_3585 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3583.x, x_3583.y, x_3585);
            let x_3592 : vec3<f32> = txVec55;
            let x_3594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3592.xy, x_3592.z);
            u_xlat88 = x_3594;
            let x_3596 : f32 = u_xlat13.x;
            let x_3597 : f32 = u_xlat88;
            let x_3599 : f32 = u_xlat87;
            u_xlat87 = ((x_3596 * x_3597) + x_3599);
            let x_3602 : vec4<f32> = u_xlat17;
            let x_3603 : vec2<f32> = vec2<f32>(x_3602.z, x_3602.w);
            let x_3605 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3603.x, x_3603.y, x_3605);
            let x_3612 : vec3<f32> = txVec56;
            let x_3614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3612.xy, x_3612.z);
            u_xlat88 = x_3614;
            let x_3616 : f32 = u_xlat13.y;
            let x_3617 : f32 = u_xlat88;
            let x_3619 : f32 = u_xlat87;
            u_xlat87 = ((x_3616 * x_3617) + x_3619);
            let x_3622 : vec2<f32> = u_xlat67;
            let x_3624 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3622.x, x_3622.y, x_3624);
            let x_3631 : vec3<f32> = txVec57;
            let x_3633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3631.xy, x_3631.z);
            u_xlat88 = x_3633;
            let x_3635 : f32 = u_xlat13.z;
            let x_3636 : f32 = u_xlat88;
            let x_3638 : f32 = u_xlat87;
            u_xlat87 = ((x_3635 * x_3636) + x_3638);
            let x_3641 : vec4<f32> = u_xlat12;
            let x_3642 : vec2<f32> = vec2<f32>(x_3641.x, x_3641.y);
            let x_3644 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3642.x, x_3642.y, x_3644);
            let x_3651 : vec3<f32> = txVec58;
            let x_3653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3651.xy, x_3651.z);
            u_xlat88 = x_3653;
            let x_3655 : f32 = u_xlat13.w;
            let x_3656 : f32 = u_xlat88;
            let x_3658 : f32 = u_xlat87;
            u_xlat85 = ((x_3655 * x_3656) + x_3658);
          }
        }
      } else {
        let x_3662 : vec4<f32> = u_xlat11;
        let x_3663 : vec2<f32> = vec2<f32>(x_3662.x, x_3662.y);
        let x_3665 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3663.x, x_3663.y, x_3665);
        let x_3672 : vec3<f32> = txVec59;
        let x_3674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3672.xy, x_3672.z);
        u_xlat85 = x_3674;
      }
      let x_3675 : i32 = u_xlati83;
      let x_3677 : f32 = x_177.x_AdditionalShadowParams[x_3675].x;
      u_xlat87 = (1.0f + -(x_3677));
      let x_3680 : f32 = u_xlat85;
      let x_3681 : i32 = u_xlati83;
      let x_3683 : f32 = x_177.x_AdditionalShadowParams[x_3681].x;
      let x_3685 : f32 = u_xlat87;
      u_xlat85 = ((x_3680 * x_3683) + x_3685);
      let x_3688 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3688);
      let x_3692 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3692 >= 1.0f);
      let x_3694 : bool = u_xlatb87;
      let x_3695 : bool = u_xlatb88;
      u_xlatb87 = (x_3694 | x_3695);
      let x_3697 : bool = u_xlatb87;
      let x_3698 : f32 = u_xlat85;
      u_xlat85 = select(x_3698, 1.0f, x_3697);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3701 : f32 = u_xlat85;
    u_xlat87 = (-(x_3701) + 1.0f);
    let x_3704 : f32 = u_xlat53;
    let x_3705 : f32 = u_xlat87;
    let x_3707 : f32 = u_xlat85;
    u_xlat85 = ((x_3704 * x_3705) + x_3707);
    let x_3710 : i32 = u_xlati83;
    u_xlati87 = (1i << bitcast<u32>((x_3710 & 31i)));
    let x_3714 : i32 = u_xlati87;
    let x_3717 : f32 = x_1829.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3714) & bitcast<u32>(x_3717)));
    let x_3721 : i32 = u_xlati87;
    if ((x_3721 != 0i)) {
      let x_3725 : i32 = u_xlati83;
      let x_3727 : f32 = x_1829.x_AdditionalLightsLightTypes[x_3725].el;
      u_xlati87 = i32(x_3727);
      let x_3730 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3730 != 0i));
      let x_3734 : i32 = u_xlati83;
      u_xlati11 = (x_3734 << bitcast<u32>(2i));
      let x_3736 : i32 = u_xlati88;
      if ((x_3736 != 0i)) {
        let x_3741 : vec3<f32> = vs_TEXCOORD7;
        let x_3743 : i32 = u_xlati11;
        let x_3746 : i32 = u_xlati11;
        let x_3750 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3743 + 1i) / 4i)][((x_3746 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3741.y, x_3741.y, x_3741.y) * vec3<f32>(x_3750.x, x_3750.y, x_3750.w));
        let x_3753 : i32 = u_xlati11;
        let x_3755 : i32 = u_xlati11;
        let x_3758 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[(x_3753 / 4i)][(x_3755 % 4i)];
        let x_3760 : vec3<f32> = vs_TEXCOORD7;
        let x_3763 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3758.x, x_3758.y, x_3758.w) * vec3<f32>(x_3760.x, x_3760.x, x_3760.x)) + x_3763);
        let x_3765 : i32 = u_xlati11;
        let x_3768 : i32 = u_xlati11;
        let x_3772 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3765 + 2i) / 4i)][((x_3768 + 2i) % 4i)];
        let x_3774 : vec3<f32> = vs_TEXCOORD7;
        let x_3777 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3772.x, x_3772.y, x_3772.w) * vec3<f32>(x_3774.z, x_3774.z, x_3774.z)) + x_3777);
        let x_3779 : vec3<f32> = u_xlat37;
        let x_3780 : i32 = u_xlati11;
        let x_3783 : i32 = u_xlati11;
        let x_3787 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3780 + 3i) / 4i)][((x_3783 + 3i) % 4i)];
        u_xlat37 = (x_3779 + vec3<f32>(x_3787.x, x_3787.y, x_3787.w));
        let x_3790 : vec3<f32> = u_xlat37;
        let x_3792 : vec3<f32> = u_xlat37;
        let x_3794 : vec2<f32> = (vec2<f32>(x_3790.x, x_3790.y) / vec2<f32>(x_3792.z, x_3792.z));
        let x_3795 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3794.x, x_3794.y, x_3795.z);
        let x_3797 : vec3<f32> = u_xlat37;
        let x_3800 : vec2<f32> = ((vec2<f32>(x_3797.x, x_3797.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3801 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3800.x, x_3800.y, x_3801.z);
        let x_3803 : vec3<f32> = u_xlat37;
        let x_3807 : vec2<f32> = clamp(vec2<f32>(x_3803.x, x_3803.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3808 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3807.x, x_3807.y, x_3808.z);
        let x_3810 : i32 = u_xlati83;
        let x_3812 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_3810];
        let x_3814 : vec3<f32> = u_xlat37;
        let x_3817 : i32 = u_xlati83;
        let x_3819 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_3817];
        let x_3821 : vec2<f32> = ((vec2<f32>(x_3812.x, x_3812.y) * vec2<f32>(x_3814.x, x_3814.y)) + vec2<f32>(x_3819.z, x_3819.w));
        let x_3822 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3821.x, x_3821.y, x_3822.z);
      } else {
        let x_3825 : i32 = u_xlati87;
        u_xlatb87 = (x_3825 == 1i);
        let x_3827 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3827);
        let x_3829 : i32 = u_xlati87;
        if ((x_3829 != 0i)) {
          let x_3833 : vec3<f32> = vs_TEXCOORD7;
          let x_3835 : i32 = u_xlati11;
          let x_3838 : i32 = u_xlati11;
          let x_3842 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3835 + 1i) / 4i)][((x_3838 + 1i) % 4i)];
          let x_3844 : vec2<f32> = (vec2<f32>(x_3833.y, x_3833.y) * vec2<f32>(x_3842.x, x_3842.y));
          let x_3845 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3844.x, x_3844.y, x_3845.z, x_3845.w);
          let x_3847 : i32 = u_xlati11;
          let x_3849 : i32 = u_xlati11;
          let x_3852 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[(x_3847 / 4i)][(x_3849 % 4i)];
          let x_3854 : vec3<f32> = vs_TEXCOORD7;
          let x_3857 : vec4<f32> = u_xlat12;
          let x_3859 : vec2<f32> = ((vec2<f32>(x_3852.x, x_3852.y) * vec2<f32>(x_3854.x, x_3854.x)) + vec2<f32>(x_3857.x, x_3857.y));
          let x_3860 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3859.x, x_3859.y, x_3860.z, x_3860.w);
          let x_3862 : i32 = u_xlati11;
          let x_3865 : i32 = u_xlati11;
          let x_3869 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3862 + 2i) / 4i)][((x_3865 + 2i) % 4i)];
          let x_3871 : vec3<f32> = vs_TEXCOORD7;
          let x_3874 : vec4<f32> = u_xlat12;
          let x_3876 : vec2<f32> = ((vec2<f32>(x_3869.x, x_3869.y) * vec2<f32>(x_3871.z, x_3871.z)) + vec2<f32>(x_3874.x, x_3874.y));
          let x_3877 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3876.x, x_3876.y, x_3877.z, x_3877.w);
          let x_3879 : vec4<f32> = u_xlat12;
          let x_3881 : i32 = u_xlati11;
          let x_3884 : i32 = u_xlati11;
          let x_3888 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3881 + 3i) / 4i)][((x_3884 + 3i) % 4i)];
          let x_3890 : vec2<f32> = (vec2<f32>(x_3879.x, x_3879.y) + vec2<f32>(x_3888.x, x_3888.y));
          let x_3891 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3890.x, x_3890.y, x_3891.z, x_3891.w);
          let x_3893 : vec4<f32> = u_xlat12;
          let x_3896 : vec2<f32> = ((vec2<f32>(x_3893.x, x_3893.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3897 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3896.x, x_3896.y, x_3897.z, x_3897.w);
          let x_3899 : vec4<f32> = u_xlat12;
          let x_3901 : vec2<f32> = fract(vec2<f32>(x_3899.x, x_3899.y));
          let x_3902 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3901.x, x_3901.y, x_3902.z, x_3902.w);
          let x_3904 : i32 = u_xlati83;
          let x_3906 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_3904];
          let x_3908 : vec4<f32> = u_xlat12;
          let x_3911 : i32 = u_xlati83;
          let x_3913 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_3911];
          let x_3915 : vec2<f32> = ((vec2<f32>(x_3906.x, x_3906.y) * vec2<f32>(x_3908.x, x_3908.y)) + vec2<f32>(x_3913.z, x_3913.w));
          let x_3916 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3915.x, x_3915.y, x_3916.z);
        } else {
          let x_3919 : vec3<f32> = vs_TEXCOORD7;
          let x_3921 : i32 = u_xlati11;
          let x_3924 : i32 = u_xlati11;
          let x_3928 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3921 + 1i) / 4i)][((x_3924 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3919.y, x_3919.y, x_3919.y, x_3919.y) * x_3928);
          let x_3930 : i32 = u_xlati11;
          let x_3932 : i32 = u_xlati11;
          let x_3935 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[(x_3930 / 4i)][(x_3932 % 4i)];
          let x_3936 : vec3<f32> = vs_TEXCOORD7;
          let x_3939 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3935 * vec4<f32>(x_3936.x, x_3936.x, x_3936.x, x_3936.x)) + x_3939);
          let x_3941 : i32 = u_xlati11;
          let x_3944 : i32 = u_xlati11;
          let x_3948 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3941 + 2i) / 4i)][((x_3944 + 2i) % 4i)];
          let x_3949 : vec3<f32> = vs_TEXCOORD7;
          let x_3952 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3948 * vec4<f32>(x_3949.z, x_3949.z, x_3949.z, x_3949.z)) + x_3952);
          let x_3954 : vec4<f32> = u_xlat12;
          let x_3955 : i32 = u_xlati11;
          let x_3958 : i32 = u_xlati11;
          let x_3962 : vec4<f32> = x_1829.x_AdditionalLightsWorldToLights[((x_3955 + 3i) / 4i)][((x_3958 + 3i) % 4i)];
          u_xlat12 = (x_3954 + x_3962);
          let x_3964 : vec4<f32> = u_xlat12;
          let x_3966 : vec4<f32> = u_xlat12;
          let x_3968 : vec3<f32> = (vec3<f32>(x_3964.x, x_3964.y, x_3964.z) / vec3<f32>(x_3966.w, x_3966.w, x_3966.w));
          let x_3969 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3968.x, x_3968.y, x_3968.z, x_3969.w);
          let x_3971 : vec4<f32> = u_xlat12;
          let x_3973 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3971.x, x_3971.y, x_3971.z), vec3<f32>(x_3973.x, x_3973.y, x_3973.z));
          let x_3976 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3976);
          let x_3978 : f32 = u_xlat87;
          let x_3980 : vec4<f32> = u_xlat12;
          let x_3982 : vec3<f32> = (vec3<f32>(x_3978, x_3978, x_3978) * vec3<f32>(x_3980.x, x_3980.y, x_3980.z));
          let x_3983 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3982.x, x_3982.y, x_3982.z, x_3983.w);
          let x_3985 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3985.x, x_3985.y, x_3985.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3990 : f32 = u_xlat87;
          u_xlat87 = max(x_3990, 0.00000099999999747524f);
          let x_3993 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3993);
          let x_3995 : f32 = u_xlat87;
          let x_3997 : vec4<f32> = u_xlat12;
          let x_3999 : vec3<f32> = (vec3<f32>(x_3995, x_3995, x_3995) * vec3<f32>(x_3997.z, x_3997.x, x_3997.y));
          let x_4000 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3999.x, x_3999.y, x_3999.z, x_4000.w);
          let x_4003 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4003);
          let x_4007 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4007, 0.0f, 1.0f);
          let x_4010 : vec4<f32> = u_xlat13;
          let x_4012 : vec4<bool> = (vec4<f32>(x_4010.y, x_4010.y, x_4010.y, x_4010.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4013 : vec2<bool> = vec2<bool>(x_4012.x, x_4012.w);
          let x_4014 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4013.x, x_4014.y, x_4014.z, x_4013.y);
          let x_4017 : bool = u_xlatb11.x;
          if (x_4017) {
            let x_4022 : f32 = u_xlat13.x;
            x_4018 = x_4022;
          } else {
            let x_4025 : f32 = u_xlat13.x;
            x_4018 = -(x_4025);
          }
          let x_4027 : f32 = x_4018;
          u_xlat11.x = x_4027;
          let x_4030 : bool = u_xlatb11.w;
          if (x_4030) {
            let x_4035 : f32 = u_xlat13.x;
            x_4031 = x_4035;
          } else {
            let x_4038 : f32 = u_xlat13.x;
            x_4031 = -(x_4038);
          }
          let x_4040 : f32 = x_4031;
          u_xlat11.w = x_4040;
          let x_4042 : vec4<f32> = u_xlat12;
          let x_4044 : f32 = u_xlat87;
          let x_4047 : vec4<f32> = u_xlat11;
          let x_4049 : vec2<f32> = ((vec2<f32>(x_4042.x, x_4042.y) * vec2<f32>(x_4044, x_4044)) + vec2<f32>(x_4047.x, x_4047.w));
          let x_4050 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4049.x, x_4050.y, x_4050.z, x_4049.y);
          let x_4052 : vec4<f32> = u_xlat11;
          let x_4055 : vec2<f32> = ((vec2<f32>(x_4052.x, x_4052.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4056 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4055.x, x_4056.y, x_4056.z, x_4055.y);
          let x_4058 : vec4<f32> = u_xlat11;
          let x_4062 : vec2<f32> = clamp(vec2<f32>(x_4058.x, x_4058.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4063 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4062.x, x_4063.y, x_4063.z, x_4062.y);
          let x_4065 : i32 = u_xlati83;
          let x_4067 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_4065];
          let x_4069 : vec4<f32> = u_xlat11;
          let x_4072 : i32 = u_xlati83;
          let x_4074 : vec4<f32> = x_1829.x_AdditionalLightsCookieAtlasUVRects[x_4072];
          let x_4076 : vec2<f32> = ((vec2<f32>(x_4067.x, x_4067.y) * vec2<f32>(x_4069.x, x_4069.w)) + vec2<f32>(x_4074.z, x_4074.w));
          let x_4077 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4076.x, x_4076.y, x_4077.z);
        }
      }
      let x_4084 : vec3<f32> = u_xlat37;
      let x_4086 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4084.x, x_4084.y), 0.0f);
      u_xlat11 = x_4086;
      let x_4088 : bool = u_xlatb7.y;
      if (x_4088) {
        let x_4093 : f32 = u_xlat11.w;
        x_4089 = x_4093;
      } else {
        let x_4096 : f32 = u_xlat11.x;
        x_4089 = x_4096;
      }
      let x_4097 : f32 = x_4089;
      u_xlat87 = x_4097;
      let x_4099 : bool = u_xlatb7.x;
      if (x_4099) {
        let x_4103 : vec4<f32> = u_xlat11;
        x_4100 = vec3<f32>(x_4103.x, x_4103.y, x_4103.z);
      } else {
        let x_4106 : f32 = u_xlat87;
        x_4100 = vec3<f32>(x_4106, x_4106, x_4106);
      }
      let x_4108 : vec3<f32> = x_4100;
      let x_4109 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4108.x, x_4108.y, x_4108.z, x_4109.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4115 : vec4<f32> = u_xlat11;
    let x_4117 : i32 = u_xlati83;
    let x_4119 : vec4<f32> = x_2287.x_AdditionalLightsColor[x_4117];
    let x_4121 : vec3<f32> = (vec3<f32>(x_4115.x, x_4115.y, x_4115.z) * vec3<f32>(x_4119.x, x_4119.y, x_4119.z));
    let x_4122 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4121.x, x_4121.y, x_4121.z, x_4122.w);
    let x_4124 : f32 = u_xlat84;
    let x_4125 : f32 = u_xlat85;
    u_xlat83 = (x_4124 * x_4125);
    let x_4127 : vec4<f32> = u_xlat2;
    let x_4129 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4127.x, x_4127.y, x_4127.z), vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
    let x_4132 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4132, 0.0f, 1.0f);
    let x_4134 : f32 = u_xlat83;
    let x_4135 : f32 = u_xlat84;
    u_xlat83 = (x_4134 * x_4135);
    let x_4137 : f32 = u_xlat83;
    let x_4139 : vec4<f32> = u_xlat11;
    let x_4141 : vec3<f32> = (vec3<f32>(x_4137, x_4137, x_4137) * vec3<f32>(x_4139.x, x_4139.y, x_4139.z));
    let x_4142 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4141.x, x_4141.y, x_4141.z, x_4142.w);
    let x_4144 : vec4<f32> = u_xlat9;
    let x_4146 : f32 = u_xlat59;
    let x_4149 : vec3<f32> = u_xlat3;
    let x_4150 : vec3<f32> = ((vec3<f32>(x_4144.x, x_4144.y, x_4144.z) * vec3<f32>(x_4146, x_4146, x_4146)) + x_4149);
    let x_4151 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4150.x, x_4150.y, x_4150.z, x_4151.w);
    let x_4153 : vec4<f32> = u_xlat9;
    let x_4155 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4153.x, x_4153.y, x_4153.z), vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
    let x_4158 : f32 = u_xlat83;
    u_xlat83 = max(x_4158, 1.17549435e-38f);
    let x_4160 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4160);
    let x_4162 : f32 = u_xlat83;
    let x_4164 : vec4<f32> = u_xlat9;
    let x_4166 : vec3<f32> = (vec3<f32>(x_4162, x_4162, x_4162) * vec3<f32>(x_4164.x, x_4164.y, x_4164.z));
    let x_4167 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4166.x, x_4166.y, x_4166.z, x_4167.w);
    let x_4169 : vec4<f32> = u_xlat2;
    let x_4171 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4169.x, x_4169.y, x_4169.z), vec3<f32>(x_4171.x, x_4171.y, x_4171.z));
    let x_4174 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4174, 0.0f, 1.0f);
    let x_4176 : vec4<f32> = u_xlat10;
    let x_4178 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4176.x, x_4176.y, x_4176.z), vec3<f32>(x_4178.x, x_4178.y, x_4178.z));
    let x_4181 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4181, 0.0f, 1.0f);
    let x_4183 : f32 = u_xlat83;
    let x_4184 : f32 = u_xlat83;
    u_xlat83 = (x_4183 * x_4184);
    let x_4186 : f32 = u_xlat83;
    let x_4188 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4186 * x_4188) + 1.00001001358032226562f);
    let x_4191 : f32 = u_xlat84;
    let x_4192 : f32 = u_xlat84;
    u_xlat84 = (x_4191 * x_4192);
    let x_4194 : f32 = u_xlat83;
    let x_4195 : f32 = u_xlat83;
    u_xlat83 = (x_4194 * x_4195);
    let x_4197 : f32 = u_xlat84;
    u_xlat84 = max(x_4197, 0.10000000149011611938f);
    let x_4199 : f32 = u_xlat83;
    let x_4200 : f32 = u_xlat84;
    u_xlat83 = (x_4199 * x_4200);
    let x_4202 : f32 = u_xlat81;
    let x_4203 : f32 = u_xlat83;
    u_xlat83 = (x_4202 * x_4203);
    let x_4205 : f32 = u_xlat82;
    let x_4206 : f32 = u_xlat83;
    u_xlat83 = (x_4205 / x_4206);
    let x_4208 : vec4<f32> = u_xlat0;
    let x_4210 : f32 = u_xlat83;
    let x_4213 : vec4<f32> = u_xlat5;
    let x_4215 : vec3<f32> = ((vec3<f32>(x_4208.x, x_4208.y, x_4208.z) * vec3<f32>(x_4210, x_4210, x_4210)) + vec3<f32>(x_4213.x, x_4213.y, x_4213.z));
    let x_4216 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4215.x, x_4215.y, x_4215.z, x_4216.w);
    let x_4218 : vec4<f32> = u_xlat9;
    let x_4220 : vec4<f32> = u_xlat11;
    let x_4223 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4218.x, x_4218.y, x_4218.z) * vec3<f32>(x_4220.x, x_4220.y, x_4220.z)) + x_4223);

    continuing {
      let x_4225 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4225 + bitcast<u32>(1i));
    }
  }
  let x_4227 : vec4<f32> = u_xlat6;
  let x_4229 : vec4<f32> = u_xlat1;
  let x_4232 : vec3<f32> = u_xlat4;
  let x_4233 : vec3<f32> = ((vec3<f32>(x_4227.x, x_4227.y, x_4227.z) * vec3<f32>(x_4229.x, x_4229.y, x_4229.w)) + x_4232);
  let x_4234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4233.x, x_4233.y, x_4233.z, x_4234.w);
  let x_4238 : vec3<f32> = u_xlat34;
  let x_4239 : vec4<f32> = u_xlat0;
  let x_4241 : vec3<f32> = (x_4238 + vec3<f32>(x_4239.x, x_4239.y, x_4239.z));
  let x_4242 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4241.x, x_4241.y, x_4241.z, x_4242.w);
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


