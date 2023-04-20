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
  /* @offset(76) */
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlatb24 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb26 : bool;

@group(1) @binding(2) var<uniform> x_237 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb72 : bool;

@group(1) @binding(4) var<uniform> x_393 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

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

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb74 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1700 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu74 : u32;

var<private> u_xlatu76 : u32;

var<private> u_xlati77 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

@group(1) @binding(1) var<uniform> x_2012 : AdditionalLights;

var<private> u_xlat77 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlati54 : i32;

var<private> u_xlatb78 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat79 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb54 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlati78 : i32;

var<private> u_xlati79 : i32;

var<private> u_xlati80 : i32;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatb76 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_243 : f32;
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
  var x_1785 : f32;
  var x_1796 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2151 : f32;
  var x_2161 : f32;
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
  var x_3737 : f32;
  var x_3750 : f32;
  var x_3798 : f32;
  var x_3809 : vec3<f32>;
  var x_3954 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat24.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat48 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat72 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat72;
  let x_107 : f32 = u_xlat48;
  u_xlat48 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat48;
  u_xlat48 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat24.x;
  let x_115 : f32 = u_xlat48;
  u_xlat24.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat24.x;
  u_xlat24.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb48 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb48;
  if (x_131) {
    let x_136 : f32 = u_xlat24.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat24.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat24.x;
  u_xlatb24 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb24;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat24;
  let x_189 : vec3<f32> = u_xlat24;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 0.0000000000000001f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_240 : f32 = x_237.unity_LODFade.x;
  u_xlatb26 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb26;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_237.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat24;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat24;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = vs_TEXCOORD2;
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_291.x, x_291.y, x_291.z)) + x_294);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat24.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_301);
  let x_304 : vec3<f32> = u_xlat24;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_304.x, x_304.x, x_304.x) * x_306);
  let x_310 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_310;
  let x_313 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_313;
  let x_317 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_317;
  let x_319 : vec3<f32> = u_xlat3;
  let x_320 : vec3<f32> = u_xlat3;
  u_xlat24.x = dot(x_319, x_320);
  let x_324 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_324, 0.00006103515625f);
  let x_329 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_329);
  let x_339 : vec2<f32> = vs_TEXCOORD7;
  let x_341 : f32 = x_44.x_GlobalMipBias.x;
  let x_342 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_339, x_341);
  u_xlat4 = x_342;
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_44.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_348, x_350);
  let x_352 : vec3<f32> = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(x_362, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat72;
  u_xlat72 = (x_366 + 0.5f);
  let x_368 : f32 = u_xlat72;
  let x_370 : vec4<f32> = u_xlat5;
  let x_372 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat4.w;
  u_xlat72 = max(x_376, 0.00009999999747378752f);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : f32 = u_xlat72;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) / vec3<f32>(x_380, x_380, x_380));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_396 : f32 = x_393.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_396);
  let x_398 : bool = u_xlatb72;
  if (x_398) {
    let x_402 : f32 = x_393.x_MainLightShadowParams.y;
    u_xlatb72 = (x_402 == 1.0f);
    let x_404 : bool = u_xlatb72;
    if (x_404) {
      let x_408 : vec4<f32> = vs_TEXCOORD6;
      let x_411 : vec4<f32> = x_393.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) + x_411);
      let x_415 : vec4<f32> = u_xlat5;
      let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
      let x_418 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_416.x, x_416.y, x_418);
      let x_431 : vec3<f32> = txVec0;
      let x_433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_431.xy, x_431.z);
      u_xlat6.x = x_433;
      let x_436 : vec4<f32> = u_xlat5;
      let x_437 : vec2<f32> = vec2<f32>(x_436.z, x_436.w);
      let x_439 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_437.x, x_437.y, x_439);
      let x_446 : vec3<f32> = txVec1;
      let x_448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_446.xy, x_446.z);
      u_xlat6.y = x_448;
      let x_450 : vec4<f32> = vs_TEXCOORD6;
      let x_454 : vec4<f32> = x_393.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_450.x, x_450.y, x_450.x, x_450.y) + x_454);
      let x_457 : vec4<f32> = u_xlat5;
      let x_458 : vec2<f32> = vec2<f32>(x_457.x, x_457.y);
      let x_460 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec2;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_467.xy, x_467.z);
      u_xlat6.z = x_469;
      let x_472 : vec4<f32> = u_xlat5;
      let x_473 : vec2<f32> = vec2<f32>(x_472.z, x_472.w);
      let x_475 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_473.x, x_473.y, x_475);
      let x_482 : vec3<f32> = txVec3;
      let x_484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_482.xy, x_482.z);
      u_xlat6.w = x_484;
      let x_486 : vec4<f32> = u_xlat6;
      u_xlat72 = dot(x_486, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_493 : f32 = x_393.x_MainLightShadowParams.y;
      u_xlatb1 = (x_493 == 2.0f);
      let x_495 : bool = u_xlatb1;
      if (x_495) {
        let x_498 : vec4<f32> = vs_TEXCOORD6;
        let x_502 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_506 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_502.z, x_502.w)) + vec2<f32>(0.5f, 0.5f));
        let x_507 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_509 : vec4<f32> = u_xlat5;
        let x_511 : vec2<f32> = floor(vec2<f32>(x_509.x, x_509.y));
        let x_512 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_516 : vec4<f32> = vs_TEXCOORD6;
        let x_519 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_522 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + -(vec2<f32>(x_522.x, x_522.y)));
        let x_526 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_526.x, x_526.x, x_526.y, x_526.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_531 : vec4<f32> = u_xlat6;
        let x_533 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_531.x, x_531.x, x_531.z, x_531.z) * vec4<f32>(x_533.x, x_533.x, x_533.z, x_533.z));
        let x_536 : vec4<f32> = u_xlat7;
        let x_540 : vec2<f32> = (vec2<f32>(x_536.y, x_536.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_541 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_540.x, x_541.y, x_540.y, x_541.w);
        let x_543 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = u_xlat53;
        let x_548 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.z) * vec2<f32>(0.5f, 0.5f)) + -(x_546));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_552 : vec2<f32> = u_xlat53;
        u_xlat55 = (-(x_552) + vec2<f32>(1.0f, 1.0f));
        let x_557 : vec2<f32> = u_xlat53;
        let x_559 : vec2<f32> = min(x_557, vec2<f32>(0.0f, 0.0f));
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat8;
        let x_565 : vec4<f32> = u_xlat8;
        let x_568 : vec2<f32> = u_xlat55;
        let x_569 : vec2<f32> = ((-(vec2<f32>(x_562.x, x_562.y)) * vec2<f32>(x_565.x, x_565.y)) + x_568);
        let x_570 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec2<f32> = u_xlat53;
        u_xlat53 = max(x_572, vec2<f32>(0.0f, 0.0f));
        let x_574 : vec2<f32> = u_xlat53;
        let x_576 : vec2<f32> = u_xlat53;
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat53 = ((-(x_574) * x_576) + vec2<f32>(x_578.y, x_578.w));
        let x_581 : vec4<f32> = u_xlat8;
        let x_583 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) + vec2<f32>(1.0f, 1.0f));
        let x_584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat53;
        u_xlat53 = (x_586 + vec2<f32>(1.0f, 1.0f));
        let x_589 : vec4<f32> = u_xlat7;
        let x_593 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec2<f32> = u_xlat55;
        let x_597 : vec2<f32> = (x_596 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_606 : vec2<f32> = u_xlat53;
        let x_607 : vec2<f32> = (x_606 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat53 = (vec2<f32>(x_610.y, x_610.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : f32 = u_xlat8.x;
        u_xlat9.z = x_614;
        let x_617 : f32 = u_xlat53.x;
        u_xlat9.w = x_617;
        let x_620 : f32 = u_xlat10.x;
        u_xlat7.z = x_620;
        let x_623 : f32 = u_xlat6.x;
        u_xlat7.w = x_623;
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_626.z, x_626.w, x_626.x, x_626.z) + vec4<f32>(x_628.z, x_628.w, x_628.x, x_628.z));
        let x_632 : f32 = u_xlat9.y;
        u_xlat8.z = x_632;
        let x_635 : f32 = u_xlat53.y;
        u_xlat8.w = x_635;
        let x_638 : f32 = u_xlat7.y;
        u_xlat10.z = x_638;
        let x_641 : f32 = u_xlat6.z;
        u_xlat10.w = x_641;
        let x_643 : vec4<f32> = u_xlat8;
        let x_645 : vec4<f32> = u_xlat10;
        let x_647 : vec3<f32> = (vec3<f32>(x_643.z, x_643.y, x_643.w) + vec3<f32>(x_645.z, x_645.y, x_645.w));
        let x_648 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        let x_652 : vec4<f32> = u_xlat11;
        let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.z, x_650.w) / vec3<f32>(x_652.z, x_652.w, x_652.y));
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_662 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_663 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat10;
        let x_667 : vec4<f32> = u_xlat6;
        let x_669 : vec3<f32> = (vec3<f32>(x_665.z, x_665.y, x_665.w) / vec3<f32>(x_667.x, x_667.y, x_667.z));
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_672 : vec4<f32> = u_xlat8;
        let x_674 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat7;
        let x_680 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = (vec3<f32>(x_677.y, x_677.x, x_677.z) * vec3<f32>(x_680.x, x_680.x, x_680.x));
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_688 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_690 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_688.y, x_688.y, x_688.y));
        let x_691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_694 : f32 = u_xlat8.x;
        u_xlat7.w = x_694;
        let x_696 : vec4<f32> = u_xlat5;
        let x_699 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y) * vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y)) + vec4<f32>(x_702.y, x_702.w, x_702.x, x_702.w));
        let x_705 : vec4<f32> = u_xlat5;
        let x_708 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_711 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_705.x, x_705.y) * vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(x_711.z, x_711.w));
        let x_715 : f32 = u_xlat7.y;
        u_xlat8.w = x_715;
        let x_717 : vec4<f32> = u_xlat8;
        let x_718 : vec2<f32> = vec2<f32>(x_717.y, x_717.z);
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_719.x, x_718.x, x_719.z, x_718.y);
        let x_721 : vec4<f32> = u_xlat5;
        let x_724 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) * vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y)) + vec4<f32>(x_727.x, x_727.y, x_727.z, x_727.y));
        let x_730 : vec4<f32> = u_xlat5;
        let x_733 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y) * vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y)) + vec4<f32>(x_736.w, x_736.y, x_736.w, x_736.z));
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.x, x_745.w, x_745.z, x_745.w));
        let x_749 : vec4<f32> = u_xlat6;
        let x_751 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_749.x, x_749.x, x_749.x, x_749.y) * vec4<f32>(x_751.z, x_751.w, x_751.y, x_751.z));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_755.y, x_755.y, x_755.z, x_755.z) * x_757);
        let x_760 : f32 = u_xlat6.z;
        let x_762 : f32 = u_xlat11.y;
        u_xlat1.x = (x_760 * x_762);
        let x_766 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_777 : vec3<f32> = txVec4;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
        u_xlat74 = x_779;
        let x_781 : vec4<f32> = u_xlat9;
        let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
        let x_784 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_792 : vec3<f32> = txVec5;
        let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_792.xy, x_792.z);
        u_xlat75 = x_794;
        let x_795 : f32 = u_xlat75;
        let x_797 : f32 = u_xlat12.y;
        u_xlat75 = (x_795 * x_797);
        let x_800 : f32 = u_xlat12.x;
        let x_801 : f32 = u_xlat74;
        let x_803 : f32 = u_xlat75;
        u_xlat74 = ((x_800 * x_801) + x_803);
        let x_806 : vec2<f32> = u_xlat53;
        let x_808 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec6;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_815.xy, x_815.z);
        u_xlat75 = x_817;
        let x_819 : f32 = u_xlat12.z;
        let x_820 : f32 = u_xlat75;
        let x_822 : f32 = u_xlat74;
        u_xlat74 = ((x_819 * x_820) + x_822);
        let x_825 : vec4<f32> = u_xlat8;
        let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
        let x_828 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec7;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat75 = x_837;
        let x_839 : f32 = u_xlat12.w;
        let x_840 : f32 = u_xlat75;
        let x_842 : f32 = u_xlat74;
        u_xlat74 = ((x_839 * x_840) + x_842);
        let x_845 : vec4<f32> = u_xlat10;
        let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
        let x_848 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec8;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
        u_xlat75 = x_857;
        let x_859 : f32 = u_xlat13.x;
        let x_860 : f32 = u_xlat75;
        let x_862 : f32 = u_xlat74;
        u_xlat74 = ((x_859 * x_860) + x_862);
        let x_865 : vec4<f32> = u_xlat10;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec9;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat75 = x_877;
        let x_879 : f32 = u_xlat13.y;
        let x_880 : f32 = u_xlat75;
        let x_882 : f32 = u_xlat74;
        u_xlat74 = ((x_879 * x_880) + x_882);
        let x_885 : vec4<f32> = u_xlat8;
        let x_886 : vec2<f32> = vec2<f32>(x_885.z, x_885.w);
        let x_888 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_886.x, x_886.y, x_888);
        let x_895 : vec3<f32> = txVec10;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_895.xy, x_895.z);
        u_xlat75 = x_897;
        let x_899 : f32 = u_xlat13.z;
        let x_900 : f32 = u_xlat75;
        let x_902 : f32 = u_xlat74;
        u_xlat74 = ((x_899 * x_900) + x_902);
        let x_905 : vec4<f32> = u_xlat7;
        let x_906 : vec2<f32> = vec2<f32>(x_905.x, x_905.y);
        let x_908 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_915 : vec3<f32> = txVec11;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_915.xy, x_915.z);
        u_xlat75 = x_917;
        let x_919 : f32 = u_xlat13.w;
        let x_920 : f32 = u_xlat75;
        let x_922 : f32 = u_xlat74;
        u_xlat74 = ((x_919 * x_920) + x_922);
        let x_925 : vec4<f32> = u_xlat7;
        let x_926 : vec2<f32> = vec2<f32>(x_925.z, x_925.w);
        let x_928 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_935 : vec3<f32> = txVec12;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
        u_xlat75 = x_937;
        let x_939 : f32 = u_xlat1.x;
        let x_940 : f32 = u_xlat75;
        let x_942 : f32 = u_xlat74;
        u_xlat72 = ((x_939 * x_940) + x_942);
      } else {
        let x_945 : vec4<f32> = vs_TEXCOORD6;
        let x_948 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_951 : vec2<f32> = ((vec2<f32>(x_945.x, x_945.y) * vec2<f32>(x_948.z, x_948.w)) + vec2<f32>(0.5f, 0.5f));
        let x_952 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat5;
        let x_956 : vec2<f32> = floor(vec2<f32>(x_954.x, x_954.y));
        let x_957 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_959 : vec4<f32> = vs_TEXCOORD6;
        let x_962 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_965 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_959.x, x_959.y) * vec2<f32>(x_962.z, x_962.w)) + -(vec2<f32>(x_965.x, x_965.y)));
        let x_969 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_969.x, x_969.x, x_969.y, x_969.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_972 : vec4<f32> = u_xlat6;
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_972.x, x_972.x, x_972.z, x_972.z) * vec4<f32>(x_974.x, x_974.x, x_974.z, x_974.z));
        let x_977 : vec4<f32> = u_xlat7;
        let x_981 : vec2<f32> = (vec2<f32>(x_977.y, x_977.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_981.x, x_982.z, x_981.y);
        let x_984 : vec4<f32> = u_xlat7;
        let x_987 : vec2<f32> = u_xlat53;
        let x_989 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.z) * vec2<f32>(0.5f, 0.5f)) + -(x_987));
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_990.w);
        let x_992 : vec2<f32> = u_xlat53;
        let x_994 : vec2<f32> = (-(x_992) + vec2<f32>(1.0f, 1.0f));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec2<f32> = u_xlat53;
        u_xlat55 = min(x_997, vec2<f32>(0.0f, 0.0f));
        let x_999 : vec2<f32> = u_xlat55;
        let x_1001 : vec2<f32> = u_xlat55;
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1005 : vec2<f32> = ((-(x_999) * x_1001) + vec2<f32>(x_1003.x, x_1003.y));
        let x_1006 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
        let x_1008 : vec2<f32> = u_xlat53;
        u_xlat55 = max(x_1008, vec2<f32>(0.0f, 0.0f));
        let x_1011 : vec2<f32> = u_xlat55;
        let x_1013 : vec2<f32> = u_xlat55;
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = ((-(x_1011) * x_1013) + vec2<f32>(x_1015.y, x_1015.w));
        let x_1018 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1017.x, x_1018.y, x_1017.y);
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1022 : vec2<f32> = (vec2<f32>(x_1020.x, x_1020.y) + vec2<f32>(2.0f, 2.0f));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec3<f32> = u_xlat30;
        let x_1027 : vec2<f32> = (vec2<f32>(x_1025.x, x_1025.z) + vec2<f32>(2.0f, 2.0f));
        let x_1028 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1028.x, x_1027.x, x_1028.z, x_1027.y);
        let x_1031 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1031 * 0.08163200318813323975f);
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1038 : vec3<f32> = (vec3<f32>(x_1035.z, x_1035.x, x_1035.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1048 : f32 = u_xlat10.y;
        u_xlat9.x = x_1048;
        let x_1050 : vec2<f32> = u_xlat53;
        let x_1057 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1057.x, x_1058.z, x_1057.y);
        let x_1060 : vec2<f32> = u_xlat53;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1064.x, x_1065.y, x_1064.y, x_1065.w);
        let x_1068 : f32 = u_xlat6.x;
        u_xlat7.y = x_1068;
        let x_1071 : f32 = u_xlat8.y;
        u_xlat7.w = x_1071;
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1073 + x_1074);
        let x_1076 : vec2<f32> = u_xlat53;
        let x_1079 : vec2<f32> = ((vec2<f32>(x_1076.y, x_1076.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1080.x, x_1079.x, x_1080.z, x_1079.y);
        let x_1082 : vec2<f32> = u_xlat53;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1082.y, x_1082.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1086.w);
        let x_1089 : f32 = u_xlat6.y;
        u_xlat8.y = x_1089;
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1092 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1091 + x_1092);
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1094 / x_1095);
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1097 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1103 : vec4<f32> = u_xlat8;
        let x_1104 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1103 / x_1104);
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1106 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1108.w, x_1108.x, x_1108.y, x_1108.z) * vec4<f32>(x_1111.x, x_1111.x, x_1111.x, x_1111.x));
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1117 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1114.x, x_1114.w, x_1114.y, x_1114.z) * vec4<f32>(x_1117.y, x_1117.y, x_1117.y, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1121 : vec3<f32> = vec3<f32>(x_1120.y, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1121.z);
        let x_1125 : f32 = u_xlat8.x;
        u_xlat10.y = x_1125;
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y) * vec4<f32>(x_1130.x, x_1130.y, x_1130.x, x_1130.y)) + vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1133.y));
        let x_1136 : vec4<f32> = u_xlat5;
        let x_1139 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat53 = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.w, x_1142.y));
        let x_1146 : f32 = u_xlat10.y;
        u_xlat7.y = x_1146;
        let x_1149 : f32 = u_xlat8.z;
        u_xlat10.y = x_1149;
        let x_1151 : vec4<f32> = u_xlat5;
        let x_1154 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat5;
        let x_1163 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat10;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.w, x_1166.y));
        let x_1169 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1172 : f32 = u_xlat10.y;
        u_xlat7.z = x_1172;
        let x_1175 : vec4<f32> = u_xlat5;
        let x_1178 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y) * vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y)) + vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.z));
        let x_1185 : f32 = u_xlat8.w;
        u_xlat10.y = x_1185;
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1191 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y) * vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y)) + vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1194.y));
        let x_1198 : vec4<f32> = u_xlat5;
        let x_1201 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat31 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.w, x_1204.y));
        let x_1208 : f32 = u_xlat10.y;
        u_xlat7.w = x_1208;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.x, x_1217.w));
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1221 : vec3<f32> = vec3<f32>(x_1220.x, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1221.x, x_1222.y, x_1221.y, x_1221.z);
        let x_1224 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1234 : vec4<f32> = u_xlat5;
        let x_1237 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.w, x_1240.y));
        let x_1244 : f32 = u_xlat7.x;
        u_xlat8.x = x_1244;
        let x_1246 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = x_393.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1252.x, x_1252.y));
        let x_1255 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        let x_1258 : vec4<f32> = u_xlat6;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1258.x, x_1258.x, x_1258.x, x_1258.x) * x_1260);
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1263.y, x_1263.y, x_1263.y, x_1263.y) * x_1265);
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1268.z, x_1268.z, x_1268.z, x_1268.z) * x_1270);
        let x_1272 : vec4<f32> = u_xlat6;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1272.w, x_1272.w, x_1272.w, x_1272.w) * x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec13;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1287.xy, x_1287.z);
        u_xlat1.x = x_1289;
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec14;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat74 = x_1304;
        let x_1305 : f32 = u_xlat74;
        let x_1307 : f32 = u_xlat16.y;
        u_xlat74 = (x_1305 * x_1307);
        let x_1310 : f32 = u_xlat16.x;
        let x_1312 : f32 = u_xlat1.x;
        let x_1314 : f32 = u_xlat74;
        u_xlat1.x = ((x_1310 * x_1312) + x_1314);
        let x_1318 : vec2<f32> = u_xlat53;
        let x_1320 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec15;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat74 = x_1329;
        let x_1331 : f32 = u_xlat16.z;
        let x_1332 : f32 = u_xlat74;
        let x_1335 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1331 * x_1332) + x_1335);
        let x_1339 : vec4<f32> = u_xlat14;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.y);
        let x_1342 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec16;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat74 = x_1351;
        let x_1353 : f32 = u_xlat16.w;
        let x_1354 : f32 = u_xlat74;
        let x_1357 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1353 * x_1354) + x_1357);
        let x_1361 : vec4<f32> = u_xlat12;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec17;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat74 = x_1373;
        let x_1375 : f32 = u_xlat17.x;
        let x_1376 : f32 = u_xlat74;
        let x_1379 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1375 * x_1376) + x_1379);
        let x_1383 : vec4<f32> = u_xlat12;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec18;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat74 = x_1395;
        let x_1397 : f32 = u_xlat17.y;
        let x_1398 : f32 = u_xlat74;
        let x_1401 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1397 * x_1398) + x_1401);
        let x_1405 : vec4<f32> = u_xlat13;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec19;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat74 = x_1417;
        let x_1419 : f32 = u_xlat17.z;
        let x_1420 : f32 = u_xlat74;
        let x_1423 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1419 * x_1420) + x_1423);
        let x_1427 : vec4<f32> = u_xlat14;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec20;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat74 = x_1439;
        let x_1441 : f32 = u_xlat17.w;
        let x_1442 : f32 = u_xlat74;
        let x_1445 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1441 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat15;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec21;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat74 = x_1461;
        let x_1463 : f32 = u_xlat18.x;
        let x_1464 : f32 = u_xlat74;
        let x_1467 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1463 * x_1464) + x_1467);
        let x_1471 : vec4<f32> = u_xlat15;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec22;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat74 = x_1483;
        let x_1485 : f32 = u_xlat18.y;
        let x_1486 : f32 = u_xlat74;
        let x_1489 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1485 * x_1486) + x_1489);
        let x_1493 : vec2<f32> = u_xlat31;
        let x_1495 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec23;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat74 = x_1504;
        let x_1506 : f32 = u_xlat18.z;
        let x_1507 : f32 = u_xlat74;
        let x_1510 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1506 * x_1507) + x_1510);
        let x_1514 : vec2<f32> = u_xlat61;
        let x_1516 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec24;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat74 = x_1525;
        let x_1527 : f32 = u_xlat18.w;
        let x_1528 : f32 = u_xlat74;
        let x_1531 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1527 * x_1528) + x_1531);
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec25;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat74 = x_1547;
        let x_1549 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat74;
        let x_1553 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1549 * x_1550) + x_1553);
        let x_1557 : vec4<f32> = u_xlat10;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.z, x_1557.w);
        let x_1560 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec26;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat74 = x_1569;
        let x_1571 : f32 = u_xlat6.y;
        let x_1572 : f32 = u_xlat74;
        let x_1575 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1571 * x_1572) + x_1575);
        let x_1579 : vec2<f32> = u_xlat56;
        let x_1581 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec27;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat74 = x_1590;
        let x_1592 : f32 = u_xlat6.z;
        let x_1593 : f32 = u_xlat74;
        let x_1596 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1592 * x_1593) + x_1596);
        let x_1600 : vec4<f32> = u_xlat5;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec28;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat74 = x_1612;
        let x_1614 : f32 = u_xlat6.w;
        let x_1615 : f32 = u_xlat74;
        let x_1618 : f32 = u_xlat1.x;
        u_xlat72 = ((x_1614 * x_1615) + x_1618);
      }
    }
  } else {
    let x_1622 : vec4<f32> = vs_TEXCOORD6;
    let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
    let x_1625 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
    let x_1632 : vec3<f32> = txVec29;
    let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
    u_xlat72 = x_1634;
  }
  let x_1636 : f32 = x_393.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1636) + 1.0f);
  let x_1640 : f32 = u_xlat72;
  let x_1642 : f32 = x_393.x_MainLightShadowParams.x;
  let x_1645 : f32 = u_xlat1.x;
  u_xlat72 = ((x_1640 * x_1642) + x_1645);
  let x_1648 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1648);
  let x_1652 : f32 = vs_TEXCOORD6.z;
  u_xlatb74 = (x_1652 >= 1.0f);
  let x_1654 : bool = u_xlatb1;
  let x_1655 : bool = u_xlatb74;
  u_xlatb1 = (x_1654 | x_1655);
  let x_1657 : bool = u_xlatb1;
  let x_1658 : f32 = u_xlat72;
  u_xlat72 = select(x_1658, 1.0f, x_1657);
  let x_1662 : vec3<f32> = vs_TEXCOORD1;
  let x_1666 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1668 : vec3<f32> = (x_1662 + -(x_1666));
  let x_1669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  let x_1671 : vec4<f32> = u_xlat5;
  let x_1673 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1671.x, x_1671.y, x_1671.z), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1678 : f32 = u_xlat1.x;
  let x_1680 : f32 = x_393.x_MainLightShadowParams.z;
  let x_1683 : f32 = x_393.x_MainLightShadowParams.w;
  u_xlat74 = ((x_1678 * x_1680) + x_1683);
  let x_1685 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1685, 0.0f, 1.0f);
  let x_1687 : f32 = u_xlat72;
  u_xlat75 = (-(x_1687) + 1.0f);
  let x_1690 : f32 = u_xlat74;
  let x_1691 : f32 = u_xlat75;
  let x_1693 : f32 = u_xlat72;
  u_xlat72 = ((x_1690 * x_1691) + x_1693);
  let x_1702 : f32 = x_1700.x_MainLightCookieTextureFormat;
  u_xlatb74 = !((x_1702 == -1.0f));
  let x_1704 : bool = u_xlatb74;
  if (x_1704) {
    let x_1707 : vec3<f32> = vs_TEXCOORD1;
    let x_1710 : vec4<f32> = x_1700.x_MainLightWorldToLight[1i];
    let x_1712 : vec2<f32> = (vec2<f32>(x_1707.y, x_1707.y) * vec2<f32>(x_1710.x, x_1710.y));
    let x_1713 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
    let x_1716 : vec4<f32> = x_1700.x_MainLightWorldToLight[0i];
    let x_1718 : vec3<f32> = vs_TEXCOORD1;
    let x_1721 : vec4<f32> = u_xlat5;
    let x_1723 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1718.x, x_1718.x)) + vec2<f32>(x_1721.x, x_1721.y));
    let x_1724 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
    let x_1727 : vec4<f32> = x_1700.x_MainLightWorldToLight[2i];
    let x_1729 : vec3<f32> = vs_TEXCOORD1;
    let x_1732 : vec4<f32> = u_xlat5;
    let x_1734 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1729.z, x_1729.z)) + vec2<f32>(x_1732.x, x_1732.y));
    let x_1735 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
    let x_1737 : vec4<f32> = u_xlat5;
    let x_1741 : vec4<f32> = x_1700.x_MainLightWorldToLight[3i];
    let x_1743 : vec2<f32> = (vec2<f32>(x_1737.x, x_1737.y) + vec2<f32>(x_1741.x, x_1741.y));
    let x_1744 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
    let x_1746 : vec4<f32> = u_xlat5;
    let x_1749 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1750 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1749.x, x_1749.y, x_1750.z, x_1750.w);
    let x_1757 : vec4<f32> = u_xlat5;
    let x_1760 : f32 = x_44.x_GlobalMipBias.x;
    let x_1761 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1757.x, x_1757.y), x_1760);
    u_xlat5 = x_1761;
    let x_1766 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1768 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1770 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1772 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1773 : vec4<f32> = vec4<f32>(x_1766, x_1768, x_1770, x_1772);
    let x_1781 : vec4<bool> = (vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1773.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1781.x, x_1781.y);
    let x_1784 : bool = u_xlatb6.y;
    if (x_1784) {
      let x_1789 : f32 = u_xlat5.w;
      x_1785 = x_1789;
    } else {
      let x_1792 : f32 = u_xlat5.x;
      x_1785 = x_1792;
    }
    let x_1793 : f32 = x_1785;
    u_xlat74 = x_1793;
    let x_1795 : bool = u_xlatb6.x;
    if (x_1795) {
      let x_1799 : vec4<f32> = u_xlat5;
      x_1796 = vec3<f32>(x_1799.x, x_1799.y, x_1799.z);
    } else {
      let x_1802 : f32 = u_xlat74;
      x_1796 = vec3<f32>(x_1802, x_1802, x_1802);
    }
    let x_1804 : vec3<f32> = x_1796;
    let x_1805 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1811 : vec4<f32> = u_xlat5;
  let x_1814 : vec4<f32> = x_44.x_MainLightColor;
  let x_1816 : vec3<f32> = (vec3<f32>(x_1811.x, x_1811.y, x_1811.z) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : f32 = u_xlat72;
  let x_1821 : f32 = x_237.unity_LightData.z;
  u_xlat72 = (x_1819 * x_1821);
  let x_1823 : f32 = u_xlat72;
  let x_1825 : vec4<f32> = u_xlat5;
  let x_1827 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1830 : vec3<f32> = u_xlat2;
  let x_1832 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat72 = dot(x_1830, vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
  let x_1835 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1835, 0.0f, 1.0f);
  let x_1837 : f32 = u_xlat72;
  let x_1839 : vec4<f32> = u_xlat5;
  let x_1841 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
  let x_1842 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
  let x_1845 : f32 = x_57.x_SpecColor.w;
  u_xlat72 = ((x_1845 * 10.0f) + 1.0f);
  let x_1849 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1849);
  let x_1851 : vec3<f32> = u_xlat3;
  let x_1852 : vec3<f32> = u_xlat24;
  let x_1856 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1858 : vec3<f32> = ((x_1851 * vec3<f32>(x_1852.x, x_1852.x, x_1852.x)) + vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
  let x_1859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : vec4<f32> = u_xlat7;
  let x_1863 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(vec3<f32>(x_1861.x, x_1861.y, x_1861.z), vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : f32 = u_xlat74;
  u_xlat74 = max(x_1866, 1.17549435e-38f);
  let x_1869 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1869);
  let x_1871 : f32 = u_xlat74;
  let x_1873 : vec4<f32> = u_xlat7;
  let x_1875 : vec3<f32> = (vec3<f32>(x_1871, x_1871, x_1871) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1878 : vec3<f32> = u_xlat2;
  let x_1879 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(x_1878, vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1882, 0.0f, 1.0f);
  let x_1884 : f32 = u_xlat74;
  u_xlat74 = log2(x_1884);
  let x_1886 : f32 = u_xlat72;
  let x_1887 : f32 = u_xlat74;
  u_xlat74 = (x_1886 * x_1887);
  let x_1889 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1889);
  let x_1891 : f32 = u_xlat74;
  let x_1894 : vec4<f32> = x_57.x_SpecColor;
  let x_1896 : vec3<f32> = (vec3<f32>(x_1891, x_1891, x_1891) * vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
  let x_1899 : vec4<f32> = u_xlat5;
  let x_1901 : vec4<f32> = u_xlat7;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1899.x, x_1899.y, x_1899.z) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec4<f32> = u_xlat6;
  let x_1908 : vec4<f32> = u_xlat1;
  let x_1911 : vec4<f32> = u_xlat5;
  let x_1913 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(x_1908.y, x_1908.z, x_1908.w)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1917 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1919 : f32 = x_237.unity_LightData.y;
  u_xlat74 = min(x_1917, x_1919);
  let x_1923 : f32 = u_xlat74;
  u_xlatu74 = bitcast<u32>(i32(x_1923));
  let x_1927 : f32 = u_xlat1.x;
  let x_1930 : f32 = x_393.x_AdditionalShadowFadeParams.x;
  let x_1933 : f32 = x_393.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1927 * x_1930) + x_1933);
  let x_1937 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1937, 0.0f, 1.0f);
  let x_1941 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1943 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1945 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1947 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1948 : vec4<f32> = vec4<f32>(x_1941, x_1943, x_1945, x_1947);
  let x_1954 : vec4<bool> = (vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1948.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1954.x, x_1954.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1966 : u32 = u_xlatu_loop_1;
    let x_1967 : u32 = u_xlatu74;
    if ((x_1966 < x_1967)) {
    } else {
      break;
    }
    let x_1970 : u32 = u_xlatu_loop_1;
    u_xlatu76 = (x_1970 >> 2u);
    let x_1974 : u32 = u_xlatu_loop_1;
    u_xlati77 = bitcast<i32>((x_1974 & 3u));
    let x_1978 : u32 = u_xlatu76;
    let x_1981 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_1978)];
    let x_1991 : i32 = u_xlati77;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1996 : vec4<u32> = indexable[x_1991];
    u_xlat76 = dot(x_1981, bitcast<vec4<f32>>(x_1996));
    let x_2000 : f32 = u_xlat76;
    u_xlati76 = i32(x_2000);
    let x_2002 : vec3<f32> = vs_TEXCOORD1;
    let x_2013 : i32 = u_xlati76;
    let x_2015 : vec4<f32> = x_2012.x_AdditionalLightsPosition[x_2013];
    let x_2018 : i32 = u_xlati76;
    let x_2020 : vec4<f32> = x_2012.x_AdditionalLightsPosition[x_2018];
    let x_2022 : vec3<f32> = ((-(x_2002) * vec3<f32>(x_2015.w, x_2015.w, x_2015.w)) + vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
    let x_2023 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
    let x_2026 : vec4<f32> = u_xlat8;
    let x_2028 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : f32 = u_xlat77;
    u_xlat77 = max(x_2031, 0.00006103515625f);
    let x_2034 : f32 = u_xlat77;
    u_xlat54 = inverseSqrt(x_2034);
    let x_2036 : f32 = u_xlat54;
    let x_2038 : vec4<f32> = u_xlat8;
    let x_2040 : vec3<f32> = (vec3<f32>(x_2036, x_2036, x_2036) * vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
    let x_2043 : f32 = u_xlat77;
    u_xlat54 = (1.0f / x_2043);
    let x_2045 : f32 = u_xlat77;
    let x_2046 : i32 = u_xlati76;
    let x_2048 : f32 = x_2012.x_AdditionalLightsAttenuation[x_2046].x;
    u_xlat77 = (x_2045 * x_2048);
    let x_2050 : f32 = u_xlat77;
    let x_2052 : f32 = u_xlat77;
    u_xlat77 = ((-(x_2050) * x_2052) + 1.0f);
    let x_2055 : f32 = u_xlat77;
    u_xlat77 = max(x_2055, 0.0f);
    let x_2057 : f32 = u_xlat77;
    let x_2058 : f32 = u_xlat77;
    u_xlat77 = (x_2057 * x_2058);
    let x_2060 : f32 = u_xlat77;
    let x_2061 : f32 = u_xlat54;
    u_xlat77 = (x_2060 * x_2061);
    let x_2063 : i32 = u_xlati76;
    let x_2065 : vec4<f32> = x_2012.x_AdditionalLightsSpotDir[x_2063];
    let x_2067 : vec4<f32> = u_xlat8;
    u_xlat54 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
    let x_2070 : f32 = u_xlat54;
    let x_2071 : i32 = u_xlati76;
    let x_2073 : f32 = x_2012.x_AdditionalLightsAttenuation[x_2071].z;
    let x_2075 : i32 = u_xlati76;
    let x_2077 : f32 = x_2012.x_AdditionalLightsAttenuation[x_2075].w;
    u_xlat54 = ((x_2070 * x_2073) + x_2077);
    let x_2079 : f32 = u_xlat54;
    u_xlat54 = clamp(x_2079, 0.0f, 1.0f);
    let x_2081 : f32 = u_xlat54;
    let x_2082 : f32 = u_xlat54;
    u_xlat54 = (x_2081 * x_2082);
    let x_2084 : f32 = u_xlat77;
    let x_2085 : f32 = u_xlat54;
    u_xlat77 = (x_2084 * x_2085);
    let x_2089 : i32 = u_xlati76;
    let x_2091 : f32 = x_393.x_AdditionalShadowParams[x_2089].w;
    u_xlati54 = i32(x_2091);
    let x_2094 : i32 = u_xlati54;
    u_xlatb78 = (x_2094 >= 0i);
    let x_2096 : bool = u_xlatb78;
    if (x_2096) {
      let x_2100 : i32 = u_xlati76;
      let x_2102 : f32 = x_393.x_AdditionalShadowParams[x_2100].z;
      u_xlatb78 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2102, x_2102, x_2102, x_2102))));
      let x_2106 : bool = u_xlatb78;
      if (x_2106) {
        let x_2111 : vec4<f32> = u_xlat8;
        let x_2114 : vec4<f32> = u_xlat8;
        let x_2117 : vec4<bool> = (abs(vec4<f32>(x_2111.z, x_2111.z, x_2111.y, x_2111.z)) >= abs(vec4<f32>(x_2114.x, x_2114.y, x_2114.x, x_2114.x)));
        let x_2119 : vec3<bool> = vec3<bool>(x_2117.x, x_2117.y, x_2117.z);
        let x_2120 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
        let x_2123 : bool = u_xlatb9.y;
        let x_2125 : bool = u_xlatb9.x;
        u_xlatb78 = (x_2123 & x_2125);
        let x_2127 : vec4<f32> = u_xlat8;
        let x_2130 : vec4<bool> = (-(vec4<f32>(x_2127.z, x_2127.y, x_2127.z, x_2127.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2131 : vec3<bool> = vec3<bool>(x_2130.x, x_2130.y, x_2130.w);
        let x_2132 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2131.x, x_2131.y, x_2132.z, x_2131.z);
        let x_2135 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2135);
        let x_2141 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2141);
        let x_2147 : bool = u_xlatb9.w;
        u_xlat79 = select(0.0f, 1.0f, x_2147);
        let x_2150 : bool = u_xlatb9.z;
        if (x_2150) {
          let x_2155 : f32 = u_xlat9.y;
          x_2151 = x_2155;
        } else {
          let x_2157 : f32 = u_xlat79;
          x_2151 = x_2157;
        }
        let x_2158 : f32 = x_2151;
        u_xlat79 = x_2158;
        let x_2160 : bool = u_xlatb78;
        if (x_2160) {
          let x_2165 : f32 = u_xlat9.x;
          x_2161 = x_2165;
        } else {
          let x_2167 : f32 = u_xlat79;
          x_2161 = x_2167;
        }
        let x_2168 : f32 = x_2161;
        u_xlat78 = x_2168;
        let x_2169 : i32 = u_xlati76;
        let x_2171 : f32 = x_393.x_AdditionalShadowParams[x_2169].w;
        u_xlat79 = trunc(x_2171);
        let x_2173 : f32 = u_xlat78;
        let x_2174 : f32 = u_xlat79;
        u_xlat78 = (x_2173 + x_2174);
        let x_2176 : f32 = u_xlat78;
        u_xlati54 = i32(x_2176);
      }
      let x_2178 : i32 = u_xlati54;
      u_xlati54 = (x_2178 << bitcast<u32>(2i));
      let x_2180 : vec3<f32> = vs_TEXCOORD1;
      let x_2183 : i32 = u_xlati54;
      let x_2186 : i32 = u_xlati54;
      let x_2190 : vec4<f32> = x_393.x_AdditionalLightsWorldToShadow[((x_2183 + 1i) / 4i)][((x_2186 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2180.y, x_2180.y, x_2180.y, x_2180.y) * x_2190);
      let x_2192 : i32 = u_xlati54;
      let x_2194 : i32 = u_xlati54;
      let x_2197 : vec4<f32> = x_393.x_AdditionalLightsWorldToShadow[(x_2192 / 4i)][(x_2194 % 4i)];
      let x_2198 : vec3<f32> = vs_TEXCOORD1;
      let x_2201 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2197 * vec4<f32>(x_2198.x, x_2198.x, x_2198.x, x_2198.x)) + x_2201);
      let x_2203 : i32 = u_xlati54;
      let x_2206 : i32 = u_xlati54;
      let x_2210 : vec4<f32> = x_393.x_AdditionalLightsWorldToShadow[((x_2203 + 2i) / 4i)][((x_2206 + 2i) % 4i)];
      let x_2211 : vec3<f32> = vs_TEXCOORD1;
      let x_2214 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2210 * vec4<f32>(x_2211.z, x_2211.z, x_2211.z, x_2211.z)) + x_2214);
      let x_2216 : vec4<f32> = u_xlat9;
      let x_2217 : i32 = u_xlati54;
      let x_2220 : i32 = u_xlati54;
      let x_2224 : vec4<f32> = x_393.x_AdditionalLightsWorldToShadow[((x_2217 + 3i) / 4i)][((x_2220 + 3i) % 4i)];
      u_xlat9 = (x_2216 + x_2224);
      let x_2226 : vec4<f32> = u_xlat9;
      let x_2228 : vec4<f32> = u_xlat9;
      let x_2230 : vec3<f32> = (vec3<f32>(x_2226.x, x_2226.y, x_2226.z) / vec3<f32>(x_2228.w, x_2228.w, x_2228.w));
      let x_2231 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
      let x_2234 : i32 = u_xlati76;
      let x_2236 : f32 = x_393.x_AdditionalShadowParams[x_2234].y;
      u_xlatb54 = (0.0f < x_2236);
      let x_2238 : bool = u_xlatb54;
      if (x_2238) {
        let x_2241 : i32 = u_xlati76;
        let x_2243 : f32 = x_393.x_AdditionalShadowParams[x_2241].y;
        u_xlatb54 = (1.0f == x_2243);
        let x_2245 : bool = u_xlatb54;
        if (x_2245) {
          let x_2248 : vec4<f32> = u_xlat9;
          let x_2252 : vec4<f32> = x_393.x_AdditionalShadowOffset0;
          u_xlat10 = (vec4<f32>(x_2248.x, x_2248.y, x_2248.x, x_2248.y) + x_2252);
          let x_2255 : vec4<f32> = u_xlat10;
          let x_2256 : vec2<f32> = vec2<f32>(x_2255.x, x_2255.y);
          let x_2258 : f32 = u_xlat9.z;
          txVec30 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
          let x_2266 : vec3<f32> = txVec30;
          let x_2268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2266.xy, x_2266.z);
          u_xlat11.x = x_2268;
          let x_2271 : vec4<f32> = u_xlat10;
          let x_2272 : vec2<f32> = vec2<f32>(x_2271.z, x_2271.w);
          let x_2274 : f32 = u_xlat9.z;
          txVec31 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
          let x_2281 : vec3<f32> = txVec31;
          let x_2283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
          u_xlat11.y = x_2283;
          let x_2285 : vec4<f32> = u_xlat9;
          let x_2289 : vec4<f32> = x_393.x_AdditionalShadowOffset1;
          u_xlat10 = (vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y) + x_2289);
          let x_2292 : vec4<f32> = u_xlat10;
          let x_2293 : vec2<f32> = vec2<f32>(x_2292.x, x_2292.y);
          let x_2295 : f32 = u_xlat9.z;
          txVec32 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
          let x_2302 : vec3<f32> = txVec32;
          let x_2304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
          u_xlat11.z = x_2304;
          let x_2307 : vec4<f32> = u_xlat10;
          let x_2308 : vec2<f32> = vec2<f32>(x_2307.z, x_2307.w);
          let x_2310 : f32 = u_xlat9.z;
          txVec33 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
          let x_2317 : vec3<f32> = txVec33;
          let x_2319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2317.xy, x_2317.z);
          u_xlat11.w = x_2319;
          let x_2321 : vec4<f32> = u_xlat11;
          u_xlat54 = dot(x_2321, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2324 : i32 = u_xlati76;
          let x_2326 : f32 = x_393.x_AdditionalShadowParams[x_2324].y;
          u_xlatb78 = (2.0f == x_2326);
          let x_2328 : bool = u_xlatb78;
          if (x_2328) {
            let x_2331 : vec4<f32> = u_xlat9;
            let x_2335 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2338 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.y) * vec2<f32>(x_2335.z, x_2335.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat10;
            let x_2343 : vec2<f32> = floor(vec2<f32>(x_2341.x, x_2341.y));
            let x_2344 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
            let x_2347 : vec4<f32> = u_xlat9;
            let x_2350 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2353 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2347.x, x_2347.y) * vec2<f32>(x_2350.z, x_2350.w)) + -(vec2<f32>(x_2353.x, x_2353.y)));
            let x_2357 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2357.x, x_2357.x, x_2357.y, x_2357.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2360 : vec4<f32> = u_xlat11;
            let x_2362 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2360.x, x_2360.x, x_2360.z, x_2360.z) * vec4<f32>(x_2362.x, x_2362.x, x_2362.z, x_2362.z));
            let x_2365 : vec4<f32> = u_xlat12;
            let x_2367 : vec2<f32> = (vec2<f32>(x_2365.y, x_2365.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2368 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2367.x, x_2368.y, x_2367.y, x_2368.w);
            let x_2370 : vec4<f32> = u_xlat12;
            let x_2373 : vec2<f32> = u_xlat58;
            let x_2375 : vec2<f32> = ((vec2<f32>(x_2370.x, x_2370.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2373));
            let x_2376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
            let x_2379 : vec2<f32> = u_xlat58;
            u_xlat60 = (-(x_2379) + vec2<f32>(1.0f, 1.0f));
            let x_2382 : vec2<f32> = u_xlat58;
            let x_2383 : vec2<f32> = min(x_2382, vec2<f32>(0.0f, 0.0f));
            let x_2384 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2383.x, x_2383.y, x_2384.z, x_2384.w);
            let x_2386 : vec4<f32> = u_xlat13;
            let x_2389 : vec4<f32> = u_xlat13;
            let x_2392 : vec2<f32> = u_xlat60;
            let x_2393 : vec2<f32> = ((-(vec2<f32>(x_2386.x, x_2386.y)) * vec2<f32>(x_2389.x, x_2389.y)) + x_2392);
            let x_2394 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
            let x_2396 : vec2<f32> = u_xlat58;
            u_xlat58 = max(x_2396, vec2<f32>(0.0f, 0.0f));
            let x_2398 : vec2<f32> = u_xlat58;
            let x_2400 : vec2<f32> = u_xlat58;
            let x_2402 : vec4<f32> = u_xlat11;
            u_xlat58 = ((-(x_2398) * x_2400) + vec2<f32>(x_2402.y, x_2402.w));
            let x_2405 : vec4<f32> = u_xlat13;
            let x_2407 : vec2<f32> = (vec2<f32>(x_2405.x, x_2405.y) + vec2<f32>(1.0f, 1.0f));
            let x_2408 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
            let x_2410 : vec2<f32> = u_xlat58;
            u_xlat58 = (x_2410 + vec2<f32>(1.0f, 1.0f));
            let x_2412 : vec4<f32> = u_xlat12;
            let x_2414 : vec2<f32> = (vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2415 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
            let x_2417 : vec2<f32> = u_xlat60;
            let x_2418 : vec2<f32> = (x_2417 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2419 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2418.x, x_2418.y, x_2419.z, x_2419.w);
            let x_2421 : vec4<f32> = u_xlat13;
            let x_2423 : vec2<f32> = (vec2<f32>(x_2421.x, x_2421.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2424 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
            let x_2426 : vec2<f32> = u_xlat58;
            let x_2427 : vec2<f32> = (x_2426 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec4<f32> = u_xlat11;
            u_xlat58 = (vec2<f32>(x_2430.y, x_2430.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2434 : f32 = u_xlat13.x;
            u_xlat14.z = x_2434;
            let x_2437 : f32 = u_xlat58.x;
            u_xlat14.w = x_2437;
            let x_2440 : f32 = u_xlat15.x;
            u_xlat12.z = x_2440;
            let x_2443 : f32 = u_xlat11.x;
            u_xlat12.w = x_2443;
            let x_2445 : vec4<f32> = u_xlat12;
            let x_2447 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2445.z, x_2445.w, x_2445.x, x_2445.z) + vec4<f32>(x_2447.z, x_2447.w, x_2447.x, x_2447.z));
            let x_2451 : f32 = u_xlat14.y;
            u_xlat13.z = x_2451;
            let x_2454 : f32 = u_xlat58.y;
            u_xlat13.w = x_2454;
            let x_2457 : f32 = u_xlat12.y;
            u_xlat15.z = x_2457;
            let x_2460 : f32 = u_xlat11.z;
            u_xlat15.w = x_2460;
            let x_2462 : vec4<f32> = u_xlat13;
            let x_2464 : vec4<f32> = u_xlat15;
            let x_2466 : vec3<f32> = (vec3<f32>(x_2462.z, x_2462.y, x_2462.w) + vec3<f32>(x_2464.z, x_2464.y, x_2464.w));
            let x_2467 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat12;
            let x_2471 : vec4<f32> = u_xlat16;
            let x_2473 : vec3<f32> = (vec3<f32>(x_2469.x, x_2469.z, x_2469.w) / vec3<f32>(x_2471.z, x_2471.w, x_2471.y));
            let x_2474 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
            let x_2476 : vec4<f32> = u_xlat12;
            let x_2478 : vec3<f32> = (vec3<f32>(x_2476.x, x_2476.y, x_2476.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2479 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
            let x_2481 : vec4<f32> = u_xlat15;
            let x_2483 : vec4<f32> = u_xlat11;
            let x_2485 : vec3<f32> = (vec3<f32>(x_2481.z, x_2481.y, x_2481.w) / vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
            let x_2486 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
            let x_2488 : vec4<f32> = u_xlat13;
            let x_2490 : vec3<f32> = (vec3<f32>(x_2488.x, x_2488.y, x_2488.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2491 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
            let x_2493 : vec4<f32> = u_xlat12;
            let x_2496 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2493.y, x_2493.x, x_2493.z) * vec3<f32>(x_2496.x, x_2496.x, x_2496.x));
            let x_2499 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat13;
            let x_2504 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2506 : vec3<f32> = (vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2504.y, x_2504.y, x_2504.y));
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
            let x_2510 : f32 = u_xlat13.x;
            u_xlat12.w = x_2510;
            let x_2512 : vec4<f32> = u_xlat10;
            let x_2515 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2518 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2512.x, x_2512.y, x_2512.x, x_2512.y) * vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y)) + vec4<f32>(x_2518.y, x_2518.w, x_2518.x, x_2518.w));
            let x_2521 : vec4<f32> = u_xlat10;
            let x_2524 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2527 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(x_2524.x, x_2524.y)) + vec2<f32>(x_2527.z, x_2527.w));
            let x_2531 : f32 = u_xlat12.y;
            u_xlat13.w = x_2531;
            let x_2533 : vec4<f32> = u_xlat13;
            let x_2534 : vec2<f32> = vec2<f32>(x_2533.y, x_2533.z);
            let x_2535 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2535.x, x_2534.x, x_2535.z, x_2534.y);
            let x_2537 : vec4<f32> = u_xlat10;
            let x_2540 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2543 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y) * vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y)) + vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2543.y));
            let x_2546 : vec4<f32> = u_xlat10;
            let x_2549 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2552 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.y) * vec4<f32>(x_2549.x, x_2549.y, x_2549.x, x_2549.y)) + vec4<f32>(x_2552.w, x_2552.y, x_2552.w, x_2552.z));
            let x_2555 : vec4<f32> = u_xlat10;
            let x_2558 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2561 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.y) * vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y)) + vec4<f32>(x_2561.x, x_2561.w, x_2561.z, x_2561.w));
            let x_2564 : vec4<f32> = u_xlat11;
            let x_2566 : vec4<f32> = u_xlat16;
            u_xlat17 = (vec4<f32>(x_2564.x, x_2564.x, x_2564.x, x_2564.y) * vec4<f32>(x_2566.z, x_2566.w, x_2566.y, x_2566.z));
            let x_2569 : vec4<f32> = u_xlat11;
            let x_2571 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2569.y, x_2569.y, x_2569.z, x_2569.z) * x_2571);
            let x_2574 : f32 = u_xlat11.z;
            let x_2576 : f32 = u_xlat16.y;
            u_xlat78 = (x_2574 * x_2576);
            let x_2579 : vec4<f32> = u_xlat14;
            let x_2580 : vec2<f32> = vec2<f32>(x_2579.x, x_2579.y);
            let x_2582 : f32 = u_xlat9.z;
            txVec34 = vec3<f32>(x_2580.x, x_2580.y, x_2582);
            let x_2589 : vec3<f32> = txVec34;
            let x_2591 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2589.xy, x_2589.z);
            u_xlat79 = x_2591;
            let x_2593 : vec4<f32> = u_xlat14;
            let x_2594 : vec2<f32> = vec2<f32>(x_2593.z, x_2593.w);
            let x_2596 : f32 = u_xlat9.z;
            txVec35 = vec3<f32>(x_2594.x, x_2594.y, x_2596);
            let x_2604 : vec3<f32> = txVec35;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat80 = x_2606;
            let x_2607 : f32 = u_xlat80;
            let x_2609 : f32 = u_xlat17.y;
            u_xlat80 = (x_2607 * x_2609);
            let x_2612 : f32 = u_xlat17.x;
            let x_2613 : f32 = u_xlat79;
            let x_2615 : f32 = u_xlat80;
            u_xlat79 = ((x_2612 * x_2613) + x_2615);
            let x_2618 : vec2<f32> = u_xlat58;
            let x_2620 : f32 = u_xlat9.z;
            txVec36 = vec3<f32>(x_2618.x, x_2618.y, x_2620);
            let x_2627 : vec3<f32> = txVec36;
            let x_2629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2627.xy, x_2627.z);
            u_xlat80 = x_2629;
            let x_2631 : f32 = u_xlat17.z;
            let x_2632 : f32 = u_xlat80;
            let x_2634 : f32 = u_xlat79;
            u_xlat79 = ((x_2631 * x_2632) + x_2634);
            let x_2637 : vec4<f32> = u_xlat13;
            let x_2638 : vec2<f32> = vec2<f32>(x_2637.x, x_2637.y);
            let x_2640 : f32 = u_xlat9.z;
            txVec37 = vec3<f32>(x_2638.x, x_2638.y, x_2640);
            let x_2647 : vec3<f32> = txVec37;
            let x_2649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2647.xy, x_2647.z);
            u_xlat80 = x_2649;
            let x_2651 : f32 = u_xlat17.w;
            let x_2652 : f32 = u_xlat80;
            let x_2654 : f32 = u_xlat79;
            u_xlat79 = ((x_2651 * x_2652) + x_2654);
            let x_2657 : vec4<f32> = u_xlat15;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.x, x_2657.y);
            let x_2660 : f32 = u_xlat9.z;
            txVec38 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec38;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat80 = x_2669;
            let x_2671 : f32 = u_xlat18.x;
            let x_2672 : f32 = u_xlat80;
            let x_2674 : f32 = u_xlat79;
            u_xlat79 = ((x_2671 * x_2672) + x_2674);
            let x_2677 : vec4<f32> = u_xlat15;
            let x_2678 : vec2<f32> = vec2<f32>(x_2677.z, x_2677.w);
            let x_2680 : f32 = u_xlat9.z;
            txVec39 = vec3<f32>(x_2678.x, x_2678.y, x_2680);
            let x_2687 : vec3<f32> = txVec39;
            let x_2689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2687.xy, x_2687.z);
            u_xlat80 = x_2689;
            let x_2691 : f32 = u_xlat18.y;
            let x_2692 : f32 = u_xlat80;
            let x_2694 : f32 = u_xlat79;
            u_xlat79 = ((x_2691 * x_2692) + x_2694);
            let x_2697 : vec4<f32> = u_xlat13;
            let x_2698 : vec2<f32> = vec2<f32>(x_2697.z, x_2697.w);
            let x_2700 : f32 = u_xlat9.z;
            txVec40 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
            let x_2707 : vec3<f32> = txVec40;
            let x_2709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
            u_xlat80 = x_2709;
            let x_2711 : f32 = u_xlat18.z;
            let x_2712 : f32 = u_xlat80;
            let x_2714 : f32 = u_xlat79;
            u_xlat79 = ((x_2711 * x_2712) + x_2714);
            let x_2717 : vec4<f32> = u_xlat12;
            let x_2718 : vec2<f32> = vec2<f32>(x_2717.x, x_2717.y);
            let x_2720 : f32 = u_xlat9.z;
            txVec41 = vec3<f32>(x_2718.x, x_2718.y, x_2720);
            let x_2727 : vec3<f32> = txVec41;
            let x_2729 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2727.xy, x_2727.z);
            u_xlat80 = x_2729;
            let x_2731 : f32 = u_xlat18.w;
            let x_2732 : f32 = u_xlat80;
            let x_2734 : f32 = u_xlat79;
            u_xlat79 = ((x_2731 * x_2732) + x_2734);
            let x_2737 : vec4<f32> = u_xlat12;
            let x_2738 : vec2<f32> = vec2<f32>(x_2737.z, x_2737.w);
            let x_2740 : f32 = u_xlat9.z;
            txVec42 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
            let x_2747 : vec3<f32> = txVec42;
            let x_2749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
            u_xlat80 = x_2749;
            let x_2750 : f32 = u_xlat78;
            let x_2751 : f32 = u_xlat80;
            let x_2753 : f32 = u_xlat79;
            u_xlat54 = ((x_2750 * x_2751) + x_2753);
          } else {
            let x_2756 : vec4<f32> = u_xlat9;
            let x_2759 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2762 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.y) * vec2<f32>(x_2759.z, x_2759.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2763 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
            let x_2765 : vec4<f32> = u_xlat10;
            let x_2767 : vec2<f32> = floor(vec2<f32>(x_2765.x, x_2765.y));
            let x_2768 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2767.x, x_2767.y, x_2768.z, x_2768.w);
            let x_2770 : vec4<f32> = u_xlat9;
            let x_2773 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2776 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2770.x, x_2770.y) * vec2<f32>(x_2773.z, x_2773.w)) + -(vec2<f32>(x_2776.x, x_2776.y)));
            let x_2780 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2780.x, x_2780.x, x_2780.y, x_2780.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2783 : vec4<f32> = u_xlat11;
            let x_2785 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2783.x, x_2783.x, x_2783.z, x_2783.z) * vec4<f32>(x_2785.x, x_2785.x, x_2785.z, x_2785.z));
            let x_2788 : vec4<f32> = u_xlat12;
            let x_2790 : vec2<f32> = (vec2<f32>(x_2788.y, x_2788.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2791 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2791.x, x_2790.x, x_2791.z, x_2790.y);
            let x_2793 : vec4<f32> = u_xlat12;
            let x_2796 : vec2<f32> = u_xlat58;
            let x_2798 : vec2<f32> = ((vec2<f32>(x_2793.x, x_2793.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2796));
            let x_2799 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2798.x, x_2799.y, x_2798.y, x_2799.w);
            let x_2801 : vec2<f32> = u_xlat58;
            let x_2803 : vec2<f32> = (-(x_2801) + vec2<f32>(1.0f, 1.0f));
            let x_2804 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2803.x, x_2803.y, x_2804.z, x_2804.w);
            let x_2806 : vec2<f32> = u_xlat58;
            u_xlat60 = min(x_2806, vec2<f32>(0.0f, 0.0f));
            let x_2808 : vec2<f32> = u_xlat60;
            let x_2810 : vec2<f32> = u_xlat60;
            let x_2812 : vec4<f32> = u_xlat12;
            let x_2814 : vec2<f32> = ((-(x_2808) * x_2810) + vec2<f32>(x_2812.x, x_2812.y));
            let x_2815 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2814.x, x_2814.y, x_2815.z, x_2815.w);
            let x_2817 : vec2<f32> = u_xlat58;
            u_xlat60 = max(x_2817, vec2<f32>(0.0f, 0.0f));
            let x_2820 : vec2<f32> = u_xlat60;
            let x_2822 : vec2<f32> = u_xlat60;
            let x_2824 : vec4<f32> = u_xlat11;
            let x_2826 : vec2<f32> = ((-(x_2820) * x_2822) + vec2<f32>(x_2824.y, x_2824.w));
            let x_2827 : vec3<f32> = u_xlat35;
            u_xlat35 = vec3<f32>(x_2826.x, x_2827.y, x_2826.y);
            let x_2829 : vec4<f32> = u_xlat12;
            let x_2831 : vec2<f32> = (vec2<f32>(x_2829.x, x_2829.y) + vec2<f32>(2.0f, 2.0f));
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
            let x_2834 : vec3<f32> = u_xlat35;
            let x_2836 : vec2<f32> = (vec2<f32>(x_2834.x, x_2834.z) + vec2<f32>(2.0f, 2.0f));
            let x_2837 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2837.x, x_2836.x, x_2837.z, x_2836.y);
            let x_2840 : f32 = u_xlat11.y;
            u_xlat14.z = (x_2840 * 0.08163200318813323975f);
            let x_2843 : vec4<f32> = u_xlat11;
            let x_2845 : vec3<f32> = (vec3<f32>(x_2843.z, x_2843.x, x_2843.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2846 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2845.x, x_2845.y, x_2845.z, x_2846.w);
            let x_2848 : vec4<f32> = u_xlat12;
            let x_2850 : vec2<f32> = (vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2854 : f32 = u_xlat15.y;
            u_xlat14.x = x_2854;
            let x_2856 : vec2<f32> = u_xlat58;
            let x_2859 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2860 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2860.x, x_2859.x, x_2860.z, x_2859.y);
            let x_2862 : vec2<f32> = u_xlat58;
            let x_2865 : vec2<f32> = ((vec2<f32>(x_2862.x, x_2862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2865.x, x_2866.y, x_2865.y, x_2866.w);
            let x_2869 : f32 = u_xlat11.x;
            u_xlat12.y = x_2869;
            let x_2872 : f32 = u_xlat13.y;
            u_xlat12.w = x_2872;
            let x_2874 : vec4<f32> = u_xlat12;
            let x_2875 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2874 + x_2875);
            let x_2877 : vec2<f32> = u_xlat58;
            let x_2880 : vec2<f32> = ((vec2<f32>(x_2877.y, x_2877.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2881 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2881.x, x_2880.x, x_2881.z, x_2880.y);
            let x_2883 : vec2<f32> = u_xlat58;
            let x_2886 : vec2<f32> = ((vec2<f32>(x_2883.y, x_2883.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2887 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2886.x, x_2887.y, x_2886.y, x_2887.w);
            let x_2890 : f32 = u_xlat11.y;
            u_xlat13.y = x_2890;
            let x_2892 : vec4<f32> = u_xlat13;
            let x_2893 : vec4<f32> = u_xlat15;
            u_xlat11 = (x_2892 + x_2893);
            let x_2895 : vec4<f32> = u_xlat12;
            let x_2896 : vec4<f32> = u_xlat14;
            u_xlat12 = (x_2895 / x_2896);
            let x_2898 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2900 : vec4<f32> = u_xlat13;
            let x_2901 : vec4<f32> = u_xlat11;
            u_xlat13 = (x_2900 / x_2901);
            let x_2903 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2903 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2905 : vec4<f32> = u_xlat12;
            let x_2908 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2905.w, x_2905.x, x_2905.y, x_2905.z) * vec4<f32>(x_2908.x, x_2908.x, x_2908.x, x_2908.x));
            let x_2911 : vec4<f32> = u_xlat13;
            let x_2914 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2911.x, x_2911.w, x_2911.y, x_2911.z) * vec4<f32>(x_2914.y, x_2914.y, x_2914.y, x_2914.y));
            let x_2917 : vec4<f32> = u_xlat12;
            let x_2918 : vec3<f32> = vec3<f32>(x_2917.y, x_2917.z, x_2917.w);
            let x_2919 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2918.x, x_2919.y, x_2918.y, x_2918.z);
            let x_2922 : f32 = u_xlat13.x;
            u_xlat15.y = x_2922;
            let x_2924 : vec4<f32> = u_xlat10;
            let x_2927 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2930 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y) * vec4<f32>(x_2927.x, x_2927.y, x_2927.x, x_2927.y)) + vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2930.y));
            let x_2933 : vec4<f32> = u_xlat10;
            let x_2936 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2939 : vec4<f32> = u_xlat15;
            u_xlat58 = ((vec2<f32>(x_2933.x, x_2933.y) * vec2<f32>(x_2936.x, x_2936.y)) + vec2<f32>(x_2939.w, x_2939.y));
            let x_2943 : f32 = u_xlat15.y;
            u_xlat12.y = x_2943;
            let x_2946 : f32 = u_xlat13.z;
            u_xlat15.y = x_2946;
            let x_2948 : vec4<f32> = u_xlat10;
            let x_2951 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2948.x, x_2948.y, x_2948.x, x_2948.y) * vec4<f32>(x_2951.x, x_2951.y, x_2951.x, x_2951.y)) + vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2954.y));
            let x_2957 : vec4<f32> = u_xlat10;
            let x_2960 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2963 : vec4<f32> = u_xlat15;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2960.x, x_2960.y)) + vec2<f32>(x_2963.w, x_2963.y));
            let x_2966 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat15.y;
            u_xlat12.z = x_2969;
            let x_2972 : vec4<f32> = u_xlat10;
            let x_2975 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat12;
            u_xlat19 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.z));
            let x_2982 : f32 = u_xlat13.w;
            u_xlat15.y = x_2982;
            let x_2985 : vec4<f32> = u_xlat10;
            let x_2988 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_2991 : vec4<f32> = u_xlat15;
            u_xlat20 = ((vec4<f32>(x_2985.x, x_2985.y, x_2985.x, x_2985.y) * vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y)) + vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2991.y));
            let x_2995 : vec4<f32> = u_xlat10;
            let x_2998 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat15;
            u_xlat36 = ((vec2<f32>(x_2995.x, x_2995.y) * vec2<f32>(x_2998.x, x_2998.y)) + vec2<f32>(x_3001.w, x_3001.y));
            let x_3005 : f32 = u_xlat15.y;
            u_xlat12.w = x_3005;
            let x_3008 : vec4<f32> = u_xlat10;
            let x_3011 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat12;
            u_xlat66 = ((vec2<f32>(x_3008.x, x_3008.y) * vec2<f32>(x_3011.x, x_3011.y)) + vec2<f32>(x_3014.x, x_3014.w));
            let x_3017 : vec4<f32> = u_xlat15;
            let x_3018 : vec3<f32> = vec3<f32>(x_3017.x, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3018.x, x_3019.y, x_3018.y, x_3018.z);
            let x_3021 : vec4<f32> = u_xlat10;
            let x_3024 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_3027 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y) * vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y)) + vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3027.y));
            let x_3030 : vec4<f32> = u_xlat10;
            let x_3033 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3030.x, x_3030.y) * vec2<f32>(x_3033.x, x_3033.y)) + vec2<f32>(x_3036.w, x_3036.y));
            let x_3040 : f32 = u_xlat12.x;
            u_xlat13.x = x_3040;
            let x_3042 : vec4<f32> = u_xlat10;
            let x_3045 : vec4<f32> = x_393.x_AdditionalShadowmapSize;
            let x_3048 : vec4<f32> = u_xlat13;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3042.x, x_3042.y) * vec2<f32>(x_3045.x, x_3045.y)) + vec2<f32>(x_3048.x, x_3048.y));
            let x_3051 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_3050.x, x_3050.y, x_3051.z, x_3051.w);
            let x_3054 : vec4<f32> = u_xlat11;
            let x_3056 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_3054.x, x_3054.x, x_3054.x, x_3054.x) * x_3056);
            let x_3059 : vec4<f32> = u_xlat11;
            let x_3061 : vec4<f32> = u_xlat14;
            u_xlat22 = (vec4<f32>(x_3059.y, x_3059.y, x_3059.y, x_3059.y) * x_3061);
            let x_3064 : vec4<f32> = u_xlat11;
            let x_3066 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3064.z, x_3064.z, x_3064.z, x_3064.z) * x_3066);
            let x_3068 : vec4<f32> = u_xlat11;
            let x_3070 : vec4<f32> = u_xlat14;
            u_xlat11 = (vec4<f32>(x_3068.w, x_3068.w, x_3068.w, x_3068.w) * x_3070);
            let x_3073 : vec4<f32> = u_xlat16;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.x, x_3073.y);
            let x_3076 : f32 = u_xlat9.z;
            txVec43 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3083 : vec3<f32> = txVec43;
            let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
            u_xlat78 = x_3085;
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat9.z;
            txVec44 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec44;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat79 = x_3099;
            let x_3100 : f32 = u_xlat79;
            let x_3102 : f32 = u_xlat21.y;
            u_xlat79 = (x_3100 * x_3102);
            let x_3105 : f32 = u_xlat21.x;
            let x_3106 : f32 = u_xlat78;
            let x_3108 : f32 = u_xlat79;
            u_xlat78 = ((x_3105 * x_3106) + x_3108);
            let x_3111 : vec2<f32> = u_xlat58;
            let x_3113 : f32 = u_xlat9.z;
            txVec45 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec45;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat79 = x_3122;
            let x_3124 : f32 = u_xlat21.z;
            let x_3125 : f32 = u_xlat79;
            let x_3127 : f32 = u_xlat78;
            u_xlat78 = ((x_3124 * x_3125) + x_3127);
            let x_3130 : vec4<f32> = u_xlat19;
            let x_3131 : vec2<f32> = vec2<f32>(x_3130.x, x_3130.y);
            let x_3133 : f32 = u_xlat9.z;
            txVec46 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec46;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat79 = x_3142;
            let x_3144 : f32 = u_xlat21.w;
            let x_3145 : f32 = u_xlat79;
            let x_3147 : f32 = u_xlat78;
            u_xlat78 = ((x_3144 * x_3145) + x_3147);
            let x_3150 : vec4<f32> = u_xlat17;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
            let x_3153 : f32 = u_xlat9.z;
            txVec47 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec47;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat79 = x_3162;
            let x_3164 : f32 = u_xlat22.x;
            let x_3165 : f32 = u_xlat79;
            let x_3167 : f32 = u_xlat78;
            u_xlat78 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec4<f32> = u_xlat17;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.z, x_3170.w);
            let x_3173 : f32 = u_xlat9.z;
            txVec48 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3180 : vec3<f32> = txVec48;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat79 = x_3182;
            let x_3184 : f32 = u_xlat22.y;
            let x_3185 : f32 = u_xlat79;
            let x_3187 : f32 = u_xlat78;
            u_xlat78 = ((x_3184 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat18;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.x, x_3190.y);
            let x_3193 : f32 = u_xlat9.z;
            txVec49 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec49;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat79 = x_3202;
            let x_3204 : f32 = u_xlat22.z;
            let x_3205 : f32 = u_xlat79;
            let x_3207 : f32 = u_xlat78;
            u_xlat78 = ((x_3204 * x_3205) + x_3207);
            let x_3210 : vec4<f32> = u_xlat19;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.z, x_3210.w);
            let x_3213 : f32 = u_xlat9.z;
            txVec50 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec50;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat79 = x_3222;
            let x_3224 : f32 = u_xlat22.w;
            let x_3225 : f32 = u_xlat79;
            let x_3227 : f32 = u_xlat78;
            u_xlat78 = ((x_3224 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat20;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
            let x_3233 : f32 = u_xlat9.z;
            txVec51 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec51;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat79 = x_3242;
            let x_3244 : f32 = u_xlat23.x;
            let x_3245 : f32 = u_xlat79;
            let x_3247 : f32 = u_xlat78;
            u_xlat78 = ((x_3244 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat20;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.z, x_3250.w);
            let x_3253 : f32 = u_xlat9.z;
            txVec52 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec52;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat79 = x_3262;
            let x_3264 : f32 = u_xlat23.y;
            let x_3265 : f32 = u_xlat79;
            let x_3267 : f32 = u_xlat78;
            u_xlat78 = ((x_3264 * x_3265) + x_3267);
            let x_3270 : vec2<f32> = u_xlat36;
            let x_3272 : f32 = u_xlat9.z;
            txVec53 = vec3<f32>(x_3270.x, x_3270.y, x_3272);
            let x_3279 : vec3<f32> = txVec53;
            let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
            u_xlat79 = x_3281;
            let x_3283 : f32 = u_xlat23.z;
            let x_3284 : f32 = u_xlat79;
            let x_3286 : f32 = u_xlat78;
            u_xlat78 = ((x_3283 * x_3284) + x_3286);
            let x_3289 : vec2<f32> = u_xlat66;
            let x_3291 : f32 = u_xlat9.z;
            txVec54 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec54;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat79 = x_3300;
            let x_3302 : f32 = u_xlat23.w;
            let x_3303 : f32 = u_xlat79;
            let x_3305 : f32 = u_xlat78;
            u_xlat78 = ((x_3302 * x_3303) + x_3305);
            let x_3308 : vec4<f32> = u_xlat15;
            let x_3309 : vec2<f32> = vec2<f32>(x_3308.x, x_3308.y);
            let x_3311 : f32 = u_xlat9.z;
            txVec55 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3318 : vec3<f32> = txVec55;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat79 = x_3320;
            let x_3322 : f32 = u_xlat11.x;
            let x_3323 : f32 = u_xlat79;
            let x_3325 : f32 = u_xlat78;
            u_xlat78 = ((x_3322 * x_3323) + x_3325);
            let x_3328 : vec4<f32> = u_xlat15;
            let x_3329 : vec2<f32> = vec2<f32>(x_3328.z, x_3328.w);
            let x_3331 : f32 = u_xlat9.z;
            txVec56 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec56;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat79 = x_3340;
            let x_3342 : f32 = u_xlat11.y;
            let x_3343 : f32 = u_xlat79;
            let x_3345 : f32 = u_xlat78;
            u_xlat78 = ((x_3342 * x_3343) + x_3345);
            let x_3348 : vec2<f32> = u_xlat61;
            let x_3350 : f32 = u_xlat9.z;
            txVec57 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec57;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat79 = x_3359;
            let x_3361 : f32 = u_xlat11.z;
            let x_3362 : f32 = u_xlat79;
            let x_3364 : f32 = u_xlat78;
            u_xlat78 = ((x_3361 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat10;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.x, x_3367.y);
            let x_3370 : f32 = u_xlat9.z;
            txVec58 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec58;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat79 = x_3379;
            let x_3381 : f32 = u_xlat11.w;
            let x_3382 : f32 = u_xlat79;
            let x_3384 : f32 = u_xlat78;
            u_xlat54 = ((x_3381 * x_3382) + x_3384);
          }
        }
      } else {
        let x_3388 : vec4<f32> = u_xlat9;
        let x_3389 : vec2<f32> = vec2<f32>(x_3388.x, x_3388.y);
        let x_3391 : f32 = u_xlat9.z;
        txVec59 = vec3<f32>(x_3389.x, x_3389.y, x_3391);
        let x_3398 : vec3<f32> = txVec59;
        let x_3400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3398.xy, x_3398.z);
        u_xlat54 = x_3400;
      }
      let x_3401 : i32 = u_xlati76;
      let x_3403 : f32 = x_393.x_AdditionalShadowParams[x_3401].x;
      u_xlat78 = (1.0f + -(x_3403));
      let x_3406 : f32 = u_xlat54;
      let x_3407 : i32 = u_xlati76;
      let x_3409 : f32 = x_393.x_AdditionalShadowParams[x_3407].x;
      let x_3411 : f32 = u_xlat78;
      u_xlat54 = ((x_3406 * x_3409) + x_3411);
      let x_3414 : f32 = u_xlat9.z;
      u_xlatb78 = (0.0f >= x_3414);
      let x_3418 : f32 = u_xlat9.z;
      u_xlatb79 = (x_3418 >= 1.0f);
      let x_3420 : bool = u_xlatb78;
      let x_3421 : bool = u_xlatb79;
      u_xlatb78 = (x_3420 | x_3421);
      let x_3423 : bool = u_xlatb78;
      let x_3424 : f32 = u_xlat54;
      u_xlat54 = select(x_3424, 1.0f, x_3423);
    } else {
      u_xlat54 = 1.0f;
    }
    let x_3427 : f32 = u_xlat54;
    u_xlat78 = (-(x_3427) + 1.0f);
    let x_3431 : f32 = u_xlat1.x;
    let x_3432 : f32 = u_xlat78;
    let x_3434 : f32 = u_xlat54;
    u_xlat54 = ((x_3431 * x_3432) + x_3434);
    let x_3437 : i32 = u_xlati76;
    u_xlati78 = (1i << bitcast<u32>((x_3437 & 31i)));
    let x_3441 : i32 = u_xlati78;
    let x_3444 : f32 = x_1700.x_AdditionalLightsCookieEnableBits;
    u_xlati78 = bitcast<i32>((bitcast<u32>(x_3441) & bitcast<u32>(x_3444)));
    let x_3448 : i32 = u_xlati78;
    if ((x_3448 != 0i)) {
      let x_3452 : i32 = u_xlati76;
      let x_3454 : f32 = x_1700.x_AdditionalLightsLightTypes[x_3452].el;
      u_xlati78 = i32(x_3454);
      let x_3457 : i32 = u_xlati78;
      u_xlati79 = select(1i, 0i, (x_3457 != 0i));
      let x_3461 : i32 = u_xlati76;
      u_xlati80 = (x_3461 << bitcast<u32>(2i));
      let x_3463 : i32 = u_xlati79;
      if ((x_3463 != 0i)) {
        let x_3467 : vec3<f32> = vs_TEXCOORD1;
        let x_3469 : i32 = u_xlati80;
        let x_3472 : i32 = u_xlati80;
        let x_3476 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3469 + 1i) / 4i)][((x_3472 + 1i) % 4i)];
        let x_3478 : vec3<f32> = (vec3<f32>(x_3467.y, x_3467.y, x_3467.y) * vec3<f32>(x_3476.x, x_3476.y, x_3476.w));
        let x_3479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
        let x_3481 : i32 = u_xlati80;
        let x_3483 : i32 = u_xlati80;
        let x_3486 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3481 / 4i)][(x_3483 % 4i)];
        let x_3488 : vec3<f32> = vs_TEXCOORD1;
        let x_3491 : vec4<f32> = u_xlat9;
        let x_3493 : vec3<f32> = ((vec3<f32>(x_3486.x, x_3486.y, x_3486.w) * vec3<f32>(x_3488.x, x_3488.x, x_3488.x)) + vec3<f32>(x_3491.x, x_3491.y, x_3491.z));
        let x_3494 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3493.x, x_3493.y, x_3493.z, x_3494.w);
        let x_3496 : i32 = u_xlati80;
        let x_3499 : i32 = u_xlati80;
        let x_3503 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3496 + 2i) / 4i)][((x_3499 + 2i) % 4i)];
        let x_3505 : vec3<f32> = vs_TEXCOORD1;
        let x_3508 : vec4<f32> = u_xlat9;
        let x_3510 : vec3<f32> = ((vec3<f32>(x_3503.x, x_3503.y, x_3503.w) * vec3<f32>(x_3505.z, x_3505.z, x_3505.z)) + vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
        let x_3511 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
        let x_3513 : vec4<f32> = u_xlat9;
        let x_3515 : i32 = u_xlati80;
        let x_3518 : i32 = u_xlati80;
        let x_3522 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3515 + 3i) / 4i)][((x_3518 + 3i) % 4i)];
        let x_3524 : vec3<f32> = (vec3<f32>(x_3513.x, x_3513.y, x_3513.z) + vec3<f32>(x_3522.x, x_3522.y, x_3522.w));
        let x_3525 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3524.x, x_3524.y, x_3524.z, x_3525.w);
        let x_3527 : vec4<f32> = u_xlat9;
        let x_3529 : vec4<f32> = u_xlat9;
        let x_3531 : vec2<f32> = (vec2<f32>(x_3527.x, x_3527.y) / vec2<f32>(x_3529.z, x_3529.z));
        let x_3532 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
        let x_3534 : vec4<f32> = u_xlat9;
        let x_3537 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3538 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3537.x, x_3537.y, x_3538.z, x_3538.w);
        let x_3540 : vec4<f32> = u_xlat9;
        let x_3544 : vec2<f32> = clamp(vec2<f32>(x_3540.x, x_3540.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3545 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3544.x, x_3544.y, x_3545.z, x_3545.w);
        let x_3547 : i32 = u_xlati76;
        let x_3549 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3547];
        let x_3551 : vec4<f32> = u_xlat9;
        let x_3554 : i32 = u_xlati76;
        let x_3556 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3554];
        let x_3558 : vec2<f32> = ((vec2<f32>(x_3549.x, x_3549.y) * vec2<f32>(x_3551.x, x_3551.y)) + vec2<f32>(x_3556.z, x_3556.w));
        let x_3559 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3558.x, x_3558.y, x_3559.z, x_3559.w);
      } else {
        let x_3562 : i32 = u_xlati78;
        u_xlatb78 = (x_3562 == 1i);
        let x_3564 : bool = u_xlatb78;
        u_xlati78 = select(0i, 1i, x_3564);
        let x_3566 : i32 = u_xlati78;
        if ((x_3566 != 0i)) {
          let x_3571 : vec3<f32> = vs_TEXCOORD1;
          let x_3573 : i32 = u_xlati80;
          let x_3576 : i32 = u_xlati80;
          let x_3580 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3573 + 1i) / 4i)][((x_3576 + 1i) % 4i)];
          u_xlat57 = (vec2<f32>(x_3571.y, x_3571.y) * vec2<f32>(x_3580.x, x_3580.y));
          let x_3583 : i32 = u_xlati80;
          let x_3585 : i32 = u_xlati80;
          let x_3588 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3583 / 4i)][(x_3585 % 4i)];
          let x_3590 : vec3<f32> = vs_TEXCOORD1;
          let x_3593 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3588.x, x_3588.y) * vec2<f32>(x_3590.x, x_3590.x)) + x_3593);
          let x_3595 : i32 = u_xlati80;
          let x_3598 : i32 = u_xlati80;
          let x_3602 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3595 + 2i) / 4i)][((x_3598 + 2i) % 4i)];
          let x_3604 : vec3<f32> = vs_TEXCOORD1;
          let x_3607 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3602.x, x_3602.y) * vec2<f32>(x_3604.z, x_3604.z)) + x_3607);
          let x_3609 : vec2<f32> = u_xlat57;
          let x_3610 : i32 = u_xlati80;
          let x_3613 : i32 = u_xlati80;
          let x_3617 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3610 + 3i) / 4i)][((x_3613 + 3i) % 4i)];
          u_xlat57 = (x_3609 + vec2<f32>(x_3617.x, x_3617.y));
          let x_3620 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3620 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3623 : vec2<f32> = u_xlat57;
          u_xlat57 = fract(x_3623);
          let x_3625 : i32 = u_xlati76;
          let x_3627 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3625];
          let x_3629 : vec2<f32> = u_xlat57;
          let x_3631 : i32 = u_xlati76;
          let x_3633 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3631];
          let x_3635 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.y) * x_3629) + vec2<f32>(x_3633.z, x_3633.w));
          let x_3636 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3635.x, x_3635.y, x_3636.z, x_3636.w);
        } else {
          let x_3639 : vec3<f32> = vs_TEXCOORD1;
          let x_3641 : i32 = u_xlati80;
          let x_3644 : i32 = u_xlati80;
          let x_3648 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3641 + 1i) / 4i)][((x_3644 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3639.y, x_3639.y, x_3639.y, x_3639.y) * x_3648);
          let x_3650 : i32 = u_xlati80;
          let x_3652 : i32 = u_xlati80;
          let x_3655 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3650 / 4i)][(x_3652 % 4i)];
          let x_3656 : vec3<f32> = vs_TEXCOORD1;
          let x_3659 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3655 * vec4<f32>(x_3656.x, x_3656.x, x_3656.x, x_3656.x)) + x_3659);
          let x_3661 : i32 = u_xlati80;
          let x_3664 : i32 = u_xlati80;
          let x_3668 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3661 + 2i) / 4i)][((x_3664 + 2i) % 4i)];
          let x_3669 : vec3<f32> = vs_TEXCOORD1;
          let x_3672 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3668 * vec4<f32>(x_3669.z, x_3669.z, x_3669.z, x_3669.z)) + x_3672);
          let x_3674 : vec4<f32> = u_xlat10;
          let x_3675 : i32 = u_xlati80;
          let x_3678 : i32 = u_xlati80;
          let x_3682 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3675 + 3i) / 4i)][((x_3678 + 3i) % 4i)];
          u_xlat10 = (x_3674 + x_3682);
          let x_3684 : vec4<f32> = u_xlat10;
          let x_3686 : vec4<f32> = u_xlat10;
          let x_3688 : vec3<f32> = (vec3<f32>(x_3684.x, x_3684.y, x_3684.z) / vec3<f32>(x_3686.w, x_3686.w, x_3686.w));
          let x_3689 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3688.x, x_3688.y, x_3688.z, x_3689.w);
          let x_3691 : vec4<f32> = u_xlat10;
          let x_3693 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(vec3<f32>(x_3691.x, x_3691.y, x_3691.z), vec3<f32>(x_3693.x, x_3693.y, x_3693.z));
          let x_3696 : f32 = u_xlat78;
          u_xlat78 = inverseSqrt(x_3696);
          let x_3698 : f32 = u_xlat78;
          let x_3700 : vec4<f32> = u_xlat10;
          let x_3702 : vec3<f32> = (vec3<f32>(x_3698, x_3698, x_3698) * vec3<f32>(x_3700.x, x_3700.y, x_3700.z));
          let x_3703 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
          let x_3705 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(abs(vec3<f32>(x_3705.x, x_3705.y, x_3705.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3710 : f32 = u_xlat78;
          u_xlat78 = max(x_3710, 0.00000099999999747524f);
          let x_3713 : f32 = u_xlat78;
          u_xlat78 = (1.0f / x_3713);
          let x_3715 : f32 = u_xlat78;
          let x_3717 : vec4<f32> = u_xlat10;
          let x_3719 : vec3<f32> = (vec3<f32>(x_3715, x_3715, x_3715) * vec3<f32>(x_3717.z, x_3717.x, x_3717.y));
          let x_3720 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3719.x, x_3719.y, x_3719.z, x_3720.w);
          let x_3723 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_3723);
          let x_3727 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_3727, 0.0f, 1.0f);
          let x_3731 : vec4<f32> = u_xlat11;
          let x_3733 : vec4<bool> = (vec4<f32>(x_3731.y, x_3731.z, x_3731.y, x_3731.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb57 = vec2<bool>(x_3733.x, x_3733.y);
          let x_3736 : bool = u_xlatb57.x;
          if (x_3736) {
            let x_3741 : f32 = u_xlat11.x;
            x_3737 = x_3741;
          } else {
            let x_3744 : f32 = u_xlat11.x;
            x_3737 = -(x_3744);
          }
          let x_3746 : f32 = x_3737;
          u_xlat57.x = x_3746;
          let x_3749 : bool = u_xlatb57.y;
          if (x_3749) {
            let x_3754 : f32 = u_xlat11.x;
            x_3750 = x_3754;
          } else {
            let x_3757 : f32 = u_xlat11.x;
            x_3750 = -(x_3757);
          }
          let x_3759 : f32 = x_3750;
          u_xlat57.y = x_3759;
          let x_3761 : vec4<f32> = u_xlat10;
          let x_3763 : f32 = u_xlat78;
          let x_3766 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3761.x, x_3761.y) * vec2<f32>(x_3763, x_3763)) + x_3766);
          let x_3768 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3768 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3771 : vec2<f32> = u_xlat57;
          u_xlat57 = clamp(x_3771, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3775 : i32 = u_xlati76;
          let x_3777 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3775];
          let x_3779 : vec2<f32> = u_xlat57;
          let x_3781 : i32 = u_xlati76;
          let x_3783 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3781];
          let x_3785 : vec2<f32> = ((vec2<f32>(x_3777.x, x_3777.y) * x_3779) + vec2<f32>(x_3783.z, x_3783.w));
          let x_3786 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3785.x, x_3785.y, x_3786.z, x_3786.w);
        }
      }
      let x_3793 : vec4<f32> = u_xlat9;
      let x_3795 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3793.x, x_3793.y), 0.0f);
      u_xlat9 = x_3795;
      let x_3797 : bool = u_xlatb6.y;
      if (x_3797) {
        let x_3802 : f32 = u_xlat9.w;
        x_3798 = x_3802;
      } else {
        let x_3805 : f32 = u_xlat9.x;
        x_3798 = x_3805;
      }
      let x_3806 : f32 = x_3798;
      u_xlat78 = x_3806;
      let x_3808 : bool = u_xlatb6.x;
      if (x_3808) {
        let x_3812 : vec4<f32> = u_xlat9;
        x_3809 = vec3<f32>(x_3812.x, x_3812.y, x_3812.z);
      } else {
        let x_3815 : f32 = u_xlat78;
        x_3809 = vec3<f32>(x_3815, x_3815, x_3815);
      }
      let x_3817 : vec3<f32> = x_3809;
      let x_3818 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_3817.x, x_3817.y, x_3817.z, x_3818.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_3824 : vec4<f32> = u_xlat9;
    let x_3826 : i32 = u_xlati76;
    let x_3828 : vec4<f32> = x_2012.x_AdditionalLightsColor[x_3826];
    let x_3830 : vec3<f32> = (vec3<f32>(x_3824.x, x_3824.y, x_3824.z) * vec3<f32>(x_3828.x, x_3828.y, x_3828.z));
    let x_3831 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3830.x, x_3830.y, x_3830.z, x_3831.w);
    let x_3833 : f32 = u_xlat77;
    let x_3834 : f32 = u_xlat54;
    u_xlat76 = (x_3833 * x_3834);
    let x_3836 : f32 = u_xlat76;
    let x_3838 : vec4<f32> = u_xlat9;
    let x_3840 : vec3<f32> = (vec3<f32>(x_3836, x_3836, x_3836) * vec3<f32>(x_3838.x, x_3838.y, x_3838.z));
    let x_3841 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
    let x_3843 : vec3<f32> = u_xlat2;
    let x_3844 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_3843, vec3<f32>(x_3844.x, x_3844.y, x_3844.z));
    let x_3847 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3847, 0.0f, 1.0f);
    let x_3849 : f32 = u_xlat76;
    let x_3851 : vec4<f32> = u_xlat9;
    let x_3853 : vec3<f32> = (vec3<f32>(x_3849, x_3849, x_3849) * vec3<f32>(x_3851.x, x_3851.y, x_3851.z));
    let x_3854 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3853.x, x_3853.y, x_3853.z, x_3854.w);
    let x_3856 : vec3<f32> = u_xlat3;
    let x_3857 : vec3<f32> = u_xlat24;
    let x_3860 : vec4<f32> = u_xlat8;
    let x_3862 : vec3<f32> = ((x_3856 * vec3<f32>(x_3857.x, x_3857.x, x_3857.x)) + vec3<f32>(x_3860.x, x_3860.y, x_3860.z));
    let x_3863 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3862.x, x_3862.y, x_3862.z, x_3863.w);
    let x_3865 : vec4<f32> = u_xlat8;
    let x_3867 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_3865.x, x_3865.y, x_3865.z), vec3<f32>(x_3867.x, x_3867.y, x_3867.z));
    let x_3870 : f32 = u_xlat76;
    u_xlat76 = max(x_3870, 1.17549435e-38f);
    let x_3872 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3872);
    let x_3874 : f32 = u_xlat76;
    let x_3876 : vec4<f32> = u_xlat8;
    let x_3878 : vec3<f32> = (vec3<f32>(x_3874, x_3874, x_3874) * vec3<f32>(x_3876.x, x_3876.y, x_3876.z));
    let x_3879 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3878.x, x_3878.y, x_3878.z, x_3879.w);
    let x_3881 : vec3<f32> = u_xlat2;
    let x_3882 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_3881, vec3<f32>(x_3882.x, x_3882.y, x_3882.z));
    let x_3885 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3885, 0.0f, 1.0f);
    let x_3887 : f32 = u_xlat76;
    u_xlat76 = log2(x_3887);
    let x_3889 : f32 = u_xlat72;
    let x_3890 : f32 = u_xlat76;
    u_xlat76 = (x_3889 * x_3890);
    let x_3892 : f32 = u_xlat76;
    u_xlat76 = exp2(x_3892);
    let x_3894 : f32 = u_xlat76;
    let x_3897 : vec4<f32> = x_57.x_SpecColor;
    let x_3899 : vec3<f32> = (vec3<f32>(x_3894, x_3894, x_3894) * vec3<f32>(x_3897.x, x_3897.y, x_3897.z));
    let x_3900 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3899.x, x_3899.y, x_3899.z, x_3900.w);
    let x_3902 : vec4<f32> = u_xlat8;
    let x_3904 : vec4<f32> = u_xlat9;
    let x_3906 : vec3<f32> = (vec3<f32>(x_3902.x, x_3902.y, x_3902.z) * vec3<f32>(x_3904.x, x_3904.y, x_3904.z));
    let x_3907 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3906.x, x_3906.y, x_3906.z, x_3907.w);
    let x_3909 : vec4<f32> = u_xlat10;
    let x_3911 : vec4<f32> = u_xlat1;
    let x_3914 : vec4<f32> = u_xlat8;
    let x_3916 : vec3<f32> = ((vec3<f32>(x_3909.x, x_3909.y, x_3909.z) * vec3<f32>(x_3911.y, x_3911.z, x_3911.w)) + vec3<f32>(x_3914.x, x_3914.y, x_3914.z));
    let x_3917 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3916.x, x_3916.y, x_3916.z, x_3917.w);
    let x_3919 : vec4<f32> = u_xlat7;
    let x_3921 : vec4<f32> = u_xlat8;
    let x_3923 : vec3<f32> = (vec3<f32>(x_3919.x, x_3919.y, x_3919.z) + vec3<f32>(x_3921.x, x_3921.y, x_3921.z));
    let x_3924 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3923.x, x_3923.y, x_3923.z, x_3924.w);

    continuing {
      let x_3926 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3926 + bitcast<u32>(1i));
    }
  }
  let x_3928 : vec4<f32> = u_xlat4;
  let x_3930 : vec4<f32> = u_xlat1;
  let x_3933 : vec4<f32> = u_xlat5;
  let x_3935 : vec3<f32> = ((vec3<f32>(x_3928.x, x_3928.y, x_3928.z) * vec3<f32>(x_3930.y, x_3930.z, x_3930.w)) + vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
  let x_3936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
  let x_3940 : vec4<f32> = u_xlat7;
  let x_3942 : vec4<f32> = u_xlat1;
  let x_3944 : vec3<f32> = (vec3<f32>(x_3940.x, x_3940.y, x_3940.z) + vec3<f32>(x_3942.x, x_3942.y, x_3942.z));
  let x_3945 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
  let x_3948 : f32 = x_57.x_Surface;
  u_xlatb24 = (x_3948 == 1.0f);
  let x_3950 : bool = u_xlatb24;
  let x_3951 : bool = u_xlatb48;
  u_xlatb24 = (x_3950 | x_3951);
  let x_3953 : bool = u_xlatb24;
  if (x_3953) {
    let x_3958 : f32 = u_xlat0.x;
    x_3954 = x_3958;
  } else {
    x_3954 = 1.0f;
  }
  let x_3960 : f32 = x_3954;
  SV_Target0.w = x_3960;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


