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

@group(1) @binding(1) var<uniform> x_1936 : AdditionalLights;

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
  var x_2076 : f32;
  var x_2086 : f32;
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
  var x_3661 : f32;
  var x_3674 : f32;
  var x_3722 : f32;
  var x_3733 : vec3<f32>;
  var x_3856 : f32;
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
  let x_1834 : vec4<f32> = u_xlat0;
  let x_1836 : vec4<f32> = u_xlat4;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1834.x, x_1834.x, x_1834.x) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1842 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1844 : f32 = x_186.unity_LightData.y;
  u_xlat69 = min(x_1842, x_1844);
  let x_1848 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1848));
  let x_1852 : f32 = u_xlat1.x;
  let x_1855 : f32 = x_377.x_AdditionalShadowFadeParams.x;
  let x_1858 : f32 = x_377.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1852 * x_1855) + x_1858);
  let x_1862 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1862, 0.0f, 1.0f);
  let x_1866 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1868 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1870 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1872 : f32 = x_1682.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1873 : vec4<f32> = vec4<f32>(x_1866, x_1868, x_1870, x_1872);
  let x_1879 : vec4<bool> = (vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1873.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1879.x, x_1879.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1891 : u32 = u_xlatu_loop_1;
    let x_1892 : u32 = u_xlatu69;
    if ((x_1891 < x_1892)) {
    } else {
      break;
    }
    let x_1895 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1895 >> 2u);
    let x_1899 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1899 & 3u));
    let x_1902 : u32 = u_xlatu72;
    let x_1905 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_1902)];
    let x_1915 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1920 : vec4<u32> = indexable[x_1915];
    u_xlat72 = dot(x_1905, bitcast<vec4<f32>>(x_1920));
    let x_1924 : f32 = u_xlat72;
    u_xlati72 = i32(x_1924);
    let x_1926 : vec3<f32> = vs_TEXCOORD1;
    let x_1937 : i32 = u_xlati72;
    let x_1939 : vec4<f32> = x_1936.x_AdditionalLightsPosition[x_1937];
    let x_1942 : i32 = u_xlati72;
    let x_1944 : vec4<f32> = x_1936.x_AdditionalLightsPosition[x_1942];
    let x_1946 : vec3<f32> = ((-(x_1926) * vec3<f32>(x_1939.w, x_1939.w, x_1939.w)) + vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
    let x_1947 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
    let x_1950 : vec4<f32> = u_xlat7;
    let x_1952 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_1950.x, x_1950.y, x_1950.z), vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : f32 = u_xlat73;
    u_xlat73 = max(x_1955, 0.00006103515625f);
    let x_1959 : f32 = u_xlat73;
    u_xlat51 = inverseSqrt(x_1959);
    let x_1961 : f32 = u_xlat51;
    let x_1963 : vec4<f32> = u_xlat7;
    let x_1965 : vec3<f32> = (vec3<f32>(x_1961, x_1961, x_1961) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
    let x_1966 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
    let x_1968 : f32 = u_xlat73;
    u_xlat51 = (1.0f / x_1968);
    let x_1970 : f32 = u_xlat73;
    let x_1971 : i32 = u_xlati72;
    let x_1973 : f32 = x_1936.x_AdditionalLightsAttenuation[x_1971].x;
    u_xlat73 = (x_1970 * x_1973);
    let x_1975 : f32 = u_xlat73;
    let x_1977 : f32 = u_xlat73;
    u_xlat73 = ((-(x_1975) * x_1977) + 1.0f);
    let x_1980 : f32 = u_xlat73;
    u_xlat73 = max(x_1980, 0.0f);
    let x_1982 : f32 = u_xlat73;
    let x_1983 : f32 = u_xlat73;
    u_xlat73 = (x_1982 * x_1983);
    let x_1985 : f32 = u_xlat73;
    let x_1986 : f32 = u_xlat51;
    u_xlat73 = (x_1985 * x_1986);
    let x_1988 : i32 = u_xlati72;
    let x_1990 : vec4<f32> = x_1936.x_AdditionalLightsSpotDir[x_1988];
    let x_1992 : vec4<f32> = u_xlat7;
    u_xlat51 = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1995 : f32 = u_xlat51;
    let x_1996 : i32 = u_xlati72;
    let x_1998 : f32 = x_1936.x_AdditionalLightsAttenuation[x_1996].z;
    let x_2000 : i32 = u_xlati72;
    let x_2002 : f32 = x_1936.x_AdditionalLightsAttenuation[x_2000].w;
    u_xlat51 = ((x_1995 * x_1998) + x_2002);
    let x_2004 : f32 = u_xlat51;
    u_xlat51 = clamp(x_2004, 0.0f, 1.0f);
    let x_2006 : f32 = u_xlat51;
    let x_2007 : f32 = u_xlat51;
    u_xlat51 = (x_2006 * x_2007);
    let x_2009 : f32 = u_xlat73;
    let x_2010 : f32 = u_xlat51;
    u_xlat73 = (x_2009 * x_2010);
    let x_2014 : i32 = u_xlati72;
    let x_2016 : f32 = x_377.x_AdditionalShadowParams[x_2014].w;
    u_xlati51 = i32(x_2016);
    let x_2019 : i32 = u_xlati51;
    u_xlatb74 = (x_2019 >= 0i);
    let x_2021 : bool = u_xlatb74;
    if (x_2021) {
      let x_2025 : i32 = u_xlati72;
      let x_2027 : f32 = x_377.x_AdditionalShadowParams[x_2025].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2027, x_2027, x_2027, x_2027))));
      let x_2031 : bool = u_xlatb74;
      if (x_2031) {
        let x_2036 : vec4<f32> = u_xlat7;
        let x_2039 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<bool> = (abs(vec4<f32>(x_2036.z, x_2036.z, x_2036.y, x_2036.z)) >= abs(vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.x)));
        let x_2044 : vec3<bool> = vec3<bool>(x_2042.x, x_2042.y, x_2042.z);
        let x_2045 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
        let x_2048 : bool = u_xlatb8.y;
        let x_2050 : bool = u_xlatb8.x;
        u_xlatb74 = (x_2048 & x_2050);
        let x_2052 : vec4<f32> = u_xlat7;
        let x_2055 : vec4<bool> = (-(vec4<f32>(x_2052.z, x_2052.y, x_2052.z, x_2052.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2056 : vec3<bool> = vec3<bool>(x_2055.x, x_2055.y, x_2055.w);
        let x_2057 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2056.x, x_2056.y, x_2057.z, x_2056.z);
        let x_2060 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2060);
        let x_2066 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2066);
        let x_2072 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_2072);
        let x_2075 : bool = u_xlatb8.z;
        if (x_2075) {
          let x_2080 : f32 = u_xlat8.y;
          x_2076 = x_2080;
        } else {
          let x_2082 : f32 = u_xlat75;
          x_2076 = x_2082;
        }
        let x_2083 : f32 = x_2076;
        u_xlat75 = x_2083;
        let x_2085 : bool = u_xlatb74;
        if (x_2085) {
          let x_2090 : f32 = u_xlat8.x;
          x_2086 = x_2090;
        } else {
          let x_2092 : f32 = u_xlat75;
          x_2086 = x_2092;
        }
        let x_2093 : f32 = x_2086;
        u_xlat74 = x_2093;
        let x_2094 : i32 = u_xlati72;
        let x_2096 : f32 = x_377.x_AdditionalShadowParams[x_2094].w;
        u_xlat75 = trunc(x_2096);
        let x_2098 : f32 = u_xlat74;
        let x_2099 : f32 = u_xlat75;
        u_xlat74 = (x_2098 + x_2099);
        let x_2101 : f32 = u_xlat74;
        u_xlati51 = i32(x_2101);
      }
      let x_2103 : i32 = u_xlati51;
      u_xlati51 = (x_2103 << bitcast<u32>(2i));
      let x_2105 : vec3<f32> = vs_TEXCOORD1;
      let x_2108 : i32 = u_xlati51;
      let x_2111 : i32 = u_xlati51;
      let x_2115 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2108 + 1i) / 4i)][((x_2111 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2105.y, x_2105.y, x_2105.y, x_2105.y) * x_2115);
      let x_2117 : i32 = u_xlati51;
      let x_2119 : i32 = u_xlati51;
      let x_2122 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[(x_2117 / 4i)][(x_2119 % 4i)];
      let x_2123 : vec3<f32> = vs_TEXCOORD1;
      let x_2126 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2122 * vec4<f32>(x_2123.x, x_2123.x, x_2123.x, x_2123.x)) + x_2126);
      let x_2128 : i32 = u_xlati51;
      let x_2131 : i32 = u_xlati51;
      let x_2135 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2128 + 2i) / 4i)][((x_2131 + 2i) % 4i)];
      let x_2136 : vec3<f32> = vs_TEXCOORD1;
      let x_2139 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2135 * vec4<f32>(x_2136.z, x_2136.z, x_2136.z, x_2136.z)) + x_2139);
      let x_2141 : vec4<f32> = u_xlat8;
      let x_2142 : i32 = u_xlati51;
      let x_2145 : i32 = u_xlati51;
      let x_2149 : vec4<f32> = x_377.x_AdditionalLightsWorldToShadow[((x_2142 + 3i) / 4i)][((x_2145 + 3i) % 4i)];
      u_xlat8 = (x_2141 + x_2149);
      let x_2151 : vec4<f32> = u_xlat8;
      let x_2153 : vec4<f32> = u_xlat8;
      let x_2155 : vec3<f32> = (vec3<f32>(x_2151.x, x_2151.y, x_2151.z) / vec3<f32>(x_2153.w, x_2153.w, x_2153.w));
      let x_2156 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
      let x_2159 : i32 = u_xlati72;
      let x_2161 : f32 = x_377.x_AdditionalShadowParams[x_2159].y;
      u_xlatb51 = (0.0f < x_2161);
      let x_2163 : bool = u_xlatb51;
      if (x_2163) {
        let x_2166 : i32 = u_xlati72;
        let x_2168 : f32 = x_377.x_AdditionalShadowParams[x_2166].y;
        u_xlatb51 = (1.0f == x_2168);
        let x_2170 : bool = u_xlatb51;
        if (x_2170) {
          let x_2173 : vec4<f32> = u_xlat8;
          let x_2176 : vec4<f32> = x_377.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2173.x, x_2173.y, x_2173.x, x_2173.y) + x_2176);
          let x_2179 : vec4<f32> = u_xlat9;
          let x_2180 : vec2<f32> = vec2<f32>(x_2179.x, x_2179.y);
          let x_2182 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2180.x, x_2180.y, x_2182);
          let x_2190 : vec3<f32> = txVec30;
          let x_2192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2190.xy, x_2190.z);
          u_xlat10.x = x_2192;
          let x_2195 : vec4<f32> = u_xlat9;
          let x_2196 : vec2<f32> = vec2<f32>(x_2195.z, x_2195.w);
          let x_2198 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2196.x, x_2196.y, x_2198);
          let x_2205 : vec3<f32> = txVec31;
          let x_2207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2205.xy, x_2205.z);
          u_xlat10.y = x_2207;
          let x_2209 : vec4<f32> = u_xlat8;
          let x_2213 : vec4<f32> = x_377.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2209.x, x_2209.y, x_2209.x, x_2209.y) + x_2213);
          let x_2216 : vec4<f32> = u_xlat9;
          let x_2217 : vec2<f32> = vec2<f32>(x_2216.x, x_2216.y);
          let x_2219 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2217.x, x_2217.y, x_2219);
          let x_2226 : vec3<f32> = txVec32;
          let x_2228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2226.xy, x_2226.z);
          u_xlat10.z = x_2228;
          let x_2231 : vec4<f32> = u_xlat9;
          let x_2232 : vec2<f32> = vec2<f32>(x_2231.z, x_2231.w);
          let x_2234 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
          let x_2241 : vec3<f32> = txVec33;
          let x_2243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
          u_xlat10.w = x_2243;
          let x_2245 : vec4<f32> = u_xlat10;
          u_xlat51 = dot(x_2245, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2248 : i32 = u_xlati72;
          let x_2250 : f32 = x_377.x_AdditionalShadowParams[x_2248].y;
          u_xlatb74 = (2.0f == x_2250);
          let x_2252 : bool = u_xlatb74;
          if (x_2252) {
            let x_2255 : vec4<f32> = u_xlat8;
            let x_2259 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2262 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(x_2259.z, x_2259.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2263 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
            let x_2265 : vec4<f32> = u_xlat9;
            let x_2267 : vec2<f32> = floor(vec2<f32>(x_2265.x, x_2265.y));
            let x_2268 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2267.x, x_2267.y, x_2268.z, x_2268.w);
            let x_2271 : vec4<f32> = u_xlat8;
            let x_2274 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2277 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2271.x, x_2271.y) * vec2<f32>(x_2274.z, x_2274.w)) + -(vec2<f32>(x_2277.x, x_2277.y)));
            let x_2281 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2281.x, x_2281.x, x_2281.y, x_2281.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2284 : vec4<f32> = u_xlat10;
            let x_2286 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2284.x, x_2284.x, x_2284.z, x_2284.z) * vec4<f32>(x_2286.x, x_2286.x, x_2286.z, x_2286.z));
            let x_2289 : vec4<f32> = u_xlat11;
            let x_2291 : vec2<f32> = (vec2<f32>(x_2289.y, x_2289.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2292 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2291.x, x_2292.y, x_2291.y, x_2292.w);
            let x_2294 : vec4<f32> = u_xlat11;
            let x_2297 : vec2<f32> = u_xlat55;
            let x_2299 : vec2<f32> = ((vec2<f32>(x_2294.x, x_2294.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2297));
            let x_2300 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
            let x_2303 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2303) + vec2<f32>(1.0f, 1.0f));
            let x_2306 : vec2<f32> = u_xlat55;
            let x_2307 : vec2<f32> = min(x_2306, vec2<f32>(0.0f, 0.0f));
            let x_2308 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
            let x_2310 : vec4<f32> = u_xlat12;
            let x_2313 : vec4<f32> = u_xlat12;
            let x_2316 : vec2<f32> = u_xlat57;
            let x_2317 : vec2<f32> = ((-(vec2<f32>(x_2310.x, x_2310.y)) * vec2<f32>(x_2313.x, x_2313.y)) + x_2316);
            let x_2318 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
            let x_2320 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2320, vec2<f32>(0.0f, 0.0f));
            let x_2322 : vec2<f32> = u_xlat55;
            let x_2324 : vec2<f32> = u_xlat55;
            let x_2326 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2322) * x_2324) + vec2<f32>(x_2326.y, x_2326.w));
            let x_2329 : vec4<f32> = u_xlat12;
            let x_2331 : vec2<f32> = (vec2<f32>(x_2329.x, x_2329.y) + vec2<f32>(1.0f, 1.0f));
            let x_2332 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2334 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2334 + vec2<f32>(1.0f, 1.0f));
            let x_2336 : vec4<f32> = u_xlat11;
            let x_2338 : vec2<f32> = (vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2339 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
            let x_2341 : vec2<f32> = u_xlat57;
            let x_2342 : vec2<f32> = (x_2341 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2343 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
            let x_2345 : vec4<f32> = u_xlat12;
            let x_2347 : vec2<f32> = (vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2348 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2347.x, x_2347.y, x_2348.z, x_2348.w);
            let x_2350 : vec2<f32> = u_xlat55;
            let x_2351 : vec2<f32> = (x_2350 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2352 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2351.x, x_2351.y, x_2352.z, x_2352.w);
            let x_2354 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2354.y, x_2354.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2358 : f32 = u_xlat12.x;
            u_xlat13.z = x_2358;
            let x_2361 : f32 = u_xlat55.x;
            u_xlat13.w = x_2361;
            let x_2364 : f32 = u_xlat14.x;
            u_xlat11.z = x_2364;
            let x_2367 : f32 = u_xlat10.x;
            u_xlat11.w = x_2367;
            let x_2369 : vec4<f32> = u_xlat11;
            let x_2371 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2369.z, x_2369.w, x_2369.x, x_2369.z) + vec4<f32>(x_2371.z, x_2371.w, x_2371.x, x_2371.z));
            let x_2375 : f32 = u_xlat13.y;
            u_xlat12.z = x_2375;
            let x_2378 : f32 = u_xlat55.y;
            u_xlat12.w = x_2378;
            let x_2381 : f32 = u_xlat11.y;
            u_xlat14.z = x_2381;
            let x_2384 : f32 = u_xlat10.z;
            u_xlat14.w = x_2384;
            let x_2386 : vec4<f32> = u_xlat12;
            let x_2388 : vec4<f32> = u_xlat14;
            let x_2390 : vec3<f32> = (vec3<f32>(x_2386.z, x_2386.y, x_2386.w) + vec3<f32>(x_2388.z, x_2388.y, x_2388.w));
            let x_2391 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
            let x_2393 : vec4<f32> = u_xlat11;
            let x_2395 : vec4<f32> = u_xlat15;
            let x_2397 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.z, x_2393.w) / vec3<f32>(x_2395.z, x_2395.w, x_2395.y));
            let x_2398 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
            let x_2400 : vec4<f32> = u_xlat11;
            let x_2402 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2403 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat14;
            let x_2407 : vec4<f32> = u_xlat10;
            let x_2409 : vec3<f32> = (vec3<f32>(x_2405.z, x_2405.y, x_2405.w) / vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
            let x_2410 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
            let x_2412 : vec4<f32> = u_xlat12;
            let x_2414 : vec3<f32> = (vec3<f32>(x_2412.x, x_2412.y, x_2412.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2415 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
            let x_2417 : vec4<f32> = u_xlat11;
            let x_2420 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2422 : vec3<f32> = (vec3<f32>(x_2417.y, x_2417.x, x_2417.z) * vec3<f32>(x_2420.x, x_2420.x, x_2420.x));
            let x_2423 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat12;
            let x_2428 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2430 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.y, x_2425.z) * vec3<f32>(x_2428.y, x_2428.y, x_2428.y));
            let x_2431 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
            let x_2434 : f32 = u_xlat12.x;
            u_xlat11.w = x_2434;
            let x_2436 : vec4<f32> = u_xlat9;
            let x_2439 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2442 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2436.x, x_2436.y, x_2436.x, x_2436.y) * vec4<f32>(x_2439.x, x_2439.y, x_2439.x, x_2439.y)) + vec4<f32>(x_2442.y, x_2442.w, x_2442.x, x_2442.w));
            let x_2445 : vec4<f32> = u_xlat9;
            let x_2448 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2451 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2445.x, x_2445.y) * vec2<f32>(x_2448.x, x_2448.y)) + vec2<f32>(x_2451.z, x_2451.w));
            let x_2455 : f32 = u_xlat11.y;
            u_xlat12.w = x_2455;
            let x_2457 : vec4<f32> = u_xlat12;
            let x_2458 : vec2<f32> = vec2<f32>(x_2457.y, x_2457.z);
            let x_2459 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2459.x, x_2458.x, x_2459.z, x_2458.y);
            let x_2461 : vec4<f32> = u_xlat9;
            let x_2464 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2467 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y) * vec4<f32>(x_2464.x, x_2464.y, x_2464.x, x_2464.y)) + vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2467.y));
            let x_2470 : vec4<f32> = u_xlat9;
            let x_2473 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2476 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2470.x, x_2470.y, x_2470.x, x_2470.y) * vec4<f32>(x_2473.x, x_2473.y, x_2473.x, x_2473.y)) + vec4<f32>(x_2476.w, x_2476.y, x_2476.w, x_2476.z));
            let x_2479 : vec4<f32> = u_xlat9;
            let x_2482 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2485 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y) * vec4<f32>(x_2482.x, x_2482.y, x_2482.x, x_2482.y)) + vec4<f32>(x_2485.x, x_2485.w, x_2485.z, x_2485.w));
            let x_2488 : vec4<f32> = u_xlat10;
            let x_2490 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2488.x, x_2488.x, x_2488.x, x_2488.y) * vec4<f32>(x_2490.z, x_2490.w, x_2490.y, x_2490.z));
            let x_2493 : vec4<f32> = u_xlat10;
            let x_2495 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2493.y, x_2493.y, x_2493.z, x_2493.z) * x_2495);
            let x_2498 : f32 = u_xlat10.z;
            let x_2500 : f32 = u_xlat15.y;
            u_xlat74 = (x_2498 * x_2500);
            let x_2503 : vec4<f32> = u_xlat13;
            let x_2504 : vec2<f32> = vec2<f32>(x_2503.x, x_2503.y);
            let x_2506 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec34;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat75 = x_2515;
            let x_2517 : vec4<f32> = u_xlat13;
            let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
            let x_2520 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
            let x_2528 : vec3<f32> = txVec35;
            let x_2530 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2528.xy, x_2528.z);
            u_xlat76 = x_2530;
            let x_2531 : f32 = u_xlat76;
            let x_2533 : f32 = u_xlat16.y;
            u_xlat76 = (x_2531 * x_2533);
            let x_2536 : f32 = u_xlat16.x;
            let x_2537 : f32 = u_xlat75;
            let x_2539 : f32 = u_xlat76;
            u_xlat75 = ((x_2536 * x_2537) + x_2539);
            let x_2542 : vec2<f32> = u_xlat55;
            let x_2544 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2542.x, x_2542.y, x_2544);
            let x_2551 : vec3<f32> = txVec36;
            let x_2553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2551.xy, x_2551.z);
            u_xlat76 = x_2553;
            let x_2555 : f32 = u_xlat16.z;
            let x_2556 : f32 = u_xlat76;
            let x_2558 : f32 = u_xlat75;
            u_xlat75 = ((x_2555 * x_2556) + x_2558);
            let x_2561 : vec4<f32> = u_xlat12;
            let x_2562 : vec2<f32> = vec2<f32>(x_2561.x, x_2561.y);
            let x_2564 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
            let x_2571 : vec3<f32> = txVec37;
            let x_2573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2571.xy, x_2571.z);
            u_xlat76 = x_2573;
            let x_2575 : f32 = u_xlat16.w;
            let x_2576 : f32 = u_xlat76;
            let x_2578 : f32 = u_xlat75;
            u_xlat75 = ((x_2575 * x_2576) + x_2578);
            let x_2581 : vec4<f32> = u_xlat14;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.x, x_2581.y);
            let x_2584 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2591 : vec3<f32> = txVec38;
            let x_2593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
            u_xlat76 = x_2593;
            let x_2595 : f32 = u_xlat17.x;
            let x_2596 : f32 = u_xlat76;
            let x_2598 : f32 = u_xlat75;
            u_xlat75 = ((x_2595 * x_2596) + x_2598);
            let x_2601 : vec4<f32> = u_xlat14;
            let x_2602 : vec2<f32> = vec2<f32>(x_2601.z, x_2601.w);
            let x_2604 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
            let x_2611 : vec3<f32> = txVec39;
            let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
            u_xlat76 = x_2613;
            let x_2615 : f32 = u_xlat17.y;
            let x_2616 : f32 = u_xlat76;
            let x_2618 : f32 = u_xlat75;
            u_xlat75 = ((x_2615 * x_2616) + x_2618);
            let x_2621 : vec4<f32> = u_xlat12;
            let x_2622 : vec2<f32> = vec2<f32>(x_2621.z, x_2621.w);
            let x_2624 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2622.x, x_2622.y, x_2624);
            let x_2631 : vec3<f32> = txVec40;
            let x_2633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2631.xy, x_2631.z);
            u_xlat76 = x_2633;
            let x_2635 : f32 = u_xlat17.z;
            let x_2636 : f32 = u_xlat76;
            let x_2638 : f32 = u_xlat75;
            u_xlat75 = ((x_2635 * x_2636) + x_2638);
            let x_2641 : vec4<f32> = u_xlat11;
            let x_2642 : vec2<f32> = vec2<f32>(x_2641.x, x_2641.y);
            let x_2644 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2642.x, x_2642.y, x_2644);
            let x_2651 : vec3<f32> = txVec41;
            let x_2653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2651.xy, x_2651.z);
            u_xlat76 = x_2653;
            let x_2655 : f32 = u_xlat17.w;
            let x_2656 : f32 = u_xlat76;
            let x_2658 : f32 = u_xlat75;
            u_xlat75 = ((x_2655 * x_2656) + x_2658);
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2662 : vec2<f32> = vec2<f32>(x_2661.z, x_2661.w);
            let x_2664 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2662.x, x_2662.y, x_2664);
            let x_2671 : vec3<f32> = txVec42;
            let x_2673 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2671.xy, x_2671.z);
            u_xlat76 = x_2673;
            let x_2674 : f32 = u_xlat74;
            let x_2675 : f32 = u_xlat76;
            let x_2677 : f32 = u_xlat75;
            u_xlat51 = ((x_2674 * x_2675) + x_2677);
          } else {
            let x_2680 : vec4<f32> = u_xlat8;
            let x_2683 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2686 : vec2<f32> = ((vec2<f32>(x_2680.x, x_2680.y) * vec2<f32>(x_2683.z, x_2683.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2687 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
            let x_2689 : vec4<f32> = u_xlat9;
            let x_2691 : vec2<f32> = floor(vec2<f32>(x_2689.x, x_2689.y));
            let x_2692 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2691.x, x_2691.y, x_2692.z, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat8;
            let x_2697 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2700 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2694.x, x_2694.y) * vec2<f32>(x_2697.z, x_2697.w)) + -(vec2<f32>(x_2700.x, x_2700.y)));
            let x_2704 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2704.x, x_2704.x, x_2704.y, x_2704.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2707 : vec4<f32> = u_xlat10;
            let x_2709 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2707.x, x_2707.x, x_2707.z, x_2707.z) * vec4<f32>(x_2709.x, x_2709.x, x_2709.z, x_2709.z));
            let x_2712 : vec4<f32> = u_xlat11;
            let x_2714 : vec2<f32> = (vec2<f32>(x_2712.y, x_2712.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2715 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2715.x, x_2714.x, x_2715.z, x_2714.y);
            let x_2717 : vec4<f32> = u_xlat11;
            let x_2720 : vec2<f32> = u_xlat55;
            let x_2722 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2720));
            let x_2723 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2722.x, x_2723.y, x_2722.y, x_2723.w);
            let x_2725 : vec2<f32> = u_xlat55;
            let x_2727 : vec2<f32> = (-(x_2725) + vec2<f32>(1.0f, 1.0f));
            let x_2728 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2727.x, x_2727.y, x_2728.z, x_2728.w);
            let x_2730 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2730, vec2<f32>(0.0f, 0.0f));
            let x_2732 : vec2<f32> = u_xlat57;
            let x_2734 : vec2<f32> = u_xlat57;
            let x_2736 : vec4<f32> = u_xlat11;
            let x_2738 : vec2<f32> = ((-(x_2732) * x_2734) + vec2<f32>(x_2736.x, x_2736.y));
            let x_2739 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2741 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2741, vec2<f32>(0.0f, 0.0f));
            let x_2744 : vec2<f32> = u_xlat57;
            let x_2746 : vec2<f32> = u_xlat57;
            let x_2748 : vec4<f32> = u_xlat10;
            let x_2750 : vec2<f32> = ((-(x_2744) * x_2746) + vec2<f32>(x_2748.y, x_2748.w));
            let x_2751 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2750.x, x_2751.y, x_2750.y);
            let x_2753 : vec4<f32> = u_xlat11;
            let x_2755 : vec2<f32> = (vec2<f32>(x_2753.x, x_2753.y) + vec2<f32>(2.0f, 2.0f));
            let x_2756 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2755.x, x_2755.y, x_2756.z, x_2756.w);
            let x_2758 : vec3<f32> = u_xlat33;
            let x_2760 : vec2<f32> = (vec2<f32>(x_2758.x, x_2758.z) + vec2<f32>(2.0f, 2.0f));
            let x_2761 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2761.x, x_2760.x, x_2761.z, x_2760.y);
            let x_2764 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2764 * 0.08163200318813323975f);
            let x_2767 : vec4<f32> = u_xlat10;
            let x_2769 : vec3<f32> = (vec3<f32>(x_2767.z, x_2767.x, x_2767.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2770 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2774 : vec2<f32> = (vec2<f32>(x_2772.x, x_2772.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2775 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2774.x, x_2774.y, x_2775.z, x_2775.w);
            let x_2778 : f32 = u_xlat14.y;
            u_xlat13.x = x_2778;
            let x_2780 : vec2<f32> = u_xlat55;
            let x_2783 : vec2<f32> = ((vec2<f32>(x_2780.x, x_2780.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2784.x, x_2783.x, x_2784.z, x_2783.y);
            let x_2786 : vec2<f32> = u_xlat55;
            let x_2789 : vec2<f32> = ((vec2<f32>(x_2786.x, x_2786.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2790 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2789.x, x_2790.y, x_2789.y, x_2790.w);
            let x_2793 : f32 = u_xlat10.x;
            u_xlat11.y = x_2793;
            let x_2796 : f32 = u_xlat12.y;
            u_xlat11.w = x_2796;
            let x_2798 : vec4<f32> = u_xlat11;
            let x_2799 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2798 + x_2799);
            let x_2801 : vec2<f32> = u_xlat55;
            let x_2804 : vec2<f32> = ((vec2<f32>(x_2801.y, x_2801.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2805 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2804.x, x_2805.z, x_2804.y);
            let x_2807 : vec2<f32> = u_xlat55;
            let x_2810 : vec2<f32> = ((vec2<f32>(x_2807.y, x_2807.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2811 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2810.x, x_2811.y, x_2810.y, x_2811.w);
            let x_2814 : f32 = u_xlat10.y;
            u_xlat12.y = x_2814;
            let x_2816 : vec4<f32> = u_xlat12;
            let x_2817 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2816 + x_2817);
            let x_2819 : vec4<f32> = u_xlat11;
            let x_2820 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2819 / x_2820);
            let x_2822 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2822 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2824 : vec4<f32> = u_xlat12;
            let x_2825 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2824 / x_2825);
            let x_2827 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2827 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2829 : vec4<f32> = u_xlat11;
            let x_2832 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2829.w, x_2829.x, x_2829.y, x_2829.z) * vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.x));
            let x_2835 : vec4<f32> = u_xlat12;
            let x_2838 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2835.x, x_2835.w, x_2835.y, x_2835.z) * vec4<f32>(x_2838.y, x_2838.y, x_2838.y, x_2838.y));
            let x_2841 : vec4<f32> = u_xlat11;
            let x_2842 : vec3<f32> = vec3<f32>(x_2841.y, x_2841.z, x_2841.w);
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2842.x, x_2843.y, x_2842.y, x_2842.z);
            let x_2846 : f32 = u_xlat12.x;
            u_xlat14.y = x_2846;
            let x_2848 : vec4<f32> = u_xlat9;
            let x_2851 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) * vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y)) + vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat9;
            let x_2860 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.w, x_2863.y));
            let x_2867 : f32 = u_xlat14.y;
            u_xlat11.y = x_2867;
            let x_2870 : f32 = u_xlat12.z;
            u_xlat14.y = x_2870;
            let x_2872 : vec4<f32> = u_xlat9;
            let x_2875 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y) * vec4<f32>(x_2875.x, x_2875.y, x_2875.x, x_2875.y)) + vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2878.y));
            let x_2881 : vec4<f32> = u_xlat9;
            let x_2884 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat14;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2884.x, x_2884.y)) + vec2<f32>(x_2887.w, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2889.x, x_2889.y, x_2890.z, x_2890.w);
            let x_2893 : f32 = u_xlat14.y;
            u_xlat11.z = x_2893;
            let x_2896 : vec4<f32> = u_xlat9;
            let x_2899 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2902 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2896.x, x_2896.y, x_2896.x, x_2896.y) * vec4<f32>(x_2899.x, x_2899.y, x_2899.x, x_2899.y)) + vec4<f32>(x_2902.x, x_2902.y, x_2902.x, x_2902.z));
            let x_2906 : f32 = u_xlat12.w;
            u_xlat14.y = x_2906;
            let x_2909 : vec4<f32> = u_xlat9;
            let x_2912 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.y) * vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y)) + vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2915.y));
            let x_2919 : vec4<f32> = u_xlat9;
            let x_2922 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2925 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2919.x, x_2919.y) * vec2<f32>(x_2922.x, x_2922.y)) + vec2<f32>(x_2925.w, x_2925.y));
            let x_2929 : f32 = u_xlat14.y;
            u_xlat11.w = x_2929;
            let x_2932 : vec4<f32> = u_xlat9;
            let x_2935 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2938 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2932.x, x_2932.y) * vec2<f32>(x_2935.x, x_2935.y)) + vec2<f32>(x_2938.x, x_2938.w));
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2942 : vec3<f32> = vec3<f32>(x_2941.x, x_2941.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2942.x, x_2943.y, x_2942.y, x_2942.z);
            let x_2945 : vec4<f32> = u_xlat9;
            let x_2948 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2951 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2945.x, x_2945.y, x_2945.x, x_2945.y) * vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y)) + vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2951.y));
            let x_2954 : vec4<f32> = u_xlat9;
            let x_2957 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2960 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2954.x, x_2954.y) * vec2<f32>(x_2957.x, x_2957.y)) + vec2<f32>(x_2960.w, x_2960.y));
            let x_2964 : f32 = u_xlat11.x;
            u_xlat12.x = x_2964;
            let x_2966 : vec4<f32> = u_xlat9;
            let x_2969 : vec4<f32> = x_377.x_AdditionalShadowmapSize;
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2974 : vec2<f32> = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.x, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2978 : vec4<f32> = u_xlat10;
            let x_2980 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2978.x, x_2978.x, x_2978.x, x_2978.x) * x_2980);
            let x_2983 : vec4<f32> = u_xlat10;
            let x_2985 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2983.y, x_2983.y, x_2983.y, x_2983.y) * x_2985);
            let x_2988 : vec4<f32> = u_xlat10;
            let x_2990 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2988.z, x_2988.z, x_2988.z, x_2988.z) * x_2990);
            let x_2992 : vec4<f32> = u_xlat10;
            let x_2994 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2992.w, x_2992.w, x_2992.w, x_2992.w) * x_2994);
            let x_2997 : vec4<f32> = u_xlat15;
            let x_2998 : vec2<f32> = vec2<f32>(x_2997.x, x_2997.y);
            let x_3000 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
            let x_3007 : vec3<f32> = txVec43;
            let x_3009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
            u_xlat74 = x_3009;
            let x_3011 : vec4<f32> = u_xlat15;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.z, x_3011.w);
            let x_3014 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec44;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat75 = x_3023;
            let x_3024 : f32 = u_xlat75;
            let x_3026 : f32 = u_xlat20.y;
            u_xlat75 = (x_3024 * x_3026);
            let x_3029 : f32 = u_xlat20.x;
            let x_3030 : f32 = u_xlat74;
            let x_3032 : f32 = u_xlat75;
            u_xlat74 = ((x_3029 * x_3030) + x_3032);
            let x_3035 : vec2<f32> = u_xlat55;
            let x_3037 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
            let x_3044 : vec3<f32> = txVec45;
            let x_3046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
            u_xlat75 = x_3046;
            let x_3048 : f32 = u_xlat20.z;
            let x_3049 : f32 = u_xlat75;
            let x_3051 : f32 = u_xlat74;
            u_xlat74 = ((x_3048 * x_3049) + x_3051);
            let x_3054 : vec4<f32> = u_xlat18;
            let x_3055 : vec2<f32> = vec2<f32>(x_3054.x, x_3054.y);
            let x_3057 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3055.x, x_3055.y, x_3057);
            let x_3064 : vec3<f32> = txVec46;
            let x_3066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3064.xy, x_3064.z);
            u_xlat75 = x_3066;
            let x_3068 : f32 = u_xlat20.w;
            let x_3069 : f32 = u_xlat75;
            let x_3071 : f32 = u_xlat74;
            u_xlat74 = ((x_3068 * x_3069) + x_3071);
            let x_3074 : vec4<f32> = u_xlat16;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.x, x_3074.y);
            let x_3077 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec47;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat75 = x_3086;
            let x_3088 : f32 = u_xlat21.x;
            let x_3089 : f32 = u_xlat75;
            let x_3091 : f32 = u_xlat74;
            u_xlat74 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.z, x_3094.w);
            let x_3097 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec48;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat75 = x_3106;
            let x_3108 : f32 = u_xlat21.y;
            let x_3109 : f32 = u_xlat75;
            let x_3111 : f32 = u_xlat74;
            u_xlat74 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat17;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
            let x_3117 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec49;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat75 = x_3126;
            let x_3128 : f32 = u_xlat21.z;
            let x_3129 : f32 = u_xlat75;
            let x_3131 : f32 = u_xlat74;
            u_xlat74 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat18;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.z, x_3134.w);
            let x_3137 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec50;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat75 = x_3146;
            let x_3148 : f32 = u_xlat21.w;
            let x_3149 : f32 = u_xlat75;
            let x_3151 : f32 = u_xlat74;
            u_xlat74 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec4<f32> = u_xlat19;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.x, x_3154.y);
            let x_3157 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec51;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat75 = x_3166;
            let x_3168 : f32 = u_xlat22.x;
            let x_3169 : f32 = u_xlat75;
            let x_3171 : f32 = u_xlat74;
            u_xlat74 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec4<f32> = u_xlat19;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.z, x_3174.w);
            let x_3177 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec52;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat75 = x_3186;
            let x_3188 : f32 = u_xlat22.y;
            let x_3189 : f32 = u_xlat75;
            let x_3191 : f32 = u_xlat74;
            u_xlat74 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec2<f32> = u_xlat34;
            let x_3196 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec53;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat75 = x_3205;
            let x_3207 : f32 = u_xlat22.z;
            let x_3208 : f32 = u_xlat75;
            let x_3210 : f32 = u_xlat74;
            u_xlat74 = ((x_3207 * x_3208) + x_3210);
            let x_3213 : vec2<f32> = u_xlat63;
            let x_3215 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec54;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat75 = x_3224;
            let x_3226 : f32 = u_xlat22.w;
            let x_3227 : f32 = u_xlat75;
            let x_3229 : f32 = u_xlat74;
            u_xlat74 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec4<f32> = u_xlat14;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.x, x_3232.y);
            let x_3235 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec55;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat75 = x_3244;
            let x_3246 : f32 = u_xlat10.x;
            let x_3247 : f32 = u_xlat75;
            let x_3249 : f32 = u_xlat74;
            u_xlat74 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat14;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
            let x_3255 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec56;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat75 = x_3264;
            let x_3266 : f32 = u_xlat10.y;
            let x_3267 : f32 = u_xlat75;
            let x_3269 : f32 = u_xlat74;
            u_xlat74 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec2<f32> = u_xlat58;
            let x_3274 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec57;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat75 = x_3283;
            let x_3285 : f32 = u_xlat10.z;
            let x_3286 : f32 = u_xlat75;
            let x_3288 : f32 = u_xlat74;
            u_xlat74 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec4<f32> = u_xlat9;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.x, x_3291.y);
            let x_3294 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec58;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat75 = x_3303;
            let x_3305 : f32 = u_xlat10.w;
            let x_3306 : f32 = u_xlat75;
            let x_3308 : f32 = u_xlat74;
            u_xlat51 = ((x_3305 * x_3306) + x_3308);
          }
        }
      } else {
        let x_3312 : vec4<f32> = u_xlat8;
        let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
        let x_3315 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
        let x_3322 : vec3<f32> = txVec59;
        let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
        u_xlat51 = x_3324;
      }
      let x_3325 : i32 = u_xlati72;
      let x_3327 : f32 = x_377.x_AdditionalShadowParams[x_3325].x;
      u_xlat74 = (1.0f + -(x_3327));
      let x_3330 : f32 = u_xlat51;
      let x_3331 : i32 = u_xlati72;
      let x_3333 : f32 = x_377.x_AdditionalShadowParams[x_3331].x;
      let x_3335 : f32 = u_xlat74;
      u_xlat51 = ((x_3330 * x_3333) + x_3335);
      let x_3338 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3338);
      let x_3342 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3342 >= 1.0f);
      let x_3344 : bool = u_xlatb74;
      let x_3345 : bool = u_xlatb75;
      u_xlatb74 = (x_3344 | x_3345);
      let x_3347 : bool = u_xlatb74;
      let x_3348 : f32 = u_xlat51;
      u_xlat51 = select(x_3348, 1.0f, x_3347);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_3351 : f32 = u_xlat51;
    u_xlat74 = (-(x_3351) + 1.0f);
    let x_3355 : f32 = u_xlat1.x;
    let x_3356 : f32 = u_xlat74;
    let x_3358 : f32 = u_xlat51;
    u_xlat51 = ((x_3355 * x_3356) + x_3358);
    let x_3361 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3361 & 31i)));
    let x_3365 : i32 = u_xlati74;
    let x_3368 : f32 = x_1682.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3365) & bitcast<u32>(x_3368)));
    let x_3372 : i32 = u_xlati74;
    if ((x_3372 != 0i)) {
      let x_3376 : i32 = u_xlati72;
      let x_3378 : f32 = x_1682.x_AdditionalLightsLightTypes[x_3376].el;
      u_xlati74 = i32(x_3378);
      let x_3381 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3381 != 0i));
      let x_3385 : i32 = u_xlati72;
      u_xlati76 = (x_3385 << bitcast<u32>(2i));
      let x_3387 : i32 = u_xlati75;
      if ((x_3387 != 0i)) {
        let x_3391 : vec3<f32> = vs_TEXCOORD1;
        let x_3393 : i32 = u_xlati76;
        let x_3396 : i32 = u_xlati76;
        let x_3400 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3393 + 1i) / 4i)][((x_3396 + 1i) % 4i)];
        let x_3402 : vec3<f32> = (vec3<f32>(x_3391.y, x_3391.y, x_3391.y) * vec3<f32>(x_3400.x, x_3400.y, x_3400.w));
        let x_3403 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3402.x, x_3402.y, x_3402.z, x_3403.w);
        let x_3405 : i32 = u_xlati76;
        let x_3407 : i32 = u_xlati76;
        let x_3410 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3405 / 4i)][(x_3407 % 4i)];
        let x_3412 : vec3<f32> = vs_TEXCOORD1;
        let x_3415 : vec4<f32> = u_xlat8;
        let x_3417 : vec3<f32> = ((vec3<f32>(x_3410.x, x_3410.y, x_3410.w) * vec3<f32>(x_3412.x, x_3412.x, x_3412.x)) + vec3<f32>(x_3415.x, x_3415.y, x_3415.z));
        let x_3418 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3417.x, x_3417.y, x_3417.z, x_3418.w);
        let x_3420 : i32 = u_xlati76;
        let x_3423 : i32 = u_xlati76;
        let x_3427 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3420 + 2i) / 4i)][((x_3423 + 2i) % 4i)];
        let x_3429 : vec3<f32> = vs_TEXCOORD1;
        let x_3432 : vec4<f32> = u_xlat8;
        let x_3434 : vec3<f32> = ((vec3<f32>(x_3427.x, x_3427.y, x_3427.w) * vec3<f32>(x_3429.z, x_3429.z, x_3429.z)) + vec3<f32>(x_3432.x, x_3432.y, x_3432.z));
        let x_3435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3434.x, x_3434.y, x_3434.z, x_3435.w);
        let x_3437 : vec4<f32> = u_xlat8;
        let x_3439 : i32 = u_xlati76;
        let x_3442 : i32 = u_xlati76;
        let x_3446 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3439 + 3i) / 4i)][((x_3442 + 3i) % 4i)];
        let x_3448 : vec3<f32> = (vec3<f32>(x_3437.x, x_3437.y, x_3437.z) + vec3<f32>(x_3446.x, x_3446.y, x_3446.w));
        let x_3449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
        let x_3451 : vec4<f32> = u_xlat8;
        let x_3453 : vec4<f32> = u_xlat8;
        let x_3455 : vec2<f32> = (vec2<f32>(x_3451.x, x_3451.y) / vec2<f32>(x_3453.z, x_3453.z));
        let x_3456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3455.x, x_3455.y, x_3456.z, x_3456.w);
        let x_3458 : vec4<f32> = u_xlat8;
        let x_3461 : vec2<f32> = ((vec2<f32>(x_3458.x, x_3458.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3461.x, x_3461.y, x_3462.z, x_3462.w);
        let x_3464 : vec4<f32> = u_xlat8;
        let x_3468 : vec2<f32> = clamp(vec2<f32>(x_3464.x, x_3464.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3469 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
        let x_3471 : i32 = u_xlati72;
        let x_3473 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3471];
        let x_3475 : vec4<f32> = u_xlat8;
        let x_3478 : i32 = u_xlati72;
        let x_3480 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3478];
        let x_3482 : vec2<f32> = ((vec2<f32>(x_3473.x, x_3473.y) * vec2<f32>(x_3475.x, x_3475.y)) + vec2<f32>(x_3480.z, x_3480.w));
        let x_3483 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3482.x, x_3482.y, x_3483.z, x_3483.w);
      } else {
        let x_3486 : i32 = u_xlati74;
        u_xlatb74 = (x_3486 == 1i);
        let x_3488 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3488);
        let x_3490 : i32 = u_xlati74;
        if ((x_3490 != 0i)) {
          let x_3495 : vec3<f32> = vs_TEXCOORD1;
          let x_3497 : i32 = u_xlati76;
          let x_3500 : i32 = u_xlati76;
          let x_3504 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3497 + 1i) / 4i)][((x_3500 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3495.y, x_3495.y) * vec2<f32>(x_3504.x, x_3504.y));
          let x_3507 : i32 = u_xlati76;
          let x_3509 : i32 = u_xlati76;
          let x_3512 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3507 / 4i)][(x_3509 % 4i)];
          let x_3514 : vec3<f32> = vs_TEXCOORD1;
          let x_3517 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3512.x, x_3512.y) * vec2<f32>(x_3514.x, x_3514.x)) + x_3517);
          let x_3519 : i32 = u_xlati76;
          let x_3522 : i32 = u_xlati76;
          let x_3526 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3519 + 2i) / 4i)][((x_3522 + 2i) % 4i)];
          let x_3528 : vec3<f32> = vs_TEXCOORD1;
          let x_3531 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3526.x, x_3526.y) * vec2<f32>(x_3528.z, x_3528.z)) + x_3531);
          let x_3533 : vec2<f32> = u_xlat54;
          let x_3534 : i32 = u_xlati76;
          let x_3537 : i32 = u_xlati76;
          let x_3541 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3534 + 3i) / 4i)][((x_3537 + 3i) % 4i)];
          u_xlat54 = (x_3533 + vec2<f32>(x_3541.x, x_3541.y));
          let x_3544 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3544 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3547 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3547);
          let x_3549 : i32 = u_xlati72;
          let x_3551 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3549];
          let x_3553 : vec2<f32> = u_xlat54;
          let x_3555 : i32 = u_xlati72;
          let x_3557 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3555];
          let x_3559 : vec2<f32> = ((vec2<f32>(x_3551.x, x_3551.y) * x_3553) + vec2<f32>(x_3557.z, x_3557.w));
          let x_3560 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3559.x, x_3559.y, x_3560.z, x_3560.w);
        } else {
          let x_3563 : vec3<f32> = vs_TEXCOORD1;
          let x_3565 : i32 = u_xlati76;
          let x_3568 : i32 = u_xlati76;
          let x_3572 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3565 + 1i) / 4i)][((x_3568 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3563.y, x_3563.y, x_3563.y, x_3563.y) * x_3572);
          let x_3574 : i32 = u_xlati76;
          let x_3576 : i32 = u_xlati76;
          let x_3579 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[(x_3574 / 4i)][(x_3576 % 4i)];
          let x_3580 : vec3<f32> = vs_TEXCOORD1;
          let x_3583 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3579 * vec4<f32>(x_3580.x, x_3580.x, x_3580.x, x_3580.x)) + x_3583);
          let x_3585 : i32 = u_xlati76;
          let x_3588 : i32 = u_xlati76;
          let x_3592 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3585 + 2i) / 4i)][((x_3588 + 2i) % 4i)];
          let x_3593 : vec3<f32> = vs_TEXCOORD1;
          let x_3596 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3592 * vec4<f32>(x_3593.z, x_3593.z, x_3593.z, x_3593.z)) + x_3596);
          let x_3598 : vec4<f32> = u_xlat9;
          let x_3599 : i32 = u_xlati76;
          let x_3602 : i32 = u_xlati76;
          let x_3606 : vec4<f32> = x_1682.x_AdditionalLightsWorldToLights[((x_3599 + 3i) / 4i)][((x_3602 + 3i) % 4i)];
          u_xlat9 = (x_3598 + x_3606);
          let x_3608 : vec4<f32> = u_xlat9;
          let x_3610 : vec4<f32> = u_xlat9;
          let x_3612 : vec3<f32> = (vec3<f32>(x_3608.x, x_3608.y, x_3608.z) / vec3<f32>(x_3610.w, x_3610.w, x_3610.w));
          let x_3613 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
          let x_3615 : vec4<f32> = u_xlat9;
          let x_3617 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3615.x, x_3615.y, x_3615.z), vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
          let x_3620 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3620);
          let x_3622 : f32 = u_xlat74;
          let x_3624 : vec4<f32> = u_xlat9;
          let x_3626 : vec3<f32> = (vec3<f32>(x_3622, x_3622, x_3622) * vec3<f32>(x_3624.x, x_3624.y, x_3624.z));
          let x_3627 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3626.x, x_3626.y, x_3626.z, x_3627.w);
          let x_3629 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3629.x, x_3629.y, x_3629.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3634 : f32 = u_xlat74;
          u_xlat74 = max(x_3634, 0.00000099999999747524f);
          let x_3637 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3637);
          let x_3639 : f32 = u_xlat74;
          let x_3641 : vec4<f32> = u_xlat9;
          let x_3643 : vec3<f32> = (vec3<f32>(x_3639, x_3639, x_3639) * vec3<f32>(x_3641.z, x_3641.x, x_3641.y));
          let x_3644 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3643.x, x_3643.y, x_3643.z, x_3644.w);
          let x_3647 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3647);
          let x_3651 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3651, 0.0f, 1.0f);
          let x_3655 : vec4<f32> = u_xlat10;
          let x_3657 : vec4<bool> = (vec4<f32>(x_3655.y, x_3655.z, x_3655.y, x_3655.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3657.x, x_3657.y);
          let x_3660 : bool = u_xlatb54.x;
          if (x_3660) {
            let x_3665 : f32 = u_xlat10.x;
            x_3661 = x_3665;
          } else {
            let x_3668 : f32 = u_xlat10.x;
            x_3661 = -(x_3668);
          }
          let x_3670 : f32 = x_3661;
          u_xlat54.x = x_3670;
          let x_3673 : bool = u_xlatb54.y;
          if (x_3673) {
            let x_3678 : f32 = u_xlat10.x;
            x_3674 = x_3678;
          } else {
            let x_3681 : f32 = u_xlat10.x;
            x_3674 = -(x_3681);
          }
          let x_3683 : f32 = x_3674;
          u_xlat54.y = x_3683;
          let x_3685 : vec4<f32> = u_xlat9;
          let x_3687 : f32 = u_xlat74;
          let x_3690 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(x_3687, x_3687)) + x_3690);
          let x_3692 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3692 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3695 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3695, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3699 : i32 = u_xlati72;
          let x_3701 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3699];
          let x_3703 : vec2<f32> = u_xlat54;
          let x_3705 : i32 = u_xlati72;
          let x_3707 : vec4<f32> = x_1682.x_AdditionalLightsCookieAtlasUVRects[x_3705];
          let x_3709 : vec2<f32> = ((vec2<f32>(x_3701.x, x_3701.y) * x_3703) + vec2<f32>(x_3707.z, x_3707.w));
          let x_3710 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3709.x, x_3709.y, x_3710.z, x_3710.w);
        }
      }
      let x_3717 : vec4<f32> = u_xlat8;
      let x_3719 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3717.x, x_3717.y), 0.0f);
      u_xlat8 = x_3719;
      let x_3721 : bool = u_xlatb5.y;
      if (x_3721) {
        let x_3726 : f32 = u_xlat8.w;
        x_3722 = x_3726;
      } else {
        let x_3729 : f32 = u_xlat8.x;
        x_3722 = x_3729;
      }
      let x_3730 : f32 = x_3722;
      u_xlat74 = x_3730;
      let x_3732 : bool = u_xlatb5.x;
      if (x_3732) {
        let x_3736 : vec4<f32> = u_xlat8;
        x_3733 = vec3<f32>(x_3736.x, x_3736.y, x_3736.z);
      } else {
        let x_3739 : f32 = u_xlat74;
        x_3733 = vec3<f32>(x_3739, x_3739, x_3739);
      }
      let x_3741 : vec3<f32> = x_3733;
      let x_3742 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3741.x, x_3741.y, x_3741.z, x_3742.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3748 : vec4<f32> = u_xlat8;
    let x_3750 : i32 = u_xlati72;
    let x_3752 : vec4<f32> = x_1936.x_AdditionalLightsColor[x_3750];
    let x_3754 : vec3<f32> = (vec3<f32>(x_3748.x, x_3748.y, x_3748.z) * vec3<f32>(x_3752.x, x_3752.y, x_3752.z));
    let x_3755 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3754.x, x_3754.y, x_3754.z, x_3755.w);
    let x_3757 : f32 = u_xlat73;
    let x_3758 : f32 = u_xlat51;
    u_xlat72 = (x_3757 * x_3758);
    let x_3760 : f32 = u_xlat72;
    let x_3762 : vec4<f32> = u_xlat8;
    let x_3764 : vec3<f32> = (vec3<f32>(x_3760, x_3760, x_3760) * vec3<f32>(x_3762.x, x_3762.y, x_3762.z));
    let x_3765 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3764.x, x_3764.y, x_3764.z, x_3765.w);
    let x_3767 : vec4<f32> = u_xlat2;
    let x_3769 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_3767.x, x_3767.y, x_3767.z), vec3<f32>(x_3769.x, x_3769.y, x_3769.z));
    let x_3772 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3772, 0.0f, 1.0f);
    let x_3774 : f32 = u_xlat72;
    let x_3776 : vec4<f32> = u_xlat8;
    let x_3778 : vec3<f32> = (vec3<f32>(x_3774, x_3774, x_3774) * vec3<f32>(x_3776.x, x_3776.y, x_3776.z));
    let x_3779 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3778.x, x_3778.y, x_3778.z, x_3779.w);
    let x_3781 : vec4<f32> = u_xlat1;
    let x_3783 : vec4<f32> = u_xlat7;
    let x_3785 : vec3<f32> = (vec3<f32>(x_3781.y, x_3781.z, x_3781.w) * vec3<f32>(x_3783.x, x_3783.y, x_3783.z));
    let x_3786 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3785.x, x_3785.y, x_3785.z, x_3786.w);
    let x_3788 : vec4<f32> = u_xlat7;
    let x_3790 : vec4<f32> = u_xlat0;
    let x_3793 : vec4<f32> = u_xlat6;
    let x_3795 : vec3<f32> = ((vec3<f32>(x_3788.x, x_3788.y, x_3788.z) * vec3<f32>(x_3790.x, x_3790.x, x_3790.x)) + vec3<f32>(x_3793.x, x_3793.y, x_3793.z));
    let x_3796 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3796.w);

    continuing {
      let x_3798 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3798 + bitcast<u32>(1i));
    }
  }
  let x_3800 : vec3<f32> = u_xlat3;
  let x_3801 : vec4<f32> = u_xlat1;
  let x_3804 : vec4<f32> = u_xlat4;
  let x_3806 : vec3<f32> = ((x_3800 * vec3<f32>(x_3801.y, x_3801.z, x_3801.w)) + vec3<f32>(x_3804.x, x_3804.y, x_3804.z));
  let x_3807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
  let x_3809 : vec4<f32> = u_xlat6;
  let x_3811 : vec4<f32> = u_xlat1;
  let x_3813 : vec3<f32> = (vec3<f32>(x_3809.x, x_3809.y, x_3809.z) + vec3<f32>(x_3811.x, x_3811.y, x_3811.z));
  let x_3814 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3813.x, x_3813.y, x_3813.z, x_3814.w);
  let x_3817 : f32 = u_xlat23.x;
  let x_3819 : f32 = u_xlat23.x;
  u_xlat23.x = (x_3817 * -(x_3819));
  let x_3824 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_3824);
  let x_3827 : vec4<f32> = u_xlat1;
  let x_3830 : vec4<f32> = x_45.unity_FogColor;
  let x_3833 : vec3<f32> = (vec3<f32>(x_3827.x, x_3827.y, x_3827.z) + -(vec3<f32>(x_3830.x, x_3830.y, x_3830.z)));
  let x_3834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3833.x, x_3833.y, x_3833.z, x_3834.w);
  let x_3838 : vec3<f32> = u_xlat23;
  let x_3840 : vec4<f32> = u_xlat1;
  let x_3844 : vec4<f32> = x_45.unity_FogColor;
  let x_3846 : vec3<f32> = ((vec3<f32>(x_3838.x, x_3838.x, x_3838.x) * vec3<f32>(x_3840.x, x_3840.y, x_3840.z)) + vec3<f32>(x_3844.x, x_3844.y, x_3844.z));
  let x_3847 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3846.x, x_3846.y, x_3846.z, x_3847.w);
  let x_3850 : f32 = x_58.x_Surface;
  u_xlatb23 = (x_3850 == 1.0f);
  let x_3852 : bool = u_xlatb23;
  let x_3853 : bool = u_xlatb46;
  u_xlatb23 = (x_3852 | x_3853);
  let x_3855 : bool = u_xlatb23;
  if (x_3855) {
    let x_3860 : f32 = u_xlat0.x;
    x_3856 = x_3860;
  } else {
    x_3856 = 1.0f;
  }
  let x_3862 : f32 = x_3856;
  SV_Target0.w = x_3862;
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


