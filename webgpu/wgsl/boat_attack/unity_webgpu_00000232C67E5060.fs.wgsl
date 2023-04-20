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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb69 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_377 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(5) var<uniform> x_1682 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_1929 : AdditionalLights;

var<private> u_xlat73 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb74 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat75 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatb51 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb75 : bool;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlati76 : i32;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatb72 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
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
  var x_1767 : f32;
  var x_1778 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2069 : f32;
  var x_2079 : f32;
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
  var x_3654 : f32;
  var x_3667 : f32;
  var x_3715 : f32;
  var x_3726 : vec3<f32>;
  var x_3842 : f32;
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
  u_xlat23.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat69;
  let x_108 : f32 = u_xlat46;
  u_xlat46 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat46;
  u_xlat46 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat23.x;
  let x_116 : f32 = u_xlat46;
  u_xlat23.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat23.x;
  u_xlat23.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb46;
  if (x_132) {
    let x_137 : f32 = u_xlat23.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat23.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat23.x;
  u_xlatb23 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb23;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat23;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat23.x = x_178.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb69 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb69;
  if (x_191) {
    let x_196 : f32 = u_xlat23.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat23.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat23.x = x_203;
  let x_206 : f32 = u_xlat23.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat23.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat23.x;
  u_xlatb23 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb23;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat23;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_242 : f32 = vs_TEXCOORD1.y;
  let x_245 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat23.x = (x_242 * x_245);
  let x_249 : f32 = x_45.unity_MatrixV[0i].z;
  let x_251 : f32 = vs_TEXCOORD1.x;
  let x_254 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_249 * x_251) + x_254);
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  let x_260 : f32 = vs_TEXCOORD1.z;
  let x_263 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_258 * x_260) + x_263);
  let x_267 : f32 = u_xlat23.x;
  let x_270 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat23.x = (x_267 + x_270);
  let x_274 : f32 = u_xlat23.x;
  let x_278 : f32 = x_45.x_ProjectionParams.y;
  u_xlat23.x = (-(x_274) + -(x_278));
  let x_283 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_283, 0.0f);
  let x_287 : f32 = u_xlat23.x;
  let x_290 : f32 = x_45.unity_FogParams.x;
  u_xlat23.x = (x_287 * x_290);
  u_xlat2.w = 1.0f;
  let x_297 : vec4<f32> = x_186.unity_SHAr;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_186.unity_SHAg;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_186.unity_SHAb;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_309, x_310);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_314.y, x_314.z, x_314.z, x_314.x) * vec4<f32>(x_316.x, x_316.y, x_316.z, x_316.z));
  let x_322 : vec4<f32> = x_186.unity_SHBr;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_186.unity_SHBg;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_328, x_329);
  let x_334 : vec4<f32> = x_186.unity_SHBb;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_334, x_335);
  let x_339 : f32 = u_xlat2.y;
  let x_341 : f32 = u_xlat2.y;
  u_xlat69 = (x_339 * x_341);
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat2.x;
  let x_348 : f32 = u_xlat69;
  u_xlat69 = ((x_344 * x_346) + -(x_348));
  let x_353 : vec4<f32> = x_186.unity_SHC;
  let x_355 : f32 = u_xlat69;
  let x_358 : vec4<f32> = u_xlat5;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355, x_355, x_355)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = u_xlat3;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_363 + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_367, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_380 : f32 = x_377.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_380);
  let x_382 : bool = u_xlatb69;
  if (x_382) {
    let x_386 : f32 = x_377.x_MainLightShadowParams.y;
    u_xlatb69 = (x_386 == 1.0f);
    let x_388 : bool = u_xlatb69;
    if (x_388) {
      let x_392 : vec4<f32> = vs_TEXCOORD6;
      let x_395 : vec4<f32> = x_377.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_392.x, x_392.y, x_392.x, x_392.y) + x_395);
      let x_399 : vec4<f32> = u_xlat4;
      let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
      let x_402 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_400.x, x_400.y, x_402);
      let x_414 : vec3<f32> = txVec0;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_414.xy, x_414.z);
      u_xlat5.x = x_416;
      let x_419 : vec4<f32> = u_xlat4;
      let x_420 : vec2<f32> = vec2<f32>(x_419.z, x_419.w);
      let x_422 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_420.x, x_420.y, x_422);
      let x_429 : vec3<f32> = txVec1;
      let x_431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_429.xy, x_429.z);
      u_xlat5.y = x_431;
      let x_433 : vec4<f32> = vs_TEXCOORD6;
      let x_436 : vec4<f32> = x_377.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_433.x, x_433.y, x_433.x, x_433.y) + x_436);
      let x_439 : vec4<f32> = u_xlat4;
      let x_440 : vec2<f32> = vec2<f32>(x_439.x, x_439.y);
      let x_442 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_440.x, x_440.y, x_442);
      let x_449 : vec3<f32> = txVec2;
      let x_451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_449.xy, x_449.z);
      u_xlat5.z = x_451;
      let x_454 : vec4<f32> = u_xlat4;
      let x_455 : vec2<f32> = vec2<f32>(x_454.z, x_454.w);
      let x_457 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_455.x, x_455.y, x_457);
      let x_464 : vec3<f32> = txVec3;
      let x_466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_464.xy, x_464.z);
      u_xlat5.w = x_466;
      let x_468 : vec4<f32> = u_xlat5;
      u_xlat69 = dot(x_468, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_475 : f32 = x_377.x_MainLightShadowParams.y;
      u_xlatb1 = (x_475 == 2.0f);
      let x_478 : bool = u_xlatb1;
      if (x_478) {
        let x_481 : vec4<f32> = vs_TEXCOORD6;
        let x_484 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_488 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_484.z, x_484.w)) + vec2<f32>(0.5f, 0.5f));
        let x_489 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
        let x_491 : vec4<f32> = u_xlat4;
        let x_493 : vec2<f32> = floor(vec2<f32>(x_491.x, x_491.y));
        let x_494 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_498 : vec4<f32> = vs_TEXCOORD6;
        let x_501 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_504 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_501.z, x_501.w)) + -(vec2<f32>(x_504.x, x_504.y)));
        let x_508 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_508.x, x_508.x, x_508.y, x_508.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_513 : vec4<f32> = u_xlat5;
        let x_515 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_513.x, x_513.x, x_513.z, x_513.z) * vec4<f32>(x_515.x, x_515.x, x_515.z, x_515.z));
        let x_518 : vec4<f32> = u_xlat6;
        let x_522 : vec2<f32> = (vec2<f32>(x_518.y, x_518.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_523 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_522.x, x_523.y, x_522.y, x_523.w);
        let x_525 : vec4<f32> = u_xlat6;
        let x_528 : vec2<f32> = u_xlat50;
        let x_530 : vec2<f32> = ((vec2<f32>(x_525.x, x_525.z) * vec2<f32>(0.5f, 0.5f)) + -(x_528));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_534) + vec2<f32>(1.0f, 1.0f));
        let x_539 : vec2<f32> = u_xlat50;
        let x_541 : vec2<f32> = min(x_539, vec2<f32>(0.0f, 0.0f));
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat7;
        let x_547 : vec4<f32> = u_xlat7;
        let x_550 : vec2<f32> = u_xlat52;
        let x_551 : vec2<f32> = ((-(vec2<f32>(x_544.x, x_544.y)) * vec2<f32>(x_547.x, x_547.y)) + x_550);
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_554, vec2<f32>(0.0f, 0.0f));
        let x_556 : vec2<f32> = u_xlat50;
        let x_558 : vec2<f32> = u_xlat50;
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_556) * x_558) + vec2<f32>(x_560.y, x_560.w));
        let x_563 : vec4<f32> = u_xlat7;
        let x_565 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) + vec2<f32>(1.0f, 1.0f));
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_568 + vec2<f32>(1.0f, 1.0f));
        let x_571 : vec4<f32> = u_xlat6;
        let x_575 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec2<f32> = u_xlat52;
        let x_579 : vec2<f32> = (x_578 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_584 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_588 : vec2<f32> = u_xlat50;
        let x_589 : vec2<f32> = (x_588 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_590 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_592.y, x_592.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_596 : f32 = u_xlat7.x;
        u_xlat8.z = x_596;
        let x_599 : f32 = u_xlat50.x;
        u_xlat8.w = x_599;
        let x_602 : f32 = u_xlat9.x;
        u_xlat6.z = x_602;
        let x_605 : f32 = u_xlat5.x;
        u_xlat6.w = x_605;
        let x_608 : vec4<f32> = u_xlat6;
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_608.z, x_608.w, x_608.x, x_608.z) + vec4<f32>(x_610.z, x_610.w, x_610.x, x_610.z));
        let x_614 : f32 = u_xlat8.y;
        u_xlat7.z = x_614;
        let x_617 : f32 = u_xlat50.y;
        u_xlat7.w = x_617;
        let x_620 : f32 = u_xlat6.y;
        u_xlat9.z = x_620;
        let x_623 : f32 = u_xlat5.z;
        u_xlat9.w = x_623;
        let x_625 : vec4<f32> = u_xlat7;
        let x_627 : vec4<f32> = u_xlat9;
        let x_629 : vec3<f32> = (vec3<f32>(x_625.z, x_625.y, x_625.w) + vec3<f32>(x_627.z, x_627.y, x_627.w));
        let x_630 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat6;
        let x_634 : vec4<f32> = u_xlat10;
        let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.z, x_632.w) / vec3<f32>(x_634.z, x_634.w, x_634.y));
        let x_637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat6;
        let x_645 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat9;
        let x_650 : vec4<f32> = u_xlat5;
        let x_652 : vec3<f32> = (vec3<f32>(x_648.z, x_648.y, x_648.w) / vec3<f32>(x_650.x, x_650.y, x_650.z));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat7;
        let x_657 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
        let x_660 : vec4<f32> = u_xlat6;
        let x_663 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_665 : vec3<f32> = (vec3<f32>(x_660.y, x_660.x, x_660.z) * vec3<f32>(x_663.x, x_663.x, x_663.x));
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat7;
        let x_671 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_673 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_671.y, x_671.y, x_671.y));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
        let x_677 : f32 = u_xlat7.x;
        u_xlat6.w = x_677;
        let x_679 : vec4<f32> = u_xlat4;
        let x_682 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y) * vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.y)) + vec4<f32>(x_685.y, x_685.w, x_685.x, x_685.w));
        let x_688 : vec4<f32> = u_xlat4;
        let x_691 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_688.x, x_688.y) * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_694.z, x_694.w));
        let x_698 : f32 = u_xlat6.y;
        u_xlat7.w = x_698;
        let x_700 : vec4<f32> = u_xlat7;
        let x_701 : vec2<f32> = vec2<f32>(x_700.y, x_700.z);
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_702.x, x_701.x, x_702.z, x_701.y);
        let x_704 : vec4<f32> = u_xlat4;
        let x_707 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.x, x_710.y, x_710.z, x_710.y));
        let x_713 : vec4<f32> = u_xlat4;
        let x_716 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.w, x_719.y, x_719.w, x_719.z));
        let x_722 : vec4<f32> = u_xlat4;
        let x_725 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y) * vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.y)) + vec4<f32>(x_728.x, x_728.w, x_728.z, x_728.w));
        let x_732 : vec4<f32> = u_xlat5;
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_732.x, x_732.x, x_732.x, x_732.y) * vec4<f32>(x_734.z, x_734.w, x_734.y, x_734.z));
        let x_738 : vec4<f32> = u_xlat5;
        let x_740 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_738.y, x_738.y, x_738.z, x_738.z) * x_740);
        let x_743 : f32 = u_xlat5.z;
        let x_745 : f32 = u_xlat10.y;
        u_xlat1.x = (x_743 * x_745);
        let x_749 : vec4<f32> = u_xlat8;
        let x_750 : vec2<f32> = vec2<f32>(x_749.x, x_749.y);
        let x_752 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_760 : vec3<f32> = txVec4;
        let x_762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_760.xy, x_760.z);
        u_xlat71 = x_762;
        let x_764 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_775 : vec3<f32> = txVec5;
        let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_775.xy, x_775.z);
        u_xlat72 = x_777;
        let x_778 : f32 = u_xlat72;
        let x_780 : f32 = u_xlat11.y;
        u_xlat72 = (x_778 * x_780);
        let x_783 : f32 = u_xlat11.x;
        let x_784 : f32 = u_xlat71;
        let x_786 : f32 = u_xlat72;
        u_xlat71 = ((x_783 * x_784) + x_786);
        let x_789 : vec2<f32> = u_xlat50;
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec6;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_798.xy, x_798.z);
        u_xlat72 = x_800;
        let x_802 : f32 = u_xlat11.z;
        let x_803 : f32 = u_xlat72;
        let x_805 : f32 = u_xlat71;
        u_xlat71 = ((x_802 * x_803) + x_805);
        let x_808 : vec4<f32> = u_xlat7;
        let x_809 : vec2<f32> = vec2<f32>(x_808.x, x_808.y);
        let x_811 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec7;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_818.xy, x_818.z);
        u_xlat72 = x_820;
        let x_822 : f32 = u_xlat11.w;
        let x_823 : f32 = u_xlat72;
        let x_825 : f32 = u_xlat71;
        u_xlat71 = ((x_822 * x_823) + x_825);
        let x_828 : vec4<f32> = u_xlat9;
        let x_829 : vec2<f32> = vec2<f32>(x_828.x, x_828.y);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec8;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
        u_xlat72 = x_840;
        let x_842 : f32 = u_xlat12.x;
        let x_843 : f32 = u_xlat72;
        let x_845 : f32 = u_xlat71;
        u_xlat71 = ((x_842 * x_843) + x_845);
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.z, x_848.w);
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec9;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat72 = x_860;
        let x_862 : f32 = u_xlat12.y;
        let x_863 : f32 = u_xlat72;
        let x_865 : f32 = u_xlat71;
        u_xlat71 = ((x_862 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat7;
        let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
        let x_871 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec10;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat72 = x_880;
        let x_882 : f32 = u_xlat12.z;
        let x_883 : f32 = u_xlat72;
        let x_885 : f32 = u_xlat71;
        u_xlat71 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec11;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat72 = x_900;
        let x_902 : f32 = u_xlat12.w;
        let x_903 : f32 = u_xlat72;
        let x_905 : f32 = u_xlat71;
        u_xlat71 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec12;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat72 = x_920;
        let x_922 : f32 = u_xlat1.x;
        let x_923 : f32 = u_xlat72;
        let x_925 : f32 = u_xlat71;
        u_xlat69 = ((x_922 * x_923) + x_925);
      } else {
        let x_928 : vec4<f32> = vs_TEXCOORD6;
        let x_931 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_934 : vec2<f32> = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_931.z, x_931.w)) + vec2<f32>(0.5f, 0.5f));
        let x_935 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat4;
        let x_939 : vec2<f32> = floor(vec2<f32>(x_937.x, x_937.y));
        let x_940 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec4<f32> = vs_TEXCOORD6;
        let x_945 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(x_945.z, x_945.w)) + -(vec2<f32>(x_948.x, x_948.y)));
        let x_952 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_952.x, x_952.x, x_952.y, x_952.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_955 : vec4<f32> = u_xlat5;
        let x_957 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z) * vec4<f32>(x_957.x, x_957.x, x_957.z, x_957.z));
        let x_960 : vec4<f32> = u_xlat6;
        let x_964 : vec2<f32> = (vec2<f32>(x_960.y, x_960.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_967 : vec4<f32> = u_xlat6;
        let x_970 : vec2<f32> = u_xlat50;
        let x_972 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.z) * vec2<f32>(0.5f, 0.5f)) + -(x_970));
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        let x_975 : vec2<f32> = u_xlat50;
        let x_977 : vec2<f32> = (-(x_975) + vec2<f32>(1.0f, 1.0f));
        let x_978 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_980, vec2<f32>(0.0f, 0.0f));
        let x_982 : vec2<f32> = u_xlat52;
        let x_984 : vec2<f32> = u_xlat52;
        let x_986 : vec4<f32> = u_xlat6;
        let x_988 : vec2<f32> = ((-(x_982) * x_984) + vec2<f32>(x_986.x, x_986.y));
        let x_989 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_991, vec2<f32>(0.0f, 0.0f));
        let x_994 : vec2<f32> = u_xlat52;
        let x_996 : vec2<f32> = u_xlat52;
        let x_998 : vec4<f32> = u_xlat5;
        let x_1000 : vec2<f32> = ((-(x_994) * x_996) + vec2<f32>(x_998.y, x_998.w));
        let x_1001 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1000.x, x_1001.y, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) + vec2<f32>(2.0f, 2.0f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec3<f32> = u_xlat28;
        let x_1011 : vec2<f32> = (vec2<f32>(x_1009.x, x_1009.z) + vec2<f32>(2.0f, 2.0f));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1012.x, x_1011.x, x_1012.z, x_1011.y);
        let x_1015 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1015 * 0.08163200318813323975f);
        let x_1019 : vec4<f32> = u_xlat5;
        let x_1022 : vec3<f32> = (vec3<f32>(x_1019.z, x_1019.x, x_1019.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat9.y;
        u_xlat8.x = x_1032;
        let x_1034 : vec2<f32> = u_xlat50;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1041.x, x_1042.z, x_1041.y);
        let x_1044 : vec2<f32> = u_xlat50;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1044.x, x_1044.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1052 : f32 = u_xlat5.x;
        u_xlat6.y = x_1052;
        let x_1055 : f32 = u_xlat7.y;
        u_xlat6.w = x_1055;
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1057 + x_1058);
        let x_1060 : vec2<f32> = u_xlat50;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1060.y, x_1060.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec2<f32> = u_xlat50;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1066.y, x_1066.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1070.w);
        let x_1073 : f32 = u_xlat5.y;
        u_xlat7.y = x_1073;
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1075 + x_1076);
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1078 / x_1079);
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1081 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1087 / x_1088);
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1090 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1092.w, x_1092.x, x_1092.y, x_1092.z) * vec4<f32>(x_1095.x, x_1095.x, x_1095.x, x_1095.x));
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1098.x, x_1098.w, x_1098.y, x_1098.z) * vec4<f32>(x_1101.y, x_1101.y, x_1101.y, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat6;
        let x_1105 : vec3<f32> = vec3<f32>(x_1104.y, x_1104.z, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1105.z);
        let x_1109 : f32 = u_xlat7.x;
        u_xlat9.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.x, x_1123.y)) + vec2<f32>(x_1126.w, x_1126.y));
        let x_1130 : f32 = u_xlat9.y;
        u_xlat6.y = x_1130;
        let x_1133 : f32 = u_xlat7.z;
        u_xlat9.y = x_1133;
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat4;
        let x_1147 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat9.y;
        u_xlat6.z = x_1156;
        let x_1159 : vec4<f32> = u_xlat4;
        let x_1162 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) * vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y)) + vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.z));
        let x_1169 : f32 = u_xlat7.w;
        u_xlat9.y = x_1169;
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1175 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat29 = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat9.y;
        u_xlat6.w = x_1192;
        let x_1195 : vec4<f32> = u_xlat4;
        let x_1198 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.x, x_1198.y)) + vec2<f32>(x_1201.x, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.x, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1208 : vec4<f32> = u_xlat4;
        let x_1211 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat4;
        let x_1221 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat6.x;
        u_xlat7.x = x_1228;
        let x_1230 : vec4<f32> = u_xlat4;
        let x_1233 : vec4<f32> = x_377.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1242.x, x_1242.x, x_1242.x, x_1242.x) * x_1244);
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1247.y, x_1247.y, x_1247.y, x_1247.y) * x_1249);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1252.z, x_1252.z, x_1252.z, x_1252.z) * x_1254);
        let x_1256 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1256.w, x_1256.w, x_1256.w, x_1256.w) * x_1258);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec13;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat1.x = x_1273;
        let x_1276 : vec4<f32> = u_xlat10;
        let x_1277 : vec2<f32> = vec2<f32>(x_1276.z, x_1276.w);
        let x_1279 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec14;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat71 = x_1288;
        let x_1289 : f32 = u_xlat71;
        let x_1291 : f32 = u_xlat15.y;
        u_xlat71 = (x_1289 * x_1291);
        let x_1294 : f32 = u_xlat15.x;
        let x_1296 : f32 = u_xlat1.x;
        let x_1298 : f32 = u_xlat71;
        u_xlat1.x = ((x_1294 * x_1296) + x_1298);
        let x_1302 : vec2<f32> = u_xlat50;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec15;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat71 = x_1313;
        let x_1315 : f32 = u_xlat15.z;
        let x_1316 : f32 = u_xlat71;
        let x_1319 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec4<f32> = u_xlat13;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec16;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat71 = x_1335;
        let x_1337 : f32 = u_xlat15.w;
        let x_1338 : f32 = u_xlat71;
        let x_1341 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec17;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat71 = x_1357;
        let x_1359 : f32 = u_xlat16.x;
        let x_1360 : f32 = u_xlat71;
        let x_1363 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec18;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat71 = x_1379;
        let x_1381 : f32 = u_xlat16.y;
        let x_1382 : f32 = u_xlat71;
        let x_1385 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec19;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat71 = x_1401;
        let x_1403 : f32 = u_xlat16.z;
        let x_1404 : f32 = u_xlat71;
        let x_1407 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec20;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat71 = x_1423;
        let x_1425 : f32 = u_xlat16.w;
        let x_1426 : f32 = u_xlat71;
        let x_1429 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat14;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec21;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat71 = x_1445;
        let x_1447 : f32 = u_xlat17.x;
        let x_1448 : f32 = u_xlat71;
        let x_1451 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat14;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec22;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat71 = x_1467;
        let x_1469 : f32 = u_xlat17.y;
        let x_1470 : f32 = u_xlat71;
        let x_1473 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec2<f32> = u_xlat29;
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec23;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat71 = x_1488;
        let x_1490 : f32 = u_xlat17.z;
        let x_1491 : f32 = u_xlat71;
        let x_1494 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1490 * x_1491) + x_1494);
        let x_1498 : vec2<f32> = u_xlat58;
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec24;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat71 = x_1509;
        let x_1511 : f32 = u_xlat17.w;
        let x_1512 : f32 = u_xlat71;
        let x_1515 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec25;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat71 = x_1531;
        let x_1533 : f32 = u_xlat5.x;
        let x_1534 : f32 = u_xlat71;
        let x_1537 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat9;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec26;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat71 = x_1553;
        let x_1555 : f32 = u_xlat5.y;
        let x_1556 : f32 = u_xlat71;
        let x_1559 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec2<f32> = u_xlat53;
        let x_1565 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec27;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat71 = x_1574;
        let x_1576 : f32 = u_xlat5.z;
        let x_1577 : f32 = u_xlat71;
        let x_1580 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1576 * x_1577) + x_1580);
        let x_1584 : vec4<f32> = u_xlat4;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec28;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat71 = x_1596;
        let x_1598 : f32 = u_xlat5.w;
        let x_1599 : f32 = u_xlat71;
        let x_1602 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1598 * x_1599) + x_1602);
      }
    }
  } else {
    let x_1606 : vec4<f32> = vs_TEXCOORD6;
    let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
    let x_1609 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
    let x_1616 : vec3<f32> = txVec29;
    let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
    u_xlat69 = x_1618;
  }
  let x_1620 : f32 = x_377.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1620) + 1.0f);
  let x_1624 : f32 = u_xlat69;
  let x_1626 : f32 = x_377.x_MainLightShadowParams.x;
  let x_1629 : f32 = u_xlat1.x;
  u_xlat69 = ((x_1624 * x_1626) + x_1629);
  let x_1632 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1632);
  let x_1636 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (x_1636 >= 1.0f);
  let x_1638 : bool = u_xlatb1;
  let x_1639 : bool = u_xlatb71;
  u_xlatb1 = (x_1638 | x_1639);
  let x_1641 : bool = u_xlatb1;
  let x_1642 : f32 = u_xlat69;
  u_xlat69 = select(x_1642, 1.0f, x_1641);
  let x_1644 : vec3<f32> = vs_TEXCOORD1;
  let x_1648 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1650 : vec3<f32> = (x_1644 + -(x_1648));
  let x_1651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec4<f32> = u_xlat4;
  let x_1655 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1653.x, x_1653.y, x_1653.z), vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1660 : f32 = u_xlat1.x;
  let x_1662 : f32 = x_377.x_MainLightShadowParams.z;
  let x_1665 : f32 = x_377.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1660 * x_1662) + x_1665);
  let x_1667 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1667, 0.0f, 1.0f);
  let x_1669 : f32 = u_xlat69;
  u_xlat72 = (-(x_1669) + 1.0f);
  let x_1672 : f32 = u_xlat71;
  let x_1673 : f32 = u_xlat72;
  let x_1675 : f32 = u_xlat69;
  u_xlat69 = ((x_1672 * x_1673) + x_1675);
  let x_1684 : f32 = x_1682.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1684 == -1.0f));
  let x_1687 : bool = u_xlatb71;
  if (x_1687) {
    let x_1690 : vec3<f32> = vs_TEXCOORD1;
    let x_1693 : vec4<f32> = x_1682.x_MainLightWorldToLight[1i];
    let x_1695 : vec2<f32> = (vec2<f32>(x_1690.y, x_1690.y) * vec2<f32>(x_1693.x, x_1693.y));
    let x_1696 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
    let x_1699 : vec4<f32> = x_1682.x_MainLightWorldToLight[0i];
    let x_1701 : vec3<f32> = vs_TEXCOORD1;
    let x_1704 : vec4<f32> = u_xlat4;
    let x_1706 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.x)) + vec2<f32>(x_1704.x, x_1704.y));
    let x_1707 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
    let x_1710 : vec4<f32> = x_1682.x_MainLightWorldToLight[2i];
    let x_1712 : vec3<f32> = vs_TEXCOORD1;
    let x_1715 : vec4<f32> = u_xlat4;
    let x_1717 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1712.z, x_1712.z)) + vec2<f32>(x_1715.x, x_1715.y));
    let x_1718 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1717.x, x_1717.y, x_1718.z, x_1718.w);
    let x_1720 : vec4<f32> = u_xlat4;
    let x_1723 : vec4<f32> = x_1682.x_MainLightWorldToLight[3i];
    let x_1725 : vec2<f32> = (vec2<f32>(x_1720.x, x_1720.y) + vec2<f32>(x_1723.x, x_1723.y));
    let x_1726 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
    let x_1728 : vec4<f32> = u_xlat4;
    let x_1731 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1732 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
    let x_1739 : vec4<f32> = u_xlat4;
    let x_1742 : f32 = x_45.x_GlobalMipBias.x;
    let x_1743 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1739.x, x_1739.y), x_1742);
    u_xlat4 = x_1743;
    let x_1748 : f32 = x_1682.x_MainLightCookieTextureFormat;
    let x_1750 : f32 = x_1682.x_MainLightCookieTextureFormat;
    let x_1752 : f32 = x_1682.x_MainLightCookieTextureFormat;
    let x_1754 : f32 = x_1682.x_MainLightCookieTextureFormat;
    let x_1755 : vec4<f32> = vec4<f32>(x_1748, x_1750, x_1752, x_1754);
    let x_1763 : vec4<bool> = (vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1755.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1763.x, x_1763.y);
    let x_1766 : bool = u_xlatb5.y;
    if (x_1766) {
      let x_1771 : f32 = u_xlat4.w;
      x_1767 = x_1771;
    } else {
      let x_1774 : f32 = u_xlat4.x;
      x_1767 = x_1774;
    }
    let x_1775 : f32 = x_1767;
    u_xlat71 = x_1775;
    let x_1777 : bool = u_xlatb5.x;
    if (x_1777) {
      let x_1781 : vec4<f32> = u_xlat4;
      x_1778 = vec3<f32>(x_1781.x, x_1781.y, x_1781.z);
    } else {
      let x_1784 : f32 = u_xlat71;
      x_1778 = vec3<f32>(x_1784, x_1784, x_1784);
    }
    let x_1786 : vec3<f32> = x_1778;
    let x_1787 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1793 : vec4<f32> = u_xlat4;
  let x_1796 : vec4<f32> = x_45.x_MainLightColor;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1793.x, x_1793.y, x_1793.z) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1801 : f32 = u_xlat69;
  let x_1803 : f32 = x_186.unity_LightData.z;
  u_xlat69 = (x_1801 * x_1803);
  let x_1805 : f32 = u_xlat69;
  let x_1807 : vec4<f32> = u_xlat4;
  let x_1809 : vec3<f32> = (vec3<f32>(x_1805, x_1805, x_1805) * vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
  let x_1810 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1809.x, x_1809.y, x_1809.z, x_1810.w);
  let x_1812 : vec4<f32> = u_xlat2;
  let x_1815 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1812.x, x_1812.y, x_1812.z), vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1818, 0.0f, 1.0f);
  let x_1820 : f32 = u_xlat69;
  let x_1822 : vec4<f32> = u_xlat4;
  let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1827 : vec4<f32> = u_xlat1;
  let x_1829 : vec4<f32> = u_xlat4;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1827.y, x_1827.z, x_1827.w) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1835 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1837 : f32 = x_186.unity_LightData.y;
  u_xlat69 = min(x_1835, x_1837);
  let x_1841 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1841));
  let x_1845 : f32 = u_xlat1.x;
  let x_1848 : f32 = x_377.x_AdditionalShadowFadeParams.x;
  let x_1851 : f32 = x_377.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1845 * x_1848) + x_1851);
  let x_1855 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1855, 0.0f, 1.0f);
  let x_1859 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1861 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1863 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1865 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1866 : vec4<f32> = vec4<f32>(x_1859, x_1861, x_1863, x_1865);
  let x_1872 : vec4<bool> = (vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1866.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1872.x, x_1872.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1884 : u32 = u_xlatu_loop_1;
    let x_1885 : u32 = u_xlatu69;
    if ((x_1884 < x_1885)) {
    } else {
      break;
    }
    let x_1888 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1888 >> 2u);
    let x_1892 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1892 & 3u));
    let x_1895 : u32 = u_xlatu72;
    let x_1898 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1895)];
    let x_1908 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1913 : vec4<u32> = indexable[x_1908];
    u_xlat72 = dot(x_1898, bitcast<vec4<f32>>(x_1913));
    let x_1917 : f32 = u_xlat72;
    u_xlati72 = i32(x_1917);
    let x_1919 : vec3<f32> = vs_TEXCOORD1;
    let x_1930 : i32 = u_xlati72;
    let x_1932 : vec4<f32> = x_1929.x_AdditionalLightsPosition[x_1930];
    let x_1935 : i32 = u_xlati72;
    let x_1937 : vec4<f32> = x_1929.x_AdditionalLightsPosition[x_1935];
    let x_1939 : vec3<f32> = ((-(x_1919) * vec3<f32>(x_1932.w, x_1932.w, x_1932.w)) + vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
    let x_1940 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
    let x_1943 : vec4<f32> = u_xlat7;
    let x_1945 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1943.x, x_1943.y, x_1943.z), vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : f32 = u_xlat73;
    u_xlat73 = max(x_1948, 0.00006103515625f);
    let x_1952 : f32 = u_xlat73;
    u_xlat51 = inverseSqrt(x_1952);
    let x_1954 : f32 = u_xlat51;
    let x_1956 : vec4<f32> = u_xlat7;
    let x_1958 : vec3<f32> = (vec3<f32>(x_1954, x_1954, x_1954) * vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
    let x_1961 : f32 = u_xlat73;
    u_xlat51 = (1.0f / x_1961);
    let x_1963 : f32 = u_xlat73;
    let x_1964 : i32 = u_xlati72;
    let x_1966 : f32 = x_1929.x_AdditionalLightsAttenuation[x_1964].x;
    u_xlat73 = (x_1963 * x_1966);
    let x_1968 : f32 = u_xlat73;
    let x_1970 : f32 = u_xlat73;
    u_xlat73 = ((-(x_1968) * x_1970) + 1.0f);
    let x_1973 : f32 = u_xlat73;
    u_xlat73 = max(x_1973, 0.0f);
    let x_1975 : f32 = u_xlat73;
    let x_1976 : f32 = u_xlat73;
    u_xlat73 = (x_1975 * x_1976);
    let x_1978 : f32 = u_xlat73;
    let x_1979 : f32 = u_xlat51;
    u_xlat73 = (x_1978 * x_1979);
    let x_1981 : i32 = u_xlati72;
    let x_1983 : vec4<f32> = x_1929.x_AdditionalLightsSpotDir[x_1981];
    let x_1985 : vec4<f32> = u_xlat7;
    u_xlat51 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1988 : f32 = u_xlat51;
    let x_1989 : i32 = u_xlati72;
    let x_1991 : f32 = x_1929.x_AdditionalLightsAttenuation[x_1989].z;
    let x_1993 : i32 = u_xlati72;
    let x_1995 : f32 = x_1929.x_AdditionalLightsAttenuation[x_1993].w;
    u_xlat51 = ((x_1988 * x_1991) + x_1995);
    let x_1997 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1997, 0.0f, 1.0f);
    let x_1999 : f32 = u_xlat51;
    let x_2000 : f32 = u_xlat51;
    u_xlat51 = (x_1999 * x_2000);
    let x_2002 : f32 = u_xlat73;
    let x_2003 : f32 = u_xlat51;
    u_xlat73 = (x_2002 * x_2003);
    let x_2007 : i32 = u_xlati72;
    let x_2009 : f32 = x_377.x_AdditionalShadowParams[x_2007].w;
    u_xlati51 = i32(x_2009);
    let x_2012 : i32 = u_xlati51;
    u_xlatb74 = (x_2012 >= 0i);
    let x_2014 : bool = u_xlatb74;
    if (x_2014) {
      let x_2018 : i32 = u_xlati72;
      let x_2020 : f32 = x_377.x_AdditionalShadowParams[x_2018].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2020, x_2020, x_2020, x_2020))));
      let x_2024 : bool = u_xlatb74;
      if (x_2024) {
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2032 : vec4<f32> = u_xlat7;
        let x_2035 : vec4<bool> = (abs(vec4<f32>(x_2029.z, x_2029.z, x_2029.y, x_2029.z)) >= abs(vec4<f32>(x_2032.x, x_2032.y, x_2032.x, x_2032.x)));
        let x_2037 : vec3<bool> = vec3<bool>(x_2035.x, x_2035.y, x_2035.z);
        let x_2038 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
        let x_2041 : bool = u_xlatb8.y;
        let x_2043 : bool = u_xlatb8.x;
        u_xlatb74 = (x_2041 & x_2043);
        let x_2045 : vec4<f32> = u_xlat7;
        let x_2048 : vec4<bool> = (-(vec4<f32>(x_2045.z, x_2045.y, x_2045.z, x_2045.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2049 : vec3<bool> = vec3<bool>(x_2048.x, x_2048.y, x_2048.w);
        let x_2050 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2049.x, x_2049.y, x_2050.z, x_2049.z);
        let x_2053 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2053);
        let x_2059 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2059);
        let x_2065 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_2065);
        let x_2068 : bool = u_xlatb8.z;
        if (x_2068) {
          let x_2073 : f32 = u_xlat8.y;
          x_2069 = x_2073;
        } else {
          let x_2075 : f32 = u_xlat75;
          x_2069 = x_2075;
        }
        let x_2076 : f32 = x_2069;
        u_xlat75 = x_2076;
        let x_2078 : bool = u_xlatb74;
        if (x_2078) {
          let x_2083 : f32 = u_xlat8.x;
          x_2079 = x_2083;
        } else {
          let x_2085 : f32 = u_xlat75;
          x_2079 = x_2085;
        }
        let x_2086 : f32 = x_2079;
        u_xlat74 = x_2086;
        let x_2087 : i32 = u_xlati72;
        let x_2089 : f32 = x_377.x_AdditionalShadowParams[x_2087].w;
        u_xlat75 = trunc(x_2089);
        let x_2091 : f32 = u_xlat74;
        let x_2092 : f32 = u_xlat75;
        u_xlat74 = (x_2091 + x_2092);
        let x_2094 : f32 = u_xlat74;
        u_xlati51 = i32(x_2094);
      }
      let x_2096 : i32 = u_xlati51;
      u_xlati51 = (x_2096 << bitcast<u32>(2i));
      let x_2098 : vec3<f32> = vs_TEXCOORD1;
      let x_2101 : i32 = u_xlati51;
      let x_2104 : i32 = u_xlati51;
      let x_2108 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2101 + 1i) / 4i)][((x_2104 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2098.y, x_2098.y, x_2098.y, x_2098.y) * x_2108);
      let x_2110 : i32 = u_xlati51;
      let x_2112 : i32 = u_xlati51;
      let x_2115 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[(x_2110 / 4i)][(x_2112 % 4i)];
      let x_2116 : vec3<f32> = vs_TEXCOORD1;
      let x_2119 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2115 * vec4<f32>(x_2116.x, x_2116.x, x_2116.x, x_2116.x)) + x_2119);
      let x_2121 : i32 = u_xlati51;
      let x_2124 : i32 = u_xlati51;
      let x_2128 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2121 + 2i) / 4i)][((x_2124 + 2i) % 4i)];
      let x_2129 : vec3<f32> = vs_TEXCOORD1;
      let x_2132 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2128 * vec4<f32>(x_2129.z, x_2129.z, x_2129.z, x_2129.z)) + x_2132);
      let x_2134 : vec4<f32> = u_xlat8;
      let x_2135 : i32 = u_xlati51;
      let x_2138 : i32 = u_xlati51;
      let x_2142 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2135 + 3i) / 4i)][((x_2138 + 3i) % 4i)];
      u_xlat8 = (x_2134 + x_2142);
      let x_2144 : vec4<f32> = u_xlat8;
      let x_2146 : vec4<f32> = u_xlat8;
      let x_2148 : vec3<f32> = (vec3<f32>(x_2144.x, x_2144.y, x_2144.z) / vec3<f32>(x_2146.w, x_2146.w, x_2146.w));
      let x_2149 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
      let x_2152 : i32 = u_xlati72;
      let x_2154 : f32 = x_377.x_AdditionalShadowParams[x_2152].y;
      u_xlatb51 = (0.0f < x_2154);
      let x_2156 : bool = u_xlatb51;
      if (x_2156) {
        let x_2159 : i32 = u_xlati72;
        let x_2161 : f32 = x_377.x_AdditionalShadowParams[x_2159].y;
        u_xlatb51 = (1.0f == x_2161);
        let x_2163 : bool = u_xlatb51;
        if (x_2163) {
          let x_2166 : vec4<f32> = u_xlat8;
          let x_2169 : vec4<f32> = x_377.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.y) + x_2169);
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
          let x_2206 : vec4<f32> = x_377.x_AdditionalShadowOffset1;
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
          let x_2238 : vec4<f32> = u_xlat10;
          u_xlat51 = dot(x_2238, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2241 : i32 = u_xlati72;
          let x_2243 : f32 = x_377.x_AdditionalShadowParams[x_2241].y;
          u_xlatb74 = (2.0f == x_2243);
          let x_2245 : bool = u_xlatb74;
          if (x_2245) {
            let x_2248 : vec4<f32> = u_xlat8;
            let x_2252 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2255 : vec2<f32> = ((vec2<f32>(x_2248.x, x_2248.y) * vec2<f32>(x_2252.z, x_2252.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2256 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat9;
            let x_2260 : vec2<f32> = floor(vec2<f32>(x_2258.x, x_2258.y));
            let x_2261 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2260.x, x_2260.y, x_2261.z, x_2261.w);
            let x_2264 : vec4<f32> = u_xlat8;
            let x_2267 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2270 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2264.x, x_2264.y) * vec2<f32>(x_2267.z, x_2267.w)) + -(vec2<f32>(x_2270.x, x_2270.y)));
            let x_2274 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2274.x, x_2274.x, x_2274.y, x_2274.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2277 : vec4<f32> = u_xlat10;
            let x_2279 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2277.x, x_2277.x, x_2277.z, x_2277.z) * vec4<f32>(x_2279.x, x_2279.x, x_2279.z, x_2279.z));
            let x_2282 : vec4<f32> = u_xlat11;
            let x_2284 : vec2<f32> = (vec2<f32>(x_2282.y, x_2282.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2285 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2284.x, x_2285.y, x_2284.y, x_2285.w);
            let x_2287 : vec4<f32> = u_xlat11;
            let x_2290 : vec2<f32> = u_xlat55;
            let x_2292 : vec2<f32> = ((vec2<f32>(x_2287.x, x_2287.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2290));
            let x_2293 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2292.x, x_2292.y, x_2293.z, x_2293.w);
            let x_2296 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2296) + vec2<f32>(1.0f, 1.0f));
            let x_2299 : vec2<f32> = u_xlat55;
            let x_2300 : vec2<f32> = min(x_2299, vec2<f32>(0.0f, 0.0f));
            let x_2301 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
            let x_2303 : vec4<f32> = u_xlat12;
            let x_2306 : vec4<f32> = u_xlat12;
            let x_2309 : vec2<f32> = u_xlat57;
            let x_2310 : vec2<f32> = ((-(vec2<f32>(x_2303.x, x_2303.y)) * vec2<f32>(x_2306.x, x_2306.y)) + x_2309);
            let x_2311 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2313 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2313, vec2<f32>(0.0f, 0.0f));
            let x_2315 : vec2<f32> = u_xlat55;
            let x_2317 : vec2<f32> = u_xlat55;
            let x_2319 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2315) * x_2317) + vec2<f32>(x_2319.y, x_2319.w));
            let x_2322 : vec4<f32> = u_xlat12;
            let x_2324 : vec2<f32> = (vec2<f32>(x_2322.x, x_2322.y) + vec2<f32>(1.0f, 1.0f));
            let x_2325 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2324.x, x_2324.y, x_2325.z, x_2325.w);
            let x_2327 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2327 + vec2<f32>(1.0f, 1.0f));
            let x_2329 : vec4<f32> = u_xlat11;
            let x_2331 : vec2<f32> = (vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2332 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2334 : vec2<f32> = u_xlat57;
            let x_2335 : vec2<f32> = (x_2334 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2336 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
            let x_2338 : vec4<f32> = u_xlat12;
            let x_2340 : vec2<f32> = (vec2<f32>(x_2338.x, x_2338.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2341 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec2<f32> = u_xlat55;
            let x_2344 : vec2<f32> = (x_2343 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2345 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
            let x_2347 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2347.y, x_2347.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2351 : f32 = u_xlat12.x;
            u_xlat13.z = x_2351;
            let x_2354 : f32 = u_xlat55.x;
            u_xlat13.w = x_2354;
            let x_2357 : f32 = u_xlat14.x;
            u_xlat11.z = x_2357;
            let x_2360 : f32 = u_xlat10.x;
            u_xlat11.w = x_2360;
            let x_2362 : vec4<f32> = u_xlat11;
            let x_2364 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2362.z, x_2362.w, x_2362.x, x_2362.z) + vec4<f32>(x_2364.z, x_2364.w, x_2364.x, x_2364.z));
            let x_2368 : f32 = u_xlat13.y;
            u_xlat12.z = x_2368;
            let x_2371 : f32 = u_xlat55.y;
            u_xlat12.w = x_2371;
            let x_2374 : f32 = u_xlat11.y;
            u_xlat14.z = x_2374;
            let x_2377 : f32 = u_xlat10.z;
            u_xlat14.w = x_2377;
            let x_2379 : vec4<f32> = u_xlat12;
            let x_2381 : vec4<f32> = u_xlat14;
            let x_2383 : vec3<f32> = (vec3<f32>(x_2379.z, x_2379.y, x_2379.w) + vec3<f32>(x_2381.z, x_2381.y, x_2381.w));
            let x_2384 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
            let x_2386 : vec4<f32> = u_xlat11;
            let x_2388 : vec4<f32> = u_xlat15;
            let x_2390 : vec3<f32> = (vec3<f32>(x_2386.x, x_2386.z, x_2386.w) / vec3<f32>(x_2388.z, x_2388.w, x_2388.y));
            let x_2391 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
            let x_2393 : vec4<f32> = u_xlat11;
            let x_2395 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2396 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
            let x_2398 : vec4<f32> = u_xlat14;
            let x_2400 : vec4<f32> = u_xlat10;
            let x_2402 : vec3<f32> = (vec3<f32>(x_2398.z, x_2398.y, x_2398.w) / vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
            let x_2403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat12;
            let x_2407 : vec3<f32> = (vec3<f32>(x_2405.x, x_2405.y, x_2405.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
            let x_2410 : vec4<f32> = u_xlat11;
            let x_2413 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2415 : vec3<f32> = (vec3<f32>(x_2410.y, x_2410.x, x_2410.z) * vec3<f32>(x_2413.x, x_2413.x, x_2413.x));
            let x_2416 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
            let x_2418 : vec4<f32> = u_xlat12;
            let x_2421 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2423 : vec3<f32> = (vec3<f32>(x_2418.x, x_2418.y, x_2418.z) * vec3<f32>(x_2421.y, x_2421.y, x_2421.y));
            let x_2424 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
            let x_2427 : f32 = u_xlat12.x;
            u_xlat11.w = x_2427;
            let x_2429 : vec4<f32> = u_xlat9;
            let x_2432 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2435 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y) * vec4<f32>(x_2432.x, x_2432.y, x_2432.x, x_2432.y)) + vec4<f32>(x_2435.y, x_2435.w, x_2435.x, x_2435.w));
            let x_2438 : vec4<f32> = u_xlat9;
            let x_2441 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2444 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2438.x, x_2438.y) * vec2<f32>(x_2441.x, x_2441.y)) + vec2<f32>(x_2444.z, x_2444.w));
            let x_2448 : f32 = u_xlat11.y;
            u_xlat12.w = x_2448;
            let x_2450 : vec4<f32> = u_xlat12;
            let x_2451 : vec2<f32> = vec2<f32>(x_2450.y, x_2450.z);
            let x_2452 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2452.x, x_2451.x, x_2452.z, x_2451.y);
            let x_2454 : vec4<f32> = u_xlat9;
            let x_2457 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y) * vec4<f32>(x_2457.x, x_2457.y, x_2457.x, x_2457.y)) + vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2460.y));
            let x_2463 : vec4<f32> = u_xlat9;
            let x_2466 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2469 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2463.x, x_2463.y, x_2463.x, x_2463.y) * vec4<f32>(x_2466.x, x_2466.y, x_2466.x, x_2466.y)) + vec4<f32>(x_2469.w, x_2469.y, x_2469.w, x_2469.z));
            let x_2472 : vec4<f32> = u_xlat9;
            let x_2475 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2478 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y) * vec4<f32>(x_2475.x, x_2475.y, x_2475.x, x_2475.y)) + vec4<f32>(x_2478.x, x_2478.w, x_2478.z, x_2478.w));
            let x_2481 : vec4<f32> = u_xlat10;
            let x_2483 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2481.x, x_2481.x, x_2481.x, x_2481.y) * vec4<f32>(x_2483.z, x_2483.w, x_2483.y, x_2483.z));
            let x_2486 : vec4<f32> = u_xlat10;
            let x_2488 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2486.y, x_2486.y, x_2486.z, x_2486.z) * x_2488);
            let x_2491 : f32 = u_xlat10.z;
            let x_2493 : f32 = u_xlat15.y;
            u_xlat74 = (x_2491 * x_2493);
            let x_2496 : vec4<f32> = u_xlat13;
            let x_2497 : vec2<f32> = vec2<f32>(x_2496.x, x_2496.y);
            let x_2499 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2497.x, x_2497.y, x_2499);
            let x_2506 : vec3<f32> = txVec34;
            let x_2508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
            u_xlat75 = x_2508;
            let x_2510 : vec4<f32> = u_xlat13;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.z, x_2510.w);
            let x_2513 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
            let x_2521 : vec3<f32> = txVec35;
            let x_2523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
            u_xlat76 = x_2523;
            let x_2524 : f32 = u_xlat76;
            let x_2526 : f32 = u_xlat16.y;
            u_xlat76 = (x_2524 * x_2526);
            let x_2529 : f32 = u_xlat16.x;
            let x_2530 : f32 = u_xlat75;
            let x_2532 : f32 = u_xlat76;
            u_xlat75 = ((x_2529 * x_2530) + x_2532);
            let x_2535 : vec2<f32> = u_xlat55;
            let x_2537 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2544 : vec3<f32> = txVec36;
            let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
            u_xlat76 = x_2546;
            let x_2548 : f32 = u_xlat16.z;
            let x_2549 : f32 = u_xlat76;
            let x_2551 : f32 = u_xlat75;
            u_xlat75 = ((x_2548 * x_2549) + x_2551);
            let x_2554 : vec4<f32> = u_xlat12;
            let x_2555 : vec2<f32> = vec2<f32>(x_2554.x, x_2554.y);
            let x_2557 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
            let x_2564 : vec3<f32> = txVec37;
            let x_2566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
            u_xlat76 = x_2566;
            let x_2568 : f32 = u_xlat16.w;
            let x_2569 : f32 = u_xlat76;
            let x_2571 : f32 = u_xlat75;
            u_xlat75 = ((x_2568 * x_2569) + x_2571);
            let x_2574 : vec4<f32> = u_xlat14;
            let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
            let x_2577 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec38;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat76 = x_2586;
            let x_2588 : f32 = u_xlat17.x;
            let x_2589 : f32 = u_xlat76;
            let x_2591 : f32 = u_xlat75;
            u_xlat75 = ((x_2588 * x_2589) + x_2591);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2595 : vec2<f32> = vec2<f32>(x_2594.z, x_2594.w);
            let x_2597 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2595.x, x_2595.y, x_2597);
            let x_2604 : vec3<f32> = txVec39;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat76 = x_2606;
            let x_2608 : f32 = u_xlat17.y;
            let x_2609 : f32 = u_xlat76;
            let x_2611 : f32 = u_xlat75;
            u_xlat75 = ((x_2608 * x_2609) + x_2611);
            let x_2614 : vec4<f32> = u_xlat12;
            let x_2615 : vec2<f32> = vec2<f32>(x_2614.z, x_2614.w);
            let x_2617 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2615.x, x_2615.y, x_2617);
            let x_2624 : vec3<f32> = txVec40;
            let x_2626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2624.xy, x_2624.z);
            u_xlat76 = x_2626;
            let x_2628 : f32 = u_xlat17.z;
            let x_2629 : f32 = u_xlat76;
            let x_2631 : f32 = u_xlat75;
            u_xlat75 = ((x_2628 * x_2629) + x_2631);
            let x_2634 : vec4<f32> = u_xlat11;
            let x_2635 : vec2<f32> = vec2<f32>(x_2634.x, x_2634.y);
            let x_2637 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2635.x, x_2635.y, x_2637);
            let x_2644 : vec3<f32> = txVec41;
            let x_2646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2644.xy, x_2644.z);
            u_xlat76 = x_2646;
            let x_2648 : f32 = u_xlat17.w;
            let x_2649 : f32 = u_xlat76;
            let x_2651 : f32 = u_xlat75;
            u_xlat75 = ((x_2648 * x_2649) + x_2651);
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2655 : vec2<f32> = vec2<f32>(x_2654.z, x_2654.w);
            let x_2657 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
            let x_2664 : vec3<f32> = txVec42;
            let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
            u_xlat76 = x_2666;
            let x_2667 : f32 = u_xlat74;
            let x_2668 : f32 = u_xlat76;
            let x_2670 : f32 = u_xlat75;
            u_xlat51 = ((x_2667 * x_2668) + x_2670);
          } else {
            let x_2673 : vec4<f32> = u_xlat8;
            let x_2676 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2676.z, x_2676.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2680 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec4<f32> = u_xlat9;
            let x_2684 : vec2<f32> = floor(vec2<f32>(x_2682.x, x_2682.y));
            let x_2685 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2684.x, x_2684.y, x_2685.z, x_2685.w);
            let x_2687 : vec4<f32> = u_xlat8;
            let x_2690 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
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
            let x_2825 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2822.w, x_2822.x, x_2822.y, x_2822.z) * vec4<f32>(x_2825.x, x_2825.x, x_2825.x, x_2825.x));
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2831 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2828.x, x_2828.w, x_2828.y, x_2828.z) * vec4<f32>(x_2831.y, x_2831.y, x_2831.y, x_2831.y));
            let x_2834 : vec4<f32> = u_xlat11;
            let x_2835 : vec3<f32> = vec3<f32>(x_2834.y, x_2834.z, x_2834.w);
            let x_2836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2835.x, x_2836.y, x_2835.y, x_2835.z);
            let x_2839 : f32 = u_xlat12.x;
            u_xlat14.y = x_2839;
            let x_2841 : vec4<f32> = u_xlat9;
            let x_2844 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2847 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2841.x, x_2841.y, x_2841.x, x_2841.y) * vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y)) + vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat9;
            let x_2853 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(x_2853.x, x_2853.y)) + vec2<f32>(x_2856.w, x_2856.y));
            let x_2860 : f32 = u_xlat14.y;
            u_xlat11.y = x_2860;
            let x_2863 : f32 = u_xlat12.z;
            u_xlat14.y = x_2863;
            let x_2865 : vec4<f32> = u_xlat9;
            let x_2868 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.y) * vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y)) + vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2871.y));
            let x_2874 : vec4<f32> = u_xlat9;
            let x_2877 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2882 : vec2<f32> = ((vec2<f32>(x_2874.x, x_2874.y) * vec2<f32>(x_2877.x, x_2877.y)) + vec2<f32>(x_2880.w, x_2880.y));
            let x_2883 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2882.x, x_2882.y, x_2883.z, x_2883.w);
            let x_2886 : f32 = u_xlat14.y;
            u_xlat11.z = x_2886;
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2892 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y) * vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y)) + vec4<f32>(x_2895.x, x_2895.y, x_2895.x, x_2895.z));
            let x_2899 : f32 = u_xlat12.w;
            u_xlat14.y = x_2899;
            let x_2902 : vec4<f32> = u_xlat9;
            let x_2905 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2908 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2902.x, x_2902.y, x_2902.x, x_2902.y) * vec4<f32>(x_2905.x, x_2905.y, x_2905.x, x_2905.y)) + vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2908.y));
            let x_2912 : vec4<f32> = u_xlat9;
            let x_2915 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2915.x, x_2915.y)) + vec2<f32>(x_2918.w, x_2918.y));
            let x_2922 : f32 = u_xlat14.y;
            u_xlat11.w = x_2922;
            let x_2925 : vec4<f32> = u_xlat9;
            let x_2928 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2931 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2928.x, x_2928.y)) + vec2<f32>(x_2931.x, x_2931.w));
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2935 : vec3<f32> = vec3<f32>(x_2934.x, x_2934.z, x_2934.w);
            let x_2936 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2935.x, x_2936.y, x_2935.y, x_2935.z);
            let x_2938 : vec4<f32> = u_xlat9;
            let x_2941 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2938.x, x_2938.y, x_2938.x, x_2938.y) * vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.y)) + vec4<f32>(x_2944.x, x_2944.y, x_2944.z, x_2944.y));
            let x_2947 : vec4<f32> = u_xlat9;
            let x_2950 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2953 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(x_2950.x, x_2950.y)) + vec2<f32>(x_2953.w, x_2953.y));
            let x_2957 : f32 = u_xlat11.x;
            u_xlat12.x = x_2957;
            let x_2959 : vec4<f32> = u_xlat9;
            let x_2962 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
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
            u_xlat74 = x_3002;
            let x_3004 : vec4<f32> = u_xlat15;
            let x_3005 : vec2<f32> = vec2<f32>(x_3004.z, x_3004.w);
            let x_3007 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
            let x_3014 : vec3<f32> = txVec44;
            let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
            u_xlat75 = x_3016;
            let x_3017 : f32 = u_xlat75;
            let x_3019 : f32 = u_xlat20.y;
            u_xlat75 = (x_3017 * x_3019);
            let x_3022 : f32 = u_xlat20.x;
            let x_3023 : f32 = u_xlat74;
            let x_3025 : f32 = u_xlat75;
            u_xlat74 = ((x_3022 * x_3023) + x_3025);
            let x_3028 : vec2<f32> = u_xlat55;
            let x_3030 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
            let x_3037 : vec3<f32> = txVec45;
            let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
            u_xlat75 = x_3039;
            let x_3041 : f32 = u_xlat20.z;
            let x_3042 : f32 = u_xlat75;
            let x_3044 : f32 = u_xlat74;
            u_xlat74 = ((x_3041 * x_3042) + x_3044);
            let x_3047 : vec4<f32> = u_xlat18;
            let x_3048 : vec2<f32> = vec2<f32>(x_3047.x, x_3047.y);
            let x_3050 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3048.x, x_3048.y, x_3050);
            let x_3057 : vec3<f32> = txVec46;
            let x_3059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3057.xy, x_3057.z);
            u_xlat75 = x_3059;
            let x_3061 : f32 = u_xlat20.w;
            let x_3062 : f32 = u_xlat75;
            let x_3064 : f32 = u_xlat74;
            u_xlat74 = ((x_3061 * x_3062) + x_3064);
            let x_3067 : vec4<f32> = u_xlat16;
            let x_3068 : vec2<f32> = vec2<f32>(x_3067.x, x_3067.y);
            let x_3070 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
            let x_3077 : vec3<f32> = txVec47;
            let x_3079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
            u_xlat75 = x_3079;
            let x_3081 : f32 = u_xlat21.x;
            let x_3082 : f32 = u_xlat75;
            let x_3084 : f32 = u_xlat74;
            u_xlat74 = ((x_3081 * x_3082) + x_3084);
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec48;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat75 = x_3099;
            let x_3101 : f32 = u_xlat21.y;
            let x_3102 : f32 = u_xlat75;
            let x_3104 : f32 = u_xlat74;
            u_xlat74 = ((x_3101 * x_3102) + x_3104);
            let x_3107 : vec4<f32> = u_xlat17;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.x, x_3107.y);
            let x_3110 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec49;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat75 = x_3119;
            let x_3121 : f32 = u_xlat21.z;
            let x_3122 : f32 = u_xlat75;
            let x_3124 : f32 = u_xlat74;
            u_xlat74 = ((x_3121 * x_3122) + x_3124);
            let x_3127 : vec4<f32> = u_xlat18;
            let x_3128 : vec2<f32> = vec2<f32>(x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec50;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat75 = x_3139;
            let x_3141 : f32 = u_xlat21.w;
            let x_3142 : f32 = u_xlat75;
            let x_3144 : f32 = u_xlat74;
            u_xlat74 = ((x_3141 * x_3142) + x_3144);
            let x_3147 : vec4<f32> = u_xlat19;
            let x_3148 : vec2<f32> = vec2<f32>(x_3147.x, x_3147.y);
            let x_3150 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3148.x, x_3148.y, x_3150);
            let x_3157 : vec3<f32> = txVec51;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat75 = x_3159;
            let x_3161 : f32 = u_xlat22.x;
            let x_3162 : f32 = u_xlat75;
            let x_3164 : f32 = u_xlat74;
            u_xlat74 = ((x_3161 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat19;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
            let x_3170 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec52;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat75 = x_3179;
            let x_3181 : f32 = u_xlat22.y;
            let x_3182 : f32 = u_xlat75;
            let x_3184 : f32 = u_xlat74;
            u_xlat74 = ((x_3181 * x_3182) + x_3184);
            let x_3187 : vec2<f32> = u_xlat34;
            let x_3189 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec53;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat75 = x_3198;
            let x_3200 : f32 = u_xlat22.z;
            let x_3201 : f32 = u_xlat75;
            let x_3203 : f32 = u_xlat74;
            u_xlat74 = ((x_3200 * x_3201) + x_3203);
            let x_3206 : vec2<f32> = u_xlat63;
            let x_3208 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec54;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat75 = x_3217;
            let x_3219 : f32 = u_xlat22.w;
            let x_3220 : f32 = u_xlat75;
            let x_3222 : f32 = u_xlat74;
            u_xlat74 = ((x_3219 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat14;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.x, x_3225.y);
            let x_3228 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec55;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat75 = x_3237;
            let x_3239 : f32 = u_xlat10.x;
            let x_3240 : f32 = u_xlat75;
            let x_3242 : f32 = u_xlat74;
            u_xlat74 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat14;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.z, x_3245.w);
            let x_3248 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec56;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat75 = x_3257;
            let x_3259 : f32 = u_xlat10.y;
            let x_3260 : f32 = u_xlat75;
            let x_3262 : f32 = u_xlat74;
            u_xlat74 = ((x_3259 * x_3260) + x_3262);
            let x_3265 : vec2<f32> = u_xlat58;
            let x_3267 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec57;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat75 = x_3276;
            let x_3278 : f32 = u_xlat10.z;
            let x_3279 : f32 = u_xlat75;
            let x_3281 : f32 = u_xlat74;
            u_xlat74 = ((x_3278 * x_3279) + x_3281);
            let x_3284 : vec4<f32> = u_xlat9;
            let x_3285 : vec2<f32> = vec2<f32>(x_3284.x, x_3284.y);
            let x_3287 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3294 : vec3<f32> = txVec58;
            let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
            u_xlat75 = x_3296;
            let x_3298 : f32 = u_xlat10.w;
            let x_3299 : f32 = u_xlat75;
            let x_3301 : f32 = u_xlat74;
            u_xlat51 = ((x_3298 * x_3299) + x_3301);
          }
        }
      } else {
        let x_3305 : vec4<f32> = u_xlat8;
        let x_3306 : vec2<f32> = vec2<f32>(x_3305.x, x_3305.y);
        let x_3308 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
        let x_3315 : vec3<f32> = txVec59;
        let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
        u_xlat51 = x_3317;
      }
      let x_3318 : i32 = u_xlati72;
      let x_3320 : f32 = x_377.x_AdditionalShadowParams[x_3318].x;
      u_xlat74 = (1.0f + -(x_3320));
      let x_3323 : f32 = u_xlat51;
      let x_3324 : i32 = u_xlati72;
      let x_3326 : f32 = x_377.x_AdditionalShadowParams[x_3324].x;
      let x_3328 : f32 = u_xlat74;
      u_xlat51 = ((x_3323 * x_3326) + x_3328);
      let x_3331 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3331);
      let x_3335 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3335 >= 1.0f);
      let x_3337 : bool = u_xlatb74;
      let x_3338 : bool = u_xlatb75;
      u_xlatb74 = (x_3337 | x_3338);
      let x_3340 : bool = u_xlatb74;
      let x_3341 : f32 = u_xlat51;
      u_xlat51 = select(x_3341, 1.0f, x_3340);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_3344 : f32 = u_xlat51;
    u_xlat74 = (-(x_3344) + 1.0f);
    let x_3348 : f32 = u_xlat1.x;
    let x_3349 : f32 = u_xlat74;
    let x_3351 : f32 = u_xlat51;
    u_xlat51 = ((x_3348 * x_3349) + x_3351);
    let x_3354 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3354 & 31i)));
    let x_3358 : i32 = u_xlati74;
    let x_3361 : f32 = x_1682.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3358) & bitcast<u32>(x_3361)));
    let x_3365 : i32 = u_xlati74;
    if ((x_3365 != 0i)) {
      let x_3369 : i32 = u_xlati72;
      let x_3371 : f32 = x_1682.x_AdditionalLightsLightTypes[x_3369].el;
      u_xlati74 = i32(x_3371);
      let x_3374 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3374 != 0i));
      let x_3378 : i32 = u_xlati72;
      u_xlati76 = (x_3378 << bitcast<u32>(2i));
      let x_3380 : i32 = u_xlati75;
      if ((x_3380 != 0i)) {
        let x_3384 : vec3<f32> = vs_TEXCOORD1;
        let x_3386 : i32 = u_xlati76;
        let x_3389 : i32 = u_xlati76;
        let x_3393 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3386 + 1i) / 4i)][((x_3389 + 1i) % 4i)];
        let x_3395 : vec3<f32> = (vec3<f32>(x_3384.y, x_3384.y, x_3384.y) * vec3<f32>(x_3393.x, x_3393.y, x_3393.w));
        let x_3396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3396.w);
        let x_3398 : i32 = u_xlati76;
        let x_3400 : i32 = u_xlati76;
        let x_3403 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3398 / 4i)][(x_3400 % 4i)];
        let x_3405 : vec3<f32> = vs_TEXCOORD1;
        let x_3408 : vec4<f32> = u_xlat8;
        let x_3410 : vec3<f32> = ((vec3<f32>(x_3403.x, x_3403.y, x_3403.w) * vec3<f32>(x_3405.x, x_3405.x, x_3405.x)) + vec3<f32>(x_3408.x, x_3408.y, x_3408.z));
        let x_3411 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3411.w);
        let x_3413 : i32 = u_xlati76;
        let x_3416 : i32 = u_xlati76;
        let x_3420 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3413 + 2i) / 4i)][((x_3416 + 2i) % 4i)];
        let x_3422 : vec3<f32> = vs_TEXCOORD1;
        let x_3425 : vec4<f32> = u_xlat8;
        let x_3427 : vec3<f32> = ((vec3<f32>(x_3420.x, x_3420.y, x_3420.w) * vec3<f32>(x_3422.z, x_3422.z, x_3422.z)) + vec3<f32>(x_3425.x, x_3425.y, x_3425.z));
        let x_3428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3427.x, x_3427.y, x_3427.z, x_3428.w);
        let x_3430 : vec4<f32> = u_xlat8;
        let x_3432 : i32 = u_xlati76;
        let x_3435 : i32 = u_xlati76;
        let x_3439 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3432 + 3i) / 4i)][((x_3435 + 3i) % 4i)];
        let x_3441 : vec3<f32> = (vec3<f32>(x_3430.x, x_3430.y, x_3430.z) + vec3<f32>(x_3439.x, x_3439.y, x_3439.w));
        let x_3442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
        let x_3444 : vec4<f32> = u_xlat8;
        let x_3446 : vec4<f32> = u_xlat8;
        let x_3448 : vec2<f32> = (vec2<f32>(x_3444.x, x_3444.y) / vec2<f32>(x_3446.z, x_3446.z));
        let x_3449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3449.z, x_3449.w);
        let x_3451 : vec4<f32> = u_xlat8;
        let x_3454 : vec2<f32> = ((vec2<f32>(x_3451.x, x_3451.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3455 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3454.x, x_3454.y, x_3455.z, x_3455.w);
        let x_3457 : vec4<f32> = u_xlat8;
        let x_3461 : vec2<f32> = clamp(vec2<f32>(x_3457.x, x_3457.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3461.x, x_3461.y, x_3462.z, x_3462.w);
        let x_3464 : i32 = u_xlati72;
        let x_3466 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3464];
        let x_3468 : vec4<f32> = u_xlat8;
        let x_3471 : i32 = u_xlati72;
        let x_3473 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3471];
        let x_3475 : vec2<f32> = ((vec2<f32>(x_3466.x, x_3466.y) * vec2<f32>(x_3468.x, x_3468.y)) + vec2<f32>(x_3473.z, x_3473.w));
        let x_3476 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3475.x, x_3475.y, x_3476.z, x_3476.w);
      } else {
        let x_3479 : i32 = u_xlati74;
        u_xlatb74 = (x_3479 == 1i);
        let x_3481 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3481);
        let x_3483 : i32 = u_xlati74;
        if ((x_3483 != 0i)) {
          let x_3488 : vec3<f32> = vs_TEXCOORD1;
          let x_3490 : i32 = u_xlati76;
          let x_3493 : i32 = u_xlati76;
          let x_3497 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3490 + 1i) / 4i)][((x_3493 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3488.y, x_3488.y) * vec2<f32>(x_3497.x, x_3497.y));
          let x_3500 : i32 = u_xlati76;
          let x_3502 : i32 = u_xlati76;
          let x_3505 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3500 / 4i)][(x_3502 % 4i)];
          let x_3507 : vec3<f32> = vs_TEXCOORD1;
          let x_3510 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3505.x, x_3505.y) * vec2<f32>(x_3507.x, x_3507.x)) + x_3510);
          let x_3512 : i32 = u_xlati76;
          let x_3515 : i32 = u_xlati76;
          let x_3519 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3512 + 2i) / 4i)][((x_3515 + 2i) % 4i)];
          let x_3521 : vec3<f32> = vs_TEXCOORD1;
          let x_3524 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3519.x, x_3519.y) * vec2<f32>(x_3521.z, x_3521.z)) + x_3524);
          let x_3526 : vec2<f32> = u_xlat54;
          let x_3527 : i32 = u_xlati76;
          let x_3530 : i32 = u_xlati76;
          let x_3534 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3527 + 3i) / 4i)][((x_3530 + 3i) % 4i)];
          u_xlat54 = (x_3526 + vec2<f32>(x_3534.x, x_3534.y));
          let x_3537 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3537 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3540 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3540);
          let x_3542 : i32 = u_xlati72;
          let x_3544 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3542];
          let x_3546 : vec2<f32> = u_xlat54;
          let x_3548 : i32 = u_xlati72;
          let x_3550 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3548];
          let x_3552 : vec2<f32> = ((vec2<f32>(x_3544.x, x_3544.y) * x_3546) + vec2<f32>(x_3550.z, x_3550.w));
          let x_3553 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3552.x, x_3552.y, x_3553.z, x_3553.w);
        } else {
          let x_3556 : vec3<f32> = vs_TEXCOORD1;
          let x_3558 : i32 = u_xlati76;
          let x_3561 : i32 = u_xlati76;
          let x_3565 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3558 + 1i) / 4i)][((x_3561 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3556.y, x_3556.y, x_3556.y, x_3556.y) * x_3565);
          let x_3567 : i32 = u_xlati76;
          let x_3569 : i32 = u_xlati76;
          let x_3572 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3567 / 4i)][(x_3569 % 4i)];
          let x_3573 : vec3<f32> = vs_TEXCOORD1;
          let x_3576 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3572 * vec4<f32>(x_3573.x, x_3573.x, x_3573.x, x_3573.x)) + x_3576);
          let x_3578 : i32 = u_xlati76;
          let x_3581 : i32 = u_xlati76;
          let x_3585 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3578 + 2i) / 4i)][((x_3581 + 2i) % 4i)];
          let x_3586 : vec3<f32> = vs_TEXCOORD1;
          let x_3589 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3585 * vec4<f32>(x_3586.z, x_3586.z, x_3586.z, x_3586.z)) + x_3589);
          let x_3591 : vec4<f32> = u_xlat9;
          let x_3592 : i32 = u_xlati76;
          let x_3595 : i32 = u_xlati76;
          let x_3599 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3592 + 3i) / 4i)][((x_3595 + 3i) % 4i)];
          u_xlat9 = (x_3591 + x_3599);
          let x_3601 : vec4<f32> = u_xlat9;
          let x_3603 : vec4<f32> = u_xlat9;
          let x_3605 : vec3<f32> = (vec3<f32>(x_3601.x, x_3601.y, x_3601.z) / vec3<f32>(x_3603.w, x_3603.w, x_3603.w));
          let x_3606 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3605.x, x_3605.y, x_3605.z, x_3606.w);
          let x_3608 : vec4<f32> = u_xlat9;
          let x_3610 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3608.x, x_3608.y, x_3608.z), vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
          let x_3613 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3613);
          let x_3615 : f32 = u_xlat74;
          let x_3617 : vec4<f32> = u_xlat9;
          let x_3619 : vec3<f32> = (vec3<f32>(x_3615, x_3615, x_3615) * vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
          let x_3620 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3619.x, x_3619.y, x_3619.z, x_3620.w);
          let x_3622 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3622.x, x_3622.y, x_3622.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3627 : f32 = u_xlat74;
          u_xlat74 = max(x_3627, 0.00000099999999747524f);
          let x_3630 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3630);
          let x_3632 : f32 = u_xlat74;
          let x_3634 : vec4<f32> = u_xlat9;
          let x_3636 : vec3<f32> = (vec3<f32>(x_3632, x_3632, x_3632) * vec3<f32>(x_3634.z, x_3634.x, x_3634.y));
          let x_3637 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3637.w);
          let x_3640 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3640);
          let x_3644 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3644, 0.0f, 1.0f);
          let x_3648 : vec4<f32> = u_xlat10;
          let x_3650 : vec4<bool> = (vec4<f32>(x_3648.y, x_3648.z, x_3648.y, x_3648.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3650.x, x_3650.y);
          let x_3653 : bool = u_xlatb54.x;
          if (x_3653) {
            let x_3658 : f32 = u_xlat10.x;
            x_3654 = x_3658;
          } else {
            let x_3661 : f32 = u_xlat10.x;
            x_3654 = -(x_3661);
          }
          let x_3663 : f32 = x_3654;
          u_xlat54.x = x_3663;
          let x_3666 : bool = u_xlatb54.y;
          if (x_3666) {
            let x_3671 : f32 = u_xlat10.x;
            x_3667 = x_3671;
          } else {
            let x_3674 : f32 = u_xlat10.x;
            x_3667 = -(x_3674);
          }
          let x_3676 : f32 = x_3667;
          u_xlat54.y = x_3676;
          let x_3678 : vec4<f32> = u_xlat9;
          let x_3680 : f32 = u_xlat74;
          let x_3683 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3678.x, x_3678.y) * vec2<f32>(x_3680, x_3680)) + x_3683);
          let x_3685 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3685 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3688 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3688, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3692 : i32 = u_xlati72;
          let x_3694 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3692];
          let x_3696 : vec2<f32> = u_xlat54;
          let x_3698 : i32 = u_xlati72;
          let x_3700 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3698];
          let x_3702 : vec2<f32> = ((vec2<f32>(x_3694.x, x_3694.y) * x_3696) + vec2<f32>(x_3700.z, x_3700.w));
          let x_3703 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3702.x, x_3702.y, x_3703.z, x_3703.w);
        }
      }
      let x_3710 : vec4<f32> = u_xlat8;
      let x_3712 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3710.x, x_3710.y), 0.0f);
      u_xlat8 = x_3712;
      let x_3714 : bool = u_xlatb5.y;
      if (x_3714) {
        let x_3719 : f32 = u_xlat8.w;
        x_3715 = x_3719;
      } else {
        let x_3722 : f32 = u_xlat8.x;
        x_3715 = x_3722;
      }
      let x_3723 : f32 = x_3715;
      u_xlat74 = x_3723;
      let x_3725 : bool = u_xlatb5.x;
      if (x_3725) {
        let x_3729 : vec4<f32> = u_xlat8;
        x_3726 = vec3<f32>(x_3729.x, x_3729.y, x_3729.z);
      } else {
        let x_3732 : f32 = u_xlat74;
        x_3726 = vec3<f32>(x_3732, x_3732, x_3732);
      }
      let x_3734 : vec3<f32> = x_3726;
      let x_3735 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3734.x, x_3734.y, x_3734.z, x_3735.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3741 : vec4<f32> = u_xlat8;
    let x_3743 : i32 = u_xlati72;
    let x_3745 : vec4<f32> = x_1929.x_AdditionalLightsColor[x_3743];
    let x_3747 : vec3<f32> = (vec3<f32>(x_3741.x, x_3741.y, x_3741.z) * vec3<f32>(x_3745.x, x_3745.y, x_3745.z));
    let x_3748 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3748.w);
    let x_3750 : f32 = u_xlat73;
    let x_3751 : f32 = u_xlat51;
    u_xlat72 = (x_3750 * x_3751);
    let x_3753 : f32 = u_xlat72;
    let x_3755 : vec4<f32> = u_xlat8;
    let x_3757 : vec3<f32> = (vec3<f32>(x_3753, x_3753, x_3753) * vec3<f32>(x_3755.x, x_3755.y, x_3755.z));
    let x_3758 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3757.x, x_3757.y, x_3757.z, x_3758.w);
    let x_3760 : vec4<f32> = u_xlat2;
    let x_3762 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_3760.x, x_3760.y, x_3760.z), vec3<f32>(x_3762.x, x_3762.y, x_3762.z));
    let x_3765 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3765, 0.0f, 1.0f);
    let x_3767 : f32 = u_xlat72;
    let x_3769 : vec4<f32> = u_xlat8;
    let x_3771 : vec3<f32> = (vec3<f32>(x_3767, x_3767, x_3767) * vec3<f32>(x_3769.x, x_3769.y, x_3769.z));
    let x_3772 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3771.x, x_3771.y, x_3771.z, x_3772.w);
    let x_3774 : vec4<f32> = u_xlat7;
    let x_3776 : vec4<f32> = u_xlat1;
    let x_3779 : vec4<f32> = u_xlat6;
    let x_3781 : vec3<f32> = ((vec3<f32>(x_3774.x, x_3774.y, x_3774.z) * vec3<f32>(x_3776.y, x_3776.z, x_3776.w)) + vec3<f32>(x_3779.x, x_3779.y, x_3779.z));
    let x_3782 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3781.x, x_3781.y, x_3781.z, x_3782.w);

    continuing {
      let x_3784 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3784 + bitcast<u32>(1i));
    }
  }
  let x_3786 : vec3<f32> = u_xlat3;
  let x_3787 : vec4<f32> = u_xlat1;
  let x_3790 : vec4<f32> = u_xlat4;
  let x_3792 : vec3<f32> = ((x_3786 * vec3<f32>(x_3787.y, x_3787.z, x_3787.w)) + vec3<f32>(x_3790.x, x_3790.y, x_3790.z));
  let x_3793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3792.x, x_3792.y, x_3792.z, x_3793.w);
  let x_3795 : vec4<f32> = u_xlat6;
  let x_3797 : vec4<f32> = u_xlat1;
  let x_3799 : vec3<f32> = (vec3<f32>(x_3795.x, x_3795.y, x_3795.z) + vec3<f32>(x_3797.x, x_3797.y, x_3797.z));
  let x_3800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3799.x, x_3799.y, x_3799.z, x_3800.w);
  let x_3803 : f32 = u_xlat23.x;
  let x_3805 : f32 = u_xlat23.x;
  u_xlat23.x = (x_3803 * -(x_3805));
  let x_3810 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_3810);
  let x_3813 : vec4<f32> = u_xlat1;
  let x_3816 : vec4<f32> = x_45.unity_FogColor;
  let x_3819 : vec3<f32> = (vec3<f32>(x_3813.x, x_3813.y, x_3813.z) + -(vec3<f32>(x_3816.x, x_3816.y, x_3816.z)));
  let x_3820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3820.w);
  let x_3824 : vec3<f32> = u_xlat23;
  let x_3826 : vec4<f32> = u_xlat1;
  let x_3830 : vec4<f32> = x_45.unity_FogColor;
  let x_3832 : vec3<f32> = ((vec3<f32>(x_3824.x, x_3824.x, x_3824.x) * vec3<f32>(x_3826.x, x_3826.y, x_3826.z)) + vec3<f32>(x_3830.x, x_3830.y, x_3830.z));
  let x_3833 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3832.x, x_3832.y, x_3832.z, x_3833.w);
  let x_3836 : f32 = x_58.x_Surface;
  u_xlatb23 = (x_3836 == 1.0f);
  let x_3838 : bool = u_xlatb23;
  let x_3839 : bool = u_xlatb46;
  u_xlatb23 = (x_3838 | x_3839);
  let x_3841 : bool = u_xlatb23;
  if (x_3841) {
    let x_3846 : f32 = u_xlat0.x;
    x_3842 = x_3846;
  } else {
    x_3842 = 1.0f;
  }
  let x_3848 : f32 = x_3842;
  SV_Target0.w = x_3848;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


