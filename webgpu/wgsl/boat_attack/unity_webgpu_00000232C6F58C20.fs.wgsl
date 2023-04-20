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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb25 : bool;

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

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb71 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat71 : f32;

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

var<private> u_xlatb72 : bool;

var<private> u_xlatu72 : u32;

var<private> u_xlatu74 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat74 : f32;

var<private> u_xlati74 : i32;

@group(1) @binding(1) var<uniform> x_1939 : AdditionalLights;

var<private> u_xlat75 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu73 : u32;

var<private> u_xlatb74 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2081 : f32;
  var x_2093 : f32;
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
  var x_3585 : f32;
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
  let x_188 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_187.x, x_188.y, x_187.y);
  let x_190 : vec3<f32> = u_xlat23;
  let x_192 : vec3<f32> = u_xlat23;
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
  u_xlatb25 = (x_242 >= 0.0f);
  let x_244 : bool = u_xlatb25;
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
  let x_276 : vec3<f32> = u_xlat23;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  let x_281 : vec3<f32> = (vec3<f32>(x_276.z, x_276.z, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec3<f32> = u_xlat23;
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
  u_xlat23.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_313);
  let x_316 : vec3<f32> = u_xlat23;
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
  u_xlat23.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_339, 0.00006103515625f);
  let x_344 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_344);
  let x_350 : f32 = vs_TEXCOORD1.y;
  let x_353 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat69 = (x_350 * x_353);
  let x_356 : f32 = x_45.unity_MatrixV[0i].z;
  let x_358 : f32 = vs_TEXCOORD1.x;
  let x_360 : f32 = u_xlat69;
  u_xlat69 = ((x_356 * x_358) + x_360);
  let x_363 : f32 = x_45.unity_MatrixV[2i].z;
  let x_365 : f32 = vs_TEXCOORD1.z;
  let x_367 : f32 = u_xlat69;
  u_xlat69 = ((x_363 * x_365) + x_367);
  let x_369 : f32 = u_xlat69;
  let x_372 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat69 = (x_369 + x_372);
  let x_374 : f32 = u_xlat69;
  let x_378 : f32 = x_45.x_ProjectionParams.y;
  u_xlat69 = (-(x_374) + -(x_378));
  let x_381 : f32 = u_xlat69;
  u_xlat69 = max(x_381, 0.0f);
  let x_383 : f32 = u_xlat69;
  let x_386 : f32 = x_45.unity_FogParams.x;
  u_xlat69 = (x_383 * x_386);
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
      u_xlatb71 = (x_575 == 2.0f);
      let x_577 : bool = u_xlatb71;
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
        u_xlat51 = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_600.z, x_600.w)) + -(vec2<f32>(x_603.x, x_603.y)));
        let x_607 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_607.x, x_607.x, x_607.y, x_607.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_612.x, x_612.x, x_612.z, x_612.z) * vec4<f32>(x_614.x, x_614.x, x_614.z, x_614.z));
        let x_617 : vec4<f32> = u_xlat7;
        let x_621 : vec2<f32> = (vec2<f32>(x_617.y, x_617.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_621.x, x_622.y, x_621.y, x_622.w);
        let x_624 : vec4<f32> = u_xlat7;
        let x_627 : vec2<f32> = u_xlat51;
        let x_629 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.z) * vec2<f32>(0.5f, 0.5f)) + -(x_627));
        let x_630 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_633 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_633) + vec2<f32>(1.0f, 1.0f));
        let x_638 : vec2<f32> = u_xlat51;
        let x_640 : vec2<f32> = min(x_638, vec2<f32>(0.0f, 0.0f));
        let x_641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat8;
        let x_646 : vec4<f32> = u_xlat8;
        let x_649 : vec2<f32> = u_xlat53;
        let x_650 : vec2<f32> = ((-(vec2<f32>(x_643.x, x_643.y)) * vec2<f32>(x_646.x, x_646.y)) + x_649);
        let x_651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_653, vec2<f32>(0.0f, 0.0f));
        let x_655 : vec2<f32> = u_xlat51;
        let x_657 : vec2<f32> = u_xlat51;
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_655) * x_657) + vec2<f32>(x_659.y, x_659.w));
        let x_662 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_667 + vec2<f32>(1.0f, 1.0f));
        let x_670 : vec4<f32> = u_xlat7;
        let x_674 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec2<f32> = u_xlat53;
        let x_678 : vec2<f32> = (x_677 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_687 : vec2<f32> = u_xlat51;
        let x_688 : vec2<f32> = (x_687 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_691.y, x_691.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_695 : f32 = u_xlat8.x;
        u_xlat9.z = x_695;
        let x_698 : f32 = u_xlat51.x;
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
        let x_716 : f32 = u_xlat51.y;
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
        u_xlat51 = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_790.x, x_790.y)) + vec2<f32>(x_793.z, x_793.w));
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
        u_xlat71 = (x_843 * x_845);
        let x_848 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_859 : vec3<f32> = txVec4;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
        u_xlat72 = x_861;
        let x_863 : vec4<f32> = u_xlat9;
        let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
        let x_866 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_864.x, x_864.y, x_866);
        let x_874 : vec3<f32> = txVec5;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat73 = x_876;
        let x_877 : f32 = u_xlat73;
        let x_879 : f32 = u_xlat12.y;
        u_xlat73 = (x_877 * x_879);
        let x_882 : f32 = u_xlat12.x;
        let x_883 : f32 = u_xlat72;
        let x_885 : f32 = u_xlat73;
        u_xlat72 = ((x_882 * x_883) + x_885);
        let x_888 : vec2<f32> = u_xlat51;
        let x_890 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec6;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat73 = x_899;
        let x_901 : f32 = u_xlat12.z;
        let x_902 : f32 = u_xlat73;
        let x_904 : f32 = u_xlat72;
        u_xlat72 = ((x_901 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat8;
        let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
        let x_910 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec7;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
        u_xlat73 = x_919;
        let x_921 : f32 = u_xlat12.w;
        let x_922 : f32 = u_xlat73;
        let x_924 : f32 = u_xlat72;
        u_xlat72 = ((x_921 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat10;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec8;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat73 = x_939;
        let x_941 : f32 = u_xlat13.x;
        let x_942 : f32 = u_xlat73;
        let x_944 : f32 = u_xlat72;
        u_xlat72 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat10;
        let x_948 : vec2<f32> = vec2<f32>(x_947.z, x_947.w);
        let x_950 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec9;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat73 = x_959;
        let x_961 : f32 = u_xlat13.y;
        let x_962 : f32 = u_xlat73;
        let x_964 : f32 = u_xlat72;
        u_xlat72 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat8;
        let x_968 : vec2<f32> = vec2<f32>(x_967.z, x_967.w);
        let x_970 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec10;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat73 = x_979;
        let x_981 : f32 = u_xlat13.z;
        let x_982 : f32 = u_xlat73;
        let x_984 : f32 = u_xlat72;
        u_xlat72 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec11;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat73 = x_999;
        let x_1001 : f32 = u_xlat13.w;
        let x_1002 : f32 = u_xlat73;
        let x_1004 : f32 = u_xlat72;
        u_xlat72 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec12;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat73 = x_1019;
        let x_1020 : f32 = u_xlat71;
        let x_1021 : f32 = u_xlat73;
        let x_1023 : f32 = u_xlat72;
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
        u_xlat51 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.z, x_1044.w)) + -(vec2<f32>(x_1047.x, x_1047.y)));
        let x_1051 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1051.x, x_1051.x, x_1051.y, x_1051.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1056 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.z, x_1054.z) * vec4<f32>(x_1056.x, x_1056.x, x_1056.z, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = (vec2<f32>(x_1059.y, x_1059.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1069 : vec2<f32> = u_xlat51;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1069));
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat51;
        let x_1076 : vec2<f32> = (-(x_1074) + vec2<f32>(1.0f, 1.0f));
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1079, vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec2<f32> = u_xlat53;
        let x_1083 : vec2<f32> = u_xlat53;
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = ((-(x_1081) * x_1083) + vec2<f32>(x_1085.x, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec2<f32> = u_xlat53;
        let x_1095 : vec2<f32> = u_xlat53;
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1099 : vec2<f32> = ((-(x_1093) * x_1095) + vec2<f32>(x_1097.y, x_1097.w));
        let x_1100 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1099.x, x_1100.y, x_1099.y);
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1102.x, x_1102.y) + vec2<f32>(2.0f, 2.0f));
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec3<f32> = u_xlat29;
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
        let x_1132 : vec2<f32> = u_xlat51;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1139.x, x_1140.z, x_1139.y);
        let x_1142 : vec2<f32> = u_xlat51;
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
        let x_1158 : vec2<f32> = u_xlat51;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1158.y, x_1158.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec2<f32> = u_xlat51;
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
        u_xlat51 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
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
        u_xlat30 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.w, x_1286.y));
        let x_1290 : f32 = u_xlat10.y;
        u_xlat7.w = x_1290;
        let x_1293 : vec4<f32> = u_xlat5;
        let x_1296 : vec4<f32> = x_476.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.x, x_1299.w));
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
        u_xlat54 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.w, x_1322.y));
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
        u_xlat71 = x_1371;
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec14;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat72 = x_1385;
        let x_1386 : f32 = u_xlat72;
        let x_1388 : f32 = u_xlat16.y;
        u_xlat72 = (x_1386 * x_1388);
        let x_1391 : f32 = u_xlat16.x;
        let x_1392 : f32 = u_xlat71;
        let x_1394 : f32 = u_xlat72;
        u_xlat71 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec2<f32> = u_xlat51;
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec15;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat72 = x_1408;
        let x_1410 : f32 = u_xlat16.z;
        let x_1411 : f32 = u_xlat72;
        let x_1413 : f32 = u_xlat71;
        u_xlat71 = ((x_1410 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat14;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec16;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat72 = x_1428;
        let x_1430 : f32 = u_xlat16.w;
        let x_1431 : f32 = u_xlat72;
        let x_1433 : f32 = u_xlat71;
        u_xlat71 = ((x_1430 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat12;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec17;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat72 = x_1448;
        let x_1450 : f32 = u_xlat17.x;
        let x_1451 : f32 = u_xlat72;
        let x_1453 : f32 = u_xlat71;
        u_xlat71 = ((x_1450 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec18;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat72 = x_1468;
        let x_1470 : f32 = u_xlat17.y;
        let x_1471 : f32 = u_xlat72;
        let x_1473 : f32 = u_xlat71;
        u_xlat71 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat13;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec19;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat72 = x_1488;
        let x_1490 : f32 = u_xlat17.z;
        let x_1491 : f32 = u_xlat72;
        let x_1493 : f32 = u_xlat71;
        u_xlat71 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat14;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec20;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat72 = x_1508;
        let x_1510 : f32 = u_xlat17.w;
        let x_1511 : f32 = u_xlat72;
        let x_1513 : f32 = u_xlat71;
        u_xlat71 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat15;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec21;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat72 = x_1528;
        let x_1530 : f32 = u_xlat18.x;
        let x_1531 : f32 = u_xlat72;
        let x_1533 : f32 = u_xlat71;
        u_xlat71 = ((x_1530 * x_1531) + x_1533);
        let x_1536 : vec4<f32> = u_xlat15;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec22;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat72 = x_1548;
        let x_1550 : f32 = u_xlat18.y;
        let x_1551 : f32 = u_xlat72;
        let x_1553 : f32 = u_xlat71;
        u_xlat71 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec2<f32> = u_xlat30;
        let x_1558 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec23;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat72 = x_1567;
        let x_1569 : f32 = u_xlat18.z;
        let x_1570 : f32 = u_xlat72;
        let x_1572 : f32 = u_xlat71;
        u_xlat71 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat59;
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec24;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat72 = x_1586;
        let x_1588 : f32 = u_xlat18.w;
        let x_1589 : f32 = u_xlat72;
        let x_1591 : f32 = u_xlat71;
        u_xlat71 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat10;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec25;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat72 = x_1606;
        let x_1608 : f32 = u_xlat6.x;
        let x_1609 : f32 = u_xlat72;
        let x_1611 : f32 = u_xlat71;
        u_xlat71 = ((x_1608 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.z, x_1614.w);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec26;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat72 = x_1626;
        let x_1628 : f32 = u_xlat6.y;
        let x_1629 : f32 = u_xlat72;
        let x_1631 : f32 = u_xlat71;
        u_xlat71 = ((x_1628 * x_1629) + x_1631);
        let x_1634 : vec2<f32> = u_xlat54;
        let x_1636 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec27;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat72 = x_1645;
        let x_1647 : f32 = u_xlat6.z;
        let x_1648 : f32 = u_xlat72;
        let x_1650 : f32 = u_xlat71;
        u_xlat71 = ((x_1647 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat5;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec28;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat72 = x_1665;
        let x_1667 : f32 = u_xlat6.w;
        let x_1668 : f32 = u_xlat72;
        let x_1670 : f32 = u_xlat71;
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
  u_xlat71 = (-(x_1690) + 1.0f);
  let x_1694 : f32 = u_xlat1.x;
  let x_1696 : f32 = x_476.x_MainLightShadowParams.x;
  let x_1698 : f32 = u_xlat71;
  u_xlat1.x = ((x_1694 * x_1696) + x_1698);
  let x_1702 : f32 = vs_TEXCOORD6.z;
  u_xlatb71 = (0.0f >= x_1702);
  let x_1706 : f32 = vs_TEXCOORD6.z;
  u_xlatb72 = (x_1706 >= 1.0f);
  let x_1708 : bool = u_xlatb71;
  let x_1709 : bool = u_xlatb72;
  u_xlatb71 = (x_1708 | x_1709);
  let x_1711 : bool = u_xlatb71;
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
  u_xlat71 = dot(vec3<f32>(x_1729.x, x_1729.y, x_1729.z), vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : f32 = u_xlat71;
  let x_1736 : f32 = x_476.x_MainLightShadowParams.z;
  let x_1739 : f32 = x_476.x_MainLightShadowParams.w;
  u_xlat72 = ((x_1734 * x_1736) + x_1739);
  let x_1741 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1741, 0.0f, 1.0f);
  let x_1744 : f32 = u_xlat1.x;
  u_xlat73 = (-(x_1744) + 1.0f);
  let x_1747 : f32 = u_xlat72;
  let x_1748 : f32 = u_xlat73;
  let x_1751 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1747 * x_1748) + x_1751);
  let x_1755 : f32 = u_xlat1.x;
  let x_1757 : f32 = x_239.unity_LightData.z;
  u_xlat1.x = (x_1755 * x_1757);
  let x_1760 : vec4<f32> = u_xlat1;
  let x_1763 : vec4<f32> = x_45.x_MainLightColor;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.x, x_1760.x) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec4<f32> = u_xlat2;
  let x_1771 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1768.x, x_1768.y, x_1768.z), vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1776 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1776, 0.0f, 1.0f);
  let x_1779 : vec4<f32> = u_xlat1;
  let x_1781 : vec4<f32> = u_xlat5;
  let x_1783 : vec3<f32> = (vec3<f32>(x_1779.x, x_1779.x, x_1779.x) * vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1784 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1787 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_1787 * 10.0f) + 1.0f);
  let x_1793 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1793);
  let x_1796 : vec3<f32> = u_xlat3;
  let x_1797 : vec3<f32> = u_xlat23;
  let x_1801 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1803 : vec3<f32> = ((x_1796 * vec3<f32>(x_1797.x, x_1797.x, x_1797.x)) + vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
  let x_1804 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1806 : vec4<f32> = u_xlat7;
  let x_1808 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1806.x, x_1806.y, x_1806.z), vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
  let x_1811 : f32 = u_xlat72;
  u_xlat72 = max(x_1811, 1.17549435e-38f);
  let x_1814 : f32 = u_xlat72;
  u_xlat72 = inverseSqrt(x_1814);
  let x_1816 : f32 = u_xlat72;
  let x_1818 : vec4<f32> = u_xlat7;
  let x_1820 : vec3<f32> = (vec3<f32>(x_1816, x_1816, x_1816) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
  let x_1823 : vec4<f32> = u_xlat2;
  let x_1825 : vec4<f32> = u_xlat7;
  u_xlat72 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1828, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat72;
  u_xlat72 = log2(x_1830);
  let x_1833 : f32 = u_xlat1.x;
  let x_1834 : f32 = u_xlat72;
  u_xlat72 = (x_1833 * x_1834);
  let x_1836 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1836);
  let x_1838 : f32 = u_xlat72;
  let x_1841 : vec4<f32> = x_58.x_SpecColor;
  let x_1843 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
  let x_1846 : vec4<f32> = u_xlat5;
  let x_1848 : vec4<f32> = u_xlat7;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1846.x, x_1846.y, x_1846.z) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1853 : vec4<f32> = u_xlat6;
  let x_1855 : vec4<f32> = u_xlat1;
  let x_1858 : vec4<f32> = u_xlat5;
  let x_1860 : vec3<f32> = ((vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * vec3<f32>(x_1855.y, x_1855.z, x_1855.w)) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1864 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1866 : f32 = x_239.unity_LightData.y;
  u_xlat72 = min(x_1864, x_1866);
  let x_1870 : f32 = u_xlat72;
  u_xlatu72 = bitcast<u32>(i32(x_1870));
  let x_1873 : f32 = u_xlat71;
  let x_1876 : f32 = x_476.x_AdditionalShadowFadeParams.x;
  let x_1879 : f32 = x_476.x_AdditionalShadowFadeParams.y;
  u_xlat71 = ((x_1873 * x_1876) + x_1879);
  let x_1881 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1881, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1893 : u32 = u_xlatu_loop_1;
    let x_1894 : u32 = u_xlatu72;
    if ((x_1893 < x_1894)) {
    } else {
      break;
    }
    let x_1897 : u32 = u_xlatu_loop_1;
    u_xlatu74 = (x_1897 >> 2u);
    let x_1901 : u32 = u_xlatu_loop_1;
    u_xlati75 = bitcast<i32>((x_1901 & 3u));
    let x_1905 : u32 = u_xlatu74;
    let x_1908 : vec4<f32> = x_239.unity_LightIndices[bitcast<i32>(x_1905)];
    let x_1918 : i32 = u_xlati75;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1923 : vec4<u32> = indexable[x_1918];
    u_xlat74 = dot(x_1908, bitcast<vec4<f32>>(x_1923));
    let x_1927 : f32 = u_xlat74;
    u_xlati74 = i32(x_1927);
    let x_1929 : vec3<f32> = vs_TEXCOORD1;
    let x_1940 : i32 = u_xlati74;
    let x_1942 : vec4<f32> = x_1939.x_AdditionalLightsPosition[x_1940];
    let x_1945 : i32 = u_xlati74;
    let x_1947 : vec4<f32> = x_1939.x_AdditionalLightsPosition[x_1945];
    let x_1949 : vec3<f32> = ((-(x_1929) * vec3<f32>(x_1942.w, x_1942.w, x_1942.w)) + vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
    let x_1953 : vec4<f32> = u_xlat7;
    let x_1955 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : f32 = u_xlat75;
    u_xlat75 = max(x_1958, 0.00006103515625f);
    let x_1961 : f32 = u_xlat75;
    u_xlat76 = inverseSqrt(x_1961);
    let x_1963 : f32 = u_xlat76;
    let x_1965 : vec4<f32> = u_xlat7;
    let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : f32 = u_xlat75;
    u_xlat76 = (1.0f / x_1970);
    let x_1972 : f32 = u_xlat75;
    let x_1973 : i32 = u_xlati74;
    let x_1975 : f32 = x_1939.x_AdditionalLightsAttenuation[x_1973].x;
    u_xlat75 = (x_1972 * x_1975);
    let x_1977 : f32 = u_xlat75;
    let x_1979 : f32 = u_xlat75;
    u_xlat75 = ((-(x_1977) * x_1979) + 1.0f);
    let x_1982 : f32 = u_xlat75;
    u_xlat75 = max(x_1982, 0.0f);
    let x_1984 : f32 = u_xlat75;
    let x_1985 : f32 = u_xlat75;
    u_xlat75 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat75;
    let x_1988 : f32 = u_xlat76;
    u_xlat75 = (x_1987 * x_1988);
    let x_1990 : i32 = u_xlati74;
    let x_1992 : vec4<f32> = x_1939.x_AdditionalLightsSpotDir[x_1990];
    let x_1994 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
    let x_1997 : f32 = u_xlat76;
    let x_1998 : i32 = u_xlati74;
    let x_2000 : f32 = x_1939.x_AdditionalLightsAttenuation[x_1998].z;
    let x_2002 : i32 = u_xlati74;
    let x_2004 : f32 = x_1939.x_AdditionalLightsAttenuation[x_2002].w;
    u_xlat76 = ((x_1997 * x_2000) + x_2004);
    let x_2006 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2006, 0.0f, 1.0f);
    let x_2008 : f32 = u_xlat76;
    let x_2009 : f32 = u_xlat76;
    u_xlat76 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat75;
    let x_2012 : f32 = u_xlat76;
    u_xlat75 = (x_2011 * x_2012);
    let x_2016 : i32 = u_xlati74;
    let x_2018 : f32 = x_476.x_AdditionalShadowParams[x_2016].w;
    u_xlati76 = i32(x_2018);
    let x_2023 : i32 = u_xlati76;
    u_xlatb8.x = (x_2023 >= 0i);
    let x_2027 : bool = u_xlatb8.x;
    if (x_2027) {
      let x_2031 : i32 = u_xlati74;
      let x_2033 : f32 = x_476.x_AdditionalShadowParams[x_2031].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2033, x_2033, x_2033, x_2033))));
      let x_2040 : bool = u_xlatb8.x;
      if (x_2040) {
        let x_2043 : vec4<f32> = u_xlat7;
        let x_2046 : vec4<f32> = u_xlat7;
        let x_2049 : vec4<bool> = (abs(vec4<f32>(x_2043.z, x_2043.z, x_2043.y, x_2043.z)) >= abs(vec4<f32>(x_2046.x, x_2046.y, x_2046.x, x_2046.x)));
        u_xlatb8 = vec3<bool>(x_2049.x, x_2049.y, x_2049.z);
        let x_2052 : bool = u_xlatb8.y;
        let x_2054 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_2052 & x_2054);
        let x_2058 : vec4<f32> = u_xlat7;
        let x_2061 : vec4<bool> = (-(vec4<f32>(x_2058.z, x_2058.y, x_2058.x, x_2058.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_2061.x, x_2061.y, x_2061.z);
        let x_2065 : bool = u_xlatb9.x;
        u_xlat31.x = select(4.0f, 5.0f, x_2065);
        let x_2071 : bool = u_xlatb9.y;
        u_xlat31.z = select(2.0f, 3.0f, x_2071);
        let x_2076 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_2076);
        let x_2080 : bool = u_xlatb8.z;
        if (x_2080) {
          let x_2085 : f32 = u_xlat31.z;
          x_2081 = x_2085;
        } else {
          let x_2088 : f32 = u_xlat9.x;
          x_2081 = x_2088;
        }
        let x_2089 : f32 = x_2081;
        u_xlat54.x = x_2089;
        let x_2092 : bool = u_xlatb8.x;
        if (x_2092) {
          let x_2097 : f32 = u_xlat31.x;
          x_2093 = x_2097;
        } else {
          let x_2100 : f32 = u_xlat54.x;
          x_2093 = x_2100;
        }
        let x_2101 : f32 = x_2093;
        u_xlat8.x = x_2101;
        let x_2103 : i32 = u_xlati74;
        let x_2105 : f32 = x_476.x_AdditionalShadowParams[x_2103].w;
        u_xlat31.x = trunc(x_2105);
        let x_2109 : f32 = u_xlat8.x;
        let x_2111 : f32 = u_xlat31.x;
        u_xlat8.x = (x_2109 + x_2111);
        let x_2115 : f32 = u_xlat8.x;
        u_xlati76 = i32(x_2115);
      }
      let x_2117 : i32 = u_xlati76;
      u_xlati76 = (x_2117 << bitcast<u32>(2i));
      let x_2119 : vec3<f32> = vs_TEXCOORD1;
      let x_2122 : i32 = u_xlati76;
      let x_2125 : i32 = u_xlati76;
      let x_2129 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2122 + 1i) / 4i)][((x_2125 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2119.y, x_2119.y, x_2119.y, x_2119.y) * x_2129);
      let x_2131 : i32 = u_xlati76;
      let x_2133 : i32 = u_xlati76;
      let x_2136 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[(x_2131 / 4i)][(x_2133 % 4i)];
      let x_2137 : vec3<f32> = vs_TEXCOORD1;
      let x_2140 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2136 * vec4<f32>(x_2137.x, x_2137.x, x_2137.x, x_2137.x)) + x_2140);
      let x_2142 : i32 = u_xlati76;
      let x_2145 : i32 = u_xlati76;
      let x_2149 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2142 + 2i) / 4i)][((x_2145 + 2i) % 4i)];
      let x_2150 : vec3<f32> = vs_TEXCOORD1;
      let x_2153 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2149 * vec4<f32>(x_2150.z, x_2150.z, x_2150.z, x_2150.z)) + x_2153);
      let x_2155 : vec4<f32> = u_xlat8;
      let x_2156 : i32 = u_xlati76;
      let x_2159 : i32 = u_xlati76;
      let x_2163 : vec4<f32> = x_476.x_AdditionalLightsWorldToShadow[((x_2156 + 3i) / 4i)][((x_2159 + 3i) % 4i)];
      u_xlat8 = (x_2155 + x_2163);
      let x_2165 : vec4<f32> = u_xlat8;
      let x_2167 : vec4<f32> = u_xlat8;
      let x_2169 : vec3<f32> = (vec3<f32>(x_2165.x, x_2165.y, x_2165.z) / vec3<f32>(x_2167.w, x_2167.w, x_2167.w));
      let x_2170 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
      let x_2173 : i32 = u_xlati74;
      let x_2175 : f32 = x_476.x_AdditionalShadowParams[x_2173].y;
      u_xlatb76 = (0.0f < x_2175);
      let x_2177 : bool = u_xlatb76;
      if (x_2177) {
        let x_2180 : i32 = u_xlati74;
        let x_2182 : f32 = x_476.x_AdditionalShadowParams[x_2180].y;
        u_xlatb76 = (1.0f == x_2182);
        let x_2184 : bool = u_xlatb76;
        if (x_2184) {
          let x_2187 : vec4<f32> = u_xlat8;
          let x_2190 : vec4<f32> = x_476.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2187.x, x_2187.y, x_2187.x, x_2187.y) + x_2190);
          let x_2193 : vec4<f32> = u_xlat9;
          let x_2194 : vec2<f32> = vec2<f32>(x_2193.x, x_2193.y);
          let x_2196 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
          let x_2204 : vec3<f32> = txVec30;
          let x_2206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2204.xy, x_2204.z);
          u_xlat10.x = x_2206;
          let x_2209 : vec4<f32> = u_xlat9;
          let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
          let x_2212 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
          let x_2219 : vec3<f32> = txVec31;
          let x_2221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
          u_xlat10.y = x_2221;
          let x_2223 : vec4<f32> = u_xlat8;
          let x_2227 : vec4<f32> = x_476.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2223.x, x_2223.y, x_2223.x, x_2223.y) + x_2227);
          let x_2230 : vec4<f32> = u_xlat9;
          let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
          let x_2233 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
          let x_2240 : vec3<f32> = txVec32;
          let x_2242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
          u_xlat10.z = x_2242;
          let x_2245 : vec4<f32> = u_xlat9;
          let x_2246 : vec2<f32> = vec2<f32>(x_2245.z, x_2245.w);
          let x_2248 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2246.x, x_2246.y, x_2248);
          let x_2255 : vec3<f32> = txVec33;
          let x_2257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
          u_xlat10.w = x_2257;
          let x_2259 : vec4<f32> = u_xlat10;
          u_xlat76 = dot(x_2259, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2263 : i32 = u_xlati74;
          let x_2265 : f32 = x_476.x_AdditionalShadowParams[x_2263].y;
          u_xlatb77 = (2.0f == x_2265);
          let x_2267 : bool = u_xlatb77;
          if (x_2267) {
            let x_2270 : vec4<f32> = u_xlat8;
            let x_2274 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2277 : vec2<f32> = ((vec2<f32>(x_2270.x, x_2270.y) * vec2<f32>(x_2274.z, x_2274.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2278 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2277.x, x_2277.y, x_2278.z, x_2278.w);
            let x_2280 : vec4<f32> = u_xlat9;
            let x_2282 : vec2<f32> = floor(vec2<f32>(x_2280.x, x_2280.y));
            let x_2283 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2282.x, x_2282.y, x_2283.z, x_2283.w);
            let x_2286 : vec4<f32> = u_xlat8;
            let x_2289 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2292 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2286.x, x_2286.y) * vec2<f32>(x_2289.z, x_2289.w)) + -(vec2<f32>(x_2292.x, x_2292.y)));
            let x_2296 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2296.x, x_2296.x, x_2296.y, x_2296.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2299 : vec4<f32> = u_xlat10;
            let x_2301 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2299.x, x_2299.x, x_2299.z, x_2299.z) * vec4<f32>(x_2301.x, x_2301.x, x_2301.z, x_2301.z));
            let x_2304 : vec4<f32> = u_xlat11;
            let x_2306 : vec2<f32> = (vec2<f32>(x_2304.y, x_2304.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2307 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2306.x, x_2307.y, x_2306.y, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2312 : vec2<f32> = u_xlat55;
            let x_2314 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2312));
            let x_2315 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2314.x, x_2314.y, x_2315.z, x_2315.w);
            let x_2318 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2318) + vec2<f32>(1.0f, 1.0f));
            let x_2321 : vec2<f32> = u_xlat55;
            let x_2322 : vec2<f32> = min(x_2321, vec2<f32>(0.0f, 0.0f));
            let x_2323 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2322.x, x_2322.y, x_2323.z, x_2323.w);
            let x_2325 : vec4<f32> = u_xlat12;
            let x_2328 : vec4<f32> = u_xlat12;
            let x_2331 : vec2<f32> = u_xlat57;
            let x_2332 : vec2<f32> = ((-(vec2<f32>(x_2325.x, x_2325.y)) * vec2<f32>(x_2328.x, x_2328.y)) + x_2331);
            let x_2333 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
            let x_2335 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2335, vec2<f32>(0.0f, 0.0f));
            let x_2337 : vec2<f32> = u_xlat55;
            let x_2339 : vec2<f32> = u_xlat55;
            let x_2341 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2337) * x_2339) + vec2<f32>(x_2341.y, x_2341.w));
            let x_2344 : vec4<f32> = u_xlat12;
            let x_2346 : vec2<f32> = (vec2<f32>(x_2344.x, x_2344.y) + vec2<f32>(1.0f, 1.0f));
            let x_2347 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
            let x_2349 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2349 + vec2<f32>(1.0f, 1.0f));
            let x_2351 : vec4<f32> = u_xlat11;
            let x_2353 : vec2<f32> = (vec2<f32>(x_2351.x, x_2351.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2354 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
            let x_2356 : vec2<f32> = u_xlat57;
            let x_2357 : vec2<f32> = (x_2356 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2358 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2357.x, x_2357.y, x_2358.z, x_2358.w);
            let x_2360 : vec4<f32> = u_xlat12;
            let x_2362 : vec2<f32> = (vec2<f32>(x_2360.x, x_2360.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2363 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2362.x, x_2362.y, x_2363.z, x_2363.w);
            let x_2365 : vec2<f32> = u_xlat55;
            let x_2366 : vec2<f32> = (x_2365 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2367 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2366.x, x_2366.y, x_2367.z, x_2367.w);
            let x_2369 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2369.y, x_2369.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2373 : f32 = u_xlat12.x;
            u_xlat13.z = x_2373;
            let x_2376 : f32 = u_xlat55.x;
            u_xlat13.w = x_2376;
            let x_2379 : f32 = u_xlat14.x;
            u_xlat11.z = x_2379;
            let x_2382 : f32 = u_xlat10.x;
            u_xlat11.w = x_2382;
            let x_2384 : vec4<f32> = u_xlat11;
            let x_2386 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2384.z, x_2384.w, x_2384.x, x_2384.z) + vec4<f32>(x_2386.z, x_2386.w, x_2386.x, x_2386.z));
            let x_2390 : f32 = u_xlat13.y;
            u_xlat12.z = x_2390;
            let x_2393 : f32 = u_xlat55.y;
            u_xlat12.w = x_2393;
            let x_2396 : f32 = u_xlat11.y;
            u_xlat14.z = x_2396;
            let x_2399 : f32 = u_xlat10.z;
            u_xlat14.w = x_2399;
            let x_2401 : vec4<f32> = u_xlat12;
            let x_2403 : vec4<f32> = u_xlat14;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2401.z, x_2401.y, x_2401.w) + vec3<f32>(x_2403.z, x_2403.y, x_2403.w));
            let x_2406 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat11;
            let x_2410 : vec4<f32> = u_xlat15;
            let x_2412 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.z, x_2408.w) / vec3<f32>(x_2410.z, x_2410.w, x_2410.y));
            let x_2413 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
            let x_2415 : vec4<f32> = u_xlat11;
            let x_2417 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.y, x_2415.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2418 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat14;
            let x_2422 : vec4<f32> = u_xlat10;
            let x_2424 : vec3<f32> = (vec3<f32>(x_2420.z, x_2420.y, x_2420.w) / vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
            let x_2425 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
            let x_2427 : vec4<f32> = u_xlat12;
            let x_2429 : vec3<f32> = (vec3<f32>(x_2427.x, x_2427.y, x_2427.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2430 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2435 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2437 : vec3<f32> = (vec3<f32>(x_2432.y, x_2432.x, x_2432.z) * vec3<f32>(x_2435.x, x_2435.x, x_2435.x));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2443 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2445 : vec3<f32> = (vec3<f32>(x_2440.x, x_2440.y, x_2440.z) * vec3<f32>(x_2443.y, x_2443.y, x_2443.y));
            let x_2446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
            let x_2449 : f32 = u_xlat12.x;
            u_xlat11.w = x_2449;
            let x_2451 : vec4<f32> = u_xlat9;
            let x_2454 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2457 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2451.x, x_2451.y, x_2451.x, x_2451.y) * vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y)) + vec4<f32>(x_2457.y, x_2457.w, x_2457.x, x_2457.w));
            let x_2460 : vec4<f32> = u_xlat9;
            let x_2463 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2466 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2460.x, x_2460.y) * vec2<f32>(x_2463.x, x_2463.y)) + vec2<f32>(x_2466.z, x_2466.w));
            let x_2470 : f32 = u_xlat11.y;
            u_xlat12.w = x_2470;
            let x_2472 : vec4<f32> = u_xlat12;
            let x_2473 : vec2<f32> = vec2<f32>(x_2472.y, x_2472.z);
            let x_2474 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2474.x, x_2473.x, x_2474.z, x_2473.y);
            let x_2476 : vec4<f32> = u_xlat9;
            let x_2479 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2482 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y) * vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y)) + vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2482.y));
            let x_2485 : vec4<f32> = u_xlat9;
            let x_2488 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2491 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2485.x, x_2485.y, x_2485.x, x_2485.y) * vec4<f32>(x_2488.x, x_2488.y, x_2488.x, x_2488.y)) + vec4<f32>(x_2491.w, x_2491.y, x_2491.w, x_2491.z));
            let x_2494 : vec4<f32> = u_xlat9;
            let x_2497 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2500 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y) * vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y)) + vec4<f32>(x_2500.x, x_2500.w, x_2500.z, x_2500.w));
            let x_2503 : vec4<f32> = u_xlat10;
            let x_2505 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2503.x, x_2503.x, x_2503.x, x_2503.y) * vec4<f32>(x_2505.z, x_2505.w, x_2505.y, x_2505.z));
            let x_2508 : vec4<f32> = u_xlat10;
            let x_2510 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2508.y, x_2508.y, x_2508.z, x_2508.z) * x_2510);
            let x_2514 : f32 = u_xlat10.z;
            let x_2516 : f32 = u_xlat15.y;
            u_xlat77 = (x_2514 * x_2516);
            let x_2519 : vec4<f32> = u_xlat13;
            let x_2520 : vec2<f32> = vec2<f32>(x_2519.x, x_2519.y);
            let x_2522 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2520.x, x_2520.y, x_2522);
            let x_2529 : vec3<f32> = txVec34;
            let x_2531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2529.xy, x_2529.z);
            u_xlat9.x = x_2531;
            let x_2534 : vec4<f32> = u_xlat13;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.z, x_2534.w);
            let x_2537 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2545 : vec3<f32> = txVec35;
            let x_2547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
            u_xlat32 = x_2547;
            let x_2548 : f32 = u_xlat32;
            let x_2550 : f32 = u_xlat16.y;
            u_xlat32 = (x_2548 * x_2550);
            let x_2553 : f32 = u_xlat16.x;
            let x_2555 : f32 = u_xlat9.x;
            let x_2557 : f32 = u_xlat32;
            u_xlat9.x = ((x_2553 * x_2555) + x_2557);
            let x_2561 : vec2<f32> = u_xlat55;
            let x_2563 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2561.x, x_2561.y, x_2563);
            let x_2570 : vec3<f32> = txVec36;
            let x_2572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2570.xy, x_2570.z);
            u_xlat32 = x_2572;
            let x_2574 : f32 = u_xlat16.z;
            let x_2575 : f32 = u_xlat32;
            let x_2578 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2574 * x_2575) + x_2578);
            let x_2582 : vec4<f32> = u_xlat12;
            let x_2583 : vec2<f32> = vec2<f32>(x_2582.x, x_2582.y);
            let x_2585 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2583.x, x_2583.y, x_2585);
            let x_2592 : vec3<f32> = txVec37;
            let x_2594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2592.xy, x_2592.z);
            u_xlat32 = x_2594;
            let x_2596 : f32 = u_xlat16.w;
            let x_2597 : f32 = u_xlat32;
            let x_2600 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2596 * x_2597) + x_2600);
            let x_2604 : vec4<f32> = u_xlat14;
            let x_2605 : vec2<f32> = vec2<f32>(x_2604.x, x_2604.y);
            let x_2607 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2605.x, x_2605.y, x_2607);
            let x_2614 : vec3<f32> = txVec38;
            let x_2616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2614.xy, x_2614.z);
            u_xlat32 = x_2616;
            let x_2618 : f32 = u_xlat17.x;
            let x_2619 : f32 = u_xlat32;
            let x_2622 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2618 * x_2619) + x_2622);
            let x_2626 : vec4<f32> = u_xlat14;
            let x_2627 : vec2<f32> = vec2<f32>(x_2626.z, x_2626.w);
            let x_2629 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2627.x, x_2627.y, x_2629);
            let x_2636 : vec3<f32> = txVec39;
            let x_2638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2636.xy, x_2636.z);
            u_xlat32 = x_2638;
            let x_2640 : f32 = u_xlat17.y;
            let x_2641 : f32 = u_xlat32;
            let x_2644 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2640 * x_2641) + x_2644);
            let x_2648 : vec4<f32> = u_xlat12;
            let x_2649 : vec2<f32> = vec2<f32>(x_2648.z, x_2648.w);
            let x_2651 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2649.x, x_2649.y, x_2651);
            let x_2658 : vec3<f32> = txVec40;
            let x_2660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2658.xy, x_2658.z);
            u_xlat32 = x_2660;
            let x_2662 : f32 = u_xlat17.z;
            let x_2663 : f32 = u_xlat32;
            let x_2666 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2662 * x_2663) + x_2666);
            let x_2670 : vec4<f32> = u_xlat11;
            let x_2671 : vec2<f32> = vec2<f32>(x_2670.x, x_2670.y);
            let x_2673 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2671.x, x_2671.y, x_2673);
            let x_2680 : vec3<f32> = txVec41;
            let x_2682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2680.xy, x_2680.z);
            u_xlat32 = x_2682;
            let x_2684 : f32 = u_xlat17.w;
            let x_2685 : f32 = u_xlat32;
            let x_2688 : f32 = u_xlat9.x;
            u_xlat9.x = ((x_2684 * x_2685) + x_2688);
            let x_2692 : vec4<f32> = u_xlat11;
            let x_2693 : vec2<f32> = vec2<f32>(x_2692.z, x_2692.w);
            let x_2695 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2693.x, x_2693.y, x_2695);
            let x_2702 : vec3<f32> = txVec42;
            let x_2704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
            u_xlat32 = x_2704;
            let x_2705 : f32 = u_xlat77;
            let x_2706 : f32 = u_xlat32;
            let x_2709 : f32 = u_xlat9.x;
            u_xlat76 = ((x_2705 * x_2706) + x_2709);
          } else {
            let x_2712 : vec4<f32> = u_xlat8;
            let x_2715 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2718 : vec2<f32> = ((vec2<f32>(x_2712.x, x_2712.y) * vec2<f32>(x_2715.z, x_2715.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2719 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2718.x, x_2718.y, x_2719.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat9;
            let x_2723 : vec2<f32> = floor(vec2<f32>(x_2721.x, x_2721.y));
            let x_2724 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2726 : vec4<f32> = u_xlat8;
            let x_2729 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2732 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2726.x, x_2726.y) * vec2<f32>(x_2729.z, x_2729.w)) + -(vec2<f32>(x_2732.x, x_2732.y)));
            let x_2736 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2736.x, x_2736.x, x_2736.y, x_2736.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2739 : vec4<f32> = u_xlat10;
            let x_2741 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2739.x, x_2739.x, x_2739.z, x_2739.z) * vec4<f32>(x_2741.x, x_2741.x, x_2741.z, x_2741.z));
            let x_2744 : vec4<f32> = u_xlat11;
            let x_2746 : vec2<f32> = (vec2<f32>(x_2744.y, x_2744.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2747 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2747.x, x_2746.x, x_2747.z, x_2746.y);
            let x_2749 : vec4<f32> = u_xlat11;
            let x_2752 : vec2<f32> = u_xlat55;
            let x_2754 : vec2<f32> = ((vec2<f32>(x_2749.x, x_2749.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2752));
            let x_2755 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2754.x, x_2755.y, x_2754.y, x_2755.w);
            let x_2757 : vec2<f32> = u_xlat55;
            let x_2759 : vec2<f32> = (-(x_2757) + vec2<f32>(1.0f, 1.0f));
            let x_2760 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
            let x_2762 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2762, vec2<f32>(0.0f, 0.0f));
            let x_2764 : vec2<f32> = u_xlat57;
            let x_2766 : vec2<f32> = u_xlat57;
            let x_2768 : vec4<f32> = u_xlat11;
            let x_2770 : vec2<f32> = ((-(x_2764) * x_2766) + vec2<f32>(x_2768.x, x_2768.y));
            let x_2771 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2773, vec2<f32>(0.0f, 0.0f));
            let x_2776 : vec2<f32> = u_xlat57;
            let x_2778 : vec2<f32> = u_xlat57;
            let x_2780 : vec4<f32> = u_xlat10;
            let x_2782 : vec2<f32> = ((-(x_2776) * x_2778) + vec2<f32>(x_2780.y, x_2780.w));
            let x_2783 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2782.x, x_2783.y, x_2782.y);
            let x_2785 : vec4<f32> = u_xlat11;
            let x_2787 : vec2<f32> = (vec2<f32>(x_2785.x, x_2785.y) + vec2<f32>(2.0f, 2.0f));
            let x_2788 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec3<f32> = u_xlat33;
            let x_2792 : vec2<f32> = (vec2<f32>(x_2790.x, x_2790.z) + vec2<f32>(2.0f, 2.0f));
            let x_2793 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2793.x, x_2792.x, x_2793.z, x_2792.y);
            let x_2796 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2796 * 0.08163200318813323975f);
            let x_2799 : vec4<f32> = u_xlat10;
            let x_2801 : vec3<f32> = (vec3<f32>(x_2799.z, x_2799.x, x_2799.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2802 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat11;
            let x_2806 : vec2<f32> = (vec2<f32>(x_2804.x, x_2804.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2807 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
            let x_2810 : f32 = u_xlat14.y;
            u_xlat13.x = x_2810;
            let x_2812 : vec2<f32> = u_xlat55;
            let x_2815 : vec2<f32> = ((vec2<f32>(x_2812.x, x_2812.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2816 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2816.x, x_2815.x, x_2816.z, x_2815.y);
            let x_2818 : vec2<f32> = u_xlat55;
            let x_2821 : vec2<f32> = ((vec2<f32>(x_2818.x, x_2818.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2822 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2821.x, x_2822.y, x_2821.y, x_2822.w);
            let x_2825 : f32 = u_xlat10.x;
            u_xlat11.y = x_2825;
            let x_2828 : f32 = u_xlat12.y;
            u_xlat11.w = x_2828;
            let x_2830 : vec4<f32> = u_xlat11;
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2830 + x_2831);
            let x_2833 : vec2<f32> = u_xlat55;
            let x_2836 : vec2<f32> = ((vec2<f32>(x_2833.y, x_2833.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2837 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2837.x, x_2836.x, x_2837.z, x_2836.y);
            let x_2839 : vec2<f32> = u_xlat55;
            let x_2842 : vec2<f32> = ((vec2<f32>(x_2839.y, x_2839.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2843 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2842.x, x_2843.y, x_2842.y, x_2843.w);
            let x_2846 : f32 = u_xlat10.y;
            u_xlat12.y = x_2846;
            let x_2848 : vec4<f32> = u_xlat12;
            let x_2849 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2848 + x_2849);
            let x_2851 : vec4<f32> = u_xlat11;
            let x_2852 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2851 / x_2852);
            let x_2854 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2854 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2856 : vec4<f32> = u_xlat12;
            let x_2857 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2856 / x_2857);
            let x_2859 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2859 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2864 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2861.w, x_2861.x, x_2861.y, x_2861.z) * vec4<f32>(x_2864.x, x_2864.x, x_2864.x, x_2864.x));
            let x_2867 : vec4<f32> = u_xlat12;
            let x_2870 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2867.x, x_2867.w, x_2867.y, x_2867.z) * vec4<f32>(x_2870.y, x_2870.y, x_2870.y, x_2870.y));
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2874 : vec3<f32> = vec3<f32>(x_2873.y, x_2873.z, x_2873.w);
            let x_2875 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2874.x, x_2875.y, x_2874.y, x_2874.z);
            let x_2878 : f32 = u_xlat12.x;
            u_xlat14.y = x_2878;
            let x_2880 : vec4<f32> = u_xlat9;
            let x_2883 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) * vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y)) + vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat9;
            let x_2892 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2889.x, x_2889.y) * vec2<f32>(x_2892.x, x_2892.y)) + vec2<f32>(x_2895.w, x_2895.y));
            let x_2899 : f32 = u_xlat14.y;
            u_xlat11.y = x_2899;
            let x_2902 : f32 = u_xlat12.z;
            u_xlat14.y = x_2902;
            let x_2904 : vec4<f32> = u_xlat9;
            let x_2907 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y) * vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y)) + vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2910.y));
            let x_2913 : vec4<f32> = u_xlat9;
            let x_2916 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2921 : vec2<f32> = ((vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(x_2916.x, x_2916.y)) + vec2<f32>(x_2919.w, x_2919.y));
            let x_2922 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2921.x, x_2921.y, x_2922.z, x_2922.w);
            let x_2925 : f32 = u_xlat14.y;
            u_xlat11.z = x_2925;
            let x_2927 : vec4<f32> = u_xlat9;
            let x_2930 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2933 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y) * vec4<f32>(x_2930.x, x_2930.y, x_2930.x, x_2930.y)) + vec4<f32>(x_2933.x, x_2933.y, x_2933.x, x_2933.z));
            let x_2937 : f32 = u_xlat12.w;
            u_xlat14.y = x_2937;
            let x_2940 : vec4<f32> = u_xlat9;
            let x_2943 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y) * vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y)) + vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2946.y));
            let x_2950 : vec4<f32> = u_xlat9;
            let x_2953 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2956 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2950.x, x_2950.y) * vec2<f32>(x_2953.x, x_2953.y)) + vec2<f32>(x_2956.w, x_2956.y));
            let x_2960 : f32 = u_xlat14.y;
            u_xlat11.w = x_2960;
            let x_2963 : vec4<f32> = u_xlat9;
            let x_2966 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2969 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2963.x, x_2963.y) * vec2<f32>(x_2966.x, x_2966.y)) + vec2<f32>(x_2969.x, x_2969.w));
            let x_2972 : vec4<f32> = u_xlat14;
            let x_2973 : vec3<f32> = vec3<f32>(x_2972.x, x_2972.z, x_2972.w);
            let x_2974 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2973.x, x_2974.y, x_2973.y, x_2973.z);
            let x_2976 : vec4<f32> = u_xlat9;
            let x_2979 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2982 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2976.x, x_2976.y, x_2976.x, x_2976.y) * vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y)) + vec4<f32>(x_2982.x, x_2982.y, x_2982.z, x_2982.y));
            let x_2986 : vec4<f32> = u_xlat9;
            let x_2989 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2986.x, x_2986.y) * vec2<f32>(x_2989.x, x_2989.y)) + vec2<f32>(x_2992.w, x_2992.y));
            let x_2996 : f32 = u_xlat11.x;
            u_xlat12.x = x_2996;
            let x_2998 : vec4<f32> = u_xlat9;
            let x_3001 : vec4<f32> = x_476.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat12;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.x, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3010 : vec4<f32> = u_xlat10;
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3010.x, x_3010.x, x_3010.x, x_3010.x) * x_3012);
            let x_3015 : vec4<f32> = u_xlat10;
            let x_3017 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3015.y, x_3015.y, x_3015.y, x_3015.y) * x_3017);
            let x_3020 : vec4<f32> = u_xlat10;
            let x_3022 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3020.z, x_3020.z, x_3020.z, x_3020.z) * x_3022);
            let x_3024 : vec4<f32> = u_xlat10;
            let x_3026 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3024.w, x_3024.w, x_3024.w, x_3024.w) * x_3026);
            let x_3029 : vec4<f32> = u_xlat15;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec43;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat77 = x_3041;
            let x_3043 : vec4<f32> = u_xlat15;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.z, x_3043.w);
            let x_3046 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec44;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat11.x = x_3055;
            let x_3058 : f32 = u_xlat11.x;
            let x_3060 : f32 = u_xlat20.y;
            u_xlat11.x = (x_3058 * x_3060);
            let x_3064 : f32 = u_xlat20.x;
            let x_3065 : f32 = u_xlat77;
            let x_3068 : f32 = u_xlat11.x;
            u_xlat77 = ((x_3064 * x_3065) + x_3068);
            let x_3071 : vec2<f32> = u_xlat55;
            let x_3073 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec45;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat55.x = x_3082;
            let x_3085 : f32 = u_xlat20.z;
            let x_3087 : f32 = u_xlat55.x;
            let x_3089 : f32 = u_xlat77;
            u_xlat77 = ((x_3085 * x_3087) + x_3089);
            let x_3092 : vec4<f32> = u_xlat18;
            let x_3093 : vec2<f32> = vec2<f32>(x_3092.x, x_3092.y);
            let x_3095 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
            let x_3102 : vec3<f32> = txVec46;
            let x_3104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
            u_xlat55.x = x_3104;
            let x_3107 : f32 = u_xlat20.w;
            let x_3109 : f32 = u_xlat55.x;
            let x_3111 : f32 = u_xlat77;
            u_xlat77 = ((x_3107 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat16;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
            let x_3117 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec47;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat55.x = x_3126;
            let x_3129 : f32 = u_xlat21.x;
            let x_3131 : f32 = u_xlat55.x;
            let x_3133 : f32 = u_xlat77;
            u_xlat77 = ((x_3129 * x_3131) + x_3133);
            let x_3136 : vec4<f32> = u_xlat16;
            let x_3137 : vec2<f32> = vec2<f32>(x_3136.z, x_3136.w);
            let x_3139 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec48;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat55.x = x_3148;
            let x_3151 : f32 = u_xlat21.y;
            let x_3153 : f32 = u_xlat55.x;
            let x_3155 : f32 = u_xlat77;
            u_xlat77 = ((x_3151 * x_3153) + x_3155);
            let x_3158 : vec4<f32> = u_xlat17;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.x, x_3158.y);
            let x_3161 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec49;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat55.x = x_3170;
            let x_3173 : f32 = u_xlat21.z;
            let x_3175 : f32 = u_xlat55.x;
            let x_3177 : f32 = u_xlat77;
            u_xlat77 = ((x_3173 * x_3175) + x_3177);
            let x_3180 : vec4<f32> = u_xlat18;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.z, x_3180.w);
            let x_3183 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec50;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat55.x = x_3192;
            let x_3195 : f32 = u_xlat21.w;
            let x_3197 : f32 = u_xlat55.x;
            let x_3199 : f32 = u_xlat77;
            u_xlat77 = ((x_3195 * x_3197) + x_3199);
            let x_3202 : vec4<f32> = u_xlat19;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
            let x_3205 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec51;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat55.x = x_3214;
            let x_3217 : f32 = u_xlat22.x;
            let x_3219 : f32 = u_xlat55.x;
            let x_3221 : f32 = u_xlat77;
            u_xlat77 = ((x_3217 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat19;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.z, x_3224.w);
            let x_3227 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec52;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat55.x = x_3236;
            let x_3239 : f32 = u_xlat22.y;
            let x_3241 : f32 = u_xlat55.x;
            let x_3243 : f32 = u_xlat77;
            u_xlat77 = ((x_3239 * x_3241) + x_3243);
            let x_3246 : vec2<f32> = u_xlat34;
            let x_3248 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec53;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat55.x = x_3257;
            let x_3260 : f32 = u_xlat22.z;
            let x_3262 : f32 = u_xlat55.x;
            let x_3264 : f32 = u_xlat77;
            u_xlat77 = ((x_3260 * x_3262) + x_3264);
            let x_3267 : vec2<f32> = u_xlat63;
            let x_3269 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec54;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat55.x = x_3278;
            let x_3281 : f32 = u_xlat22.w;
            let x_3283 : f32 = u_xlat55.x;
            let x_3285 : f32 = u_xlat77;
            u_xlat77 = ((x_3281 * x_3283) + x_3285);
            let x_3288 : vec4<f32> = u_xlat14;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.x, x_3288.y);
            let x_3291 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec55;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat55.x = x_3300;
            let x_3303 : f32 = u_xlat10.x;
            let x_3305 : f32 = u_xlat55.x;
            let x_3307 : f32 = u_xlat77;
            u_xlat77 = ((x_3303 * x_3305) + x_3307);
            let x_3310 : vec4<f32> = u_xlat14;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.z, x_3310.w);
            let x_3313 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec56;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat55.x = x_3322;
            let x_3325 : f32 = u_xlat10.y;
            let x_3327 : f32 = u_xlat55.x;
            let x_3329 : f32 = u_xlat77;
            u_xlat77 = ((x_3325 * x_3327) + x_3329);
            let x_3332 : vec2<f32> = u_xlat58;
            let x_3334 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec57;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat55.x = x_3343;
            let x_3346 : f32 = u_xlat10.z;
            let x_3348 : f32 = u_xlat55.x;
            let x_3350 : f32 = u_xlat77;
            u_xlat77 = ((x_3346 * x_3348) + x_3350);
            let x_3353 : vec4<f32> = u_xlat9;
            let x_3354 : vec2<f32> = vec2<f32>(x_3353.x, x_3353.y);
            let x_3356 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec58;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat9.x = x_3365;
            let x_3368 : f32 = u_xlat10.w;
            let x_3370 : f32 = u_xlat9.x;
            let x_3372 : f32 = u_xlat77;
            u_xlat76 = ((x_3368 * x_3370) + x_3372);
          }
        }
      } else {
        let x_3376 : vec4<f32> = u_xlat8;
        let x_3377 : vec2<f32> = vec2<f32>(x_3376.x, x_3376.y);
        let x_3379 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3377.x, x_3377.y, x_3379);
        let x_3386 : vec3<f32> = txVec59;
        let x_3388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3386.xy, x_3386.z);
        u_xlat76 = x_3388;
      }
      let x_3389 : i32 = u_xlati74;
      let x_3391 : f32 = x_476.x_AdditionalShadowParams[x_3389].x;
      u_xlat8.x = (1.0f + -(x_3391));
      let x_3395 : f32 = u_xlat76;
      let x_3396 : i32 = u_xlati74;
      let x_3398 : f32 = x_476.x_AdditionalShadowParams[x_3396].x;
      let x_3401 : f32 = u_xlat8.x;
      u_xlat76 = ((x_3395 * x_3398) + x_3401);
      let x_3404 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_3404);
      let x_3409 : f32 = u_xlat8.z;
      u_xlatb31 = (x_3409 >= 1.0f);
      let x_3411 : bool = u_xlatb31;
      let x_3413 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_3411 | x_3413);
      let x_3417 : bool = u_xlatb8.x;
      let x_3418 : f32 = u_xlat76;
      u_xlat76 = select(x_3418, 1.0f, x_3417);
    } else {
      u_xlat76 = 1.0f;
    }
    let x_3421 : f32 = u_xlat76;
    u_xlat8.x = (-(x_3421) + 1.0f);
    let x_3425 : f32 = u_xlat71;
    let x_3427 : f32 = u_xlat8.x;
    let x_3429 : f32 = u_xlat76;
    u_xlat76 = ((x_3425 * x_3427) + x_3429);
    let x_3431 : f32 = u_xlat75;
    let x_3432 : f32 = u_xlat76;
    u_xlat75 = (x_3431 * x_3432);
    let x_3434 : f32 = u_xlat75;
    let x_3436 : i32 = u_xlati74;
    let x_3438 : vec4<f32> = x_1939.x_AdditionalLightsColor[x_3436];
    let x_3440 : vec3<f32> = (vec3<f32>(x_3434, x_3434, x_3434) * vec3<f32>(x_3438.x, x_3438.y, x_3438.z));
    let x_3441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3440.x, x_3440.y, x_3440.z, x_3441.w);
    let x_3443 : vec4<f32> = u_xlat2;
    let x_3445 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3443.x, x_3443.y, x_3443.z), vec3<f32>(x_3445.x, x_3445.y, x_3445.z));
    let x_3448 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3448, 0.0f, 1.0f);
    let x_3450 : f32 = u_xlat74;
    let x_3452 : vec4<f32> = u_xlat8;
    let x_3454 : vec3<f32> = (vec3<f32>(x_3450, x_3450, x_3450) * vec3<f32>(x_3452.x, x_3452.y, x_3452.z));
    let x_3455 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3454.x, x_3454.y, x_3454.z, x_3455.w);
    let x_3457 : vec3<f32> = u_xlat3;
    let x_3458 : vec3<f32> = u_xlat23;
    let x_3461 : vec4<f32> = u_xlat7;
    let x_3463 : vec3<f32> = ((x_3457 * vec3<f32>(x_3458.x, x_3458.x, x_3458.x)) + vec3<f32>(x_3461.x, x_3461.y, x_3461.z));
    let x_3464 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3463.x, x_3463.y, x_3463.z, x_3464.w);
    let x_3466 : vec4<f32> = u_xlat7;
    let x_3468 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3466.x, x_3466.y, x_3466.z), vec3<f32>(x_3468.x, x_3468.y, x_3468.z));
    let x_3471 : f32 = u_xlat74;
    u_xlat74 = max(x_3471, 1.17549435e-38f);
    let x_3473 : f32 = u_xlat74;
    u_xlat74 = inverseSqrt(x_3473);
    let x_3475 : f32 = u_xlat74;
    let x_3477 : vec4<f32> = u_xlat7;
    let x_3479 : vec3<f32> = (vec3<f32>(x_3475, x_3475, x_3475) * vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
    let x_3480 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
    let x_3482 : vec4<f32> = u_xlat2;
    let x_3484 : vec4<f32> = u_xlat7;
    u_xlat74 = dot(vec3<f32>(x_3482.x, x_3482.y, x_3482.z), vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
    let x_3487 : f32 = u_xlat74;
    u_xlat74 = clamp(x_3487, 0.0f, 1.0f);
    let x_3489 : f32 = u_xlat74;
    u_xlat74 = log2(x_3489);
    let x_3492 : f32 = u_xlat1.x;
    let x_3493 : f32 = u_xlat74;
    u_xlat74 = (x_3492 * x_3493);
    let x_3495 : f32 = u_xlat74;
    u_xlat74 = exp2(x_3495);
    let x_3497 : f32 = u_xlat74;
    let x_3500 : vec4<f32> = x_58.x_SpecColor;
    let x_3502 : vec3<f32> = (vec3<f32>(x_3497, x_3497, x_3497) * vec3<f32>(x_3500.x, x_3500.y, x_3500.z));
    let x_3503 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3502.x, x_3502.y, x_3502.z, x_3503.w);
    let x_3505 : vec4<f32> = u_xlat7;
    let x_3507 : vec4<f32> = u_xlat8;
    let x_3509 : vec3<f32> = (vec3<f32>(x_3505.x, x_3505.y, x_3505.z) * vec3<f32>(x_3507.x, x_3507.y, x_3507.z));
    let x_3510 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3510.w);
    let x_3512 : vec4<f32> = u_xlat9;
    let x_3514 : vec4<f32> = u_xlat1;
    let x_3517 : vec4<f32> = u_xlat7;
    let x_3519 : vec3<f32> = ((vec3<f32>(x_3512.x, x_3512.y, x_3512.z) * vec3<f32>(x_3514.y, x_3514.z, x_3514.w)) + vec3<f32>(x_3517.x, x_3517.y, x_3517.z));
    let x_3520 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3520.w);
    let x_3522 : vec4<f32> = u_xlat6;
    let x_3524 : vec4<f32> = u_xlat7;
    let x_3526 : vec3<f32> = (vec3<f32>(x_3522.x, x_3522.y, x_3522.z) + vec3<f32>(x_3524.x, x_3524.y, x_3524.z));
    let x_3527 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3526.x, x_3526.y, x_3526.z, x_3527.w);

    continuing {
      let x_3529 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3529 + bitcast<u32>(1i));
    }
  }
  let x_3531 : vec3<f32> = u_xlat4;
  let x_3532 : vec4<f32> = u_xlat1;
  let x_3535 : vec4<f32> = u_xlat5;
  let x_3537 : vec3<f32> = ((x_3531 * vec3<f32>(x_3532.y, x_3532.z, x_3532.w)) + vec3<f32>(x_3535.x, x_3535.y, x_3535.z));
  let x_3538 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3537.x, x_3537.y, x_3537.z, x_3538.w);
  let x_3540 : vec4<f32> = u_xlat6;
  let x_3542 : vec4<f32> = u_xlat1;
  let x_3544 : vec3<f32> = (vec3<f32>(x_3540.x, x_3540.y, x_3540.z) + vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
  let x_3545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3545.w);
  let x_3547 : f32 = u_xlat69;
  let x_3548 : f32 = u_xlat69;
  u_xlat23.x = (x_3547 * -(x_3548));
  let x_3553 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_3553);
  let x_3556 : vec4<f32> = u_xlat1;
  let x_3559 : vec4<f32> = x_45.unity_FogColor;
  let x_3562 : vec3<f32> = (vec3<f32>(x_3556.x, x_3556.y, x_3556.z) + -(vec3<f32>(x_3559.x, x_3559.y, x_3559.z)));
  let x_3563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3562.x, x_3562.y, x_3562.z, x_3563.w);
  let x_3567 : vec3<f32> = u_xlat23;
  let x_3569 : vec4<f32> = u_xlat1;
  let x_3573 : vec4<f32> = x_45.unity_FogColor;
  let x_3575 : vec3<f32> = ((vec3<f32>(x_3567.x, x_3567.x, x_3567.x) * vec3<f32>(x_3569.x, x_3569.y, x_3569.z)) + vec3<f32>(x_3573.x, x_3573.y, x_3573.z));
  let x_3576 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
  let x_3579 : f32 = x_58.x_Surface;
  u_xlatb23 = (x_3579 == 1.0f);
  let x_3581 : bool = u_xlatb23;
  let x_3582 : bool = u_xlatb46;
  u_xlatb23 = (x_3581 | x_3582);
  let x_3584 : bool = u_xlatb23;
  if (x_3584) {
    let x_3589 : f32 = u_xlat0.x;
    x_3585 = x_3589;
  } else {
    x_3585 = 1.0f;
  }
  let x_3591 : f32 = x_3585;
  SV_Target0.w = x_3591;
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


