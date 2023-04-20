diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlatb24 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb26 : bool;

@group(1) @binding(2) var<uniform> x_239 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb1 : bool;

@group(1) @binding(4) var<uniform> x_476 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb74 : bool;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb75 : bool;

@group(1) @binding(5) var<uniform> x_1759 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu77 : u32;

var<private> u_xlati54 : i32;

var<private> u_xlat77 : f32;

var<private> u_xlati77 : i32;

@group(1) @binding(1) var<uniform> x_2077 : AdditionalLights;

var<private> u_xlat54 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlati78 : i32;

var<private> u_xlatb79 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb78 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlatb80 : bool;

var<private> u_xlati79 : i32;

var<private> u_xlati80 : i32;

var<private> u_xlati9 : i32;

var<private> u_xlat33 : vec3<f32>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu76 : u32;

var<private> u_xlatb77 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_245 : f32;
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
  var x_1712 : f32;
  var x_1843 : f32;
  var x_1854 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2216 : f32;
  var x_2226 : f32;
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
  var x_3808 : f32;
  var x_3821 : f32;
  var x_3879 : f32;
  var x_3890 : vec3<f32>;
  var x_4066 : f32;
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
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat24.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat48 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat72 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat72;
  let x_108 : f32 = u_xlat48;
  u_xlat48 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat48;
  u_xlat48 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat24.x;
  let x_116 : f32 = u_xlat48;
  u_xlat24.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat24.x;
  u_xlat24.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb48 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb48;
  if (x_132) {
    let x_137 : f32 = u_xlat24.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat24.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat24.x;
  u_xlatb24 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb24;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_45.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_166, x_168);
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : f32 = u_xlat2.x;
  let x_177 : f32 = u_xlat2.z;
  u_xlat2.x = (x_174 * x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_187 : vec2<f32> = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_188 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_187.x, x_188.y, x_187.y);
  let x_190 : vec3<f32> = u_xlat24;
  let x_192 : vec3<f32> = u_xlat24;
  u_xlat1.x = dot(vec2<f32>(x_190.x, x_190.z), vec2<f32>(x_192.x, x_192.z));
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_197, 1.0f);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_201) + 1.0f);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_206);
  let x_210 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_210, 0.0000000000000001f);
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_218 : f32 = x_45.x_DitheringTextureInvSize;
  let x_220 : vec2<f32> = (vec2<f32>(x_214.x, x_214.y) * vec2<f32>(x_218, x_218));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_231 : f32 = x_45.x_GlobalMipBias.x;
  let x_232 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_228.x, x_228.y), x_231);
  u_xlat2.x = x_232.w;
  let x_242 : f32 = x_239.unity_LODFade.x;
  u_xlatb26 = (x_242 >= 0.0f);
  let x_244 : bool = u_xlatb26;
  if (x_244) {
    let x_249 : f32 = u_xlat2.x;
    x_245 = abs(x_249);
  } else {
    let x_253 : f32 = u_xlat2.x;
    x_245 = -(abs(x_253));
  }
  let x_256 : f32 = x_245;
  u_xlat2.x = x_256;
  let x_259 : f32 = u_xlat2.x;
  let x_262 : f32 = x_239.unity_LODFade.x;
  u_xlat2.x = (-(x_259) + x_262);
  let x_267 : f32 = u_xlat2.x;
  u_xlatb2 = (x_267 < 0.0f);
  let x_269 : bool = u_xlatb2;
  if (((select(0i, 1i, x_269) * -1i) != 0i)) {
    discard;
  }
  let x_276 : vec3<f32> = u_xlat24;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  let x_281 : vec3<f32> = (vec3<f32>(x_276.z, x_276.z, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec3<f32> = u_xlat24;
  let x_287 : vec4<f32> = vs_TEXCOORD3;
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat24.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_313);
  let x_316 : vec3<f32> = u_xlat24;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.x, x_316.x) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_325 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_325;
  let x_328 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_328;
  let x_332 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_332;
  let x_334 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat24.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_339, 0.00006103515625f);
  let x_344 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_344);
  let x_350 : f32 = vs_TEXCOORD1.y;
  let x_353 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat72 = (x_350 * x_353);
  let x_356 : f32 = x_45.unity_MatrixV[0i].z;
  let x_358 : f32 = vs_TEXCOORD1.x;
  let x_360 : f32 = u_xlat72;
  u_xlat72 = ((x_356 * x_358) + x_360);
  let x_363 : f32 = x_45.unity_MatrixV[2i].z;
  let x_365 : f32 = vs_TEXCOORD1.z;
  let x_367 : f32 = u_xlat72;
  u_xlat72 = ((x_363 * x_365) + x_367);
  let x_369 : f32 = u_xlat72;
  let x_372 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat72 = (x_369 + x_372);
  let x_374 : f32 = u_xlat72;
  let x_378 : f32 = x_45.x_ProjectionParams.y;
  u_xlat72 = (-(x_374) + -(x_378));
  let x_381 : f32 = u_xlat72;
  u_xlat72 = max(x_381, 0.0f);
  let x_383 : f32 = u_xlat72;
  let x_386 : f32 = x_45.unity_FogParams.x;
  u_xlat72 = (x_383 * x_386);
  u_xlat2.w = 1.0f;
  let x_392 : vec4<f32> = x_239.unity_SHAr;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_392, x_393);
  let x_398 : vec4<f32> = x_239.unity_SHAg;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_398, x_399);
  let x_404 : vec4<f32> = x_239.unity_SHAb;
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_404, x_405);
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_409.y, x_409.z, x_409.z, x_409.x) * vec4<f32>(x_411.x, x_411.y, x_411.z, x_411.z));
  let x_417 : vec4<f32> = x_239.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_239.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_239.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_434 : f32 = u_xlat2.y;
  let x_436 : f32 = u_xlat2.y;
  u_xlat1.x = (x_434 * x_436);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  let x_445 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_440 * x_442) + -(x_445));
  let x_451 : vec4<f32> = x_239.unity_SHC;
  let x_453 : vec4<f32> = u_xlat1;
  let x_456 : vec4<f32> = u_xlat6;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_453.x, x_453.x, x_453.x)) + vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec3<f32> = u_xlat4;
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_461 + vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_465, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_479 : f32 = x_476.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_479);
  let x_481 : bool = u_xlatb1;
  if (x_481) {
    let x_485 : f32 = x_476.x_MainLightShadowParams.y;
    u_xlatb1 = (x_485 == 1.0f);
    let x_487 : bool = u_xlatb1;
    if (x_487) {
      let x_491 : vec4<f32> = vs_TEXCOORD6;
      let x_494 : vec4<f32> = x_476.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_491.x, x_491.y, x_491.x, x_491.y) + x_494);
      let x_498 : vec4<f32> = u_xlat5;
      let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
      let x_501 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_499.x, x_499.y, x_501);
      let x_513 : vec3<f32> = txVec0;
      let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_513.xy, x_513.z);
      u_xlat6.x = x_515;
      let x_518 : vec4<f32> = u_xlat5;
      let x_519 : vec2<f32> = vec2<f32>(x_518.z, x_518.w);
      let x_521 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_519.x, x_519.y, x_521);
      let x_528 : vec3<f32> = txVec1;
      let x_530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_528.xy, x_528.z);
      u_xlat6.y = x_530;
      let x_532 : vec4<f32> = vs_TEXCOORD6;
      let x_535 : vec4<f32> = x_476.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_532.x, x_532.y, x_532.x, x_532.y) + x_535);
      let x_538 : vec4<f32> = u_xlat5;
      let x_539 : vec2<f32> = vec2<f32>(x_538.x, x_538.y);
      let x_541 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_539.x, x_539.y, x_541);
      let x_548 : vec3<f32> = txVec2;
      let x_550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_548.xy, x_548.z);
      u_xlat6.z = x_550;
      let x_553 : vec4<f32> = u_xlat5;
      let x_554 : vec2<f32> = vec2<f32>(x_553.z, x_553.w);
      let x_556 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_554.x, x_554.y, x_556);
      let x_563 : vec3<f32> = txVec3;
      let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_563.xy, x_563.z);
      u_xlat6.w = x_565;
      let x_567 : vec4<f32> = u_xlat6;
      u_xlat1.x = dot(x_567, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_575 : f32 = x_476.x_MainLightShadowParams.y;
      u_xlatb74 = (x_575 == 2.0f);
      let x_577 : bool = u_xlatb74;
      if (x_577) {
        let x_580 : vec4<f32> = vs_TEXCOORD6;
        let x_583 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_587 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.z, x_583.w)) + vec2<f32>(0.5f, 0.5f));
        let x_588 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat5;
        let x_592 : vec2<f32> = floor(vec2<f32>(x_590.x, x_590.y));
        let x_593 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_597 : vec4<f32> = vs_TEXCOORD6;
        let x_600 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_603 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_600.z, x_600.w)) + -(vec2<f32>(x_603.x, x_603.y)));
        let x_607 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_607.x, x_607.x, x_607.y, x_607.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_612.x, x_612.x, x_612.z, x_612.z) * vec4<f32>(x_614.x, x_614.x, x_614.z, x_614.z));
        let x_617 : vec4<f32> = u_xlat7;
        let x_621 : vec2<f32> = (vec2<f32>(x_617.y, x_617.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_621.x, x_622.y, x_621.y, x_622.w);
        let x_624 : vec4<f32> = u_xlat7;
        let x_627 : vec2<f32> = u_xlat53;
        let x_629 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.z) * vec2<f32>(0.5f, 0.5f)) + -(x_627));
        let x_630 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_633 : vec2<f32> = u_xlat53;
        u_xlat55 = (-(x_633) + vec2<f32>(1.0f, 1.0f));
        let x_638 : vec2<f32> = u_xlat53;
        let x_640 : vec2<f32> = min(x_638, vec2<f32>(0.0f, 0.0f));
        let x_641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat8;
        let x_646 : vec4<f32> = u_xlat8;
        let x_649 : vec2<f32> = u_xlat55;
        let x_650 : vec2<f32> = ((-(vec2<f32>(x_643.x, x_643.y)) * vec2<f32>(x_646.x, x_646.y)) + x_649);
        let x_651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec2<f32> = u_xlat53;
        u_xlat53 = max(x_653, vec2<f32>(0.0f, 0.0f));
        let x_655 : vec2<f32> = u_xlat53;
        let x_657 : vec2<f32> = u_xlat53;
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat53 = ((-(x_655) * x_657) + vec2<f32>(x_659.y, x_659.w));
        let x_662 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat53;
        u_xlat53 = (x_667 + vec2<f32>(1.0f, 1.0f));
        let x_670 : vec4<f32> = u_xlat7;
        let x_674 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec2<f32> = u_xlat55;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_687 : vec2<f32> = u_xlat53;
        let x_688 : vec2<f32> = (x_687 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat6;
        u_xlat53 = (vec2<f32>(x_691.y, x_691.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_695 : f32 = u_xlat8.x;
        u_xlat9.z = x_695;
        let x_698 : f32 = u_xlat53.x;
        u_xlat9.w = x_698;
        let x_701 : f32 = u_xlat10.x;
        u_xlat7.z = x_701;
        let x_704 : f32 = u_xlat6.x;
        u_xlat7.w = x_704;
        let x_707 : vec4<f32> = u_xlat7;
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_707.z, x_707.w, x_707.x, x_707.z) + vec4<f32>(x_709.z, x_709.w, x_709.x, x_709.z));
        let x_713 : f32 = u_xlat9.y;
        u_xlat8.z = x_713;
        let x_716 : f32 = u_xlat53.y;
        u_xlat8.w = x_716;
        let x_719 : f32 = u_xlat7.y;
        u_xlat10.z = x_719;
        let x_722 : f32 = u_xlat6.z;
        u_xlat10.w = x_722;
        let x_724 : vec4<f32> = u_xlat8;
        let x_726 : vec4<f32> = u_xlat10;
        let x_728 : vec3<f32> = (vec3<f32>(x_724.z, x_724.y, x_724.w) + vec3<f32>(x_726.z, x_726.y, x_726.w));
        let x_729 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat7;
        let x_733 : vec4<f32> = u_xlat11;
        let x_735 : vec3<f32> = (vec3<f32>(x_731.x, x_731.z, x_731.w) / vec3<f32>(x_733.z, x_733.w, x_733.y));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat7;
        let x_744 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat10;
        let x_749 : vec4<f32> = u_xlat6;
        let x_751 : vec3<f32> = (vec3<f32>(x_747.z, x_747.y, x_747.w) / vec3<f32>(x_749.x, x_749.y, x_749.z));
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat8;
        let x_756 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat7;
        let x_762 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_764 : vec3<f32> = (vec3<f32>(x_759.y, x_759.x, x_759.z) * vec3<f32>(x_762.x, x_762.x, x_762.x));
        let x_765 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat8;
        let x_770 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_772 : vec3<f32> = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_770.y, x_770.y, x_770.y));
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_776 : f32 = u_xlat8.x;
        u_xlat7.w = x_776;
        let x_778 : vec4<f32> = u_xlat5;
        let x_781 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_784 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y) * vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y)) + vec4<f32>(x_784.y, x_784.w, x_784.x, x_784.w));
        let x_787 : vec4<f32> = u_xlat5;
        let x_790 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_790.x, x_790.y)) + vec2<f32>(x_793.z, x_793.w));
        let x_797 : f32 = u_xlat7.y;
        u_xlat8.w = x_797;
        let x_799 : vec4<f32> = u_xlat8;
        let x_800 : vec2<f32> = vec2<f32>(x_799.y, x_799.z);
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_801.x, x_800.x, x_801.z, x_800.y);
        let x_803 : vec4<f32> = u_xlat5;
        let x_806 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) * vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y)) + vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.y));
        let x_812 : vec4<f32> = u_xlat5;
        let x_815 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_818 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y) * vec4<f32>(x_815.x, x_815.y, x_815.x, x_815.y)) + vec4<f32>(x_818.w, x_818.y, x_818.w, x_818.z));
        let x_821 : vec4<f32> = u_xlat5;
        let x_824 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_827 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y) * vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y)) + vec4<f32>(x_827.x, x_827.w, x_827.z, x_827.w));
        let x_831 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_831.x, x_831.x, x_831.x, x_831.y) * vec4<f32>(x_833.z, x_833.w, x_833.y, x_833.z));
        let x_837 : vec4<f32> = u_xlat6;
        let x_839 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_837.y, x_837.y, x_837.z, x_837.z) * x_839);
        let x_843 : f32 = u_xlat6.z;
        let x_845 : f32 = u_xlat11.y;
        u_xlat74 = (x_843 * x_845);
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_859 : vec3<f32> = txVec4;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
        u_xlat75 = x_861;
        let x_863 : vec4<f32> = u_xlat9;
        let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
        let x_866 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_864.x, x_864.y, x_866);
        let x_874 : vec3<f32> = txVec5;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat76 = x_876;
        let x_877 : f32 = u_xlat76;
        let x_879 : f32 = u_xlat12.y;
        u_xlat76 = (x_877 * x_879);
        let x_882 : f32 = u_xlat12.x;
        let x_883 : f32 = u_xlat75;
        let x_885 : f32 = u_xlat76;
        u_xlat75 = ((x_882 * x_883) + x_885);
        let x_888 : vec2<f32> = u_xlat53;
        let x_890 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec6;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat76 = x_899;
        let x_901 : f32 = u_xlat12.z;
        let x_902 : f32 = u_xlat76;
        let x_904 : f32 = u_xlat75;
        u_xlat75 = ((x_901 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat8;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec7;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
        u_xlat76 = x_919;
        let x_921 : f32 = u_xlat12.w;
        let x_922 : f32 = u_xlat76;
        let x_924 : f32 = u_xlat75;
        u_xlat75 = ((x_921 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat10;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec8;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat76 = x_939;
        let x_941 : f32 = u_xlat13.x;
        let x_942 : f32 = u_xlat76;
        let x_944 : f32 = u_xlat75;
        u_xlat75 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat10;
        let x_948 : vec2<f32> = vec2<f32>(x_947.z, x_947.w);
        let x_950 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec9;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat76 = x_959;
        let x_961 : f32 = u_xlat13.y;
        let x_962 : f32 = u_xlat76;
        let x_964 : f32 = u_xlat75;
        u_xlat75 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat8;
        let x_968 : vec2<f32> = vec2<f32>(x_967.z, x_967.w);
        let x_970 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec10;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat76 = x_979;
        let x_981 : f32 = u_xlat13.z;
        let x_982 : f32 = u_xlat76;
        let x_984 : f32 = u_xlat75;
        u_xlat75 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec11;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat76 = x_999;
        let x_1001 : f32 = u_xlat13.w;
        let x_1002 : f32 = u_xlat76;
        let x_1004 : f32 = u_xlat75;
        u_xlat75 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec12;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat76 = x_1019;
        let x_1020 : f32 = u_xlat74;
        let x_1021 : f32 = u_xlat76;
        let x_1023 : f32 = u_xlat75;
        u_xlat1.x = ((x_1020 * x_1021) + x_1023);
      } else {
        let x_1027 : vec4<f32> = vs_TEXCOORD6;
        let x_1030 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat5;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = vs_TEXCOORD6;
        let x_1044 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.z, x_1044.w)) + -(vec2<f32>(x_1047.x, x_1047.y)));
        let x_1051 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_1051.x, x_1051.x, x_1051.y, x_1051.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1056 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.z, x_1054.z) * vec4<f32>(x_1056.x, x_1056.x, x_1056.z, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = (vec2<f32>(x_1059.y, x_1059.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1069 : vec2<f32> = u_xlat53;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1069));
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat53;
        let x_1076 : vec2<f32> = (-(x_1074) + vec2<f32>(1.0f, 1.0f));
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat53;
        u_xlat55 = min(x_1079, vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec2<f32> = u_xlat55;
        let x_1083 : vec2<f32> = u_xlat55;
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = ((-(x_1081) * x_1083) + vec2<f32>(x_1085.x, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat53;
        u_xlat55 = max(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec2<f32> = u_xlat55;
        let x_1095 : vec2<f32> = u_xlat55;
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1099 : vec2<f32> = ((-(x_1093) * x_1095) + vec2<f32>(x_1097.y, x_1097.w));
        let x_1100 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1099.x, x_1100.y, x_1099.y);
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1102.x, x_1102.y) + vec2<f32>(2.0f, 2.0f));
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec3<f32> = u_xlat30;
        let x_1109 : vec2<f32> = (vec2<f32>(x_1107.x, x_1107.z) + vec2<f32>(2.0f, 2.0f));
        let x_1110 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1110.x, x_1109.x, x_1110.z, x_1109.y);
        let x_1113 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1113 * 0.08163200318813323975f);
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1120 : vec3<f32> = (vec3<f32>(x_1117.z, x_1117.x, x_1117.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat10.y;
        u_xlat9.x = x_1130;
        let x_1132 : vec2<f32> = u_xlat53;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1139.x, x_1140.z, x_1139.y);
        let x_1142 : vec2<f32> = u_xlat53;
        let x_1146 : vec2<f32> = ((vec2<f32>(x_1142.x, x_1142.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1146.x, x_1147.y, x_1146.y, x_1147.w);
        let x_1150 : f32 = u_xlat6.x;
        u_xlat7.y = x_1150;
        let x_1153 : f32 = u_xlat8.y;
        u_xlat7.w = x_1153;
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1155 + x_1156);
        let x_1158 : vec2<f32> = u_xlat53;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1158.y, x_1158.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec2<f32> = u_xlat53;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1164.y, x_1164.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1167.x, x_1168.y, x_1167.y, x_1168.w);
        let x_1171 : f32 = u_xlat6.y;
        u_xlat8.y = x_1171;
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1173 + x_1174);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1176 / x_1177);
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1179 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1185 / x_1186);
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1188 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1190 : vec4<f32> = u_xlat7;
        let x_1193 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1190.w, x_1190.x, x_1190.y, x_1190.z) * vec4<f32>(x_1193.x, x_1193.x, x_1193.x, x_1193.x));
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1196.x, x_1196.w, x_1196.y, x_1196.z) * vec4<f32>(x_1199.y, x_1199.y, x_1199.y, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1203 : vec3<f32> = vec3<f32>(x_1202.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1203.z);
        let x_1207 : f32 = u_xlat8.x;
        u_xlat10.y = x_1207;
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1212 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y) * vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y)) + vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1215.y));
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat53 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat10.y;
        u_xlat7.y = x_1228;
        let x_1231 : f32 = u_xlat8.z;
        u_xlat10.y = x_1231;
        let x_1233 : vec4<f32> = u_xlat5;
        let x_1236 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y) * vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y)) + vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat10;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(x_1245.x, x_1245.y)) + vec2<f32>(x_1248.w, x_1248.y));
        let x_1251 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1254 : f32 = u_xlat10.y;
        u_xlat7.z = x_1254;
        let x_1257 : vec4<f32> = u_xlat5;
        let x_1260 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y) * vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y)) + vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.z));
        let x_1267 : f32 = u_xlat8.w;
        u_xlat10.y = x_1267;
        let x_1270 : vec4<f32> = u_xlat5;
        let x_1273 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y) * vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.y)) + vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1276.y));
        let x_1280 : vec4<f32> = u_xlat5;
        let x_1283 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat31 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.w, x_1286.y));
        let x_1290 : f32 = u_xlat10.y;
        u_xlat7.w = x_1290;
        let x_1293 : vec4<f32> = u_xlat5;
        let x_1296 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.x, x_1299.w));
        let x_1302 : vec4<f32> = u_xlat10;
        let x_1303 : vec3<f32> = vec3<f32>(x_1302.x, x_1302.z, x_1302.w);
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1303.x, x_1304.y, x_1303.y, x_1303.z);
        let x_1306 : vec4<f32> = u_xlat5;
        let x_1309 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y) * vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y)) + vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1312.y));
        let x_1316 : vec4<f32> = u_xlat5;
        let x_1319 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.w, x_1322.y));
        let x_1326 : f32 = u_xlat7.x;
        u_xlat8.x = x_1326;
        let x_1328 : vec4<f32> = u_xlat5;
        let x_1331 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat8;
        let x_1336 : vec2<f32> = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1331.x, x_1331.y)) + vec2<f32>(x_1334.x, x_1334.y));
        let x_1337 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1336.x, x_1336.y, x_1337.z, x_1337.w);
        let x_1340 : vec4<f32> = u_xlat6;
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1340.x, x_1340.x, x_1340.x, x_1340.x) * x_1342);
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1345.y, x_1345.y, x_1345.y, x_1345.y) * x_1347);
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1350.z, x_1350.z, x_1350.z, x_1350.z) * x_1352);
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1354.w, x_1354.w, x_1354.w, x_1354.w) * x_1356);
        let x_1359 : vec4<f32> = u_xlat11;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.x, x_1359.y);
        let x_1362 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec13;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
        u_xlat74 = x_1371;
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec14;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat75 = x_1385;
        let x_1386 : f32 = u_xlat75;
        let x_1388 : f32 = u_xlat16.y;
        u_xlat75 = (x_1386 * x_1388);
        let x_1391 : f32 = u_xlat16.x;
        let x_1392 : f32 = u_xlat74;
        let x_1394 : f32 = u_xlat75;
        u_xlat74 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec2<f32> = u_xlat53;
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec15;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat75 = x_1408;
        let x_1410 : f32 = u_xlat16.z;
        let x_1411 : f32 = u_xlat75;
        let x_1413 : f32 = u_xlat74;
        u_xlat74 = ((x_1410 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat14;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec16;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat75 = x_1428;
        let x_1430 : f32 = u_xlat16.w;
        let x_1431 : f32 = u_xlat75;
        let x_1433 : f32 = u_xlat74;
        u_xlat74 = ((x_1430 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat12;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec17;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat75 = x_1448;
        let x_1450 : f32 = u_xlat17.x;
        let x_1451 : f32 = u_xlat75;
        let x_1453 : f32 = u_xlat74;
        u_xlat74 = ((x_1450 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec18;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat75 = x_1468;
        let x_1470 : f32 = u_xlat17.y;
        let x_1471 : f32 = u_xlat75;
        let x_1473 : f32 = u_xlat74;
        u_xlat74 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat13;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec19;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat75 = x_1488;
        let x_1490 : f32 = u_xlat17.z;
        let x_1491 : f32 = u_xlat75;
        let x_1493 : f32 = u_xlat74;
        u_xlat74 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat14;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec20;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat75 = x_1508;
        let x_1510 : f32 = u_xlat17.w;
        let x_1511 : f32 = u_xlat75;
        let x_1513 : f32 = u_xlat74;
        u_xlat74 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat15;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec21;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat75 = x_1528;
        let x_1530 : f32 = u_xlat18.x;
        let x_1531 : f32 = u_xlat75;
        let x_1533 : f32 = u_xlat74;
        u_xlat74 = ((x_1530 * x_1531) + x_1533);
        let x_1536 : vec4<f32> = u_xlat15;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec22;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat75 = x_1548;
        let x_1550 : f32 = u_xlat18.y;
        let x_1551 : f32 = u_xlat75;
        let x_1553 : f32 = u_xlat74;
        u_xlat74 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec2<f32> = u_xlat31;
        let x_1558 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec23;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat75 = x_1567;
        let x_1569 : f32 = u_xlat18.z;
        let x_1570 : f32 = u_xlat75;
        let x_1572 : f32 = u_xlat74;
        u_xlat74 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat61;
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec24;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat75 = x_1586;
        let x_1588 : f32 = u_xlat18.w;
        let x_1589 : f32 = u_xlat75;
        let x_1591 : f32 = u_xlat74;
        u_xlat74 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat10;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec25;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat75 = x_1606;
        let x_1608 : f32 = u_xlat6.x;
        let x_1609 : f32 = u_xlat75;
        let x_1611 : f32 = u_xlat74;
        u_xlat74 = ((x_1608 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.z, x_1614.w);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec26;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat75 = x_1626;
        let x_1628 : f32 = u_xlat6.y;
        let x_1629 : f32 = u_xlat75;
        let x_1631 : f32 = u_xlat74;
        u_xlat74 = ((x_1628 * x_1629) + x_1631);
        let x_1634 : vec2<f32> = u_xlat56;
        let x_1636 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec27;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat75 = x_1645;
        let x_1647 : f32 = u_xlat6.z;
        let x_1648 : f32 = u_xlat75;
        let x_1650 : f32 = u_xlat74;
        u_xlat74 = ((x_1647 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat5;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec28;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat75 = x_1665;
        let x_1667 : f32 = u_xlat6.w;
        let x_1668 : f32 = u_xlat75;
        let x_1670 : f32 = u_xlat74;
        u_xlat1.x = ((x_1667 * x_1668) + x_1670);
      }
    }
  } else {
    let x_1675 : vec4<f32> = vs_TEXCOORD6;
    let x_1676 : vec2<f32> = vec2<f32>(x_1675.x, x_1675.y);
    let x_1678 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
    let x_1685 : vec3<f32> = txVec29;
    let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
    u_xlat1.x = x_1687;
  }
  let x_1690 : f32 = x_476.x_MainLightShadowParams.x;
  u_xlat74 = (-(x_1690) + 1.0f);
  let x_1694 : f32 = u_xlat1.x;
  let x_1696 : f32 = x_476.x_MainLightShadowParams.x;
  let x_1698 : f32 = u_xlat74;
  u_xlat1.x = ((x_1694 * x_1696) + x_1698);
  let x_1702 : f32 = vs_TEXCOORD6.z;
  u_xlatb74 = (0.0f >= x_1702);
  let x_1706 : f32 = vs_TEXCOORD6.z;
  u_xlatb75 = (x_1706 >= 1.0f);
  let x_1708 : bool = u_xlatb74;
  let x_1709 : bool = u_xlatb75;
  u_xlatb74 = (x_1708 | x_1709);
  let x_1711 : bool = u_xlatb74;
  if (x_1711) {
    x_1712 = 1.0f;
  } else {
    let x_1717 : f32 = u_xlat1.x;
    x_1712 = x_1717;
  }
  let x_1718 : f32 = x_1712;
  u_xlat1.x = x_1718;
  let x_1720 : vec3<f32> = vs_TEXCOORD1;
  let x_1724 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1726 : vec3<f32> = (x_1720 + -(x_1724));
  let x_1727 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1729 : vec4<f32> = u_xlat5;
  let x_1731 : vec4<f32> = u_xlat5;
  u_xlat74 = dot(vec3<f32>(x_1729.x, x_1729.y, x_1729.z), vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : f32 = u_xlat74;
  let x_1736 : f32 = x_476.x_MainLightShadowParams.z;
  let x_1739 : f32 = x_476.x_MainLightShadowParams.w;
  u_xlat75 = ((x_1734 * x_1736) + x_1739);
  let x_1741 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1741, 0.0f, 1.0f);
  let x_1744 : f32 = u_xlat1.x;
  u_xlat76 = (-(x_1744) + 1.0f);
  let x_1747 : f32 = u_xlat75;
  let x_1748 : f32 = u_xlat76;
  let x_1751 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1747 * x_1748) + x_1751);
  let x_1761 : f32 = x_1759.x_MainLightCookieTextureFormat;
  u_xlatb75 = !((x_1761 == -1.0f));
  let x_1763 : bool = u_xlatb75;
  if (x_1763) {
    let x_1766 : vec3<f32> = vs_TEXCOORD1;
    let x_1769 : vec4<f32> = x_1759.x_MainLightWorldToLight[1i];
    let x_1771 : vec2<f32> = (vec2<f32>(x_1766.y, x_1766.y) * vec2<f32>(x_1769.x, x_1769.y));
    let x_1772 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
    let x_1775 : vec4<f32> = x_1759.x_MainLightWorldToLight[0i];
    let x_1777 : vec3<f32> = vs_TEXCOORD1;
    let x_1780 : vec4<f32> = u_xlat5;
    let x_1782 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1777.x, x_1777.x)) + vec2<f32>(x_1780.x, x_1780.y));
    let x_1783 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
    let x_1786 : vec4<f32> = x_1759.x_MainLightWorldToLight[2i];
    let x_1788 : vec3<f32> = vs_TEXCOORD1;
    let x_1791 : vec4<f32> = u_xlat5;
    let x_1793 : vec2<f32> = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1788.z, x_1788.z)) + vec2<f32>(x_1791.x, x_1791.y));
    let x_1794 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
    let x_1796 : vec4<f32> = u_xlat5;
    let x_1799 : vec4<f32> = x_1759.x_MainLightWorldToLight[3i];
    let x_1801 : vec2<f32> = (vec2<f32>(x_1796.x, x_1796.y) + vec2<f32>(x_1799.x, x_1799.y));
    let x_1802 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1801.x, x_1801.y, x_1802.z, x_1802.w);
    let x_1804 : vec4<f32> = u_xlat5;
    let x_1807 : vec2<f32> = ((vec2<f32>(x_1804.x, x_1804.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1808 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
    let x_1815 : vec4<f32> = u_xlat5;
    let x_1818 : f32 = x_45.x_GlobalMipBias.x;
    let x_1819 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1815.x, x_1815.y), x_1818);
    u_xlat5 = x_1819;
    let x_1824 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1826 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1828 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1830 : f32 = x_1759.x_MainLightCookieTextureFormat;
    let x_1831 : vec4<f32> = vec4<f32>(x_1824, x_1826, x_1828, x_1830);
    let x_1839 : vec4<bool> = (vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1831.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1839.x, x_1839.y);
    let x_1842 : bool = u_xlatb6.y;
    if (x_1842) {
      let x_1847 : f32 = u_xlat5.w;
      x_1843 = x_1847;
    } else {
      let x_1850 : f32 = u_xlat5.x;
      x_1843 = x_1850;
    }
    let x_1851 : f32 = x_1843;
    u_xlat75 = x_1851;
    let x_1853 : bool = u_xlatb6.x;
    if (x_1853) {
      let x_1857 : vec4<f32> = u_xlat5;
      x_1854 = vec3<f32>(x_1857.x, x_1857.y, x_1857.z);
    } else {
      let x_1860 : f32 = u_xlat75;
      x_1854 = vec3<f32>(x_1860, x_1860, x_1860);
    }
    let x_1862 : vec3<f32> = x_1854;
    let x_1863 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1869 : vec4<f32> = u_xlat5;
  let x_1872 : vec4<f32> = x_45.x_MainLightColor;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1878 : f32 = u_xlat1.x;
  let x_1880 : f32 = x_239.unity_LightData.z;
  u_xlat1.x = (x_1878 * x_1880);
  let x_1883 : vec4<f32> = u_xlat1;
  let x_1885 : vec4<f32> = u_xlat5;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.x, x_1883.x) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec4<f32> = u_xlat2;
  let x_1893 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1890.x, x_1890.y, x_1890.z), vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1898 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1898, 0.0f, 1.0f);
  let x_1901 : vec4<f32> = u_xlat1;
  let x_1903 : vec4<f32> = u_xlat5;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901.x, x_1901.x, x_1901.x) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1909 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_1909 * 10.0f) + 1.0f);
  let x_1915 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1915);
  let x_1918 : vec3<f32> = u_xlat3;
  let x_1919 : vec3<f32> = u_xlat24;
  let x_1923 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1925 : vec3<f32> = ((x_1918 * vec3<f32>(x_1919.x, x_1919.x, x_1919.x)) + vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
  let x_1928 : vec4<f32> = u_xlat7;
  let x_1930 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_1928.x, x_1928.y, x_1928.z), vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
  let x_1933 : f32 = u_xlat75;
  u_xlat75 = max(x_1933, 1.17549435e-38f);
  let x_1936 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1936);
  let x_1938 : f32 = u_xlat75;
  let x_1940 : vec4<f32> = u_xlat7;
  let x_1942 : vec3<f32> = (vec3<f32>(x_1938, x_1938, x_1938) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
  let x_1945 : vec4<f32> = u_xlat2;
  let x_1947 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_1945.x, x_1945.y, x_1945.z), vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1950, 0.0f, 1.0f);
  let x_1952 : f32 = u_xlat75;
  u_xlat75 = log2(x_1952);
  let x_1955 : f32 = u_xlat1.x;
  let x_1956 : f32 = u_xlat75;
  u_xlat75 = (x_1955 * x_1956);
  let x_1958 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1958);
  let x_1960 : f32 = u_xlat75;
  let x_1963 : vec4<f32> = x_58.x_SpecColor;
  let x_1965 : vec3<f32> = (vec3<f32>(x_1960, x_1960, x_1960) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
  let x_1968 : vec4<f32> = u_xlat5;
  let x_1970 : vec4<f32> = u_xlat7;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.y, x_1968.z) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec4<f32> = u_xlat6;
  let x_1977 : vec4<f32> = u_xlat1;
  let x_1980 : vec4<f32> = u_xlat5;
  let x_1982 : vec3<f32> = ((vec3<f32>(x_1975.x, x_1975.y, x_1975.z) * vec3<f32>(x_1977.y, x_1977.z, x_1977.w)) + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
  let x_1983 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1986 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1988 : f32 = x_239.unity_LightData.y;
  u_xlat75 = min(x_1986, x_1988);
  let x_1992 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1992));
  let x_1995 : f32 = u_xlat74;
  let x_1998 : f32 = x_476.x_AdditionalShadowFadeParams.x;
  let x_2001 : f32 = x_476.x_AdditionalShadowFadeParams.y;
  u_xlat74 = ((x_1995 * x_1998) + x_2001);
  let x_2003 : f32 = u_xlat74;
  u_xlat74 = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2008 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2010 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2012 : f32 = x_1759.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2013 : vec4<f32> = vec4<f32>(x_2006, x_2008, x_2010, x_2012);
  let x_2019 : vec4<bool> = (vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2013.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2019.x, x_2019.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2031 : u32 = u_xlatu_loop_1;
    let x_2032 : u32 = u_xlatu75;
    if ((x_2031 < x_2032)) {
    } else {
      break;
    }
    let x_2035 : u32 = u_xlatu_loop_1;
    u_xlatu77 = (x_2035 >> 2u);
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlati54 = bitcast<i32>((x_2039 & 3u));
    let x_2043 : u32 = u_xlatu77;
    let x_2046 : vec4<f32> = x_239.unity_LightIndices[bitcast<i32>(x_2043)];
    let x_2056 : i32 = u_xlati54;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2061 : vec4<u32> = indexable[x_2056];
    u_xlat77 = dot(x_2046, bitcast<vec4<f32>>(x_2061));
    let x_2065 : f32 = u_xlat77;
    u_xlati77 = i32(x_2065);
    let x_2067 : vec3<f32> = vs_TEXCOORD1;
    let x_2078 : i32 = u_xlati77;
    let x_2080 : vec4<f32> = x_2077.x_AdditionalLightsPosition[x_2078];
    let x_2083 : i32 = u_xlati77;
    let x_2085 : vec4<f32> = x_2077.x_AdditionalLightsPosition[x_2083];
    let x_2087 : vec3<f32> = ((-(x_2067) * vec3<f32>(x_2080.w, x_2080.w, x_2080.w)) + vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
    let x_2091 : vec4<f32> = u_xlat8;
    let x_2093 : vec4<f32> = u_xlat8;
    u_xlat54 = dot(vec3<f32>(x_2091.x, x_2091.y, x_2091.z), vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : f32 = u_xlat54;
    u_xlat54 = max(x_2096, 0.00006103515625f);
    let x_2099 : f32 = u_xlat54;
    u_xlat78 = inverseSqrt(x_2099);
    let x_2101 : f32 = u_xlat78;
    let x_2103 : vec4<f32> = u_xlat8;
    let x_2105 : vec3<f32> = (vec3<f32>(x_2101, x_2101, x_2101) * vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
    let x_2106 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
    let x_2108 : f32 = u_xlat54;
    u_xlat78 = (1.0f / x_2108);
    let x_2110 : f32 = u_xlat54;
    let x_2111 : i32 = u_xlati77;
    let x_2113 : f32 = x_2077.x_AdditionalLightsAttenuation[x_2111].x;
    u_xlat54 = (x_2110 * x_2113);
    let x_2115 : f32 = u_xlat54;
    let x_2117 : f32 = u_xlat54;
    u_xlat54 = ((-(x_2115) * x_2117) + 1.0f);
    let x_2120 : f32 = u_xlat54;
    u_xlat54 = max(x_2120, 0.0f);
    let x_2122 : f32 = u_xlat54;
    let x_2123 : f32 = u_xlat54;
    u_xlat54 = (x_2122 * x_2123);
    let x_2125 : f32 = u_xlat54;
    let x_2126 : f32 = u_xlat78;
    u_xlat54 = (x_2125 * x_2126);
    let x_2128 : i32 = u_xlati77;
    let x_2130 : vec4<f32> = x_2077.x_AdditionalLightsSpotDir[x_2128];
    let x_2132 : vec4<f32> = u_xlat8;
    u_xlat78 = dot(vec3<f32>(x_2130.x, x_2130.y, x_2130.z), vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
    let x_2135 : f32 = u_xlat78;
    let x_2136 : i32 = u_xlati77;
    let x_2138 : f32 = x_2077.x_AdditionalLightsAttenuation[x_2136].z;
    let x_2140 : i32 = u_xlati77;
    let x_2142 : f32 = x_2077.x_AdditionalLightsAttenuation[x_2140].w;
    u_xlat78 = ((x_2135 * x_2138) + x_2142);
    let x_2144 : f32 = u_xlat78;
    u_xlat78 = clamp(x_2144, 0.0f, 1.0f);
    let x_2146 : f32 = u_xlat78;
    let x_2147 : f32 = u_xlat78;
    u_xlat78 = (x_2146 * x_2147);
    let x_2149 : f32 = u_xlat78;
    let x_2150 : f32 = u_xlat54;
    u_xlat54 = (x_2149 * x_2150);
    let x_2154 : i32 = u_xlati77;
    let x_2156 : f32 = x_476.x_AdditionalShadowParams[x_2154].w;
    u_xlati78 = i32(x_2156);
    let x_2159 : i32 = u_xlati78;
    u_xlatb79 = (x_2159 >= 0i);
    let x_2161 : bool = u_xlatb79;
    if (x_2161) {
      let x_2165 : i32 = u_xlati77;
      let x_2167 : f32 = x_476.x_AdditionalShadowParams[x_2165].z;
      u_xlatb79 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2167, x_2167, x_2167, x_2167))));
      let x_2171 : bool = u_xlatb79;
      if (x_2171) {
        let x_2176 : vec4<f32> = u_xlat8;
        let x_2179 : vec4<f32> = u_xlat8;
        let x_2182 : vec4<bool> = (abs(vec4<f32>(x_2176.z, x_2176.z, x_2176.y, x_2176.z)) >= abs(vec4<f32>(x_2179.x, x_2179.y, x_2179.x, x_2179.x)));
        let x_2184 : vec3<bool> = vec3<bool>(x_2182.x, x_2182.y, x_2182.z);
        let x_2185 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
        let x_2188 : bool = u_xlatb9.y;
        let x_2190 : bool = u_xlatb9.x;
        u_xlatb79 = (x_2188 & x_2190);
        let x_2192 : vec4<f32> = u_xlat8;
        let x_2195 : vec4<bool> = (-(vec4<f32>(x_2192.z, x_2192.y, x_2192.z, x_2192.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2196 : vec3<bool> = vec3<bool>(x_2195.x, x_2195.y, x_2195.w);
        let x_2197 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2196.x, x_2196.y, x_2197.z, x_2196.z);
        let x_2200 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2200);
        let x_2206 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2206);
        let x_2212 : bool = u_xlatb9.w;
        u_xlat80 = select(0.0f, 1.0f, x_2212);
        let x_2215 : bool = u_xlatb9.z;
        if (x_2215) {
          let x_2220 : f32 = u_xlat9.y;
          x_2216 = x_2220;
        } else {
          let x_2222 : f32 = u_xlat80;
          x_2216 = x_2222;
        }
        let x_2223 : f32 = x_2216;
        u_xlat80 = x_2223;
        let x_2225 : bool = u_xlatb79;
        if (x_2225) {
          let x_2230 : f32 = u_xlat9.x;
          x_2226 = x_2230;
        } else {
          let x_2232 : f32 = u_xlat80;
          x_2226 = x_2232;
        }
        let x_2233 : f32 = x_2226;
        u_xlat79 = x_2233;
        let x_2234 : i32 = u_xlati77;
        let x_2236 : f32 = x_476.x_AdditionalShadowParams[x_2234].w;
        u_xlat80 = trunc(x_2236);
        let x_2238 : f32 = u_xlat79;
        let x_2239 : f32 = u_xlat80;
        u_xlat79 = (x_2238 + x_2239);
        let x_2241 : f32 = u_xlat79;
        u_xlati78 = i32(x_2241);
      }
      let x_2243 : i32 = u_xlati78;
      u_xlati78 = (x_2243 << bitcast<u32>(2i));
      let x_2245 : vec3<f32> = vs_TEXCOORD1;
      let x_2248 : i32 = u_xlati78;
      let x_2251 : i32 = u_xlati78;
      let x_2255 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2248 + 1i) / 4i)][((x_2251 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2245.y, x_2245.y, x_2245.y, x_2245.y) * x_2255);
      let x_2257 : i32 = u_xlati78;
      let x_2259 : i32 = u_xlati78;
      let x_2262 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[(x_2257 / 4i)][(x_2259 % 4i)];
      let x_2263 : vec3<f32> = vs_TEXCOORD1;
      let x_2266 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2262 * vec4<f32>(x_2263.x, x_2263.x, x_2263.x, x_2263.x)) + x_2266);
      let x_2268 : i32 = u_xlati78;
      let x_2271 : i32 = u_xlati78;
      let x_2275 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2268 + 2i) / 4i)][((x_2271 + 2i) % 4i)];
      let x_2276 : vec3<f32> = vs_TEXCOORD1;
      let x_2279 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2275 * vec4<f32>(x_2276.z, x_2276.z, x_2276.z, x_2276.z)) + x_2279);
      let x_2281 : vec4<f32> = u_xlat9;
      let x_2282 : i32 = u_xlati78;
      let x_2285 : i32 = u_xlati78;
      let x_2289 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2282 + 3i) / 4i)][((x_2285 + 3i) % 4i)];
      u_xlat9 = (x_2281 + x_2289);
      let x_2291 : vec4<f32> = u_xlat9;
      let x_2293 : vec4<f32> = u_xlat9;
      let x_2295 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.y, x_2291.z) / vec3<f32>(x_2293.w, x_2293.w, x_2293.w));
      let x_2296 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
      let x_2299 : i32 = u_xlati77;
      let x_2301 : f32 = x_476.x_AdditionalShadowParams[x_2299].y;
      u_xlatb78 = (0.0f < x_2301);
      let x_2303 : bool = u_xlatb78;
      if (x_2303) {
        let x_2306 : i32 = u_xlati77;
        let x_2308 : f32 = x_476.x_AdditionalShadowParams[x_2306].y;
        u_xlatb78 = (1.0f == x_2308);
        let x_2310 : bool = u_xlatb78;
        if (x_2310) {
          let x_2313 : vec4<f32> = u_xlat9;
          let x_2316 : vec4<f32> = x_476.x_AdditionalShadowOffset0;
          u_xlat10 = (vec4<f32>(x_2313.x, x_2313.y, x_2313.x, x_2313.y) + x_2316);
          let x_2319 : vec4<f32> = u_xlat10;
          let x_2320 : vec2<f32> = vec2<f32>(x_2319.x, x_2319.y);
          let x_2322 : f32 = u_xlat9.z;
          txVec30 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
          let x_2330 : vec3<f32> = txVec30;
          let x_2332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2330.xy, x_2330.z);
          u_xlat11.x = x_2332;
          let x_2335 : vec4<f32> = u_xlat10;
          let x_2336 : vec2<f32> = vec2<f32>(x_2335.z, x_2335.w);
          let x_2338 : f32 = u_xlat9.z;
          txVec31 = vec3<f32>(x_2336.x, x_2336.y, x_2338);
          let x_2345 : vec3<f32> = txVec31;
          let x_2347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2345.xy, x_2345.z);
          u_xlat11.y = x_2347;
          let x_2349 : vec4<f32> = u_xlat9;
          let x_2353 : vec4<f32> = x_476.x_AdditionalShadowOffset1;
          u_xlat10 = (vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) + x_2353);
          let x_2356 : vec4<f32> = u_xlat10;
          let x_2357 : vec2<f32> = vec2<f32>(x_2356.x, x_2356.y);
          let x_2359 : f32 = u_xlat9.z;
          txVec32 = vec3<f32>(x_2357.x, x_2357.y, x_2359);
          let x_2366 : vec3<f32> = txVec32;
          let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
          u_xlat11.z = x_2368;
          let x_2371 : vec4<f32> = u_xlat10;
          let x_2372 : vec2<f32> = vec2<f32>(x_2371.z, x_2371.w);
          let x_2374 : f32 = u_xlat9.z;
          txVec33 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
          let x_2381 : vec3<f32> = txVec33;
          let x_2383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
          u_xlat11.w = x_2383;
          let x_2385 : vec4<f32> = u_xlat11;
          u_xlat78 = dot(x_2385, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2388 : i32 = u_xlati77;
          let x_2390 : f32 = x_476.x_AdditionalShadowParams[x_2388].y;
          u_xlatb79 = (2.0f == x_2390);
          let x_2392 : bool = u_xlatb79;
          if (x_2392) {
            let x_2395 : vec4<f32> = u_xlat9;
            let x_2399 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2402 : vec2<f32> = ((vec2<f32>(x_2395.x, x_2395.y) * vec2<f32>(x_2399.z, x_2399.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2403 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat10;
            let x_2407 : vec2<f32> = floor(vec2<f32>(x_2405.x, x_2405.y));
            let x_2408 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
            let x_2411 : vec4<f32> = u_xlat9;
            let x_2414 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2417 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2411.x, x_2411.y) * vec2<f32>(x_2414.z, x_2414.w)) + -(vec2<f32>(x_2417.x, x_2417.y)));
            let x_2421 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2421.x, x_2421.x, x_2421.y, x_2421.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2424 : vec4<f32> = u_xlat11;
            let x_2426 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z) * vec4<f32>(x_2426.x, x_2426.x, x_2426.z, x_2426.z));
            let x_2429 : vec4<f32> = u_xlat12;
            let x_2431 : vec2<f32> = (vec2<f32>(x_2429.y, x_2429.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2432 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2431.x, x_2432.y, x_2431.y, x_2432.w);
            let x_2434 : vec4<f32> = u_xlat12;
            let x_2437 : vec2<f32> = u_xlat58;
            let x_2439 : vec2<f32> = ((vec2<f32>(x_2434.x, x_2434.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2437));
            let x_2440 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
            let x_2443 : vec2<f32> = u_xlat58;
            u_xlat60 = (-(x_2443) + vec2<f32>(1.0f, 1.0f));
            let x_2446 : vec2<f32> = u_xlat58;
            let x_2447 : vec2<f32> = min(x_2446, vec2<f32>(0.0f, 0.0f));
            let x_2448 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat13;
            let x_2453 : vec4<f32> = u_xlat13;
            let x_2456 : vec2<f32> = u_xlat60;
            let x_2457 : vec2<f32> = ((-(vec2<f32>(x_2450.x, x_2450.y)) * vec2<f32>(x_2453.x, x_2453.y)) + x_2456);
            let x_2458 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
            let x_2460 : vec2<f32> = u_xlat58;
            u_xlat58 = max(x_2460, vec2<f32>(0.0f, 0.0f));
            let x_2462 : vec2<f32> = u_xlat58;
            let x_2464 : vec2<f32> = u_xlat58;
            let x_2466 : vec4<f32> = u_xlat11;
            u_xlat58 = ((-(x_2462) * x_2464) + vec2<f32>(x_2466.y, x_2466.w));
            let x_2469 : vec4<f32> = u_xlat13;
            let x_2471 : vec2<f32> = (vec2<f32>(x_2469.x, x_2469.y) + vec2<f32>(1.0f, 1.0f));
            let x_2472 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2474 : vec2<f32> = u_xlat58;
            u_xlat58 = (x_2474 + vec2<f32>(1.0f, 1.0f));
            let x_2476 : vec4<f32> = u_xlat12;
            let x_2478 : vec2<f32> = (vec2<f32>(x_2476.x, x_2476.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2479 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2478.x, x_2478.y, x_2479.z, x_2479.w);
            let x_2481 : vec2<f32> = u_xlat60;
            let x_2482 : vec2<f32> = (x_2481 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2483 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2488 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec2<f32> = u_xlat58;
            let x_2491 : vec2<f32> = (x_2490 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2492 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2491.x, x_2491.y, x_2492.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat11;
            u_xlat58 = (vec2<f32>(x_2494.y, x_2494.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2498 : f32 = u_xlat13.x;
            u_xlat14.z = x_2498;
            let x_2501 : f32 = u_xlat58.x;
            u_xlat14.w = x_2501;
            let x_2504 : f32 = u_xlat15.x;
            u_xlat12.z = x_2504;
            let x_2507 : f32 = u_xlat11.x;
            u_xlat12.w = x_2507;
            let x_2509 : vec4<f32> = u_xlat12;
            let x_2511 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2509.z, x_2509.w, x_2509.x, x_2509.z) + vec4<f32>(x_2511.z, x_2511.w, x_2511.x, x_2511.z));
            let x_2515 : f32 = u_xlat14.y;
            u_xlat13.z = x_2515;
            let x_2518 : f32 = u_xlat58.y;
            u_xlat13.w = x_2518;
            let x_2521 : f32 = u_xlat12.y;
            u_xlat15.z = x_2521;
            let x_2524 : f32 = u_xlat11.z;
            u_xlat15.w = x_2524;
            let x_2526 : vec4<f32> = u_xlat13;
            let x_2528 : vec4<f32> = u_xlat15;
            let x_2530 : vec3<f32> = (vec3<f32>(x_2526.z, x_2526.y, x_2526.w) + vec3<f32>(x_2528.z, x_2528.y, x_2528.w));
            let x_2531 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
            let x_2533 : vec4<f32> = u_xlat12;
            let x_2535 : vec4<f32> = u_xlat16;
            let x_2537 : vec3<f32> = (vec3<f32>(x_2533.x, x_2533.z, x_2533.w) / vec3<f32>(x_2535.z, x_2535.w, x_2535.y));
            let x_2538 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat12;
            let x_2542 : vec3<f32> = (vec3<f32>(x_2540.x, x_2540.y, x_2540.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2543 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat15;
            let x_2547 : vec4<f32> = u_xlat11;
            let x_2549 : vec3<f32> = (vec3<f32>(x_2545.z, x_2545.y, x_2545.w) / vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
            let x_2550 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
            let x_2552 : vec4<f32> = u_xlat13;
            let x_2554 : vec3<f32> = (vec3<f32>(x_2552.x, x_2552.y, x_2552.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2555 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat12;
            let x_2560 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2562 : vec3<f32> = (vec3<f32>(x_2557.y, x_2557.x, x_2557.z) * vec3<f32>(x_2560.x, x_2560.x, x_2560.x));
            let x_2563 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
            let x_2565 : vec4<f32> = u_xlat13;
            let x_2568 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2565.x, x_2565.y, x_2565.z) * vec3<f32>(x_2568.y, x_2568.y, x_2568.y));
            let x_2571 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2574 : f32 = u_xlat13.x;
            u_xlat12.w = x_2574;
            let x_2576 : vec4<f32> = u_xlat10;
            let x_2579 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2582 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2576.x, x_2576.y, x_2576.x, x_2576.y) * vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y)) + vec4<f32>(x_2582.y, x_2582.w, x_2582.x, x_2582.w));
            let x_2585 : vec4<f32> = u_xlat10;
            let x_2588 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2591 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2585.x, x_2585.y) * vec2<f32>(x_2588.x, x_2588.y)) + vec2<f32>(x_2591.z, x_2591.w));
            let x_2595 : f32 = u_xlat12.y;
            u_xlat13.w = x_2595;
            let x_2597 : vec4<f32> = u_xlat13;
            let x_2598 : vec2<f32> = vec2<f32>(x_2597.y, x_2597.z);
            let x_2599 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2599.x, x_2598.x, x_2599.z, x_2598.y);
            let x_2601 : vec4<f32> = u_xlat10;
            let x_2604 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2607 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2601.x, x_2601.y, x_2601.x, x_2601.y) * vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y)) + vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat10;
            let x_2613 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) * vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y)) + vec4<f32>(x_2616.w, x_2616.y, x_2616.w, x_2616.z));
            let x_2619 : vec4<f32> = u_xlat10;
            let x_2622 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y) * vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y)) + vec4<f32>(x_2625.x, x_2625.w, x_2625.z, x_2625.w));
            let x_2628 : vec4<f32> = u_xlat11;
            let x_2630 : vec4<f32> = u_xlat16;
            u_xlat17 = (vec4<f32>(x_2628.x, x_2628.x, x_2628.x, x_2628.y) * vec4<f32>(x_2630.z, x_2630.w, x_2630.y, x_2630.z));
            let x_2633 : vec4<f32> = u_xlat11;
            let x_2635 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2633.y, x_2633.y, x_2633.z, x_2633.z) * x_2635);
            let x_2638 : f32 = u_xlat11.z;
            let x_2640 : f32 = u_xlat16.y;
            u_xlat79 = (x_2638 * x_2640);
            let x_2643 : vec4<f32> = u_xlat14;
            let x_2644 : vec2<f32> = vec2<f32>(x_2643.x, x_2643.y);
            let x_2646 : f32 = u_xlat9.z;
            txVec34 = vec3<f32>(x_2644.x, x_2644.y, x_2646);
            let x_2653 : vec3<f32> = txVec34;
            let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
            u_xlat80 = x_2655;
            let x_2657 : vec4<f32> = u_xlat14;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.z, x_2657.w);
            let x_2660 : f32 = u_xlat9.z;
            txVec35 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2668 : vec3<f32> = txVec35;
            let x_2670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2668.xy, x_2668.z);
            u_xlat81 = x_2670;
            let x_2671 : f32 = u_xlat81;
            let x_2673 : f32 = u_xlat17.y;
            u_xlat81 = (x_2671 * x_2673);
            let x_2676 : f32 = u_xlat17.x;
            let x_2677 : f32 = u_xlat80;
            let x_2679 : f32 = u_xlat81;
            u_xlat80 = ((x_2676 * x_2677) + x_2679);
            let x_2682 : vec2<f32> = u_xlat58;
            let x_2684 : f32 = u_xlat9.z;
            txVec36 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
            let x_2691 : vec3<f32> = txVec36;
            let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
            u_xlat81 = x_2693;
            let x_2695 : f32 = u_xlat17.z;
            let x_2696 : f32 = u_xlat81;
            let x_2698 : f32 = u_xlat80;
            u_xlat80 = ((x_2695 * x_2696) + x_2698);
            let x_2701 : vec4<f32> = u_xlat13;
            let x_2702 : vec2<f32> = vec2<f32>(x_2701.x, x_2701.y);
            let x_2704 : f32 = u_xlat9.z;
            txVec37 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec37;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat81 = x_2713;
            let x_2715 : f32 = u_xlat17.w;
            let x_2716 : f32 = u_xlat81;
            let x_2718 : f32 = u_xlat80;
            u_xlat80 = ((x_2715 * x_2716) + x_2718);
            let x_2721 : vec4<f32> = u_xlat15;
            let x_2722 : vec2<f32> = vec2<f32>(x_2721.x, x_2721.y);
            let x_2724 : f32 = u_xlat9.z;
            txVec38 = vec3<f32>(x_2722.x, x_2722.y, x_2724);
            let x_2731 : vec3<f32> = txVec38;
            let x_2733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2731.xy, x_2731.z);
            u_xlat81 = x_2733;
            let x_2735 : f32 = u_xlat18.x;
            let x_2736 : f32 = u_xlat81;
            let x_2738 : f32 = u_xlat80;
            u_xlat80 = ((x_2735 * x_2736) + x_2738);
            let x_2741 : vec4<f32> = u_xlat15;
            let x_2742 : vec2<f32> = vec2<f32>(x_2741.z, x_2741.w);
            let x_2744 : f32 = u_xlat9.z;
            txVec39 = vec3<f32>(x_2742.x, x_2742.y, x_2744);
            let x_2751 : vec3<f32> = txVec39;
            let x_2753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2751.xy, x_2751.z);
            u_xlat81 = x_2753;
            let x_2755 : f32 = u_xlat18.y;
            let x_2756 : f32 = u_xlat81;
            let x_2758 : f32 = u_xlat80;
            u_xlat80 = ((x_2755 * x_2756) + x_2758);
            let x_2761 : vec4<f32> = u_xlat13;
            let x_2762 : vec2<f32> = vec2<f32>(x_2761.z, x_2761.w);
            let x_2764 : f32 = u_xlat9.z;
            txVec40 = vec3<f32>(x_2762.x, x_2762.y, x_2764);
            let x_2771 : vec3<f32> = txVec40;
            let x_2773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2771.xy, x_2771.z);
            u_xlat81 = x_2773;
            let x_2775 : f32 = u_xlat18.z;
            let x_2776 : f32 = u_xlat81;
            let x_2778 : f32 = u_xlat80;
            u_xlat80 = ((x_2775 * x_2776) + x_2778);
            let x_2781 : vec4<f32> = u_xlat12;
            let x_2782 : vec2<f32> = vec2<f32>(x_2781.x, x_2781.y);
            let x_2784 : f32 = u_xlat9.z;
            txVec41 = vec3<f32>(x_2782.x, x_2782.y, x_2784);
            let x_2791 : vec3<f32> = txVec41;
            let x_2793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2791.xy, x_2791.z);
            u_xlat81 = x_2793;
            let x_2795 : f32 = u_xlat18.w;
            let x_2796 : f32 = u_xlat81;
            let x_2798 : f32 = u_xlat80;
            u_xlat80 = ((x_2795 * x_2796) + x_2798);
            let x_2801 : vec4<f32> = u_xlat12;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.z, x_2801.w);
            let x_2804 : f32 = u_xlat9.z;
            txVec42 = vec3<f32>(x_2802.x, x_2802.y, x_2804);
            let x_2811 : vec3<f32> = txVec42;
            let x_2813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2811.xy, x_2811.z);
            u_xlat81 = x_2813;
            let x_2814 : f32 = u_xlat79;
            let x_2815 : f32 = u_xlat81;
            let x_2817 : f32 = u_xlat80;
            u_xlat78 = ((x_2814 * x_2815) + x_2817);
          } else {
            let x_2820 : vec4<f32> = u_xlat9;
            let x_2823 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2826 : vec2<f32> = ((vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(x_2823.z, x_2823.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2827 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2826.x, x_2826.y, x_2827.z, x_2827.w);
            let x_2829 : vec4<f32> = u_xlat10;
            let x_2831 : vec2<f32> = floor(vec2<f32>(x_2829.x, x_2829.y));
            let x_2832 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
            let x_2834 : vec4<f32> = u_xlat9;
            let x_2837 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2840 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2834.x, x_2834.y) * vec2<f32>(x_2837.z, x_2837.w)) + -(vec2<f32>(x_2840.x, x_2840.y)));
            let x_2844 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2844.x, x_2844.x, x_2844.y, x_2844.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2847 : vec4<f32> = u_xlat11;
            let x_2849 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2847.x, x_2847.x, x_2847.z, x_2847.z) * vec4<f32>(x_2849.x, x_2849.x, x_2849.z, x_2849.z));
            let x_2852 : vec4<f32> = u_xlat12;
            let x_2854 : vec2<f32> = (vec2<f32>(x_2852.y, x_2852.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2855 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2855.x, x_2854.x, x_2855.z, x_2854.y);
            let x_2857 : vec4<f32> = u_xlat12;
            let x_2860 : vec2<f32> = u_xlat58;
            let x_2862 : vec2<f32> = ((vec2<f32>(x_2857.x, x_2857.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2860));
            let x_2863 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2862.x, x_2863.y, x_2862.y, x_2863.w);
            let x_2865 : vec2<f32> = u_xlat58;
            let x_2867 : vec2<f32> = (-(x_2865) + vec2<f32>(1.0f, 1.0f));
            let x_2868 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2867.x, x_2867.y, x_2868.z, x_2868.w);
            let x_2870 : vec2<f32> = u_xlat58;
            u_xlat60 = min(x_2870, vec2<f32>(0.0f, 0.0f));
            let x_2872 : vec2<f32> = u_xlat60;
            let x_2874 : vec2<f32> = u_xlat60;
            let x_2876 : vec4<f32> = u_xlat12;
            let x_2878 : vec2<f32> = ((-(x_2872) * x_2874) + vec2<f32>(x_2876.x, x_2876.y));
            let x_2879 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2878.x, x_2878.y, x_2879.z, x_2879.w);
            let x_2881 : vec2<f32> = u_xlat58;
            u_xlat60 = max(x_2881, vec2<f32>(0.0f, 0.0f));
            let x_2884 : vec2<f32> = u_xlat60;
            let x_2886 : vec2<f32> = u_xlat60;
            let x_2888 : vec4<f32> = u_xlat11;
            let x_2890 : vec2<f32> = ((-(x_2884) * x_2886) + vec2<f32>(x_2888.y, x_2888.w));
            let x_2891 : vec3<f32> = u_xlat35;
            u_xlat35 = vec3<f32>(x_2890.x, x_2891.y, x_2890.y);
            let x_2893 : vec4<f32> = u_xlat12;
            let x_2895 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.y) + vec2<f32>(2.0f, 2.0f));
            let x_2896 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec3<f32> = u_xlat35;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.x, x_2898.z) + vec2<f32>(2.0f, 2.0f));
            let x_2901 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2904 : f32 = u_xlat11.y;
            u_xlat14.z = (x_2904 * 0.08163200318813323975f);
            let x_2907 : vec4<f32> = u_xlat11;
            let x_2909 : vec3<f32> = (vec3<f32>(x_2907.z, x_2907.x, x_2907.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2910 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2910.w);
            let x_2912 : vec4<f32> = u_xlat12;
            let x_2914 : vec2<f32> = (vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2915 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2918 : f32 = u_xlat15.y;
            u_xlat14.x = x_2918;
            let x_2920 : vec2<f32> = u_xlat58;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2920.x, x_2920.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2924 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2924.x, x_2923.x, x_2924.z, x_2923.y);
            let x_2926 : vec2<f32> = u_xlat58;
            let x_2929 : vec2<f32> = ((vec2<f32>(x_2926.x, x_2926.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2930 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2929.x, x_2930.y, x_2929.y, x_2930.w);
            let x_2933 : f32 = u_xlat11.x;
            u_xlat12.y = x_2933;
            let x_2936 : f32 = u_xlat13.y;
            u_xlat12.w = x_2936;
            let x_2938 : vec4<f32> = u_xlat12;
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2938 + x_2939);
            let x_2941 : vec2<f32> = u_xlat58;
            let x_2944 : vec2<f32> = ((vec2<f32>(x_2941.y, x_2941.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2945 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2945.x, x_2944.x, x_2945.z, x_2944.y);
            let x_2947 : vec2<f32> = u_xlat58;
            let x_2950 : vec2<f32> = ((vec2<f32>(x_2947.y, x_2947.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2950.x, x_2951.y, x_2950.y, x_2951.w);
            let x_2954 : f32 = u_xlat11.y;
            u_xlat13.y = x_2954;
            let x_2956 : vec4<f32> = u_xlat13;
            let x_2957 : vec4<f32> = u_xlat15;
            u_xlat11 = (x_2956 + x_2957);
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat12 = (x_2959 / x_2960);
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2962 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2964 : vec4<f32> = u_xlat13;
            let x_2965 : vec4<f32> = u_xlat11;
            u_xlat13 = (x_2964 / x_2965);
            let x_2967 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2967 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2969 : vec4<f32> = u_xlat12;
            let x_2972 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2969.w, x_2969.x, x_2969.y, x_2969.z) * vec4<f32>(x_2972.x, x_2972.x, x_2972.x, x_2972.x));
            let x_2975 : vec4<f32> = u_xlat13;
            let x_2978 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2975.x, x_2975.w, x_2975.y, x_2975.z) * vec4<f32>(x_2978.y, x_2978.y, x_2978.y, x_2978.y));
            let x_2981 : vec4<f32> = u_xlat12;
            let x_2982 : vec3<f32> = vec3<f32>(x_2981.y, x_2981.z, x_2981.w);
            let x_2983 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2982.x, x_2983.y, x_2982.y, x_2982.z);
            let x_2986 : f32 = u_xlat13.x;
            u_xlat15.y = x_2986;
            let x_2988 : vec4<f32> = u_xlat10;
            let x_2991 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y) * vec4<f32>(x_2991.x, x_2991.y, x_2991.x, x_2991.y)) + vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2994.y));
            let x_2997 : vec4<f32> = u_xlat10;
            let x_3000 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat15;
            u_xlat58 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_3000.x, x_3000.y)) + vec2<f32>(x_3003.w, x_3003.y));
            let x_3007 : f32 = u_xlat15.y;
            u_xlat12.y = x_3007;
            let x_3010 : f32 = u_xlat13.z;
            u_xlat15.y = x_3010;
            let x_3012 : vec4<f32> = u_xlat10;
            let x_3015 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3018 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3012.x, x_3012.y, x_3012.x, x_3012.y) * vec4<f32>(x_3015.x, x_3015.y, x_3015.x, x_3015.y)) + vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3018.y));
            let x_3021 : vec4<f32> = u_xlat10;
            let x_3024 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat15;
            let x_3029 : vec2<f32> = ((vec2<f32>(x_3021.x, x_3021.y) * vec2<f32>(x_3024.x, x_3024.y)) + vec2<f32>(x_3027.w, x_3027.y));
            let x_3030 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3029.x, x_3029.y, x_3030.z, x_3030.w);
            let x_3033 : f32 = u_xlat15.y;
            u_xlat12.z = x_3033;
            let x_3036 : vec4<f32> = u_xlat10;
            let x_3039 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat12;
            u_xlat19 = ((vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.y) * vec4<f32>(x_3039.x, x_3039.y, x_3039.x, x_3039.y)) + vec4<f32>(x_3042.x, x_3042.y, x_3042.x, x_3042.z));
            let x_3046 : f32 = u_xlat13.w;
            u_xlat15.y = x_3046;
            let x_3049 : vec4<f32> = u_xlat10;
            let x_3052 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat15;
            u_xlat20 = ((vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y) * vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y)) + vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3055.y));
            let x_3059 : vec4<f32> = u_xlat10;
            let x_3062 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3065 : vec4<f32> = u_xlat15;
            u_xlat36 = ((vec2<f32>(x_3059.x, x_3059.y) * vec2<f32>(x_3062.x, x_3062.y)) + vec2<f32>(x_3065.w, x_3065.y));
            let x_3069 : f32 = u_xlat15.y;
            u_xlat12.w = x_3069;
            let x_3072 : vec4<f32> = u_xlat10;
            let x_3075 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat12;
            u_xlat66 = ((vec2<f32>(x_3072.x, x_3072.y) * vec2<f32>(x_3075.x, x_3075.y)) + vec2<f32>(x_3078.x, x_3078.w));
            let x_3081 : vec4<f32> = u_xlat15;
            let x_3082 : vec3<f32> = vec3<f32>(x_3081.x, x_3081.z, x_3081.w);
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3082.x, x_3083.y, x_3082.y, x_3082.z);
            let x_3085 : vec4<f32> = u_xlat10;
            let x_3088 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) * vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y)) + vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3091.y));
            let x_3094 : vec4<f32> = u_xlat10;
            let x_3097 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.x, x_3097.y)) + vec2<f32>(x_3100.w, x_3100.y));
            let x_3104 : f32 = u_xlat12.x;
            u_xlat13.x = x_3104;
            let x_3106 : vec4<f32> = u_xlat10;
            let x_3109 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3114 : vec2<f32> = ((vec2<f32>(x_3106.x, x_3106.y) * vec2<f32>(x_3109.x, x_3109.y)) + vec2<f32>(x_3112.x, x_3112.y));
            let x_3115 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3118 : vec4<f32> = u_xlat11;
            let x_3120 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_3118.x, x_3118.x, x_3118.x, x_3118.x) * x_3120);
            let x_3123 : vec4<f32> = u_xlat11;
            let x_3125 : vec4<f32> = u_xlat14;
            u_xlat22 = (vec4<f32>(x_3123.y, x_3123.y, x_3123.y, x_3123.y) * x_3125);
            let x_3128 : vec4<f32> = u_xlat11;
            let x_3130 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3128.z, x_3128.z, x_3128.z, x_3128.z) * x_3130);
            let x_3132 : vec4<f32> = u_xlat11;
            let x_3134 : vec4<f32> = u_xlat14;
            u_xlat11 = (vec4<f32>(x_3132.w, x_3132.w, x_3132.w, x_3132.w) * x_3134);
            let x_3137 : vec4<f32> = u_xlat16;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
            let x_3140 : f32 = u_xlat9.z;
            txVec43 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec43;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat79 = x_3149;
            let x_3151 : vec4<f32> = u_xlat16;
            let x_3152 : vec2<f32> = vec2<f32>(x_3151.z, x_3151.w);
            let x_3154 : f32 = u_xlat9.z;
            txVec44 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3161 : vec3<f32> = txVec44;
            let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
            u_xlat80 = x_3163;
            let x_3164 : f32 = u_xlat80;
            let x_3166 : f32 = u_xlat21.y;
            u_xlat80 = (x_3164 * x_3166);
            let x_3169 : f32 = u_xlat21.x;
            let x_3170 : f32 = u_xlat79;
            let x_3172 : f32 = u_xlat80;
            u_xlat79 = ((x_3169 * x_3170) + x_3172);
            let x_3175 : vec2<f32> = u_xlat58;
            let x_3177 : f32 = u_xlat9.z;
            txVec45 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec45;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat80 = x_3186;
            let x_3188 : f32 = u_xlat21.z;
            let x_3189 : f32 = u_xlat80;
            let x_3191 : f32 = u_xlat79;
            u_xlat79 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat19;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat9.z;
            txVec46 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec46;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat80 = x_3206;
            let x_3208 : f32 = u_xlat21.w;
            let x_3209 : f32 = u_xlat80;
            let x_3211 : f32 = u_xlat79;
            u_xlat79 = ((x_3208 * x_3209) + x_3211);
            let x_3214 : vec4<f32> = u_xlat17;
            let x_3215 : vec2<f32> = vec2<f32>(x_3214.x, x_3214.y);
            let x_3217 : f32 = u_xlat9.z;
            txVec47 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec47;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat80 = x_3226;
            let x_3228 : f32 = u_xlat22.x;
            let x_3229 : f32 = u_xlat80;
            let x_3231 : f32 = u_xlat79;
            u_xlat79 = ((x_3228 * x_3229) + x_3231);
            let x_3234 : vec4<f32> = u_xlat17;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat9.z;
            txVec48 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec48;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat80 = x_3246;
            let x_3248 : f32 = u_xlat22.y;
            let x_3249 : f32 = u_xlat80;
            let x_3251 : f32 = u_xlat79;
            u_xlat79 = ((x_3248 * x_3249) + x_3251);
            let x_3254 : vec4<f32> = u_xlat18;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.x, x_3254.y);
            let x_3257 : f32 = u_xlat9.z;
            txVec49 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec49;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat80 = x_3266;
            let x_3268 : f32 = u_xlat22.z;
            let x_3269 : f32 = u_xlat80;
            let x_3271 : f32 = u_xlat79;
            u_xlat79 = ((x_3268 * x_3269) + x_3271);
            let x_3274 : vec4<f32> = u_xlat19;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.z, x_3274.w);
            let x_3277 : f32 = u_xlat9.z;
            txVec50 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec50;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat80 = x_3286;
            let x_3288 : f32 = u_xlat22.w;
            let x_3289 : f32 = u_xlat80;
            let x_3291 : f32 = u_xlat79;
            u_xlat79 = ((x_3288 * x_3289) + x_3291);
            let x_3294 : vec4<f32> = u_xlat20;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat9.z;
            txVec51 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec51;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat80 = x_3306;
            let x_3308 : f32 = u_xlat23.x;
            let x_3309 : f32 = u_xlat80;
            let x_3311 : f32 = u_xlat79;
            u_xlat79 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat20;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat9.z;
            txVec52 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec52;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat80 = x_3326;
            let x_3328 : f32 = u_xlat23.y;
            let x_3329 : f32 = u_xlat80;
            let x_3331 : f32 = u_xlat79;
            u_xlat79 = ((x_3328 * x_3329) + x_3331);
            let x_3334 : vec2<f32> = u_xlat36;
            let x_3336 : f32 = u_xlat9.z;
            txVec53 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec53;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat80 = x_3345;
            let x_3347 : f32 = u_xlat23.z;
            let x_3348 : f32 = u_xlat80;
            let x_3350 : f32 = u_xlat79;
            u_xlat79 = ((x_3347 * x_3348) + x_3350);
            let x_3353 : vec2<f32> = u_xlat66;
            let x_3355 : f32 = u_xlat9.z;
            txVec54 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec54;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat80 = x_3364;
            let x_3366 : f32 = u_xlat23.w;
            let x_3367 : f32 = u_xlat80;
            let x_3369 : f32 = u_xlat79;
            u_xlat79 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat15;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
            let x_3375 : f32 = u_xlat9.z;
            txVec55 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec55;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat80 = x_3384;
            let x_3386 : f32 = u_xlat11.x;
            let x_3387 : f32 = u_xlat80;
            let x_3389 : f32 = u_xlat79;
            u_xlat79 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat15;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.z, x_3392.w);
            let x_3395 : f32 = u_xlat9.z;
            txVec56 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec56;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat80 = x_3404;
            let x_3406 : f32 = u_xlat11.y;
            let x_3407 : f32 = u_xlat80;
            let x_3409 : f32 = u_xlat79;
            u_xlat79 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec2<f32> = u_xlat61;
            let x_3414 : f32 = u_xlat9.z;
            txVec57 = vec3<f32>(x_3412.x, x_3412.y, x_3414);
            let x_3421 : vec3<f32> = txVec57;
            let x_3423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3421.xy, x_3421.z);
            u_xlat80 = x_3423;
            let x_3425 : f32 = u_xlat11.z;
            let x_3426 : f32 = u_xlat80;
            let x_3428 : f32 = u_xlat79;
            u_xlat79 = ((x_3425 * x_3426) + x_3428);
            let x_3431 : vec4<f32> = u_xlat10;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
            let x_3434 : f32 = u_xlat9.z;
            txVec58 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec58;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat80 = x_3443;
            let x_3445 : f32 = u_xlat11.w;
            let x_3446 : f32 = u_xlat80;
            let x_3448 : f32 = u_xlat79;
            u_xlat78 = ((x_3445 * x_3446) + x_3448);
          }
        }
      } else {
        let x_3452 : vec4<f32> = u_xlat9;
        let x_3453 : vec2<f32> = vec2<f32>(x_3452.x, x_3452.y);
        let x_3455 : f32 = u_xlat9.z;
        txVec59 = vec3<f32>(x_3453.x, x_3453.y, x_3455);
        let x_3462 : vec3<f32> = txVec59;
        let x_3464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3462.xy, x_3462.z);
        u_xlat78 = x_3464;
      }
      let x_3465 : i32 = u_xlati77;
      let x_3467 : f32 = x_476.x_AdditionalShadowParams[x_3465].x;
      u_xlat79 = (1.0f + -(x_3467));
      let x_3470 : f32 = u_xlat78;
      let x_3471 : i32 = u_xlati77;
      let x_3473 : f32 = x_476.x_AdditionalShadowParams[x_3471].x;
      let x_3475 : f32 = u_xlat79;
      u_xlat78 = ((x_3470 * x_3473) + x_3475);
      let x_3478 : f32 = u_xlat9.z;
      u_xlatb79 = (0.0f >= x_3478);
      let x_3482 : f32 = u_xlat9.z;
      u_xlatb80 = (x_3482 >= 1.0f);
      let x_3484 : bool = u_xlatb79;
      let x_3485 : bool = u_xlatb80;
      u_xlatb79 = (x_3484 | x_3485);
      let x_3487 : bool = u_xlatb79;
      let x_3488 : f32 = u_xlat78;
      u_xlat78 = select(x_3488, 1.0f, x_3487);
    } else {
      u_xlat78 = 1.0f;
    }
    let x_3491 : f32 = u_xlat78;
    u_xlat79 = (-(x_3491) + 1.0f);
    let x_3494 : f32 = u_xlat74;
    let x_3495 : f32 = u_xlat79;
    let x_3497 : f32 = u_xlat78;
    u_xlat78 = ((x_3494 * x_3495) + x_3497);
    let x_3500 : i32 = u_xlati77;
    u_xlati79 = (1i << bitcast<u32>((x_3500 & 31i)));
    let x_3504 : i32 = u_xlati79;
    let x_3507 : f32 = x_1759.x_AdditionalLightsCookieEnableBits;
    u_xlati79 = bitcast<i32>((bitcast<u32>(x_3504) & bitcast<u32>(x_3507)));
    let x_3511 : i32 = u_xlati79;
    if ((x_3511 != 0i)) {
      let x_3515 : i32 = u_xlati77;
      let x_3517 : f32 = x_1759.x_AdditionalLightsLightTypes[x_3515].el;
      u_xlati79 = i32(x_3517);
      let x_3520 : i32 = u_xlati79;
      u_xlati80 = select(1i, 0i, (x_3520 != 0i));
      let x_3524 : i32 = u_xlati77;
      u_xlati9 = (x_3524 << bitcast<u32>(2i));
      let x_3526 : i32 = u_xlati80;
      if ((x_3526 != 0i)) {
        let x_3531 : vec3<f32> = vs_TEXCOORD1;
        let x_3533 : i32 = u_xlati9;
        let x_3536 : i32 = u_xlati9;
        let x_3540 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3533 + 1i) / 4i)][((x_3536 + 1i) % 4i)];
        u_xlat33 = (vec3<f32>(x_3531.y, x_3531.y, x_3531.y) * vec3<f32>(x_3540.x, x_3540.y, x_3540.w));
        let x_3543 : i32 = u_xlati9;
        let x_3545 : i32 = u_xlati9;
        let x_3548 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[(x_3543 / 4i)][(x_3545 % 4i)];
        let x_3550 : vec3<f32> = vs_TEXCOORD1;
        let x_3553 : vec3<f32> = u_xlat33;
        u_xlat33 = ((vec3<f32>(x_3548.x, x_3548.y, x_3548.w) * vec3<f32>(x_3550.x, x_3550.x, x_3550.x)) + x_3553);
        let x_3555 : i32 = u_xlati9;
        let x_3558 : i32 = u_xlati9;
        let x_3562 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3555 + 2i) / 4i)][((x_3558 + 2i) % 4i)];
        let x_3564 : vec3<f32> = vs_TEXCOORD1;
        let x_3567 : vec3<f32> = u_xlat33;
        u_xlat33 = ((vec3<f32>(x_3562.x, x_3562.y, x_3562.w) * vec3<f32>(x_3564.z, x_3564.z, x_3564.z)) + x_3567);
        let x_3569 : vec3<f32> = u_xlat33;
        let x_3570 : i32 = u_xlati9;
        let x_3573 : i32 = u_xlati9;
        let x_3577 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3570 + 3i) / 4i)][((x_3573 + 3i) % 4i)];
        u_xlat33 = (x_3569 + vec3<f32>(x_3577.x, x_3577.y, x_3577.w));
        let x_3580 : vec3<f32> = u_xlat33;
        let x_3582 : vec3<f32> = u_xlat33;
        let x_3584 : vec2<f32> = (vec2<f32>(x_3580.x, x_3580.y) / vec2<f32>(x_3582.z, x_3582.z));
        let x_3585 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3584.x, x_3584.y, x_3585.z);
        let x_3587 : vec3<f32> = u_xlat33;
        let x_3590 : vec2<f32> = ((vec2<f32>(x_3587.x, x_3587.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3591 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3590.x, x_3590.y, x_3591.z);
        let x_3593 : vec3<f32> = u_xlat33;
        let x_3597 : vec2<f32> = clamp(vec2<f32>(x_3593.x, x_3593.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3598 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3597.x, x_3597.y, x_3598.z);
        let x_3600 : i32 = u_xlati77;
        let x_3602 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3600];
        let x_3604 : vec3<f32> = u_xlat33;
        let x_3607 : i32 = u_xlati77;
        let x_3609 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3607];
        let x_3611 : vec2<f32> = ((vec2<f32>(x_3602.x, x_3602.y) * vec2<f32>(x_3604.x, x_3604.y)) + vec2<f32>(x_3609.z, x_3609.w));
        let x_3612 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3611.x, x_3611.y, x_3612.z);
      } else {
        let x_3615 : i32 = u_xlati79;
        u_xlatb79 = (x_3615 == 1i);
        let x_3617 : bool = u_xlatb79;
        u_xlati79 = select(0i, 1i, x_3617);
        let x_3619 : i32 = u_xlati79;
        if ((x_3619 != 0i)) {
          let x_3623 : vec3<f32> = vs_TEXCOORD1;
          let x_3625 : i32 = u_xlati9;
          let x_3628 : i32 = u_xlati9;
          let x_3632 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3625 + 1i) / 4i)][((x_3628 + 1i) % 4i)];
          let x_3634 : vec2<f32> = (vec2<f32>(x_3623.y, x_3623.y) * vec2<f32>(x_3632.x, x_3632.y));
          let x_3635 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3634.x, x_3634.y, x_3635.z, x_3635.w);
          let x_3637 : i32 = u_xlati9;
          let x_3639 : i32 = u_xlati9;
          let x_3642 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[(x_3637 / 4i)][(x_3639 % 4i)];
          let x_3644 : vec3<f32> = vs_TEXCOORD1;
          let x_3647 : vec4<f32> = u_xlat10;
          let x_3649 : vec2<f32> = ((vec2<f32>(x_3642.x, x_3642.y) * vec2<f32>(x_3644.x, x_3644.x)) + vec2<f32>(x_3647.x, x_3647.y));
          let x_3650 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
          let x_3652 : i32 = u_xlati9;
          let x_3655 : i32 = u_xlati9;
          let x_3659 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3652 + 2i) / 4i)][((x_3655 + 2i) % 4i)];
          let x_3661 : vec3<f32> = vs_TEXCOORD1;
          let x_3664 : vec4<f32> = u_xlat10;
          let x_3666 : vec2<f32> = ((vec2<f32>(x_3659.x, x_3659.y) * vec2<f32>(x_3661.z, x_3661.z)) + vec2<f32>(x_3664.x, x_3664.y));
          let x_3667 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3666.x, x_3666.y, x_3667.z, x_3667.w);
          let x_3669 : vec4<f32> = u_xlat10;
          let x_3671 : i32 = u_xlati9;
          let x_3674 : i32 = u_xlati9;
          let x_3678 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3671 + 3i) / 4i)][((x_3674 + 3i) % 4i)];
          let x_3680 : vec2<f32> = (vec2<f32>(x_3669.x, x_3669.y) + vec2<f32>(x_3678.x, x_3678.y));
          let x_3681 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3680.x, x_3680.y, x_3681.z, x_3681.w);
          let x_3683 : vec4<f32> = u_xlat10;
          let x_3686 : vec2<f32> = ((vec2<f32>(x_3683.x, x_3683.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3687 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3686.x, x_3686.y, x_3687.z, x_3687.w);
          let x_3689 : vec4<f32> = u_xlat10;
          let x_3691 : vec2<f32> = fract(vec2<f32>(x_3689.x, x_3689.y));
          let x_3692 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3691.x, x_3691.y, x_3692.z, x_3692.w);
          let x_3694 : i32 = u_xlati77;
          let x_3696 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3694];
          let x_3698 : vec4<f32> = u_xlat10;
          let x_3701 : i32 = u_xlati77;
          let x_3703 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3701];
          let x_3705 : vec2<f32> = ((vec2<f32>(x_3696.x, x_3696.y) * vec2<f32>(x_3698.x, x_3698.y)) + vec2<f32>(x_3703.z, x_3703.w));
          let x_3706 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_3705.x, x_3705.y, x_3706.z);
        } else {
          let x_3709 : vec3<f32> = vs_TEXCOORD1;
          let x_3711 : i32 = u_xlati9;
          let x_3714 : i32 = u_xlati9;
          let x_3718 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3711 + 1i) / 4i)][((x_3714 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3709.y, x_3709.y, x_3709.y, x_3709.y) * x_3718);
          let x_3720 : i32 = u_xlati9;
          let x_3722 : i32 = u_xlati9;
          let x_3725 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[(x_3720 / 4i)][(x_3722 % 4i)];
          let x_3726 : vec3<f32> = vs_TEXCOORD1;
          let x_3729 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3725 * vec4<f32>(x_3726.x, x_3726.x, x_3726.x, x_3726.x)) + x_3729);
          let x_3731 : i32 = u_xlati9;
          let x_3734 : i32 = u_xlati9;
          let x_3738 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3731 + 2i) / 4i)][((x_3734 + 2i) % 4i)];
          let x_3739 : vec3<f32> = vs_TEXCOORD1;
          let x_3742 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3738 * vec4<f32>(x_3739.z, x_3739.z, x_3739.z, x_3739.z)) + x_3742);
          let x_3744 : vec4<f32> = u_xlat10;
          let x_3745 : i32 = u_xlati9;
          let x_3748 : i32 = u_xlati9;
          let x_3752 : vec4<f32> = x_1759.x_AdditionalLightsWorldToLights[((x_3745 + 3i) / 4i)][((x_3748 + 3i) % 4i)];
          u_xlat10 = (x_3744 + x_3752);
          let x_3754 : vec4<f32> = u_xlat10;
          let x_3756 : vec4<f32> = u_xlat10;
          let x_3758 : vec3<f32> = (vec3<f32>(x_3754.x, x_3754.y, x_3754.z) / vec3<f32>(x_3756.w, x_3756.w, x_3756.w));
          let x_3759 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3758.x, x_3758.y, x_3758.z, x_3759.w);
          let x_3761 : vec4<f32> = u_xlat10;
          let x_3763 : vec4<f32> = u_xlat10;
          u_xlat79 = dot(vec3<f32>(x_3761.x, x_3761.y, x_3761.z), vec3<f32>(x_3763.x, x_3763.y, x_3763.z));
          let x_3766 : f32 = u_xlat79;
          u_xlat79 = inverseSqrt(x_3766);
          let x_3768 : f32 = u_xlat79;
          let x_3770 : vec4<f32> = u_xlat10;
          let x_3772 : vec3<f32> = (vec3<f32>(x_3768, x_3768, x_3768) * vec3<f32>(x_3770.x, x_3770.y, x_3770.z));
          let x_3773 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3772.x, x_3772.y, x_3772.z, x_3773.w);
          let x_3775 : vec4<f32> = u_xlat10;
          u_xlat79 = dot(abs(vec3<f32>(x_3775.x, x_3775.y, x_3775.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3780 : f32 = u_xlat79;
          u_xlat79 = max(x_3780, 0.00000099999999747524f);
          let x_3783 : f32 = u_xlat79;
          u_xlat79 = (1.0f / x_3783);
          let x_3785 : f32 = u_xlat79;
          let x_3787 : vec4<f32> = u_xlat10;
          let x_3789 : vec3<f32> = (vec3<f32>(x_3785, x_3785, x_3785) * vec3<f32>(x_3787.z, x_3787.x, x_3787.y));
          let x_3790 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3790.w);
          let x_3793 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_3793);
          let x_3797 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_3797, 0.0f, 1.0f);
          let x_3800 : vec4<f32> = u_xlat11;
          let x_3802 : vec4<bool> = (vec4<f32>(x_3800.y, x_3800.y, x_3800.y, x_3800.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3803 : vec2<bool> = vec2<bool>(x_3802.x, x_3802.w);
          let x_3804 : vec4<bool> = u_xlatb9;
          u_xlatb9 = vec4<bool>(x_3803.x, x_3804.y, x_3804.z, x_3803.y);
          let x_3807 : bool = u_xlatb9.x;
          if (x_3807) {
            let x_3812 : f32 = u_xlat11.x;
            x_3808 = x_3812;
          } else {
            let x_3815 : f32 = u_xlat11.x;
            x_3808 = -(x_3815);
          }
          let x_3817 : f32 = x_3808;
          u_xlat9.x = x_3817;
          let x_3820 : bool = u_xlatb9.w;
          if (x_3820) {
            let x_3825 : f32 = u_xlat11.x;
            x_3821 = x_3825;
          } else {
            let x_3828 : f32 = u_xlat11.x;
            x_3821 = -(x_3828);
          }
          let x_3830 : f32 = x_3821;
          u_xlat9.w = x_3830;
          let x_3832 : vec4<f32> = u_xlat10;
          let x_3834 : f32 = u_xlat79;
          let x_3837 : vec4<f32> = u_xlat9;
          let x_3839 : vec2<f32> = ((vec2<f32>(x_3832.x, x_3832.y) * vec2<f32>(x_3834, x_3834)) + vec2<f32>(x_3837.x, x_3837.w));
          let x_3840 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3839.x, x_3840.y, x_3840.z, x_3839.y);
          let x_3842 : vec4<f32> = u_xlat9;
          let x_3845 : vec2<f32> = ((vec2<f32>(x_3842.x, x_3842.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3846 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3845.x, x_3846.y, x_3846.z, x_3845.y);
          let x_3848 : vec4<f32> = u_xlat9;
          let x_3852 : vec2<f32> = clamp(vec2<f32>(x_3848.x, x_3848.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3853 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3852.x, x_3853.y, x_3853.z, x_3852.y);
          let x_3855 : i32 = u_xlati77;
          let x_3857 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3855];
          let x_3859 : vec4<f32> = u_xlat9;
          let x_3862 : i32 = u_xlati77;
          let x_3864 : vec4<f32> = x_1759.x_AdditionalLightsCookieAtlasUVRects[x_3862];
          let x_3866 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.y) * vec2<f32>(x_3859.x, x_3859.w)) + vec2<f32>(x_3864.z, x_3864.w));
          let x_3867 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_3866.x, x_3866.y, x_3867.z);
        }
      }
      let x_3874 : vec3<f32> = u_xlat33;
      let x_3876 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3874.x, x_3874.y), 0.0f);
      u_xlat9 = x_3876;
      let x_3878 : bool = u_xlatb6.y;
      if (x_3878) {
        let x_3883 : f32 = u_xlat9.w;
        x_3879 = x_3883;
      } else {
        let x_3886 : f32 = u_xlat9.x;
        x_3879 = x_3886;
      }
      let x_3887 : f32 = x_3879;
      u_xlat79 = x_3887;
      let x_3889 : bool = u_xlatb6.x;
      if (x_3889) {
        let x_3893 : vec4<f32> = u_xlat9;
        x_3890 = vec3<f32>(x_3893.x, x_3893.y, x_3893.z);
      } else {
        let x_3896 : f32 = u_xlat79;
        x_3890 = vec3<f32>(x_3896, x_3896, x_3896);
      }
      let x_3898 : vec3<f32> = x_3890;
      let x_3899 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_3905 : vec4<f32> = u_xlat9;
    let x_3907 : i32 = u_xlati77;
    let x_3909 : vec4<f32> = x_2077.x_AdditionalLightsColor[x_3907];
    let x_3911 : vec3<f32> = (vec3<f32>(x_3905.x, x_3905.y, x_3905.z) * vec3<f32>(x_3909.x, x_3909.y, x_3909.z));
    let x_3912 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3911.x, x_3911.y, x_3911.z, x_3912.w);
    let x_3914 : f32 = u_xlat78;
    let x_3915 : f32 = u_xlat54;
    u_xlat77 = (x_3914 * x_3915);
    let x_3917 : f32 = u_xlat77;
    let x_3919 : vec4<f32> = u_xlat9;
    let x_3921 : vec3<f32> = (vec3<f32>(x_3917, x_3917, x_3917) * vec3<f32>(x_3919.x, x_3919.y, x_3919.z));
    let x_3922 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3921.x, x_3921.y, x_3921.z, x_3922.w);
    let x_3924 : vec4<f32> = u_xlat2;
    let x_3926 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_3924.x, x_3924.y, x_3924.z), vec3<f32>(x_3926.x, x_3926.y, x_3926.z));
    let x_3929 : f32 = u_xlat77;
    u_xlat77 = clamp(x_3929, 0.0f, 1.0f);
    let x_3931 : f32 = u_xlat77;
    let x_3933 : vec4<f32> = u_xlat9;
    let x_3935 : vec3<f32> = (vec3<f32>(x_3931, x_3931, x_3931) * vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
    let x_3936 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
    let x_3938 : vec3<f32> = u_xlat3;
    let x_3939 : vec3<f32> = u_xlat24;
    let x_3942 : vec4<f32> = u_xlat8;
    let x_3944 : vec3<f32> = ((x_3938 * vec3<f32>(x_3939.x, x_3939.x, x_3939.x)) + vec3<f32>(x_3942.x, x_3942.y, x_3942.z));
    let x_3945 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
    let x_3947 : vec4<f32> = u_xlat8;
    let x_3949 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_3947.x, x_3947.y, x_3947.z), vec3<f32>(x_3949.x, x_3949.y, x_3949.z));
    let x_3952 : f32 = u_xlat77;
    u_xlat77 = max(x_3952, 1.17549435e-38f);
    let x_3954 : f32 = u_xlat77;
    u_xlat77 = inverseSqrt(x_3954);
    let x_3956 : f32 = u_xlat77;
    let x_3958 : vec4<f32> = u_xlat8;
    let x_3960 : vec3<f32> = (vec3<f32>(x_3956, x_3956, x_3956) * vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
    let x_3961 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3960.x, x_3960.y, x_3960.z, x_3961.w);
    let x_3963 : vec4<f32> = u_xlat2;
    let x_3965 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_3963.x, x_3963.y, x_3963.z), vec3<f32>(x_3965.x, x_3965.y, x_3965.z));
    let x_3968 : f32 = u_xlat77;
    u_xlat77 = clamp(x_3968, 0.0f, 1.0f);
    let x_3970 : f32 = u_xlat77;
    u_xlat77 = log2(x_3970);
    let x_3973 : f32 = u_xlat1.x;
    let x_3974 : f32 = u_xlat77;
    u_xlat77 = (x_3973 * x_3974);
    let x_3976 : f32 = u_xlat77;
    u_xlat77 = exp2(x_3976);
    let x_3978 : f32 = u_xlat77;
    let x_3981 : vec4<f32> = x_58.x_SpecColor;
    let x_3983 : vec3<f32> = (vec3<f32>(x_3978, x_3978, x_3978) * vec3<f32>(x_3981.x, x_3981.y, x_3981.z));
    let x_3984 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3983.x, x_3983.y, x_3983.z, x_3984.w);
    let x_3986 : vec4<f32> = u_xlat8;
    let x_3988 : vec4<f32> = u_xlat9;
    let x_3990 : vec3<f32> = (vec3<f32>(x_3986.x, x_3986.y, x_3986.z) * vec3<f32>(x_3988.x, x_3988.y, x_3988.z));
    let x_3991 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
    let x_3993 : vec4<f32> = u_xlat10;
    let x_3995 : vec4<f32> = u_xlat1;
    let x_3998 : vec4<f32> = u_xlat8;
    let x_4000 : vec3<f32> = ((vec3<f32>(x_3993.x, x_3993.y, x_3993.z) * vec3<f32>(x_3995.y, x_3995.z, x_3995.w)) + vec3<f32>(x_3998.x, x_3998.y, x_3998.z));
    let x_4001 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4000.x, x_4000.y, x_4000.z, x_4001.w);
    let x_4003 : vec4<f32> = u_xlat7;
    let x_4005 : vec4<f32> = u_xlat8;
    let x_4007 : vec3<f32> = (vec3<f32>(x_4003.x, x_4003.y, x_4003.z) + vec3<f32>(x_4005.x, x_4005.y, x_4005.z));
    let x_4008 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4007.x, x_4007.y, x_4007.z, x_4008.w);

    continuing {
      let x_4010 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4010 + bitcast<u32>(1i));
    }
  }
  let x_4012 : vec3<f32> = u_xlat4;
  let x_4013 : vec4<f32> = u_xlat1;
  let x_4016 : vec4<f32> = u_xlat5;
  let x_4018 : vec3<f32> = ((x_4012 * vec3<f32>(x_4013.y, x_4013.z, x_4013.w)) + vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
  let x_4019 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_4018.x, x_4018.y, x_4018.z, x_4019.w);
  let x_4021 : vec4<f32> = u_xlat7;
  let x_4023 : vec4<f32> = u_xlat1;
  let x_4025 : vec3<f32> = (vec3<f32>(x_4021.x, x_4021.y, x_4021.z) + vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
  let x_4026 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_4025.x, x_4025.y, x_4025.z, x_4026.w);
  let x_4028 : f32 = u_xlat72;
  let x_4029 : f32 = u_xlat72;
  u_xlat24.x = (x_4028 * -(x_4029));
  let x_4034 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_4034);
  let x_4037 : vec4<f32> = u_xlat1;
  let x_4040 : vec4<f32> = x_45.unity_FogColor;
  let x_4043 : vec3<f32> = (vec3<f32>(x_4037.x, x_4037.y, x_4037.z) + -(vec3<f32>(x_4040.x, x_4040.y, x_4040.z)));
  let x_4044 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_4043.x, x_4043.y, x_4043.z, x_4044.w);
  let x_4048 : vec3<f32> = u_xlat24;
  let x_4050 : vec4<f32> = u_xlat1;
  let x_4054 : vec4<f32> = x_45.unity_FogColor;
  let x_4056 : vec3<f32> = ((vec3<f32>(x_4048.x, x_4048.x, x_4048.x) * vec3<f32>(x_4050.x, x_4050.y, x_4050.z)) + vec3<f32>(x_4054.x, x_4054.y, x_4054.z));
  let x_4057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
  let x_4060 : f32 = x_58.x_Surface;
  u_xlatb24 = (x_4060 == 1.0f);
  let x_4062 : bool = u_xlatb24;
  let x_4063 : bool = u_xlatb48;
  u_xlatb24 = (x_4062 | x_4063);
  let x_4065 : bool = u_xlatb24;
  if (x_4065) {
    let x_4070 : f32 = u_xlat0.x;
    x_4066 = x_4070;
  } else {
    x_4066 = 1.0f;
  }
  let x_4072 : f32 = x_4066;
  SV_Target0.w = x_4072;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


