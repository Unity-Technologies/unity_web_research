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

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlatb24 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb72 : bool;

@group(1) @binding(4) var<uniform> x_319 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_1627 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1751 : UnityPerDraw;

var<private> u_xlatu74 : u32;

var<private> u_xlatu76 : u32;

var<private> u_xlati77 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

@group(1) @binding(1) var<uniform> x_1944 : AdditionalLights;

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

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatb76 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
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
  var x_1713 : f32;
  var x_1724 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2083 : f32;
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
  var x_3669 : f32;
  var x_3682 : f32;
  var x_3730 : f32;
  var x_3741 : vec3<f32>;
  var x_3886 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_41.x_BaseColor.w;
  let x_78 : f32 = x_41.x_Cutoff;
  u_xlat24.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat48 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat72 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat72;
  let x_92 : f32 = u_xlat48;
  u_xlat48 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat48;
  u_xlat48 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat24.x;
  let x_100 : f32 = u_xlat48;
  u_xlat24.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat24.x;
  u_xlat24.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb48 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb48;
  if (x_117) {
    let x_122 : f32 = u_xlat24.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat24.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat24.x;
  u_xlatb24 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb24;
  if (((select(0i, 1i, x_137) * -1i) != 0i)) {
    discard;
  }
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  let x_153 : f32 = x_27.x_GlobalMipBias.x;
  let x_154 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_151, x_153);
  u_xlat2 = vec3<f32>(x_154.x, x_154.y, x_154.w);
  let x_157 : f32 = u_xlat2.x;
  let x_160 : f32 = u_xlat2.z;
  u_xlat2.x = (x_157 * x_160);
  let x_163 : vec3<f32> = u_xlat2;
  let x_170 : vec2<f32> = ((vec2<f32>(x_163.x, x_163.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_171 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_170.x, x_171.y, x_170.y);
  let x_173 : vec3<f32> = u_xlat24;
  let x_175 : vec3<f32> = u_xlat24;
  u_xlat1.x = dot(vec2<f32>(x_173.x, x_173.z), vec2<f32>(x_175.x, x_175.z));
  let x_180 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_180, 1.0f);
  let x_184 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_184) + 1.0f);
  let x_189 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_189);
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_193, 0.0000000000000001f);
  let x_197 : vec3<f32> = u_xlat24;
  let x_201 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_197.z, x_197.z, x_197.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec3<f32> = u_xlat24;
  let x_207 : vec4<f32> = vs_TEXCOORD3;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_204.x, x_204.x, x_204.x) * vec3<f32>(x_207.x, x_207.y, x_207.z)) + x_210);
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = vs_TEXCOORD2;
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + x_218);
  let x_220 : vec3<f32> = u_xlat2;
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat24.x = dot(x_220, x_221);
  let x_225 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_225);
  let x_228 : vec3<f32> = u_xlat24;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_228.x, x_228.x, x_228.x) * x_230);
  let x_235 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_235;
  let x_238 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_238;
  let x_242 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_242;
  let x_244 : vec3<f32> = u_xlat3;
  let x_245 : vec3<f32> = u_xlat3;
  u_xlat24.x = dot(x_244, x_245);
  let x_249 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_249, 0.00006103515625f);
  let x_254 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_254);
  let x_264 : vec2<f32> = vs_TEXCOORD7;
  let x_266 : f32 = x_27.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_264, x_266);
  u_xlat4 = x_267;
  let x_273 : vec2<f32> = vs_TEXCOORD7;
  let x_275 : f32 = x_27.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_273, x_275);
  let x_277 : vec3<f32> = vec3<f32>(x_276.x, x_276.y, x_276.z);
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat4;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec3<f32> = u_xlat2;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(x_287, vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat72;
  u_xlat72 = (x_291 + 0.5f);
  let x_293 : f32 = u_xlat72;
  let x_295 : vec4<f32> = u_xlat5;
  let x_297 : vec3<f32> = (vec3<f32>(x_293, x_293, x_293) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : f32 = u_xlat4.w;
  u_xlat72 = max(x_301, 0.00009999999747378752f);
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : f32 = u_xlat72;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) / vec3<f32>(x_305, x_305, x_305));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_322 : f32 = x_319.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_322);
  let x_324 : bool = u_xlatb72;
  if (x_324) {
    let x_328 : f32 = x_319.x_MainLightShadowParams.y;
    u_xlatb72 = (x_328 == 1.0f);
    let x_330 : bool = u_xlatb72;
    if (x_330) {
      let x_334 : vec4<f32> = vs_TEXCOORD6;
      let x_338 : vec4<f32> = x_319.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_334.x, x_334.y, x_334.x, x_334.y) + x_338);
      let x_342 : vec4<f32> = u_xlat5;
      let x_343 : vec2<f32> = vec2<f32>(x_342.x, x_342.y);
      let x_345 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_343.x, x_343.y, x_345);
      let x_358 : vec3<f32> = txVec0;
      let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_358.xy, x_358.z);
      u_xlat6.x = x_360;
      let x_363 : vec4<f32> = u_xlat5;
      let x_364 : vec2<f32> = vec2<f32>(x_363.z, x_363.w);
      let x_366 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_364.x, x_364.y, x_366);
      let x_373 : vec3<f32> = txVec1;
      let x_375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_373.xy, x_373.z);
      u_xlat6.y = x_375;
      let x_377 : vec4<f32> = vs_TEXCOORD6;
      let x_381 : vec4<f32> = x_319.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_377.x, x_377.y, x_377.x, x_377.y) + x_381);
      let x_384 : vec4<f32> = u_xlat5;
      let x_385 : vec2<f32> = vec2<f32>(x_384.x, x_384.y);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec2;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_394.xy, x_394.z);
      u_xlat6.z = x_396;
      let x_399 : vec4<f32> = u_xlat5;
      let x_400 : vec2<f32> = vec2<f32>(x_399.z, x_399.w);
      let x_402 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_400.x, x_400.y, x_402);
      let x_409 : vec3<f32> = txVec3;
      let x_411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_409.xy, x_409.z);
      u_xlat6.w = x_411;
      let x_413 : vec4<f32> = u_xlat6;
      u_xlat72 = dot(x_413, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_420 : f32 = x_319.x_MainLightShadowParams.y;
      u_xlatb1 = (x_420 == 2.0f);
      let x_422 : bool = u_xlatb1;
      if (x_422) {
        let x_425 : vec4<f32> = vs_TEXCOORD6;
        let x_429 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_433 : vec2<f32> = ((vec2<f32>(x_425.x, x_425.y) * vec2<f32>(x_429.z, x_429.w)) + vec2<f32>(0.5f, 0.5f));
        let x_434 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_436 : vec4<f32> = u_xlat5;
        let x_438 : vec2<f32> = floor(vec2<f32>(x_436.x, x_436.y));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_443 : vec4<f32> = vs_TEXCOORD6;
        let x_446 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_449 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_446.z, x_446.w)) + -(vec2<f32>(x_449.x, x_449.y)));
        let x_453 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_453.x, x_453.x, x_453.y, x_453.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_458 : vec4<f32> = u_xlat6;
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_458.x, x_458.x, x_458.z, x_458.z) * vec4<f32>(x_460.x, x_460.x, x_460.z, x_460.z));
        let x_463 : vec4<f32> = u_xlat7;
        let x_467 : vec2<f32> = (vec2<f32>(x_463.y, x_463.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_468 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_467.x, x_468.y, x_467.y, x_468.w);
        let x_470 : vec4<f32> = u_xlat7;
        let x_473 : vec2<f32> = u_xlat53;
        let x_475 : vec2<f32> = ((vec2<f32>(x_470.x, x_470.z) * vec2<f32>(0.5f, 0.5f)) + -(x_473));
        let x_476 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_479 : vec2<f32> = u_xlat53;
        u_xlat55 = (-(x_479) + vec2<f32>(1.0f, 1.0f));
        let x_484 : vec2<f32> = u_xlat53;
        let x_486 : vec2<f32> = min(x_484, vec2<f32>(0.0f, 0.0f));
        let x_487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat8;
        let x_492 : vec4<f32> = u_xlat8;
        let x_495 : vec2<f32> = u_xlat55;
        let x_496 : vec2<f32> = ((-(vec2<f32>(x_489.x, x_489.y)) * vec2<f32>(x_492.x, x_492.y)) + x_495);
        let x_497 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_499 : vec2<f32> = u_xlat53;
        u_xlat53 = max(x_499, vec2<f32>(0.0f, 0.0f));
        let x_501 : vec2<f32> = u_xlat53;
        let x_503 : vec2<f32> = u_xlat53;
        let x_505 : vec4<f32> = u_xlat6;
        u_xlat53 = ((-(x_501) * x_503) + vec2<f32>(x_505.y, x_505.w));
        let x_508 : vec4<f32> = u_xlat8;
        let x_510 : vec2<f32> = (vec2<f32>(x_508.x, x_508.y) + vec2<f32>(1.0f, 1.0f));
        let x_511 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_513 : vec2<f32> = u_xlat53;
        u_xlat53 = (x_513 + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat7;
        let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_521 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
        let x_523 : vec2<f32> = u_xlat55;
        let x_524 : vec2<f32> = (x_523 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat8;
        let x_529 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_533 : vec2<f32> = u_xlat53;
        let x_534 : vec2<f32> = (x_533 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_537 : vec4<f32> = u_xlat6;
        u_xlat53 = (vec2<f32>(x_537.y, x_537.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_541 : f32 = u_xlat8.x;
        u_xlat9.z = x_541;
        let x_544 : f32 = u_xlat53.x;
        u_xlat9.w = x_544;
        let x_547 : f32 = u_xlat10.x;
        u_xlat7.z = x_547;
        let x_550 : f32 = u_xlat6.x;
        u_xlat7.w = x_550;
        let x_553 : vec4<f32> = u_xlat7;
        let x_555 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_553.z, x_553.w, x_553.x, x_553.z) + vec4<f32>(x_555.z, x_555.w, x_555.x, x_555.z));
        let x_559 : f32 = u_xlat9.y;
        u_xlat8.z = x_559;
        let x_562 : f32 = u_xlat53.y;
        u_xlat8.w = x_562;
        let x_565 : f32 = u_xlat7.y;
        u_xlat10.z = x_565;
        let x_568 : f32 = u_xlat6.z;
        u_xlat10.w = x_568;
        let x_570 : vec4<f32> = u_xlat8;
        let x_572 : vec4<f32> = u_xlat10;
        let x_574 : vec3<f32> = (vec3<f32>(x_570.z, x_570.y, x_570.w) + vec3<f32>(x_572.z, x_572.y, x_572.w));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat11;
        let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.z, x_577.w) / vec3<f32>(x_579.z, x_579.w, x_579.y));
        let x_582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat7;
        let x_589 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat10;
        let x_594 : vec4<f32> = u_xlat6;
        let x_596 : vec3<f32> = (vec3<f32>(x_592.z, x_592.y, x_592.w) / vec3<f32>(x_594.x, x_594.y, x_594.z));
        let x_597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat8;
        let x_601 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_609 : vec3<f32> = (vec3<f32>(x_604.y, x_604.x, x_604.z) * vec3<f32>(x_607.x, x_607.x, x_607.x));
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat8;
        let x_615 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_617 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_615.y, x_615.y, x_615.y));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_621 : f32 = u_xlat8.x;
        u_xlat7.w = x_621;
        let x_623 : vec4<f32> = u_xlat5;
        let x_626 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y) * vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y)) + vec4<f32>(x_629.y, x_629.w, x_629.x, x_629.w));
        let x_632 : vec4<f32> = u_xlat5;
        let x_635 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_632.x, x_632.y) * vec2<f32>(x_635.x, x_635.y)) + vec2<f32>(x_638.z, x_638.w));
        let x_642 : f32 = u_xlat7.y;
        u_xlat8.w = x_642;
        let x_644 : vec4<f32> = u_xlat8;
        let x_645 : vec2<f32> = vec2<f32>(x_644.y, x_644.z);
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_646.x, x_645.x, x_646.z, x_645.y);
        let x_648 : vec4<f32> = u_xlat5;
        let x_651 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_648.x, x_648.y, x_648.x, x_648.y) * vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y)) + vec4<f32>(x_654.x, x_654.y, x_654.z, x_654.y));
        let x_657 : vec4<f32> = u_xlat5;
        let x_660 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_663 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y) * vec4<f32>(x_660.x, x_660.y, x_660.x, x_660.y)) + vec4<f32>(x_663.w, x_663.y, x_663.w, x_663.z));
        let x_666 : vec4<f32> = u_xlat5;
        let x_669 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) * vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y)) + vec4<f32>(x_672.x, x_672.w, x_672.z, x_672.w));
        let x_676 : vec4<f32> = u_xlat6;
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_676.x, x_676.x, x_676.x, x_676.y) * vec4<f32>(x_678.z, x_678.w, x_678.y, x_678.z));
        let x_682 : vec4<f32> = u_xlat6;
        let x_684 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_682.y, x_682.y, x_682.z, x_682.z) * x_684);
        let x_687 : f32 = u_xlat6.z;
        let x_689 : f32 = u_xlat11.y;
        u_xlat1.x = (x_687 * x_689);
        let x_693 : vec4<f32> = u_xlat9;
        let x_694 : vec2<f32> = vec2<f32>(x_693.x, x_693.y);
        let x_696 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_704 : vec3<f32> = txVec4;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_704.xy, x_704.z);
        u_xlat74 = x_706;
        let x_708 : vec4<f32> = u_xlat9;
        let x_709 : vec2<f32> = vec2<f32>(x_708.z, x_708.w);
        let x_711 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_709.x, x_709.y, x_711);
        let x_719 : vec3<f32> = txVec5;
        let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_719.xy, x_719.z);
        u_xlat75 = x_721;
        let x_722 : f32 = u_xlat75;
        let x_724 : f32 = u_xlat12.y;
        u_xlat75 = (x_722 * x_724);
        let x_727 : f32 = u_xlat12.x;
        let x_728 : f32 = u_xlat74;
        let x_730 : f32 = u_xlat75;
        u_xlat74 = ((x_727 * x_728) + x_730);
        let x_733 : vec2<f32> = u_xlat53;
        let x_735 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_733.x, x_733.y, x_735);
        let x_742 : vec3<f32> = txVec6;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
        u_xlat75 = x_744;
        let x_746 : f32 = u_xlat12.z;
        let x_747 : f32 = u_xlat75;
        let x_749 : f32 = u_xlat74;
        u_xlat74 = ((x_746 * x_747) + x_749);
        let x_752 : vec4<f32> = u_xlat8;
        let x_753 : vec2<f32> = vec2<f32>(x_752.x, x_752.y);
        let x_755 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_753.x, x_753.y, x_755);
        let x_762 : vec3<f32> = txVec7;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
        u_xlat75 = x_764;
        let x_766 : f32 = u_xlat12.w;
        let x_767 : f32 = u_xlat75;
        let x_769 : f32 = u_xlat74;
        u_xlat74 = ((x_766 * x_767) + x_769);
        let x_772 : vec4<f32> = u_xlat10;
        let x_773 : vec2<f32> = vec2<f32>(x_772.x, x_772.y);
        let x_775 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_773.x, x_773.y, x_775);
        let x_782 : vec3<f32> = txVec8;
        let x_784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_782.xy, x_782.z);
        u_xlat75 = x_784;
        let x_786 : f32 = u_xlat13.x;
        let x_787 : f32 = u_xlat75;
        let x_789 : f32 = u_xlat74;
        u_xlat74 = ((x_786 * x_787) + x_789);
        let x_792 : vec4<f32> = u_xlat10;
        let x_793 : vec2<f32> = vec2<f32>(x_792.z, x_792.w);
        let x_795 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec9;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat75 = x_804;
        let x_806 : f32 = u_xlat13.y;
        let x_807 : f32 = u_xlat75;
        let x_809 : f32 = u_xlat74;
        u_xlat74 = ((x_806 * x_807) + x_809);
        let x_812 : vec4<f32> = u_xlat8;
        let x_813 : vec2<f32> = vec2<f32>(x_812.z, x_812.w);
        let x_815 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec10;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat75 = x_824;
        let x_826 : f32 = u_xlat13.z;
        let x_827 : f32 = u_xlat75;
        let x_829 : f32 = u_xlat74;
        u_xlat74 = ((x_826 * x_827) + x_829);
        let x_832 : vec4<f32> = u_xlat7;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec11;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat75 = x_844;
        let x_846 : f32 = u_xlat13.w;
        let x_847 : f32 = u_xlat75;
        let x_849 : f32 = u_xlat74;
        u_xlat74 = ((x_846 * x_847) + x_849);
        let x_852 : vec4<f32> = u_xlat7;
        let x_853 : vec2<f32> = vec2<f32>(x_852.z, x_852.w);
        let x_855 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec12;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
        u_xlat75 = x_864;
        let x_866 : f32 = u_xlat1.x;
        let x_867 : f32 = u_xlat75;
        let x_869 : f32 = u_xlat74;
        u_xlat72 = ((x_866 * x_867) + x_869);
      } else {
        let x_872 : vec4<f32> = vs_TEXCOORD6;
        let x_875 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_878 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + vec2<f32>(0.5f, 0.5f));
        let x_879 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat5;
        let x_883 : vec2<f32> = floor(vec2<f32>(x_881.x, x_881.y));
        let x_884 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_886 : vec4<f32> = vs_TEXCOORD6;
        let x_889 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat5;
        u_xlat53 = ((vec2<f32>(x_886.x, x_886.y) * vec2<f32>(x_889.z, x_889.w)) + -(vec2<f32>(x_892.x, x_892.y)));
        let x_896 : vec2<f32> = u_xlat53;
        u_xlat6 = (vec4<f32>(x_896.x, x_896.x, x_896.y, x_896.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_899 : vec4<f32> = u_xlat6;
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_899.x, x_899.x, x_899.z, x_899.z) * vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z));
        let x_904 : vec4<f32> = u_xlat7;
        let x_908 : vec2<f32> = (vec2<f32>(x_904.y, x_904.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_909.x, x_908.x, x_909.z, x_908.y);
        let x_911 : vec4<f32> = u_xlat7;
        let x_914 : vec2<f32> = u_xlat53;
        let x_916 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.z) * vec2<f32>(0.5f, 0.5f)) + -(x_914));
        let x_917 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_916.x, x_917.y, x_916.y, x_917.w);
        let x_919 : vec2<f32> = u_xlat53;
        let x_921 : vec2<f32> = (-(x_919) + vec2<f32>(1.0f, 1.0f));
        let x_922 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec2<f32> = u_xlat53;
        u_xlat55 = min(x_924, vec2<f32>(0.0f, 0.0f));
        let x_926 : vec2<f32> = u_xlat55;
        let x_928 : vec2<f32> = u_xlat55;
        let x_930 : vec4<f32> = u_xlat7;
        let x_932 : vec2<f32> = ((-(x_926) * x_928) + vec2<f32>(x_930.x, x_930.y));
        let x_933 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec2<f32> = u_xlat53;
        u_xlat55 = max(x_935, vec2<f32>(0.0f, 0.0f));
        let x_938 : vec2<f32> = u_xlat55;
        let x_940 : vec2<f32> = u_xlat55;
        let x_942 : vec4<f32> = u_xlat6;
        let x_944 : vec2<f32> = ((-(x_938) * x_940) + vec2<f32>(x_942.y, x_942.w));
        let x_945 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_944.x, x_945.y, x_944.y);
        let x_947 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) + vec2<f32>(2.0f, 2.0f));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec3<f32> = u_xlat30;
        let x_954 : vec2<f32> = (vec2<f32>(x_952.x, x_952.z) + vec2<f32>(2.0f, 2.0f));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_955.x, x_954.x, x_955.z, x_954.y);
        let x_958 : f32 = u_xlat6.y;
        u_xlat9.z = (x_958 * 0.08163200318813323975f);
        let x_962 : vec4<f32> = u_xlat6;
        let x_965 : vec3<f32> = (vec3<f32>(x_962.z, x_962.x, x_962.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_966 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_971 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_972 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_975 : f32 = u_xlat10.y;
        u_xlat9.x = x_975;
        let x_977 : vec2<f32> = u_xlat53;
        let x_984 : vec2<f32> = ((vec2<f32>(x_977.x, x_977.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec2<f32> = u_xlat53;
        let x_991 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_992.y, x_991.y, x_992.w);
        let x_995 : f32 = u_xlat6.x;
        u_xlat7.y = x_995;
        let x_998 : f32 = u_xlat8.y;
        u_xlat7.w = x_998;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1000 + x_1001);
        let x_1003 : vec2<f32> = u_xlat53;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1006.x, x_1007.z, x_1006.y);
        let x_1009 : vec2<f32> = u_xlat53;
        let x_1012 : vec2<f32> = ((vec2<f32>(x_1009.y, x_1009.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1016 : f32 = u_xlat6.y;
        u_xlat8.y = x_1016;
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1018 + x_1019);
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1021 / x_1022);
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1030 : vec4<f32> = u_xlat8;
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1030 / x_1031);
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1033 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1038 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1035.w, x_1035.x, x_1035.y, x_1035.z) * vec4<f32>(x_1038.x, x_1038.x, x_1038.x, x_1038.x));
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1044 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1041.x, x_1041.w, x_1041.y, x_1041.z) * vec4<f32>(x_1044.y, x_1044.y, x_1044.y, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1048 : vec3<f32> = vec3<f32>(x_1047.y, x_1047.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1048.z);
        let x_1052 : f32 = u_xlat8.x;
        u_xlat10.y = x_1052;
        let x_1054 : vec4<f32> = u_xlat5;
        let x_1057 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat5;
        let x_1066 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat53 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.w, x_1069.y));
        let x_1073 : f32 = u_xlat10.y;
        u_xlat7.y = x_1073;
        let x_1076 : f32 = u_xlat8.z;
        u_xlat10.y = x_1076;
        let x_1078 : vec4<f32> = u_xlat5;
        let x_1081 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y) * vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y)) + vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat5;
        let x_1090 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat10;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.w, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1099 : f32 = u_xlat10.y;
        u_xlat7.z = x_1099;
        let x_1102 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y) * vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y)) + vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.z));
        let x_1112 : f32 = u_xlat8.w;
        u_xlat10.y = x_1112;
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1118 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1125 : vec4<f32> = u_xlat5;
        let x_1128 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat31 = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.w, x_1131.y));
        let x_1135 : f32 = u_xlat10.y;
        u_xlat7.w = x_1135;
        let x_1138 : vec4<f32> = u_xlat5;
        let x_1141 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat61 = ((vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.x, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1148 : vec3<f32> = vec3<f32>(x_1147.x, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1148.z);
        let x_1151 : vec4<f32> = u_xlat5;
        let x_1154 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1161 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.w, x_1167.y));
        let x_1171 : f32 = u_xlat7.x;
        u_xlat8.x = x_1171;
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1176 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.x, x_1179.y));
        let x_1182 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1185.x, x_1185.x, x_1185.x, x_1185.x) * x_1187);
        let x_1190 : vec4<f32> = u_xlat6;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1190.y, x_1190.y, x_1190.y, x_1190.y) * x_1192);
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1195.z, x_1195.z, x_1195.z, x_1195.z) * x_1197);
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1199.w, x_1199.w, x_1199.w, x_1199.w) * x_1201);
        let x_1204 : vec4<f32> = u_xlat11;
        let x_1205 : vec2<f32> = vec2<f32>(x_1204.x, x_1204.y);
        let x_1207 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
        let x_1214 : vec3<f32> = txVec13;
        let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1214.xy, x_1214.z);
        u_xlat1.x = x_1216;
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec14;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat74 = x_1231;
        let x_1232 : f32 = u_xlat74;
        let x_1234 : f32 = u_xlat16.y;
        u_xlat74 = (x_1232 * x_1234);
        let x_1237 : f32 = u_xlat16.x;
        let x_1239 : f32 = u_xlat1.x;
        let x_1241 : f32 = u_xlat74;
        u_xlat1.x = ((x_1237 * x_1239) + x_1241);
        let x_1245 : vec2<f32> = u_xlat53;
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec15;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1254.xy, x_1254.z);
        u_xlat74 = x_1256;
        let x_1258 : f32 = u_xlat16.z;
        let x_1259 : f32 = u_xlat74;
        let x_1262 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1258 * x_1259) + x_1262);
        let x_1266 : vec4<f32> = u_xlat14;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec16;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat74 = x_1278;
        let x_1280 : f32 = u_xlat16.w;
        let x_1281 : f32 = u_xlat74;
        let x_1284 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1280 * x_1281) + x_1284);
        let x_1288 : vec4<f32> = u_xlat12;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec17;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1298.xy, x_1298.z);
        u_xlat74 = x_1300;
        let x_1302 : f32 = u_xlat17.x;
        let x_1303 : f32 = u_xlat74;
        let x_1306 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1302 * x_1303) + x_1306);
        let x_1310 : vec4<f32> = u_xlat12;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.z, x_1310.w);
        let x_1313 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec18;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat74 = x_1322;
        let x_1324 : f32 = u_xlat17.y;
        let x_1325 : f32 = u_xlat74;
        let x_1328 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1324 * x_1325) + x_1328);
        let x_1332 : vec4<f32> = u_xlat13;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec19;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat74 = x_1344;
        let x_1346 : f32 = u_xlat17.z;
        let x_1347 : f32 = u_xlat74;
        let x_1350 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1346 * x_1347) + x_1350);
        let x_1354 : vec4<f32> = u_xlat14;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec20;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat74 = x_1366;
        let x_1368 : f32 = u_xlat17.w;
        let x_1369 : f32 = u_xlat74;
        let x_1372 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1368 * x_1369) + x_1372);
        let x_1376 : vec4<f32> = u_xlat15;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec21;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat74 = x_1388;
        let x_1390 : f32 = u_xlat18.x;
        let x_1391 : f32 = u_xlat74;
        let x_1394 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1390 * x_1391) + x_1394);
        let x_1398 : vec4<f32> = u_xlat15;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec22;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat74 = x_1410;
        let x_1412 : f32 = u_xlat18.y;
        let x_1413 : f32 = u_xlat74;
        let x_1416 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1412 * x_1413) + x_1416);
        let x_1420 : vec2<f32> = u_xlat31;
        let x_1422 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec23;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat74 = x_1431;
        let x_1433 : f32 = u_xlat18.z;
        let x_1434 : f32 = u_xlat74;
        let x_1437 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1433 * x_1434) + x_1437);
        let x_1441 : vec2<f32> = u_xlat61;
        let x_1443 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec24;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat74 = x_1452;
        let x_1454 : f32 = u_xlat18.w;
        let x_1455 : f32 = u_xlat74;
        let x_1458 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec25;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat74 = x_1474;
        let x_1476 : f32 = u_xlat6.x;
        let x_1477 : f32 = u_xlat74;
        let x_1480 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat10;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec26;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat74 = x_1496;
        let x_1498 : f32 = u_xlat6.y;
        let x_1499 : f32 = u_xlat74;
        let x_1502 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec2<f32> = u_xlat56;
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec27;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat74 = x_1517;
        let x_1519 : f32 = u_xlat6.z;
        let x_1520 : f32 = u_xlat74;
        let x_1523 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1519 * x_1520) + x_1523);
        let x_1527 : vec4<f32> = u_xlat5;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
        let x_1530 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec28;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat74 = x_1539;
        let x_1541 : f32 = u_xlat6.w;
        let x_1542 : f32 = u_xlat74;
        let x_1545 : f32 = u_xlat1.x;
        u_xlat72 = ((x_1541 * x_1542) + x_1545);
      }
    }
  } else {
    let x_1549 : vec4<f32> = vs_TEXCOORD6;
    let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
    let x_1552 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
    let x_1559 : vec3<f32> = txVec29;
    let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
    u_xlat72 = x_1561;
  }
  let x_1563 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1563) + 1.0f);
  let x_1567 : f32 = u_xlat72;
  let x_1569 : f32 = x_319.x_MainLightShadowParams.x;
  let x_1572 : f32 = u_xlat1.x;
  u_xlat72 = ((x_1567 * x_1569) + x_1572);
  let x_1575 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1575);
  let x_1579 : f32 = vs_TEXCOORD6.z;
  u_xlatb74 = (x_1579 >= 1.0f);
  let x_1581 : bool = u_xlatb1;
  let x_1582 : bool = u_xlatb74;
  u_xlatb1 = (x_1581 | x_1582);
  let x_1584 : bool = u_xlatb1;
  let x_1585 : f32 = u_xlat72;
  u_xlat72 = select(x_1585, 1.0f, x_1584);
  let x_1589 : vec3<f32> = vs_TEXCOORD1;
  let x_1593 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1595 : vec3<f32> = (x_1589 + -(x_1593));
  let x_1596 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1598 : vec4<f32> = u_xlat5;
  let x_1600 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1598.x, x_1598.y, x_1598.z), vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1605 : f32 = u_xlat1.x;
  let x_1607 : f32 = x_319.x_MainLightShadowParams.z;
  let x_1610 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat74 = ((x_1605 * x_1607) + x_1610);
  let x_1612 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1612, 0.0f, 1.0f);
  let x_1614 : f32 = u_xlat72;
  u_xlat75 = (-(x_1614) + 1.0f);
  let x_1617 : f32 = u_xlat74;
  let x_1618 : f32 = u_xlat75;
  let x_1620 : f32 = u_xlat72;
  u_xlat72 = ((x_1617 * x_1618) + x_1620);
  let x_1630 : f32 = x_1627.x_MainLightCookieTextureFormat;
  u_xlatb74 = !((x_1630 == -1.0f));
  let x_1632 : bool = u_xlatb74;
  if (x_1632) {
    let x_1635 : vec3<f32> = vs_TEXCOORD1;
    let x_1638 : vec4<f32> = x_1627.x_MainLightWorldToLight[1i];
    let x_1640 : vec2<f32> = (vec2<f32>(x_1635.y, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y));
    let x_1641 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
    let x_1644 : vec4<f32> = x_1627.x_MainLightWorldToLight[0i];
    let x_1646 : vec3<f32> = vs_TEXCOORD1;
    let x_1649 : vec4<f32> = u_xlat5;
    let x_1651 : vec2<f32> = ((vec2<f32>(x_1644.x, x_1644.y) * vec2<f32>(x_1646.x, x_1646.x)) + vec2<f32>(x_1649.x, x_1649.y));
    let x_1652 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
    let x_1655 : vec4<f32> = x_1627.x_MainLightWorldToLight[2i];
    let x_1657 : vec3<f32> = vs_TEXCOORD1;
    let x_1660 : vec4<f32> = u_xlat5;
    let x_1662 : vec2<f32> = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1657.z, x_1657.z)) + vec2<f32>(x_1660.x, x_1660.y));
    let x_1663 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
    let x_1665 : vec4<f32> = u_xlat5;
    let x_1669 : vec4<f32> = x_1627.x_MainLightWorldToLight[3i];
    let x_1671 : vec2<f32> = (vec2<f32>(x_1665.x, x_1665.y) + vec2<f32>(x_1669.x, x_1669.y));
    let x_1672 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
    let x_1674 : vec4<f32> = u_xlat5;
    let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1678 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
    let x_1685 : vec4<f32> = u_xlat5;
    let x_1688 : f32 = x_27.x_GlobalMipBias.x;
    let x_1689 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1685.x, x_1685.y), x_1688);
    u_xlat5 = x_1689;
    let x_1694 : f32 = x_1627.x_MainLightCookieTextureFormat;
    let x_1696 : f32 = x_1627.x_MainLightCookieTextureFormat;
    let x_1698 : f32 = x_1627.x_MainLightCookieTextureFormat;
    let x_1700 : f32 = x_1627.x_MainLightCookieTextureFormat;
    let x_1701 : vec4<f32> = vec4<f32>(x_1694, x_1696, x_1698, x_1700);
    let x_1709 : vec4<bool> = (vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1701.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1709.x, x_1709.y);
    let x_1712 : bool = u_xlatb6.y;
    if (x_1712) {
      let x_1717 : f32 = u_xlat5.w;
      x_1713 = x_1717;
    } else {
      let x_1720 : f32 = u_xlat5.x;
      x_1713 = x_1720;
    }
    let x_1721 : f32 = x_1713;
    u_xlat74 = x_1721;
    let x_1723 : bool = u_xlatb6.x;
    if (x_1723) {
      let x_1727 : vec4<f32> = u_xlat5;
      x_1724 = vec3<f32>(x_1727.x, x_1727.y, x_1727.z);
    } else {
      let x_1730 : f32 = u_xlat74;
      x_1724 = vec3<f32>(x_1730, x_1730, x_1730);
    }
    let x_1732 : vec3<f32> = x_1724;
    let x_1733 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1739 : vec4<f32> = u_xlat5;
  let x_1742 : vec4<f32> = x_27.x_MainLightColor;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) * vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
  let x_1745 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : f32 = u_xlat72;
  let x_1753 : f32 = x_1751.unity_LightData.z;
  u_xlat72 = (x_1747 * x_1753);
  let x_1755 : f32 = u_xlat72;
  let x_1757 : vec4<f32> = u_xlat5;
  let x_1759 : vec3<f32> = (vec3<f32>(x_1755, x_1755, x_1755) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1762 : vec3<f32> = u_xlat2;
  let x_1764 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat72 = dot(x_1762, vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1767, 0.0f, 1.0f);
  let x_1769 : f32 = u_xlat72;
  let x_1771 : vec4<f32> = u_xlat5;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1777 : f32 = x_41.x_SpecColor.w;
  u_xlat72 = ((x_1777 * 10.0f) + 1.0f);
  let x_1781 : f32 = u_xlat72;
  u_xlat72 = exp2(x_1781);
  let x_1783 : vec3<f32> = u_xlat3;
  let x_1784 : vec3<f32> = u_xlat24;
  let x_1788 : vec4<f32> = x_27.x_MainLightPosition;
  let x_1790 : vec3<f32> = ((x_1783 * vec3<f32>(x_1784.x, x_1784.x, x_1784.x)) + vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec4<f32> = u_xlat7;
  let x_1795 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : f32 = u_xlat74;
  u_xlat74 = max(x_1798, 1.17549435e-38f);
  let x_1801 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1801);
  let x_1803 : f32 = u_xlat74;
  let x_1805 : vec4<f32> = u_xlat7;
  let x_1807 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
  let x_1808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
  let x_1810 : vec3<f32> = u_xlat2;
  let x_1811 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(x_1810, vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1814, 0.0f, 1.0f);
  let x_1816 : f32 = u_xlat74;
  u_xlat74 = log2(x_1816);
  let x_1818 : f32 = u_xlat72;
  let x_1819 : f32 = u_xlat74;
  u_xlat74 = (x_1818 * x_1819);
  let x_1821 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1821);
  let x_1823 : f32 = u_xlat74;
  let x_1826 : vec4<f32> = x_41.x_SpecColor;
  let x_1828 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
  let x_1829 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1831 : vec4<f32> = u_xlat5;
  let x_1833 : vec4<f32> = u_xlat7;
  let x_1835 : vec3<f32> = (vec3<f32>(x_1831.x, x_1831.y, x_1831.z) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1838 : vec4<f32> = u_xlat6;
  let x_1840 : vec4<f32> = u_xlat1;
  let x_1843 : vec4<f32> = u_xlat5;
  let x_1845 : vec3<f32> = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1840.y, x_1840.z, x_1840.w)) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1849 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1851 : f32 = x_1751.unity_LightData.y;
  u_xlat74 = min(x_1849, x_1851);
  let x_1855 : f32 = u_xlat74;
  u_xlatu74 = bitcast<u32>(i32(x_1855));
  let x_1859 : f32 = u_xlat1.x;
  let x_1862 : f32 = x_319.x_AdditionalShadowFadeParams.x;
  let x_1865 : f32 = x_319.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1859 * x_1862) + x_1865);
  let x_1869 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1869, 0.0f, 1.0f);
  let x_1873 : f32 = x_1627.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1875 : f32 = x_1627.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1877 : f32 = x_1627.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1879 : f32 = x_1627.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1880 : vec4<f32> = vec4<f32>(x_1873, x_1875, x_1877, x_1879);
  let x_1886 : vec4<bool> = (vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1880.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1886.x, x_1886.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1898 : u32 = u_xlatu_loop_1;
    let x_1899 : u32 = u_xlatu74;
    if ((x_1898 < x_1899)) {
    } else {
      break;
    }
    let x_1902 : u32 = u_xlatu_loop_1;
    u_xlatu76 = (x_1902 >> 2u);
    let x_1906 : u32 = u_xlatu_loop_1;
    u_xlati77 = bitcast<i32>((x_1906 & 3u));
    let x_1910 : u32 = u_xlatu76;
    let x_1913 : vec4<f32> = x_1751.unity_LightIndices[bitcast<i32>(x_1910)];
    let x_1923 : i32 = u_xlati77;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1928 : vec4<u32> = indexable[x_1923];
    u_xlat76 = dot(x_1913, bitcast<vec4<f32>>(x_1928));
    let x_1932 : f32 = u_xlat76;
    u_xlati76 = i32(x_1932);
    let x_1934 : vec3<f32> = vs_TEXCOORD1;
    let x_1945 : i32 = u_xlati76;
    let x_1947 : vec4<f32> = x_1944.x_AdditionalLightsPosition[x_1945];
    let x_1950 : i32 = u_xlati76;
    let x_1952 : vec4<f32> = x_1944.x_AdditionalLightsPosition[x_1950];
    let x_1954 : vec3<f32> = ((-(x_1934) * vec3<f32>(x_1947.w, x_1947.w, x_1947.w)) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    let x_1958 : vec4<f32> = u_xlat8;
    let x_1960 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
    let x_1963 : f32 = u_xlat77;
    u_xlat77 = max(x_1963, 0.00006103515625f);
    let x_1966 : f32 = u_xlat77;
    u_xlat54 = inverseSqrt(x_1966);
    let x_1968 : f32 = u_xlat54;
    let x_1970 : vec4<f32> = u_xlat8;
    let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
    let x_1973 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
    let x_1975 : f32 = u_xlat77;
    u_xlat54 = (1.0f / x_1975);
    let x_1977 : f32 = u_xlat77;
    let x_1978 : i32 = u_xlati76;
    let x_1980 : f32 = x_1944.x_AdditionalLightsAttenuation[x_1978].x;
    u_xlat77 = (x_1977 * x_1980);
    let x_1982 : f32 = u_xlat77;
    let x_1984 : f32 = u_xlat77;
    u_xlat77 = ((-(x_1982) * x_1984) + 1.0f);
    let x_1987 : f32 = u_xlat77;
    u_xlat77 = max(x_1987, 0.0f);
    let x_1989 : f32 = u_xlat77;
    let x_1990 : f32 = u_xlat77;
    u_xlat77 = (x_1989 * x_1990);
    let x_1992 : f32 = u_xlat77;
    let x_1993 : f32 = u_xlat54;
    u_xlat77 = (x_1992 * x_1993);
    let x_1995 : i32 = u_xlati76;
    let x_1997 : vec4<f32> = x_1944.x_AdditionalLightsSpotDir[x_1995];
    let x_1999 : vec4<f32> = u_xlat8;
    u_xlat54 = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2002 : f32 = u_xlat54;
    let x_2003 : i32 = u_xlati76;
    let x_2005 : f32 = x_1944.x_AdditionalLightsAttenuation[x_2003].z;
    let x_2007 : i32 = u_xlati76;
    let x_2009 : f32 = x_1944.x_AdditionalLightsAttenuation[x_2007].w;
    u_xlat54 = ((x_2002 * x_2005) + x_2009);
    let x_2011 : f32 = u_xlat54;
    u_xlat54 = clamp(x_2011, 0.0f, 1.0f);
    let x_2013 : f32 = u_xlat54;
    let x_2014 : f32 = u_xlat54;
    u_xlat54 = (x_2013 * x_2014);
    let x_2016 : f32 = u_xlat77;
    let x_2017 : f32 = u_xlat54;
    u_xlat77 = (x_2016 * x_2017);
    let x_2021 : i32 = u_xlati76;
    let x_2023 : f32 = x_319.x_AdditionalShadowParams[x_2021].w;
    u_xlati54 = i32(x_2023);
    let x_2026 : i32 = u_xlati54;
    u_xlatb78 = (x_2026 >= 0i);
    let x_2028 : bool = u_xlatb78;
    if (x_2028) {
      let x_2032 : i32 = u_xlati76;
      let x_2034 : f32 = x_319.x_AdditionalShadowParams[x_2032].z;
      u_xlatb78 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2034, x_2034, x_2034, x_2034))));
      let x_2038 : bool = u_xlatb78;
      if (x_2038) {
        let x_2043 : vec4<f32> = u_xlat8;
        let x_2046 : vec4<f32> = u_xlat8;
        let x_2049 : vec4<bool> = (abs(vec4<f32>(x_2043.z, x_2043.z, x_2043.y, x_2043.z)) >= abs(vec4<f32>(x_2046.x, x_2046.y, x_2046.x, x_2046.x)));
        let x_2051 : vec3<bool> = vec3<bool>(x_2049.x, x_2049.y, x_2049.z);
        let x_2052 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
        let x_2055 : bool = u_xlatb9.y;
        let x_2057 : bool = u_xlatb9.x;
        u_xlatb78 = (x_2055 & x_2057);
        let x_2059 : vec4<f32> = u_xlat8;
        let x_2062 : vec4<bool> = (-(vec4<f32>(x_2059.z, x_2059.y, x_2059.z, x_2059.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2063 : vec3<bool> = vec3<bool>(x_2062.x, x_2062.y, x_2062.w);
        let x_2064 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2063.x, x_2063.y, x_2064.z, x_2063.z);
        let x_2067 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2067);
        let x_2073 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2073);
        let x_2079 : bool = u_xlatb9.w;
        u_xlat79 = select(0.0f, 1.0f, x_2079);
        let x_2082 : bool = u_xlatb9.z;
        if (x_2082) {
          let x_2087 : f32 = u_xlat9.y;
          x_2083 = x_2087;
        } else {
          let x_2089 : f32 = u_xlat79;
          x_2083 = x_2089;
        }
        let x_2090 : f32 = x_2083;
        u_xlat79 = x_2090;
        let x_2092 : bool = u_xlatb78;
        if (x_2092) {
          let x_2097 : f32 = u_xlat9.x;
          x_2093 = x_2097;
        } else {
          let x_2099 : f32 = u_xlat79;
          x_2093 = x_2099;
        }
        let x_2100 : f32 = x_2093;
        u_xlat78 = x_2100;
        let x_2101 : i32 = u_xlati76;
        let x_2103 : f32 = x_319.x_AdditionalShadowParams[x_2101].w;
        u_xlat79 = trunc(x_2103);
        let x_2105 : f32 = u_xlat78;
        let x_2106 : f32 = u_xlat79;
        u_xlat78 = (x_2105 + x_2106);
        let x_2108 : f32 = u_xlat78;
        u_xlati54 = i32(x_2108);
      }
      let x_2110 : i32 = u_xlati54;
      u_xlati54 = (x_2110 << bitcast<u32>(2i));
      let x_2112 : vec3<f32> = vs_TEXCOORD1;
      let x_2115 : i32 = u_xlati54;
      let x_2118 : i32 = u_xlati54;
      let x_2122 : vec4<f32> = x_319.x_AdditionalLightsWorldToShadow[((x_2115 + 1i) / 4i)][((x_2118 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2112.y, x_2112.y, x_2112.y, x_2112.y) * x_2122);
      let x_2124 : i32 = u_xlati54;
      let x_2126 : i32 = u_xlati54;
      let x_2129 : vec4<f32> = x_319.x_AdditionalLightsWorldToShadow[(x_2124 / 4i)][(x_2126 % 4i)];
      let x_2130 : vec3<f32> = vs_TEXCOORD1;
      let x_2133 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2129 * vec4<f32>(x_2130.x, x_2130.x, x_2130.x, x_2130.x)) + x_2133);
      let x_2135 : i32 = u_xlati54;
      let x_2138 : i32 = u_xlati54;
      let x_2142 : vec4<f32> = x_319.x_AdditionalLightsWorldToShadow[((x_2135 + 2i) / 4i)][((x_2138 + 2i) % 4i)];
      let x_2143 : vec3<f32> = vs_TEXCOORD1;
      let x_2146 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2142 * vec4<f32>(x_2143.z, x_2143.z, x_2143.z, x_2143.z)) + x_2146);
      let x_2148 : vec4<f32> = u_xlat9;
      let x_2149 : i32 = u_xlati54;
      let x_2152 : i32 = u_xlati54;
      let x_2156 : vec4<f32> = x_319.x_AdditionalLightsWorldToShadow[((x_2149 + 3i) / 4i)][((x_2152 + 3i) % 4i)];
      u_xlat9 = (x_2148 + x_2156);
      let x_2158 : vec4<f32> = u_xlat9;
      let x_2160 : vec4<f32> = u_xlat9;
      let x_2162 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) / vec3<f32>(x_2160.w, x_2160.w, x_2160.w));
      let x_2163 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
      let x_2166 : i32 = u_xlati76;
      let x_2168 : f32 = x_319.x_AdditionalShadowParams[x_2166].y;
      u_xlatb54 = (0.0f < x_2168);
      let x_2170 : bool = u_xlatb54;
      if (x_2170) {
        let x_2173 : i32 = u_xlati76;
        let x_2175 : f32 = x_319.x_AdditionalShadowParams[x_2173].y;
        u_xlatb54 = (1.0f == x_2175);
        let x_2177 : bool = u_xlatb54;
        if (x_2177) {
          let x_2180 : vec4<f32> = u_xlat9;
          let x_2184 : vec4<f32> = x_319.x_AdditionalShadowOffset0;
          u_xlat10 = (vec4<f32>(x_2180.x, x_2180.y, x_2180.x, x_2180.y) + x_2184);
          let x_2187 : vec4<f32> = u_xlat10;
          let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
          let x_2190 : f32 = u_xlat9.z;
          txVec30 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
          let x_2198 : vec3<f32> = txVec30;
          let x_2200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2198.xy, x_2198.z);
          u_xlat11.x = x_2200;
          let x_2203 : vec4<f32> = u_xlat10;
          let x_2204 : vec2<f32> = vec2<f32>(x_2203.z, x_2203.w);
          let x_2206 : f32 = u_xlat9.z;
          txVec31 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
          let x_2213 : vec3<f32> = txVec31;
          let x_2215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2213.xy, x_2213.z);
          u_xlat11.y = x_2215;
          let x_2217 : vec4<f32> = u_xlat9;
          let x_2221 : vec4<f32> = x_319.x_AdditionalShadowOffset1;
          u_xlat10 = (vec4<f32>(x_2217.x, x_2217.y, x_2217.x, x_2217.y) + x_2221);
          let x_2224 : vec4<f32> = u_xlat10;
          let x_2225 : vec2<f32> = vec2<f32>(x_2224.x, x_2224.y);
          let x_2227 : f32 = u_xlat9.z;
          txVec32 = vec3<f32>(x_2225.x, x_2225.y, x_2227);
          let x_2234 : vec3<f32> = txVec32;
          let x_2236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2234.xy, x_2234.z);
          u_xlat11.z = x_2236;
          let x_2239 : vec4<f32> = u_xlat10;
          let x_2240 : vec2<f32> = vec2<f32>(x_2239.z, x_2239.w);
          let x_2242 : f32 = u_xlat9.z;
          txVec33 = vec3<f32>(x_2240.x, x_2240.y, x_2242);
          let x_2249 : vec3<f32> = txVec33;
          let x_2251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2249.xy, x_2249.z);
          u_xlat11.w = x_2251;
          let x_2253 : vec4<f32> = u_xlat11;
          u_xlat54 = dot(x_2253, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2256 : i32 = u_xlati76;
          let x_2258 : f32 = x_319.x_AdditionalShadowParams[x_2256].y;
          u_xlatb78 = (2.0f == x_2258);
          let x_2260 : bool = u_xlatb78;
          if (x_2260) {
            let x_2263 : vec4<f32> = u_xlat9;
            let x_2267 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2270 : vec2<f32> = ((vec2<f32>(x_2263.x, x_2263.y) * vec2<f32>(x_2267.z, x_2267.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2271 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2273 : vec4<f32> = u_xlat10;
            let x_2275 : vec2<f32> = floor(vec2<f32>(x_2273.x, x_2273.y));
            let x_2276 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
            let x_2279 : vec4<f32> = u_xlat9;
            let x_2282 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2285 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2279.x, x_2279.y) * vec2<f32>(x_2282.z, x_2282.w)) + -(vec2<f32>(x_2285.x, x_2285.y)));
            let x_2289 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2289.x, x_2289.x, x_2289.y, x_2289.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2292 : vec4<f32> = u_xlat11;
            let x_2294 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2292.x, x_2292.x, x_2292.z, x_2292.z) * vec4<f32>(x_2294.x, x_2294.x, x_2294.z, x_2294.z));
            let x_2297 : vec4<f32> = u_xlat12;
            let x_2299 : vec2<f32> = (vec2<f32>(x_2297.y, x_2297.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2300 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2299.x, x_2300.y, x_2299.y, x_2300.w);
            let x_2302 : vec4<f32> = u_xlat12;
            let x_2305 : vec2<f32> = u_xlat58;
            let x_2307 : vec2<f32> = ((vec2<f32>(x_2302.x, x_2302.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2305));
            let x_2308 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
            let x_2311 : vec2<f32> = u_xlat58;
            u_xlat60 = (-(x_2311) + vec2<f32>(1.0f, 1.0f));
            let x_2314 : vec2<f32> = u_xlat58;
            let x_2315 : vec2<f32> = min(x_2314, vec2<f32>(0.0f, 0.0f));
            let x_2316 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
            let x_2318 : vec4<f32> = u_xlat13;
            let x_2321 : vec4<f32> = u_xlat13;
            let x_2324 : vec2<f32> = u_xlat60;
            let x_2325 : vec2<f32> = ((-(vec2<f32>(x_2318.x, x_2318.y)) * vec2<f32>(x_2321.x, x_2321.y)) + x_2324);
            let x_2326 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2325.x, x_2325.y, x_2326.z, x_2326.w);
            let x_2328 : vec2<f32> = u_xlat58;
            u_xlat58 = max(x_2328, vec2<f32>(0.0f, 0.0f));
            let x_2330 : vec2<f32> = u_xlat58;
            let x_2332 : vec2<f32> = u_xlat58;
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat58 = ((-(x_2330) * x_2332) + vec2<f32>(x_2334.y, x_2334.w));
            let x_2337 : vec4<f32> = u_xlat13;
            let x_2339 : vec2<f32> = (vec2<f32>(x_2337.x, x_2337.y) + vec2<f32>(1.0f, 1.0f));
            let x_2340 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
            let x_2342 : vec2<f32> = u_xlat58;
            u_xlat58 = (x_2342 + vec2<f32>(1.0f, 1.0f));
            let x_2344 : vec4<f32> = u_xlat12;
            let x_2346 : vec2<f32> = (vec2<f32>(x_2344.x, x_2344.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2347 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
            let x_2349 : vec2<f32> = u_xlat60;
            let x_2350 : vec2<f32> = (x_2349 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2351 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
            let x_2353 : vec4<f32> = u_xlat13;
            let x_2355 : vec2<f32> = (vec2<f32>(x_2353.x, x_2353.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2356 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2355.x, x_2355.y, x_2356.z, x_2356.w);
            let x_2358 : vec2<f32> = u_xlat58;
            let x_2359 : vec2<f32> = (x_2358 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2360 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
            let x_2362 : vec4<f32> = u_xlat11;
            u_xlat58 = (vec2<f32>(x_2362.y, x_2362.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2366 : f32 = u_xlat13.x;
            u_xlat14.z = x_2366;
            let x_2369 : f32 = u_xlat58.x;
            u_xlat14.w = x_2369;
            let x_2372 : f32 = u_xlat15.x;
            u_xlat12.z = x_2372;
            let x_2375 : f32 = u_xlat11.x;
            u_xlat12.w = x_2375;
            let x_2377 : vec4<f32> = u_xlat12;
            let x_2379 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2377.z, x_2377.w, x_2377.x, x_2377.z) + vec4<f32>(x_2379.z, x_2379.w, x_2379.x, x_2379.z));
            let x_2383 : f32 = u_xlat14.y;
            u_xlat13.z = x_2383;
            let x_2386 : f32 = u_xlat58.y;
            u_xlat13.w = x_2386;
            let x_2389 : f32 = u_xlat12.y;
            u_xlat15.z = x_2389;
            let x_2392 : f32 = u_xlat11.z;
            u_xlat15.w = x_2392;
            let x_2394 : vec4<f32> = u_xlat13;
            let x_2396 : vec4<f32> = u_xlat15;
            let x_2398 : vec3<f32> = (vec3<f32>(x_2394.z, x_2394.y, x_2394.w) + vec3<f32>(x_2396.z, x_2396.y, x_2396.w));
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
            let x_2401 : vec4<f32> = u_xlat12;
            let x_2403 : vec4<f32> = u_xlat16;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.z, x_2401.w) / vec3<f32>(x_2403.z, x_2403.w, x_2403.y));
            let x_2406 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2410 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2411 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
            let x_2413 : vec4<f32> = u_xlat15;
            let x_2415 : vec4<f32> = u_xlat11;
            let x_2417 : vec3<f32> = (vec3<f32>(x_2413.z, x_2413.y, x_2413.w) / vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat13;
            let x_2422 : vec3<f32> = (vec3<f32>(x_2420.x, x_2420.y, x_2420.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2423 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat12;
            let x_2428 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2430 : vec3<f32> = (vec3<f32>(x_2425.y, x_2425.x, x_2425.z) * vec3<f32>(x_2428.x, x_2428.x, x_2428.x));
            let x_2431 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat13;
            let x_2436 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2438 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) * vec3<f32>(x_2436.y, x_2436.y, x_2436.y));
            let x_2439 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
            let x_2442 : f32 = u_xlat13.x;
            u_xlat12.w = x_2442;
            let x_2444 : vec4<f32> = u_xlat10;
            let x_2447 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2450 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2444.x, x_2444.y, x_2444.x, x_2444.y) * vec4<f32>(x_2447.x, x_2447.y, x_2447.x, x_2447.y)) + vec4<f32>(x_2450.y, x_2450.w, x_2450.x, x_2450.w));
            let x_2453 : vec4<f32> = u_xlat10;
            let x_2456 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2459 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2453.x, x_2453.y) * vec2<f32>(x_2456.x, x_2456.y)) + vec2<f32>(x_2459.z, x_2459.w));
            let x_2463 : f32 = u_xlat12.y;
            u_xlat13.w = x_2463;
            let x_2465 : vec4<f32> = u_xlat13;
            let x_2466 : vec2<f32> = vec2<f32>(x_2465.y, x_2465.z);
            let x_2467 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2467.x, x_2466.x, x_2467.z, x_2466.y);
            let x_2469 : vec4<f32> = u_xlat10;
            let x_2472 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2475 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y) * vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y)) + vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2475.y));
            let x_2478 : vec4<f32> = u_xlat10;
            let x_2481 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2484 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2478.x, x_2478.y, x_2478.x, x_2478.y) * vec4<f32>(x_2481.x, x_2481.y, x_2481.x, x_2481.y)) + vec4<f32>(x_2484.w, x_2484.y, x_2484.w, x_2484.z));
            let x_2487 : vec4<f32> = u_xlat10;
            let x_2490 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2493 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2487.x, x_2487.y, x_2487.x, x_2487.y) * vec4<f32>(x_2490.x, x_2490.y, x_2490.x, x_2490.y)) + vec4<f32>(x_2493.x, x_2493.w, x_2493.z, x_2493.w));
            let x_2496 : vec4<f32> = u_xlat11;
            let x_2498 : vec4<f32> = u_xlat16;
            u_xlat17 = (vec4<f32>(x_2496.x, x_2496.x, x_2496.x, x_2496.y) * vec4<f32>(x_2498.z, x_2498.w, x_2498.y, x_2498.z));
            let x_2501 : vec4<f32> = u_xlat11;
            let x_2503 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2501.y, x_2501.y, x_2501.z, x_2501.z) * x_2503);
            let x_2506 : f32 = u_xlat11.z;
            let x_2508 : f32 = u_xlat16.y;
            u_xlat78 = (x_2506 * x_2508);
            let x_2511 : vec4<f32> = u_xlat14;
            let x_2512 : vec2<f32> = vec2<f32>(x_2511.x, x_2511.y);
            let x_2514 : f32 = u_xlat9.z;
            txVec34 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
            let x_2521 : vec3<f32> = txVec34;
            let x_2523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
            u_xlat79 = x_2523;
            let x_2525 : vec4<f32> = u_xlat14;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.z, x_2525.w);
            let x_2528 : f32 = u_xlat9.z;
            txVec35 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2536 : vec3<f32> = txVec35;
            let x_2538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2536.xy, x_2536.z);
            u_xlat80 = x_2538;
            let x_2539 : f32 = u_xlat80;
            let x_2541 : f32 = u_xlat17.y;
            u_xlat80 = (x_2539 * x_2541);
            let x_2544 : f32 = u_xlat17.x;
            let x_2545 : f32 = u_xlat79;
            let x_2547 : f32 = u_xlat80;
            u_xlat79 = ((x_2544 * x_2545) + x_2547);
            let x_2550 : vec2<f32> = u_xlat58;
            let x_2552 : f32 = u_xlat9.z;
            txVec36 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
            let x_2559 : vec3<f32> = txVec36;
            let x_2561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
            u_xlat80 = x_2561;
            let x_2563 : f32 = u_xlat17.z;
            let x_2564 : f32 = u_xlat80;
            let x_2566 : f32 = u_xlat79;
            u_xlat79 = ((x_2563 * x_2564) + x_2566);
            let x_2569 : vec4<f32> = u_xlat13;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.x, x_2569.y);
            let x_2572 : f32 = u_xlat9.z;
            txVec37 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec37;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat80 = x_2581;
            let x_2583 : f32 = u_xlat17.w;
            let x_2584 : f32 = u_xlat80;
            let x_2586 : f32 = u_xlat79;
            u_xlat79 = ((x_2583 * x_2584) + x_2586);
            let x_2589 : vec4<f32> = u_xlat15;
            let x_2590 : vec2<f32> = vec2<f32>(x_2589.x, x_2589.y);
            let x_2592 : f32 = u_xlat9.z;
            txVec38 = vec3<f32>(x_2590.x, x_2590.y, x_2592);
            let x_2599 : vec3<f32> = txVec38;
            let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
            u_xlat80 = x_2601;
            let x_2603 : f32 = u_xlat18.x;
            let x_2604 : f32 = u_xlat80;
            let x_2606 : f32 = u_xlat79;
            u_xlat79 = ((x_2603 * x_2604) + x_2606);
            let x_2609 : vec4<f32> = u_xlat15;
            let x_2610 : vec2<f32> = vec2<f32>(x_2609.z, x_2609.w);
            let x_2612 : f32 = u_xlat9.z;
            txVec39 = vec3<f32>(x_2610.x, x_2610.y, x_2612);
            let x_2619 : vec3<f32> = txVec39;
            let x_2621 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2619.xy, x_2619.z);
            u_xlat80 = x_2621;
            let x_2623 : f32 = u_xlat18.y;
            let x_2624 : f32 = u_xlat80;
            let x_2626 : f32 = u_xlat79;
            u_xlat79 = ((x_2623 * x_2624) + x_2626);
            let x_2629 : vec4<f32> = u_xlat13;
            let x_2630 : vec2<f32> = vec2<f32>(x_2629.z, x_2629.w);
            let x_2632 : f32 = u_xlat9.z;
            txVec40 = vec3<f32>(x_2630.x, x_2630.y, x_2632);
            let x_2639 : vec3<f32> = txVec40;
            let x_2641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2639.xy, x_2639.z);
            u_xlat80 = x_2641;
            let x_2643 : f32 = u_xlat18.z;
            let x_2644 : f32 = u_xlat80;
            let x_2646 : f32 = u_xlat79;
            u_xlat79 = ((x_2643 * x_2644) + x_2646);
            let x_2649 : vec4<f32> = u_xlat12;
            let x_2650 : vec2<f32> = vec2<f32>(x_2649.x, x_2649.y);
            let x_2652 : f32 = u_xlat9.z;
            txVec41 = vec3<f32>(x_2650.x, x_2650.y, x_2652);
            let x_2659 : vec3<f32> = txVec41;
            let x_2661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2659.xy, x_2659.z);
            u_xlat80 = x_2661;
            let x_2663 : f32 = u_xlat18.w;
            let x_2664 : f32 = u_xlat80;
            let x_2666 : f32 = u_xlat79;
            u_xlat79 = ((x_2663 * x_2664) + x_2666);
            let x_2669 : vec4<f32> = u_xlat12;
            let x_2670 : vec2<f32> = vec2<f32>(x_2669.z, x_2669.w);
            let x_2672 : f32 = u_xlat9.z;
            txVec42 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
            let x_2679 : vec3<f32> = txVec42;
            let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
            u_xlat80 = x_2681;
            let x_2682 : f32 = u_xlat78;
            let x_2683 : f32 = u_xlat80;
            let x_2685 : f32 = u_xlat79;
            u_xlat54 = ((x_2682 * x_2683) + x_2685);
          } else {
            let x_2688 : vec4<f32> = u_xlat9;
            let x_2691 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2694 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(x_2691.z, x_2691.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2695 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2694.x, x_2694.y, x_2695.z, x_2695.w);
            let x_2697 : vec4<f32> = u_xlat10;
            let x_2699 : vec2<f32> = floor(vec2<f32>(x_2697.x, x_2697.y));
            let x_2700 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2699.x, x_2699.y, x_2700.z, x_2700.w);
            let x_2702 : vec4<f32> = u_xlat9;
            let x_2705 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2708 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2702.x, x_2702.y) * vec2<f32>(x_2705.z, x_2705.w)) + -(vec2<f32>(x_2708.x, x_2708.y)));
            let x_2712 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2712.x, x_2712.x, x_2712.y, x_2712.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2715 : vec4<f32> = u_xlat11;
            let x_2717 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2715.x, x_2715.x, x_2715.z, x_2715.z) * vec4<f32>(x_2717.x, x_2717.x, x_2717.z, x_2717.z));
            let x_2720 : vec4<f32> = u_xlat12;
            let x_2722 : vec2<f32> = (vec2<f32>(x_2720.y, x_2720.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2723 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2723.x, x_2722.x, x_2723.z, x_2722.y);
            let x_2725 : vec4<f32> = u_xlat12;
            let x_2728 : vec2<f32> = u_xlat58;
            let x_2730 : vec2<f32> = ((vec2<f32>(x_2725.x, x_2725.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2728));
            let x_2731 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2730.x, x_2731.y, x_2730.y, x_2731.w);
            let x_2733 : vec2<f32> = u_xlat58;
            let x_2735 : vec2<f32> = (-(x_2733) + vec2<f32>(1.0f, 1.0f));
            let x_2736 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
            let x_2738 : vec2<f32> = u_xlat58;
            u_xlat60 = min(x_2738, vec2<f32>(0.0f, 0.0f));
            let x_2740 : vec2<f32> = u_xlat60;
            let x_2742 : vec2<f32> = u_xlat60;
            let x_2744 : vec4<f32> = u_xlat12;
            let x_2746 : vec2<f32> = ((-(x_2740) * x_2742) + vec2<f32>(x_2744.x, x_2744.y));
            let x_2747 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
            let x_2749 : vec2<f32> = u_xlat58;
            u_xlat60 = max(x_2749, vec2<f32>(0.0f, 0.0f));
            let x_2752 : vec2<f32> = u_xlat60;
            let x_2754 : vec2<f32> = u_xlat60;
            let x_2756 : vec4<f32> = u_xlat11;
            let x_2758 : vec2<f32> = ((-(x_2752) * x_2754) + vec2<f32>(x_2756.y, x_2756.w));
            let x_2759 : vec3<f32> = u_xlat35;
            u_xlat35 = vec3<f32>(x_2758.x, x_2759.y, x_2758.y);
            let x_2761 : vec4<f32> = u_xlat12;
            let x_2763 : vec2<f32> = (vec2<f32>(x_2761.x, x_2761.y) + vec2<f32>(2.0f, 2.0f));
            let x_2764 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
            let x_2766 : vec3<f32> = u_xlat35;
            let x_2768 : vec2<f32> = (vec2<f32>(x_2766.x, x_2766.z) + vec2<f32>(2.0f, 2.0f));
            let x_2769 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2769.x, x_2768.x, x_2769.z, x_2768.y);
            let x_2772 : f32 = u_xlat11.y;
            u_xlat14.z = (x_2772 * 0.08163200318813323975f);
            let x_2775 : vec4<f32> = u_xlat11;
            let x_2777 : vec3<f32> = (vec3<f32>(x_2775.z, x_2775.x, x_2775.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2778 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2778.w);
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2782 : vec2<f32> = (vec2<f32>(x_2780.x, x_2780.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
            let x_2786 : f32 = u_xlat15.y;
            u_xlat14.x = x_2786;
            let x_2788 : vec2<f32> = u_xlat58;
            let x_2791 : vec2<f32> = ((vec2<f32>(x_2788.x, x_2788.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2792.x, x_2791.x, x_2792.z, x_2791.y);
            let x_2794 : vec2<f32> = u_xlat58;
            let x_2797 : vec2<f32> = ((vec2<f32>(x_2794.x, x_2794.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2798 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2797.x, x_2798.y, x_2797.y, x_2798.w);
            let x_2801 : f32 = u_xlat11.x;
            u_xlat12.y = x_2801;
            let x_2804 : f32 = u_xlat13.y;
            u_xlat12.w = x_2804;
            let x_2806 : vec4<f32> = u_xlat12;
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2806 + x_2807);
            let x_2809 : vec2<f32> = u_xlat58;
            let x_2812 : vec2<f32> = ((vec2<f32>(x_2809.y, x_2809.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2813 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2813.x, x_2812.x, x_2813.z, x_2812.y);
            let x_2815 : vec2<f32> = u_xlat58;
            let x_2818 : vec2<f32> = ((vec2<f32>(x_2815.y, x_2815.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2819 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2818.x, x_2819.y, x_2818.y, x_2819.w);
            let x_2822 : f32 = u_xlat11.y;
            u_xlat13.y = x_2822;
            let x_2824 : vec4<f32> = u_xlat13;
            let x_2825 : vec4<f32> = u_xlat15;
            u_xlat11 = (x_2824 + x_2825);
            let x_2827 : vec4<f32> = u_xlat12;
            let x_2828 : vec4<f32> = u_xlat14;
            u_xlat12 = (x_2827 / x_2828);
            let x_2830 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2830 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2833 : vec4<f32> = u_xlat11;
            u_xlat13 = (x_2832 / x_2833);
            let x_2835 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2835 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2837 : vec4<f32> = u_xlat12;
            let x_2840 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2837.w, x_2837.x, x_2837.y, x_2837.z) * vec4<f32>(x_2840.x, x_2840.x, x_2840.x, x_2840.x));
            let x_2843 : vec4<f32> = u_xlat13;
            let x_2846 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2843.x, x_2843.w, x_2843.y, x_2843.z) * vec4<f32>(x_2846.y, x_2846.y, x_2846.y, x_2846.y));
            let x_2849 : vec4<f32> = u_xlat12;
            let x_2850 : vec3<f32> = vec3<f32>(x_2849.y, x_2849.z, x_2849.w);
            let x_2851 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2850.x, x_2851.y, x_2850.y, x_2850.z);
            let x_2854 : f32 = u_xlat13.x;
            u_xlat15.y = x_2854;
            let x_2856 : vec4<f32> = u_xlat10;
            let x_2859 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2862 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_2856.x, x_2856.y, x_2856.x, x_2856.y) * vec4<f32>(x_2859.x, x_2859.y, x_2859.x, x_2859.y)) + vec4<f32>(x_2862.x, x_2862.y, x_2862.z, x_2862.y));
            let x_2865 : vec4<f32> = u_xlat10;
            let x_2868 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2871 : vec4<f32> = u_xlat15;
            u_xlat58 = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(x_2868.x, x_2868.y)) + vec2<f32>(x_2871.w, x_2871.y));
            let x_2875 : f32 = u_xlat15.y;
            u_xlat12.y = x_2875;
            let x_2878 : f32 = u_xlat13.z;
            u_xlat15.y = x_2878;
            let x_2880 : vec4<f32> = u_xlat10;
            let x_2883 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) * vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y)) + vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat10;
            let x_2892 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat15;
            let x_2897 : vec2<f32> = ((vec2<f32>(x_2889.x, x_2889.y) * vec2<f32>(x_2892.x, x_2892.y)) + vec2<f32>(x_2895.w, x_2895.y));
            let x_2898 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2901 : f32 = u_xlat15.y;
            u_xlat12.z = x_2901;
            let x_2904 : vec4<f32> = u_xlat10;
            let x_2907 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat12;
            u_xlat19 = ((vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y) * vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y)) + vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.z));
            let x_2914 : f32 = u_xlat13.w;
            u_xlat15.y = x_2914;
            let x_2917 : vec4<f32> = u_xlat10;
            let x_2920 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2923 : vec4<f32> = u_xlat15;
            u_xlat20 = ((vec4<f32>(x_2917.x, x_2917.y, x_2917.x, x_2917.y) * vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y)) + vec4<f32>(x_2923.x, x_2923.y, x_2923.z, x_2923.y));
            let x_2927 : vec4<f32> = u_xlat10;
            let x_2930 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2933 : vec4<f32> = u_xlat15;
            u_xlat36 = ((vec2<f32>(x_2927.x, x_2927.y) * vec2<f32>(x_2930.x, x_2930.y)) + vec2<f32>(x_2933.w, x_2933.y));
            let x_2937 : f32 = u_xlat15.y;
            u_xlat12.w = x_2937;
            let x_2940 : vec4<f32> = u_xlat10;
            let x_2943 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat66 = ((vec2<f32>(x_2940.x, x_2940.y) * vec2<f32>(x_2943.x, x_2943.y)) + vec2<f32>(x_2946.x, x_2946.w));
            let x_2949 : vec4<f32> = u_xlat15;
            let x_2950 : vec3<f32> = vec3<f32>(x_2949.x, x_2949.z, x_2949.w);
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2950.x, x_2951.y, x_2950.y, x_2950.z);
            let x_2953 : vec4<f32> = u_xlat10;
            let x_2956 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.y) * vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y)) + vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2959.y));
            let x_2962 : vec4<f32> = u_xlat10;
            let x_2965 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2968 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2962.x, x_2962.y) * vec2<f32>(x_2965.x, x_2965.y)) + vec2<f32>(x_2968.w, x_2968.y));
            let x_2972 : f32 = u_xlat12.x;
            u_xlat13.x = x_2972;
            let x_2974 : vec4<f32> = u_xlat10;
            let x_2977 : vec4<f32> = x_319.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2982 : vec2<f32> = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2977.x, x_2977.y)) + vec2<f32>(x_2980.x, x_2980.y));
            let x_2983 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2982.x, x_2982.y, x_2983.z, x_2983.w);
            let x_2986 : vec4<f32> = u_xlat11;
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_2986.x, x_2986.x, x_2986.x, x_2986.x) * x_2988);
            let x_2991 : vec4<f32> = u_xlat11;
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat22 = (vec4<f32>(x_2991.y, x_2991.y, x_2991.y, x_2991.y) * x_2993);
            let x_2996 : vec4<f32> = u_xlat11;
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_2996.z, x_2996.z, x_2996.z, x_2996.z) * x_2998);
            let x_3000 : vec4<f32> = u_xlat11;
            let x_3002 : vec4<f32> = u_xlat14;
            u_xlat11 = (vec4<f32>(x_3000.w, x_3000.w, x_3000.w, x_3000.w) * x_3002);
            let x_3005 : vec4<f32> = u_xlat16;
            let x_3006 : vec2<f32> = vec2<f32>(x_3005.x, x_3005.y);
            let x_3008 : f32 = u_xlat9.z;
            txVec43 = vec3<f32>(x_3006.x, x_3006.y, x_3008);
            let x_3015 : vec3<f32> = txVec43;
            let x_3017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3015.xy, x_3015.z);
            u_xlat78 = x_3017;
            let x_3019 : vec4<f32> = u_xlat16;
            let x_3020 : vec2<f32> = vec2<f32>(x_3019.z, x_3019.w);
            let x_3022 : f32 = u_xlat9.z;
            txVec44 = vec3<f32>(x_3020.x, x_3020.y, x_3022);
            let x_3029 : vec3<f32> = txVec44;
            let x_3031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3029.xy, x_3029.z);
            u_xlat79 = x_3031;
            let x_3032 : f32 = u_xlat79;
            let x_3034 : f32 = u_xlat21.y;
            u_xlat79 = (x_3032 * x_3034);
            let x_3037 : f32 = u_xlat21.x;
            let x_3038 : f32 = u_xlat78;
            let x_3040 : f32 = u_xlat79;
            u_xlat78 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec2<f32> = u_xlat58;
            let x_3045 : f32 = u_xlat9.z;
            txVec45 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec45;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat79 = x_3054;
            let x_3056 : f32 = u_xlat21.z;
            let x_3057 : f32 = u_xlat79;
            let x_3059 : f32 = u_xlat78;
            u_xlat78 = ((x_3056 * x_3057) + x_3059);
            let x_3062 : vec4<f32> = u_xlat19;
            let x_3063 : vec2<f32> = vec2<f32>(x_3062.x, x_3062.y);
            let x_3065 : f32 = u_xlat9.z;
            txVec46 = vec3<f32>(x_3063.x, x_3063.y, x_3065);
            let x_3072 : vec3<f32> = txVec46;
            let x_3074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3072.xy, x_3072.z);
            u_xlat79 = x_3074;
            let x_3076 : f32 = u_xlat21.w;
            let x_3077 : f32 = u_xlat79;
            let x_3079 : f32 = u_xlat78;
            u_xlat78 = ((x_3076 * x_3077) + x_3079);
            let x_3082 : vec4<f32> = u_xlat17;
            let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
            let x_3085 : f32 = u_xlat9.z;
            txVec47 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec47;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat79 = x_3094;
            let x_3096 : f32 = u_xlat22.x;
            let x_3097 : f32 = u_xlat79;
            let x_3099 : f32 = u_xlat78;
            u_xlat78 = ((x_3096 * x_3097) + x_3099);
            let x_3102 : vec4<f32> = u_xlat17;
            let x_3103 : vec2<f32> = vec2<f32>(x_3102.z, x_3102.w);
            let x_3105 : f32 = u_xlat9.z;
            txVec48 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
            let x_3112 : vec3<f32> = txVec48;
            let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
            u_xlat79 = x_3114;
            let x_3116 : f32 = u_xlat22.y;
            let x_3117 : f32 = u_xlat79;
            let x_3119 : f32 = u_xlat78;
            u_xlat78 = ((x_3116 * x_3117) + x_3119);
            let x_3122 : vec4<f32> = u_xlat18;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.x, x_3122.y);
            let x_3125 : f32 = u_xlat9.z;
            txVec49 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec49;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat79 = x_3134;
            let x_3136 : f32 = u_xlat22.z;
            let x_3137 : f32 = u_xlat79;
            let x_3139 : f32 = u_xlat78;
            u_xlat78 = ((x_3136 * x_3137) + x_3139);
            let x_3142 : vec4<f32> = u_xlat19;
            let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat9.z;
            txVec50 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec50;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat79 = x_3154;
            let x_3156 : f32 = u_xlat22.w;
            let x_3157 : f32 = u_xlat79;
            let x_3159 : f32 = u_xlat78;
            u_xlat78 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec4<f32> = u_xlat20;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
            let x_3165 : f32 = u_xlat9.z;
            txVec51 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec51;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat79 = x_3174;
            let x_3176 : f32 = u_xlat23.x;
            let x_3177 : f32 = u_xlat79;
            let x_3179 : f32 = u_xlat78;
            u_xlat78 = ((x_3176 * x_3177) + x_3179);
            let x_3182 : vec4<f32> = u_xlat20;
            let x_3183 : vec2<f32> = vec2<f32>(x_3182.z, x_3182.w);
            let x_3185 : f32 = u_xlat9.z;
            txVec52 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
            let x_3192 : vec3<f32> = txVec52;
            let x_3194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
            u_xlat79 = x_3194;
            let x_3196 : f32 = u_xlat23.y;
            let x_3197 : f32 = u_xlat79;
            let x_3199 : f32 = u_xlat78;
            u_xlat78 = ((x_3196 * x_3197) + x_3199);
            let x_3202 : vec2<f32> = u_xlat36;
            let x_3204 : f32 = u_xlat9.z;
            txVec53 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec53;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat79 = x_3213;
            let x_3215 : f32 = u_xlat23.z;
            let x_3216 : f32 = u_xlat79;
            let x_3218 : f32 = u_xlat78;
            u_xlat78 = ((x_3215 * x_3216) + x_3218);
            let x_3221 : vec2<f32> = u_xlat66;
            let x_3223 : f32 = u_xlat9.z;
            txVec54 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec54;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat79 = x_3232;
            let x_3234 : f32 = u_xlat23.w;
            let x_3235 : f32 = u_xlat79;
            let x_3237 : f32 = u_xlat78;
            u_xlat78 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat15;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat9.z;
            txVec55 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec55;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat79 = x_3252;
            let x_3254 : f32 = u_xlat11.x;
            let x_3255 : f32 = u_xlat79;
            let x_3257 : f32 = u_xlat78;
            u_xlat78 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec4<f32> = u_xlat15;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.z, x_3260.w);
            let x_3263 : f32 = u_xlat9.z;
            txVec56 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec56;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat79 = x_3272;
            let x_3274 : f32 = u_xlat11.y;
            let x_3275 : f32 = u_xlat79;
            let x_3277 : f32 = u_xlat78;
            u_xlat78 = ((x_3274 * x_3275) + x_3277);
            let x_3280 : vec2<f32> = u_xlat61;
            let x_3282 : f32 = u_xlat9.z;
            txVec57 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec57;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat79 = x_3291;
            let x_3293 : f32 = u_xlat11.z;
            let x_3294 : f32 = u_xlat79;
            let x_3296 : f32 = u_xlat78;
            u_xlat78 = ((x_3293 * x_3294) + x_3296);
            let x_3299 : vec4<f32> = u_xlat10;
            let x_3300 : vec2<f32> = vec2<f32>(x_3299.x, x_3299.y);
            let x_3302 : f32 = u_xlat9.z;
            txVec58 = vec3<f32>(x_3300.x, x_3300.y, x_3302);
            let x_3309 : vec3<f32> = txVec58;
            let x_3311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3309.xy, x_3309.z);
            u_xlat79 = x_3311;
            let x_3313 : f32 = u_xlat11.w;
            let x_3314 : f32 = u_xlat79;
            let x_3316 : f32 = u_xlat78;
            u_xlat54 = ((x_3313 * x_3314) + x_3316);
          }
        }
      } else {
        let x_3320 : vec4<f32> = u_xlat9;
        let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
        let x_3323 : f32 = u_xlat9.z;
        txVec59 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
        let x_3330 : vec3<f32> = txVec59;
        let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
        u_xlat54 = x_3332;
      }
      let x_3333 : i32 = u_xlati76;
      let x_3335 : f32 = x_319.x_AdditionalShadowParams[x_3333].x;
      u_xlat78 = (1.0f + -(x_3335));
      let x_3338 : f32 = u_xlat54;
      let x_3339 : i32 = u_xlati76;
      let x_3341 : f32 = x_319.x_AdditionalShadowParams[x_3339].x;
      let x_3343 : f32 = u_xlat78;
      u_xlat54 = ((x_3338 * x_3341) + x_3343);
      let x_3346 : f32 = u_xlat9.z;
      u_xlatb78 = (0.0f >= x_3346);
      let x_3350 : f32 = u_xlat9.z;
      u_xlatb79 = (x_3350 >= 1.0f);
      let x_3352 : bool = u_xlatb78;
      let x_3353 : bool = u_xlatb79;
      u_xlatb78 = (x_3352 | x_3353);
      let x_3355 : bool = u_xlatb78;
      let x_3356 : f32 = u_xlat54;
      u_xlat54 = select(x_3356, 1.0f, x_3355);
    } else {
      u_xlat54 = 1.0f;
    }
    let x_3359 : f32 = u_xlat54;
    u_xlat78 = (-(x_3359) + 1.0f);
    let x_3363 : f32 = u_xlat1.x;
    let x_3364 : f32 = u_xlat78;
    let x_3366 : f32 = u_xlat54;
    u_xlat54 = ((x_3363 * x_3364) + x_3366);
    let x_3369 : i32 = u_xlati76;
    u_xlati78 = (1i << bitcast<u32>((x_3369 & 31i)));
    let x_3373 : i32 = u_xlati78;
    let x_3376 : f32 = x_1627.x_AdditionalLightsCookieEnableBits;
    u_xlati78 = bitcast<i32>((bitcast<u32>(x_3373) & bitcast<u32>(x_3376)));
    let x_3380 : i32 = u_xlati78;
    if ((x_3380 != 0i)) {
      let x_3384 : i32 = u_xlati76;
      let x_3386 : f32 = x_1627.x_AdditionalLightsLightTypes[x_3384].el;
      u_xlati78 = i32(x_3386);
      let x_3389 : i32 = u_xlati78;
      u_xlati79 = select(1i, 0i, (x_3389 != 0i));
      let x_3393 : i32 = u_xlati76;
      u_xlati80 = (x_3393 << bitcast<u32>(2i));
      let x_3395 : i32 = u_xlati79;
      if ((x_3395 != 0i)) {
        let x_3399 : vec3<f32> = vs_TEXCOORD1;
        let x_3401 : i32 = u_xlati80;
        let x_3404 : i32 = u_xlati80;
        let x_3408 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3401 + 1i) / 4i)][((x_3404 + 1i) % 4i)];
        let x_3410 : vec3<f32> = (vec3<f32>(x_3399.y, x_3399.y, x_3399.y) * vec3<f32>(x_3408.x, x_3408.y, x_3408.w));
        let x_3411 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3411.w);
        let x_3413 : i32 = u_xlati80;
        let x_3415 : i32 = u_xlati80;
        let x_3418 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[(x_3413 / 4i)][(x_3415 % 4i)];
        let x_3420 : vec3<f32> = vs_TEXCOORD1;
        let x_3423 : vec4<f32> = u_xlat9;
        let x_3425 : vec3<f32> = ((vec3<f32>(x_3418.x, x_3418.y, x_3418.w) * vec3<f32>(x_3420.x, x_3420.x, x_3420.x)) + vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
        let x_3426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
        let x_3428 : i32 = u_xlati80;
        let x_3431 : i32 = u_xlati80;
        let x_3435 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3428 + 2i) / 4i)][((x_3431 + 2i) % 4i)];
        let x_3437 : vec3<f32> = vs_TEXCOORD1;
        let x_3440 : vec4<f32> = u_xlat9;
        let x_3442 : vec3<f32> = ((vec3<f32>(x_3435.x, x_3435.y, x_3435.w) * vec3<f32>(x_3437.z, x_3437.z, x_3437.z)) + vec3<f32>(x_3440.x, x_3440.y, x_3440.z));
        let x_3443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3442.x, x_3442.y, x_3442.z, x_3443.w);
        let x_3445 : vec4<f32> = u_xlat9;
        let x_3447 : i32 = u_xlati80;
        let x_3450 : i32 = u_xlati80;
        let x_3454 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3447 + 3i) / 4i)][((x_3450 + 3i) % 4i)];
        let x_3456 : vec3<f32> = (vec3<f32>(x_3445.x, x_3445.y, x_3445.z) + vec3<f32>(x_3454.x, x_3454.y, x_3454.w));
        let x_3457 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3457.w);
        let x_3459 : vec4<f32> = u_xlat9;
        let x_3461 : vec4<f32> = u_xlat9;
        let x_3463 : vec2<f32> = (vec2<f32>(x_3459.x, x_3459.y) / vec2<f32>(x_3461.z, x_3461.z));
        let x_3464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3463.x, x_3463.y, x_3464.z, x_3464.w);
        let x_3466 : vec4<f32> = u_xlat9;
        let x_3469 : vec2<f32> = ((vec2<f32>(x_3466.x, x_3466.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3469.x, x_3469.y, x_3470.z, x_3470.w);
        let x_3472 : vec4<f32> = u_xlat9;
        let x_3476 : vec2<f32> = clamp(vec2<f32>(x_3472.x, x_3472.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3476.x, x_3476.y, x_3477.z, x_3477.w);
        let x_3479 : i32 = u_xlati76;
        let x_3481 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3479];
        let x_3483 : vec4<f32> = u_xlat9;
        let x_3486 : i32 = u_xlati76;
        let x_3488 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3486];
        let x_3490 : vec2<f32> = ((vec2<f32>(x_3481.x, x_3481.y) * vec2<f32>(x_3483.x, x_3483.y)) + vec2<f32>(x_3488.z, x_3488.w));
        let x_3491 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3490.x, x_3490.y, x_3491.z, x_3491.w);
      } else {
        let x_3494 : i32 = u_xlati78;
        u_xlatb78 = (x_3494 == 1i);
        let x_3496 : bool = u_xlatb78;
        u_xlati78 = select(0i, 1i, x_3496);
        let x_3498 : i32 = u_xlati78;
        if ((x_3498 != 0i)) {
          let x_3503 : vec3<f32> = vs_TEXCOORD1;
          let x_3505 : i32 = u_xlati80;
          let x_3508 : i32 = u_xlati80;
          let x_3512 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3505 + 1i) / 4i)][((x_3508 + 1i) % 4i)];
          u_xlat57 = (vec2<f32>(x_3503.y, x_3503.y) * vec2<f32>(x_3512.x, x_3512.y));
          let x_3515 : i32 = u_xlati80;
          let x_3517 : i32 = u_xlati80;
          let x_3520 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[(x_3515 / 4i)][(x_3517 % 4i)];
          let x_3522 : vec3<f32> = vs_TEXCOORD1;
          let x_3525 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3520.x, x_3520.y) * vec2<f32>(x_3522.x, x_3522.x)) + x_3525);
          let x_3527 : i32 = u_xlati80;
          let x_3530 : i32 = u_xlati80;
          let x_3534 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3527 + 2i) / 4i)][((x_3530 + 2i) % 4i)];
          let x_3536 : vec3<f32> = vs_TEXCOORD1;
          let x_3539 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(x_3536.z, x_3536.z)) + x_3539);
          let x_3541 : vec2<f32> = u_xlat57;
          let x_3542 : i32 = u_xlati80;
          let x_3545 : i32 = u_xlati80;
          let x_3549 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3542 + 3i) / 4i)][((x_3545 + 3i) % 4i)];
          u_xlat57 = (x_3541 + vec2<f32>(x_3549.x, x_3549.y));
          let x_3552 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3552 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3555 : vec2<f32> = u_xlat57;
          u_xlat57 = fract(x_3555);
          let x_3557 : i32 = u_xlati76;
          let x_3559 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3557];
          let x_3561 : vec2<f32> = u_xlat57;
          let x_3563 : i32 = u_xlati76;
          let x_3565 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3563];
          let x_3567 : vec2<f32> = ((vec2<f32>(x_3559.x, x_3559.y) * x_3561) + vec2<f32>(x_3565.z, x_3565.w));
          let x_3568 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3567.x, x_3567.y, x_3568.z, x_3568.w);
        } else {
          let x_3571 : vec3<f32> = vs_TEXCOORD1;
          let x_3573 : i32 = u_xlati80;
          let x_3576 : i32 = u_xlati80;
          let x_3580 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3573 + 1i) / 4i)][((x_3576 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3571.y, x_3571.y, x_3571.y, x_3571.y) * x_3580);
          let x_3582 : i32 = u_xlati80;
          let x_3584 : i32 = u_xlati80;
          let x_3587 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[(x_3582 / 4i)][(x_3584 % 4i)];
          let x_3588 : vec3<f32> = vs_TEXCOORD1;
          let x_3591 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3587 * vec4<f32>(x_3588.x, x_3588.x, x_3588.x, x_3588.x)) + x_3591);
          let x_3593 : i32 = u_xlati80;
          let x_3596 : i32 = u_xlati80;
          let x_3600 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3593 + 2i) / 4i)][((x_3596 + 2i) % 4i)];
          let x_3601 : vec3<f32> = vs_TEXCOORD1;
          let x_3604 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3600 * vec4<f32>(x_3601.z, x_3601.z, x_3601.z, x_3601.z)) + x_3604);
          let x_3606 : vec4<f32> = u_xlat10;
          let x_3607 : i32 = u_xlati80;
          let x_3610 : i32 = u_xlati80;
          let x_3614 : vec4<f32> = x_1627.x_AdditionalLightsWorldToLights[((x_3607 + 3i) / 4i)][((x_3610 + 3i) % 4i)];
          u_xlat10 = (x_3606 + x_3614);
          let x_3616 : vec4<f32> = u_xlat10;
          let x_3618 : vec4<f32> = u_xlat10;
          let x_3620 : vec3<f32> = (vec3<f32>(x_3616.x, x_3616.y, x_3616.z) / vec3<f32>(x_3618.w, x_3618.w, x_3618.w));
          let x_3621 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3620.x, x_3620.y, x_3620.z, x_3621.w);
          let x_3623 : vec4<f32> = u_xlat10;
          let x_3625 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(vec3<f32>(x_3623.x, x_3623.y, x_3623.z), vec3<f32>(x_3625.x, x_3625.y, x_3625.z));
          let x_3628 : f32 = u_xlat78;
          u_xlat78 = inverseSqrt(x_3628);
          let x_3630 : f32 = u_xlat78;
          let x_3632 : vec4<f32> = u_xlat10;
          let x_3634 : vec3<f32> = (vec3<f32>(x_3630, x_3630, x_3630) * vec3<f32>(x_3632.x, x_3632.y, x_3632.z));
          let x_3635 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3634.x, x_3634.y, x_3634.z, x_3635.w);
          let x_3637 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(abs(vec3<f32>(x_3637.x, x_3637.y, x_3637.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3642 : f32 = u_xlat78;
          u_xlat78 = max(x_3642, 0.00000099999999747524f);
          let x_3645 : f32 = u_xlat78;
          u_xlat78 = (1.0f / x_3645);
          let x_3647 : f32 = u_xlat78;
          let x_3649 : vec4<f32> = u_xlat10;
          let x_3651 : vec3<f32> = (vec3<f32>(x_3647, x_3647, x_3647) * vec3<f32>(x_3649.z, x_3649.x, x_3649.y));
          let x_3652 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3651.x, x_3651.y, x_3651.z, x_3652.w);
          let x_3655 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_3655);
          let x_3659 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_3659, 0.0f, 1.0f);
          let x_3663 : vec4<f32> = u_xlat11;
          let x_3665 : vec4<bool> = (vec4<f32>(x_3663.y, x_3663.z, x_3663.y, x_3663.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb57 = vec2<bool>(x_3665.x, x_3665.y);
          let x_3668 : bool = u_xlatb57.x;
          if (x_3668) {
            let x_3673 : f32 = u_xlat11.x;
            x_3669 = x_3673;
          } else {
            let x_3676 : f32 = u_xlat11.x;
            x_3669 = -(x_3676);
          }
          let x_3678 : f32 = x_3669;
          u_xlat57.x = x_3678;
          let x_3681 : bool = u_xlatb57.y;
          if (x_3681) {
            let x_3686 : f32 = u_xlat11.x;
            x_3682 = x_3686;
          } else {
            let x_3689 : f32 = u_xlat11.x;
            x_3682 = -(x_3689);
          }
          let x_3691 : f32 = x_3682;
          u_xlat57.y = x_3691;
          let x_3693 : vec4<f32> = u_xlat10;
          let x_3695 : f32 = u_xlat78;
          let x_3698 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3693.x, x_3693.y) * vec2<f32>(x_3695, x_3695)) + x_3698);
          let x_3700 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3700 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3703 : vec2<f32> = u_xlat57;
          u_xlat57 = clamp(x_3703, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3707 : i32 = u_xlati76;
          let x_3709 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3707];
          let x_3711 : vec2<f32> = u_xlat57;
          let x_3713 : i32 = u_xlati76;
          let x_3715 : vec4<f32> = x_1627.x_AdditionalLightsCookieAtlasUVRects[x_3713];
          let x_3717 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.y) * x_3711) + vec2<f32>(x_3715.z, x_3715.w));
          let x_3718 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3717.x, x_3717.y, x_3718.z, x_3718.w);
        }
      }
      let x_3725 : vec4<f32> = u_xlat9;
      let x_3727 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3725.x, x_3725.y), 0.0f);
      u_xlat9 = x_3727;
      let x_3729 : bool = u_xlatb6.y;
      if (x_3729) {
        let x_3734 : f32 = u_xlat9.w;
        x_3730 = x_3734;
      } else {
        let x_3737 : f32 = u_xlat9.x;
        x_3730 = x_3737;
      }
      let x_3738 : f32 = x_3730;
      u_xlat78 = x_3738;
      let x_3740 : bool = u_xlatb6.x;
      if (x_3740) {
        let x_3744 : vec4<f32> = u_xlat9;
        x_3741 = vec3<f32>(x_3744.x, x_3744.y, x_3744.z);
      } else {
        let x_3747 : f32 = u_xlat78;
        x_3741 = vec3<f32>(x_3747, x_3747, x_3747);
      }
      let x_3749 : vec3<f32> = x_3741;
      let x_3750 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_3749.x, x_3749.y, x_3749.z, x_3750.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_3756 : vec4<f32> = u_xlat9;
    let x_3758 : i32 = u_xlati76;
    let x_3760 : vec4<f32> = x_1944.x_AdditionalLightsColor[x_3758];
    let x_3762 : vec3<f32> = (vec3<f32>(x_3756.x, x_3756.y, x_3756.z) * vec3<f32>(x_3760.x, x_3760.y, x_3760.z));
    let x_3763 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3762.x, x_3762.y, x_3762.z, x_3763.w);
    let x_3765 : f32 = u_xlat77;
    let x_3766 : f32 = u_xlat54;
    u_xlat76 = (x_3765 * x_3766);
    let x_3768 : f32 = u_xlat76;
    let x_3770 : vec4<f32> = u_xlat9;
    let x_3772 : vec3<f32> = (vec3<f32>(x_3768, x_3768, x_3768) * vec3<f32>(x_3770.x, x_3770.y, x_3770.z));
    let x_3773 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3772.x, x_3772.y, x_3772.z, x_3773.w);
    let x_3775 : vec3<f32> = u_xlat2;
    let x_3776 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_3775, vec3<f32>(x_3776.x, x_3776.y, x_3776.z));
    let x_3779 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3779, 0.0f, 1.0f);
    let x_3781 : f32 = u_xlat76;
    let x_3783 : vec4<f32> = u_xlat9;
    let x_3785 : vec3<f32> = (vec3<f32>(x_3781, x_3781, x_3781) * vec3<f32>(x_3783.x, x_3783.y, x_3783.z));
    let x_3786 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3785.x, x_3785.y, x_3785.z, x_3786.w);
    let x_3788 : vec3<f32> = u_xlat3;
    let x_3789 : vec3<f32> = u_xlat24;
    let x_3792 : vec4<f32> = u_xlat8;
    let x_3794 : vec3<f32> = ((x_3788 * vec3<f32>(x_3789.x, x_3789.x, x_3789.x)) + vec3<f32>(x_3792.x, x_3792.y, x_3792.z));
    let x_3795 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3794.x, x_3794.y, x_3794.z, x_3795.w);
    let x_3797 : vec4<f32> = u_xlat8;
    let x_3799 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_3797.x, x_3797.y, x_3797.z), vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
    let x_3802 : f32 = u_xlat76;
    u_xlat76 = max(x_3802, 1.17549435e-38f);
    let x_3804 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3804);
    let x_3806 : f32 = u_xlat76;
    let x_3808 : vec4<f32> = u_xlat8;
    let x_3810 : vec3<f32> = (vec3<f32>(x_3806, x_3806, x_3806) * vec3<f32>(x_3808.x, x_3808.y, x_3808.z));
    let x_3811 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3810.x, x_3810.y, x_3810.z, x_3811.w);
    let x_3813 : vec3<f32> = u_xlat2;
    let x_3814 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(x_3813, vec3<f32>(x_3814.x, x_3814.y, x_3814.z));
    let x_3817 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3817, 0.0f, 1.0f);
    let x_3819 : f32 = u_xlat76;
    u_xlat76 = log2(x_3819);
    let x_3821 : f32 = u_xlat72;
    let x_3822 : f32 = u_xlat76;
    u_xlat76 = (x_3821 * x_3822);
    let x_3824 : f32 = u_xlat76;
    u_xlat76 = exp2(x_3824);
    let x_3826 : f32 = u_xlat76;
    let x_3829 : vec4<f32> = x_41.x_SpecColor;
    let x_3831 : vec3<f32> = (vec3<f32>(x_3826, x_3826, x_3826) * vec3<f32>(x_3829.x, x_3829.y, x_3829.z));
    let x_3832 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3831.x, x_3831.y, x_3831.z, x_3832.w);
    let x_3834 : vec4<f32> = u_xlat8;
    let x_3836 : vec4<f32> = u_xlat9;
    let x_3838 : vec3<f32> = (vec3<f32>(x_3834.x, x_3834.y, x_3834.z) * vec3<f32>(x_3836.x, x_3836.y, x_3836.z));
    let x_3839 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3838.x, x_3838.y, x_3838.z, x_3839.w);
    let x_3841 : vec4<f32> = u_xlat10;
    let x_3843 : vec4<f32> = u_xlat1;
    let x_3846 : vec4<f32> = u_xlat8;
    let x_3848 : vec3<f32> = ((vec3<f32>(x_3841.x, x_3841.y, x_3841.z) * vec3<f32>(x_3843.y, x_3843.z, x_3843.w)) + vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
    let x_3851 : vec4<f32> = u_xlat7;
    let x_3853 : vec4<f32> = u_xlat8;
    let x_3855 : vec3<f32> = (vec3<f32>(x_3851.x, x_3851.y, x_3851.z) + vec3<f32>(x_3853.x, x_3853.y, x_3853.z));
    let x_3856 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3855.x, x_3855.y, x_3855.z, x_3856.w);

    continuing {
      let x_3858 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3858 + bitcast<u32>(1i));
    }
  }
  let x_3860 : vec4<f32> = u_xlat4;
  let x_3862 : vec4<f32> = u_xlat1;
  let x_3865 : vec4<f32> = u_xlat5;
  let x_3867 : vec3<f32> = ((vec3<f32>(x_3860.x, x_3860.y, x_3860.z) * vec3<f32>(x_3862.y, x_3862.z, x_3862.w)) + vec3<f32>(x_3865.x, x_3865.y, x_3865.z));
  let x_3868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3868.w);
  let x_3872 : vec4<f32> = u_xlat7;
  let x_3874 : vec4<f32> = u_xlat1;
  let x_3876 : vec3<f32> = (vec3<f32>(x_3872.x, x_3872.y, x_3872.z) + vec3<f32>(x_3874.x, x_3874.y, x_3874.z));
  let x_3877 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3876.x, x_3876.y, x_3876.z, x_3877.w);
  let x_3880 : f32 = x_41.x_Surface;
  u_xlatb24 = (x_3880 == 1.0f);
  let x_3882 : bool = u_xlatb24;
  let x_3883 : bool = u_xlatb48;
  u_xlatb24 = (x_3882 | x_3883);
  let x_3885 : bool = u_xlatb24;
  if (x_3885) {
    let x_3890 : f32 = u_xlat0.x;
    x_3886 = x_3890;
  } else {
    x_3886 = 1.0f;
  }
  let x_3892 : f32 = x_3886;
  SV_Target0.w = x_3892;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


